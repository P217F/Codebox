## How to set font for /dev/tty on arch linux

When someone uses arch, most people use it with xfce4, GNOME, Hyprland or KDE Plasma, ... But there will be some people who use /dev/tty. Yes, that's tty. So the biggest problem is that the font is very hard to read, so they need a font that easy to read. Here is how to set the font:  

```
sudo pacman -Syu -y && sudo pacman -S terminus-font
```

After, you command:
```
sudo nano /etc/vconsole.conf     # if you using nano editor
sudo nvim /etc/vconsole.conf     # if you using neovim
sudo vim /etc/vconsole.conf      # if you using vim
```

Then add the line:
```
FONT=ter-118b       # set font size 118, bold
```

Reboot:
```
reboot
```