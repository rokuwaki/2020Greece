#!/bin/bash
GRAP=slip.ps
gmtset PROJ_LENGTH_UNIT cm
gmtset FONT_LABEL 14p
gmtset FONT_ANNOT_PRIMARY 12p
gmtset PS_MEDIA A4
CPT=color.cpt
RENG=-0.600E+02/0.600E+02/-0.250E+02/0.100E+02
RENG2=-0.1E+03/0.1E+03/-0.5E+02/0.2E+02
SIZE=.108E+00
RENGs=0/.300E+02/0/0.485E+01
SIZEs=6c/4.5c
#----
#_______MECA Plot__________________
psbasemap -R$RENG -Jx$SIZE -X3c -Y3c -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -P > $GRAP
psxy -Jx -R -G255/255/0  -Sa1.  -W1 -O -K <<+>> $GRAP
0.0  0.0
+
psmeca -R$RENG -Jx -Sm0.8c -G0/155/55 -O -K MecaDis.dat -T0 -M -Z$CPT >> $GRAP
psscale -C$CPT -D15c/4c/6c/0.3c -B+l'slip (m)' -O -K >> $GRAP
psmeca -R-10/10/-10/10 -JX5c -Sm3.5c -T0 -M -G195/51/44 -K -O -Y13c <<+>>$GRAP
0.00 0.00 1.00  -0.717721  1.009314 -0.291593 -0.298745  0.365428 -0.217400 26
+
psbasemap -R$RENGs -JX$SIZEs -Ba0.500E+01f5:'Time (s)':/a0.200E+01f0.100E+01:'(10@+18@+ Nm/s)':SW -X8c -Y0.5c -O -K >>$GRAP
awk '{print $1, $2}' st.dat | psxy -R -JX -W0 -N -O -K -G195/51/44 >>$GRAP
pstext -JX15c/3.7c -R0/20/0/6.2 -O -X-8c -Y5c -F+f16,Helvetica+jLM <<EOF>> $GRAP
0.5 5.2   /home/rokuwaki/2020Greece/2020-10-30-mww70-dodecanese-islands-greece          
3.0 4 (Strike,Dip,Slip) = (276.0, 29.0,    0.0)
3.0 3 Moment = 0.5365E+20(Nm); Mw = 7.1
3.0 2 Variance =      0.45280
3.0 1 Depth =  10.00(km) ; Vrmax =   3.50(km/sec)
EOF
psconvert -Tf -Z -A $GRAP 
