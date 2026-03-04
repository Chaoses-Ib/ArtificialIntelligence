#import "@local/ib:0.1.0": *
#title[LiteLLM]
#a-badge[https://github.com/BerriAI/litellm]

#q[Python SDK, Proxy Server (AI Gateway) to call 100+ LLM APIs in OpenAI (or native) format, with cost tracking, guardrails, loadbalancing and logging.
[Bedrock, Azure, OpenAI, VertexAI, Cohere, Anthropic, Sagemaker, HuggingFace, VLLM, NVIDIA NIM]]

- Quality is just so-so.

= Deployment
- ```sh uv run litellm[proxy]```

- DB: PostgreSQL

- RAM: \~100\~500M

- Docker
  - #a[`Dockerfile`][https://github.com/BerriAI/litellm/blob/main/Dockerfile]
    - #a[`docker.litellm.ai/berriai/litellm-non_root`][https://github.com/BerriAI/litellm/blob/main/docker/Dockerfile.non_root]
  - #a[`docker-compose.yml`][https://github.com/BerriAI/litellm/blob/main/docker-compose.yml]

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
- Non-root (`nobody`): #a[`docker.litellm.ai/berriai/litellm-non_root`][https://github.com/BerriAI/litellm/blob/main/docker/Dockerfile.non_root]
  - `PROXY_BASE_URL` not available?

- Model API and admin API are on the same port and base path.
  - #a[```sh SERVER_ROOT_PATH="/api/v1"```][https://docs.litellm.ai/docs/proxy/custom_root_ui]
    #footnote[#a[[Bug]: UI not working anymore with custom root path - Issue \#20011 - BerriAI/litellm][https://github.com/BerriAI/litellm/issues/20011]]
  - `UI_BASE_PATH="/litellm/ui"`
    #footnote[#a[[Bug]: Custom server root path not working properly - Issue \#10761 - BerriAI/litellm][https://github.com/BerriAI/litellm/issues/10761]]
  - `PROXY_BASE_URL=https://litellm-api.up.railway.app`
    #footnote[#a[✨ SSO for Admin UI | liteLLM][https://docs.litellm.ai/docs/proxy/admin_ui_sso#step-3-set-proxy_base_url-in-your-env]]
    #footnote[#a[[Bug]: Custom Proxy Base Url not working - Issue \#5997 - BerriAI/litellm][https://github.com/BerriAI/litellm/issues/5997]]
    (or ```nginx proxy_set_header Host $host```
    #footnote[#a[Using Nginx - vLLM][https://docs.vllm.ai/en/v0.10.1/deployment/nginx.html#create-simple-nginx-config-file]]
    )
    - Needed for working properly, otherwise:
      ```json {"redirect_url":"http://127.0.0.1:4000/ui/?login=success"}```.

- Too many APIs.

- #a[Litellm CVEs and Security Vulnerabilities - OpenCVE][https://app.opencve.io/cve/?vendor=litellm]

= Enterprise
- Team admin
- SSO
