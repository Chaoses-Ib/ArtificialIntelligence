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
  No CUDA 13 at the moment.
- `winget install llama.cpp`

= Backends
== #a[CUDA][https://github.com/ggml-org/llama.cpp/blob/master/docs/build.md#cuda]
- `ggml-cuda.dll`
- CUDA 13: `cublas64_13.dll`, `cublasLt64_13.dll`, `cudart64_13.dll`
  #footnote[https://github.com/ggml-org/llama.cpp/releases/download/b8133/cudart-llama-bin-win-cuda-13.1-x64.zip]
- `ggml_cuda_compute_forward: MUL_MAT failed`
  - Driver is too old for the CUDA Toolkit.

    #a[Eval bug: Qwen3 crashes with "MUL failed" and "Device kernel image is invalid" on NVIDIA RTX 3070 Ti - Issue \#15841 - ggml-org/llama.cpp][https://github.com/ggml-org/llama.cpp/issues/15841]

#a[Dramatic increase of the C++ dlls size. Why? - ggml-org/llama.cpp - Discussion \#12267][https://github.com/ggml-org/llama.cpp/discussions/12267]

= Devices
- `llama-server --list-devices`

= Models
- ```sh llama-server -hf {user}/{repo}{:quant ? Q4_K_M}```
  - ModelScope: `$env:MODEL_ENDPOINT='https://www.modelscope.cn/'`
  - No way to specify `quant` for `mmproj`?
    - Place a fake one first.
- Data: `$LLAMA_CACHE/{user}_{repo}_{filename}`
  - Windows: `%LOCALAPPDATA%\llama.cpp`

- mmap by default
  #footnote[#a[Should use `mmap` for model loading - Issue \#91 - ggml-org/llama.cpp][https://github.com/ggml-org/llama.cpp/issues/91]]
  , which may use a lot of RAM (temporarily).
  - ```sh --no-mmap```
    #footnote[#a[Feature Request: Avoid loading GPU layers into RAM before moving them to VRAM. This should allow the use of `--no-mmap` with models that do not fit in RAM but fit in RAM+VRAM. - Issue \#9059 - ggml-org/llama.cpp][https://github.com/ggml-org/llama.cpp/issues/9059]]

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

== Sampling
- `--temp` defaults to 0.80.

  #a[Maybe lower default temp and switch to `top_k` 40 - Issue \#42][https://github.com/ggml-org/llama.cpp/issues/42]

- `--top-p` and `--min-p` default to 0.95 and 0.05.

= Context
- Context size (`-c`) defaults to loading from model, may occupy a lot of VRAM.
  - `-c 4096`

  #a[Why does llama.cpp use so much VRAM (and RAM)? - ggml-org/llama.cpp - Discussion \#9784][https://github.com/ggml-org/llama.cpp/discussions/9784]

VRAM (`unsloth/Qwen3-Coder-Next-GGUF:UD-IQ3_XXS`):
- `-c 4096`
  ```sh
  llama_memory_breakdown_print: | memory breakdown [MiB] | total   free     self   model   context   compute    unaccounted |
  llama_memory_breakdown_print: |   - CUDA0 (RTX 5090)   | 32606 = 1057 + (29365 = 28609 +     397 +     358) +        2183 |
  llama_memory_breakdown_print: |   - Host               |                 30956 = 30940 +       0 +      16                |
  ```
- `-c 100096`
  ```sh
  llama_memory_breakdown_print: | memory breakdown [MiB] | total   free     self   model   context   compute    unaccounted |
  llama_memory_breakdown_print: |   - CUDA0 (RTX 5090)   | 32606 =  912 + (29598 = 26349 +    2647 +     601) +        2095 |
  llama_memory_breakdown_print: |   - Host               |                 31144 = 30940 +       0 +     203                |
  ```
- `-c 262144`
  ```sh
  llama_memory_breakdown_print: | memory breakdown [MiB] | total   free     self   model   context   compute    unaccounted |
  llama_memory_breakdown_print: |   - CUDA0 (RTX 5090 D) | 32606 = 1001 + (29482 = 21960 +    6445 +    1076) +        2122 |
  llama_memory_breakdown_print: |   - Host               |                 31460 = 30940 +       0 +     520                |
  ```

#a[What does the prompt context mean? - ggml-org/llama.cpp - Discussion \#1838][https://github.com/ggml-org/llama.cpp/discussions/1838]

= #a[Server][https://github.com/ggml-org/llama.cpp/blob/master/tools/server/README.md]
- Log all logs, including inputs and outputs: `-v --log-file v.log`

  #a[Save Chat History into New Prompts - Issue \#3985 - ggml-org/llama.cpp][https://github.com/ggml-org/llama.cpp/issues/3985]

  #a[Feature Request: Auto-save and Auto-load Conversations to and from File System in Server UI (Beyond Browser Local Storage) - Issue \#16604 - ggml-org/llama.cpp][https://github.com/ggml-org/llama.cpp/issues/16604]

- MCP

  #a[MCP support in llama.cpp is ready for testing : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1r1czgk/mcp_support_in_llamacpp_is_ready_for_testing/]

== API
- OpenAI

  #a[openai api compatibility - Discussion \#3683][https://github.com/ggml-org/llama.cpp/discussions/3683]

  `llama-cpp-python`: #a[An OpenAI Compatible Web Server for llama.cpp - Discussion \#795][https://github.com/ggml-org/llama.cpp/discussions/795]

- Anthropic
  - Claude Code

  #t[2512]
  #a[server : add Anthropic Messages API support by noname22 - Pull Request \#17570][https://github.com/ggml-org/llama.cpp/pull/17570]

  #a[New in llama.cpp: Anthropic Messages API][https://huggingface.co/blog/ggml-org/anthropic-messages-api-in-llamacpp]
  #a-badge[https://www.reddit.com/r/LocalLLaMA/comments/1qhaq21/new_in_llamacpp_anthropic_messages_api/]

- Ollama: ```sh llama-server --port 11434 ...```

  #a[server : add VSCode's Github Copilot Chat support by ggerganov - Pull Request \#12896][https://github.com/ggml-org/llama.cpp/pull/12896]
  - #a[You can now use GitHub Copilot with native llama.cpp : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1jxbba9/you_can_now_use_github_copilot_with_native/]

  #a[Misc. bug: VSCode copilot chat now asks for a minimum version - Issue \#15167][https://github.com/ggml-org/llama.cpp/issues/15167]
  - #a[server : implement /api/version endpoint for ollama compatibility (\#15167 ) by albert-polak - Pull Request \#15177][https://github.com/ggml-org/llama.cpp/pull/15177]
  - #a[Model providers should be community driven - Issue \#249605 - microsoft/vscode][https://github.com/microsoft/vscode/issues/249605]
    - `chatLanguageModels.json`

      #a[Custom OpenAI Compatible model configuration not showing up in Model Selector via chatLanguageModels.json - Issue \#289003 - microsoft/vscode][https://github.com/microsoft/vscode/issues/289003]
    - #a[JohnnyZ93/oai-compatible-copilot: A VSCode extension to use Openai/Ollama/Anthropic/Gemini API Providers in GitHub Copilot Chat][https://github.com/JohnnyZ93/oai-compatible-copilot]
      ```json
      "oaicopilot.baseUrl": "http://127.0.0.1:11434",
      "oaicopilot.models": [
          {
              "id": "unsloth/Qwen3-Coder-Next-GGUF:UD-IQ3_XXS",
              "owned_by": "openai",
              "apiMode": "openai",
              "context_length": 131072,
              "max_tokens": 8192,
              "temperature": 0,
              "top_p": 1
          }
      ]
      ```

- #a[kirel/ollama-proxy][https://github.com/kirel/ollama-proxy]

= Python
- #a[abetlen/llama-cpp-python: Python bindings for llama.cpp][https://github.com/abetlen/llama-cpp-python]
  (inactive)

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
