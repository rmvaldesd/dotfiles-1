# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

export MAIL=/home/hendry/Mail/inboxing

# If running interactively, then:
if [ "$PS1" ]; then

    export CVSROOT=hendry@melkinpaasi.cs.helsinki.fi:/home/fs/hendry/cvs

    # For subversion on CS computers
    if [ -d /opt/subversion-0.34.0/bin/ ]; then
        export PATH=$PATH:/opt/subversion-0.34.0/bin/
    fi

    export EDITOR=vim
    export VISUAL=vim
    export CVSEDITOR=vim

    # don't put duplicate lines in the history. See bash(1) for more options
    export HISTCONTROL=ignoredups

    # check the window size after each command and, if necessary,
    # update the values of LINES and COLUMNS.
    shopt -s checkwinsize

    # enable color support of ls and also add handy aliases
    if [ "$TERM" != "dumb" ]; then
	eval `dircolors -b`
	alias ls='ls --color=auto'
	#alias dir='ls --color=auto --format=vertical'
	#alias vdir='ls --color=auto --format=long'
    fi

    # some more ls aliases
    alias ll='ls -al'
    #alias la='ls -A'
    #alias l='ls -CF'
    alias mutto='mutt -F ~/.muttorc'

    # set a (really) fancy prompt

    PS1='\u@\h:\w\$ '

    # If this is an xterm set the title to user@host:dir
    case $TERM in
    xterm*)
        PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
        ;;
    *)
        ;;
    esac

    # enable programmable completion features (you don't need to enable
    # this, if it's already enabled in /etc/bash.bashrc).
    if [ -f /etc/bash_completion ]; then
      . /etc/bash_completion
    fi

    umask 002

fi

export EMAIL=hendry@cs.helsinki.fi
