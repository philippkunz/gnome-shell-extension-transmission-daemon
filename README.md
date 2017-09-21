# gnome-shell-extension-transmission-daemon
This is a Gnome Shell extension for monitoring a transmission-daemon or GTK app
using its RPC interface.

This extension supports Gnome Shell DE from version 3.4 to 3.26.

All credit for this project goes to the original author, Jean-Philippe Braun
(@eonpatapon). This project was forked since maintainance has been abandoned.

## Installation
### Via extensions.gnome.org
https://extensions.gnome.org/extension/365/transmission-daemon-indicator/

TODO: re-release to allow installation on newer versions.

### Manual
```bash
git clone git://github.com/thekevjames/gnome-shell-extension-transmission-daemon.git
cd gnome-shell-extension-transmission-daemon
make install
```

Restart the shell (atf-f2, type "r") to enable the extension.

### Older Versions of Gnome Shell
- the latest version supporting `gnome-shell` < 3.10 is tag 1.0.0
- the latest version supporting `gnome-shell` < 3.16 is tag 2.0.0
- the latest version supporting `gnome-shell` < 3.20 is tag 3.0.0

To install for those versions of `gnome-shell`, please follow the manual process
outlined above after checking out one of the above tags.

## Configuration
You must enable the RPC interface in your transmission settings.

- for the GTK application, see preferences->remote.
- for `transmission-daemon`, see `/etc/transmission-daemon/settings.json`.
Documentation for this file is [here](https://github.com/transmission/transmission/wiki/Editing-Configuration-Files).

## Pretty Pictures
![Screenshot](docs/screenshot.png)
![Add torrents](docs/screenshot-add.png)
![Filter torrents by state](docs/screenshot-filter.png)
