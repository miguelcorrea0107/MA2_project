v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Inverter amplifier} -40 -220 0 0 0.4 0.4 {layer=8 font="Liberation Sans"}
N 120 0 120 10 {
lab=#net1}
N 120 70 120 90 {
lab=#net2}
N 120 150 120 170 {
lab=GND}
N -120 0 -30 -0 {}
N 50 0 190 0 {}
N -60 -80 -20 -80 {}
N -60 -80 -60 0 {}
N 40 -80 80 -80 {}
N 80 -80 80 0 {}
C {sky130_tests/not.sym} 10 0 0 0 {name=x1 m=1 
+ W_N=1 L_N=0.15 W_P=2 L_P=0.15 
+ VCCPIN=VCC VSSPIN=VSS}
C {devices/ipin.sym} -120 0 0 0 {name=p1 lab=in
}
C {devices/opin.sym} 190 0 0 0 {name=p2 lab=out
}
C {sky130_fd_pr/res_generic_m1.sym} 10 -80 3 0 {name=R1
W=1
L=1
model=res_generic_m1
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} 120 40 0 0 {name=R2
W=1
L=1
model=res_generic_m1
mult=1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 120 120 0 0 {name=C1 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {devices/gnd.sym} 120 170 0 0 {name=l6 lab=GND}
