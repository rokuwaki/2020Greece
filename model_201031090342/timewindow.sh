#!/bin/bash
## binary ##

############
x1=$(awk '{print $1}' range2.dat)
x2=$(awk '{print $2}' range2.dat)
y1=$(awk '{print $3}' range2.dat)
y2=$(awk '{print $4}' range2.dat)
r=$x1/$x2/$y1/$y2
dat1=snap.dat
dat2=snap2.dat
grd=mo.grd
interval=.42E-01
cpt=magma2.cpt
s=.11
length=$(echo $x2 $y2 | mapproject -Jx$s -R$r | awk '{print $2}')
p1='snapshot1.ps'
p2='snapshot2.ps'
p3='snapshot3.ps'
p4='snapshot4.ps'
p5='snapshot5.ps'
p6='snapshot6.ps'
p7='snapshot7.ps'
p8='snapshot8.ps'
p9='snapshot9.ps'
p10='snapshot10.ps'
p11='snapshot11.ps'
p12='snapshot12.ps'
p13='snapshot13.ps'
p14='snapshot14.ps'
p15='snapshot15.ps'
p16='snapshot16.ps'
p17='snapshot17.ps'
p18='snapshot18.ps'
p19='snapshot19.ps'
p20='snapshot20.ps'
p21='snapshot21.ps'
p22='snapshot22.ps'
p23='snapshot23.ps'
p24='snapshot24.ps'
p25='snapshot25.ps'
p26='snapshot26.ps'
p27='snapshot27.ps'
p28='snapshot28.ps'
p29='snapshot29.ps'
p30='snapshot30.ps'
psbasemap -R$r -Jx$s -Bnwse -K -P > $p1
psbasemap -R$r -Jx$s -Bnwse -K -P > $p2
psbasemap -R$r -Jx$s -Bnwse -K -P > $p3
psbasemap -R$r -Jx$s -Bnwse -K -P > $p4
psbasemap -R$r -Jx$s -Bnwse -K -P > $p5
psbasemap -R$r -Jx$s -Bnwse -K -P > $p6
psbasemap -R$r -Jx$s -Bnwse -K -P > $p7
psbasemap -R$r -Jx$s -Bnwse -K -P > $p8
psbasemap -R$r -Jx$s -Bnwse -K -P > $p9
psbasemap -R$r -Jx$s -Bnwse -K -P > $p10
psbasemap -R$r -Jx$s -Bnwse -K -P > $p11
psbasemap -R$r -Jx$s -Bnwse -K -P > $p12
psbasemap -R$r -Jx$s -Bnwse -K -P > $p13
psbasemap -R$r -Jx$s -Bnwse -K -P > $p14
psbasemap -R$r -Jx$s -Bnwse -K -P > $p15
psbasemap -R$r -Jx$s -Bnwse -K -P > $p16
psbasemap -R$r -Jx$s -Bnwse -K -P > $p17
psbasemap -R$r -Jx$s -Bnwse -K -P > $p18
psbasemap -R$r -Jx$s -Bnwse -K -P > $p19
psbasemap -R$r -Jx$s -Bnwse -K -P > $p20
psbasemap -R$r -Jx$s -Bnwse -K -P > $p21
psbasemap -R$r -Jx$s -Bnwse -K -P > $p22
psbasemap -R$r -Jx$s -Bnwse -K -P > $p23
psbasemap -R$r -Jx$s -Bnwse -K -P > $p24
psbasemap -R$r -Jx$s -Bnwse -K -P > $p25
psbasemap -R$r -Jx$s -Bnwse -K -P > $p26
psbasemap -R$r -Jx$s -Bnwse -K -P > $p27
psbasemap -R$r -Jx$s -Bnwse -K -P > $p28
psbasemap -R$r -Jx$s -Bnwse -K -P > $p29
psbasemap -R$r -Jx$s -Bnwse -K -P > $p30
 psscale -C$cpt -D13.2c/0+w$length/0.4c -Ba$interval+l'Potency rate density (m/s)' -O -K >> $p1
awk '{if($3==1) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p1
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p1
awk '{if($3==2) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p2
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p2
awk '{if($3==3) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p3
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p3
awk '{if($3==4) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p4
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p4
awk '{if($3==5) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p5
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p5
awk '{if($3==6) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p6
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p6
awk '{if($3==7) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p7
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p7
awk '{if($3==8) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p8
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p8
awk '{if($3==9) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p9
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p9
awk '{if($3==10) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p10
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p10
awk '{if($3==11) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p11
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p11
awk '{if($3==12) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p12
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p12
awk '{if($3==13) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p13
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p13
awk '{if($3==14) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p14
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p14
awk '{if($3==15) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p15
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p15
awk '{if($3==16) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p16
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p16
awk '{if($3==17) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p17
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p17
awk '{if($3==18) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p18
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p18
awk '{if($3==19) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p19
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p19
awk '{if($3==20) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p20
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p20
awk '{if($3==21) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p21
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p21
awk '{if($3==22) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p22
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p22
awk '{if($3==23) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p23
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p23
awk '{if($3==24) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p24
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p24
awk '{if($3==25) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p25
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p25
awk '{if($3==26) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p26
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p26
awk '{if($3==27) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p27
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p27
awk '{if($3==28) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p28
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p28
awk '{if($3==29) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p29
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p29
awk '{if($3==30) print $4, $5, $6}' $dat2 | xyz2grd -R -J -I0.5 -G$grd
grdimage $grd -J -C$cpt -R -O -K >> $p30
grdcontour $grd -C$interval -W1p,black -J -O -K >> $p30
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p1
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p2
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p3
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p4
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p5
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p6
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p7
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p8
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p9
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p10
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p11
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p12
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p13
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p14
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p15
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p16
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p17
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p18
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p19
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p20
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p21
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p22
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p23
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p24
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p25
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p26
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p27
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p28
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p29
psbasemap -R -J -Ba50:'Strike (km)':/a10:'Dip (km)':NWse -K -O >> $p30
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p1
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p2
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p3
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p4
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p5
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p6
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p7
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p8
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p9
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p10
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p11
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p12
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p13
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p14
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p15
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p16
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p17
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p18
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p19
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p20
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p21
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p22
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p23
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p24
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p25
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p26
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p27
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p28
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p29
0  0
EOF
psxy -J -R -Sa0.3c -G0 -W -O <<EOF >> $p30
0  0
EOF
psconvert -Tf -Z -A $p1
psconvert -Tf -Z -A $p2
psconvert -Tf -Z -A $p3
psconvert -Tf -Z -A $p4
psconvert -Tf -Z -A $p5
psconvert -Tf -Z -A $p6
psconvert -Tf -Z -A $p7
psconvert -Tf -Z -A $p8
psconvert -Tf -Z -A $p9
psconvert -Tf -Z -A $p10
psconvert -Tf -Z -A $p11
psconvert -Tf -Z -A $p12
psconvert -Tf -Z -A $p13
psconvert -Tf -Z -A $p14
psconvert -Tf -Z -A $p15
psconvert -Tf -Z -A $p16
psconvert -Tf -Z -A $p17
psconvert -Tf -Z -A $p18
psconvert -Tf -Z -A $p19
psconvert -Tf -Z -A $p20
psconvert -Tf -Z -A $p21
psconvert -Tf -Z -A $p22
psconvert -Tf -Z -A $p23
psconvert -Tf -Z -A $p24
psconvert -Tf -Z -A $p25
psconvert -Tf -Z -A $p26
psconvert -Tf -Z -A $p27
psconvert -Tf -Z -A $p28
psconvert -Tf -Z -A $p29
psconvert -Tf -Z -A $p30
mv snapshot1.pdf snapshot01.pdf
mv snapshot2.pdf snapshot02.pdf
mv snapshot3.pdf snapshot03.pdf
mv snapshot4.pdf snapshot04.pdf
mv snapshot5.pdf snapshot05.pdf
mv snapshot6.pdf snapshot06.pdf
mv snapshot7.pdf snapshot07.pdf
mv snapshot8.pdf snapshot08.pdf
mv snapshot9.pdf snapshot09.pdf
rm -rf *.grd gmt.*
