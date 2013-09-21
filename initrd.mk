. ./common

echo "initrd version : $VERSION"

case "$1" in
  make)
    mksquashfs . /tmp/initrd$VERSION.sfs
    cp /tmp/initrd$VERSION.sfs /d/linux14
    /d/qstart
    ;;
  *)
     echo "usage: make"
     ;;
esac

