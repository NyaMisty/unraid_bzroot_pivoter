#tar --owner=root --group=root -cvf patch.tar etc
#bsdtar --format=newc -cf - @patch.tar > patch.cpio
find etc | fakeroot cpio -o -H newc > patch.cpio
file patch.cpio
#xz -k -f patch.cpio
cp patch.cpio bzroot_pivoter
