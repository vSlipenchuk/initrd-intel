initrd6.sfs - change to sfs archive
  run_system
  

initrd5a -added auth=disk.ext3 and auto sfs attacher

initrd5 - add:
  mount dir as loop-devices
  

initrd4 - add:
  aufs=Y - use aufs instead of unionfs
  addmodules=Y adds a kernel-modules.sfs
  

== to-do
  1. changes can be on a real devices /dev/sda*, not on a loop-dev (file-partition)
  2. netloaders - ? huawey - yota ?
  3. kernmod=1 - load kernel modules (15 version kernel dont have a mark for it yet)...

3.x initrd3.gz 14-jan-2012
  copy2ram=1 loads modules to a memory first ...
  changes=file, file search:
    1. where mntdir
    2. on /mnt/dev
    3. on othe drives...
    

1.5 = initrd2.gz 
  add mntfind=<file-on-dev-device> - auto search on it...
  
  
  