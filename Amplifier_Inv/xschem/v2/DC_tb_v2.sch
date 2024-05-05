v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -140 -80 -140 -50 {
lab=in}
N -320 10 -320 60 {
lab=GND}
N -230 10 -230 60 {
lab=GND}
N -230 -80 -230 -50 {
lab=VSS}
N -140 10 -140 60 {
lab=GND}
N 220 -80 290 -80 {
lab=out}
N 290 -80 290 -60 {
lab=out}
N 290 0 290 60 {
lab=GND}
N -320 -80 -320 -50 {
lab=VCC}
N -140 -80 -110 -80 {
lab=in}
N 180 -80 220 -80 {
lab=out}
N 180 10 180 30 {
lab=GND}
N -80 -200 -80 -80 {
lab=in
}
N -120 -80 -50 -80 {
lab=in}
N 60 -200 60 -80 {
lab=#net1}
N 30 -80 60 -80 {
lab=#net1}
N 160 -80 180 -80 {
lab=out}
N 180 -80 180 -50 {
lab=out}
N -70 -200 -30 -200 {
lab=in}
N -50 -240 0 -240 {
lab=in}
N 0 -200 0 -170 {
lab=GND}
N 40 -320 60 -320 {
lab=#net1}
N 60 -320 60 -280 {
lab=#net1}
N 10 -280 60 -280 {
lab=#net1}
N 0 -350 0 -320 {
lab=VCC}
N -80 -200 -70 -200 {
lab=in}
N -80 -240 -50 -240 {
lab=in}
N -80 -320 -50 -320 {
lab=in}
N -80 -320 -80 -240 {
lab=in}
N -80 -240 -80 -200 {
lab=in}
N 60 -280 60 -200 {
lab=#net1}
N -50 -320 -30 -320 {
lab=in}
N 0 -280 10 -280 {
lab=#net1}
N 30 -320 40 -320 {
lab=#net1}
N 60 -80 100 -80 {
lab=#net1}
N 80 -120 130 -120 {
lab=#net1}
N 80 -120 80 -80 {
lab=#net1}
N 130 -80 130 -50 {
lab=GND}
N 140 -200 160 -200 {
lab=out}
N 160 -200 160 -160 {
lab=out}
N 110 -160 160 -160 {
lab=out}
N 110 -230 110 -200 {
lab=VCC}
N 80 -200 80 -120 {
lab=#net1}
N 160 -160 160 -80 {
lab=out}
N 30 -200 60 -200 {
lab=#net1}
C {devices/gnd.sym} -140 60 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -230 -20 0 0 {name=VN value=0 savecurrent=false}
C {devices/vsource.sym} -320 -20 0 0 {name=VP value=1.125 savecurrent=false}
C {devices/gnd.sym} -230 60 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -320 60 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} -230 -80 0 0 {name=l4 lab=VSS}
C {devices/code.sym} 385 -10 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/gnd.sym} 290 60 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -140 -20 0 0 {name=Vin value="0.53377 ac 1e-3
+ sin(0.53377 0.001 1000 0 0 0)" savecurrent=false}
C {devices/res.sym} 290 -30 0 0 {name=Rl
value=1e60
footprint=1206
device=resistor
m=1}
C {devices/title.sym} -320 190 0 0 {name=l7 author="Rafael Miguel Correa"}
C {devices/code.sym} 500 -165 0 1 {name=control only_toplevel=false value=".control

  dc Vin 0 1.125 0.00001
  save all v(out) v(in)
  write tb_inv_sky130_a_DC_v2.raw v(out) v(in)

.endc
"
savecurrent = false
}
C {devices/vdd.sym} -320 -80 0 0 {name=l5 lab=VCC}
C {devices/lab_pin.sym} 290 -80 2 0 {name=out1 sig_type=std_logic lab=out
}
C {devices/lab_pin.sym} -140 -80 0 0 {name=out3 sig_type=std_logic lab=in
}
C {sky130_tests/not.sym} -10 -80 0 0 {name=x1 m=1 
+ W_N=250 L_N=1 W_P=200 L_P=0.25
+ VCCPIN=VCC VSSPIN=VSS}
C {sky130_fd_pr/cap_mim_m3_1.sym} 180 -20 0 0 {name=C2 model=cap_mim_m3_1 W=14 L=15 MF=1 spiceprefix=X}
C {devices/gnd.sym} 180 30 0 0 {name=l8 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 0 -220 3 1 {name=M1
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
C {devices/gnd.sym} 0 -170 0 1 {name=l9 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 0 -300 3 0 {name=M3
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
C {devices/vdd.sym} 0 -350 0 1 {name=l10 lab=VCC}
C {sky130_fd_pr/nfet_01v8.sym} 130 -100 3 1 {name=M2
W=10
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
C {devices/gnd.sym} 130 -50 0 1 {name=l11 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 110 -180 3 0 {name=M4
W=20
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
C {devices/vdd.sym} 110 -230 0 1 {name=l12 lab=VCC}
