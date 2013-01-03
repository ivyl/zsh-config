#ZSH configuration files
My zsh configuration files. Should be reusable.

## Requirements
I am using less as a pager and [vim](http://www.vim.org/) as default editor. Rest shoud be reusable.

## Own configuration
Want to override some configuration and still want updates? Put it in ~/.zsh/custom. It won't be overwritten.

## Installation
Just clone to .zsh/ and link ~/.zshrc to ~/.zsh/zshrc and ~/.zshenv to ~/.zsh/zshenv
Do not forget to change your default shell (chsh command).

## What is done?

### Keybinding
* vi mode
* ctrl-p ctrl-n history navigation

### Prompt
* nice and sleek
* currsor changes color when not in inser mode (works in tmux!)

### Functions
* zmv enabled
* lspath - show ls -ld for all dirs on path to given file
* few aliases (see in files, example: e and vi lauches vim, la stands for ls with some options, etc.)

### Features
* TAB completion, first pus shows possibilities, next pushes cycles through them
* Autocorrection - type vim RAEDME.md and shell will prompt you about correction, also works with tab-ing dirs.
* ~/.bin is added to your PATH
* cd ...  as ../.. and cd .... as ../../.. (actually ... is global alias, it does not narrow only to cd, try with ls).
* [RVM](http://rvm.beginrescueend.com/) support
* [rbenv](https://github.com/sstephenson/rbenv) support

### Machine based customization
* .zsh/custom.zsh - want add aliases for your ssh or change prompt and still be able to painlessly update? do your customizations here
