# Dictionaries
[Wikipedia](https://en.wikipedia.org/wiki/Dictionary)

[Electronic dictionary - Wikipedia](https://en.wikipedia.org/wiki/Electronic_dictionary)

## Formats
- [odict: A blazingly-fast, offline-first format and toolchain for lexical data 📖](https://github.com/TheOpenDictionary/odict)
  - `scoop install odict`

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
  - Anki Connect
  - 与原版配置不完全兼容

  [配置GoldenDict - 知乎](https://zhuanlan.zhihu.com/p/673333066)
