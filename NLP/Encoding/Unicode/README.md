# Unicode
[Wikipedia](https://en.wikipedia.org/wiki/Unicode)

## Characters
[Wikipedia](https://en.wikipedia.org/wiki/Universal_Character_Set_characters)
- Noncharacters

  The unhyphenated term "noncharacter" refers to 66 code points (labeled `<not a character>`) permanently reserved for internal use, and therefore guaranteed to never be assigned to a character.

  Each of the 17 planes has its two ending code points set aside as noncharacters. So, noncharacters are: U+FFFE and U+FFFF on the BMP, U+1FFFE and U+1FFFF on Plane 1, and so on, up to U+10FFFE and U+10FFFF on Plane 16, for a total of 34 code points. In addition, there is a contiguous range of another 32 noncharacter code points in the BMP: U+FDD0..U+FDEF.

  Software implementations are therefore free to use these code points for internal use. One particularly useful example of a noncharacter is the code point U+FFFE. This code point has the reverse UTF-16/UCS-2 byte sequence of the byte order mark (U+FEFF). If a stream of text contains this noncharacter, this is a good indication the text has been interpreted with the incorrect endianness.

- [Specials (Unicode block) - Wikipedia](https://en.wikipedia.org/wiki/Specials_(Unicode_block))

[List of Unicode characters - Wikipedia](https://en.wikipedia.org/wiki/List_of_Unicode_characters)

[UAX #44: Unicode Character Database](https://www.unicode.org/reports/tr44/)

Case:
- Rust
  - std
  - [focaccia: 🍞 no_std Unicode case folding comparisons](https://github.com/artichoke/focaccia)
  - [unicase: Unicode Case-folding for Rust](https://github.com/seanmonstar/unicase)

General category:
- Rust
  - [YesSeri/diacritics](https://github.com/YesSeri/diacritics)
  - [Tashkil: A lightweight Rust library for removing Arabic diacritics](https://github.com/LGUG2Z/tashkil)

## Unicode equivalence
[Wikipedia](https://en.wikipedia.org/wiki/Unicode_equivalence)

[UAX #15: Unicode Normalization Forms](https://unicode.org/reports/tr15/)

Implementations:
- Rust
  - [unicode-normalization: Unicode Normalization forms according to UAX#15 rules](https://github.com/unicode-rs/unicode-normalization)

## Libraries
- [International Components for Unicode](https://icu.unicode.org/) ([Wikipedia](https://en.wikipedia.org/wiki/International_Components_for_Unicode), [GitHub](https://github.com/unicode-org/icu))
  - C: [ICU4C](https://github.com/unicode-org/icu/tree/main/icu4c)
  - Java: [ICU4J](https://github.com/unicode-org/icu/tree/main/icu4j)
  - Rust: [ICU4X: Solving i18n for client-side and resource-constrained environments.](https://github.com/unicode-org/icu4x)

    [icu vs rust_icu : rust ](https://www.reddit.com/r/rust/comments/q4xaig/icu_vs_rust_icu/)
- Rust
  - [UNIC: Unicode and Internationalization Crates for Rust](https://github.com/open-i18n/rust-unic)
  - [unicode-rs](https://github.com/unicode-rs)

## Text::Unidecode
- Perl: [Text::Unidecode - plain ASCII transliterations of Unicode text - metacpan.org](https://metacpan.org/pod/Text::Unidecode)
- Python
  - [Unidecode: ASCII transliterations of Unicode text](https://github.com/avian2/unidecode)
  - [Text-Unidecode: The most basic Text::Unidecode port](https://github.com/kmike/text-unidecode)
- Rust
  - [rust-unidecode: Rust port of the Text::Unidecode Perl module, which provides pure ASCII transliterations of Unicode strings.](https://github.com/chowdhurya/rust-unidecode/)