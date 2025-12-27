#import "@local/ib:0.1.0": *
#title[UAX 31 Unicode Identifiers and Syntax]
#a-badge[https://www.unicode.org/reports/tr31/]

```antlr
identifier   ::=  xid_start xid_continue*
id_start     ::=  <all characters in general categories Lu, Ll, Lt, Lm, Lo, Nl, the underscore, and characters with the Other_ID_Start property>
id_continue  ::=  <all characters in id_start, plus characters in the categories Mn, Mc, Nd, Pc and others with the Other_ID_Continue property>
xid_start    ::=  <all characters in id_start whose NFKC normalization is in "id_start xid_continue*">
xid_continue ::=  <all characters in id_continue whose NFKC normalization is in "id_continue*">
```

#a[#sym.arrow Program Identifers][https://github.com/Chaoses-Ib/FormalLanguages/blob/main/Program/Identifiers/README.md#unicode]

= Libraries
- ICU

== Rust
- ICU4X
  - #a[Consider supporting 1, 2, 4, and 24-bit trie values - Issue \#4670][https://github.com/unicode-org/icu4x/issues/4670]
    - #a[State of Unicode in Rust - Issue \#7274][https://github.com/unicode-org/icu4x/issues/7274]

- #a[dtolnay/unicode-ident: Determine whether characters have the `XID_Start` or `XID_Continue` properties][https://github.com/dtolnay/unicode-ident]
  - > `ucd-trie` > `unicode-xid` > `roaring` >> `fst`
  - Used by
    - `syn`, `proc-macro2`
    - `askama`, `minijinja/unicode`

- #a[aeldidi/unicode-id-trie-rle: Unicode identifier (UAX \#31) checker using a deduplicated trie with run-length encoded leaves.][https://github.com/aeldidi/unicode-id-trie-rle]

== Python
- Built-in (`builtins`)
  ```py
  def is_xid_start(s: str) -> bool:
      return s.isidentifier()

  def is_xid_continue(s: str) -> bool:
      return f'_{s}'.isidentifier()
  ```
  #a[feat(script): add WorkflowToScriptTranspiler - Chaoses-Ib/ComfyScript\@02d3962][https://github.com/Chaoses-Ib/ComfyScript/commit/02d39621f2c6d918bc3e717afd148a4eaa842c4e#diff-3c122d0c5ce2f5751630c706055a81cfd54550c0189972e67254b4e42cc65d80]
