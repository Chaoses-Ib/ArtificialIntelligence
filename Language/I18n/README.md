# Internationalization and Localization
[Wikipedia](https://en.wikipedia.org/wiki/Internationalization_and_localization)

> Internationalization is the process of designing a software application so that it can be adapted to various languages and regions without engineering changes. Localization is the process of adapting internationalized software for a specific region or language by translating text and adding locale-specific components.
>
> Localization (which is potentially performed multiple times, for different locales) uses the infrastructure or flexibility provided by internationalization (which is ideally performed only once before localization, or as an integral part of ongoing development).

## Text identifier
- Text
  - Translation invalidation
- Id

> The most important difference between gettext and Fluent is the choice of a message identifier. Gettext approaches the problem by taking the source string (often English). While the choice seem simple, it has long standing consequences in form of two limitations that this choice imposes.
> 
> First of all, it means that any change to the source string invalidate all translations of the string. This severely increases the burden on the developers to never alter messages in the source language as it results in all translations having to be updated.
> 
> Secondly, it makes it harder to introduce multiple messages with the same source string which should be translated differently. For example a button with a message "Open", and a label "Open" may have different translations, since one is a command, while the other is a description. Gettext offers an optional context string - `msgctxt` - to disambiguate between two or more strings with the same source translation. This approach puts the burden on developers to recognize such scenario, going against the separation of concerns principle. Fluent recommends against reuse of translation messages because of that. Disconnecting source translation from other translations is also important for our ability to introduce compound messages (which hold multiple strings for a single translation unit bind to a single UI widget) and enable message referencing based on the message identifier.
> 
> Fluent establishes a social contract between the developer and localizers. The developer introduces a unique identifier and provides a set of variables such as number of unread emails or the name of the user, and localizers are using Fluent syntax features to construct the best possible translation for that identifier.
> 
> The developer does not, and should not, be bothered with details of how such translations are constructed. All they know is that a result of a query for the identifier will be a single, opaque, string that contains the right translation to be placed in the UI.

## Libraries
- [GNU gettext](https://www.gnu.org/software/gettext/)
- [Project Fluent](https://projectfluent.org/)
  - Correct but complex
  - [Fluent vs gettext - projectfluent/fluent Wiki](https://github.com/projectfluent/fluent/wiki/Fluent-vs-gettext)
  - [Fluent and ICU MessageFormat - projectfluent/fluent Wiki](https://github.com/projectfluent/fluent/wiki/Fluent-and-ICU-MessageFormat)
  - [Rust](https://github.com/projectfluent/fluent-rs), JS, Python, Kotlin
  - Used by [Firefox](https://www.arewefluentyet.com/)
- [unicode-org/icu4x: Solving i18n for client-side and resource-constrained environments.](https://github.com/unicode-org/icu4x)
  - ICU Message Format
    - [Implement MessageFormat - Issue #3028 - unicode-org/icu4x](https://github.com/unicode-org/icu4x/issues/3028)
    - [zbraniecki/message-format-2.0-rs at ast](https://github.com/zbraniecki/message-format-2.0-rs/tree/ast)

### Rust
- [rust-i18n: A better and simply I18n crate for Rust.](https://github.com/longbridge/rust-i18n)
  - Simple
  - `t!("key")`
    - Formatting
    - [Are there any plans to implement pluralization like rails? - Issue #65](https://github.com/longbridge/rust-i18n/issues/65)
  - The dependencies are a bit heavy, but the final binary footprint isn't very large (38 KiB)
    - [Let toml, yml, json as optional feature. - Issue #109](https://github.com/longbridge/rust-i18n/issues/109)
  - Locale defaults to `en` instead of system default

    [locale() always return en - Issue #118](https://github.com/longbridge/rust-i18n/issues/118)
  - Backends
    - `SimpleBackend`: `HashMap<String, HashMap<String, String>>`
      ```rust
      translations.iter().for_each(|(locale, trs)| {
          trs.iter().for_each(|(k, v)| {
              all_translations.push(quote! {
                  backend.add_translations(#locale, &std::collections::HashMap::from([(#k, #v)]));
              });
          });
      });
      ```
      Default hasher and adding one by one...
  - Untranslated text extractor
  - Used by [IbEverythingExt](https://github.com/Chaoses-Ib/IbEverythingExt/commit/60cac1da72e060d48142d499b5ea4d860998a527), [gpui-component](https://github.com/longbridge/gpui-component), [topgrade](https://github.com/topgrade-rs/topgrade), [trippy](https://github.com/fujiapple852/trippy), [Seelen-UI](https://github.com/eythaann/Seelen-UI)

  ```
  rust-i18n v3.1.5
  ├── once_cell v1.21.3
  ├── rust-i18n-macro v3.1.5 (proc-macro)
  │   ├── glob v0.3.2
  │   ├── once_cell v1.21.3
  │   ├── proc-macro2 v1.0.95 (*)
  │   ├── quote v1.0.40 (*)
  │   ├── rust-i18n-support v3.1.5
  │   │   ├── arc-swap v1.7.1
  │   │   ├── base62 v2.2.1
  │   │   │   └── rustversion v1.0.21 (proc-macro)
  │   │   ├── globwalk v0.8.1
  │   │   │   ├── bitflags v1.3.2
  │   │   │   ├── ignore v0.4.23
  │   │   │   │   ├── crossbeam-deque v0.8.6
  │   │   │   │   │   ├── crossbeam-epoch v0.9.18
  │   │   │   │   │   │   └── crossbeam-utils v0.8.21
  │   │   │   │   │   └── crossbeam-utils v0.8.21
  │   │   │   │   ├── globset v0.4.16
  │   │   │   │   │   ├── aho-corasick v1.1.3 (*)
  │   │   │   │   │   ├── bstr v1.12.0
  │   │   │   │   │   │   └── memchr v2.7.5
  │   │   │   │   │   ├── log v0.4.27
  │   │   │   │   │   ├── regex-automata v0.4.9
  │   │   │   │   │   │   ├── aho-corasick v1.1.3 (*)
  │   │   │   │   │   │   ├── memchr v2.7.5
  │   │   │   │   │   │   └── regex-syntax v0.8.5
  │   │   │   │   │   └── regex-syntax v0.8.5
  │   │   │   │   ├── log v0.4.27
  │   │   │   │   ├── memchr v2.7.5
  │   │   │   │   ├── regex-automata v0.4.9 (*)
  │   │   │   │   ├── same-file v1.0.6
  │   │   │   │   │   └── winapi-util v0.1.9
  │   │   │   │   │       └── windows-sys v0.59.0 (*)
  │   │   │   │   ├── walkdir v2.5.0
  │   │   │   │   │   ├── same-file v1.0.6 (*)
  │   │   │   │   │   └── winapi-util v0.1.9 (*)
  │   │   │   │   └── winapi-util v0.1.9 (*)
  │   │   │   └── walkdir v2.5.0 (*)
  │   │   ├── itertools v0.11.0
  │   │   │   └── either v1.15.0
  │   │   ├── lazy_static v1.5.0
  │   │   ├── normpath v1.3.0
  │   │   │   └── windows-sys v0.59.0 (*)
  │   │   ├── once_cell v1.21.3
  │   │   ├── proc-macro2 v1.0.95 (*)
  │   │   ├── regex v1.11.1
  │   │   │   ├── aho-corasick v1.1.3 (*)
  │   │   │   ├── memchr v2.7.5
  │   │   │   ├── regex-automata v0.4.9 (*)
  │   │   │   └── regex-syntax v0.8.5
  │   │   ├── serde v1.0.219 (*)
  │   │   ├── serde_json v1.0.140 (*)
  │   │   ├── serde_yaml v0.9.34+deprecated
  │   │   │   ├── indexmap v2.10.0 (*)
  │   │   │   ├── itoa v1.0.15
  │   │   │   ├── ryu v1.0.20
  │   │   │   ├── serde v1.0.219 (*)
  │   │   │   └── unsafe-libyaml v0.2.11
  │   │   ├── siphasher v1.0.1
  │   │   ├── toml v0.8.23 (*)
  │   │   └── triomphe v0.1.14
  │   │       ├── arc-swap v1.7.1
  │   │       ├── serde v1.0.219 (*)
  │   │       └── stable_deref_trait v1.2.0
  │   ├── serde v1.0.219 (*)
  │   ├── serde_json v1.0.140 (*)
  │   ├── serde_yaml v0.9.34+deprecated (*)
  │   └── syn v2.0.104 (*)
  ├── rust-i18n-support v3.1.5 (*)
  └── smallvec v1.15.1
  [build-dependencies]
  ├── globwalk v0.8.1 (*)
  └── regex v1.11.1 (*)
  ```

  [Rust, i18n and Crowdin : r/rust](https://www.reddit.com/r/rust/comments/1go6r7j/rust_i18n_and_crowdin/)

- Project Fluent: [fluent-rs: Rust implementation of Project Fluent](https://github.com/projectfluent/fluent-rs) ([Docs.rs](https://docs.rs/fluent/latest/fluent/))
  - [fluent\_bundle - Rust](https://docs.rs/fluent-bundle/latest/fluent_bundle/index.html)
  - [XAMPPRocky/fluent-templates: Easily add Fluent to your Rust project.](https://github.com/XAMPPRocky/fluent-templates)
    - [mondeja/leptos-fluent: Internationalization framework for Leptos using Fluent](https://github.com/mondeja/leptos-fluent)
  - [MathieuTricoire/l10n: Rust localization crate built upon fluent-bundle.](https://github.com/mathieutricoire/l10n) (discontinued)
  - [dioxus-community/dioxus-i18n: i18n (localization) support for all Dioxus apps and renderers](https://github.com/dioxus-community/dioxus-i18n/)

  [High-level internationalisation API - The Rust Programming Language Forum](https://users.rust-lang.org/t/high-level-internationalisation-api/101659)

- [cargo-i18n: A Rust Cargo sub-command and libraries to extract and build localization resources to embed in your application/library](https://github.com/kellpossible/cargo-i18n)
  - fluent-rs
    - [i18n-embed-fl](https://crates.io/crates/i18n-embed-fl)
      - Binary size: +268.5 KiB

      > For you project you may have access to a statically defined loader, and you can create a convenience macro wrapper so this doesn't need to be imported and specified every time.
  - gettext

  [cargo-i18n a tool for localizing your rust crates : r/rust](https://www.reddit.com/r/rust/comments/fyi5dy/cargoi18n_a_tool_for_localizing_your_rust_crates/)

- GNU gettext: [gettext-rs: GNU Gettext FFI binding for Rust](https://github.com/gettext-rs/gettext-rs)
  - [Can not build gettext-sys on windows - Issue #12](https://github.com/gettext-rs/gettext-rs/issues/12) 6 years
  - [tr: Translation tools for rust](https://github.com/woboq/tr)

- [poly\_l10n: Handle locali(s|z)ations the correct way](https://github.com/madonuko/poly_l10n)

  > There are many i18n libraries out there that doesn't do this right: language fallbacks. Unfortunately most projects (regardless of whether or not it's open source) do not support all languages. This library fixes this for you with [`LocaleFallbackSolver`](https://docs.rs/poly_l10n/latest/poly_l10n/struct.LocaleFallbackSolver.html).
- [simple-i18n: A simple compile time i18n implementation in Rust.](https://github.com/juzi5201314/i18n-rs) (discontinued)

[Rust internationalization, localization, and translation - LogRocket Blog](https://blog.logrocket.com/rust-internationalization-localization-and-translation/)

[Internationalization » AWWY?](https://www.arewewebyet.org/topics/i18n/)

[A simple solution to localize rust - help - The Rust Programming Language Forum](https://users.rust-lang.org/t/a-simple-solution-to-localize-rust/36017)

[Internationalization - help - The Rust Programming Language Forum](https://users.rust-lang.org/t/internationalization/77011)

[Best practices for localization? - help - The Rust Programming Language Forum](https://users.rust-lang.org/t/best-practices-for-localization/120431)
