# Dotfiles

Personal dotfiles managed with GNU Stow. Includes configurations for shell, editors, Git, terminal, and more. Use stow . to symlink.

# Setup Guide: Brew, Neovim, Stow & Dotfiles

## 1. Install Brew

### Arch Linux:

````bash
# Install dependencies
sudo pacman -S base-devel git curl

# Install Brew (Linuxbrew)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add Brew to PATH
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.bashrc
source ~/.bashrc

### macOS:
```bash
# Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

---

## 2. Install Neovim via Brew
```bash
brew install neovim

---

## 3. Install GNU Stow

### Arch Linux (use pacman):
```bash
sudo pacman -S stow

### macOS (use Brew):
```bash
brew install stow

---

## 4. Clone Dotfiles Repository
```bash
git clone https://github.com/gverbist/dotfiles.git ~/dotfiles

---

## 5. Restore Neovim Config with Stow
```bash
cd ~/dotfiles
stow neovim  # Creates symlinks for ~/.config/nvim

# Verify
ls -l ~/.config/nvim  # Should show linked files
````
