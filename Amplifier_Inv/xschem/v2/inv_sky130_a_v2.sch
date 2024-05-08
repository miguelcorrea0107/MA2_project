v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 290 100 290 120 {
lab=GND}
N -220 10 -190 10 {
lab=in}
N 50 10 80 10 {
lab=vs1}
N 290 10 290 40 {
lab=out}
N 80 10 100 10 {
lab=vs1}
N -130 10 -30 10 {
lab=vd1}
N -60 -90 -60 10 {
lab=vd1}
N 90 -90 90 10 {
lab=vs1}
N 230 10 290 10 {
lab=out}
N -60 -110 -60 -90 {
lab=vd1}
N -60 -110 -30 -110 {
lab=vd1}
N 30 -110 90 -110 {
lab=vs1}
N 90 -110 90 -90 {
lab=vs1}
N 0 -180 0 -150 {
lab=vg1}
N 0 -180 20 -180 {
lab=vg1}
N 90 -180 90 -110 {
lab=vs1}
N 80 -180 90 -180 {
lab=vs1}
N 160 -60 160 -30 {
lab=#net1}
N 160 -60 180 -60 {
lab=#net1}
N 250 -60 250 10 {
lab=out}
N 240 -60 250 -60 {
lab=out}
N 190 10 200 10 {
lab=out}
N 200 10 230 10 {
lab=out}
N 100 10 130 10 {
lab=vs1}
C {sky130_tests/not.sym} 10 10 0 0 {name=x1 m=1 
+ W_N=250 L_N=1 W_P=200 L_P=0.25
+ VCCPIN=VCC VSSPIN=VSS}
C {devices/ipin.sym} -220 10 0 0 {name=p1 lab=in
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 290 70 0 0 {name=C2 model=cap_mim_m3_1 W=50 L=50 MF=1 spiceprefix=X}
C {devices/gnd.sym} 290 120 0 0 {name=l6 lab=GND}
C {devices/title.sym} -430 190 0 0 {name=l3 author="Rafael Miguel Correa"}
C {sky130_fd_pr/cap_mim_m3_1.sym} -160 10 3 0 {name=C1 model=cap_mim_m3_1 W=26 L=26 MF=1 spiceprefix=X}
C {devices/opin.sym} 290 10 0 0 {name=p2 lab=out
}
C {sky130_fd_pr/nfet3_01v8.sym} 0 -130 3 1 {name=M1
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
C {devices/vsource.sym} 50 -180 3 0 {name=Vgs1 value="dc 0.2" savecurrent=false}
C {sky130_fd_pr/nfet3_01v8.sym} 160 -10 3 1 {name=M2
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
C {devices/vsource.sym} 210 -60 3 0 {name=Vgs2 value="dc 0.63" savecurrent=false}
C {devices/lab_pin.sym} -70 10 3 0 {name=out1 sig_type=std_logic lab=vd1
}
C {devices/lab_pin.sym} 100 10 3 0 {name=out2 sig_type=std_logic lab=vs1
}
C {devices/lab_pin.sym} 0 -170 0 0 {name=out3 sig_type=std_logic lab=vg1
}
C {devices/lab_pin.sym} 160 -60 0 0 {name=out4 sig_type=std_logic lab=vg2
}
