v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -70 0 -30 0 {
lab=in}
N 50 0 90 0 {
lab=out}
N 90 -0 100 -0 {
lab=out}
C {sky130_tests/not.sym} 10 0 0 0 {name=x1 m=1 
+ W_N=1 L_N=0.15 W_P=2 L_P=0.15 
+ VCCPIN=VCC VSSPIN=VSS}
C {devices/ipin.sym} -70 0 0 0 {name=p1 lab=in
}
C {devices/opin.sym} 100 0 0 0 {name=p2 lab=out
}
