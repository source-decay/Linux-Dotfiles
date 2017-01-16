### My dotfiles for Linux. ###
Running GalliumOS on an Acer C720 Chromebook with an added 128GB SSD

These dotfiles are being managed using GNU Stow. Make sure you go grab it.

#### How to get started: ####
1. Make a directory in your home directory where these dotfiles will live
2. From inside your newly created directory, run stow for whichever dotfiles you want
`stow <package name>` (for example, **stow vim**)
3. Stow will create a symlink for each file in the main folder (vim or bash, for example) based on the folder structure
inside that application's folder
4. Modify and enjoy!
