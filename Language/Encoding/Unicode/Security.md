# Security
- Overlong UTF-8 sequences
  - URL: `/../` 2F 2E 2E 2F
    - 2F C0 AE 2E 2F
    - C0 AE → `.`
    - C0 AF → `/`

  > 比如 `0x41` 和 `0xF0 0x80 0x81 0x81` UTF-8 解码之后都是 U+0041 ("A")，这样编码就可以绕过一些过滤器

- Invalid byte sequences
  
  [Joomla: PHP Bug Introduces Multiple XSS Vulnerabilities | Sonar](https://www.sonarsource.com/blog/joomla-multiple-xss-vulnerabilities/)

- String length discrepancies

- Encoding differentials
  - Auto detection
  - U+FFFF Zero width no-break space

  [Encoding Differentials: Why Charset Matters | Sonar](https://www.sonarsource.com/blog/encoding-differentials-why-charset-matters/)

- Case
  - Windows
  - Android
    - https://t.me/vvb2060Channel/855

- [Whitespace characters](README.md#whitespace-characters)

- Visual
  - [Unicode Character 'RIGHT-TO-LEFT OVERRIDE' (U+202E)](https://www.fileformat.info/info/unicode/char/202e/index.htm)

  [Unicode 视觉欺骗攻击深度解析\_MarsBit](https://news.marsbit.co/20220923205109271433.html)

- [zalgo\_codec: A crate for converting an ASCII text string to a single unicode grapheme cluster and back. Also provides a macro to embed encoded source code into a Rust source file.](https://github.com/JSorngard/zalgo_codec)

- Qt
  - v5.3.1: [QGuiApplication crashed when passing Unicode string like Thai parameter? | Qt Forum](https://forum.qt.io/topic/54579/qguiapplication-crashed-when-passing-unicode-string-like-thai-parameter/2)
  - v5.15.0: `⏿` [\[QTBUG-85085\] QTextBrowser crashes when displaying some Unicode glyphs - Qt Bug Tracker](https://bugreports.qt.io/browse/QTBUG-85085) ?
  - [Bug 1155 -- Some unicode string make showing a QLabel segfault](https://srinikom.github.io/pyside-bz-archive/1155.html)

- [480614 -- Long String of Unicode Characters in Virtual Desktop Name Crashes plasmashell](https://bugs.kde.org/show_bug.cgi?id=480614)

[TROOPERS24: From ASCII to UTF-16: Leveraging Encodings to Break Software](https://www.youtube.com/watch?v=z-ug2dwcSz8)

Tools:
- [UTF-8 Visualizer](https://sonarsource.github.io/utf8-visualizer/)
- [Text makeup](https://text.makeup/) ([Hacker News](https://news.ycombinator.com/item?id=41554899))
- [ ] Fuzzing

Applications:
- URL
- HTML
- SQL
