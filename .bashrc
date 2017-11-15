# ~/.bashrc: executed by bash(1) for non-login shells.
case $- in
    *i*) ;;
      *) return;;
esac
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize

case "$TERM" in
    xterm-color) color_prompt=yes;;
esac
if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
fi
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export PS1="\u@\h:\w\$ "

export PATH=.:~/bin:/home/dave/SwiftForth/bin/linux:/sbin:/usr/sbin:$PATH

PATH="/home/dave/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/dave/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/dave/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/dave/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/dave/perl5"; export PERL_MM_OPT;
TZ='America/New_York'; export TZ

export RT_FIX_DEPS_CMD="/home/dave/perl5/bin/cpanm --notest"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /home/dave/Code/PDTAssignment-20170608/virtual-truck/node_modules/tabtab/.completions/serverless.bash ] && . /home/dave/Code/PDTAssignment-20170608/virtual-truck/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /home/dave/Code/PDTAssignment-20170608/virtual-truck/node_modules/tabtab/.completions/sls.bash ] && . /home/dave/Code/PDTAssignment-20170608/virtual-truck/node_modules/tabtab/.completions/sls.bash

export PASSWORD_STORE_X_SELECTION=clipboard

export GDK_SCALE=2
export GDK_DPI_SCALE=-1
export XCURSOR_SIZE=48
