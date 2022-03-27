- Google Translate: https://translate.google.com/?hl=en&tab=TT
- 轉換為粵拼 (zyun2wun6wai4jyut6ping3): https://www.cantonesetools.org/en/cantonese-to-jyutping 
- Dictionary: http://www.cantonese.sheik.co.uk/dictionary/words/
- Browser extension (uses Yale): https://chrome.google.com/webstore/detail/cantonese-popup-dictionar/pjnbhojkojmibobcpfgihhnohboldhip?hl=en
- IME: [rime-cantonese](https://github.com/rime/rime-cantonese)
- Questions (general Chinese): https://chinese.stackexchange.com/questions

## Cantonese Specific Grammar

- Cantolounge: https://cantolounge.com/cantonese-grammar-series/
- Other 1: http://ilovelanguages.org/cantonese.php
- CUHK: https://www.cuhk.edu.hk/lin/cbrc/CantoneseGrammar/multimedia.htm

- Change locale: https://wiki.archlinux.org/title/locale
    - `sudo vim /etc/locale.gen`
    - Comment: `en_US.UTF-8 UTF-8`
    - Uncomment: `zh_TW.UTF-8 UTF-8`. Not using `zh_HK.UTF-8` because it has less support, for example language in the terminal
    - `sudo locale-gen`
    - Update `LANG` in `/etc/locale.conf` (via provision)
    - `sudo pacman -Syu && yay -Syu`
