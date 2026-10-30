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
- save tmux session state to disk
- git diff viewer or nicer cli tool
- learn to navigate opencode tabs
- git blame viewer or nicer cli tool
- AST folding in neovim
- nvim json pretty print
- skill idea: search for code in a public github repo by description and output a permalink
