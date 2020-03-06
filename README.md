Various configurations for my personal terminal configuration.

## Installation

### Use Brewfile to install existing homebrew packages
Install homebrew then:
`brew bundle` will install the packages

### Powerlevel9k font
Brew bundle above will install powerlevel, but the font does not come with it. Follow the instructions here: https://github.com/Powerlevel9k/powerlevel9k/wiki/Install-Instructions#step-2-install-a-powerline-font

### Neovim as Git mergetool
`git config --global merge.tool vimdiff`
`git config --global mergetool.vimdiff.path nvim`
