v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 10 10 10 20 {
lab=GND}
N -40 -130 -40 -110 {
lab=VCC}
N 10 60 10 80 {
lab=GND}
N -30 10 10 10 {
lab=GND}
N -30 10 -30 70 {
lab=GND}
N -30 70 10 70 {
lab=GND}
N -40 -70 -40 -60 {
lab=VCC}
N -40 -60 0 -60 {
lab=VCC}
N -40 -120 0 -120 {
lab=VCC}
N 0 -120 0 -60 {
lab=VCC}
N -80 -70 -70 -70 {
lab=in}
N -80 20 -20 20 {
lab=in}
N 40 20 60 20 {
lab=out}
N -80 -70 -80 20 {
lab=in}
N -10 -70 60 -70 {
lab=out}
N 60 -70 60 20 {
lab=out}
N -270 80 -270 130 {
lab=GND}
N -270 -10 -270 20 {
lab=VCC}
N 60 -30 130 -30 {
lab=out}
N 130 -30 130 -10 {
lab=out}
N 130 50 130 110 {
lab=GND}
N -170 -20 -170 10 {
lab=in}
N -170 70 -170 120 {
lab=GND}
N -170 -20 -80 -20 {
lab=in}
C {devices/gnd.sym} 10 80 0 1 {name=l2 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 10 40 3 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -40 -90 1 0 {name=M2
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
C {devices/vsource.sym} -270 50 0 0 {name=VP value=1.125 savecurrent=false}
C {devices/gnd.sym} -270 130 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} -270 -10 0 0 {name=l5 lab=VCC}
C {devices/vdd.sym} -40 -130 0 0 {name=l1 lab=VCC}
C {devices/lab_pin.sym} 60 -70 2 0 {name=out sig_type=std_logic lab=out
}
C {devices/gnd.sym} 130 110 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} -170 120 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -170 -20 0 0 {name=in sig_type=std_logic lab=in
}
C {devices/vsource.sym} -170 40 0 0 {name=Vin value="0.44866 ac 1e-3
+ sin(0.44866 0.001 5000 0 0 0)" savecurrent=false}
C {devices/code.sym} 205 30 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code.sym} 210 -35 2 1 {name=control only_toplevel=false value=".control

  dc Vin 0 1 0.00001
  save all
  let r = (v(out)-v(in))/i(Vin)
  write tb_inv_sky130_a_noise_res_DC_v2.raw r v(in)

.endc
"
savecurrent = false
}
C {devices/res.sym} 130 20 0 0 {name=Rl
value=1e60
footprint=1206
device=resistor
m=1}
