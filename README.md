# Floorp for Void Linux
This is a template for installing Floorp on Void Linux.

The template and its files were originally created by [mobinmob](https://codeberg.org/mobinmob/abyss-packages) and [salastro](https://github.com/salastro/zen-browser), but I edited them for installing Floorp.


## Installation steps
1. Install xtools: `sudo xbps-install xtools`
2. Clone the void-packages repository: `git clone --depth 5 https://github.com/void-linux/void-packages`
3. Clone this repository: `git clone https://github.com/Seremegu/Floorp-VoidLinux`
4. Copy the 'floorp' folder to void-packages/srcpkgs: `cp -r Floorp-VoidLinux/floorp void-packages/srcpkgs`
5. Go to void-packages: `cd void-packages`
6. Build the package by executing this command: `./xbps-src pkg -j$(nproc) floorp`
7. Install the package: `xi floorp`
8. Run Floorp: `floorp`

## Alternative installation steps
### You can also update Floorp from these steps.
1. Install the packages: `sudo xbps-install curl sed xtools`
2. Clone the void-packages repository: `git clone --depth 5 https://github.com/void-linux/void-packages`
3. Clone this repository: `git clone https://github.com/Seremegu/Floorp-VoidLinux`
4. Copy the 'floorp' folder to void-packages/srcpkgs: `cp -r Floorp-VoidLinux/floorp void-packages/srcpkgs`
5. Set the environment variable for the 'void-packages' folder `export XBPS_DISTDIR="$HOME/void-packages"`
6. Make the script file for installing/updating Floorp to be run as a program `chmod +x void-packages/srcpkgs/floorp/files/floorp.sh`
7. Run the script file `./void-packages/srcpkgs/floorp/files/floorp.sh`
8. Run Floorp `floorp`
