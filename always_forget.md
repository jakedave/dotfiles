# Always Forget
## Vim
### Folding
- `zf`                           = create fold from current selection
- `zd`                           = delete fold from current selection
- `za`                           = toggle current fold
- `zM`                           = close all folds
- `zR`                           = open all folds
- `zk`                           = goto previous fold
- `zj`                           = goto next fold

### Tab 
- `:tabedit <filename>` (:tabe)  = create new tab (with file)
- `:tabn`                        = move tab to the right
- `:tabp`                        = move tabe to the left
- `gt`                           = goto next tab
- `gT`                           = goto previous tab
- `:tabm`                        = move current tab all the way to the right
- `:drop <filename>`             = replace current tab with file

### Splits
- `:sp <filename>`               = create horizontal split from current file (or another file)
- `:vsp <filename>`              = create vertical split from current file (or another file)
- `<C-w>=`                       = equalize split sizes

### Search
- `:noh`                         = temporarily stop highlighting searches

### Macros
- `q<register>`                  = start recording to register
- `q `                           = stop recording
- `@<register>`                  = play macro at register

### Plugin-specific
#### Surround
- `S<char>`                      = in visual select, surround with char

## Tmux
- `:select-layout tiled`         = resize all windows to same size
- `prefix n`                     = new window (not split)
- `prefix c`                     = goto next window
