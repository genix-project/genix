
Debian
====================
This directory contains files used to package genixd/genix-qt
for Debian-based Linux systems. If you compile genixd/genix-qt yourself, there are some useful files here.

## genix: URI support ##


genix-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install genix-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your genix-qt binary to `/usr/bin`
and the `../../share/pixmaps/genix128.png` to `/usr/share/pixmaps`

genix-qt.protocol (KDE)

