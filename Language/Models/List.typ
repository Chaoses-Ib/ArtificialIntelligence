#import "@local/ib:0.1.0": *
#title[Language Model List]
= #t[25]
#md(```
- 2024-10 [Best LLM for code completion? : r/LocalLLaMA](https://www.reddit.com/r/LocalLLaMA/comments/1fwigff/best_llm_for_code_completion/)
- 2025-07 [What's the best local LLM for coding? : r/LocalLLM](https://www.reddit.com/r/LocalLLM/comments/1m5rzgf/whats_the_best_local_llm_for_coding/)
  - Deepseek R1
  - Qwen2.5-Coder
- 2025-08 [Best local LLMs to run on a 5090 (32 GB VRAM)? : r/LocalLLaMA](https://www.reddit.com/r/LocalLLaMA/comments/1n4tshu/best_local_llms_to_run_on_a_5090_32_gb_vram/)

## Uncensored
- 2024-10 [Local Uncensored CJK Translation Models? : r/LocalLLaMA](https://www.reddit.com/r/LocalLLaMA/comments/1fyu0cz/local_uncensored_cjk_translation_models/)
- 2025-02 [Uncensored model for novel writing : r/ollama](https://www.reddit.com/r/ollama/comments/1iv2r5s/uncensored_model_for_novel_writing/)
- 2025-06 [Current best uncensored model? : r/LocalLLaMA](https://www.reddit.com/r/LocalLLaMA/comments/1lfpqs6/current_best_uncensored_model/)

## Gemma
- [princeton-nlp/gemma-2-9b-it-SimPO](https://huggingface.co/princeton-nlp/gemma-2-9b-it-SimPO)
  - [JustData/gemma-2-9b-it-SimPO-Q8_0-GGUF](https://huggingface.co/JustData/gemma-2-9b-it-SimPO-Q8_0-GGUF)
    - ModelScope: [newsletter/gemma-2-9b-it-SimPO-Q8_0-GGUF](https://www.modelscope.cn/models/newsletter/gemma-2-9b-it-SimPO-Q8_0-GGUF)
  - 默认输出比较短，不过审查确实比较少。
  - 中文输出中可能会偶尔混杂英文词。

## Qwen
### Qwen2.5
- QwQ
  - [QwQ-32B](https://huggingface.co/Qwen/QwQ-32B)
    - [huihui-ai/QwQ-32B-abliterated](https://huggingface.co/huihui-ai/QwQ-32B-abliterated)
      - [bartowski/huihui-ai_QwQ-32B-abliterated-GGU](https://huggingface.co/bartowski/huihui-ai_QwQ-32B-abliterated-GGUF)

### Qwen3
- [Qwen3-Coder](https://qwen.ai/blog?id=qwen3-coder)
  - [Qwen3-Coder-30B-A3B-Instruct](https://modelscope.cn/models/Qwen/Qwen3-Coder-30B-A3B-Instruct)
  - [Qwen3-Coder-30B-A3B-Instruct-FP8](https://modelscope.cn/models/Qwen/Qwen3-Coder-30B-A3B-Instruct-FP8)
  - [unsloth/Qwen3-Coder](https://huggingface.co/collections/unsloth/qwen3-coder)
    - [unsloth/Qwen3-Coder-30B-A3B-Instruct-GGUF](https://modelscope.cn/models/unsloth/Qwen3-Coder-30B-A3B-Instruct-GGUF)
      - `ollama run modelscope.cn/unsloth/Qwen3-Coder-30B-A3B-Instruct-GGUF`

  [Qwen3-Coder-30B-A3B released! : r/LocalLLaMA](https://www.reddit.com/r/LocalLLaMA/comments/1me2zc6/qwen3coder30ba3b_released/)

  [Qwen3-Coder: How to Run Locally | Unsloth Documentation](https://docs.unsloth.ai/models/qwen3-coder-how-to-run-locally)

Abliterated:
- [mradermacher/Qwen3-30B-A3B-abliterated-erotic-i1-GGUF](https://huggingface.co/mradermacher/Qwen3-30B-A3B-abliterated-erotic-i1-GGUF?not-for-all-audiences=true)
  - [ModelScope](https://modelscope.cn/models/mradermacher/Qwen3-30B-A3B-abliterated-erotic-i1-GGUF)
- [Qwen3-abliterated - a huihui-ai Collection](https://huggingface.co/collections/huihui-ai/qwen3-abliterated)
  - Ollama: [huihui_ai/qwen3-abliterated](https://ollama.com/huihui_ai/qwen3-abliterated)

[Abliterated Qwen3 when? : r/LocalLLaMA](https://www.reddit.com/r/LocalLLaMA/comments/1kagyta/abliterated_qwen3_when/)

## Mistral
- [mradermacher/Dolphin-Mistral-24B-Venice-Edition-i1-GGUF](https://huggingface.co/mradermacher/Dolphin-Mistral-24B-Venice-Edition-i1-GGUF)
  - ModelScope: [mradermacher/Dolphin-Mistral-24B-Venice-Edition-i1-GGUF](https://www.modelscope.cn/models/mradermacher/Dolphin-Mistral-24B-Venice-Edition-i1-GGUF)
```)

= #t[26]
== 26Q1
- #a[GLM-4.7: Advancing the Coding Capability][https://z.ai/blog/glm-4.7]
  - #a[zai-org/GLM-4.7-Flash][https://huggingface.co/zai-org/GLM-4.7-Flash]

- #a[Qwen3-Coder-Next: Pushing Small Hybrid Models on Agentic Coding][https://qwen.ai/blog?id=qwen3-coder-next]
  #a-badge[https://huggingface.co/Qwen/Qwen3-Coder-Next]
  - Based on Qwen3-Next-80B-A3B-Base
  - No thinking
  - #a[Qwen/Qwen3-Coder-Next-GGUF - Hugging Face][https://huggingface.co/Qwen/Qwen3-Coder-Next-GGUF]
    #a-badge[https://modelscope.cn/models/Qwen/Qwen3-Coder-Next-GGUF]
    - #strike[
      ```sh ollama run modelscope.cn/Qwen/Qwen3-Coder-Next-GGUF```
      ]
  - #a[unsloth/Qwen3-Coder-Next-GGUF][https://unsloth.ai/docs/models/qwen3-coder-next]
    #a-badge[https://modelscope.cn/models/unsloth/Qwen3-Coder-Next-GGUF]
    - ```sh llama-server -hf unsloth/Qwen3-Coder-Next-GGUF:UD-IQ3_XXS --temp 1.0 --top-k 40 --top-p 0.95 --min-p 0.01 -c 262144```
    
      ```sh ollama run modelscope.cn/unsloth/Qwen3-Coder-Next-GGUF:UD-IQ3_XXS```
    - ```sh ollama run modelscope.cn/unsloth/Qwen3-Coder-Next-GGUF:UD-Q2_K_XL```
  - #a[noctrex/Qwen3-Coder-Next-MXFP4_MOE-GGUF][https://huggingface.co/noctrex/Qwen3-Coder-Next-MXFP4_MOE-GGUF]
    - #a[Increasing the precision of some of the weights when quantizing][https://huggingface.co/noctrex/Qwen3-Coder-Next-MXFP4_MOE-GGUF/discussions/2]
  - #a[Ollama][https://ollama.com/library/qwen3-coder-next]

    #a[Qwen3-Coder-Next (Local Model Request) - Issue \#14049 - ollama/ollama][https://github.com/ollama/ollama/issues/14049]

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
    llama_memory_breakdown_print: |   - CUDA0 (RTX 5090)   | 32606 = 1001 + (29482 = 21960 +    6445 +    1076) +        2122 |
    llama_memory_breakdown_print: |   - Host               |                 31460 = 30940 +       0 +     520                |
    ```

  #a[Qwen3-Coder-Next : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1quvvtv/qwen3codernext/]
  #a-badge[https://www.reddit.com/r/LocalLLM/comments/1quw0cf/qwen3codernext_is_out_now/]
  #a-badge[https://www.reddit.com/r/LocalLLaMA/comments/1quz3vb/removed_by_moderator/]
  - #a[Qwen3-Coder Tech Report: tool call generalization, reward hacking, general knowledge : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1qv5d1k/qwen3coder_tech_report_tool_call_generalization/]

  #a[Qwen3 Coder Next as first "usable" coding model < 60 GB for me : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1qz5uww/qwen3_coder_next_as_first_usable_coding_model_60/]

  #a[Do not Let the "Coder" in Qwen3-Coder-Next Fool You! It's the Smartest, General Purpose Model of its Size : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1r0abpl/do_not_let_the_coder_in_qwen3codernext_fool_you/]

  #a[Qwen3 coder next oddly usable at aggressive quantization : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1rabg6o/qwen3_coder_next_oddly_usable_at_aggressive/]
  - #q[I read somewhere that Qwen next architecture is very resilient to quantization. I had a similar great experience a super aggressive IQ2_XS quant of Qwen3.5: https://huggingface.co/ubergarm/Qwen3.5-397B-A17B-GGUF/discussions/2]

  #a[Qwen3-Coder-Next GGUF Aider Coding Benchmarks : r/unsloth][https://www.reddit.com/r/unsloth/comments/1rbkbse/qwen3codernext_gguf_aider_coding_benchmarks/]

  #a[My real-world Qwen3-code-next local coding test. So, Is it the next big thing? : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1rc1ra2/my_realworld_qwen3codenext_local_coding_test_so/]

  #a[Qwen3-Coder-Next is now the \#1 most downloaded model on Unsloth! : r/unsloth][https://www.reddit.com/r/unsloth/comments/1rcjrux/qwen3codernext_is_now_the_1_most_downloaded_model/]

- #a[Qwen3.5: Towards Native Multimodal Agents][https://qwen.ai/blog?id=qwen3.5]

  #a[Which one are you waiting for more: 9B or 35B? : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1rbkeea/which_one_are_you_waiting_for_more_9b_or_35b/]

  #a[New Qwen3.5 models spotted on qwen chat : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1rdfhfx/new_qwen35_models_spotted_on_qwen_chat/]

#t[2601]
#a[Alternatives to Qwen3-coder-30B? : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1qmkc1j/alternatives_to_qwen3coder30b/]
- #a[\~60GB models on coding: GLM 4.7 Flash vs. GPT OSS 120B vs. Qwen3 Coder 30B -- your comparisons? : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1qn3evg/60gb_models_on_coding_glm_47_flash_vs_gpt_oss/]

#t[2602]
#a[Best Model for single 3090 in 2026? : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1rbdsds/best_model_for_single_3090_in_2026/]
