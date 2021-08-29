# VIM Setup

```
brew install neovim python nodejs mono cmake ripgrep
cd ~/.config/nvim 
vim init.vim
```

Copy contents from `.vimrc` to `init.vim`:
```
:source %
:PlugInstall
```

Install You Complete Me
```
cd ~/.config/nvim/plugged/youcompleteme
python install.py
```
