<!--

                   ██
                  ░░
 ███████  ██    ██ ██ ██████████  ██████  █████
░░██░░░██░██   ░██░██░░██░░██░░██░░██░░█ ██░░░██
 ░██  ░██░░██ ░██ ░██ ░██ ░██ ░██ ░██ ░ ░██  ░░
 ░██  ░██ ░░████  ░██ ░██ ░██ ░██ ░██   ░██   ██
 ███  ░██  ░░██   ░██ ███ ░██ ░██░███   ░░█████
░░░   ░░    ░░    ░░ ░░░  ░░  ░░ ░░░     ░░░░░

-->

## What is this?

Modular NeoVim configuration inspired by [@mnambila](https://github.com/mnabila/nvimrc) nvimrc.

This is NeoVim config with Nightly build.

## Install

Cloning this repo.

```
$ git clone https://github.com/bandithijo/nvimrc $HOME/.config/nvim
```

Go to NeoVim config directory.

```
$ cd $HOME/.config/nvim
```

Run `pre_install` script.

```
$ ./pre_install
```

Please wait until all plugin downloaded and all installation process completed.<br>
Plugin installed on `$HOME/.local/share/nvim/plugged/` directory.

Enjoy!

## Note

I'm using WakaTime Vim Metrics. After all process installation completed, when you open vim/nvim, it will ask about your WakaTime **Secret API Key**. Ignore it, or enter your secret API key if you have.


## Documentation

[BanditHijo.GitHub.io - Konfigurasi Vimrc yang Modular](https://bandithijo.github.io/blog/konfigurasi-vimrc-yang-modular)

## Keybinds

| Function                                     | Mode | Key Name                                                    |
|----------------------------------------------|------|-------------------------------------------------------------|
| Leader                                       | N    | <kbd>Space</kbd>                                            |
| Local Leader                                 | N    | <kbd>Space</kbd>                                            |
| Open this nvim config                        | N    | <kbd>Space</kbd> <kbd>e</kbd> <kbd>v</kbd>                  |
| Source vimrc                                 | N    | <kbd>Space</kbd> <kbd>s</kbd> <kbd>o</kbd>                  |
| Buffer next                                  | N    | <kbd>Space</kbd> <kbd>n</kbd>                               |
| Buffer previous                              | N    | <kbd>Space</kbd> <kbd>b</kbd>                               |
| Buffer close                                 | N    | <kbd>Space</kbd> <kbd>b</kbd>+<kbd>d</kbd>                  |
| Tab next                                     | N    | <kbd>Space</kbd> <kbd>Shift</kbd>+<kbd>n</kbd>              |
| Tab previous                                 | N    | <kbd>Space</kbd> <kbd>Shift</kbd>+<kbd>p</kbd>              |
| Tab close                                    | N    | <kbd>Space</kbd> <kbd>Shift</kbd>+<kbd>t</kbd>+<kbd>d</kbd> |
| Clear highlight                              | N    | <kbd>Space</kbd> <kbd>n</kbd> <kbd>h</kbd>                  |
| Strip all trailing whitespace                | N    | <kbd>Space</kbd> <kbd>Shift</kbd>+<kbd>w</kbd>              |
| Change to CWD with open buffer as refference | N    | <kbd>Space</kbd> <kbd>c</kbd> <kbd>d</kbd>                  |
| Clean coc.nvim yank pum                      | N    | <kbd>Space</kbd> <kbd>c</kbd> <kbd>l</kbd>                  |
| Check/Uncheck checkbox (.md)                 | N    | <kbd>Space</kbd> <kbd>c</kbd> <kbd>c</kbd>                  |
| Load View (Folding)                          | N    | <kbd>Space</kbd> <kbd>l</kbd> <kbd>v</kbd>                  |
| Easy align                                   | N    | <kbd>g</kbd> <kbd>a</kbd>                                   |
| Search keyword forward                       | N    | <kbd>n</kbd>                                                |
| Search keyword backward                      | N    | <kbd>Shift</kbd>+<kbd>n</kbd>                               |
| Defx sidebar toggle on/off                   | N    | <kbd>F12</kbd>                                              |
| Tlist toggle on/off (.org)                   | N    | <kbd>F11</kbd>                                              |
| Tagbar toggle on/off                         | N    | <kbd>F11</kbd>                                              |
| FZF `:Files`                                 | N    | <kbd>Control</kbd>+<kbd>p</kbd>                             |
| FZF `:Buffers`                               | N    | <kbd>Control</kbd>+<kbd>f</kbd>                             |
| Move window pane focus to left               | N    | <kbd>Control</kbd>+<kbd>h</kbd>                             |
| Move window pane focus to down               | N    | <kbd>Control</kbd>+<kbd>j</kbd>                             |
| Move window pane focus to up                 | N    | <kbd>Control</kbd>+<kbd>k</kbd>                             |
| Move window pane focus to right              | N    | <kbd>Control</kbd>+<kbd>l</kbd>                             |
| Page up with focus on middle                 | N    | <kbd>Control</kbd>+<kbd>u</kbd>                             |
| Page down with focus on middle               | N    | <kbd>Control</kbd>+<kbd>d</kbd>                             |
| Exit from terminal mode                      | T    | <kbd>Esc</kbd>                                              |
| Sudo save                                    | C    | <kbd>w</kbd> <kbd>!</kbd> <kbd>!</kbd>                      |
| Emmet leader key                             | N    | <kbd>Control</kbd>+<kbd>n</kbd> <kbd>,</kbd>                |

> MODE<br>
> N: Normal, I: Insert, T: Terminal, C: Command

> NOTE<br>
> <kbd>a</kbd> <kbd>b</kbd> means "press <kbd>a</kbd> (release), then press <kbd>b</kbd>"<br>
> <kbd>a</kbd>+<kbd>b</kbd> means "press <kbd>a</kbd> (hold it), then press <kbd>b</kbd>"
