v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 260 90 260 110 {
lab=GND}
N -220 0 -190 0 {
lab=in}
N 50 0 80 0 {
lab=#net1}
N 260 0 260 30 {
lab=out}
N 80 0 100 0 {
lab=#net1}
N -130 0 -30 0 {
lab=#net2}
N -60 -100 -60 0 {
lab=#net2}
N 90 -100 90 -0 {
lab=#net1}
N 200 0 260 -0 {
lab=out}
N -60 -120 -60 -100 {
lab=#net2}
N -60 -120 -30 -120 {
lab=#net2}
N 30 -120 90 -120 {
lab=#net1}
N 90 -120 90 -100 {
lab=#net1}
N 0 -190 -0 -160 {
lab=#net3}
N -0 -190 20 -190 {
lab=#net3}
N 90 -190 90 -120 {
lab=#net1}
N 80 -190 90 -190 {
lab=#net1}
N 130 -70 130 -40 {
lab=#net4}
N 130 -70 150 -70 {
lab=#net4}
N 220 -70 220 0 {
lab=out}
N 210 -70 220 -70 {
lab=out}
N 160 0 170 0 {
lab=out}
N 170 0 200 0 {
lab=out}
C {sky130_tests/not.sym} 10 0 0 0 {name=x1 m=1 
+ W_N=250 L_N=1 W_P=200 L_P=0.25
+ VCCPIN=VCC VSSPIN=VSS}
C {devices/ipin.sym} -220 0 0 0 {name=p1 lab=in
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 260 60 0 0 {name=C2 model=cap_mim_m3_1 W=35 L=35 MF=1 spiceprefix=X}
C {devices/gnd.sym} 260 110 0 0 {name=l6 lab=GND}
C {devices/title.sym} -430 160 0 0 {name=l3 author="Rafael Miguel Correa"}
C {sky130_fd_pr/cap_mim_m3_1.sym} -160 0 3 0 {name=C1 model=cap_mim_m3_1 W=26 L=26 MF=1 spiceprefix=X}
C {devices/opin.sym} 260 0 0 0 {name=p2 lab=out
}
C {sky130_fd_pr/nfet3_01v8.sym} 0 -140 3 1 {name=M1
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
C {devices/vsource.sym} 50 -190 3 0 {name=Vgs1 value="dc 0.26" savecurrent=false}
C {sky130_fd_pr/nfet3_01v8.sym} 130 -20 3 1 {name=M2
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
C {devices/vsource.sym} 180 -70 3 0 {name=Vgs2 value="dc 0.6" savecurrent=false}
