Gluster Container
===

Build
===

```
docker build -t gluster .
```

Setup
====

```
brew install e2fsprogs

dd if=/dev/zero of=disk1.img count=100 bs=1024000
dd if=/dev/zero of=disk2.img count=100 bs=1024000
 
mkdir disk1 disk2

sudo /usr/local/opt/e2fsprogs/sbin/mkfs.ext4 ./disk1.img
sudo /usr/local/opt/e2fsprogs/sbin/mkfs.ext4 ./disk2.img

mount -o loop disk1.img ./disk1
mount -o loop disk2.img ./disk2
```

Running
===

```
docker run -d --hostname gluster1 --name gluster1 -v disk1:/data gluster
docker run -d --hostname gluster2 --name gluster2 -v disk2:/data --link=gluster1 gluster
```

