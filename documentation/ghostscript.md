
# ghostscript

- merge multiple `pdf`:
```
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=merged.pdf file1.pdf file2.pdf
```

- reduce size of `pdf`:
```
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=file_reduced.pdf file.pdf
```

- convert from `pdf` to `eps`:
```
gs -q -dNOCACHE -dNOPAUSE -dBATCH -dSAFER -sDEVICE=epswrite -sOutputFile=file.eps file.pdf
```

---