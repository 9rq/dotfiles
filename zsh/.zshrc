autoload -Uz compinit && compinit

export XDG_CONFIG_HOME="$HOME/.config"
export PATH=$PATH:/Library/Java/JavaVirtualMachines/openjdk-11.0.2.jdk/Contents/Home/bin
export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-11.0.2.jdk/Contents/Home

# pyenvさんに~/.pyenvではなく、/usr/loca/var/pyenvを使うようにお願いする
export PYENV_ROOT=/usr/local/var/pyenv
# pyenvさんに自動補完機能を提供してもらう
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
#pyenvとhomebrewのコンフリクトの回避
alias brew="PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin brew"


export PATH="/usr/local/opt/tcl-tk/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/tcl-tk/lib"
export CPPFLAGS="-I/usr/local/opt/tcl-tk/include"
export PKG_CONFIG_PATH="/usr/local/opt/tcl-tk/lib/pkgconfig"
#export PYTHON_CONFIGURE_OPTS="--with-tcltk-includes='-I/usr/local/opt/tcl-tk/include' --with-tcltk-libs='-L/usr/local/opt/tcl-tk/lib -ltcl8.6 -ltk8.6'"
# zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# change dir without cd
setopt auto_cd

alias vim='nvim'
alias la='ls -aG'
alias ll='ls -alG'
alias sl='ls -G'
alias ls='ls -G'
alias :q='exit'
alias beamer='nvim prog.tex'
alias wifi='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -s'
alias pi='ssh pi@192.168.3.251'
alias cd..='cd ..'
