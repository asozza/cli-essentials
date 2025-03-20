
# bash command

- delete files in all sub-directories
```
find /some/directory -type f -name "*.txt" -delete
```

- cumulative sum
```
awk '{i=i+$2; print $1,i}' infile > outfile
```

- burn iso
```
sudo umount /dev/disk2
sudo dd if=~/Downloads/some-distro.iso of=/dev/disk2 bs=1m
```