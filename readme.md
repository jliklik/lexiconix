- References:
	- https://nixos.org/manual/nixos/stable/#sec-booting-from-usb
	- Downloads: https://nixos.org/download/#nixos-iso
	- Nixacademy has an image that does an autoinstall: 
		- https://github.com/tfc/nixos-auto-installer
		- Which uses the minimal nixos image
	
- Manual install steps:
	1) Download minimal nixos installer iso
		a. https://nixos.org/download/#nixos-iso
	2) Create USB using Rufus in DD mode
	3) Put USB into computer and install NixOS
	4) Partition and format the drives
	5) Create configuration.nix
	6) Install nix
	7) Reboot

Notes:
- If using the minimal disk image, must use Rufus in DD mode
- If using the console, you have to partition and format the drives yourself

Example commands for manual install:
- https://nixos.org/manual/nixos/stable/#sec-installation-manual-summary

Nix configuration is in /etc/nixos/configuration.nix`
To rebuild after modifying config: `nixos-rebuild switch`

