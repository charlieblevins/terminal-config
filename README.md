Various configurations for my personal terminal configuration.

## Installation

### Use Brewfile to install existing homebrew packages
Install homebrew then:
`brew bundle` will install the packages

### Intel One Mono font
Download and install all variants from intel

### Neovim as Git mergetool
`git config --global merge.tool vimdiff`
`git config --global mergetool.vimdiff.path nvim`

### Clone tmux catppuccin theme into tmux

```
mkdir -p ~/.config/tmux/plugins/catppuccin
git clone -b v2.1.3 https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux
```

Run `tmux kill-server` if tmux is running.

## TODO
- open new tmux pane/window in same directory as current
