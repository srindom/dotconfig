# VIM Setup

```
brew install neovim python nodejs mono cmake ripgrep
```

Install `vim-plug`
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Copy contents from `.vimrc` to `init.vim`:
```
cd ~/.config/nvim 
vim init.vim
:source %
:PlugInstall
```

Install You Complete Me
```
cd ~/.config/nvim/plugged/youcompleteme
python install.py
```
