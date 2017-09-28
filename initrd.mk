. ./common

echo "initrd version : $VERSION"

case "$1" in
  make)
    mkdir -p proc dev sys
    (cd mnt ; sh add_dir)
    rm /tmp/initrd$VERSION.sfs
    mksquashfs . /tmp/initrd$VERSION.sfs
    cp /tmp/initrd$VERSION.sfs /d/lnx
    sync
    srv drop
    /d/qstart
    ;;
  *)
     echo "usage: make"
     ;;
esac

