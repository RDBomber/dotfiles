# Dotfiles
Hey, if you plan to use this, **please do not use the scripts.** I made them with myself in mind only, and it only works on Arch and any derivatives.
I want to revise them eventually, but for now, please don't use them for the time being.

If you want to use the scripts, please check packages.txt and modify for your use. 
For example, I use AMD, so the amd-ucode package will be there.
This might not work if you were using Intel for example, and same goes if you aren't using a NVIDIA GPU and so on, vice versa.

I'll make a modified version of the necessary packages only for my dotfiles, but this is something I will do later.

For now, you should be able to find the packages related to each folder in .config, and install them on your own.

Another note, I use nwg-displays to handle my monitors and workspaces configuration. Hyprland will throw an error at you if you use this. 
This is also another thing you'll have to edit yourself, I apologize. If Hyprland doesn't launch, you'll need to edit this first. 

You can use GNU Stow to easily set up these dotfiles. Clone them, preferably in your HOME directory, Change directory into it, and run `stow .`


