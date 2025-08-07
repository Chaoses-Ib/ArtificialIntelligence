# Encodings
Encoding 是将自然语言编码为便于计算机处理的语言，结果语言对人类不一定可读，而 segmentation 的结果仍然是自然语言。

Character encoding 以 character 为单位进行编码，token encoding 以 character 组成的 token/subword 为单位。

## Character encoding
[Wikipedia](https://en.wikipedia.org/wiki/Character_encoding)

[Encoding Standard](https://encoding.spec.whatwg.org/)

### Encoding conversion
Rust:
- [`encoding_rs`: A Gecko-oriented implementation of the Encoding Standard in Rust](https://github.com/hsivonen/encoding_rs)
  - Chinese
    - GBK and GB18030 use the same decoder
    - GBK decode binary size: Wasm +150 KiB
  - Used by Firefox/Salvo, reqwest/ureq, quick-xml, Deno
  - [encoded: Rust macros converting character encodings at compile time](https://github.com/p4ken/encoded)
  - [charset: Thunderbird-compatible character encoding decoding for email in Rust](https://github.com/hsivonen/charset)
  - [codepage: Placeholder for a mapping between Windows code page identifiers and encoding\_rs Encodings](https://github.com/hsivonen/codepage)
  - [encoding\_c: C bindings for encoding\_rs](https://github.com/hsivonen/encoding_c)
    - [encoding\_c\_mem: FFI for encoding\_rs::mem](https://github.com/hsivonen/encoding_c_mem)
- [rust-encoding: Character encoding support for Rust](https://github.com/lifthrasiir/rust-encoding) (`encoding`, discontinued)
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

JS:
- [TextDecoder - Web APIs | MDN](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder)
- iconv-lite
  - [guo-yu/gbk: Convert gbk to utf-8 made easy](https://github.com/guo-yu/gbk)
- Chinese
  - [Convert between gb2312 and utf8 using javascript](https://gist.github.com/19317362/a1d8e40bfb6587463d4d)

### Encoding detection
Rust:
- [chardetng: A character encoding detector for legacy Web content.](https://github.com/hsivonen/chardetng)
  - [chardetng\_c: C API for chardetng](https://github.com/hsivonen/chardetng_c)