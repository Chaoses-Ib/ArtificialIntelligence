# Benchmarks
- Speed: ONNX quantized > PyTorch > ONNX
  - ONNX: sentence-transformers > fastembed
- Memory: ONNX << PyTorch
  - ONNX: fastembed << sentence-transformers

sentence-transformers 新加入的优化可以导出为 ONNX，而 sentence-transformers 和 FastEmbed-rs 的 ONNX 支持都是通过 onnxruntime 实现的，两者的实际差异不大。sentence-transformers 的主要问题是会加载 torch 和 transformers，导致内存占用比较大，需要 fork 或者 patch 来绕过。FastEmbed-rs 没有这些问题，依赖也更少，但是推理速度比 sentence-transformers 略慢，坑可能也多一些，作者没有在 GPU 上进行过测试。

内存占用：
- sentence-transformers 和 FastEmbed-rs 的 ONNX 支持都是通过 onnxruntime 实现的。两者加载模型、推理的内存占用基本一致。但是 sentence-transformers 即使使用 ONNX 后端也会加载 torch 和 transformers，导致额外增加 0.6 GiB 的内存占用。
- 量化可以降低 `jina-embeddings-v2-base-zh` 的内存占用。
- static embedding 可以大幅降低内存占用。

batch size 32、chunk length 500 推理后的内存占用：

Model | Library | WS
--- | --- | ---
`sentence-transformers/all-MiniLM-L6-v2` | FastEmbed-rs | 0.32 GiB
`sentence-transformers/all-MiniLM-L6-v2` | sentence-transformers | 0.55 GiB
`sentence-transformers/all-MiniLM-L6-v2` | transformers | 0.57 GiB
`sentence-transformers/all-MiniLM-L6-v2` qint8_avx512_vnni | sentence-transformers\[onnx\] | 0.90 GiB
`sentence-transformers/all-MiniLM-L6-v2` qint8_avx512 | sentence-transformers\[onnx\] | 0.90 GiB
`sentence-transformers/all-MiniLM-L6-v2` | sentence-transformers\[onnx\] | 0.91 GiB
`sentence-transformers/all-MiniLM-L6-v2` qint8_arm64 | sentence-transformers\[onnx\] | 0.91 GiB
`sentence-transformers/all-MiniLM-L6-v2` quint8_avx2 | sentence-transformers\[onnx\] | 0.91 GiB
`sentence-transformers/all-MiniLM-L6-v2` O1 | sentence-transformers\[onnx\] | 0.93 GiB
`sentence-transformers/all-MiniLM-L6-v2` O3 | sentence-transformers\[onnx\] | 0.95 GiB
`sentence-transformers/all-MiniLM-L6-v2` O2 | sentence-transformers\[onnx\] | 0.96 GiB
`jinaai/jina-embeddings-v2-base-zh` static embedding | FastEmbed-rs | ~0.08 GiB
`jinaai/jina-embeddings-v2-base-zh` static embedding | sentence-transformers\[onnx\] | 0.67 GiB
`jinaai/jina-embeddings-v2-base-zh` quantized | FastEmbed-rs | ~0.9 GiB
`jinaai/jina-embeddings-v2-base-zh` quantized | sentence-transformers\[onnx\] | 1.5 GiB
`jinaai/jina-embeddings-v2-base-zh` qint8_avx512 | sentence-transformers\[onnx\] | 1.5 GiB
`jinaai/jina-embeddings-v2-base-zh` qint8_avx512_vnni | sentence-transformers\[onnx\] | 1.5 GiB
`jinaai/jina-embeddings-v2-base-zh` | sentence-transformers\[onnx\] | 1.84 GiB
`jinaai/jina-embeddings-v2-base-zh` | transformers | 4.6 GiB
`jinaai/jina-embeddings-v2-base-zh` | sentence-transformers | 4.6 GiB

推理速度：
- FastEmbed-rs 表现比 sentence-transformers 和 transformers 略差，使用 `all-MiniLM-L6-v2` 时的耗时从 23 ms 增加到了 28 ms。
- 量化可以减少一定的耗时。
- static embedding 可以大幅降低耗时。

Model | Library | Per-chunk time
--- | --- | ---
`sentence-transformers/all-MiniLM-L6-v2` static embedding | sentence-transformers\[onnx\] | 12.3 ms
`sentence-transformers/all-MiniLM-L6-v2` qint8_avx512_vnni | sentence-transformers\[onnx\] | 13.6 ms
`sentence-transformers/all-MiniLM-L6-v2` qint8_arm64 | sentence-transformers\[onnx\] | 13.9 ms
`sentence-transformers/all-MiniLM-L6-v2` qint8_avx512 | sentence-transformers\[onnx\] | 15.5 ms
`sentence-transformers/all-MiniLM-L6-v2` quint8_avx2 | sentence-transformers\[onnx\] | 17 ms
`sentence-transformers/all-MiniLM-L6-v2` | sentence-transformers | 20 ms
`sentence-transformers/all-MiniLM-L6-v2` O3 | sentence-transformers\[onnx\] | 21 ms
`sentence-transformers/all-MiniLM-L6-v2` O2 | sentence-transformers\[onnx\] | 22 ms
`sentence-transformers/all-MiniLM-L6-v2` | sentence-transformers\[onnx\] | 23 ms
`sentence-transformers/all-MiniLM-L6-v2` O1 | sentence-transformers\[onnx\] | 23 ms
`sentence-transformers/all-MiniLM-L6-v2` | transformers | 25 ms
`sentence-transformers/all-MiniLM-L6-v2` | FastEmbed-rs | 28 ms
`jinaai/jina-embeddings-v2-base-zh` static embedding | sentence-transformers\[onnx\] | 12.2 ms
`jinaai/jina-embeddings-v2-base-zh` qint8_avx512 | sentence-transformers\[onnx\] | 76 ms
`jinaai/jina-embeddings-v2-base-zh` qint8_avx512_vnni | sentence-transformers\[onnx\] | 80 ms
`jinaai/jina-embeddings-v2-base-zh` quantized | sentence-transformers\[onnx\] | 82 ms
`jinaai/jina-embeddings-v2-base-zh` | sentence-transformers | 90 ms
`jinaai/jina-embeddings-v2-base-zh` | transformers | 90 ms
`jinaai/jina-embeddings-v2-base-zh` | sentence-transformers\[onnx\] | 132 ms

static embedding 可以同时大幅降低内存占用和耗时，但是根据[官方测试](https://github.com/MinishLab/model2vec/blob/main/results/README.md)，static embedding 用于文本相似度时会导致性能降低约 12%，用于语义检索时会降低约 30%。而量化和 Optimum 优化对性能的影响不到 1%：

![Benchmark for CPUs](https://www.sbert.net/_images/backends_benchmark_cpu.png)

![Benchmark for GPUs](https://www.sbert.net/_images/backends_benchmark_gpu.png)

## Data
- torch: 0.43 GiB
- transformers: 0.44 GiB
  - CPU `sentence-transformers/all-MiniLM-L6-v2`: 0.57 GiB
    - batch 16: 24 ms
    - batch 32: 25 ms
  - CPU `jinaai/jina-embeddings-v2-base-zh`: 4.6 GiB
    - batch 2: 90 ms
- sentence-transformers: 0.59 GiB

  How could just importing it costs 0.59 GiB...? torch, transformers (even with ONNX bakcend)

  - CPU `sentence-transformers/all-MiniLM-L6-v2`: 0.55 GiB
    - batch 1: 30 ms
    - batch 2: 20 ms
    - batch 16: 19 ms
  - ONNX CPU `sentence-transformers/all-MiniLM-L6-v2`
    - batch 32: 23 ms, 0.91 GiB (+0.32 GiB)
      - O1: 23 ms, 0.93 GiB
      - O2: 22 ms, 0.96 GiB
      - O3: 21 ms, 0.95 GiB
      - qint8_arm64: 13.9 ms, 0.91 GiB
      - qint8_avx512: 15.5 ms, 0.90 GiB
      - qint8_avx512_vnni: 13.6 ms, 0.90 GiB
      - quint8_avx2: 17 ms, 0.91 GiB
      - Static embedding: 12.3 ms
    - batch 64: 21 ms, 1 GiB
  - GPU `sentence-transformers/all-MiniLM-L6-v2`
    - Static embedding: 12.8 ms
  - CPU `jinaai/jina-embeddings-v2-base-zh`: 4.6 GiB
    - batch 2: 90 ms
  - ONNX CPU `jinaai/jina-embeddings-v2-base-zh`
    - 1.72 GiB
      - batch 32: 1.84 GiB, 132 ms
    - quantized: 0.9 GiB
      - batch 32: 82 ms, 1.5 GiB
    - qint8_avx512: 1.5 GiB, 76 ms
    - qint8_avx512_vnni: 1.5 GiB, 80 ms
    - Static embedding: 12.2 ms, 0.67 GiB
  - GPU `jinaai/jina-embeddings-v2-base-zh`: 1.2 GiB + 3.8 GiB
    - batch 2: 40 ms

- fastembed
  - CPU `sentence-transformers/all-MiniLM-L6-v2`
  
    Batch | Private bytes | Time
    --- | --- | ---
    256 | 2.2 GiB | 32 ms
    128 | 1.14 GiB | 30 ms
    64 | 0.64 GiB | 29 ms
    32 | 0.6 GiB (0.32 GiB WS) | 28 ms
    16 | 0.37 GiB | 35 ms
    2 | | 29 ms
    1 | 0.2 GiB | 28 ms

    ```rs
    Benchmarking chunks/batch 256: Warming up for 3.0000 s
    Warning: Unable to complete 10 samples in 5.0s. You may wish to increase target time to 69.6s.
    chunks/batch 256        time:   [7.6336 s 8.1240 s 8.6749 s]
                            change: [-51.776% -42.146% -28.431%] (p = 0.00 < 0.10)
                            Performance has improved.
    Benchmarking chunks/batch 128: Warming up for 3.0000 s
    Warning: Unable to complete 10 samples in 5.0s. You may wish to increase target time to 41.2s.
    chunks/batch 128        time:   [3.3910 s 3.7886 s 4.2335 s]
                            change: [-21.972% -12.575% -1.5332%] (p = 0.03 < 0.10)
                            Performance has improved.
    Benchmarking chunks/batch 64: Warming up for 3.0000 s
    Warning: Unable to complete 10 samples in 5.0s. You may wish to increase target time to 16.8s.
    chunks/batch 64         time:   [1.6971 s 1.8254 s 1.9805 s]
                            change: [-30.443% -24.006% -16.535%] (p = 0.00 < 0.10)
                            Performance has improved.
    Found 1 outliers among 10 measurements (10.00%)
      1 (10.00%) high mild
    Benchmarking chunks/batch 32: Warming up for 3.0000 s
    Warning: Unable to complete 10 samples in 5.0s. You may wish to increase target time to 9.2s.
    chunks/batch 32         time:   [884.41 ms 969.26 ms 1.0808 s]
                            change: [-69.700% -63.373% -54.441%] (p = 0.00 < 0.10)
                            Performance has improved.
    Found 1 outliers among 10 measurements (10.00%)
      1 (10.00%) high mild
    Benchmarking chunks/batch 16: Warming up for 3.0000 s
    Warning: Unable to complete 10 samples in 5.0s. You may wish to increase target time to 6.0s.
    chunks/batch 16         time:   [504.12 ms 554.00 ms 610.78 ms]
                            change: [-78.789% -74.977% -70.470%] (p = 0.00 < 0.10)
                            Performance has improved.
    Found 1 outliers among 10 measurements (10.00%)
      1 (10.00%) high mild
    chunks/batch 8          time:   [230.30 ms 251.36 ms 276.38 ms]
                            change: [-51.493% -45.668% -38.657%] (p = 0.00 < 0.10)
                            Performance has improved.
    Found 1 outliers among 10 measurements (10.00%)
      1 (10.00%) high mild
    Benchmarking chunks/batch 4: Warming up for 3.0000 s
    Warning: Unable to complete 10 samples in 5.0s. You may wish to increase target time to 7.8s or enable flat sampling.
    chunks/batch 4          time:   [120.81 ms 131.22 ms 143.00 ms]
                            change: [-49.158% -35.281% -15.501%] (p = 0.01 < 0.10)
                            Performance has improved.
    Found 1 outliers among 10 measurements (10.00%)
      1 (10.00%) high mild
    chunks/batch 2          time:   [54.940 ms 57.592 ms 60.807 ms]
                            change: [-61.429% -54.281% -45.767%] (p = 0.00 < 0.10)
                            Performance has improved.
    Found 1 outliers among 10 measurements (10.00%)
      1 (10.00%) high mild
    chunks/batch 1          time:   [22.696 ms 27.850 ms 31.585 ms]
                            change: [-52.425% -45.274% -37.148%] (p = 0.00 < 0.10)
                            Performance has improved.
    ```

Versions:
```toml
requires-python = ">=3.12"
dependencies = [
    "sentence-transformers>=3.2.0",
    "torch>=2.4.1",
    "transformers>=4.45.2",
]
```
```toml
fastembed = "4.1.0"
```