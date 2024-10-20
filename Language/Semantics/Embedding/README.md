# Word Embedding
In natural language processing, **word embedding** is a term used for the representation of words for text analysis, typically in the form of a real-valued vector that encodes the meaning of the word such that the words that are closer in the vector space are expected to be similar in meaning.[^wiki]

> Embedding在数学上表示一个maping, f: X -> Y， 也就是一个function，其中该函数是injective（就是我们所说的单射函数，每个Y只有唯一的X对应，反之亦然）和structure-preserving (结构保存，比如在X所属的空间上X1 < X2,那么映射后在Y所属空间上同理 Y1 < Y2)。那么对于word embedding，就是将单词word映射到另外一个空间，其中这个映射具有injective和structure-preserving的特点。
> 
> 通俗的翻译可以认为是单词嵌入，就是把X所属空间的单词映射为到Y空间的多维向量，那么该多维向量相当于嵌入到Y所属空间中，一个萝卜一个坑。
> 
> word embedding，就是找到一个映射或者函数，生成在一个新的空间上的表达，该表达就是word representation。
> 
> 推广开来，还有image embedding, video embedding, 都是一种将源数据映射到另外一个空间[^zhihu]

[^wiki]: [Word embedding - Wikipedia](https://en.wikipedia.org/wiki/Word_embedding)
[^zhihu]: [什么是 word embedding? - 知乎](https://www.zhihu.com/question/32275069)

## Libraries
Python:
- Transformers
- [sentence-transformers: State-of-the-Art Text Embeddings](https://github.com/UKPLab/sentence-transformers)
  - Backends: PyTorch, ONNX, OpenVINO
  - [Speeding up Inference --- Sentence Transformers documentation](https://www.sbert.net/docs/sentence_transformer/usage/efficiency.html)

    [Release v3.2.0 - ONNX and OpenVINO backends offering 2-3x speedup; Static Embeddings offering 50x-500x speedups at ~10-20% performance cost - UKPLab/sentence-transformers](https://github.com/UKPLab/sentence-transformers/releases/tag/v3.2.0)

  - [SentenceTransformer API vs. Transformer API + pooling - Issue #405](https://github.com/UKPLab/sentence-transformers/issues/405)

  [SentenceTransformers Documentation --- Sentence Transformers documentation](https://www.sbert.net/)

  [Why do sentence transformers produce slightly different embeddings for the same text? - Stack Overflow](https://stackoverflow.com/questions/77353142/why-do-sentence-transformers-produce-slightly-different-embeddings-for-the-same)

- [fast-sentence-transformers: Simply, faster, sentence-transformers](https://github.com/davidberenstein1957/fast-sentence-transformers)

Rust:
- [rust-bert: Rust native ready-to-use NLP pipelines and transformer-based models (BERT, DistilBERT, GPT2,...)](https://github.com/guillaume-be/rust-bert)
  - tch/ort + rust-tokenizers
  - [rust-sbert: Rust port of sentence-transformers](https://github.com/cpcdoy/rust-sbert)
  - [rust-sentence-transformers: Rust port of https://github.com/UKPLab/sentence-transformers](https://github.com/mladvladimir/rust-sentence-transformers)

- [FastEmbed-rs: Library for generating vector embeddings, reranking in Rust](https://github.com/Anush008/fastembed-rs)
  - ort + tokenizers
  - No built-in GPU support...
  - 没有暴露 ort 的异步推理和终止推理的接口
  - anyhow

  [fastembed-bench](benches/fastembed-bench/src/main.rs)

  [FastEmbed-rs 🦀 - Rust library to generate sentence embeddings for your project. : r/rust](https://www.reddit.com/r/rust/comments/17dniwx/fastembedrs_rust_library_to_generate_sentence/)

- Candle
  - [huggingface/text-embeddings-inference: A blazing fast inference solution for text embeddings models](https://github.com/huggingface/text-embeddings-inference)
  - [ShelbyJenkins/candle\_embed: A simple, CUDA or CPU powered, library for creating vector embeddings using Candle and models from Hugging Face](https://github.com/shelbyJenkins/candle_embed)

[Hugging Face embedding models in Rust : r/rust](https://www.reddit.com/r/rust/comments/1eol2nd/hugging_face_embedding_models_in_rust/)
> I’m the developer of ort, which would be perfect for this use case. Candle and burn are also excellent choices but unfortunately don’t quite match ort in performance or maturity yet.

## Tools
- [WantWords 反向词典](https://wantwords.net/)