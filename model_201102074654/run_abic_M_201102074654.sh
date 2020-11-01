#!/bin/bash
str=96.0 #270.0 #93.0 #276.0 #200.0
dip=53.0 #37.0 #61.0 #29.0  #50.0
rake=-90.0
Rslip=45.0
depth=10.0
XX=5.0
YY=5.0
MN=21
NN=7  #6
M0=11
N0=5  #5
ICMN=5
ns=2
vr=3.5
TR=0.8
JTN=15
st_max=30.
r_s_t=$vr
tl=200.
dt=$TR
dtg=0.1
dump=0.5
title=`pwd`
#for str in 20.0 200.0  #200.0 #200.0 20.0
#do
    id=`date +%y%m%d%H%M%S`
    echo $str $dip $rake $Rslip $depth $vr $XX $YY $MN $NN $M0 $N0 $ICMN $TR $JTN $ns $dt $dtg $tl $dump $st_max $r_s_t $title $id > $id.log.txt
    echo $str $dip $rake $Rslip $depth $vr $XX $YY $MN $NN $M0 $N0 $ICMN $TR $JTN $ns $dt $dtg $tl $dump $st_max $r_s_t $title $id
    FFI_abic_N2.csh $str $dip $rake $Rslip $depth $vr $XX $YY $MN $NN $M0 $N0 $ICMN $TR $JTN $ns $dt $dtg $tl $dump $st_max $r_s_t $title
    cp slip.pdf slip_$id.pdf
    cp map_slip.pdf map_slip_$id.pdf
    cp cwave_f.ps cwave_f_$id.ps
    cp st.dat st_$id.dat
    cp fort.40 fort.40_$id
    cp run_abic_M.sh run_abic_M_$id.sh
    cp plot_cwave_f.csh plot_cwave_f_$id.csh
    cp plot_map_slip.sh plot_map_slip_$id.sh
    cp Plot.sh Plot_$id.sh
    cp abic_min abic_min_$id.txt
    cp station.list station_$id.list
    cp fault.dat fault_$id.dat
    cp rigid.dat rigid_$id.dat
    cp epicenter.dat epicenter_$id.dat
    nodeloc
    cp knot_value.dat knot_value_$id.dat
    cp knot_value.dat_rim knot_value_$id.dat_rim
    cp .station.abic $id.station.abic
    cp structure.dat structure_$id.dat
    scp -r *$id* okuwaki.ryo.fu@icho.u.tsukuba.ac.jp:~/
#done

