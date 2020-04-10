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

List of all installed packages: [pkglist.txt](https://github.com/ShinysArc/dotfiles/blob/master/pkglist.txt).

This repository and the dotfiles are managed by [chezmoi](https://github.com/twpayne/chezmoi).

## Screenshot

![screenshot](https://github.com/ShinysArc/dotfiles/blob/master/screenshot.png)

## Usage

- Add an existing file: `chezmoi add ~/.bashrc`
- Edit a file: `chezmoi edit ~/.bashrc`
- Apply changes: `chezmoi apply`
- Go to the repository: `chezmoi cd`
- Pull and apply remote changes: `chezmoi update`

## Notes

### Enable touchpad while typing

1. Get touchpad id with: `xinput --list`
2. Get properties of the touchpad: `xinput --list-props <touchpadid>`
3. Enable the feature with: `xinput --set-prop <touchpadid> <propid> <value>`
