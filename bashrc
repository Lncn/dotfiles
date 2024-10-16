# Lincoln's .bashrc

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

export PATH=/usr/local/go/bin:$PATH # Golang
export PATH=~/.cargo/bin:$PATH      # Rust (cargo)
export PATH=~/.local/bin:$PATH      # Python (pip)
export PATH=/opt/nvim-macos-arm64/bin:$PATH  # Neovim install (macOS)
export PATH=/opt/nvim-linux64/bin:$PATH      # Neovim install (Linux)
export PATH=~/bin/:$PATH
export EDITOR=nvim
export PAGER=less

# On macOS disable "zsh default" warning
export BASH_SILENCE_DEPRECATION_WARNING=1


# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\e[90m\]\u@\h\[\e[0m\]:\[\e[32m\]\w\[\e[0m\]\$(git_branch) \$ "

# User specific aliases and functions
alias ls='ls -GF'
alias ll='ls -lahGF'
alias e='nvim'

alias ff='rg --files | rg'

# Don't attempt to GUI prompt for passwords
unset SSH_ASKPASS
