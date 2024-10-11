# Encoding
## Character encoding
[Wikipedia](https://en.wikipedia.org/wiki/Character_encoding)

[Encoding Standard](https://encoding.spec.whatwg.org/)

### Encoding convertion
Rust:
- [`encoding_rs`: A Gecko-oriented implementation of the Encoding Standard in Rust](https://github.com/hsivonen/encoding_rs)
  - [encoded: Rust macros converting character encodings at compile time](https://github.com/p4ken/encoded)
  - [charset: Thunderbird-compatible character encoding decoding for email in Rust](https://github.com/hsivonen/charset)
- [rust-encoding: Character encoding support for Rust](https://github.com/lifthrasiir/rust-encoding) (discontinued)
- [local-encoding: Rust library for encoding/decoding string with local charset. It usefull for work with ANSI strings on Windows.](https://github.com/bozaro/local-encoding-rs)

## Token encoding
- One-hot representation
- Term frequency (TF)
- Term frequency-inverse document frequency (TF-IDF)

  The $\text{IDF}(w)$ of a token $w$ is defined with respect to a corpus as:
  $$\text{IDF}(w)=\log{N\over n_w}$$
  where $n_w$ is the number of documents containing the word $w$ and $N$ is the total number of documents.

> In deep learning, it is rare to see inputs encoded using heuristic representations like TF-IDF because the goal is to learn a representation. Often, we start with a one-hot encoding using integer indices and a special “embedding lookup” layer to construct inputs to the neural network.[^nlppytorch]

## Byte pair encoding
[Wikipedia](https://en.wikipedia.org/wiki/Byte_pair_encoding)

[Byte Pair Encoding --- The Dark Horse of Modern NLP | by Akashdeep Singh Jaswal | Towards Data Science](https://towardsdatascience.com/byte-pair-encoding-the-dark-horse-of-modern-nlp-eb36c7df4f10)

[Summary of the tokenizers](https://huggingface.co/docs/transformers/en/tokenizer_summary#byte-pair-encoding-bpe)

### Byte-level BPE
[What are the differences between BPE and byte-level BPE? - Data Science Stack Exchange](https://datascience.stackexchange.com/questions/126715/what-are-the-differences-between-bpe-and-byte-level-bpe)
> In the character-level BPE, the vocabulary is composed of sequences of characters that appear frequently together found by means of the BPE algorithm, but also includes all the individual characters seed in the training data. This allows to resort to character-by-character word composition for unseen words. This, however, poses two problems: 1) if at inference time we bump into unseen characters, the tokenizer will not be able to represent them, and 2) there are a lot of unicode characters, which needs a lot of room in the vocabulary to be represented, especially taking into account that a reasonable vocabulary size should be around 50k tokens.
> 
> In the byte-level BPE, the vocabulary is not created based on characters, but based on bytes. For that, characters are decomposed as the associated sequence of bytes in the unicode representation. This removes completely the possibility of unseen characters and saves space when representing individual elements (i.e. bytes) in the vocabulary.
> 
> Character-level BPE was the original BPE. However, nowadays many LLM's use byte-level BPE so when someone says just "BPE" I would not assume that it's character-level, I would assume lack of information about whether it's character-level or byte-level.

> It compresses the text: the token sequence is shorter than the bytes corresponding to the original text. On average, in practice, each token corresponds to about 4 bytes.

[\[D\] How do byte-level language models work? : r/MachineLearning](https://www.reddit.com/r/MachineLearning/comments/175ns6h/d_how_do_bytelevel_language_models_work/)

Tokenizers:
- [GPT-2](https://huggingface.co/docs/transformers/v4.40.1/en/model_doc/gpt2#transformers.GPT2Tokenizer)
  - [RoBERTa](https://huggingface.co/docs/transformers/v4.40.1/en/model_doc/roberta#transformers.RobertaTokenizer)

Libraries:
- Transformers
- [tiktoken: tiktoken is a fast BPE tokeniser for use with OpenAI's models.](https://github.com/openai/tiktoken)

## Padding
If a model can handle variable-length sequences, is padding still necessary?
- [Do we need to use padding parameter for inferencing in Bert? - Stack Overflow](https://stackoverflow.com/questions/74726875/do-we-need-to-use-padding-parameter-for-inferencing-in-bert)

  > You need padding when you have input sequences of various lengths in one batch. If you can afford running with batch size = 1 there is no need for padding.

[Understanding masking & padding  |  TensorFlow Core](https://www.tensorflow.org/guide/keras/understanding_masking_and_padding)

[Padding and truncation](https://huggingface.co/docs/transformers/en/pad_truncation)

[Initial embeddings for unknown, padding? - Data Science Stack Exchange](https://datascience.stackexchange.com/questions/32345/initial-embeddings-for-unknown-padding)


[^nlppytorch]: Natural Language Processing with PyTorch by Delip Rao and Brian McMahan (O’Reilly). Copyright 2019, Delip Rao and Brian McMahan, 978-1-491-97823-8.