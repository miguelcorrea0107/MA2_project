v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Testbench inverter amplifier} -120 -280 0 0 0.4 0.4 {layer=8 font="Liberation Sans"}
N -90 -60 0 -60 {
lab=in}
N -90 -60 -90 -30 {
lab=in}
N -90 30 -90 80 {
lab=GND}
N -180 30 -180 80 {
lab=GND}
N -270 30 -270 80 {
lab=GND}
N -270 -60 -270 -30 {
lab=VCC}
N -180 -60 -180 -30 {
lab=VSS}
N 140 -60 200 -60 {
lab=out}
N 90 -160 200 -160 {
lab=out}
N -90 -160 30 -160 {
lab=in}
N -90 -160 -90 -60 {
lab=in}
N 200 -160 200 -60 {
lab=out}
N 200 -60 200 -50 {
lab=out}
N 200 10 200 30 {
lab=#net1}
N -270 80 -270 110 {
lab=GND}
N -180 80 -180 110 {
lab=GND}
N -90 80 -90 110 {
lab=GND}
N 200 90 200 110 {
lab=GND}
N 200 -60 250 -60 {
lab=out}
C {inv_sky130_a.sym} 60 -60 0 0 {name=x1}
C {devices/vsource.sym} -90 0 0 0 {name=Vin value="0 AC 0.1" savecurrent=false}
C {devices/gnd.sym} -90 110 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -180 0 0 0 {name=VN value=0 savecurrent=false}
C {devices/vsource.sym} -270 0 0 0 {name=VP value=1.5 savecurrent=false}
C {devices/gnd.sym} -180 110 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -270 110 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} -180 -60 0 0 {name=l4 lab=VSS}
C {devices/vdd.sym} -270 -60 0 0 {name=l5 lab=VCC
}
C {devices/lab_pin.sym} -90 -60 0 0 {name=in sig_type=std_logic lab=in
}
C {devices/code.sym} 350 0 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code.sym} 350 -160 0 0 {name=control only_toplevel=false value="
.control
  tran 1ns 100us
  save all
  write tb_inv_sky130_a_tran.raw
  ac dec 10 0.1 100k
  save all
  let gain = db(v(out)/v(in)) 
  let phase = phase(v(out)/v(in))
  print gain phase
  write tb_inv_sky130_a_AC.raw gain phase
.endc
"}
C {devices/lab_pin.sym} 250 -60 2 0 {name=out sig_type=std_logic lab=out
}
C {sky130_fd_pr/res_generic_m1.sym} 60 -160 3 0 {name=R1
W=1
L=1
model=res_generic_m1
mult=1}
C {sky130_fd_pr/res_generic_m1.sym} 200 -20 0 0 {name=R2
W=1
L=1
model=res_generic_m1
mult=1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 200 60 0 0 {name=C1 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {devices/gnd.sym} 200 110 0 0 {name=l6 lab=GND}
