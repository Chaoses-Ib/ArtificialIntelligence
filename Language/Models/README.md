# Language Models
[Wikipedia](https://en.wikipedia.org/wiki/Language_model)

## Large language models
[Wikipedia](https://en.wikipedia.org/wiki/Large_language_model)

[Why did all of the public reproduction of GPT-3 fail? In which tasks should we use GPT-3.5/ChatGPT?](https://jingfengyang.github.io/gpt)

Benchmarks:
- [Chatbot Arena Leaderboard - a Hugging Face Space by lmsys](https://huggingface.co/spaces/lmsys/chatbot-arena-leaderboard)
- [EvalPlus Leaderboard](https://evalplus.github.io/leaderboard.html)

[→Agents](../../Agents.md#llm)

[awesome-chatgpt: A curated list of awesome ChatGPT related projects.](https://github.com/uhub/awesome-chatgpt)

## In-context learning
[How I think about LLM prompt engineering](https://fchollet.substack.com/p/how-i-think-about-llm-prompt-engineering)
- LLM 可以理解成是一个程序数据库，每个程序会对语义进行特定操作，而 prompt 就是激活特定程序的方法。

Function vectors:
- 2023-10 [Function Vectors in Large Language Models](https://functions.baulab.info/)
- 2023-10 [In-Context Learning Creates Task Vectors](https://arxiv.org/abs/2310.15916#)
  - [r/MachineLearning](https://www.reddit.com/r/MachineLearning/comments/17geq9f/r_researchers_discover_that_incontext_learning/)
  - [Hugging Face](https://huggingface.co/papers/2310.15916)
- LLM learns "focus" by itself.

### Prompt engineering
[Wikipedia](https://en.wikipedia.org/wiki/Prompt_engineering)

[Prompt Engineering | Lil'Log](https://lilianweng.github.io/posts/2023-03-15-prompt-engineering/)

[面向开发者的 LLM 入门教程，吴恩达大模型系列课程中文版](https://github.com/datawhalechina/prompt-engineering-for-developers)

## Context length
```python
async def split_by_max_tokens(s: str, max_token_k = 3.5) -> list[str]:
    slices = []
    async def append_slice(slice: str):
        tokens = (await model.count_tokens_async(buf)).total_tokens
        print(tokens, len(buf))
        assert tokens < MAX_TOKEN

        slices.append(slice)
    
    buf = ''
    for line in s.splitlines(keepends=True):
        if len(buf) < MAX_TOKEN * max_token_k:
            buf += line
        else:
            await append_slice(buf)
            buf = line
    await append_slice(buf)
    
    return slices
```
英译中时，token 大部分情况下都是减少的。