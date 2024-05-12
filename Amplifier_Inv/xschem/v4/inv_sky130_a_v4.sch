v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -230 -10 -200 -10 {
lab=in}
N 40 -10 70 -10 {
lab=VS1}
N 250 -10 250 20 {
lab=out}
N 70 -10 90 -10 {
lab=VS1}
N -140 -10 -40 -10 {
lab=VD1}
N -70 -110 -70 -10 {
lab=VD1}
N 80 -110 80 -10 {
lab=VS1}
N 190 -10 250 -10 {
lab=out}
N -70 -130 -70 -110 {
lab=VD1}
N -70 -130 -40 -130 {
lab=VD1}
N 20 -130 80 -130 {
lab=VS1}
N 80 -130 80 -110 {
lab=VS1}
N 150 -10 160 -10 {
lab=out}
N 160 -10 190 -10 {
lab=out}
N -10 -200 -10 -170 {
lab=VG1}
N 120 -80 120 -50 {
lab=VG2}
N 250 80 250 100 {
lab=GND}
N 220 60 220 80 {
lab=GND}
N 220 80 280 80 {
lab=GND}
N 280 60 280 80 {
lab=GND}
C {sky130_tests/not.sym} 0 -10 0 0 {name=x1 m=1 
+ W_N=250 L_N=1 W_P=200 L_P=0.25
+ VCCPIN=VCC VSSPIN=VSS}
C {devices/ipin.sym} -230 -10 0 0 {name=p1 lab=in
}
C {devices/title.sym} -440 150 0 0 {name=l3 author="Rafael Miguel Correa"}
C {sky130_fd_pr/cap_mim_m3_1.sym} -170 -10 3 0 {name=C1 model=cap_mim_m3_1 W=26 L=26 MF=1 spiceprefix=X}
C {devices/opin.sym} 250 -10 0 0 {name=p2 lab=out
}
C {sky130_fd_pr/nfet3_01v8.sym} -10 -150 3 1 {name=M1
W=0.5
L=0.15
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
C {sky130_fd_pr/nfet3_01v8.sym} 120 -30 3 1 {name=M2
W=0.5
L=0.15
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
C {devices/gnd.sym} 250 100 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -10 -200 0 0 {name=p149 lab=VG1}
C {devices/lab_pin.sym} 120 -80 2 0 {name=p3 lab=VG2}
C {devices/lab_pin.sym} 80 -130 1 0 {name=p4 lab=VS1}
C {devices/lab_pin.sym} -90 -10 3 0 {name=out1 sig_type=std_logic lab=VD1
}
C {sky130_fd_pr/nfet3_01v8.sym} 250 40 3 1 {name=M3
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
