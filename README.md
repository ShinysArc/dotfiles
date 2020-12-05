# Dotfiles and Archlinux installation

## About

This project is mainly for personal use, and allows me to easily create a new machine running Arch.

| Software | Name |
|--|--|
| Distribution | Arch Linux |
| Desktop environment | i3-gaps |
| Status bar | polybar |
| Application launcher | rofi |
| Terminal emulator | urxvt |
| CLI interpreter | Zsh |
| Compositor | Picom |

## Getting started

1. **[Download Archlinux](https://www.archlinux.org/download/) and install it through the [installation guide](https://wiki.archlinux.org/index.php/installation_guide).**
```bash
#Make sure to download a boot manager and a connection manager
sudo pacman -S grub #or
sudo pacman -S refind #and follow the wiki to install it properly
sudo pacman -S networkmanager
systemctl enable NetworkManager
sudo pacman -S vim #Text editor
```

2. **Install and configure basic packages.**
```bash
sudo pacman-mirrors --fasttrack
sudo pacman -Syu #Update all packages
sudo pacman -S xdg-user-dirs base-devel
sudo pacman -S rxvt-unicode #Terminal emulator, you can install other ones such as kitty or alacritty.
cp dotfiles/.Xdefaults $HOME/
cp -r dotfiles/.config/neofetch $HOME/.config/
sudo pacman -S perl pulseaudio pavucontrol
```

3. **Install a login manager screen, such as [LightDM WebKit2](https://wiki.archlinux.org/index.php/LightDM).**
```bash
sudo pacman -S lightdm
systemctl enable lightdm #I personally use the Litarvan theme. Make sure to edit your Lightdm config files
```

4. **Install the i3 window manager.** I personally choose a fork of this version, `i3-gaps`. You will need to run i3 a first time to create the config file. My configuration file can be found in the config folder.
```bash
sudo pacman -S xorg
sudo pacman -S i3-gaps
sudo pacman -S i3lock
cp -r dotfiles/.config/i3/ $HOME/.config/
```

5. **Install yay to get access to the AUR.**
```bash
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

6. **Install `feh` to use background images.**
```bash
sudo pacman -S feh
cp -r dotfiles/wallpapers $HOME/Pictures/ #Change the i3 config file to change your wallpapers
```

7. **Install [Polybar](https://github.com/polybar/polybar/wiki).** My configuration file can be found in the config folder.
```bash
sudo pacman -S polybar
cp -r dotfiles/.config/polybar/ $HOME/.config/
yay -S ttf-font-awesome #An icons font, cheat sheet available at https://fontawesome.com/icons?d=gallery
```

8. **Install [Rofi](https://wiki.archlinux.org/index.php/Rofi), a dmenu replacement.** My configuration file can be found in the config folder.
```bash
sudo pacman -S rofi
cp -r dotfiles/.config/rofi/ $HOME/.config/
```

9. **Add a composite manager, such as [Picom](https://wiki.archlinux.org/index.php/Picom).** My configuration file can be found in the config folder.
```bash
sudo pacman -S picom
cp -r dotfiles/.config/picom/ $HOME/.config/
```

10. **Install a new shell, such as [Zsh](https://wiki.archlinux.org/index.php/Zsh). You can also install [Oh My Zsh](https://ohmyz.sh).** My configuration file can be found in the config folder.
```bash
sudo pacman -S zsh
chsh -s /usr/bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp -r dotfiles/.oh-my-zsh/ $HOME/
cp dotfiles/.zshrc $HOME/
```

11. **Install some apps and fonts according to your likings.**
```bash
yay -S powerline-fonts-git
yay -S ttf-meslo-nerd-font-powerlevel10k
sudo pacman -S lxappearance-gtk3 #To customize gtk related apps
sudo pacman -S scrot maim #Allows you to take screenshots
sudo pacman -S cmatrix #I use it in an i3lock script
```