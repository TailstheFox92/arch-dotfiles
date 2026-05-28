# Show system info on terminal open
fastfetch

# Default terminal editor
export EDITOR=nvim
export VISUAL=nvim
export GIT_EDITOR=nvim

# Prompt
PROMPT='%F{cyan}%n@%m%f %F{yellow}%~%f %# '

# History settings
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history
setopt inc_append_history
setopt share_history
setopt hist_ignore_dups
setopt hist_reduce_blanks

# Vi keybindings
bindkey -v

# Aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias gs='git status'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'
