# arch-dotfiles (Cyclone)

Stow-ready dotfiles extracted from Cyclone.

## Quick start

```bash
sudo pacman -S --needed stow
cd ~/workspace/github/gfernandez/arch-dotfiles
stow -t "$HOME" hypr waybar rofi zsh git vscode scripts discord wallpaper
```

## Unstow

```bash
cd ~/workspace/github/gfernandez/arch-dotfiles
stow -D -t "$HOME" hypr waybar rofi zsh git vscode scripts discord wallpaper
```

## Notes

- Keep host-specific files in separate package folders as needed.
- Do not commit secrets (SSH keys, tokens, machine-only credentials).
