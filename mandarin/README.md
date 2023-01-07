# Language Practice

For the chinese pinyin I use [Terra Pinyin](https://github.com/rime/rime-terra-pinyin) to be able to additionally practice the tones.

- Many useful grammar points: https://resources.allsetlearning.com/chinese/grammar/
- App for the phone: https://www.pleco.com/
- Stroke order: http://www.strokeorder.info/
- Questions (general Chinese): https://chinese.stackexchange.com/questions
- Google Translate: https://translate.google.com/?hl=en&tab=TT

- Change locale: https://wiki.archlinux.org/title/locale
    - `sudo vim /etc/locale.gen`
    - Comment: `en_US.UTF-8 UTF-8`
    - Uncomment: `zh_TW.UTF-8 UTF-8`. Not using `zh_HK.UTF-8` because it has less support, for example language in the terminal
    - `sudo locale-gen`
    - Update `LANG` in `/etc/locale.conf` (via provision)
    - `sudo pacman -Syu && yay -Syu`
