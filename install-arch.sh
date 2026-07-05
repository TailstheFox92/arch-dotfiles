#!/usr/bin/env bash
set -euo pipefail

if [[ ! -f /etc/arch-release ]]; then
  echo "This installer is intended for Arch Linux." >&2
  exit 1
fi

if ! command -v sudo >/dev/null 2>&1; then
  echo "sudo is required to install packages." >&2
  exit 1
fi

ensure_yay() {
  if command -v yay >/dev/null 2>&1; then
    return
  fi

  echo "yay not found. Bootstrapping yay..."
  sudo pacman -S --needed --noconfirm base-devel git

  local tmp_dir
  tmp_dir="$(mktemp -d)"
  trap 'rm -rf "$tmp_dir"' EXIT

  git clone https://aur.archlinux.org/yay.git "$tmp_dir/yay"
  (
    cd "$tmp_dir/yay"
    makepkg -si --noconfirm
  )
}

install_packages() {
  local packages=(
    alacritty
    alsa-utils
    bibata-cursor-theme
    blueman
    bluez
    bluez-utils
    brave-bin
    brightnessctl
    catppuccin-gtk-theme-mocha
    code
    curl
    fastfetch
    firefox
    git
    glib2
    gsettings-desktop-schemas
    grim
    hyprland
    hyprpicker
    jq
    libnotify
    neovim
    noto-fonts
    noto-fonts-emoji
    pamixer
    papirus-icon-theme
    pavucontrol
    pipewire
    pipewire-pulse
    playerctl
    qt5ct
    rofi-wayland
    slurp
    steam
    stow
    swappy
    swaybg
    swaylock
    swaync
    ttf-font-awesome
    ttf-jetbrains-mono-nerd
    thunar
    vesktop
    waybar
    wireplumber
    wl-clipboard
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    zathura
    zathura-pdf-mupdf
    zsh
  )

  echo "Installing required packages with yay..."
  yay -S --needed --noconfirm "${packages[@]}"
}

main() {
  ensure_yay
  install_packages

  echo
  echo "Done."
  echo "Next steps:"
  echo "  1) stow -t \"$HOME\" hypr waybar rofi zsh git vscode scripts discord wallpaper zathura alacritty"
  echo "  2) Reboot or log out/in to ensure services and portals are cleanly loaded"
}

main "$@"