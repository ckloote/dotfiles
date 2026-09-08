# --- Antidote Plugin Manager ---
ANTIDOTE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/antidote"
if [[ ! -d "$ANTIDOTE_DIR" ]]; then
  git clone --depth=1 https://github.com/mattmc3/antidote.git "$ANTIDOTE_DIR"
fi
source "$ANTIDOTE_DIR/antidote.zsh"
antidote load "$HOME/.zsh_plugins.txt"

# --- Plugin Settings ---
bindkey '^F' autosuggest-accept
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"

# Cover both Linux/Ubuntu and standard xterm End key sequences
bindkey '^[[F'  autosuggest-accept
bindkey '^[[4~' autosuggest-accept

# --- Starship Prompt ---
eval "$(starship init zsh)"

# --- Shared Custom Aliases ---
alias ll="ls -la"

# --- History ---
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# --- Load NVM ---
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# --- opencode ---
export PATH=/home/ckloote/.opencode/bin:$PATH
