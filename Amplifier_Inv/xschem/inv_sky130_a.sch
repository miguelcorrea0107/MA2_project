v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -120 0 -30 0 {
lab=in}
N 50 0 90 0 {
lab=test}
N 150 0 190 0 {
lab=out}
N 170 0 170 20 {
lab=out}
N 170 80 170 100 {
lab=GND}
N 80 -120 80 0 {
lab=test}
N 40 -120 80 -120 {
lab=test}
N -60 -120 -20 -120 {
lab=in}
N -60 -120 -60 0 {
lab=in}
C {sky130_tests/not.sym} 10 0 0 0 {name=x1 m=1 
+ W_N=50 L_N=0.15 W_P=100 L_P=0.15
+ VCCPIN=VCC VSSPIN=VSS}
C {devices/ipin.sym} -120 0 0 0 {name=p1 lab=in
}
C {devices/opin.sym} 190 0 0 0 {name=p2 lab=out
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 170 50 0 0 {name=C1 model=cap_mim_m3_1 W=70 L=60 MF=6 spiceprefix=X}
C {devices/gnd.sym} 170 100 0 0 {name=l6 lab=GND}
C {sky130_fd_pr/res_xhigh_po.sym} 10 -120 3 0 {name=R1
W=1
L=90
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/gnd.sym} 10 -100 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/res_xhigh_po.sym} 120 0 3 0 {name=R2
W=1
L=50
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/gnd.sym} 120 20 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 80 -120 2 0 {name=out sig_type=std_logic lab=test
}
C {devices/title.sym} -450 160 0 0 {name=l3 author="Rafael Miguel Correa"}
