#import "@local/ib:0.1.0": *
#md(```
# [Ollama](https://ollama.com/)
[GitHub](https://github.com/ollama/ollama)

- [Windows](https://docs.ollama.com/windows)
  - `OllamaSetup.exe` inclues standalone CLI, but is much smaller than it, due to Defalte compression.
  - `scoop install extras/ollama-full` / `scoop install main/ollama`
    - > Ollama with deamon has been moved to 'extras/ollama-full'.
    - [ollama-full@0.12.6: decompress error - Issue #16484 - ScoopInstaller/Extras](https://github.com/ScoopInstaller/Extras/issues/16484)
- GUI
  - Need to run `ollama serve` manually.
  - 每个 chat 都只会记录最后使用的模型，不会记录每条 message 的。

[RTX 5090 Ollama Benchmark: Extreme Performance Faster Than H100](https://www.databasemart.com/blog/ollama-gpu-benchmark-rtx5090)

## Models
- Data: `~/.ollama/models`

  [Can we change where the models are stored in windows - Issue #2551](https://github.com/ollama/ollama/issues/2551)
- `Error: pull model manifest: 400: No supported GGUF file can be found in the specified repository.`
- Download
  - [ollama/server/download.go](https://github.com/ollama/ollama/blob/12b174b10e5f3d0cf8cf5856a344e1f765203535/server/download.go)
    - `sha256-{sha256}-partial-{i}`
    - `mv sha256-{sha256}-partial sha256-{sha256}`
    - 可手动下载后重命名来识别
  - [Pull multiple chunks in parallel - Issue #3808](https://github.com/ollama/ollama/issues/3808)
  - [Client2 Feedback - Issue #10331](https://github.com/ollama/ollama/issues/10331)
  - [Ollama加载ModelScope模型 - 文档中心](https://modelscope.cn/docs/models/advanced-usage/ollama-integration)
    - > 默认情况下，如果模型repo里有Q4_K_M版本的话，我们会自动拉取并使用该版本，在推理精度以及推理速度，资源消耗之间做一个较好的均衡。如果没有该版本，我们会选择合适的其他版本。
```)

= Tools
- #a[ex3ndr/llama-coder: Replace Copilot local AI][https://github.com/ex3ndr/llama-coder]
  (discontinued)
