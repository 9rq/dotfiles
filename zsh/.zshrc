autoload -Uz compinit && compinit

export XDG_CONFIG_HOME="$HOME/.config"
export PATH=$PATH:/Library/Java/JavaVirtualMachines/openjdk-11.0.2.jdk/Contents/Home/bin
export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-11.0.2.jdk/Contents/Home

export PATH="/usr/local/sbin:$PATH"
# pyenvさんに~/.pyenvではなく、/usr/loca/var/pyenvを使うようにお願いする
export PYENV_ROOT=/usr/local/var/pyenv
# pyenvさんに自動補完機能を提供してもらう
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
#pyenvとhomebrewのコンフリクトの回避
alias brew="PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin brew"


# change dir without cd
setopt auto_cd
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

alias vim='nvim'
alias la='ls -aG'
alias ll='ls -alG'
alias sl='ls -G'
alias ls='ls -G'
alias :q='exit'
alias beamer='nvim prog.tex'
alias wifi='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -s'
alias cd..='cd ..'
alias pingg='ping 8.8.8.8'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/len/Desktop/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/len/Desktop/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/len/Desktop/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/len/Desktop/google-cloud-sdk/completion.zsh.inc'; fi
