# My minimal Neovim
*based on [kickstart-modular.nvim](https://github.com/dam9000/kickstart-modular.nvim)* 

I started on kickstart, mangled it; moved to kickstart-modular, kept it mangled;
tried AstroNvim, liked it but still mangled with abstraction; moved back to kickstart-modular
for something lighter on my Debian 12 server where weirdly enough, I set it up pretty clean
for once...

I guess the journey of hacking it together, then letting someone structure it for me, and
now deciding how I'd like to manage it myself has really evolved my understanding.

> *Honestly though, I should just learn Lua like a real man - but fuck it for now*

You're free to clone this, rip it apart, and transform it for your own configuration :)

## Prequisites

- A Nerd Font ([JetBrains Mono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip))
- These software libraries:  `npm`
- These terminal/CLI tools: `lazygit` `ripgrep` `fzf`

## 🛠️ Installation

#### Make a backup of your current nvim and shared folder

1. Clone this repository into a separate directory
2. Copy contents of my `dotfiles/.config/nvim` into your `$HOME/.config/nvim` as desired

> Alternatively, `git sparse-checkout` is an option if you'd like to stay updated with my config
