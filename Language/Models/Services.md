# Services
- [gpt4free: The official gpt4free repository | various collection of powerful language models](https://github.com/xtekky/gpt4free)
  - [gpt4free-ts: GPT4Free TypeScript Version](https://github.com/xiangsx/gpt4free-ts)

History:
- 2024-04 [现在个人用户订阅大语言模型的最划算的方法是什么？ - V2EX](https://www.v2ex.com/t/1036778)

## OpenAI
[What is the difference between the GPT-4 models? | OpenAI Help Center](https://help.openai.com/en/articles/7127966-what-is-the-difference-between-the-gpt-4-models)

### Azure
[Comparing Performance of OpenAI GPT-4 and Microsoft Azure GPT-4](https://www.mcplusa.com/comparing-performance-of-openai-gpt-4-and-microsoft-azure-gpt-4/)

- Microsoft Copilot (Bing Chat, [Wikipedia](https://en.wikipedia.org/wiki/Microsoft_Copilot))
  - Context length: 2K

    [How to Set the Text Limit on Bing Chat to 25000 (max it can handle) : bing](https://www.reddit.com/r/bing/comments/12ph7le/how_to_set_the_text_limit_on_bing_chat_to_25000/)
  
  [New-Bing-Anywhere: 💬 New-Bing-Anywhere extension's source Always use Bing GPT-4](https://github.com/ha0z1/New-Bing-Anywhere)

### China
- [GPTAPI.US](https://www.gptapi.us/register?aff=FntG)

  [全网最低价的 GPT-4-32k API，价格为官网的三分之一 - V2EX](https://v2ex.com/t/987214)

  [最低价的 GPT-4-32k API，价格低于官网 44 倍 - V2EX](https://www.v2ex.com/t/995825)

  [gptapi.us 中转站避雷提醒 - V2EX](https://www.v2ex.com/t/1027837)

- [xeduapi.com](https://xeduapi.com/register?aff=muPd)

  > gpt4全系价格为官方的2.7折,官方的3.6分之一,实际2元人民币兑换1美金---gpt4默认倍率x24(充值折扣)x0.27
  > 
  > gpt3.5只有openai官网逆向模型gpt-3.5-turbo-web 全系价格为官方的0.416折,官方的24分之一,0.3元人民币兑换1美金

  > 中转站gpt3.5是openai提供,gpt-4是微软,审核力度不同

  Telegram: [@xedume](https://t.me/xedume)

- [AIProxy](https://aiproxy.io/)

- [OhMyGPT](https://x.dogenet.win/)

  > 模型 倍率(相对于原价)  
  > 普通模型(除 GPT-4 系列以外的模型) 0.2  
  > GPT-4 系列模型 0.4  
  > GPT-4-32k 模型 1.1  
  > Azure 模型 1.1  
  > Anthropic 模型 1.1

- [evanora.top](https://oneai.evanora.top/)

[为什么 chatgpt 的 api key 价格可以被拉的特别低？ - V2EX](https://www.v2ex.com/t/995306#reply4)

[API 中转站 OpenKey 突然修改存量用户余额有效期 - V2EX](https://global.v2ex.com/t/1032122)

## Gemini
[Gemini models](https://ai.google.dev/models/gemini)

[Gemini API Pricing](https://ai.google.dev/pricing)
- OSINT: `genai.configure(api_key=`

Model | Token limits | Rate limits
--- | --- | ---
Gemini 1.0 Pro | 30,720 & 2,048 | 15 RPM, 32K TPM, 1500 RPD
Gemini 1.5 Pro | 2,097,152 & 8,192 | 2 RPM, 32K TPM, 50 RPD
Gemini 1.5 Flash | 1,048,576 & 8,192 | 15 RPM, 1M TPM, 1500 RPD

[Gemini REST API Reference](https://docs.gemini.com/rest-api/)

Libraries:
- [Google Python SDK for the Gemini API](https://github.com/google/generative-ai-python)
  
  [Gemini API: Quickstart with Python](https://ai.google.dev/tutorials/python_quickstart)

  If the rate limit is exceeded, the API will return `RATE_LIMIT_EXCEEDED` error and ban the client for a "short period" of time.

  `count_tokens()` also counts as a request.

  `FailedPrecondition: 400 User location is not supported for the API use.`
  - Hong Kong
  - [User location is not supported for the API use. - Issue #159 - google-gemini/generative-ai-python](https://github.com/google-gemini/generative-ai-python/issues/159)

- [HanaokaYuzu/Gemini-API: ✨ An elegant async Python wrapper for Google Gemini web app](https://github.com/HanaokaYuzu/Gemini-API)

- [dsdanielpark/Gemini-API: The unofficial python package that returns response of Google Gemini through cookie values.](https://github.com/dsdanielpark/Gemini-API)

### Gemini 1.0 Pro
- Input: 30720 tokens
- Output: 2048 tokens

  Very limiting for translation tasks.

[An In-depth Look at Gemini's Language Abilities](https://arxiv.org/abs/2312.11444v2) ([中文](https://baoyu.io/translations/ai-paper/2312.11444-an-in-depth-look-at-geminis-language-abilities))
- [Machine translation](../Translation/README.md#llm)

### Gemini 1.5 Pro
- Very slow, especially in chat mode. Don't use a small timeout, like google-generativeai used in old versions.

  [google.generativeai.types.RequestOptions](https://github.com/google-gemini/generative-ai-python/blob/d0f3359a93a5192238bbf655ed57b6235913aef2/docs/api/google/generativeai/types/RequestOptions.md)
  ```python
  # import google.api_core.retry
  import google.api_core.retry_async

  request_options = genai.types.RequestOptions(retry=google.api_core.retry_async.AsyncRetry(timeout=3600), timeout=3600)
  ```

  [google.api\_core.exceptions.DeadlineExceeded: 504 Deadline Exceeded - Issue #294 - google-gemini/generative-ai-python](https://github.com/google-gemini/generative-ai-python/issues/294)

### Gemini 1.5 Flash
[Gemini 1.5: Unlocking multimodal understanding across millions of tokens of context](https://arxiv.org/abs/2403.05530)

[Google Gemini updates: Flash 1.5, Gemma 2 and Project Astra](https://blog.google/technology/ai/google-gemini-update-flash-ai-assistant-io-2024/?utm_source=gdm&utm_medium=referral&utm_campaign=io24)

[Gemini gets 1.5 Flash, a new related content feature and more](https://blog.google/products/gemini/google-gemini-new-features-july-2024/)