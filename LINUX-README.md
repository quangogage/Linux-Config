# Linux Setup
This document will cover all info needed to get linux up and running with my personal config.
If for some reason anyone else ever reads this - I'm still a Linux noob so be nice.

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

## Multi-Monitor Setup
`sudo apt install arandr`  
`arandr`

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
