# Encodings
Encoding 是将自然语言编码为便于计算机处理的语言，结果语言对人类不一定可读，而 segmentation 的结果仍然是自然语言。

Character encoding 以 character 为单位进行编码，token encoding 以 character 组成的 token/subword 为单位。

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