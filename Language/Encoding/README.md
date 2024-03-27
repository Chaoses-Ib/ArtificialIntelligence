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

[tiktoken: tiktoken is a fast BPE tokeniser for use with OpenAI's models.](https://github.com/openai/tiktoken)


[^nlppytorch]: Natural Language Processing with PyTorch by Delip Rao and Brian McMahan (O’Reilly). Copyright 2019, Delip Rao and Brian McMahan, 978-1-491-97823-8.