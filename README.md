# Linux-Config
This repo is to help me recreate my current linux configuration if needed in the future!  
In the chance anyone else ever reads this - Please be nice I'm very new to Linux :^)

# Installation
1. Install Ubuntu
2. Install [i3 Window Manager](https://i3wm.org/) `apt install i3`
3. Log out of Ubuntu, go to the settings menu in the logout screen, and enable the i3 desktop environment.
4. Login
5. Copy-paste .config in your home directory.

## Neovim Installation
```
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
sudo apt install ripgrep
```
###### Ripgrep is used for fuzzyfinding.

###### Replace unstable with stable if you're feeling like a cowardly beta male.

## Neovide Installation
Neovide has given me some troubles.   

Once it's installed, make sure to launch it with the `--novsync` tag.

## Multi-Monitor Setup
`sudo apt install arandr`  
`arandr`

## Co-pilot setup
Still trying this out for the first time. If I still have it in the future:  

`:Copilot signin`
`:Copilot enable`

## Nvim Plugin Management
`:Lazy`  
  
# Software
- OS: [Ubuntu](https://ubuntu.com/)
- Desktop Enviroment: [i3](https://i3wm.org/)
- Terminal: [Kitty](https://sw.kovidgoyal.net/kitty/conf/)
- Text Editor [Neovim](https://neovim.io/)
- (Optional) Text Editor GUI: [Neovide](https://github.com/neovide/neovide)



# Keybinds
There are obviously a lot so I won't be listing every single one - But I'll try to list the ones I feel like I would be most
likely to forget :^)

## i3 General.
- `CMD+d` - Open application launcher
- `CMD+enter` - Open terminal

## i3 Window Motions.
I've rebound all of these to match their Vim navigation equivalents.
- `CMD+j` - Focus window down
- `CMD-k` - Focus window up
- `CMD-l` - Focus window right
- `CMD-h` - Focus window left  

**Hold `SHIFT` in combination with these commands to move windows. 

## Neovim.
- `<CMD-p>` - Search for files in directory.
- `<CTRL-Enter>` - Autocomplete github copilot
- `<TAB>` - Autocomplete suggestion.
- `:Tabularize/{char}` - Line up highlighted code based on the char.
- `<F6>` - Launch directory as love.
- `<leader>v` - Display file symbols.
    - `W` - Collapse all.
- `<leader>h` - Open tab to the left.
- `<leader>l` - Open tab to the right.
- `<leader>b` - Open filesystem browser (neotree).
    - `z` - Collapse all.
- `<CTRL-k>` - View signature documentation.
- `<CTRL-s>` - Fuzzy find in current directory.
