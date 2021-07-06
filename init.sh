install=true
zsh=true
nvim=true
tmux=true

if $install; then
    # homeにシンボリックリンクを貼り、環境パスを追加する
    if $zsh; then
        ln -s ${HOME}/.config/dotfiles/zsh/.zshenv ${HOME}/.zshenv
        ln -s ${HOME}/.config/dotfiles/zsh/.zshrc ${HOME}/.zshrc
    fi

    if $nvim; then
        ln -s ${HOME}/.config/dotfiles/nvim/* ${HOME}/.config/nvim
    fi

    if $tmux; then
        ln -s ${HOME}/.config/dotfiles/tmux/tmux.conf ${HOME}/.tmux.conf
else
    unlink ${HOME}/.zshenv
    unlink ${HOME}/.zshrc
    unlink ${HOME}/.config/dotfiles/nvim/*
    unlink ${HOME}/.tmux.conf
fi
