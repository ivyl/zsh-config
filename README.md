ZSH configuration files
=======================

My zsh configuration files. Should be reusable.

## Requirements
I am using `less` as a pager and [neovim](https://neovim.io/) as default
editor.


## Installation
Just clone to `.config/zsh/` and link `~/.zshrc` to `~/.config/zsh/zshrc`
(or to your `#XDG_CONFIG_HOME`, it works from anywhere).

Do not forget to change your default shell via `chsh`.

## Own / per host configuration
Want to override some configuration and still want updates? Put it in
~/.zsh/custom. It won't be overwritten.

## What is done?

### Keybinding
* vi mode (cursor changes color basing on a mode you are in)
* ^p ^n for history navigation
* ^f to eddit current line in text editor

### Prompt
* nice and sleek
* has git branch && stage status

### Usable functions
* `zmv` enabled
* `lspath` - show ls -ld for all dirs on path to given file
* few aliases (see `aliases.zsh`), e.g.:
  - `l` is `ls -lFh`
  - `la` is `l -A`
  - `e`, `vi`, `vim` are `nvim`

### Tother Features
* ETIME variable contains execution time of last command in seconds.
* TAB completion, first pus shows possibilities, next pushes cycles through them
* Autocorrection - type `vim RAEDME.md` and shell will prompt you about
  correction, also works with tab-ing dirs.
* `~/bin` is added to your PATH
* `cd ...`  as `../..` and `cd ....` as `../../..` (actually `...` is a
  global alias, it not limited only to `cd`, try it with `ls`).
* [RVM](http://rvm.beginrescueend.com/) support
* [rbenv](https://github.com/sstephenson/rbenv) support
* [fzf](https://github.com/junegunn/fzf) support
