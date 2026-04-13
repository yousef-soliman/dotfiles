# dotfiles

Personal dotfiles for macOS — covers Zsh, Ghostty, WezTerm, Tmux, Neovim, and Zed.

---

## Table of Contents

- [Zsh Shell](#zsh-shell)
- [Ghostty Terminal](#ghostty-terminal)
- [WezTerm](#wezterm)
- [Tmux](#tmux)
- [Neovim](#neovim)
- [Zed](#zed)

---

## Zsh Shell

### Keybindings

| Key | Action |
|---|---|
| `Up` / `Ctrl+P` | History search backward (substring match) |
| `Down` / `Ctrl+N` | History search forward (substring match) |
| `Right` | Move cursor right (accepts suggestion at end of line) |
| `Ctrl+Left` | Move backward one word |
| `Ctrl+Right` | Move forward one word |
| `Ctrl+A` | Move to beginning of line |
| `Ctrl+E` | Execute current line |
| `Ctrl+R` | Fuzzy search history (fzf popup) |
| `Alt+W` | Kill selected region |
| `Esc Esc` | Prepend `sudo` to current/previous command |

### Aliases

| Alias | Command |
|---|---|
| `ls` | `ls --color` |
| `ll` | `ls -al --color` |
| `vim` | `nvim` |
| `c` | `clear` |
| `k` | `kubectl` |
| `glb` | `git log --graph --simplify-by-decoration --pretty=format:'%d' --all` |
| `cd` | `zoxide` (smart jump) |
| `x <file>` | Extract any archive (zip, tar.gz, rar, 7z, etc.) |
| `copypath` | Copy current directory path to clipboard |
| `copyfile <file>` | Copy file contents to clipboard |

### Git Aliases (OMZ git plugin)

| Alias | Command |
|---|---|
| `g` | `git` |
| `ga` | `git add` |
| `gaa` | `git add --all` |
| `gc` | `git commit` |
| `gcm` | `git commit -m` |
| `gco` | `git checkout` |
| `gcb` | `git checkout -b` |
| `gsw` | `git switch` |
| `gd` | `git diff` |
| `gds` | `git diff --staged` |
| `gst` | `git status` |
| `gl` | `git pull` |
| `gp` | `git push` |
| `glog` | `git log --oneline --decorate --graph` |
| `grh` | `git reset HEAD` |
| `grhh` | `git reset --hard HEAD` |
| `gsta` | `git stash push` |
| `gstp` | `git stash pop` |

### Forgit — Interactive Git (fzf-powered)

| Alias | Action |
|---|---|
| `gfa` | Interactive `git add` |
| `gfl` | Interactive `git log` |
| `gfd` | Interactive `git diff` |
| `gfco` | Interactive `git checkout` |
| `gfsp` | Interactive `git stash pop` |
| `gfclean` | Interactive `git clean` |
| `gfcb` | Interactive branch checkout |

### Kubectl Aliases (OMZ kubectl plugin)

| Alias | Command |
|---|---|
| `k` | `kubectl` |
| `kaf` | `kubectl apply -f` |
| `kdel` | `kubectl delete` |
| `kd` | `kubectl describe` |
| `kg` | `kubectl get` |
| `kga` | `kubectl get all` |
| `kgp` | `kubectl get pods` |
| `kgs` | `kubectl get services` |
| `kgn` | `kubectl get nodes` |
| `kl` | `kubectl logs` |
| `klf` | `kubectl logs -f` |
| `kex` | `kubectl exec -it` |
| `kns` | `kubectl config set-context --current --namespace` |

### Go Aliases (OMZ golang plugin)

| Alias | Command |
|---|---|
| `gob` | `go build` |
| `got` | `go test` |
| `gor` | `go run` |
| `goc` | `go clean` |
| `goi` | `go install` |
| `gog` | `go get` |

### Tmux Aliases (OMZ tmux plugin)

| Alias | Command |
|---|---|
| `ta` | `tmux attach` |
| `tl` | `tmux list-sessions` |
| `ts <name>` | `tmux new-session -s <name>` |
| `tksv` | `tmux kill-server` |
| `tkss <name>` | `tmux kill-session -t <name>` |

### macOS Utilities (OMZ macos plugin)

| Command | Action |
|---|---|
| `tab` | Open current directory in a new Finder tab |
| `ofd` | Open Finder at current directory |
| `pfd` | Print Finder's current directory |
| `cdf` | `cd` to Finder's current directory |
| `pushdf` | Push Finder's current directory to stack |
| `man-preview <cmd>` | Open man page in Preview.app |

---

## Ghostty Terminal

**Leader key:** `Ctrl+A`

### Splits

| Shortcut | Action |
|---|---|
| `Ctrl+A > -` | New split below |
| `Ctrl+A > =` | New split right |
| `Ctrl+A > z` | Toggle zoom current pane |

### Tabs

| Shortcut | Action |
|---|---|
| `Ctrl+A > c` | New tab |
| `Ctrl+A > x` | Close current pane/tab |
| `Ctrl+A > p` | Previous tab |
| `Ctrl+A > n` | Next tab |

### Pane Navigation

| Shortcut | Action |
|---|---|
| `Ctrl+H` | Go to left pane |
| `Ctrl+J` | Go to bottom pane |
| `Ctrl+K` | Go to top pane |
| `Ctrl+L` | Go to right pane |

### Pane Resize

| Shortcut | Action |
|---|---|
| `Alt+H` | Resize pane left |
| `Alt+J` | Resize pane down |
| `Alt+K` | Resize pane up |
| `Alt+L` | Resize pane right |

### Other

| Shortcut | Action |
|---|---|
| `F10` | Toggle fullscreen |
| `Cmd+R` | Reload config |

---

## WezTerm

**Leader key:** `Ctrl+A`

> WezTerm has smart Vim detection — `Ctrl+hjkl` and `Alt+hjkl` are passed through to Neovim when it's focused, and act as pane navigation/resize otherwise.

### Splits

| Shortcut | Action |
|---|---|
| `Ctrl+A > -` | New split below |
| `Ctrl+A > =` | New split right |
| `Ctrl+A > z` | Toggle zoom current pane |
| `Ctrl+A > Space` | Rotate panes clockwise |
| `Ctrl+A > 0` | Pane select / swap with active |

### Tabs

| Shortcut | Action |
|---|---|
| `Ctrl+A > c` | New tab |
| `Ctrl+A > x` | Close current pane (with confirm) |
| `Ctrl+A > p` | Previous tab |
| `Ctrl+A > n` | Next tab |

### Pane Navigation (Vim-aware)

| Shortcut | Action |
|---|---|
| `Ctrl+H` | Go to left pane (or pass to Neovim) |
| `Ctrl+J` | Go to bottom pane (or pass to Neovim) |
| `Ctrl+K` | Go to top pane (or pass to Neovim) |
| `Ctrl+L` | Go to right pane (or pass to Neovim) |

### Pane Resize (Vim-aware)

| Shortcut | Action |
|---|---|
| `Alt+H` | Resize pane left (or pass to Neovim) |
| `Alt+J` | Resize pane down (or pass to Neovim) |
| `Alt+K` | Resize pane up (or pass to Neovim) |
| `Alt+L` | Resize pane right (or pass to Neovim) |

### Other

| Shortcut | Action |
|---|---|
| `Ctrl+A > Enter` | Enter copy mode (vi-style) |
| `F10` | Toggle fullscreen |

---

## Tmux

**Prefix:** `Ctrl+A`

### Pane Navigation (vim-tmux-navigator)

| Shortcut | Action |
|---|---|
| `Ctrl+H` | Go to left pane (works across Vim/Neovim) |
| `Ctrl+J` | Go to bottom pane |
| `Ctrl+K` | Go to top pane |
| `Ctrl+L` | Go to right pane |
| `Ctrl+\` | Go to previous pane |

### Pane Resize

| Shortcut | Action |
|---|---|
| `Prefix + Ctrl+H` | Resize pane left |
| `Prefix + Ctrl+J` | Resize pane down |
| `Prefix + Ctrl+K` | Resize pane up |
| `Prefix + Ctrl+L` | Resize pane right |

### Window Management

| Shortcut | Action |
|---|---|
| `Ctrl+Shift+Left` | Move window left |
| `Ctrl+Shift+Right` | Move window right |

### Session / Misc

| Shortcut | Action |
|---|---|
| `Prefix + r` | Reload tmux config |
| `Prefix + o` | Open current pane path in Finder |
| `Prefix + e` | Kill all other panes |

---

## Neovim

**Leader:** `Space` (LazyVim)

### Pane / Split Navigation (smart-splits)

| Key | Action |
|---|---|
| `Ctrl+H/J/K/L` | Move between splits (works across Tmux) |
| `Ctrl+\` | Move to previous split |
| `Alt+H/J/K/L` | Resize splits |
| `Leader Leader H/J/K/L` | Swap buffer with adjacent split |

### File & Search (Telescope)

| Key | Action |
|---|---|
| `Leader ff` | Find files |
| `Leader fg` | Live grep |
| `Leader fs` | Live grep with args |
| `Leader fw` | Grep word under cursor |
| `Leader fb` | Buffers |
| `Leader fr` | Recent files |

### Buffers & Tabs

| Key | Action |
|---|---|
| `Leader bd` | Close buffer |
| `Leader bb` | Switch to other buffer |
| `[b` / `]b` | Previous / next buffer |

### LSP

| Key | Action |
|---|---|
| `gd` | Go to definition |
| `gr` | References |
| `gI` | Go to implementation |
| `K` | Hover docs |
| `Leader ca` | Code actions |
| `Leader cr` | Rename symbol |
| `Leader cd` | Line diagnostics |
| `]d` / `[d` | Next / previous diagnostic |

### Git

| Key | Action |
|---|---|
| `Leader gg` | Lazygit |
| `Leader gd` | Diff this |
| `]h` / `[h` | Next / previous hunk |
| `Leader ghs` | Stage hunk |
| `Leader ghr` | Reset hunk |
| `Leader ghp` | Preview hunk |
| `Leader ghb` | Blame line |

### UI Toggles

| Key | Action |
|---|---|
| `Leader e` | File explorer |
| `Leader uf` | Toggle autoformat |
| `Leader us` | Toggle spelling |
| `Leader uw` | Toggle word wrap |
| `Leader un` | Toggle line numbers |
| `Leader ul` | Toggle relative numbers |

---

## Zed

**Leader:** `Space` (vim mode)

### Pane Navigation

| Key | Action |
|---|---|
| `Ctrl+H/J/K/L` | Move between panes |
| `Ctrl+/` | Toggle bottom dock (terminal) |
| `Ctrl+\` | Toggle right dock (AI assistant) |
| `Cmd+K` | Toggle right dock (AI assistant) |

### Tabs / Buffers

| Key | Action |
|---|---|
| `Shift+H` | Previous tab |
| `Shift+L` | Next tab |
| `Space 1–9` | Jump to tab by number |
| `Space 0` | Jump to last tab |
| `Space ,` | Tab switcher |
| `Space bb` | Alternate file (toggle last) |
| `Space bd` | Close active tab |
| `Space bq` | Close inactive tabs |
| `Space bn` | New file |
| `[b` / `]b` | Previous / next buffer |

### File Explorer (Project Panel)

| Key | Action |
|---|---|
| `Space e` | Toggle file explorer |
| `h/j/k/l` | Navigate |
| `Enter` / `o` | Open file |
| `a` / `%` | New file |
| `A` | New directory |
| `r` | Rename |
| `d` / `D` | Delete |
| `x` | Cut |
| `c` | Copy |
| `p` | Paste |
| `/` | Search in directory |
| `q` | Close panel |

### Search & Navigation

| Key | Action |
|---|---|
| `Space space` / `Space ff` | File finder |
| `Space sg` / `Space /` | Search in all files |
| `Space sb` | Search in current buffer |
| `Space sw` | Search word under cursor |
| `Space ss` | Outline |
| `Space sd` | Diagnostics |
| `Space fp` | Recent projects |
| `gr` | Find all references |
| `]d` / `[d` | Next / previous diagnostic |
| `]h` / `[h` | Next / previous git hunk |
| `Ctrl+D` / `Ctrl+U` | Scroll half page (centered) |
| `s` | Sneak forward |
| `S` | Sneak backward |

### Git

| Key | Action |
|---|---|
| `Space gg` | Lazygit |
| `Space gb` | Git blame |
| `Space ghd` | Expand all diff hunks |
| `Space ghD` | Full git diff |
| `Space ghr` | Restore hunk |
| `Space ghR` | Restore file |
| `do` | Expand all diff hunks (in diff context) |
| `dr` | Restore hunk (in diff context) |

### Code & LSP

| Key | Action |
|---|---|
| `Space ca` | Code actions |
| `Space cr` | Rename symbol |
| `Space cf` | Format file |
| `Space ui` | Toggle inlay hints |
| `Space uw` | Toggle soft wrap |

### AI Assistant

| Key | Action |
|---|---|
| `Space aa` | Toggle AI panel |
| `Space ae` / `Cmd+L` | Inline AI assist |
| `Space at` | Toggle AI panel |

### Splits & Windows

| Key | Action |
|---|---|
| `Space ws` / `Space -` | Split down |
| `Space wv` / `Space \|` | Split right |
| `Space wc` / `Space wd` | Close all items in pane |

### Markdown

| Key | Action |
|---|---|
| `Space mp` | Open markdown preview |
| `Space mP` | Open preview to the side |

### Terminal (in Zed terminal)

| Key | Action |
|---|---|
| `Cmd+T` | New terminal |
| `Shift+H` | Previous terminal tab |
| `Shift+L` | Next terminal tab |

### Misc

| Key | Action |
|---|---|
| `Space qq` | Quit Zed |
| `Shift+J` (visual) | Move line down |
| `Shift+K` (visual) | Move line up |
| `q` (Git/Project panel) | Close panel |
