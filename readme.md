cd ~/dotfiles 

paru or yay or pacman accordingly 

-paru -S --needed < packages.txt
or
-sudo pacman -S --needed $(grep -v '^#' packages.txt)

stow *
