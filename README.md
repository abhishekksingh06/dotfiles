# 🏠 Home Manager Dotfiles

[![NixOS](https://img.shields.io/badge/NixOS-blue?logo=nixos&logoColor=white)](https://nixos.org)
[![Home Manager](https://img.shields.io/badge/Home%20Manager-23.11+-blueviolet?logo=nixos&logoColor=white)](https://nix-community.github.io/home-manager/)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](./LICENSE)

This repository contains my **Home Manager configuration** for NixOS —\
managing my shell, CLI tools, Neovim, and desktop preferences **declaratively**
with Nix.

> ⚠️ **Note:**\
> This repo **excludes `/etc/nixos`** (system-level configs) for privacy and
> security reasons.\
> Only user-level configurations managed by **Home Manager** are versioned here.

---

## ✨ Features

- 🧠 Fully managed via
  [Home Manager](https://nix-community.github.io/home-manager/)
- 🎨 User configs for:
  - 🐚 Shell (Fish / Zsh)
  - 📝 Neovim (via `nvf` or custom modules)
  - 🧰 CLI tools (`git`, `bat`, `fzf`, `eza`, etc.)
  - 🪟 Wayland setup (Hyprland, wl-clipboard, etc.)
- 🧩 Modular layout under `modules/` for better organization

---

## 🖥️ Hyprland Setup

> 🧩 Hyprland must be installed in your **system configuration**
> (`/etc/nixos/configuration.nix`).

Example:

```nix
programs.hyprland.enable = true;
```
