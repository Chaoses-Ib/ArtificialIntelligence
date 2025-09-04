# Dictionaries
[Wikipedia](https://en.wikipedia.org/wiki/Dictionary)

[Electronic dictionary - Wikipedia](https://en.wikipedia.org/wiki/Electronic_dictionary)

[FreeMdict Forum - 自由 无门槛 免费](https://forum.freemdict.com/)

[PDAWIKI 存档 - PDAWIKI历史贴文](https://061061.xyz/)

## Formats
- [odict: A blazingly-fast, offline-first format and toolchain for lexical data 📖](https://github.com/TheOpenDictionary/odict)
  - `scoop install odict`

[萌新请问MDD和MDX两种的词典格式有什么具体区别吗 - Eudic - 欧路词典 - 掌上百科 - PDAWIKI - Powered by Discuz!](https://www.pdawiki.com/forum/thread-34455-1-1.html)
> mdx可以单个就是词典，一些简单的词典都是单个mdx文件。mdd里是音频和图片资源，相对大的多。

## Tools
- [GoldenDict: A feature-rich dictionary lookup program, supporting multiple dictionary formats (StarDict/Babylon/Lingvo/Dictd) and online dictionaries, featuring perfect article rendering with the complete markup, illustrations and other content retained, and allowing you to type in words without any accents or correct case.](https://github.com/goldendict/goldendict) (inactive)
  - `scoop install goldendict`
  - Data
    - `%APPDATA%\GoldenDict`
    - `C:\Program Files\GoldenDict\content\morphology`
  - 2017-08-05~
  - 2021-01-14 v1.5.0-RC2-170-g4c1dd16
  - 2022-10-11 v1.5.0-RC2-372-gc3ff15f
  
  [GoldenDict-ng: The Next Generation GoldenDict](https://github.com/xiaoyifang/goldendict-ng)
  - `C:\Program Files\GoldenDict-ng`
  - Scoop: [\[Request\]: GoldenDict-ng - Issue #13446 - ScoopInstaller/Extras](https://github.com/ScoopInstaller/Extras/issues/13446)
    ```pwsh
    scoop bucket add muggle 'https://github.com/hu3rror/scoop-muggle.git'
    scoop install muggle/goldendict-ng
    ```
  - UI
    - Dark Mode
    - Interface Font: 中文从宋体变为了微软雅黑
    - Fallback Fonts
    - Hotkey `Ctrl+C, Ctrl+C` 与原版显示不同：`Ctrl+C+C` → `Ctrl+C, Ctrl+C`
  - [Transliteration](https://xiaoyifang.github.io/goldendict-ng/manage_sources/#transliteration)
  - Anki Connect
  - 与原版配置不完全兼容

  [配置GoldenDict - 知乎](https://zhuanlan.zhihu.com/p/673333066)

  [Latest 软件经验交流展望/GoldenDict-ng topics - FreeMdict Forum](https://forum.freemdict.com/c/dicttool/goldendictng/32)

## Dictionaries
- [Wiktionary](https://www.wiktionary.org/)
- [cihai/cihai: Python library for CJK (Chinese, Japanese, and Korean) language dictionary](https://github.com/cihai/cihai)

## 日本語
- [「UniDic」国語研短単位自動解析用辞書](https://clrd.ninjal.ac.jp/unidic/)
  - [polm/unidic-py: Unidic packaged for installation via pip.](https://github.com/polm/unidic-py)
    - [polm/unidic-lite: A small version of UniDic for easy pip installs.](https://github.com/polm/unidic-lite)
  - Rust
    - [lindera-unidic - crates.io: Rust Package Registry](https://crates.io/crates/lindera-unidic)
    - [wareya/notmecab-rs: notmecab-rs is a very basic mecab clone, designed only to do parsing, not training.](https://github.com/wareya/notmecab-rs)

- [Electronic Dictionary Research and Development Group](https://www.edrdg.org/)
  - [The JMDict Project](https://www.edrdg.org/jmdict/j_jmdict.html)
    - Rust: [rust-jmdict: Rust library for access to the JMdict](https://github.com/majewsky/rust-jmdict)

      > Each entry has zero or more [kanji elements](https://docs.rs/jmdict/latest/jmdict/struct.KanjiElement.html "struct jmdict::KanjiElement"), one or more [reading elements](https://docs.rs/jmdict/latest/jmdict/struct.ReadingElement.html "struct jmdict::ReadingElement") and one or more [senses](https://docs.rs/jmdict/latest/jmdict/struct.Sense.html "struct jmdict::Sense"). Elements contain the Japanese representation of the vocabulary or phrase. Whereas reading elements consist of only kana, kanji elements will contain characters from non-kana scripts, most commonly kanji. Senses contain the translation of the vocabulary or phrase in other languages, most commonly English.
    - [scriptin/jmdict-simplified: JMdict, JMnedict, Kanjidic, KRADFILE/RADKFILE in JSON format](https://github.com/scriptin/jmdict-simplified)
      - Rust: [jmdict-rs: Simple interface for interacting with JMdict Japanese dictionary](https://github.com/piropaolo/jmdict-rs)
    - [aecsocket/wordbase: Language-learning-focused dictionary engine](https://github.com/aecsocket/wordbase)

    [JMdict - 日语 - FreeMdict Forum](https://forum.freemdict.com/t/topic/15567)
  - [ENAMDICT/JMnedict Documentation](https://www.edrdg.org/enamdict/enamdict_doc.html)

    > Japanese proper names; place-names, surnames, given names, company names, names of artistic and literary works, product names, etc.. These were originally included in the EDICT file, along with other non-name entries. By late 1995, the number of name entries had exceeded the others, and the file was becoming unmanageably large, so the decision was made to split it.
  - Python
    - [neocl/jamdict: Python 3 library for manipulating Jim Breen's JMdict, KanjiDic2, JMnedict and kanji-radical mappings](https://github.com/neocl/jamdict) (discontinued)
  - .NET
    - [Doublevil/JmdictFurigana: A Japanese dictionary resource that attaches furigana to individual words](https://github.com/Doublevil/JmdictFurigana)
  - [WeDontPanic/Jotoba: A free online, multilang Japanese dictionary.](https://github.com/WeDontPanic/Jotoba)

- IPAdic
  - Hasn't been updated since at least 2007
  - [polm/ipadic-py: IPAdic packaged for easy use from Python.](https://github.com/polm/ipadic-py)
  - [Mozc dict](https://github.com/google/mozc/tree/master/src/data)
    - [mozcpy: Mozc for Python: Kana-Kanji converter](https://github.com/ikegami-yukino/mozcpy)

- JumanDic
  - > unmaintained and has not been updated in over ten years
  - [polm/jumandic-py: JumanDic packaged for use with PyPI.](https://github.com/polm/jumandic-py)

- [kujirahand/EJDict: English-Japanese Dictionary data (Public Domain) EJDict-hand](https://github.com/kujirahand/EJDict)
  - [tomo3110/ejdict-rs: This library is an English-Japanese dictionary that can be used via implemented API by Rust language.](https://github.com/tomo3110/ejdict-rs)

- kakasi dict
  - GPL-3

  > KAKASI (Kanji Kana Simple inversion program)
  > $Id: kakasidict,v 1.2 2002-10-02 06:32:28 knok Exp $
  > Copyright (C) 1992 1993 1994
  > Hironobu Takahashi (takahasi@tiny.or.jp),
  > Masahiko Sato (masahiko@sato.riec.tohoku.ac.jp),
  > Yukiyoshi Kameyama, Miki Inooka, Akihiko Sasaki, Dai Ando, Junichi Okukawa,
  > Katsushi Sato and Nobuhiro Yamagishi
  >
  > This dictionary has been made from the large size dictionary of
  > SKK system version 7 of May, 1994 and the special dictionary for
  > KAKASI version 1 of May 1, 1992.

  ```
  こうじ 公治
  かいどく 買い得
  かいどく 買得
  えいいち 鋭一
  てんさいかひ 転載可否
  ...
  ```

Libraries:
- [SamuraiT/mecab-python3: :snake: mecab-python. you can find original version here:http://taku910.github.io/mecab/](https://github.com/SamuraiT/mecab-python3)
  - [polm/fugashi: A Cython MeCab wrapper for fast, pythonic Japanese tokenization and morphological analysis.](https://github.com/polm/fugashi)
- [lindera: A multilingual morphological analysis library.](https://github.com/lindera/lindera)
- [NonJishoKei/NonJishoKei: \[WIP\] This is a lightweight morphological analyzer designed for Japanese dictionary retrieval. |「正在开发中」这是一个为辞典检索设计的轻量形态素解析器。](https://github.com/NonJishoKei/NonJishoKei)

  [真-哪里不会点哪里\_日本語非辞書形辞典\_v2 - 日语 - FreeMdict Forum](https://forum.freemdict.com/t/topic/14048)

[Grammatical, automatic furigana with SQLite and Rust - GeekLaunch](https://geeklaunch.io/blog/grammatical-automatic-furigana-with-sqlite-and-rust/) ([r/rust](https://www.reddit.com/r/rust/comments/10qzjsl/grammatical_automatic_furigana_with_sqlite_and/))
> You might want to consider switching to UniDic as it's a lot bigger and vastly superior to IPADIC from my experience.

[Is there an alternative to JMDict for use with yomichan? : r/LearnJapanese](https://www.reddit.com/r/LearnJapanese/comments/12rkjwt/is_there_an_alternative_to_jmdict_for_use_with/)

[Rustの形態素解析ライブラリ - VibratoとLindera](https://zenn.dev/tfutada/articles/30fcf2729da035)
> IPAは辞書で、MeCabは形態素解析になります。IPAやMeCabは少々古いです。。UniDicが現状では最新の辞書になります。VibratoでもUniDic版の辞書を標準で使用しています。

[May I ask what library you're using for kanji to hiragana transliteration? I'm w... | Hacker News](https://news.ycombinator.com/item?id=36675917)
> May I ask what library you're using for kanji to hiragana transliteration? I'm working on a language product as well and I'm using pykakasi which is certainly prone to errors. I tried your app and noticed similar errors as well (大いばり should show ooibari instead of daiibari, for example). Wonder if we can do better on transliteration.
>
> MeCab with ipadic and a lot of custom swift logic for fixing issue patterns and matching to JMDict entries as an additional heuristic that the stemming/token was done right. I’m also using a custom generated JLPT classification (a more complete guess at what the full set of JLPT vocab is based on ebook word freq) to choose more likely candidate results. I haven’t improved this in a couple years, it’s one of my upcoming focuses now that I have the app rewritten and out.
> 
> Unidic also interesting but harder to use and huge data size.

### Learning
- [【小学馆】日中辞典第三版 - 日语 - FreeMdict Forum](https://forum.freemdict.com/t/topic/11001/51)
- [【小学館】例解学習国語辞典［第九版］ - 日语 - FreeMdict Forum](https://forum.freemdict.com/t/topic/18491/59)
- [明鏡国語辞典 第三版 - 日语 - FreeMdict Forum](https://forum.freemdict.com/t/topic/16146/66)
- [日汉双解词典 乱码修复版【20231101更新】 - 日语 - FreeMdict Forum](https://forum.freemdict.com/t/topic/3150)
  - [《新世纪日汉双解大辞典》补档 + 替补css - 日语 - FreeMdict Forum](https://forum.freemdict.com/t/topic/5042)
- [【小学馆】大辞泉（202304数据） - 日语 - FreeMdict Forum](https://forum.freemdict.com/t/topic/11703)
- [（三省堂）スーパー大辞林［第四版］ - 日语 - FreeMdict Forum](https://forum.freemdict.com/t/topic/22477)
- [広辞苑 第七版 - 日语 - FreeMdict Forum](https://forum.freemdict.com/t/topic/15882/27)
- [日本国語大辞典 第二版 - 添加阅读同义词/修复超链接 - 日语 - FreeMdict Forum](https://forum.freemdict.com/t/topic/15442)
  - [日本国語大辞典 第二版 - 清洁CSS - 词典装饰排版交流分享 - FreeMdict Forum](https://forum.freemdict.com/t/topic/15451/15)
- [[2021.04.01][重新生成词头 实现精确查询]NHK日语真人语音库 - MDict 词库资源区 - MDict Dictionaries - 掌上百科 - PDAWIKI - Powered by Discuz! ](https://o.061061.xyz/42258.html)
  - [NHK日本語発音アクセント辞書 - Google Drive](https://drive.google.com/drive/folders/15LjkcOT-5pbA-CBHKkqzK6BIT5RKixdH)
  - [NHK日语发音音调词典 一个非常简陋的美化改版 - 日语 - FreeMdict Forum](https://forum.freemdict.com/t/topic/24251)
  - [研究了一下物書堂的文件格式，提取了完整版NHK 日本語発音アクセント新辞典 - 技术交流与词典编修 - FreeMdict Forum](https://forum.freemdict.com/t/topic/40944)
  - [物書堂: NHK 日本語発音アクセント新辞典 - 日语 - FreeMdict Forum](https://forum.freemdict.com/t/topic/38771)
  - [日本語辞書3種のMdict版 - 日语 - FreeMdict Forum](https://forum.freemdict.com/t/topic/39200/36)

  [求NHK发音词典！呜呜呜向大佬们磕头了 - 资源求助 - FreeMdict Forum](https://forum.freemdict.com/t/topic/14563)
- [ピクシブ百科事典 (概要のみ) 20240224 - 日语 - FreeMdict Forum](https://forum.freemdict.com/t/topic/26793/24)
  - http://dic.pixiv.net/search?query=%GDWORD%
  - http://dic.pixiv.net/a/%GDWORD%

[求教日语达人： 初学者想找几本日汉电子词典，要求如下，什么词典合适呢？ - 词典及语言学习交流 - FreeMdict Forum](https://forum.freemdict.com/t/topic/28098)

[日语mdx 下载点小集合 - 日语 - FreeMdict Forum](https://forum.freemdict.com/t/topic/15856)

[分享一些不在日语分区而难找的词典 - 日语 - FreeMdict Forum](https://forum.freemdict.com/t/topic/13941)

[日语学习之：在 GoldenDict 下日语词典查词 | Verne in GitHub](https://blog.einverne.info/post/2022/10/japanese-goldendict-dictionary.html)
