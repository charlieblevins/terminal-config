# Key Commands Cheat-sheet

## TMUX
**lead**: CTRL+a

**lead %**: Split window horizontally (new pane on right of current)
**lead "**: Split window vertically (new pane below current)
**lead ,**: Rename the current window
**lead ;**: Move to the previously active pane
**lead !**: break pane to a new window
**lead c**: create new window and move to it
**lead o**: focus the next pane
**lead n**: focus the next window
**lead d**: exit session

## Opencode
**lead**: CTRL+x

**/mcp**: list mcp connections
**/cd**: change working directory


## NeoVim

**C-w l**: move to right split
**C-w h**: move to left split
**]q**: runs :cnext - moves in quickfix list without moving cursor
**[q**: runs :cprev - moves in quickfix list without moving cursor

**:tabnew**: open an empty buffer in a new tab
**:s/\\r\\n/\r/g**: replace all escaped newlines with real ones

### Telescope (within neovim)
- reference: https://github.com/nvim-telescope/telescope.nvim#default-mappings

**lead**: SPACE

**lead ff**: search for file within working directory 
**lead fg**: search within files within working directory 
**C-t**: go to file selection in a new tab
**lead fF**: same as search for file but with ignored files
**lead fG**: same as search within files but with ignored files

### LSP (Language Server Protocol) within NeoVim
**lead**: g

**lead rr**: list references in quickfix
**lead ra**: code actions menu

**K**: show type under cursor
**C-]**: go to definition of symbol under cursor
**C-w d**: open floating window with full error message
**] d**: jump to next diagnostic
