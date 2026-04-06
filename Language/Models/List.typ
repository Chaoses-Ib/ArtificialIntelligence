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

  #a[Qwen3-Coder-Next is the top model in SWE-rebench \@ Pass 5. I think everyone missed it. : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1rn476o/qwen3codernext_is_the_top_model_in_swerebench/]

- #a[Qwen3.5: Towards Native Multimodal Agents][https://qwen.ai/blog?id=qwen3.5]
  - #a[Qwen3.5 - How to Run Locally Guide | Unsloth Documentation][https://unsloth.ai/docs/models/qwen3.5]
    - #a[Qwen3.5 GGUF Benchmarks | Unsloth Documentation][https://unsloth.ai/docs/models/qwen3.5/gguf-benchmarks]
  - #a[AesSedai/Qwen3.5-35B-A3B-GGUF - Hugging Face][https://huggingface.co/AesSedai/Qwen3.5-35B-A3B-GGUF]
    #a-badge[https://modelscope.cn/models/AesSedai/Qwen3.5-35B-A3B-GGUF]
    - ```sh llama-server -hf AesSedai/Qwen3.5-35B-A3B-GGUF:Q5_K_M --temp 0.6 --top-k 20 --top-p 0.95 --min-p 0.00 -c 256000```
    - ```sh llama-server -hf AesSedai/Qwen3.5-35B-A3B-GGUF:Q5_K_M --temp 0.7 --top-k 20 --top-p 0.8 --min-p 0.00 -c 256000 --chat-template-kwargs '{"enable_thinking":false}'```
    - #a[Request for GGUF Update: Qwen 3.5 DeltaNet GPU Offloading Compatibility][https://huggingface.co/AesSedai/Qwen3.5-35B-A3B-GGUF/discussions/6]

  #a[Which one are you waiting for more: 9B or 35B? : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1rbkeea/which_one_are_you_waiting_for_more_9b_or_35b/]

  #a[New Qwen3.5 models spotted on qwen chat : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1rdfhfx/new_qwen35_models_spotted_on_qwen_chat/]

  Variants:
  - #a[Qwen3.5 family comparison on shared benchmarks : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1ro7xve/qwen35_family_comparison_on_shared_benchmarks/]
    - 27B > 35B-A3B
  - #a[Qwen3 vs Qwen3.5 performance : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1rlckan/comment/o8r1k8i/]
  - #a[Visualizing All Qwen 3.5 vs Qwen 3 Benchmarks : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1rivckt/visualizing_all_qwen_35_vs_qwen_3_benchmarks/]
  - Qwen3.5-35B-A3B
    - #a[Qwen3.5-35B-A3B Q4 Quantization Comparison : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1rfds1h/qwen3535ba3b_q4_quantization_comparison/]
      - AesSedai Q4_K_M > unsloth_UD-Q4_K_XL
    - #a[Qwen3.5-35B-A3B quantization quality + speed benchmarks on RTX 5080 16GB (Q8_0 vs Q4_K_M vs UD-Q4_K_XL) : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1rei65v/qwen3535ba3b_quantization_quality_speed/]
  - #a[Qwen3.5 27B better than 35B-A3B? : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1re72h4/qwen35_27b_better_than_35ba3b/]
  - #a[Qwen3.5 Model Comparison: 27B vs 35B on RTX 4090 : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1renq5y/qwen35_model_comparison_27b_vs_35b_on_rtx_4090/]
    - 35B-A3B Q3 = 27B Q4
  - #a[Is Qwen3.5-9B enough for Agentic Coding? : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1riwy9w/is_qwen359b_enough_for_agentic_coding/]
  - #a[Qwen3.5 122B and 35B models offer Sonnet 4.5 performance on local computers | Hacker News][https://news.ycombinator.com/item?id=47199781]

  #a[Qwen 3.5-35B-A3B is beyond expectations. It's replaced GPT-OSS-120B as my daily driver and it's 1/3 the size. : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1rh43za/qwen_3535ba3b_is_beyond_expectations_its_replaced/]

  #a[Qwen3.5-35B-A3B hits 37.8% on SWE-bench Verified Hard --- nearly matching Claude Opus 4.6 (40%) with the right verification strategy : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1rkdlqi/qwen3535ba3b_hits_378_on_swebench_verified_hard/]

  vs. Qwen3-Coder-Next:
  - #a[Qwen3 Coder Next | Qwen3.5 27B | Devstral Small 2 | Rust & Next.js Benchmark : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1rhfque/qwen3_coder_next_qwen35_27b_devstral_small_2_rust/]
    - Qwen3-Coder-Next > Qwen3.5-27B > Qwen3.5-35B-A3B
  - #a[Does Qwen3.5 35b outperform Qwen3 coder next 80b for you? : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1rgoygs/does_qwen35_35b_outperform_qwen3_coder_next_80b/]
    - Qwen3-Coder-Next > Qwen3.5-35B-A3B
  - #a[Qwen3-Coder-Next vs Qwen3.5-35B-A3B vs Qwen3.5-27B - A quick coding test : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1rdnxe6/qwen3codernext_vs_qwen3535ba3b_vs_qwen3527b_a/]
    - Qwen3-Coder-Next > Qwen3.5-35B-A3B > Qwen3.5-27B
  - #a[Qwen3.5-35B-A3B vs Qwen3 Coder 30B A3B Instruct for running Claude Code locally? : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1rjg5qm/qwen3535ba3b_vs_qwen3_coder_30b_a3b_instruct_for/]
    - Qwen3.5 > Qwen3-Coder
  - #a[Qwen3.5-27B-UD-Q4_K_XL (GPU) vs Qwen3-Coder-Next-UD-Q3_K_XL (GPU+SYS) : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1rp8xhm/qwen3527budq4_k_xl_gpu_vs_qwen3codernextudq3_k_xl/]
  - #a[Can we expect qwen3.5-coder versions? : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1rnwi4e/can_we_expect_qwen35coder_versions/]

  #a[Qwen 3.5 27B is the REAL DEAL - Beat GPT-5 on my first test : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1rnwiyx/qwen_35_27b_is_the_real_deal_beat_gpt5_on_my/]
  - #q[The 35B MOE is fast but not as smart as 27B but 27B is dead slow.
    I can run Qwen Coder 80B MOE at almost the same speed as 35B and it's a lot smarter than 27B.]

  #a[My Experience with Qwen 3.5 35B : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1ryc3w0/my_experience_with_qwen_35_35b/]

  #a[Anybody able to get Qwen3.5-35b-a3b working with claude code ? : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1rh6455/anybody_able_to_get_qwen3535ba3b_working_with/]

#t[2601]
#a[Alternatives to Qwen3-coder-30B? : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1qmkc1j/alternatives_to_qwen3coder30b/]
- #a[\~60GB models on coding: GLM 4.7 Flash vs. GPT OSS 120B vs. Qwen3 Coder 30B -- your comparisons? : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1qn3evg/60gb_models_on_coding_glm_47_flash_vs_gpt_oss/]

#t[2602]
#a[Best Model for single 3090 in 2026? : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1rbdsds/best_model_for_single_3090_in_2026/]

#t[2603]
#a[Costs-performance tradeoff for Qwen3, Qwen3.5 and other models (cost as proxy for compute) : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1rjnpuv/costsperformance_tradeoff_for_qwen3_qwen35_and/]

== 26Q2
- #a[Gemma 4][https://deepmind.google/models/gemma/gemma-4/]
  #a-badge[https://www.reddit.com/r/LocalLLaMA/comments/1salgre/gemma_4_has_been_released/]
  #a-badge[https://news.ycombinator.com/item?id=47616361]

  #a[Gemma 4 insane benchmarks : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1salz5u/]

  #a[Gemma 4 and Qwen3.5 on shared benchmarks : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1saoyj7/gemma_4_and_qwen35_on_shared_benchmarks/]

  #a[A day has passed which is a decade in the ai world - is qwen 3.5 27b q6 still the best model to run on a 5090, or does the new bonsai and gemma models beat it? : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1sb363l/a_day_has_passed_which_is_a_decade_in_the_ai/]
  - #q[It’s actually very close to a tie. Qwen wins at benchmarks and tool calling (think openclaw), Gemma wins at everything else.]

  #a[so.... Qwen3.5 or Gemma 4? : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1scbpmo/so_qwen35_or_gemma_4/]
  - #q[Qwen is the better model if it has to interact with code, otherwise use gemma.]

  #a[Gemma 4 MOE is very bad at agentic coding. Couldn't do things CLine + Qwen can do. : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1scncrn/gemma_4_moe_is_very_bad_at_agentic_coding_couldnt/]
  - #q[Nobody is beating qwen 3 coder next 80b on the desktop for what it does. And if I'm honest I can't believe Qwen released it at all.]

  #a[Gemma 4 31B vs Gemma 4 26B-A4B vs Qwen 3.5 27B --- 30-question blind eval with Claude Opus 4.6 as judge : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1scwos6/gemma_4_31b_vs_gemma_4_26ba4b_vs_qwen_35_27b/]

  #a[Gemma 4 31B vs Qwen 3.5 27B vs Qwen Coder Next : r/LocalLLaMA][https://www.reddit.com/r/LocalLLaMA/comments/1sdfvmj/gemma_4_31b_vs_qwen_35_27b_vs_qwen_coder_next/]
