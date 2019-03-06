
Debian
====================
This directory contains files used to package leopardcoind/leopardcoin-qt
for Debian-based Linux systems. If you compile leopardcoind/leopardcoin-qt yourself, there are some useful files here.

## leopardcoin: URI support ##


leopardcoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install leopardcoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your leopardcoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/leopardcoin128.png` to `/usr/share/pixmaps`

leopardcoin-qt.protocol (KDE)

