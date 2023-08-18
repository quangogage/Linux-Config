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
```

## Neovide Installation
Neovide has given me some troubles. 
Once it's installed, make sure to launch it with the `--novsync` tag.

## Multi-Monitor Setup
`sudo apt install arandr`  
`arandr`

# Software
- OS: [Ubuntu](https://ubuntu.com/)
- Desktop Enviroment: [i3](https://i3wm.org/)
- Terminal: [Kitty](https://sw.kovidgoyal.net/kitty/conf/)
- Text Editor [Neovim](https://neovim.io/)
- (Optional) Text Editor GUI: [Neovide](https://github.com/neovide/neovide)

###### Replace unstable with stable if you're feeling like a cowardly beta male.

## Neovim config
Currently using the [Kickstart](https://github.com/nvim-lua/kickstart.nvim) as my base template with some minor modifications.  

## Gnome terminal config
###### I know, I am ashamed using this terminal...
**View > Preferences > Profiles > $UNNAMED**
- Check custom font
Using [IBM Plex Mono](https://fonts.google.com/specimen/IBM+Plex+Mono)
- Cell spacing: 1.015 x height

# Keybinds
There are obviously a lot so I won't be listing every single one - But I'll try to list the ones I feel like I would be most
likely to forget :^)

## i3 General.
- `CMD+d` - Open application launcher
- `CMD+enter` - open terminal

## i3 Window Motions.
I've rebound all of these to match their Vim navigation equivalents.
- `CMD+j` - Focus window down
- `CMD-k` - Focus window up
- `CMD-l` - Focus window right
- `CMD-h` - Focus window left
**Hold `SHIFT` in combination with these commands to move windows. 
