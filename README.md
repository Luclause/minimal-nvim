# My minimal Neovim
*based on [kickstart-modular.nvim](https://github.com/dam9000/kickstart-modular.nvim)* 

When I started my Neovim journey, I hacked things together with kickstart and created a mess.
It didn't matter when I tried refactoring with kickstart-modular, I had no clue what I was doing.

> *Maybe I should have learned Lua like a real man, things could have been different.*

When I tried AstroNvim, the structure, ease-of-use, and overall feel was what I needed - 
until it wasn't. It was tedious mangling with abstraction any time I wanted to change something.

> *I read more documentation for AstroNvim than for the plugin I wanted to install...*

When I set up a Debian 12 VM, I didn't need all the juice AstroNvim provided so I put this
minimal nvim configuration together with kickstart-modular again.

> *And my god, this is clean - I did most of it myself and things finally make sense*

## ⭕ Prequisites

- [Neovim 0.8.0+](https://neovim.io) 
- A Nerd Font (I use [JetBrains Mono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip))
- These software libraries: `npm`
- These terminal/CLI tools: `lazygit` `ripgrep` `fzf`

## 🛠️ Installation

1. Backup your current neovim config 

```shell
cp -r ~/.config/nvim ~/nvim_bkp
```

2. Clean out your current neovim config 


```shell
rm -rf ~/.config/nvim && rm -rf ~/.local/share/nvim
```

3. Git clone this repository
```shell
git clone git@github.com:Luclause/minimal-nvim.git ~/.config/nvim
```

4. Start Neovim

```shell
nvim
```

#### To restore your backup: 

```shell
rm -rf ~/.config/nvim && cp -r ~/nvim_bkp ~/.config/nvim`
```

## 📝 TODO

- [ ] Python LSP, DAP, Venv Selector
- [ ] AI code companion (local & remote)
- [ ] Codesnap

