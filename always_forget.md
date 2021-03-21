# Always Forget
## Vim
### Nouns
- `t`                                         = until next (ie. `dta` == delete until next 'a')
- `T`                                         = until previous
- `iw`                                        = inner word
- `it`                                        = inner tag
- `ip`                                        = inner paragraph
- `as`                                        = a sentance

### Marks
- `m<a-z>`                                    = set mark
- `m<A-Z>`                                    = set mark that persists across files (jumping to it will change files if needed)
- `'<a-z>`                                    = goto line of mark
- ```<a-z>``                                  = goto exact position of mark
- `'[<a-z>`                                   = goto next line of mark
- `']<a-z>`                                   = goto previous line of mark
- `'d'<a-z>`                                  = delete to mark (inclusive w/ full line)
- `:marks`                                    = list all marks
- `:marks aB`                                 = list marks a, B
- `:delmarks a`                               = delete mark a
- `:delmarks a-d`                             = delete mark a through d
- `:delmarks!`                                = delete all lowercase marks

### Jumping - rename me
- `g;`                                        = goto previous edit (last atomic unit in insert mode)
- `g,`                                        = goto next edit (last atomic unit in insert mode)

### Folding
- `zf`                                        = create fold from current selection
- `zd`                                        = delete fold from current selection
- `za`                                        = toggle current fold
- `zA`                                        = toggle current fold and all nested folds (all open or all closed)
- `zo`                                        = open current fold
- `zO`                                        = open current fold and all nested folds
- `zc`                                        = close current fold
- `zC`                                        = close current fold and all nested folds
- `zm`                                        = close one level of all folds
- `zM`                                        = close all folds
- `zr`                                        = open one level of all folds
- `zR`                                        = open all folds
- `zn`                                        = open all folds (works with below command)
- `zN`                                        = set folds to the way they were before `zn`
- `[z`                                        = top line of this fold
- `]z`                                        = bottom line of this fold
- `zk`                                        = goto previous fold
- `zj`                                        = goto next fold
- `zE`                                        = remove all folds

### Tab 
- `:tabedit <filename>` (:tabe)               = create new tab (with file)
- `:tabn`                                     = move tab to the right
- `:tabp`                                     = move tabe to the left
- `gt`                                        = goto next tab
- `gT`                                        = goto previous tab
- `:tabm`                                     = move current tab all the way to the right
- `:drop <filename>`                          = replace current tab with file
- `:tab split`                                = move current split into a new tab (don't destroy current split
- `<C-w>T`                                    = move current split into a new tab (destory current split)

### Splits
- `:sp <filename>`                            = create horizontal split from current file (or another file)
- `:vsp <filename>`                           = create vertical split from current file (or another file)
- `<C-w>=`                                    = equalize split sizes
- `<C-w>_`                                    = max out split height
- `<C-w>|`                                    = max out split width
- `<C-w>o`                                    = close all splits except current
- `<C-w>r`                                    = swap left/right or top/bottom split
- `<C-w>t`                                    = goto top left window
- `<C-w>b`                                    = goto bottom right window

### Search
- `/`                                         = search forwards
- `?`                                         = search backwards
- `%`                                         = find matching parentheses
- `:noh`                                      = temporarily stop highlighting searches
- `<C-o>`                                     = go back to where you started searching

### Substituting
- `:s/<old>/<new>`                            = substitute first occurence of old with new in the current line
- `:s/<old>/<new>/g`                          = substitute all old's with new in the current line
- `:#,#s/<old>/<new>/g`                       = substitute all old's with new in between lines #
- `:%s/<old><new>/g`                          = substitute all old's with new
- `:%s/<old><new>/gc`                         = substitute all old's with new and ask for confirmation on each

### Macros
- `q<register>`                               = start recording to register
- `q `                                        = stop recording
- `@<register>`                               = play macro at register

### Commands
- `:read <command>`                           = read the output of a command into file (ie. `:read !ls *pdf`)
- `:norm <command>`                           = run a normal mode command on the current line
- `q:`                                        = open commands window (see command history)
- `:pclose`                                   = close a scratch window

### Mapping
- `:<mode>map`                                = recursively map (`:map j k`, `:map d j` == map j to k, d will also be mapped to j)
- `:<mode>noremap`                            = non-recursive map

### Registers
- `%`                                         = current file (shown as `%a` in buffers)
- `#`                                         = alternate file for current window
- `:`                                         = most recently executed command
- `.`                                         = last inserted text
- `"`                                         = last used register
- `*`                                         = clipboard (`"*y<noun>` == yank to clipboard)

### Buffers
- `:ls`                                       = list buffers
- `:bp`                                       = goto previous buffer
- `:bn`                                       = goto next buffer
- `:b<number>`                                = jump to specific buffer
- `:bd`                                       = delete current buffer

### Modes
#### Insert
- `<C-r>`                                     = insert text from register
- `<C-a>`                                     = insert all text from last time in insert mode (`.` register)

### Plugin-specific
#### Vundle
- `:PluginInstall`                            = install all plugins
- `:PluginClean`                              = clean plugins (works when removing plugins)

#### Surround
- `S<char>`                                   = in visual select, surround with char
- `ys<noun><char>`                            = surround noun text with char

#### Syntastic
- `:SyntasticToggleMode`                      = toggle active and passive syntax check
- `:SyntasticCheck`                           = explicitly check file
- `:SyntasticReset`                           = remove location list (I use it for this but there's probably more to it)

## Tmux
- `:select-layout tiled`                      = resize all windows to same size
- `:kill-session -t <session>`                = kill session
- `prefix n`                                  = new window (not split)
- `prefix c`                                  = goto next window

## Python
### pip
- `python -m venv --system-site-packages env` = create env starting with global installs

## Git
- `xcode-select --install`                    = for when you git uninstalls on OS upgrades

## Grep
- `grep 'to' example.txt`                     = search for lines with 'to' in example.txt
- `grep -i 'to' example.txt                   = search for lines with 'to' in example.txt, ignore case
- `grep -iw 'to' example.txt`                 = search for lines with the exact word 'to' in example.txt, ignore case
- `grep -iv 'to' example.txt`                 = search for lines without the word 'to' in example.txt, ignore case
- `grep -ic 'to' example.txt`                 = search for lines with the word 'to' in example.txt and output the count of times found, ignore case
- `grep -R 'to' /example/`                    = search for lines with the word 'to' recursively in the example directory
- `grep -Rh 'to' /example/`                   = search for lines with the word 'to' recursively in the example directory, don't show file pathes
- `grep -Rl 'to' /example/`                   = search for lines with the word 'to' recursively in the example directory, only show file pathes
- `grep -RL 'to' /example/`                   = search for lines with the word 'to' recursively in the example directory, only show file pathes where 'to' is not found
