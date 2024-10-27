# Services
## [Hugging Face: The AI community building the future.](https://huggingface.co/)
Hub:
- [🤗 Hub client library](https://huggingface.co/docs/huggingface_hub/en/index)
  - Layout: `cache.join(format!("models--{}/snapshots/{}", id.replace('/', "--"), revision))`
  - `allow_patterns` will only be checked if not `local_files_only`
  - > `resume_download` is deprecated and will be removed in version 1.0.0. Downloads always resume when possible.
  - Progress

    [Progress when downloading with huggingface\_hub.snapshot\_download - Using Streamlit - Streamlit](https://discuss.streamlit.io/t/progress-when-downloading-with-huggingface-hub-snapshot-download/80775)

  ```python
  def get_model(model_id: str, revision: str | None, cache_dir: str, files: list[str]) -> str | None:
      '''
      ~3ms if the model is already downloaded
      '''
      try:
          # ~100us
          dir = huggingface_hub.snapshot_download(model_id, revision=revision, cache_dir=cache_dir, local_files_only=True)
          for file in files:
              if not (Path(dir) / file).exists():
                  return None
          return dir
      except Exception as e:
          return None

  def download_model(model_id: str, revision: str | None, cache_dir: str, files: list[str]) -> str:
      return huggingface_hub.snapshot_download(model_id, revision=revision, cache_dir=cache_dir, allow_patterns=files)
  ```

  Transformers:
  ```python
  # TODO: TRANSFORMERS_CACHE (~/.cache/huggingface/hub)
  # There is no easy way to only download the model but not load it
  def load_model(model_id=request.model_id):
      try:
          self.last_model = AutoModel.from_pretrained(model_id, trust_remote_code=True)
          print(f"Downloaded embedding model {model_id}")
          self.last_model_id = model_id
      except Exception as e:
          print(f"Error downloading model: {e}", file=sys.stderr, flush=True)
  t = threading.Thread(target=load_model, daemon=True)
  t.start()
  ```

- Rust
  - [hf-hub: Rust client for the huggingface hub aiming for minimal subset of features over `huggingface-hub` python package](https://github.com/huggingface/hf-hub) ([Docs.rs](https://docs.rs/hf-hub/latest/hf_hub/))

    > HF 的 Rust SDK 不支持代理、断点续传、进度 callback，虽然有 fork 实现了通过环境变量设置代理，但是官方很不积极，看起来已经没有人维护了。Python SDK 这些特性都支持，另外 ModelScope 也只有 Python SDK，调用 Python 下载再取回路径更好实现些。
    - > compatible means the Api should reuse the same files skipping downloads if they are already present and whenever this crate downloads or modifies this cache it should be consistent with huggingface_hub
    - Can only report progress by indicatif
    - `get()` has no option to avoid downloading if model not present
    - Cannot set proxy

      [Support mirror - Issue #47](https://github.com/huggingface/hf-hub/issues/47)
      - [Set endpoint value from env var by Adamska1008 - Pull Request #50](https://github.com/huggingface/hf-hub/pull/50)

      [Publish Crate With Proxy Support - Issue #51](https://github.com/huggingface/hf-hub/issues/51)
    - [Support incremental downloads of large files somehow. - Issue #18](https://github.com/huggingface/hf-hub/issues/18)

  - [hf\_transfer](https://github.com/huggingface/hf_transfer)
    - > It purposefully lacks progressbars and comes generally as-is.
  - [Huggingface in opendal::services - Rust](https://docs.rs/opendal/latest/opendal/services/struct.Huggingface.html)

Inference:
- Rust: [Yvonne-Aizawa/hugging-face-inference-api-wrapper: some wrappers for hugging face inference api](https://github.com/yvonne-aizawa/hugging-face-inference-api-wrapper)

China:
- [HF-Mirror](https://hf-mirror.com/)
  ```python
  endpoint = None
  if locale.getlocale()[0] == 'Chinese (Simplified)_China':
      endpoint = 'https://hf-mirror.com'
  return huggingface_hub.snapshot_download(model_id, endpoint=endpoint)
  ```

## [ModelScope: bring the notion of Model-as-a-Service to life.](https://www.modelscope.cn/) (魔搭社区) ([GitHub](https://github.com/modelscope/modelscope))
