
# bash command

- delete files in all sub-directories:
```
find /some/directory -type f -name "*.txt" -delete
```

- cumulative sum:
```
awk '{i=i+$2; print $1,i}' infile > outfile
```

- burn iso on a pen drive:
Unmount disk
```
sudo umount /dev/disk2
```
or in mac
```
diskutil list
diskutil unmount /dev/disk2s1
```
burning iso
```
sudo dd if=~/Downloads/some-distro.iso of=/dev/disk2 bs=1m
```

---

- create ssh keygen:
generate the public and private key in folder `~/.ssh`
```
ssh-keygen
```
copy public key to remote-host
```
ssh-copy-id -i ~/.ssh/id_rsa.pub <remote-host>
```

- per copiare/sincronizzare con un ssh jump
```
rsync -avz -e "ssh -J nome@jump_host" cartella_locale user@server:/percorso/remoto
```

---

per decomprimere tar:
```
tar -xzf nome_tarball.20091009.tgz
```
per comprimere tar
```
tar -czvf nome_tarball.`date +%Y%m%d`.tgz file_o_cartella_da_archiviare1 file_o_cartella_da_archiviare2 ...
```