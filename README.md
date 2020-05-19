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


## Nvim
Install nvim from snap
```
https://github.com/neovim/neovim/wiki/Installing-Neovim#snap
```
Symlink init.vim
```
ln -sf $(pwd)/nvim/init.vim ~/.config/nvim/init.vim
ln -sf /home/jnyborg/git/dotfiles/nvim/coc-settings.json ~/.config/nvim/coc-settings.json
```
Install vim-pluc
```
https://github.com/junegunn/vim-plug#neovim
```

For coc.nvim: Install nvm
```
https://github.com/nvm-sh/nvm#install--update-script
```
And install node
```
nvm install --lts
```

Use Roboto Mono NERD font.
