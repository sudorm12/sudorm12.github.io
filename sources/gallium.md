## Useful Commands
`zless` for reading gzipped text files
`tail -f filename` to provide a continuously monitored view of a file
`df -hT` for disk usage and format type

## File System Structure
Copied from the ubuntu docs https://help.ubuntu.com/community/LinuxFilesystemTreeOverview

Main directories

The standard Ubuntu directory structure mostly follows the Filesystem Hierarchy Standard, which can be referred to for more detailed information.

Here, only the most important directories in the system will be presented.

/bin is a place for most commonly used terminal commands, like ls, mount, rm, etc.

/boot contains files needed to start up the system, including the Linux kernel, a RAM disk image and bootloader configuration files.

/dev contains all device files, which are not regular files but instead refer to various hardware devices on the system, including hard drives.

/etc contains system-global configuration files, which affect the system's behavior for all users.

/home home sweet home, this is the place for users' home directories.

/lib contains very important dynamic libraries and kernel modules

/media is intended as a mount point for external devices, such as hard drives or removable media (floppies, CDs, DVDs).

/mnt is also a place for mount points, but dedicated specifically to "temporarily mounted" devices, such as network filesystems.

/opt can be used to store additional software for your system, which is not handled by the package manager.

/proc is a virtual filesystem that provides a mechanism for kernel to send information to processes.

/root is the superuser's home directory, not in /home/ to allow for booting the system even if /home/ is not available.

/run is a tmpfs (temporary file system) available early in the boot process where ephemeral run-time data is stored. Files under this directory are removed or truncated at the beginning of the boot process.
(It deprecates various legacy locations such as /var/run, /var/lock, /lib/init/rw in otherwise non-ephemeral directory trees as well as /dev/.* and /dev/shm  which are not device files.)

/sbin contains important administrative commands that should generally only be employed by the superuser.

/srv can contain data directories of services such as HTTP (/srv/www/) or FTP.

/sys is a virtual filesystem that can be accessed to set or obtain information about the kernel's view of the system.

/tmp is a place for temporary files used by applications.

/usr contains the majority of user utilities and applications, and partly replicates the root directory structure, containing for instance, among others, /usr/bin/ and /usr/lib.

/var is dedicated to variable data, such as logs, databases, websites, and temporary spool (e-mail etc.) files that persist from one boot to the next. A notable directory it contains is /var/log where system log files are kept. 

## Useful Log Files
Most logs are in /var/log including:
* Authorization log auth.log
* Package management logs in folder apt
* Boot log boot.log
* Kernel log kern.log
* Catch-all syslog

A useful command is `tail -f filename` to provide a continuously monitored view of a file.

## Useful Config Files
* most reside in /etc
* /etc/fstab disks mounted at boot
* /etc/apt folder has config files for package management

## Kernel Management
### Show kernel version:
`uname -a`

### Docs:
First `apt install linux-doc` then look in `/usr/share/doc/linux-doc`.

## Gallium-Specific Issues
### Graphics firmware binaries:
https://01.org/linuxgraphics/firmware/downloads

### Audio issue:
https://github.com/GalliumOS/galliumos-distro/issues/379#issuecomment-379465153

### Shutdown hang:
https://askubuntu.com/questions/808435/ubuntu-16-04-hangs-on-shutdown