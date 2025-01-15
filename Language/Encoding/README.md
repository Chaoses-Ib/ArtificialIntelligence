# Encodings
Encoding 是将自然语言编码为便于计算机处理的语言，结果语言对人类不一定可读，而 segmentation 的结果仍然是自然语言。

Character encoding 以 character 为单位进行编码，token encoding 以 character 组成的 token/subword 为单位。

## Character encoding
[Wikipedia](https://en.wikipedia.org/wiki/Character_encoding)

[Encoding Standard](https://encoding.spec.whatwg.org/)

### Encoding conversion
Rust:
- [`encoding_rs`: A Gecko-oriented implementation of the Encoding Standard in Rust](https://github.com/hsivonen/encoding_rs)
  - [encoded: Rust macros converting character encodings at compile time](https://github.com/p4ken/encoded)
  - [charset: Thunderbird-compatible character encoding decoding for email in Rust](https://github.com/hsivonen/charset)
- [rust-encoding: Character encoding support for Rust](https://github.com/lifthrasiir/rust-encoding) (discontinued)
- [local-encoding: Rust library for encoding/decoding string with local charset. It usefull for work with ANSI strings on Windows.](https://github.com/bozaro/local-encoding-rs)

Python:
- [codecs: Codec registry and base classes](https://docs.python.org/3/library/codecs.html)
  - [Standard encodings](https://docs.python.org/3/library/codecs.html#standard-encodings)
  - Error handlers
    - `strict`: `UnicodeEncodeError`, `UnicodeDecodeError` (default)
    - `ignore`
    - `replace`: On encoding, use `?` (ASCII character). On decoding, use `�` (U+FFFD, the official REPLACEMENT CHARACTER).
      - Encoding with `�`: `str.encode('utf8', 'surrogateescape').decode('utf8', 'replace').encode('utf8')`
    - `backslashreplace`
    - `surrogateescape`: byte <-> surrogate code ranging from `U+DC00` to `U+DCFF`
    - Encoding-only
      - `xmlcharrefreplace`: `&#num;`
      - `namereplace`: `\N{...}`
    - UTF-only: `surrogatepass`

    See also [Python.ipynb](Python.ipynb).

    [Python 3: os.walk() file paths UnicodeEncodeError: 'utf-8' codec can't encode: surrogates not allowed - Stack Overflow](https://stackoverflow.com/questions/27366479/python-3-os-walk-file-paths-unicodeencodeerror-utf-8-codec-cant-encode-s)

    [Real mode fails to start - Issue #87 - Chaoses-Ib/ComfyScript](https://github.com/Chaoses-Ib/ComfyScript/issues/87)