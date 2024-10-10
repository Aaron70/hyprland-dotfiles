# ----------------------------------------------------- 
# Install packages 
# ----------------------------------------------------- 

installer_packages=(
    "hyprland"
    "waybar"
    "rofi-wayland"
    "alacritty"
    "dunst"
    "thunar"
    "xdg-desktop-portal-hyprland"
    "qt5-wayland"
    "qt6-wayland"
    "hyprpaper"
    "hyprlock"
    "firefox"
    "ttf-font-awesome"
    "vim"
    "fastfetch"
    "ttf-fira-sans" 
    "ttf-fira-code" 
    "ttf-firacode-nerd"
    "fuse2"
    "gtk4"
    "libadwaita"
    "jq"
    "python-gobject"
    # Personal packages
    "neovim"
    "qutebrowser"
    "docker"
    "wl-clipboard"
    "curl"
    "pass"
    "zsh"
    "fzf"
    "bat"
    "zoxide"
    "eza"
    "less"
    "tmux"
    "open-vm-tools"
    # Fonts
    "ttf-jetbrains-mono-nerd"
    "noto-fonts"
)

installer_yay=(
    "wlogout" 
    "oh-my-posh"
    "jlink"
)

# PLEASE NOTE: Add more packages at the end of the following command
_installPackages "${installer_packages[@]}";
_installPackagesYay "${installer_yay[@]}";

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
