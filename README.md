# Installation
## Install vim-plug
```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

```

## Symbolic Link
run bash as Administrator / root
```sh
# Only on Windows
export MSYS=winsymlinks:nativestrict
# All OS
cd
ln -s vimrc/.vimrc ./
ln -s vimrc/snipppets .vim/
```

## Vim to Neovim
```
touch ~/.config/nvim/init.vim
nvim ~/.config/nvim/init.vim
```
paste this line
```
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
```

## Fonts
[Fira Code Patched Fonts](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Medium/complete/Fira%20Code%20Medium%20Nerd%20Font%20Complete%20Mono.ttf)

