v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -90 -60 -90 -30 {
lab=in}
N -270 30 -270 80 {
lab=GND}
N -180 30 -180 80 {
lab=GND}
N -180 -60 -180 -30 {
lab=VSS}
N -90 30 -90 80 {
lab=GND}
N 210 -60 280 -60 {
lab=out}
N 280 -60 280 -40 {
lab=out}
N 280 20 280 80 {
lab=GND}
N -270 -60 -270 -30 {
lab=VCC}
N 90 -60 130 -60 {
lab=test}
N 210 -60 210 -40 {
lab=out}
N 120 -180 120 -60 {
lab=test}
N 80 -180 120 -180 {
lab=test}
N -20 -180 20 -180 {
lab=in}
N -20 -180 -20 -60 {
lab=in
}
N -60 -60 10 -60 {
lab=in}
N -90 -60 -60 -60 {
lab=in}
N 190 -60 210 -60 {
lab=out}
N 210 20 210 80 {
lab=GND}
C {devices/gnd.sym} -90 80 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -180 0 0 0 {name=VN value=0 savecurrent=false}
C {devices/vsource.sym} -270 0 0 0 {name=VP value=1.125 savecurrent=true}
C {devices/gnd.sym} -180 80 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -270 80 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} -180 -60 0 0 {name=l4 lab=VSS}
C {devices/code.sym} 365 40 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/gnd.sym} 280 80 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -90 0 0 0 {name=Vin value="0.44866 ac 1e-3
+ sin(0.44866 0.001 1000 0 0 0)" savecurrent=true}
C {devices/res.sym} 280 -10 0 0 {name=Rl
value=1e60
footprint=1206
device=resistor
m=1}
C {devices/title.sym} -260 200 0 0 {name=l7 author="Rafael Miguel Correa"}
C {devices/code.sym} 480 -125 0 1 {name=control only_toplevel=false value=".control

  dc Vin 0 1 0.00001
  save all v(in) v(out)
  write tb_inv_sky130_a_DC_v1.raw v(in) v(out)
 
.endc
"
savecurrent = false
}
C {devices/vdd.sym} -270 -60 0 0 {name=l5 lab=VCC}
C {sky130_tests/not.sym} 50 -60 0 0 {name=x1 m=1 
+ W_N=250 L_N=1 W_P=180 L_P=0.25
+ VCCPIN=VCC VSSPIN=VSS}
C {sky130_fd_pr/cap_mim_m3_1.sym} 210 -10 0 0 {name=C2 model=cap_mim_m3_1 W=50 L=50 MF=1 spiceprefix=X}
C {devices/gnd.sym} 210 80 0 0 {name=l8 lab=GND}
C {sky130_fd_pr/res_xhigh_po.sym} 50 -180 3 0 {name=R1
W=0.15
L=90000
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/gnd.sym} 50 -160 0 0 {name=l9 lab=GND}
C {sky130_fd_pr/res_xhigh_po.sym} 160 -60 3 0 {name=R2
W=0.15
L=50
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/gnd.sym} 160 -40 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 120 -180 2 0 {name=out1 sig_type=std_logic lab=test
}
C {devices/lab_pin.sym} 280 -60 2 0 {name=out2 sig_type=std_logic lab=out
}
C {devices/lab_pin.sym} -90 -60 0 0 {name=out3 sig_type=std_logic lab=in
}
