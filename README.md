## My nvim config 

My NeoVim configuration using Lazy package manager.

This contain some different configuration for my work environment.

### Pre-requisites

- Install [ripgrep](https://github.com/BurntSushi/ripgrep)
  - `sudo apt/brew install ripgrep`
- Install [LuaRocks](https://github.com/luarocks/luarocks)
  - `sudo apt/brew install luarocks` 
- And, of course, have neovim installed.

### Usage

Clone this repository into your .config/nvim folder:
```
git clone https://github.com/duhaesbaert/.dotfiles ~/.config/nvim
```

If you wish to save the current state of your vim configuration, clone/backup the following:
```
mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```
