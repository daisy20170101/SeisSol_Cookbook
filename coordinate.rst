This is the instruction of how to get topography data and how to convert geographic coordinates to Cartesian cooridinates. We use the cartographic software proj.4 to get the standard coordiantes. 

1.Download Etopo1 topographic data from https://www.ngdc.noaa.gov/mgg/global/

2.Extrac study region (e.g. Guerrero) using e.g. GMT5.1

::

  #!/bin/bash
  Rflag="-R-104/-100/16/20"
  grdfile="mextopo_1m"
  gmt grdraster ETOPO1 -I1m  $Rflag  -V  -G${grdfile}.grd
  gmt grd2xyz ${grdfile}.grd $Rflag -V > ${grdfile}.latlon

3.Use cs2cs in proj.4 to get standard UTM coordinates.

::

  cat mextopo_1m.latlon | cs2cs +proj=latlong +datum=WGS84 +to +proj=utm +zone=14 +datum=WGS84 +units=m  +no_defs > mextopo_1m_proj4.xyz


