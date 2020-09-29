## What is this?

Modular NeoVim configuration inspired by [@mnambila](https://github.com/mnabila/nvimrc) nvimrc.

This is NeoVim config with Vim compatibility.

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

Please wait until all plugin downloaded and all installation process completed.

Enjoy!

## Note

I'm using WakaTime Vim Metrics. After all process installation completed, when you open vim/nvim, it will ask about your WakaTime **Secret API Key**. Ignore it, or enter your secret API key if you have.


## Documentation

[BanditHijo.GitHub.io - Konfigurasi Vimrc yang Modular](https://bandithijo.github.io/blog/konfigurasi-vimrc-yang-modular)

## Keybinds

  | Function                                     | Mode     | Key Name                                   |
  |----------------------------------------------|----------|--------------------------------------------|
  | Leader                                       | Normal   | <kbd>,</kbd>                               |
  | Local Leader                                 | Normal   | <kbd>,</kbd>                               |
  | Open this nvim config                        | Normal   | <kbd>,</kbd> <kbd>e</kbd> <kbd>v</kbd>     |
  | Source vimrc                                 | Normal   | <kbd>,</kbd> <kbd>s</kbd> <kbd>o</kbd>     |
  | Buffer next                                  | Normal   | <kbd>,</kbd> <kbd>n</kbd>                  |
  | Buffer previous                              | Normal   | <kbd>,</kbd> <kbd>p</kbd>                  |
  | Buffer close                                 | Normal   | <kbd>,</kbd> <kbd>d</kbd>                  |
  | Tab next                                     | Normal   | <kbd>,</kbd> <kbd>Shift</kbd>+<kbd>n</kbd> |
  | Tab previous                                 | Normal   | <kbd>,</kbd> <kbd>Shift</kbd>+<kbd>p</kbd> |
  | Tab close                                    | Normal   | <kbd>,</kbd> <kbd>Shift</kbd>+<kbd>d</kbd> |
  | Clear highlight                              | Normal   | <kbd>,</kbd> <kbd>n</kbd> <kbd>h</kbd>     |
  | Strip all trailing whitespace                | Normal   | <kbd>,</kbd> <kbd>Shift</kbd>+<kbd>w</kbd> |
  | Change to CWD with open buffer as refference | Normal   | <kbd>,</kbd> <kbd>c</kbd> <kbd>d</kbd>     |
  | Clean coc.nvim yank pum                      | Normal   | <kbd>,</kbd> <kbd>c</kbd> <kbd>l</kbd>     |
  | Check/Uncheck checkbox (.md)                 | Normal   | <kbd>,</kbd> <kbd>c</kbd> <kbd>c</kbd>     |
  | Easy align                                   | Normal   | <kbd>g</kbd> <kbd>a</kbd>                  |
  | Search keyword forward                       | Normal   | <kbd>n</kbd>                               |
  | Search keyword backward                      | Normal   | <kbd>Shift</kbd>+<kbd>n</kbd>              |
  | NERDTree sidebar toggle on/off               | Normal   | <kbd>F12</kbd>                             |
  | Tlist toggle on/off (.org)                   | Normal   | <kbd>F11</kbd>                             |
  | Tagbar toggle on/off                         | Normal   | <kbd>F11</kbd>                             |
  | FZF `:Buffers`                               | Normal   | <kbd>Control</kbd>+<kbd>p</kbd>            |
  | FZF `:Files`                                 | Normal   | <kbd>Control</kbd>+<kbd>f</kbd>            |
  | Move window pane focus to left               | Normal   | <kbd>Control</kbd>+<kbd>h</kbd>            |
  | Move window pane focus to down               | Normal   | <kbd>Control</kbd>+<kbd>j</kbd>            |
  | Move window pane focus to up                 | Normal   | <kbd>Control</kbd>+<kbd>k</kbd>            |
  | Move window pane focus to right              | Normal   | <kbd>Control</kbd>+<kbd>l</kbd>            |
  | Page up with focus on middle                 | Normal   | <kbd>Control</kbd>+<kbd>u</kbd>            |
  | Page down with focus on middle               | Normal   | <kbd>Control</kbd>+<kbd>d</kbd>            |
  | Exit from insert mode to normal              | Insert   | <kbd>j</kbd> <kbd>j</kbd>                  |
  | Exit from terminal mode                      | Terminal | <kbd>Esc</kbd>                             |
  | Sudo save                                    | Command  | <kbd>w</kbd> <kbd>!</kbd> <kbd>!</kbd>     |
  | Quit all                                     | Command  | <kbd>Shift</kbd>+<kbd>q</kbd>              |

> NOTE!<br>
> <kbd>a</kbd> <kbd>b</kbd> means "press <kbd>a</kbd> (release), then press <kbd>b</kbd>"<br>
> <kbd>a</kbd>+<kbd>b</kbd> means "press <kbd>a</kbd> (hold it), then press <kbd>b</kbd>"
