v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -90 -60 -90 -30 {
lab=in}
N -90 -60 0 -60 {
lab=in}
N -270 -60 -270 -30 {
lab=VCC}
N -270 30 -270 80 {
lab=GND}
N -180 30 -180 80 {
lab=GND}
N -180 -60 -180 -30 {
lab=VSS}
N -90 30 -90 80 {
lab=GND}
N 130 -60 200 -60 {
lab=out}
N 200 -60 200 -40 {
lab=out}
N 200 20 200 80 {
lab=GND}
C {devices/gnd.sym} -90 80 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -180 0 0 0 {name=VN value=0 savecurrent=false}
C {devices/vsource.sym} -270 0 0 0 {name=VP value=1.5 savecurrent=false}
C {devices/gnd.sym} -180 80 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -270 80 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} -180 -60 0 0 {name=l4 lab=VSS}
C {devices/vdd.sym} -270 -60 0 0 {name=l5 lab=VCC
}
C {devices/lab_pin.sym} -90 -60 0 0 {name=in sig_type=std_logic lab=in
}
C {devices/code.sym} 285 40 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/lab_pin.sym} 200 -60 2 0 {name=out sig_type=std_logic lab=out
}
C {devices/gnd.sym} 200 80 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -90 0 0 0 {name=Vin value="0.7052 AC 1e-6" savecurrent=false}
C {devices/res.sym} 200 -10 0 0 {name=Rl
value=1e15
footprint=1206
device=resistor
m=1}
C {devices/title.sym} -340 200 0 0 {name=l7 author="Rafael Miguel Correa"}
C {devices/code.sym} 280 -115 0 0 {name=control only_toplevel=false value=".control
 
  op
  save all  
  let gmn = @m.x1.x1.xm1.msky130_fd_pr__nfet_01v8[gm]
  let gmp = @m.x1.x1.xm2.msky130_fd_pr__pfet_01v8[gm]
  let gdsn = @m,x1.x1.xm1.msky130_fd_pr__nfet_01v8[gds]
  let gdsp = @m.x1.x1.xm2.msky130_fd_pr__pfet_01v8[gds]
  let cgsn = @m.x1.x1.xm1.msky130_fd_pr__nfet_01v8[cgs]
  let cgsp = @m.x1.x1.xm2.msky130_fd_pr__pfet_01v8[cgs]
  write tb_inv_sky130_a_op.raw gmn gmp gdsn gdsp cgsn cgsp 

  ac dec 40 1 1e6
  save all
  let gain = db(v(out)/v(in))
  let phase = phase(v(out)/v(in))
  write tb_inv_sky130_a_AC.raw gain phase

  dc Vin 0 1.5 0.01
  save all
  write tb_inv_sky130_a_DC.raw v(in) v(out)
 
  noise v(out) Vin dec 10 100 1000MEG
  save all
  write tb_inv_sky130_a_noise.raw

.endc
"
}
C {inv_sky130_a.sym} 60 -60 0 0 {name=x1}
