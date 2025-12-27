# Unicode
[Wikipedia](https://en.wikipedia.org/wiki/Unicode)

[The Absolute Minimum Every Software Developer Must Know About Unicode in 2023 (Still No Excuses!) @ tonsky.me](https://tonsky.me/blog/unicode/) ([r/webdev](https://www.reddit.com/r/webdev/comments/178d3co/the_absolute_minimum_every_software_developer/)):
> - Unicode has won.
> - UTF-8 is the most popular encoding for data in transfer and at rest.
> - UTF-16 is still sometimes used as an in-memory representation.
> - The two most important views for strings are bytes (allocate memory/copy/encode/decode) and extended grapheme clusters (all semantic operations).
> - Using code points for iterating over a string is wrong. They are not the basic unit of writing. One grapheme could consist of multiple code points.
> - To detect grapheme boundaries, you need Unicode tables.
> - Use a Unicode library for everything Unicode, even boring stuff like `strlen`, `indexOf` and `substring`.
> - Unicode updates every year, and rules sometimes change.
> - Unicode strings need to be normalized before they can be compared.
> - Unicode depends on locale for some operations and for rendering.
> - All this is important even for pure English text.

Python: [Unicode HOWTO --- Python documentation](https://docs.python.org/3/howto/unicode.html)

## Encodings
[UTF-Random](https://www.reddit.com/r/ProgrammerHumor/comments/17ie2sm/whatatimetobealive/)

## Characters
[Wikipedia](https://en.wikipedia.org/wiki/Universal_Character_Set_characters)
- Noncharacters

  The unhyphenated term "noncharacter" refers to 66 code points (labeled `<not a character>`) permanently reserved for internal use, and therefore guaranteed to never be assigned to a character.

  Each of the 17 planes has its two ending code points set aside as noncharacters. So, noncharacters are: U+FFFE and U+FFFF on the BMP, U+1FFFE and U+1FFFF on Plane 1, and so on, up to U+10FFFE and U+10FFFF on Plane 16, for a total of 34 code points. In addition, there is a contiguous range of another 32 noncharacter code points in the BMP: U+FDD0..U+FDEF.

  Software implementations are therefore free to use these code points for internal use. One particularly useful example of a noncharacter is the code point U+FFFE. This code point has the reverse UTF-16/UCS-2 byte sequence of the byte order mark (U+FEFF). If a stream of text contains this noncharacter, this is a good indication the text has been interpreted with the incorrect endianness.

- [Specials (Unicode block) - Wikipedia](https://en.wikipedia.org/wiki/Specials_(Unicode_block))

[List of Unicode characters - Wikipedia](https://en.wikipedia.org/wiki/List_of_Unicode_characters)

[UAX #44: Unicode Character Database](https://www.unicode.org/reports/tr44/)

General category:
- Rust
  - [YesSeri/diacritics](https://github.com/YesSeri/diacritics)
  - [Tashkil: A lightweight Rust library for removing Arabic diacritics](https://github.com/LGUG2Z/tashkil)

[width - The Longest Character In UTF-8 - Stack Overflow](https://stackoverflow.com/questions/42778709/the-longest-character-in-utf-8)

[List of Super-Wide Symbols - Unicode Explorer](https://unicode-explorer.com/list/large)

### Case
[Letter case - Wikipedia](https://en.wikipedia.org/wiki/Letter_case)

[Case mapping - Globalization | Microsoft Learn](https://learn.microsoft.com/en-us/globalization/text/case-mapping)

> Case folding (mapping strings to a canonical form for string comparison) typically results in lowercase characters; however, characters in the Cherokee script resolve to uppercase characters. Case folding isn't context-, language-, or locale-sensitive; however, you can specify whether to use mappings for languages like Turkish.

[unicode.org/Public/16.0.0/ucd/CaseFolding.txt](https://www.unicode.org/Public/16.0.0/ucd/CaseFolding.txt)
- C: common case folding, common mappings shared by both simple and full mappings.
- F: full case folding, mappings that cause strings to grow in length. Multiple characters are separated by spaces.
- S: simple case folding, mappings to single characters where different from F.
- T: special case for uppercase `I` and dotted uppercase `I`
  - For non-Turkic languages, this mapping is normally not used.
  - For Turkic languages (tr, az), this mapping can be used instead of the normal mapping for these characters.  
    Note that the Turkic mappings do not maintain canonical equivalence without additional processing.  
    See the discussions of case mapping in the Unicode Standard for more information.

#### Rust
- std
  - Binary search, relatively slow
  - [Unicode `to_lower()` and `to_upper` - Issue #9363](https://github.com/rust-lang/rust/issues/9363)
  - [Implement full `to_{upper,lower}case` algorithms - Issue #25800](https://github.com/rust-lang/rust/issues/25800)
  - [Add complex case mapping and title case mapping. by SimonSapin - Pull Request #26039](https://github.com/rust-lang/rust/pull/26039)
  - [Separate `to_lowercase()` into correct Unicode and simple implementations - Issue #26244](https://github.com/rust-lang/rust/issues/26244)
  - [`to_lowercase` only uses unconditional parts of unicode.org's special-casing - Issue #51362](https://github.com/rust-lang/rust/issues/51362)
  - [case-conv: Faster case conversion crate](https://github.com/conradludgate/case-conv/)
- [ib_unicode::case](https://docs.rs/ib-unicode/latest/ib_unicode/case/)
  - Mono case (simple case folding)
- [unicase: Unicode Case-folding for Rust](https://github.com/seanmonstar/unicase)
  - Map / Jump maps
  - No `char` interface
    - [Character iterator comparison - Issue #42 - seanmonstar/unicase](https://github.com/seanmonstar/unicase/issues/42)
  - [str Utils: This crate provides some traits to extend types which implement `AsRef<[u8]>` or `AsRef<str>`.](https://github.com/magiclen/str-utils)
    - [Documentation about Unicode normalization - Issue #2 - magiclen/str-utils](https://github.com/magiclen/str-utils/issues/2)
  - Used by Cargo, Clap, rusqlite, pingora
- [focaccia: 🍞 no_std Unicode case folding comparisons](https://github.com/artichoke/focaccia)
  - Turkic
  - No `char` interface
- [unicode-case-mapping: Fast mapping of char to lowercase, uppercase, or titlecase in Rust.](https://github.com/yeslogic/unicode-case-mapping)

  > The tables take up about 101KiB. Benchmarks show this approach to be ~5–10× faster than the binary search approach used in the Rust standard library.
- [rust-caseless: Unicode caseless matching](https://github.com/unicode-rs/rust-caseless) (discontinued)
  - Binary search
- [uncased: Case-preserving, ASCII case-insensitive `no_std` string types for Rust.](https://github.com/SergioBenitez/uncased)

[Performance issue: can I avoid of using the slow `to_lowercase` function? : r/rust](https://www.reddit.com/r/rust/comments/6wbru2/performance_issue_can_i_avoid_of_using_the_slow/)

[Case insensitive match pattern - Rust Internals](https://internals.rust-lang.org/t/case-insensitive-match-pattern/8049)

## Whitespace characters
[Wikipedia](https://en.wikipedia.org/wiki/Whitespace_character)

Longest: `\t`

[Unicode spaces](https://jkorpela.fi/chars/spaces.html)

## Newlines
[Wikipedia](https://en.wikipedia.org/wiki/Newline)

Programming languages:
- `\n` with text/binary mode: C, C++, Perl, Haskell

  > The C programming language provides the escape sequences `'\n'` (newline) and `'\r'` (carriage return). However, these are not required to be equivalent to the ASCII LF and CR control characters. The C standard only guarantees two things:
  > 1. Each of these escape sequences maps to a unique implementation-defined number that can be stored in a single char value.
  > 2. When writing to a file, device node, or socket/fifo in *text mode*, `'\n'` is transparently translated to the native newline sequence used by the system, which may be longer than one character. When reading in text mode, the native newline sequence is translated back to `'\n'`. In *binary mode*, no translation is performed, and the internal representation produced by `'\n'` is output directly.

  > On Unix platforms, where C originated, the native newline sequence is ASCII LF (0x0A), so `'\n'` was simply defined to be that value. With the internal and external representation being identical, the translation performed in text mode is a no-op, and Unix has no notion of text mode or binary mode. This has caused many programmers who developed their software on Unix systems simply to ignore the distinction completely, resulting in code that is not portable to different platforms.

- Auxiliary functions/constants: Python, Java, PHP

  - Python

    > Python permits "Universal Newline Support" when opening a file for reading, when importing modules, and when executing a file.

  - Java

    > The Java I/O libraries do not transparently translate these into platform-dependent newline sequences on input or output. Instead, they provide functions for writing a full line that automatically add the native newline sequence, and functions for reading lines that accept any of CR, LF, or CR+LF as a line terminator (see [BufferedReader.readLine()](http://download.oracle.com/javase/6/docs/api/java/io/BufferedReader.html#readLine%28%29)). The [System.lineSeparator()](http://docs.oracle.com/javase/8/docs/api/java/lang/System.html#lineSeparator--) method can be used to retrieve the underlying line separator.
  
  - PHP

    > In PHP, to avoid portability problems, newline sequences should be issued using the `PHP_EOL` constant.

- Just `\n` all the way: Rust

  - Rust

    没想到标准库一点支持都没有，第三方库也很少。

    [Isn't crlf default on windows? - help - Mozilla](https://users.rust-lang.org/t/isnt-crlf-default-on-windows/10474)

    [rust - Is there a way to force print!/println! to use a Windows new line (CR LF) - Stack Overflow](https://stackoverflow.com/questions/37558353/is-there-a-way-to-force-print-println-to-use-a-windows-new-line-cr-lf)
    ```rust
    println!("\r")
    ```
    ```rust
    macro_rules! wprintln {
        ($fmt:expr) => (print!(concat!($fmt, "\r\n")));
        ($fmt:expr, $($arg:tt)*) => (print!(concat!($fmt, "\r\n"), $($arg)*));
    }
    ```

    [Cargo and line endings on Windows - Editors and IDEs - Mozilla](https://users.rust-lang.org/t/cargo-and-line-endings-on-windows/94380)

    [Forcing Rust to emit Windows-style newlines? : r/rust](https://www.reddit.com/r/rust/comments/9zugu1/forcing_rust_to_emit_windowsstyle_newlines/)

    Libraries:
    - [crlify: A `std::io::Write` wrapper that replaces with on Windows.](https://docs.rs/crlify/latest/crlify/)
    - [loe: Very fast and yet another line ending (CRLF <-> LF) converter written in Rust.](https://github.com/pnevyk/loe)
    - [force-crlf: Force a file to use CRLF line breaks.](https://github.com/czy-29/force-crlf)
    - [fcrlf: Converter for file's CRLF line delimiter.](https://github.com/IgaguriMK/fcrlf)

  除了 Rust 还有其它标准库只内置 `\n` 支持的语言吗？

Applications:
- Notepad

  之前的会显示成一行。

  2018-05-08 [Introducing extended line endings support in Notepad - Windows Command Line](https://devblogs.microsoft.com/commandline/extended-eol-in-notepad/)
  - Windows 10 1809 (Windows Server 2019)

## Unicode equivalence
[Wikipedia](https://en.wikipedia.org/wiki/Unicode_equivalence)

[UAX #15: Unicode Normalization Forms](https://unicode.org/reports/tr15/)

Implementations:
- Rust
  - [unicode-normalization: Unicode Normalization forms according to UAX#15 rules](https://github.com/unicode-rs/unicode-normalization)

Applications:
- File systems
  - Normalization: macOS
  - No normalization: ext4, Windows (NTFS)
  - Configurable: ZFS

  [A story about Unix, Unicode, Java, filesystems, internationalization and normalization -- Webtide](https://webtide.com/a-story-about-unix-unicode-java-filesystems-internationalization-and-normalization/)

  [APFS does not normalize Unicode filenames | Hacker News](https://news.ycombinator.com/item?id=13953800)

- Web browsers
  - Searching text on the page
    - Normalization: Chromium

[Unicode Normalization in Windows - Stack Overflow](https://stackoverflow.com/questions/7041013/unicode-normalization-in-windows)

## Libraries
- [International Components for Unicode](https://icu.unicode.org/) ([Wikipedia](https://en.wikipedia.org/wiki/International_Components_for_Unicode), [GitHub](https://github.com/unicode-org/icu))
  - C: [ICU4C](https://github.com/unicode-org/icu/tree/main/icu4c)
  - Java: [ICU4J](https://github.com/unicode-org/icu/tree/main/icu4j)
  - Rust: [ICU4X: Solving i18n for client-side and resource-constrained environments.](https://github.com/unicode-org/icu4x)
    - [State of Unicode in Rust - Issue #7274](https://github.com/unicode-org/icu4x/issues/7274)

    [icu vs rust_icu : rust ](https://www.reddit.com/r/rust/comments/q4xaig/icu_vs_rust_icu/)
- Rust
  - [UNIC: Unicode and Internationalization Crates for Rust](https://github.com/open-i18n/rust-unic)
  - [unicode-rs](https://github.com/unicode-rs)
  - [BurntSushi/ucd-generate: A command line tool to generate Unicode tables as source code.](https://github.com/BurntSushi/ucd-generate)

## Text::Unidecode
- Perl: [Text::Unidecode - plain ASCII transliterations of Unicode text - metacpan.org](https://metacpan.org/pod/Text::Unidecode)
- Python
  - [Unidecode: ASCII transliterations of Unicode text](https://github.com/avian2/unidecode)
  - [Text-Unidecode: The most basic Text::Unidecode port](https://github.com/kmike/text-unidecode)
- Rust
  - [rust-unidecode: Rust port of the Text::Unidecode Perl module, which provides pure ASCII transliterations of Unicode strings.](https://github.com/chowdhurya/rust-unidecode/)