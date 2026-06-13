# ── pyenv shell integration ────────────────────────────────────────────────
eval "$(pyenv init -)"

# ── Completion ─────────────────────────────────────────────────────────────
autoload -Uz compinit && compinit

# ── Prompt (vcs_info; mirrors the old bash PS1) ────────────────────────────
# Old bash: \n[\A] \u@\h : <blue \w> :<bold-blue $(__git_ps1)> \n <bold-red >>>
setopt PROMPT_SUBST
autoload -Uz vcs_info add-zsh-hook
zstyle ':vcs_info:git:*' formats ' (%b)'
add-zsh-hook precmd vcs_info
PROMPT=$'\n[%T] %n@%m : %F{blue}%~%f :%B%F{blue}${vcs_info_msg_0_}%f%b\n %B%F{red}>>%f%b '

# ── Aliases ────────────────────────────────────────────────────────────────
alias ls='ls -alGh'

alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias ga='git add'
alias gc='git checkout'
alias gsis='git status --ignore-submodules'
alias gi='git-info'
alias cleanclasspath='git checkout -- "*.classpath"'
alias findswp='find . -iname "*.swp"'
alias songzor='cd personal/Songzor/Songzor/'

# ── Functions ──────────────────────────────────────────────────────────────
git-info() {
  printf '\e[33;4mRemotes\e[0m\n'
  git remote -vvv
  printf '\n'
  printf '\e[33;4mStash\e[0m\n'
  git stash list
  printf '\n'
  printf '\e[33;4mBranches\e[0m\n'
  git branch -vvv
  printf '\n'
  printf '\e[33;4mStatus\e[0m\n'
  git status
}

gco() {
  git branch | sed -n "$1p" | xargs git checkout
}

goget() {
  echo "git fetch $1 && git rebase $1/$2"
  git fetch "$1" && git rebase "$1/$2"
}

# ── Local/work overrides ───────────────────────────────────────────────────
[ -f ~/.workrc ] && source ~/.workrc

# ── Plugins (zsh-syntax-highlighting must be sourced last) ─────────────────
source "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
