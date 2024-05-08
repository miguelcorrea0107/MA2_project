v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -220 -20 -190 -20 {
lab=in}
N 50 -20 80 -20 {
lab=VS1}
N 260 -20 260 10 {
lab=out}
N 80 -20 100 -20 {
lab=VS1}
N -130 -20 -30 -20 {
lab=VD1}
N -60 -120 -60 -20 {
lab=VD1}
N 90 -120 90 -20 {
lab=VS1}
N 200 -20 260 -20 {
lab=out}
N -60 -140 -60 -120 {
lab=VD1}
N -60 -140 -30 -140 {
lab=VD1}
N 30 -140 90 -140 {
lab=VS1}
N 90 -140 90 -120 {
lab=VS1}
N 160 -20 170 -20 {
lab=out}
N 170 -20 200 -20 {
lab=out}
N 0 -210 0 -180 {
lab=VG1}
N 130 -90 130 -60 {
lab=VG2}
N 260 70 260 90 {
lab=GND}
C {sky130_tests/not.sym} 10 -20 0 0 {name=x1 m=1 
+ W_N=250 L_N=1 W_P=200 L_P=0.25
+ VCCPIN=VCC VSSPIN=VSS}
C {devices/ipin.sym} -220 -20 0 0 {name=p1 lab=in
}
C {devices/title.sym} -430 140 0 0 {name=l3 author="Rafael Miguel Correa"}
C {sky130_fd_pr/cap_mim_m3_1.sym} -160 -20 3 0 {name=C1 model=cap_mim_m3_1 W=26 L=26 MF=1 spiceprefix=X}
C {devices/opin.sym} 260 -20 0 0 {name=p2 lab=out
}
C {sky130_fd_pr/nfet3_01v8.sym} 0 -160 3 1 {name=M1
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
C {sky130_fd_pr/nfet3_01v8.sym} 130 -40 3 1 {name=M2
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 260 40 0 0 {name=C2 model=cap_mim_m3_1 W=50 L=50 MF=1 spiceprefix=X}
C {devices/gnd.sym} 260 90 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 0 -210 0 0 {name=p149 lab=VG1}
C {devices/lab_pin.sym} 130 -90 2 0 {name=p3 lab=VG2}
C {devices/lab_pin.sym} 90 -140 1 0 {name=p4 lab=VS1}
C {devices/lab_pin.sym} -80 -20 3 0 {name=out1 sig_type=std_logic lab=VD1
}
