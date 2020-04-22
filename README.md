# dotfiles

My config files for my laptop running on Arch Linux.

| Software | Name |
|--|--|
| Distribution | Arch Linux |
| Desktop environment | i3-gaps |
| Status bar | polybar |
| Application launcher | rofi |
| Terminal emulator | urxvt |
| CLI interpreter | Zsh |
| Compositor | [compton-tryone](https://github.com/tryone144/compton) |

List of all installed packages: [pkglist.txt](https://github.com/ShinysArc/dotfiles/blob/master/pkglist.txt).

This repository and the dotfiles are managed by [chezmoi](https://github.com/twpayne/chezmoi).

## Screenshots

![screenshot0](https://github.com/ShinysArc/dotfiles/blob/master/screenshot0.png)
![screenshot1](https://github.com/ShinysArc/dotfiles/blob/master/screenshot1.png)
![screenshot2](https://github.com/ShinysArc/dotfiles/blob/master/screenshot2.png)

## Usage

- Add an existing file: `chezmoi add ~/.bashrc`
- Edit a file: `chezmoi edit ~/.bashrc`
- Apply changes: `chezmoi apply`
- Go to the repository: `chezmoi cd`
- Pull and apply remote changes: `chezmoi update`
