v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -10 -110 -10 -80 {
lab=in}
N -360 -20 -360 30 {
lab=GND}
N -270 -20 -270 30 {
lab=GND}
N -270 -110 -270 -80 {
lab=VSS}
N -10 -20 -10 30 {
lab=GND}
N 270 -140 340 -140 {
lab=out}
N 340 -140 340 -120 {
lab=out}
N 340 -60 340 0 {
lab=GND}
N -10 -110 80 -110 {
lab=in}
N -360 -110 -360 -80 {
lab=VCC}
N -90 -20 -90 30 {
lab=GND}
N -180 -20 -180 30 {
lab=GND}
N -180 -110 -180 -80 {
lab=#net1}
N -90 -110 -90 -80 {
lab=#net2}
N 340 -0 340 30 {
lab=GND}
N -90 -140 -90 -110 {
lab=#net2}
N -90 -140 80 -140 {
lab=#net2}
N -180 -170 80 -170 {
lab=#net1}
N -180 -170 -180 -120 {
lab=#net1}
N -180 -120 -180 -110 {
lab=#net1}
C {devices/gnd.sym} -10 30 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -270 -50 0 0 {name=VN value=0 savecurrent=false}
C {devices/vsource.sym} -360 -50 0 0 {name=VP value="dc 1.125" savecurrent=true}
C {devices/gnd.sym} -270 30 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -360 30 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -10 -110 0 0 {name=in sig_type=std_logic lab=in
}
C {devices/code.sym} 385 -10 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/lab_pin.sym} 340 -140 2 0 {name=out sig_type=std_logic lab=out
}
C {devices/gnd.sym} 340 30 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -10 -50 0 0 {name=Vin value="0.48731 ac 1e-3
+ sin(0.48731 0.001 5000 0 0 0)" savecurrent=true}
C {devices/res.sym} 340 -90 0 0 {name=Rl
value=1e60
footprint=1206
device=resistor
m=1}
C {devices/title.sym} -260 140 0 0 {name=l7 author="Rafael Miguel Correa"}
C {devices/code.sym} 390 -85 2 1 {name=control only_toplevel=false value=".control
  
  op
  save all 
  let gmn = @m.x1.xm4.msky130_fd_pr__nfet_01v8[gm]
  let gmp = @m.x1.xm5'.msky130_fd_pr__pfet_01v8[gm]
  let gdsn = @m.x1.xm4.msky130_fd_pr__nfet_01v8[gds]
  let gdsp = @m.x1.xm5.msky130_fd_pr__pfet_01v8[gds]
  let cgsn = @m.x1.xm4.msky130_fd_pr__nfet_01v8[cgs]
  let cgsp = @m.x1.xm5.msky130_fd_pr__pfet_01v8[cgs]
  let cgdn = @m.x1.xm4.msky130_fd_pr__nfet_01v8[cgd]
  let cgdp = @m.x1.xm5.msky130_fd_pr__pfet_01v8[cgd]
  write tb_inv_sky130_a_op_v4.raw gmn gmp gdsn gdsp cgsn cgsp cgdn cgdp

  ac dec 1000 1 1e8
  save all
  let gain = db(v(out)/v(in))
  let gain_vs1 = db(v(x1.vs1)/v(in))
  let phase = phase(v(out)/v(in))
  write tb_inv_sky130_a_AC_v4.raw gain gain_vs1

  noise v(out) Vin dec 1000 300 10k 10
  save all
  write tb_inv_sky130_a_noise_v4.raw

  noise v(out) Vin dec 1000 300 10k
  save all
  setplot noise1
  write tb_inv_sky130_a_noise_spectrum_v4.raw

  dc Vin 0 1.125 0.00001
  save all v(out) v(x1.vs1) v(x1.vd1)
  write tb_inv_sky130_a_DC_v4.raw v(out) v(x1.vs1) v(x1.vd1)

  tran 0.1u 4m
  save all
  let pw_in = i(Vin)*v(in)
  let pw_vcc = i(Vp)*1.125
  let pw_vg1 = i(Vg1)*0.725
  let pw_vg2 = i(Vg2)*1.085
  let pw_total = pw_in+pw_vcc
  meas tran avg_pw_total AVG pw_total FROM=0 TO=2m
  meas tran avg_pw_in AVG pw_in FROM=0 TO=2m
  meas tran avg_pw_vcc AVG pw_vcc FROM=0 TO=2m
  write tb_inv_sky130_a_tran_v4.raw v(in) v(out) avg_pw_total

.endc
"
savecurrent = true
}
C {devices/vsource.sym} -180 -50 0 0 {name=VG2 value="dc 1.085" savecurrent=false}
C {devices/vsource.sym} -90 -50 0 0 {name=VG1 value="dc 0.725" savecurrent=false}
C {devices/gnd.sym} -180 30 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} -90 30 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} -360 -110 2 0 {name=p1 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -270 -110 0 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 170 -190 2 0 {name=p3 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 170 -90 2 0 {name=p4 sig_type=std_logic lab=VSS}
C {v4/inv_sky130_a_v4.sym} 170 -140 0 0 {name=x1}
