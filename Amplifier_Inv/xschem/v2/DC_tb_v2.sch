v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -220 -80 -220 -50 {
lab=in}
N -410 10 -410 60 {
lab=GND}
N -320 10 -320 60 {
lab=GND}
N -320 -80 -320 -50 {
lab=VSS}
N -220 10 -220 60 {
lab=GND}
N 280 -80 350 -80 {
lab=out}
N 350 -80 350 -60 {
lab=out}
N 350 0 350 60 {
lab=GND}
N -410 -80 -410 -50 {
lab=VCC}
N -220 -80 -190 -80 {
lab=in}
N 210 10 210 30 {
lab=GND}
N 0 -80 30 -80 {
lab=VS1}
N 210 -80 210 -50 {
lab=out}
N 30 -80 50 -80 {
lab=VS1}
N -110 -180 -110 -80 {
lab=#net1}
N 40 -180 40 -80 {
lab=VS1}
N -110 -200 -110 -180 {
lab=#net1}
N -110 -200 -80 -200 {
lab=#net1}
N -20 -200 40 -200 {
lab=VS1}
N 40 -200 40 -180 {
lab=VS1}
N -50 -270 -50 -240 {
lab=VG1}
N -50 -270 -30 -270 {
lab=VG1}
N 40 -270 40 -200 {
lab=VS1}
N 30 -270 40 -270 {
lab=VS1}
N 90 -150 90 -120 {
lab=VG2}
N 90 -150 110 -150 {
lab=VG2}
N 180 -150 180 -80 {
lab=out}
N 170 -150 180 -150 {
lab=out}
N 120 -80 130 -80 {
lab=out}
N 130 -80 160 -80 {
lab=out}
N -110 -80 -80 -80 {
lab=#net1}
N 210 -80 280 -80 {
lab=out}
N 210 30 210 60 {
lab=GND}
N 160 -80 210 -80 {
lab=out}
N 50 -80 60 -80 {
lab=VS1}
N -130 -80 -110 -80 {
lab=#net1}
C {devices/gnd.sym} -220 60 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -320 -20 0 0 {name=VN value=0 savecurrent=false}
C {devices/vsource.sym} -410 -20 0 0 {name=VP value=1.125 savecurrent=false}
C {devices/gnd.sym} -320 60 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -410 60 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} -320 -80 0 0 {name=l4 lab=VSS}
C {devices/code.sym} 395 -10 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/gnd.sym} 350 60 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -220 -20 0 0 {name=Vin value="0.44866 ac 1e-3
+ sin(0.44866 0.001 1000 0 0 0)" savecurrent=false}
C {devices/res.sym} 350 -30 0 0 {name=Rl
value=1e60
footprint=1206
device=resistor
m=1}
C {devices/title.sym} -320 190 0 0 {name=l7 author="Rafael Miguel Correa"}
C {devices/code.sym} 510 -165 0 1 {name=control only_toplevel=false value=".control

  dc Vin 0 1.125 0.00001
  save all v(out) v(vg1) v(vg2) v(vs1)
  write tb_inv_sky130_a_DC_v2.raw v(out) v(vg1) v(vg2) v(vs1)
  
  exit 0
.endc
"
savecurrent = false
}
C {devices/vdd.sym} -410 -80 0 0 {name=l5 lab=VCC}
C {devices/lab_pin.sym} 350 -80 2 0 {name=out1 sig_type=std_logic lab=out
}
C {devices/lab_pin.sym} -220 -80 0 0 {name=out3 sig_type=std_logic lab=in
}
C {sky130_tests/not.sym} -40 -80 0 0 {name=x2 m=1 
+ W_N=250 L_N=1 W_P=200 L_P=0.25
+ VCCPIN=VCC VSSPIN=VSS}
C {sky130_fd_pr/cap_mim_m3_1.sym} 210 -20 0 0 {name=C1 model=cap_mim_m3_1 W=50 L=50 MF=1 spiceprefix=X}
C {devices/gnd.sym} 210 60 0 0 {name=l13 lab=GND}
C {sky130_fd_pr/nfet3_01v8.sym} -50 -220 3 1 {name=M5
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
C {devices/vsource.sym} 0 -270 3 0 {name=Vgs1 value="dc 0.2" savecurrent=false}
C {sky130_fd_pr/nfet3_01v8.sym} 90 -100 3 1 {name=M6
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
C {devices/vsource.sym} 140 -150 3 0 {name=Vgs2 value="dc 0.63" savecurrent=false}
C {devices/lab_pin.sym} 40 -270 2 0 {name=out2 sig_type=std_logic lab=VS1
}
C {devices/lab_pin.sym} -50 -270 0 0 {name=out4 sig_type=std_logic lab=VG1
}
C {devices/lab_pin.sym} 90 -150 0 0 {name=out5 sig_type=std_logic lab=VG2
}
C {sky130_fd_pr/cap_mim_m3_1.sym} -160 -80 3 0 {name=C2 model=cap_mim_m3_1 W=26 L=26 MF=1 spiceprefix=X}
