
# cdo commands

- convert grib with gaussian reduced grid (reduced_gg) to netcdf4 with regular grid:
```
cdo -f nc setgridtype,regular ICMCLECE4 out.nc
```

- for listing variables inside grib files:
```
grib_ls ICMCECE4
```

- sometimes files have two types of grib (grib1 and grib2),
to overcome this issue use the ecmwf library --eccodes, e.g.
```
cdo –eccodes sinfo ICMGGECE4INIT
cdo –eccodes vardes ICMGGECE4INIT
```

- spectral truncation:
```
cdo sp2sp,n-trunc
```

- spectral to grid point:
```
cdo sp2gpl in.nc out.nc
```

- or more complex commands:
```
cdo -f nc sp2gpl -spl2sp,63 -sp2sp,1 ICMSHECE4INIT showtime.nc
```
