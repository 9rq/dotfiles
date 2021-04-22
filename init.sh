install=true
if [install]; then
    # homeにシンボリックリンクを貼り、環境パスを追加する
    ln -s ${HOME}/.config/dotfiles/zsh/.zshenv ${HOME}/.zshenv
    ln -s ${HOME}/.config/dotfiles/nvim/* ${HOME}/.config/nvim
else
    unlink ${HOME}/.zshenv
    unlink ${HOME}/.config/dotfiles/nvim/*
fi
