# Installation
## Install vim-plug
```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

```

## Symbolic Link
run bash as Administrator
```sh
export MSYS=winsymlinks:nativestrict
cd
ln -s vimrc/.vimrc ./
ln -s vimrc/snipppets .vim/
```
