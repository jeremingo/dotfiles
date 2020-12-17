#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto --group-directories-first'
alias ll='ls -la'
alias vmi='vim'

export HISTCONTROL=ignoredups
export HISTIGNORE="ls:ll:cd:clear"
export HISTTIMEFORMAT="%h %d %H:%M:%S "

export EDITOR=vim

PS1='[\u@\h \W]\$ '

git_branch() {
  { echo -n '(' && git branch 2>/dev/null | grep '^*' | colrm 1 2 | tr -d '\n' && echo -n ')'; } | sed 's/()//'
}

export PS1="\[\e[1;38;5;82m\]\u\[\e[1;38;5;118m\]@\[\e[1;38;5;154m\]\h\[\e[00m\]:\[\e[1;38;5;190m\]\w\[\e[1;38;5;226m\]\$(git_branch)\[\e[00m\]\$ "

FZF_KEY_BINDINGS=/usr/share/fzf/key-bindings.bash
[[ -f $FZF_KEY_BINDINGS ]] && . $FZF_KEY_BINDINGS

FZF_COMPLETION=/usr/share/fzf/completion.bash
[[ -f $FZF_COMPLETION ]] && . $FZF_COMPLETION

PATH="$HOME/.local/bin:$PATH"
