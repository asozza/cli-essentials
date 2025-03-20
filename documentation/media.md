
# media manipulation

## audio (`mp3`, `flac`, `m4a`)

- convert `flac` to `mp3`
```
for i in *.flac ; do ffmpeg -i "$i" -codec:v copy -codec:a libmp3lame -q:a 2 ./"${i%.flac}.mp3"; done
```

- convert `m4a` to `mp3`
```
for f in *.m4a; do ffmpeg -i "$f" -codec:v copy -codec:a libmp3lame -q:a 2 ./"${f%.m4a}.mp3"; done
```

---

## video (`gif`, `avi`, `mov`, `mp4`)

- merge multiple `avi`
```
cat SW1.avi SW2.avi > SW_all.avi
ffmpeg -i SW_all.avi -acodec copy -vcodec copy SW_all_reindex.avi
```

- convert `mov` to `mp4`
```
ffmpeg -i floaters.mov -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" floater.mp4
```

- convert `gif` to `mp4`
```
ffmpeg -i pile_darker.gif -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" bouss5d.mp4
```

---