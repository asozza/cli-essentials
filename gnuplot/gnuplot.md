
# gnuplot commands


- do-loop structure:
```
do for [i=0:N] {
set output sprintf("filename.%03.f.png",i)
data=sprintf("filename.%03.f",i)
pl data binary array=1024x1024 w image
}
```

- multiple curves:
```
plot for [n=1:100] sprintf("filename.%03.0f",n) u 2:3 w l
```

- plot binary fields:
```
pl [1:512][1:512] 'filename' binary array=512x512 format="%float" w image
```

- plot binary particles:
```
pl 'part.000' binary record=NP:NP skip=4:0
```