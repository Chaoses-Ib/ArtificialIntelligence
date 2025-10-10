# Windows
[National Language Support - Win32 apps | Microsoft Learn](https://learn.microsoft.com/en-us/windows/win32/intl/national-language-support)

[Locales and Languages - Win32 apps | Microsoft Learn](https://learn.microsoft.com/en-us/windows/win32/intl/locales-and-languages)
> The term "language" indicates a collection of properties used in spoken and written communication. Each language has a language name and a language identifier that indicate the particular [code page](https://learn.microsoft.com/en-us/windows/win32/intl/code-pages) (ANSI, DOS, Macintosh) used to represent the [geographical location](https://learn.microsoft.com/en-us/windows/win32/intl/table-of-geographical-locations) for the language on the operating system. A neutral language is indicated by a name such as "en" for English. A more geographically specific language can be indicated by a name that includes both locale and country/region information. For example, the locale English (United States) has the language name "en-US".
>
> A "locale" is a collection of language-related user preference information represented as a list of values. Windows XP supports more than 150 locales, and Windows Vista supports about 200. Each locale is defined by a language and a sort order, and has both a locale name and a locale identifier. An example of a locale name for German (Germany) is "de-DE_phonebook".

Basically, "language" is language and "locale" is formatting format.

## Languages
[User Interface Language Management - Win32 apps | Microsoft Learn](https://learn.microsoft.com/en-us/windows/win32/intl/user-interface-language-management)

[Language Identifiers - Win32 apps | Microsoft Learn](https://learn.microsoft.com/en-us/windows/win32/intl/language-identifiers)

[Language Names - Win32 apps | Microsoft Learn](https://learn.microsoft.com/en-us/windows/win32/intl/language-names)

[Language Identifier Constants and Strings - Win32 apps | Microsoft Learn](https://learn.microsoft.com/en-us/windows/win32/intl/language-identifier-constants-and-strings)
- [\[MS-LCID\]: Windows Language Code Identifier (LCID) Reference | Microsoft Learn](https://learn.microsoft.com/en-us/openspecs/windows_protocols/ms-lcid/70feba9f-294e-491e-b6eb-56532684c37f) (PDF)
- [OS Language Values-Codes](https://www.autoitscript.com/autoit3/docs/appendix/OSLangCodes.htm) (229)
- [Available Language Packs for Windows | Microsoft Learn](https://learn.microsoft.com/en-us/windows-hardware/manufacture/desktop/available-language-packs-for-windows?view=windows-11) (96)
- [Microsoft Language IDs --- Localization Guide 0.9.0 documentation](https://docs.translatehouse.org/projects/localization-guide/en/latest/guide/win_lang_ids.html)

winnls.h:
- [`GetThreadUILanguage`](https://learn.microsoft.com/en-us/windows/win32/api/winnls/nf-winnls-getthreaduilanguage), [`SetThreadUILanguage`](https://learn.microsoft.com/en-us/windows/win32/api/winnls/nf-winnls-setthreaduilanguage)
  - Identical to `GetThreadPreferredUILanguages(MUI_MERGE_SYSTEM_FALLBACK | MUI_MERGE_USER_FALLBACK | MUI_LANGUAGE_ID)`
- [`GetThreadPreferredUILanguages`](https://learn.microsoft.com/en-us/windows/win32/api/winnls/nf-winnls-getthreadpreferreduilanguages), [`SetThreadPreferredUILanguages`](https://learn.microsoft.com/en-us/windows/win32/api/winnls/nf-winnls-setthreadpreferreduilanguages)
  - `MUI_MERGE_USER_FALLBACK` (default): thread + process + user/system + system default
    - `MUI_MERGE_SYSTEM_FALLBACK` (`MUI_UI_FALLBACK`): + fallback + neutral languages

  > When a thread is created, the thread user interface language setting is empty and the user interface for the thread is displayed in the user-selected language. This function enables the application to change the user interface language for the current running thread.

- [`GetProcessPreferredUILanguages`](https://learn.microsoft.com/en-us/windows/win32/api/winnls/nf-winnls-getprocesspreferreduilanguages), [`SetProcessPreferredUILanguages`](https://learn.microsoft.com/en-us/windows/win32/api/winnls/nf-winnls-setprocesspreferreduilanguages)

  Are process preferred languages empty before `Set`?

  [Switching windows process/thread ui languages - Issue #322 - projectfluent/fluent-rs](https://github.com/projectfluent/fluent-rs/issues/322)

- [`GetUserDefaultUILanguage`](https://learn.microsoft.com/en-us/windows/win32/api/winnls/nf-winnls-getuserdefaultuilanguage)

  > If the current user has not set a language, `GetUserDefaultUILanguage` returns the preferred language set for the system. If there is no preferred language set for the system, then the system default UI language (also known as "install language") is returned.
- [`GetUserPreferredUILanguages`](https://learn.microsoft.com/en-us/windows/win32/api/winnls/nf-winnls-getuserpreferreduilanguages)

- [`GetSystemPreferredUILanguages`](https://learn.microsoft.com/en-us/windows/win32/api/winnls/nf-winnls-getsystempreferreduilanguages)
- [`GetSystemDefaultUILanguage`](https://learn.microsoft.com/en-us/windows/win32/api/winnls/nf-winnls-getsystemdefaultuilanguage)

  > On Windows Vista and later, the system default UI language is known as the "install language" and plays a more limited role. For most purposes, it is superseded by the system preferred UI languages. However, in certain contexts it is useful to have a single install language that is always known to be fully supported.

[Localization for DirectoryDialog - Issue #458 - eclipse-platform/eclipse.platform.swt](https://github.com/eclipse-platform/eclipse.platform.swt/issues/458)

[electron/shell/common/language\_util\_win.cc at main - electron/electron](https://github.com/electron/electron/blob/main/shell/common/language_util_win.cc)

[wine/dlls/ntdll/locale.c at 7c7b3e43047a26789f1cbd5b3a04a37a3d08e2bd - wine-mirror/wine](https://github.com/wine-mirror/wine/blob/7c7b3e43047a26789f1cbd5b3a04a37a3d08e2bd/dlls/ntdll/locale.c#L244)

## Locales
Locales, regions

[Pseudo-Locales - Win32 apps | Microsoft Learn](https://learn.microsoft.com/en-us/windows/win32/intl/pseudo-locales)

- [`GetLocaleInfoW`](https://learn.microsoft.com/en-us/windows/win32/api/winnls/nf-winnls-getlocaleinfow), [`GetLocaleInfoEx`](https://learn.microsoft.com/en-us/windows/win32/api/winnls/nf-winnls-getlocaleinfoex)

  [Locale Information Constants - Win32 apps | Microsoft Learn](https://learn.microsoft.com/en-us/windows/win32/intl/locale-information-constants)
  - [`LOCALE_SNAME`](https://learn.microsoft.com/en-us/windows/win32/intl/locale-sname) (max to `LOCALE_NAME_MAX_LENGTH`, 85)
    ```rust
    //! cargo add windows-sys --features Win32_Globalization,Win32_System_SystemServices
    use windows_sys::Win32::{
        Globalization::{GetLocaleInfoW, GetThreadUILanguage, LOCALE_SNAME},
        System::SystemServices::LOCALE_NAME_MAX_LENGTH,
    };
    pub fn get_language_name(language: u16) -> String {
        let mut lcdata = [0u16; LOCALE_NAME_MAX_LENGTH as usize];
        _ = unsafe {
            GetLocaleInfoW(
                language as u32,
                LOCALE_SNAME,
                lcdata.as_mut_ptr(),
                size_of_val(&lcdata) as i32,
            )
        };
        String::from_utf16_lossy(&lcdata)
            .trim_end_matches('\0')
            .to_string()
    }
    pub fn get_thread_language_name() -> String {
        let language = unsafe { GetThreadUILanguage() };
        get_language_name(language)
    }
    ```
    [winapi - How to get language name from language id in C++? - Stack Overflow](https://stackoverflow.com/questions/42904754/how-to-get-language-name-from-language-id-in-c)

- [`GetUserDefaultLangID`](https://learn.microsoft.com/en-us/windows/win32/api/winnls/nf-winnls-getuserdefaultlangid)

  > Returns the language identifier of the Region Format setting for the current user.
- [`GetUserDefaultLCID`](https://learn.microsoft.com/en-us/windows/win32/api/winnls/nf-winnls-getuserdefaultlcid)
- [`GetSystemDefaultLangID`](https://learn.microsoft.com/en-us/windows/win32/api/winnls/nf-winnls-getsystemdefaultlangid)

[Predefined identifiers](https://learn.microsoft.com/en-us/windows/win32/api/winnls/nf-winnls-getlocaleinfow#parameters):
- [`LOCALE_NEUTRAL`](https://learn.microsoft.com/en-us/windows/win32/intl/locale-neutral) (0)

  Defaults to region?

  [\[RESOLVED\] Can GetLocaleInfo return the word "Neutral" in other languages?-VBForums](https://www.vbforums.com/showthread.php?854761-RESOLVED-Can-GetLocaleInfo-return-the-word-quot-Neutral-quot-in-other-languages)
- `LOCALE_USER_DEFAULT` (0x400): Region, not preferred languages and Windows display language
- `LOCALE_SYSTEM_DEFAULT`
- [`LOCALE_CUSTOM_*`](https://learn.microsoft.com/en-us/windows/win32/intl/locale-custom-constants)

## Programs
- [Application manifests: `activeCodePage`](https://learn.microsoft.com/en-us/windows/win32/sbscs/application-manifests#activecodepage)
  - `UTF-8`
  - `ja-JP`
  
  [The `activeCodePage` manifest element can be used for more than just setting UTF-8 as the active code page - The Old New Thing](https://devblogs.microsoft.com/oldnewthing/20220531-00/?p=106697)
  > Windows 11（20348+）允许通过外部清单文件强制指定程序的代码页到非UTF-8。

  [Code search results: activeCodePage manifest "ja-JP"](https://github.com/search?q=activeCodePage%20manifest%20%22ja-JP%22&ref=opensearch&type=code)
- Wine: `LANG=ja_JP`

Tools:
- [Locale Emulator: Yet Another System Region and Language Simulator](https://github.com/xupefei/Locale-Emulator) (discontinued)
  - x86-32 only
  - `scoop install locale-emulator`
- [Locale Remulator: System Region and Language Simulator.](https://github.com/InWILL/Locale_Remulator)

  [Reddit - The heart of the internet](https://www.reddit.com/r/visualnovels/comments/15khvch/after_locale_emulator_here_comes_locale_remulator/)
- [ntlea](https://github.com/zxyacb/ntlea) (discontinued)
  - Ntleas (discontinued)

  [NTLEA - NamuWiki](https://en.namu.wiki/w/NTLEA)

[windows - How to launch a 64-bit program with a different locale than the system locale? - Super User](https://superuser.com/questions/905522/how-to-launch-a-64-bit-program-with-a-different-locale-than-the-system-locale)

[Is there any safe local emulator? : r/visualnovels](https://www.reddit.com/r/visualnovels/comments/zajsue/is_there_any_safe_local_emulator/)
