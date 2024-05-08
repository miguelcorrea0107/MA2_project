v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -250 0 -250 30 {
lab=in}
N -250 90 -250 140 {
lab=GND}
N 300 0 370 0 {
lab=out}
N 370 0 370 20 {
lab=out}
N 370 80 370 140 {
lab=GND}
N -250 0 -220 0 {
lab=in}
N 230 90 230 110 {
lab=GND}
N 20 0 50 0 {
lab=VS1}
N 230 0 230 30 {
lab=out}
N 50 0 70 0 {
lab=VS1}
N -90 -100 -90 0 {
lab=VD1}
N 60 -100 60 0 {
lab=VS1}
N 170 0 230 0 {
lab=out}
N -90 -120 -90 -100 {
lab=VD1}
N -90 -120 -60 -120 {
lab=VD1}
N 0 -120 60 -120 {
lab=VS1}
N 60 -120 60 -100 {
lab=VS1}
N 130 0 140 0 {
lab=out}
N 140 0 170 0 {
lab=out}
N -90 0 -60 0 {
lab=VD1}
N 230 0 300 0 {
lab=out}
N 230 110 230 140 {
lab=GND}
N -30 -190 -30 -160 {
lab=VG1}
N 100 -70 100 -40 {
lab=VG2}
N -600 90 -600 140 {
lab=GND}
N -510 90 -510 140 {
lab=GND}
N -510 0 -510 30 {
lab=VSS}
N -600 0 -600 30 {
lab=VCC}
N -440 90 -440 140 {
lab=GND}
N -350 90 -350 140 {
lab=GND}
N -350 0 -350 30 {
lab=VG2}
N -440 0 -440 30 {
lab=VG1}
N -100 -0 -90 0 {
lab=VD1}
N -130 0 -100 0 {
lab=VD1}
N -220 0 -190 0 {
lab=in}
C {devices/gnd.sym} -250 140 0 0 {name=l1 lab=GND}
C {devices/code.sym} 415 70 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/gnd.sym} 370 140 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -250 60 0 0 {name=Vin value="0.44866 ac 1e-3
+ sin(0.44866 0.001 1000 0 0 0)" savecurrent=false}
C {devices/res.sym} 370 50 0 0 {name=Rl
value=1e60
footprint=1206
device=resistor
m=1}
C {devices/title.sym} -300 270 0 0 {name=l7 author="Rafael Miguel Correa"}
C {devices/code.sym} 530 -85 0 1 {name=control only_toplevel=false value=".control

  dc Vin 0 1.125 0.00001
  save all v(out) v(vg1) v(vg2) v(vs1) v(vd1)
  write tb_inv_sky130_a_DC_v3.raw v(out) v(vg1) v(vg2) v(vs1) v(vd1)

  
  
  exit 0
.endc
"
savecurrent = false
}
C {devices/lab_pin.sym} 370 0 2 0 {name=out1 sig_type=std_logic lab=out
}
C {devices/lab_pin.sym} -250 0 0 0 {name=out3 sig_type=std_logic lab=in
}
C {sky130_tests/not.sym} -20 0 0 0 {name=x2 m=1 
+ W_N=250 L_N=1 W_P=200 L_P=0.25
+ VCCPIN=VCC VSSPIN=VSS}
C {sky130_fd_pr/cap_mim_m3_1.sym} 230 60 0 0 {name=C1 model=cap_mim_m3_1 W=50 L=50 MF=1 spiceprefix=X}
C {devices/gnd.sym} 230 140 0 0 {name=l13 lab=GND}
C {sky130_fd_pr/nfet3_01v8.sym} -30 -140 3 1 {name=M5
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
C {sky130_fd_pr/nfet3_01v8.sym} 100 -20 3 1 {name=M6
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
C {devices/lab_pin.sym} -30 -190 0 0 {name=p149 lab=VG1}
C {devices/lab_pin.sym} 100 -70 2 0 {name=p3 lab=VG2}
C {devices/vsource.sym} -510 60 0 0 {name=VN value=0 savecurrent=false}
C {devices/vsource.sym} -600 60 0 0 {name=VP value="dc 1.125" savecurrent=false}
C {devices/gnd.sym} -510 140 0 0 {name=l12 lab=GND}
C {devices/gnd.sym} -600 140 0 0 {name=l14 lab=GND}
C {devices/vdd.sym} -510 0 0 0 {name=l15 lab=VSS}
C {devices/vdd.sym} -600 0 0 0 {name=l16 lab=VCC}
C {devices/vsource.sym} -350 60 0 0 {name=VG2 value="dc 1.07866" savecurrent=false}
C {devices/vsource.sym} -440 60 0 0 {name=VG1 value="dc 0.64866" savecurrent=false}
C {devices/gnd.sym} -350 140 0 0 {name=l17 lab=GND}
C {devices/gnd.sym} -440 140 0 0 {name=l18 lab=GND}
C {devices/vdd.sym} -350 0 0 0 {name=l19 lab=VG2}
C {devices/vdd.sym} -440 0 0 0 {name=l20 lab=VG1}
C {devices/lab_pin.sym} 60 -120 1 0 {name=p1 lab=VS1}
C {sky130_fd_pr/cap_mim_m3_1.sym} -160 0 3 0 {name=C2 model=cap_mim_m3_1 W=26 L=26 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} -100 0 3 0 {name=p2 lab=VD1}
