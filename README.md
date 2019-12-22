# Dotfiles

## Dependencies

```bash
$ sudo apt install -y git stow
```

## :package: Install

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

## :blue_book: VIM cookbook

| recipe         | desc                                                     |
| ---            | ---                                                      |
| :g//t$         | copy lines contains highlighted value at the end of file |
| :g//d          | delete lines contains highkighted value                  |
| :g!//d         | delete lines NOT contains highlighted value              |
| :v/./,/./-j    | replace each entry many empty lines by one empty line    |
| :'<,'>s/$/\r/g | add empty line between all lines                         |
| :%s/\s\\+$//g   | delete trailing whitespaces                             |

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

https://devhints.io/vimscript
