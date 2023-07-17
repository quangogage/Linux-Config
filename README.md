# Linux-Config
This repo is to help me recreate my current linux configuration if needed in the future!  
In the chance anyone else ever reads this - Please be nice I'm very new to Linux :^)

## Primary Software
- OS: [Ubuntu](https://ubuntu.com/)
- Desktop Enviroment: [i3](https://i3wm.org/)
`apt install i3`
- Terminal: Gnome terminal...
- Text Editor [Neovim](https://neovim.io/)
```
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
```
###### Replace unstable with stable if you're feeling like a coward beta male.

## Neovim config
Currently using the [Kickstart](https://github.com/nvim-lua/kickstart.nvim) as my base template with some minor modifications.  
In order to use this neovim config, place `init.lua` from this repo into `~/.config/nvim/`

## Neovide
Right now I'm trying out the [Neovide](https://github.com/neovide/neovide) GUI.  
If you want to try it out, install their latest release's AppImage from their github, and place it in `~/My Programs`.
That, alongside the custom alias in `.bashrc` will allow the ability to run it from the terminal.

## Gnome terminal config
###### I know, I am ashamed using this terminal...
**View > Preferences > Profiles > $UNNAMED**
- Check custom font
Using [IBM Plex Mono](https://fonts.google.com/specimen/IBM+Plex+Mono)
- Cell spacing: 1.015 x height
