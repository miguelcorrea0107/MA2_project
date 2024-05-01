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
N 250 -220 320 -220 {
lab=out}
N 320 -220 320 -200 {
lab=out}
N 320 -140 320 -80 {
lab=GND}
N -320 -80 -320 -50 {
lab=VCC}
N -140 -80 -110 -80 {
lab=in}
N 210 -220 250 -220 {
lab=out}
N -70 -200 -70 -80 {
lab=in
}
N -110 -80 -40 -80 {
lab=in}
N 20 -230 20 -220 {
lab=GND}
N -30 -370 -30 -350 {
lab=VCC}
N 20 -180 20 -160 {
lab=GND}
N -20 -230 20 -230 {
lab=GND}
N -20 -230 -20 -170 {
lab=GND}
N -20 -170 20 -170 {
lab=GND}
N -30 -310 -30 -300 {
lab=VCC}
N -30 -300 10 -300 {
lab=VCC}
N -30 -360 10 -360 {
lab=VCC}
N 10 -360 10 -300 {
lab=VCC}
N -70 -310 -70 -200 {
lab=in}
N -70 -310 -60 -310 {
lab=in}
N -70 -220 -10 -220 {
lab=in}
N 50 -220 70 -220 {
lab=test}
N 70 -220 70 -200 {
lab=test}
N 0 -310 70 -310 {
lab=test}
N 70 -310 70 -220 {
lab=test}
N 70 -200 70 -80 {
lab=test}
N 40 -80 70 -80 {
lab=test}
N 160 -230 160 -220 {
lab=GND}
N 110 -370 110 -350 {
lab=VCC}
N 160 -180 160 -160 {
lab=GND}
N 120 -230 160 -230 {
lab=GND}
N 120 -230 120 -170 {
lab=GND}
N 120 -170 160 -170 {
lab=GND}
N 110 -310 110 -300 {
lab=VCC}
N 110 -300 150 -300 {
lab=VCC}
N 110 -360 150 -360 {
lab=VCC}
N 150 -360 150 -300 {
lab=VCC}
N 70 -310 80 -310 {
lab=test}
N 70 -220 130 -220 {
lab=test}
N 190 -220 210 -220 {
lab=out}
N 140 -310 210 -310 {
lab=out}
N 210 -310 210 -220 {
lab=out}
N 110 -380 110 -370 {
lab=VCC}
N -30 -380 -30 -370 {
lab=VCC}
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
C {devices/gnd.sym} 320 -80 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -140 -20 0 0 {name=Vin value="0.53377 ac 1e-3
+ sin(0.53377 0.001 1000 0 0 0)" savecurrent=false}
C {devices/res.sym} 320 -170 0 0 {name=Rl
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
C {devices/lab_pin.sym} 320 -220 2 0 {name=out1 sig_type=std_logic lab=out
}
C {devices/lab_pin.sym} -140 -80 0 0 {name=out3 sig_type=std_logic lab=in
}
C {sky130_tests/not.sym} 0 -80 0 0 {name=x1 m=1 
+ W_N=250 L_N=1 W_P=200 L_P=0.25
+ VCCPIN=VCC VSSPIN=VSS}
C {devices/lab_pin.sym} 70 -310 1 0 {name=out sig_type=std_logic lab=test
}
C {devices/gnd.sym} 20 -160 0 1 {name=l9 lab=GND}
C {devices/gnd.sym} 160 -160 0 1 {name=l10 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 20 -200 3 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 160 -200 3 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} -30 -330 1 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} 110 -330 1 0 {name=M4
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
C {devices/vdd.sym} -30 -380 0 0 {name=l11 lab=VCC}
C {devices/vdd.sym} 110 -380 0 0 {name=l12 lab=VCC}
