# [Open Neural Network Exchange (ONNX)](https://onnx.ai/)
[Wikipedia](https://en.wikipedia.org/wiki/Open_Neural_Network_Exchange), [GitHub](https://github.com/onnx/onnx)

> ONNX provides definitions of an extensible computation graph model, built-in operators and standard data types, focused on inferencing (evaluation).
>
> Each computation dataflow graph is a list of nodes that form an acyclic graph. Nodes have inputs and outputs. Each node is a call to an operator. Metadata documents the graph. Built-in operators are to be available on each ONNX-supporting framework.

Is ONNX Turing complete?

## Backends
[ONNX Backend Scoreboard](https://onnx.ai/backend-scoreboard/index_dev.html)

C++:
- [Microsoft/ONNX Runtime: cross-platform, high performance ML inferencing and training accelerator](https://github.com/microsoft/onnxruntime)

  Rust:
  - [onnxruntime-rs: Rust wrapper for Microsoft's ONNX Runtime (version 1.8)](https://github.com/nbigaouette/onnxruntime-rs) (discontinued)
    - [ort: Fast ML inference & training for Rust with ONNX Runtime](https://github.com/pykeio/ort)

- [onnx2c: Open Neural Network Exchange to C compiler.](https://github.com/kraiskil/onnx2c)

Rust:
- [huggingface/candle: Minimalist ML framework for Rust](https://github.com/huggingface/candle)

- [burn: Burn is a new comprehensive dynamic Deep Learning Framework built using Rust with extreme flexibility, compute efficiency and portability as its primary goals.](https://github.com/Tracel-AI/burn)

  > still limited (?) operator support, main focus on training (not a huge issue, but ONNX might not be a priority)

- [tract: Tiny, no-nonsense, self-contained, Tensorflow and ONNX inference](https://github.com/sonos/tract)

  > no built-in multithreading, can be slower than onnxruntime

- [wonnx: A WebGPU-accelerated ONNX inference run-time written 100% in Rust, ready for native and the web](https://github.com/webonnx/wonnx) (inactive)

  > models can't run on the CPU, somewhat limited supports for operators

- [rten: ONNX neural network inference engine](https://github.com/robertknight/rten)

- [Kyanite: A neural network inference library, written in Rust.](https://github.com/KarelPeeters/Kyanite)

Python:
- [onnx-tensorflow: Tensorflow Backend for ONNX](https://github.com/onnx/onnx-tensorflow/) (discontinued)

2023-11 [ONNX Libraries in Rust : r/rust](https://www.reddit.com/r/rust/comments/186plbx/onnx_libraries_in_rust/)

## Convertions
- [huggingface/optimum: 🚀 Accelerate training and inference of 🤗 Transformers and 🤗 Diffusers with easy to use hardware optimization tools](https://github.com/huggingface/optimum)

## Tools
- net drawer

  [Visualizing an ONNX Model - onnx/tutorials](https://github.com/onnx/tutorials/blob/main/tutorials/VisualizingAModel.md)
  ```
  python -m onnx.tools.net_drawer --input "model.onnx" --output model.dot --embed_docstring
  dot -Tsvg model.dot -o model.svg
  ```
  Slow for large model.

- [onnx-modifier: A tool to modify ONNX models in a visualization fashion, based on Netron and Flask.](https://github.com/ZhangGe6/onnx-modifier)
- [onnx-tool: A parser, editor and profiler tool for ONNX models.](https://github.com/ThanatosShinji/onnx-tool)
- [zhenhuaw-me/onnxcli: ONNX Command-Line Toolbox](https://github.com/zhenhuaw-me/onnxcli) (inactive)
  - Broken on Python 3.12?