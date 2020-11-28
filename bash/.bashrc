#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

git_branch() {
  { echo -n '(' && git branch 2>/dev/null | grep '^*' | colrm 1 2 | tr -d '\n' && echo -n ')'; } | sed 's/()//'
}

export PS1="\[\e[1;38;5;82m\]\u\[\e[1;38;5;118m\]@\[\e[1;38;5;154m\]\h\[\e[00m\]:\[\e[1;38;5;190m\]\w\[\e[1;38;5;226m\]\$(git_branch)\[\e[00m\]\$ "
