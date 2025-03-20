
# gnuplot commands


- Do-loop structure

```
do for [i=0:N] {
set output sprintf("z.%03.f.png",i)
data=sprintf("z.%03.f",i)
pl data binary array=1024x1024 w image
}
```

- multiple curves

```
plot for [n=1:100] sprintf("path.%03.0f",n) u 2:3 w l
```

- plot fields

```
pl [1:512][1:512] 'filename' binary array=512x512 format="%float" w image
```