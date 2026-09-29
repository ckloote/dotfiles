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

# --- opencode ---
export PATH=/home/ckloote/.opencode/bin:$PATH

# --- Local binary path ---
export PATH="/home/ckloote/.local/bin:$PATH"

# --- fnm ---
FNM_PATH="/home/ckloote/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "$(fnm env --shell zsh)"
  eval "$(fnm env --use-on-cd)"
fi
