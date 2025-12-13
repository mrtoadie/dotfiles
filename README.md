# Welcome to my dotfiles!
![GitHub Downloads (all assets, all releases)](https://img.shields.io/github/downloads/mrtoadie/dotfiles/total) ![GitHub License](https://img.shields.io/github/license/mrtoadie/dotfiles) ![GitHub commit activity (branch)](https://img.shields.io/github/commit-activity/y/mrtoadie/dotfiles/main)


Some of my personal DOT files for Linux
| Category | Description |
| --- | --- |
| **Customizing & Theming** | |
| [alacritty](#alacritty) | Terminal emulator |
| [conky](#conky) | Systemmonitoring |
| [fastfetch](#fastfetch) | Systeminfos in your terminal with style |
| [starship](#starship) | Custom terminal promts |
| [yazi](#yazi) | Fanzy terminal file manager |

## alacritty
My personal config file for the terminal [alacritty](https://alacritty.org/).
### Usage
```bash
cp alacritty.toml ~/.config/alacritty/
```
## conky
My personal config for the system monitor [conky](https://github.com/brndnmtthws/conky).
### Usage
Copy the files to `~/.config/conky/`

### Describtion
| File | Description |
| --- | --- |
| conky_backup_vm.conf | Shows stats for running VMs, Containers, Pods and my latest Backups |
| conky.conf | Main conky config file |
| conky_start.sh | Start script for conky |
| vm_mon.sh | Script to monitor all running VMs, containers and Pods |
## fastfetch
My personal config for [fastfetch](https://github.com/fastfetch-cli/fastfetch).
### Usage
```bash
cp config.jsonc ~/.config/fastfetch/
```
### Describtion
| File | Description |
| --- | --- |
## starship
Config file for [starship](https://starship.rs/).
### Usage
```bash
cp starship.toml ~/.config/
```
## yazi
My configuration files for the terminal file manager [yazi](https://yazi-rs.github.io/).
### Usage
Copy the files to `$home/.config/yazi` und run yazi.
### Describtion
| File | Description |
| --- | --- |
| yazi.toml | Basic yazi config |
| theme.toml | Theme configuration |
| package.toml | - |
| init.lua | - |
| preview/code.lua | Used to display syntax highlighting |
| preview/image.lua | Used to display images in yazi|
| preview/markdown.lua | Used to display markdown files |
| preview/utils.lua | |
