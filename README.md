<div align="center">

# Nocturne Vim

</div>

<div align="center">

A calm, minimal setup structured for a quiet and focused workflow.<br>
Designed as a small escape from visual clutter, endless menus, and unnecessary complexity.

</div>

<br>

![dashboard](assets/screenshots/dashboard.png)

![editing](assets/screenshots/editing.png)

# ✦ Features

UI and workflow
  * Minimal dashboard (alpha-nvim)
  * Statusline with lualine
  * Notifications system
  * File explorer via floating oil.nvim

Navigation and productivity
  * Toggle terminal support
  * Session and workspace utilities (snacks.nvim)
  * Notes system integration (global note)
  * Minimap support (neominimap)
  * Git signs for inline change tracking

Visual clarity
  * Multiple theme options with quick switching
  * Twilight mode for focus
  * Indentation guides for structure awareness

Utilities
  * Matching pair helpers
  * Smart plugin grouping and modular loading

# ✦ Requirements

- Neovim 0.11+
- Git
- A Nerd Font (for icons)
- A terminal with true color support
- Kitty terminal (required for dashboard image support)
- A compositor with transparency support (e.g. Hyprland on Wayland)
- ripgrep (`rg`) for searching
- fd (optional, improves file searching)


### Notes

- This configuration uses transparency. It depends on your terminal and compositor setup (e.g. Kitty + Hyprland). Results may vary.
- Dashboard image support requires Kitty and `3rd/image.nvim`.
- Neovim does not handle transparency directly; it is controlled externally.
- The default theme is Greyscale. Use `<leader>tt` to switch themes.


# ✦ Installation

```text
git clone --depth 1 https://github.com/iiovy/Nocturne-vim ~/.config/nvim
nvim
