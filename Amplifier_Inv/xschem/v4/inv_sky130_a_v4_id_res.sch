v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -210 0 -180 0 {
lab=in}
N 60 0 90 0 {
lab=VS1}
N 270 0 270 30 {
lab=out}
N 90 0 110 0 {
lab=VS1}
N -120 0 -20 0 {
lab=VD1}
N -50 -100 -50 0 {
lab=VD1}
N 100 -100 100 0 {
lab=VS1}
N 210 0 270 0 {
lab=out}
N -50 -120 -50 -100 {
lab=VD1}
N -50 -120 -20 -120 {
lab=VD1}
N 40 -120 100 -120 {
lab=VS1}
N 100 -120 100 -100 {
lab=VS1}
N 170 0 180 0 {
lab=out}
N 180 0 210 0 {
lab=out}
N 270 90 270 110 {
lab=GND}
N 240 70 240 90 {
lab=GND}
N 240 90 300 90 {
lab=GND}
N 300 70 300 90 {
lab=GND}
C {sky130_tests/not.sym} 20 0 0 0 {name=x1 m=1 
+ W_N=250 L_N=1 W_P=200 L_P=0.25
+ VCCPIN=VCC VSSPIN=VSS}
C {devices/ipin.sym} -210 0 0 0 {name=p1 lab=in
}
C {devices/title.sym} -420 160 0 0 {name=l3 author="Rafael Miguel Correa"}
C {sky130_fd_pr/cap_mim_m3_1.sym} -150 0 3 0 {name=C1 model=cap_mim_m3_1 W=26 L=26 MF=1 spiceprefix=X}
C {devices/opin.sym} 270 0 0 0 {name=p2 lab=out
}
C {devices/gnd.sym} 270 110 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 100 -120 1 0 {name=p4 lab=VS1}
C {devices/lab_pin.sym} -70 0 3 0 {name=out1 sig_type=std_logic lab=VD1
}
C {sky130_fd_pr/nfet3_01v8.sym} 270 50 3 1 {name=M3
W=100
L=10
body=GND
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/res.sym} 10 -120 1 0 {name=R1
value=3e9
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 140 0 1 0 {name=R2
value=8e6
footprint=1206
device=resistor
m=1}
