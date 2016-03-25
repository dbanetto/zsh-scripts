function update-config {
    echo "Updating dotfiles"
    ( cd ~/.dotfiles && git pull )
    echo "Updating neovim config"
    ( cd ~/.config/nvim && git pull )
    echo "Updating zsh config"
    zgen update
}
