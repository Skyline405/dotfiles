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
$ make stow # it'll install all
```

To install specific directory use:
```bash
$ stow -t ~ <dirname>
```

To uninstall specific directory use:
```bash
$ stow -t -D ~ <dirname>
```

To uninstall all use:
```bash
$ make unstow
```

## :blue_book: VIM cookbook

| recipe         | desc                                                     |
| ---            | ---                                                      |
| :g//t$         | copy lines contains highlighted value at the end of file |
| :g//d          | delete lines contains highlighted value                  |
| :g!//d         | delete lines NOT contains highlighted value              |
| :v/./,/./-j    | replace each entry many empty lines by one empty line    |
| :'<,'>s/$/\r/g | add empty line between all lines                         |
| :%s/\s\\+$//g  | delete trailing whitespaces                              |

---

# VS Code (Codium)

#### Export extensions list

```bash
# eve - export vscode extensions
alias eve="code --list-extensions |
xargs -L 1 echo code --install-extension |
sed 's/$/ --force/' |
sed '\$!s/$/ \&/' > install-extensions.sh"
```

#### Useful links

https://stackoverflow.com/questions/35773299/how-can-you-export-the-visual-studio-code-extension-list

---

# Linux keyboard Remap

#### Reload keymap configuration (wrong way):

```bash
setxkbmap -layout us,ru -symbols "pc+us+ru:2+inet(evdev)+group(alt_shift_toggle)+terminate(ctrl_alt_bksp)+caps" -print | xkbcomp -I"$HOME/.config/xkb" - "${DISPLAY%%.*}"
```

#### Debian keyboard setup /etc/default/keyboard

```conf
# KEYBOARD CONFIGURATION FILE

# Consult the keyboard(5) manual page.

XKBMODEL="pc105"
XKBLAYOUT="us,ru"
XKBVARIANT=""
XKBOPTIONS="grp:alt_shift_toggle,grp_led:scroll,caps:escape"

BACKSPACE="guess"
```

#### Help links:

https://habr.com/ru/post/222285/

https://unix.stackexchange.com/questions/90089/remapping-both-caps-lock-and-shiftcaps-lock-in-xkb

http://www.linuxlib.ru/Linux/xkb/gram-action.html

https://devhints.io/vimscript
