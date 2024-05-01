v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 220 -140 260 -140 {
lab=out}
N 220 -30 220 -10 {
lab=GND}
N -60 -120 -60 0 {
lab=#net1
}
N -100 0 -30 0 {
lab=#net1}
N -190 0 -160 0 {
lab=in}
N 30 -150 30 -140 {
lab=GND}
N -20 -290 -20 -270 {
lab=VCC}
N 30 -100 30 -80 {
lab=GND}
N -10 -150 30 -150 {
lab=GND}
N -10 -150 -10 -90 {
lab=GND}
N -10 -90 30 -90 {
lab=GND}
N -20 -230 -20 -220 {
lab=VCC}
N -20 -220 20 -220 {
lab=VCC}
N -20 -280 20 -280 {
lab=VCC}
N 20 -280 20 -220 {
lab=VCC}
N -60 -230 -60 -120 {
lab=#net1}
N -60 -230 -50 -230 {
lab=#net1}
N -60 -140 0 -140 {
lab=#net1}
N 60 -140 80 -140 {
lab=test}
N 80 -140 80 -120 {
lab=test}
N 10 -230 80 -230 {
lab=test}
N 80 -230 80 -140 {
lab=test}
N 80 -120 80 -0 {
lab=test}
N 50 0 80 0 {
lab=test}
N 170 -150 170 -140 {
lab=GND}
N 120 -290 120 -270 {
lab=VCC}
N 170 -100 170 -80 {
lab=GND}
N 130 -150 170 -150 {
lab=GND}
N 130 -150 130 -90 {
lab=GND}
N 130 -90 170 -90 {
lab=GND}
N 120 -230 120 -220 {
lab=VCC}
N 120 -220 160 -220 {
lab=VCC}
N 120 -280 160 -280 {
lab=VCC}
N 160 -280 160 -220 {
lab=VCC}
N 80 -230 90 -230 {
lab=test}
N 80 -140 140 -140 {
lab=test}
N 200 -140 220 -140 {
lab=out}
N 150 -230 220 -230 {
lab=out}
N 220 -230 220 -140 {
lab=out}
N 120 -300 120 -290 {
lab=VCC}
N -20 -300 -20 -290 {
lab=VCC}
N 220 -140 220 -90 {
lab=out}
C {sky130_tests/not.sym} 10 0 0 0 {name=x1 m=1 
+ W_N=250 L_N=1 W_P=200 L_P=0.25
+ VCCPIN=VCC VSSPIN=VSS}
C {devices/ipin.sym} -190 0 0 0 {name=p1 lab=in
}
C {devices/opin.sym} 260 -140 0 0 {name=p2 lab=out
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 220 -60 0 0 {name=C2 model=cap_mim_m3_1 W=14 L=15 MF=1 spiceprefix=X}
C {devices/gnd.sym} 220 -10 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 80 -230 1 0 {name=out sig_type=std_logic lab=test
}
C {devices/title.sym} -430 160 0 0 {name=l3 author="Rafael Miguel Correa"}
C {sky130_fd_pr/cap_mim_m3_1.sym} -130 0 3 0 {name=C1 model=cap_mim_m3_1 W=22 L=22 MF=1 spiceprefix=X}
C {devices/gnd.sym} 30 -80 0 1 {name=l2 lab=GND}
C {devices/lab_pin.sym} -20 -300 0 0 {name=p149 lab=VCC}
C {devices/gnd.sym} 170 -80 0 1 {name=l1 lab=GND}
C {devices/lab_pin.sym} 120 -300 2 0 {name=p3 lab=VCC}
C {sky130_fd_pr/nfet_01v8.sym} 30 -120 3 0 {name=M1
W=1
L=0.15
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
C {sky130_fd_pr/nfet_01v8.sym} 170 -120 3 0 {name=M3
W=1
L=0.15
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
C {sky130_fd_pr/pfet_01v8.sym} -20 -250 1 0 {name=M2
W=2
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 120 -250 1 0 {name=M4
W=2
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
