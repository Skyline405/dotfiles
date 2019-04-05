# Dotfiles

## Dependencies

```bash
$ sudo apt install -y git stow
```

## Install

Install dependencies
Clone the repository:
```bash
$ git clone https://github.com/Skyline405/dotfiles.git && cd dotfiles
$ make stow
```

To uninstall use:
```bash
$ make unstow
```

## VIM coock book

| recipe         | desc                                                                    |
| ---            | ---                                                                     |
| :g//t$         | скопировать строки, содержащие подсвеченное значение, в конец файла     |
| :g//d          | удалить строки, содержащие подсвеченное значение                        |
| :g!//d         | удалить строки, НЕ содержащие подсвеченного значения                    |
| :v/./,/./-j    | Заменить каждое вхождение нескольких пустых строк на одну пустую строку |
| :'<,'>s/$/\r/g | Раздвинуть подряд идущие строки                                         |
| :%s/\s\+$//g   | Удалить лишние пробелы в концах строк                                   |

---

# Linux keyboard Remap

#### Reload keymap configuration:

```bash
setxkbmap -layout us,ru -symbols "pc+us+ru:2+inet(evdev)+group(alt_shift_toggle)+terminate(ctrl_alt_bksp)+caps" -print | xkbcomp -I"$HOME/.config/xkb" - "${DISPLAY%%.*}"
```
#### Help links:

https://habr.com/ru/post/222285/

https://unix.stackexchange.com/questions/90089/remapping-both-caps-lock-and-shiftcaps-lock-in-xkb

http://www.linuxlib.ru/Linux/xkb/gram-action.html
