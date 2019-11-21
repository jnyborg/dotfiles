# dotfiles
My settings files for editing all matters of text files in extreme comfort.

## Vim
Install Vundle
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Setup symbolic link to `.vimrc` via the command
```
ln -sf $(pwd)/vim/.vimrc ~/.vimrc
```
And zshrc
```
ln -sf $(pwd)/zsh/.zshrc ~/.zshrc
```

And similarly for i3
```
ln -sf $(pwd)/i3/config ~/.config/i3/config
ln -sf $(pwd)/i3/i3blocks.conf ~/.config/i3/i3blocks.conf
```
