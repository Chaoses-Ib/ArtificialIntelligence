#import "@local/ib:0.1.0": *
#title[LiteLLM]
#a-badge[https://github.com/BerriAI/litellm]

#q[Python SDK, Proxy Server (AI Gateway) to call 100+ LLM APIs in OpenAI (or native) format, with cost tracking, guardrails, loadbalancing and logging.
[Bedrock, Azure, OpenAI, VertexAI, Cohere, Anthropic, Sagemaker, HuggingFace, VLLM, NVIDIA NIM]]

= Deployment
- ```sh uv run litellm[proxy]```

- DB: PostgreSQL

- RAM: \~100M

- Docker: #a[`docker-compose.yml`][https://github.com/BerriAI/litellm/blob/main/docker-compose.yml]

  #a[Getting Started Tutorial | liteLLM][https://docs.litellm.ai/docs/proxy/docker_quick_start]
  - #a[What is the difference between the normal and database container? - BerriAI/litellm - Discussion \#5276][https://github.com/BerriAI/litellm/discussions/5276]

= #a[Providers][https://docs.litellm.ai/docs/providers]
- #a[OpenAI-Compatible Endpoints][https://docs.litellm.ai/docs/providers/openai_compatible]
  - Test Connection may report #q[`OpenAIException - The api_key client option must be set either by passing api_key`], but actually works.
- llama.cpp
  - #a[\[Feature\]: Support llama.cpp as a provider - Issue \#9138 - BerriAI/litellm][https://github.com/BerriAI/litellm/issues/9138]
  - #a[Ollama][https://docs.litellm.ai/docs/providers/ollama]
- #a[vLLM][https://docs.litellm.ai/docs/providers/vllm]

  #a[LiteLLM - vLLM][https://docs.vllm.ai/en/stable/deployment/frameworks/litellm/]

Issues:
- #a[\[Bug\]: Issue with `ssl_verify` setting seemingly reverting to true after running for a day (Docker) - Issue \#17636][https://github.com/BerriAI/litellm/issues/17636]

= Logs
- #q[To view request and response details, enable prompt storage in your LiteLLM configuration by adding the following to your `proxy_config.yaml` file or open the settings to configure this directly.]

  ```yaml
  general_settings:
  store_model_in_db: true
  store_prompts_in_spend_logs: true
  ```

= Security
- Model API and admin API are on the same port and base path.
- Too many APIs.

= Enterprise
- Team admin
- SSO
