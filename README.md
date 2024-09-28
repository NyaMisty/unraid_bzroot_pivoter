# unraid_bzroot_pivoter

A pivoter for unRAID /boot. Reduces Flash Wear Out :)

## Usage

1. Download bzroot_pivoter in Release page

2. Put bzroot_pivoter into config directory

3. Run this in unRAID: (You need to run this every time after you upgraded the unRAID)
  ```
  sed '0,/initrd=\/bzroot/ s|initrd=/bzroot|initrd=/bzroot,/config/bzroot_pivoter|g' /boot/syslinux/syslinux.cfg
  ```

## Internal

It patches /etc/inittab to use /etc/rc.d/rc.S_wrap, which is our custom wrapper script that patches the original rc.S file and executes it.
