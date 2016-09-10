function update-config {
    echo "Updating dotfiles"
    ( cd ~/.dotfiles && git pull )
    echo "Updating neovim config"
    ( cd ~/.config/nvim && git pull )
    echo "Installing neovim plugins"
    ( nvim -c PlugInstall -c :qa ) 
    echo "Updating neovim plugins"
    ( nvim -c PlugUpdate -c :qa ) 
    echo "Updating zsh config"
    zgen update
}
