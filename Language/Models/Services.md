# Services
- [gpt4free: The official gpt4free repository | various collection of powerful language models](https://github.com/xtekky/gpt4free)
  - [gpt4free-ts: GPT4Free TypeScript Version](https://github.com/xiangsx/gpt4free-ts)

## OpenAI
[What is the difference between the GPT-4 models? | OpenAI Help Center](https://help.openai.com/en/articles/7127966-what-is-the-difference-between-the-gpt-4-models)

### Azure
[Comparing Performance of OpenAI GPT-4 and Microsoft Azure GPT-4](https://www.mcplusa.com/comparing-performance-of-openai-gpt-4-and-microsoft-azure-gpt-4/)

- Bing Chat
  - Context length: 2K

    [How to Set the Text Limit on Bing Chat to 25000 (max it can handle) : bing](https://www.reddit.com/r/bing/comments/12ph7le/how_to_set_the_text_limit_on_bing_chat_to_25000/)

### China
- [GPTAPI.US](https://www.gptapi.us/register?aff=FntG)

  [全网最低价的 GPT-4-32k API，价格为官网的三分之一 - V2EX](https://v2ex.com/t/987214)

  [最低价的 GPT-4-32k API，价格低于官网 44 倍 - V2EX](https://www.v2ex.com/t/995825)

- [xeduapi.com](https://xeduapi.com/register?aff=muPd)

  > 直连gpt-4价格为官方的2分之一(gpt-4默认修正倍数15x24(充值折扣)/2=180倍率)
  > 
  > gpt3.5价格为官方的24分之一,0.3元兑换1美金,倍率0.75

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

## Gemini
[Gemini models](https://ai.google.dev/models/gemini)

[Gemini API Pricing](https://ai.google.dev/pricing)
- Free: 60 RPM
- OSINT: `genai.configure(api_key=`

[Gemini REST API Reference](https://docs.gemini.com/rest-api/)

Libraries:
- [Google Python SDK for the Gemini API](https://github.com/google/generative-ai-python)
  
  [Gemini API: Quickstart with Python](https://ai.google.dev/tutorials/python_quickstart)

  If the rate limit is exceeded, the API will return `RATE_LIMIT_EXCEEDED` error and ban the client for a "short period" of time.

  `count_tokens()` also counts as a request.

- [HanaokaYuzu/Gemini-API: ✨ An elegant async Python wrapper for Google Gemini web app](https://github.com/HanaokaYuzu/Gemini-API)

- [dsdanielpark/Gemini-API: The unofficial python package that returns response of Google Gemini through cookie values.](https://github.com/dsdanielpark/Gemini-API)

### Gemini Pro
- Input: 30720 tokens
- Output: 2048 tokens

  Very limiting for translation tasks.

[An In-depth Look at Gemini's Language Abilities](https://arxiv.org/abs/2312.11444v2) ([中文](https://baoyu.io/translations/ai-paper/2312.11444-an-in-depth-look-at-geminis-language-abilities))
- [Machine translation](../Translation/README.md#llm)