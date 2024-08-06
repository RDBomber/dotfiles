# Dotfiles
Hey, my dotfiles aren't really that riced, but if you are looking for as somewhat "minimal" setup, feel free to download the packages needed and use these files.

If you want to use the scripts, please check packages.txt and modify for your use. 
It shouldn't cause too much of a problem, but I highly recommend you check it and edit if needed to, before running stow.

For example, the AUR helper script installs yay, you might not need to do this if you already have one.
The package install script was made for Arch Linux, so it should work on anything based on it, although you want to check packages.txt because there might be packages you don't need.
It won't interfere, but if you are on something like EndeavourOS, you don't need mkinitcpio, iirc dracut is used on EndeavourOS.

If you are on other distros such as Fedora or Debian, You'll need to find the package names yourself and install them.

I'll make a modified version of the necessary packages only for my dotfiles, but this is something I will do later.

For now, you should be able to find the packages related to each folder in .config, and install them on your own.

Another note, I use nwg-displays to handle my monitors and workspaces configuration. Hyprland will throw an error at you if you use this. 
This is also another thing you'll have to edit yourself, I apologize. If Hyprland doesn't launch, comment out the line relating to it in hyprland.conf.

You can use GNU Stow to easily set up these dotfiles. Clone them, preferably in your HOME directory, Change directory into it, and run `stow .`

Feel free to submit PRs or issues, but honestly I do whatever I see fit, this is something I thought would be fun to do, so if you aren't into that,
Consider forking and making it yourself. Look at other dotfiles is also another option. 
