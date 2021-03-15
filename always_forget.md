# Always Forget
## Vim
### General
- `t`                            = until next (ie. `dta` == delete until next 'a')
- `T`                            = until previous
- `q:`                           = open commands window (see command history)

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
- `:tab split`                   = move current split into a new tab (don't destroy current split
- `<C-w>T`                       = move current split into a new tab (destory current split)

### Splits
- `:sp <filename>`               = create horizontal split from current file (or another file)
- `:vsp <filename>`              = create vertical split from current file (or another file)
- `<C-w>=`                       = equalize split sizes
- `<C-w>_`                       = max out split height
- `<C-w>|`                       = max out split width
- `<C-w>p`                       = close all splits except current
- `<C-w>r`                       = swap left/right or top/bottom split

### Search
- `/`                            = search forwards
- `?`                            = search backwards
- `:noh`                         = temporarily stop highlighting searches

### Macros
- `q<register>`                  = start recording to register
- `q `                           = stop recording
- `@<register>`                  = play macro at register

### Commands
- `:read <command>`              = read the output of a command into file (ie. `:read !ls *pdf`)
- `:norm <command>`              = run a normal mode command on the current line
- `:pclose`                      = close a scratch window

### Mapping
- `:<mode>map`                   = recursively map (`:map j k`, `:map d j` == map j to k, d will also be mapped to j)
- `:<mode>noremap`               = non-recursive map

### Registers
- `%`                            = current file
- `#`                            = alternate file for current window
- `:`                            = most recently executed command
- `.`                            = last inserted text
- `"`                            = last used register

### Modes
#### Insert
- `<C-r>`                        = insert text from register
- `<C-a>`                        = insert all text from last time in insert mode (`.` register)

### Plugin-specific
#### Surround
- `S<char>`                      = in visual select, surround with char
- `ys<motion><char>`             = surround motion'd text with char

#### Syntastic
- `:SyntasticToggleMode`         = toggle active and passive syntax check
- `:SyntasticCheck`              = explicitly check file
- `:SyntasticReset`              = remove location list (I use it for this but there's probably more to it)

## Tmux
- `:select-layout tiled`         = resize all windows to same size
- `:kill-session -t <session>`   = kill session
- `prefix n`                     = new window (not split)
- `prefix c`                     = goto next window
