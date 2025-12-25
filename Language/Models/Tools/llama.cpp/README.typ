#import "@local/ib:0.1.0": *
#title[llama.cpp]
#a-badge[https://github.com/ggml-org/llama.cpp]
- #q[This issue was closed because it has been inactive for 14 days since being marked as stale.]

Forks:
- Ollama
- #a[llama-cpp-python: Python bindings for llama.cpp][https://github.com/abetlen/llama-cpp-python]
- #a[koboldcpp: Run GGUF models easily with a KoboldAI UI. One File. Zero Install.][https://github.com/LostRuins/koboldcpp]
- #a[ik_llama.cpp: llama.cpp fork with additional SOTA quants and improved performance][https://github.com/ikawrakow/ik_llama.cpp]

#t[2503]
#a[llama.cpp is all you need : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1j417qh/llamacpp_is_all_you_need/]
#q[`llama-server` gives you a clean and extremely competent web-ui.
Also provides an API endpoint (including an OpenAI compatible one).
llama.cpp comes with a million other tools and is extremely tunable.
You do not have to wait for other dependent applications to expose this functionality.]

= #a[Installation][https://github.com/ggml-org/llama.cpp/blob/master/docs/install.md]
Windows:
- ```pwsh
  scoop install main/cuda
  scoop install versions/llama.cpp-cu124
  ```
- `winget install llama.cpp`

= Backends
== #a[CUDA][https://github.com/ggml-org/llama.cpp/blob/master/docs/build.md#cuda]
- `ggml-cuda.dll`
- CUDA 13: `cublas64_13.dll`, `cublasLt64_13.dll`, `cudart64_13.dll`
- `ggml_cuda_compute_forward: MUL_MAT failed`
  - Driver is too old for the CUDA Toolkit.

    #a[Eval bug: Qwen3 crashes with "MUL failed" and "Device kernel image is invalid" on NVIDIA RTX 3070 Ti - Issue \#15841 - ggml-org/llama.cpp][https://github.com/ggml-org/llama.cpp/issues/15841]

#a[Dramatic increase of the C++ dlls size. Why? - ggml-org/llama.cpp - Discussion \#12267][https://github.com/ggml-org/llama.cpp/discussions/12267]

= Devices
- `llama-server --list-devices`

= Models
- `-hf {user}/{repo}{quant ? Q4_K_M}`
  - ModelScope: `$env:MODEL_ENDPOINT='https://www.modelscope.cn/'`
  - No way to specify `quant` for `mmproj`?
    - Place a fake one first.
- Data: `$LLAMA_CACHE/{user}_{repo}_{filename}`
  - Windows: `%LOCALAPPDATA%\llama.cpp`
- Router mode: `llama-server`
  - `--models-max 4`
  - All loaded models will use 8192 context and full GPU offload.
  
    You can also define per-model settings using presets:
    ```sh
    llama-server --models-preset config.ini
    ```
    ```ini
    [my-model]
    model = /path/to/model.gguf
    ctx-size = 65536
    temp = 0.7
    ```
- #a[llama-swap: Reliable model swapping for any local OpenAI/Anthropic compatible server - llama.cpp, vllm, etc][https://github.com/mostlygeek/llama-swap]

#a[New in llama.cpp: Model Management][https://huggingface.co/blog/ggml-org/model-management-in-llamacpp]

= Context
- Context size (`-c`) defaults to loading from model, may occupy a lot of VRAM.
  - `-c 4096`

  #a[Why does llama.cpp use so much VRAM (and RAM)? - ggml-org/llama.cpp - Discussion \#9784][https://github.com/ggml-org/llama.cpp/discussions/9784]

#a[What does the prompt context mean? - ggml-org/llama.cpp - Discussion \#1838][https://github.com/ggml-org/llama.cpp/discussions/1838]

= #a[Server][https://github.com/ggml-org/llama.cpp/blob/master/tools/server/README.md]
- Log all logs, including inputs and outputs: `-v --log-file v.log`

  #a[Save Chat History into New Prompts - Issue \#3985 - ggml-org/llama.cpp][https://github.com/ggml-org/llama.cpp/issues/3985]

  #a[Feature Request: Auto-save and Auto-load Conversations to and from File System in Server UI (Beyond Browser Local Storage) - Issue \#16604 - ggml-org/llama.cpp][https://github.com/ggml-org/llama.cpp/issues/16604]

= UI
- `llama-server` web UI
  - Local storage only

= Tools
== #a[ggml-org/llama.vscode: VS Code extension for LLM-assisted code/text completion][https://github.com/ggml-org/llama.vscode]
- Very rough.
- When first installed, it will pop up dialogs for every window and block `Shift`.
- #a[llama.vim: Recommended models for the llama.vim and llama.vscode plugins - a ggml-org Collection][https://huggingface.co/collections/ggml-org/llamavim]
- #a[I'm confused on how to make this play nicely with other API's. - ggml-org/llama.vscode - Discussion \#81][https://github.com/ggml-org/llama.vscode/discussions/81]

```json
"llama-vscode.completion_models_list": [
    {
        "name": "localhost:8080",
        "localStartCommand": "",
        "endpoint": "http://localhost:8080",
        "aiModel": "",
        "isKeyRequired": false
    },
],
"llama-vscode.envs_list": [
    {
        "name": "localhost:8080",
        "description": "",
        "completion": {
            "name": "localhost:8080",
            "localStartCommand": "",
            "endpoint": "http://localhost:8080",
            "aiModel": "",
            "isKeyRequired": false
        },
        "ragEnabled": false,
        "envStartLastUsed": false,
        "complEnabled": true
    }
],
```
