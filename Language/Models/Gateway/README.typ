#import "@local/ib:0.1.0": *
#title[LLM API Gateways]
= Servers
Python:
- #a[LiteLLM][./LiteLLM.typ]
- #a[Mirrowel/LLM-API-Key-Proxy: Universal LLM Gateway: One API, every LLM. OpenAI/Anthropic-compatible endpoints with multi-provider translation and intelligent load-balancing.][https://github.com/Mirrowel/LLM-API-Key-Proxy]

Rust:
- #a([TensorZero], <tensorzero>)
- #a[farion1231/cc-switch: A cross-platform desktop All-in-One assistant tool for Claude Code, Codex, OpenCode & Gemini CLI.][https://github.com/farion1231/cc-switch]
  - Chinese
- #a[katanemo/plano: Plano is an AI-native proxy and data plane for agentic apps --- with built-in orchestration, safety, observability, and smart LLM routing so you stay focused on your agents core logic.][https://github.com/katanemo/plano]
  - No cost tracking

  #a[Show HN: Arch -- an intelligent prompt gateway built on Envoy | Hacker News][https://news.ycombinator.com/item?id=41864014]

Go:
- #a[songquanpeng/one-api: LLM API 管理 & 分发系统，支持主流模型，统一 API 适配，可用于 key 管理与二次分发。单可执行文件，提供 Docker 镜像，一键部署，开箱即用。LLM API management & key redistribution system, unifying multiple providers under a single API. Single binary, Docker-ready, with an English UI.][https://github.com/songquanpeng/one-api]
  (discontinued)
  - #a[MartialBE/one-hub: OpenAI 接口管理 & 分发系统，改自songquanpeng/one-api。支持更多模型，加入统计页面，完善非openai模型的函数调用。][https://github.com/MartialBE/one-hub]
    - #a[deanxv/done-hub][https://github.com/deanxv/done-hub]
- #a[lbjlaq/Antigravity-Manager: Professional Antigravity Account Manager & Switcher. One-click seamless account switching for Antigravity Tools. Built with Tauri v2 + React (Rust).专业的 Antigravity 账号管理与切换工具。为 Antigravity 提供一键无缝账号切换功能。][https://github.com/lbjlaq/Antigravity-Manager]
- #a[Wei-Shaw/sub2api: Sub2API-CRS2 一站式开源中转服务，让 Claude、Openai 、Gemini、Antigravity订阅统一接入，支持拼车共享，更高效分摊成本，原生工具无缝使用。][https://github.com/Wei-Shaw/sub2api]

JS:
- #a[Portkey-AI/gateway: A blazing fast AI Gateway with integrated guardrails. Route to 200+ LLMs, 50+ AI Guardrails with 1 fast & friendly API.][https://github.com/Portkey-AI/gateway]
- #a[coaidev/coai: 🚀 Next Generation Multi-tenant AI One-Stop Solution. Builtin Admin & Billing System. Enterprise-Grade Unified LLM Gateway Support for 200+ Models And 35+ Providers, Load Balacing w/ Priority-base Routing, Cost Management, Chat Share, Cloud Sync, Credit/Subscription Billing, All File Parsing, Web Search, Built-in Model Cache.][https://github.com/coaidev/coai]
- #a[theopenco/llmgateway: Route, manage, and analyze your LLM requests across multiple providers with a unified API interface.][https://github.com/theopenco/llmgateway]
- #a[Wei-Shaw/claude-relay-service: CRS-自建Claude Code镜像，一站式开源中转服务，让 Claude、OpenAI、Gemini、Droid 订阅统一接入，支持拼车共享，更高效分摊成本，原生工具无缝使用。][https://github.com/Wei-Shaw/claude-relay-service]
  (discontinued)

#a[LLM gateway configuration - Claude Code Docs][https://code.claude.com/docs/en/llm-gateway]
- LiteLLM

#a[LLM/AI API 网关市场分析 & 创业团队选型推荐 | Xinwei Xiong(cubxxw)'s English blog][https://nsddd.top/posts/ai-projects/ai-getway/]

#a[LLMOps与智能系统重构，第4章 统一接口层：LLM Gateway - 知乎][https://zhuanlan.zhihu.com/p/1979460552452506013]

#t[2310]
#a[API Server : r/LocalLLM][https://www.reddit.com/r/LocalLLM/comments/17ihd3i/api_server/]

#t[2410]
#a[Best LLM gateway? : r/LLMDevs][https://www.reddit.com/r/LLMDevs/comments/1fdii62/best_llm_gateway/]

#t[2506]
#a[LLM Proxy in Production (Litellm, portkey, helicone, truefoundry, etc) : r/LLMDevs][https://www.reddit.com/r/LLMDevs/comments/1l1n95h/llm_proxy_in_production_litellm_portkey_helicone/]

== TensorZero <tensorzero>
#a-badge[https://github.com/tensorzero/tensorzero]

#q[TensorZero is an open-source stack for industrial-grade LLM applications.
It unifies an LLM gateway, observability, optimization, evaluation, and experimentation.]

- DB: ClickHouse
  - #a[Support Postgres as the primary database - Discussion \#4173][https://github.com/tensorzero/tensorzero/discussions/4173]

#a[Comparison: TensorZero vs. LiteLLM - TensorZero Docs][https://www.tensorzero.com/docs/comparison/litellm]
- #q[TensorZero is fully open-source, whereas LiteLLM gates some of its features behind an enterprise license.]
