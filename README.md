#ZSH configuration files
My zsh configuration files. Should be reusable.

##Requirements
I am using [most](http://www.jedsoft.org/most/) as a pager and [vim](http://www.vim.org/) as default editor. Rest shoud be reusable.

##Own configuration
Want to override some configuration and still want updates? Put it in ~/.zsh/custom. It won't be overwritten.

##installation
Just copy .zsh/ and .zshrc to ~
or run install.sh

##What is done?
* HOME, END, DEL, INSERT work as you would expect.
* PAGEUP, PAGEDOWN launches history search
* cd ...  as ../.. and cd .... as ../../.. (actually ... is global alias, it does not narrow only to cd, try with ls).
* TAB completion, first pus shows possibilities, next pushes cycles through them
* Autocorrection - type vim RAEDME.md and shell will prompt you about correction, also works with tab-ing dirs.
* ~/.bin is added to your PATH
* few aliases (see in files, example: e and vi lauches vim, la is for ls with some options)
* refresh - reload you configuration without messing with restarting shell
* lspath - show ls -ld for all dirs on path to given file
* .zsh/custom - want add aliases for your ssh or change prompt and still be able to painlessly update? do your customizations here
* nice prompt
* [RVM](http://rvm.beginrescueend.com/) support
