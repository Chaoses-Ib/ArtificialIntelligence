# Languages
## IETF BCP 47 language tags
[Wikipedia](https://en.wikipedia.org/wiki/IETF_language_tag)

[Information on BCP 47 » RFC Editor](https://www.rfc-editor.org/info/bcp47)
- [RFC 5646: Tags for Identifying Languages](https://www.rfc-editor.org/rfc/rfc5646.html)

### Libraries
#### Rust
- [rust-language-tags: Language tags for Rust](https://github.com/pyfisch/rust-language-tags/) (inactive)
  - Data: [iana\_registry.rs](https://github.com/pyfisch/rust-language-tags/blob/master/src/iana_registry.rs), ~40 KiB
  - [Shouldn't zh-CN fail to validate? - Issue #43 - pyfisch/rust-language-tags](https://github.com/pyfisch/rust-language-tags/issues/43)
  - Serde
  - Used by actix-web
    - [Add back the typed representation of the Link header by jplatte - Pull Request #113 - hyperium/headers](https://github.com/hyperium/headers/pull/113)
  
  [oxilangtag: Simple and fast implementation of language tag normalization and validation](https://github.com/oxigraph/oxilangtag)
  > If you only want to validate and normalize the formatting of language tags or you are working with RDF consider using the oxilangtag crate. It is much more lightweight as it doesn't contain a language tag database and has a very similar interface to this crate.
  - [Missing attribution - Issue #2 - oxigraph/oxilangtag](https://github.com/oxigraph/oxilangtag/issues/2)
    > oxilangtag is very focus on the Oxigraph/RDF use case: being able to validate is a language tag is well-formed. There is no canonicalization, case normalization... So it's feature scope is pretty closed and I basically have not needed to update it after its first release. Outside of the "missing" features the main difference is that oxilangtag allows zero copy validation and to choose which buffer to use internally.

- [langtag: Language tags implementation in Rust (RFC 5646)](https://github.com/timothee-haudebourg/langtag)
  - [static-regular-grammar](https://github.com/timothee-haudebourg/static-regular-grammar)
  - Serde
- [rust-iso/rust\_iso15924: ISO 15924, Codes for the representation of names of scripts, is an international standard defining codes for writing systems or scripts (a "set of graphic characters used for the written form of one or more languages"). Each script is given both a four-letter code and a numeric code.](https://github.com/rust-iso/rust_iso15924)

[Platform agnostic way of getting the user's language tag - help - The Rust Programming Language Forum](https://users.rust-lang.org/t/platform-agnostic-way-of-getting-the-users-language-tag/76041)
