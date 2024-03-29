# Installation

## Install Neovim

## ~~Install vim-plug~~
```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

```

## Configuration

### Symbolic Link for Snippet
run bash as Administrator / root

#### Windows
```sh
export MSYS=winsymlinks:nativestrict
cd ~/AppData/Local/nvim/
ln -s ~/vimrc/snippets/ ./
echo "vim.cmd('source ~/vimrc/plug.vim')" >> init.lua
echo "vim.cmd('source ~/vimrc/nvim.vim')" >> init.lua
```

#### Linux and MacOS
```sh
cd ~/.config/nvim
ln -s ~/vimrc/snippets/ ./
echo "vim.cmd('source ~/vimrc/plug.vim')" >> init.lua
echo "vim.cmd('source ~/vimrc/nvim.vim')" >> init.lua
```

### Linux / MacOS (Bash)
```
mkdir ~/.config
mkdir ~/.config/nvim
echo set runtimepath^=~/.vim runtimepath+=~/.vim/after > ~/.config/nvim/init.vim
echo "let &packpath = &runtimepath" >> ~/.config/nvim/init.vim
echo source ~/vimrc/.vimrc >> ~/.config/nvim/init.vim
```

### Windows (Power Shell)
```
mkdir ~\AppData\Local\nvim\
Set-Content ~\AppData\Local\nvim\init.vim "set runtimepath^=~/.vim runtimepath+=~/.vim/after"
Add-Content ~\AppData\Local\nvim\init.vim "let &packpath = &runtimepath" 
Add-Content ~\AppData\Local\nvim\init.vim "source ~/vimrc/.vimrc" 
```

## Fonts
[Fira Code Patched Fonts](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Medium/complete/Fira%20Code%20Medium%20Nerd%20Font%20Complete%20Mono.ttf)

