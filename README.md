# arch-dotfiles (Cyclone)

Stow-ready dotfiles extracted from Cyclone.

## Quick start

```bash
cd ~/workspace/github/gfernandez/arch-dotfiles
chmod +x ./install-arch.sh
./install-arch.sh
stow -t "$HOME" hypr waybar rofi zsh git vscode scripts discord wallpaper zathura alacritty
```

The installer uses `yay` and bootstraps it automatically if it is missing.

## Unstow

```bash
cd ~/workspace/github/gfernandez/arch-dotfiles
stow -D -t "$HOME" hypr waybar rofi zsh git vscode scripts discord wallpaper zathura alacritty
```

## Notes

- Keep host-specific files in separate package folders as needed.
- Do not commit secrets (SSH keys, tokens, machine-only credentials).
