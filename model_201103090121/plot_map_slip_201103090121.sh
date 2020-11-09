#!/bin/bash
G=map_slip.ps
# R= 0.256E+02/0.280E+02/0.367E+02/0.391E+02
S=10
FFI_SD_v2 << EOF
    37.888     26.834     10.000
EOF
lomin=`echo | awk '{print $1}' r.dat`
lomax=`echo | awk '{print $2}' r.dat`
lamin=`echo | awk '{print $3}' r.dat`
lamax=`echo | awk '{print $4}' r.dat`
rm -f r.dat
R=$lomin/$lomax/$lamin/$lamax
gmtset FONT_ANNOT_PRIMARY  14
gmtset FONT_LABEL 14
gmtset PS_MEDIA A4
gmtset MAP_FRAME_TYPE plain
gmtset MAP_FRAME_PEN thinner
pscoast -JM$S -R$R -Df -W2 -K -Ba1f0.5SWen -Df -X2.5c -Y4.5c -P > $G 
# nearneighbor -R$R md.dat -S0.05 -I0.01  -: -Gmap_slip.grd 
#---
# pscoast -J -R -Df -W2 -K  -X2.5c -Y4.5c -P > $G 
# grdimage -J -R map_slip.grd -Ccolor.cpt -K -O  >> $G 
# grdcontour -J -R map_slip.grd -C0.200E+00 -L0.200E+00/200 -W1 -K -O >> $G
# pscoast    -J -R -Df -W -Ba1f0.5SWen -K -O >> $G 
psxy -J -R ~/data/trench.gmt -W,50  -O -K >> $G 
awk '{print }' MecaDis2.dat | psmeca -J -R -Sm0.5c -Zcolor.cpt -: -T0 -O -K >> $G
# psxy  -J -R mv.dat -: -G50 -Sv0.04c/0.1c/0.1c  -O -K >> $G 
psxy   -J -R  -: -G255/255/0 -Sa0.5c  -W1  -O -K <<EOF>> $G 
    37.888     26.834
EOF
awk '{print }' MecaDis2.dat | psmeca -J -R -Sm0.5c -Zcolor.cpt -: -T0 -O -K >> $G
psscale -Ccolor.cpt -D12.3c/4c/5c/0.25c  -B+l'slip (m)' -O >> $G 
psconvert -Z -Tf -A $G
