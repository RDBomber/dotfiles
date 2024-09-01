# Dotfiles
Hey, my dotfiles aren't really that riced, but if you are looking for as somewhat "minimal" setup, feel free to download the packages needed and use these files.

If you want to use the "scripts", please check packages.txt and modify for your use. 
It shouldn't cause any problems, before running stow.

The scripts use yay, so if you use a different AUR helper, you don't need to use the script that installs yay, but you will need to change yay to your AUR helper of choice.
The package install script was made for Arch Linux, and should work on anything based on it, but can't guarantee.

If you are on other distros such as Fedora or Debian, You'll need to find the package names yourself and install them.

For now, you should be able to find the packages related to each folder in .config, and install them on your own.

Another note, I use nwg-displays to handle my monitors and workspaces configuration. Hyprland will throw an error at you if you use this. 
This is also another thing you'll have to edit yourself, I apologize. If Hyprland doesn't launch, comment out the line relating to it in hyprland.conf.

You can use GNU Stow to easily set up these dotfiles. Clone them, preferably in your HOME directory, Change directory into it, and run `stow .`


