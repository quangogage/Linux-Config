# Neovim Setup
This document will cover everything needed to get neovim configured how I like it!

I am also going to make note of anything I want to make sure I remember incase I have
to take a break for a while and may forget.

## Nvim Plugin Management
`:Lazy`  

## Important Keybinds

#### Buffer Navigation
- `s{char}{char}` - Search with leap. Fast code navigation.
- `<leader>s` - Search & replace prompt `:s/`
- `<leader>S` - Search & replace prompt for entire buffer `:S/`
- `<leader>/` - Fuzzy search in current buffer (Much nicer way of searching).

#### General Navigation
- `<leader>h` - Open tab to the left.
- `<leader>l` - Open tab to the right.
- `<leader>b` - Open filesystem browser (neotree).
    - `z` - Collapse all.

#### Window Management
- `<CTRL-w>s/v` - Split window horizontally or vertically.
- `<CTR>-w>h/j/k/l` - Switch to window in one of the directions.

#### Surround/Quotation Marks/Etc
[nvim-surround](https://github.com/kylechui/nvim-surround?tab=readme-ov-file#rocket-usage)
- `ys{motion}{text object}` - Surround text object with text.
    - `ysiw"` > `Hello` > `"Hello"`
- `cs{old}{new}` - Change surrounding text.
    - `cs"'` > `"Hello"` > `'Hello'`
- `ds{char}` - Delete surrounding text.
    - `ds"` > `"Hello"` > `Hello`
