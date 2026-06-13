# ── Homebrew (Apple Silicon) ───────────────────────────────────────────────
eval "$(/opt/homebrew/bin/brew shellenv)"

# ── Environment ────────────────────────────────────────────────────────────
export WORK_DIR=~/code
export EDITOR=nvim
export PGHOST=localhost
export PATH="$HOME/.local/bin:$PATH"

# ── pyenv (PATH/shims; shell integration lives in .zshrc) ──────────────────
eval "$(pyenv init --path)"

# ── nvm ────────────────────────────────────────────────────────────────────
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
