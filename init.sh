install=true
zsh=true
nvim=true

if [install]; then
    # homeにシンボリックリンクを貼り、環境パスを追加する
    if [zsh]; then
        ln -s ${HOME}/.config/dotfiles/zsh/.zshenv ${HOME}/.zshenv
    fi

    if [nvim]; then
        ln -s ${HOME}/.config/dotfiles/nvim/* ${HOME}/.config/nvim
    fi
else
    unlink ${HOME}/.zshenv
    unlink ${HOME}/.config/dotfiles/nvim/*
fi
