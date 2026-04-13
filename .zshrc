if [[ -f "/opt/homebrew/bin/brew" ]] then
  # If you're using macOS, you'll want this enabled
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab
zinit light zsh-users/zsh-history-substring-search
zinit light MichaelAquilina/zsh-you-should-use
zinit light wfxr/forgit

# Add in snippets
zinit snippet OMZL::git.zsh
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::aws
zinit snippet OMZP::kubectl
zinit snippet OMZP::kubectx
zinit snippet OMZP::command-not-found
zinit snippet OMZP::history
zinit snippet OMZP::fzf
zinit snippet OMZP::macos
zinit snippet OMZP::colored-man-pages
zinit snippet OMZP::golang
zinit snippet OMZP::pyenv
zinit snippet OMZP::bun
zinit snippet OMZP::uv
zinit snippet OMZP::gh
zinit snippet OMZP::docker
zinit snippet OMZP::docker-compose
zinit snippet OMZP::safe-paste
zinit snippet OMZP::extract
zinit snippet OMZP::copypath
zinit snippet OMZP::ssh

# Load completions
autoload -Uz compinit && compinit

zinit cdreplay -q


# Keybindings
bindkey -e
bindkey '^[[A' history-substring-search-up    # Up arrow
bindkey '^[[B' history-substring-search-down  # Down arrow
bindkey '^[[C' forward-char  # Right arrow moves cursor right (accepts suggestion at end of line)
bindkey '^[[1;5D' backward-word   # Ctrl + LeftArrow
bindkey '^[[1;5C' end-of-line      # Ctrl + RightArrow
bindkey '^E' accept-line                           # Alternative: Enter to execute the command
bindkey '^p' history-substring-search-up
bindkey '^n' history-substring-search-down
bindkey '^[w' kill-region
bindkey '^A' beginning-of-line  # Ctrl + A moves to beginning of line

# History
HISTSIZE=50000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# Aliases
alias ls='ls --color'
alias vim='nvim'
alias c='clear'
alias k="kubectl"
alias ll="ls -al --color"
alias glb="git log --graph --simplify-by-decoration --pretty=format:'%d' --all"


# Shell integrations
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"
eval "$(starship init zsh)"


[[ -d /usr/local/go/bin ]] && export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

export FZF_BASE=/opt/homebrew/bin/fzf

. "$HOME/.local/bin/env"

export EDITOR='nvim'

export NVM_DIR="$HOME/.nvm"
# Lazy-load nvm to avoid slow shell startup
nvm() { unset -f nvm node npm npx; [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"; [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"; nvm "$@" }
node() { unset -f nvm node npm npx; [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"; node "$@" }
npm() { unset -f nvm node npm npx; [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"; npm "$@" }
npx() { unset -f nvm node npm npx; [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"; npx "$@" }


# pnpm
export PNPM_HOME="/Users/yousefsoliman/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# opencode
export PATH=/Users/yousefsoliman/.opencode/bin:$PATH

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

[[ -s "/Users/yousefsoliman/.gvm/scripts/gvm" ]] && source "/Users/yousefsoliman/.gvm/scripts/gvm"
