
# cdo commands

## averaging

- weighted average using cell area or volume

```
# cat and select variable
cdo cat *_T_* data.nc
cdo selname,tos data.nc tos_monthly.nc

# time mean (if needed)
cdo yearmean tos_monthly.nc tos_yearly.nc

# weights
cdo selname,e1t ../../domain_cfg.nc tmp1.nc
cdo selname,e2t ../../domain_cfg.nc tmp2.nc
cdo mul tmp1.nc tmp2.nc tmp12.nc
cdo chname,e2t,cell_area weights.nc

# merge variable and weights
cdo merge tos_monthly.nc weights.nc merged.nc

# spatial average with weights
cdo fldmean,weights=TRUE merged.nc output.nc
```

## handling grib files

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
