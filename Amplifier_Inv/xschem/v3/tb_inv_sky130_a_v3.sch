v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -130 -110 -130 -80 {
lab=in}
N -480 -20 -480 30 {
lab=GND}
N -390 -20 -390 30 {
lab=GND}
N -390 -110 -390 -80 {
lab=VSS}
N -130 -20 -130 30 {
lab=GND}
N 90 -110 160 -110 {
lab=out}
N 160 -110 160 -90 {
lab=out}
N 160 -30 160 30 {
lab=GND}
N -130 -110 -40 -110 {
lab=in}
N -480 -110 -480 -80 {
lab=VCC}
N -320 -20 -320 30 {
lab=GND}
N -230 -20 -230 30 {
lab=GND}
N -230 -110 -230 -80 {
lab=VG2}
N -320 -110 -320 -80 {
lab=VG1}
C {devices/gnd.sym} -130 30 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -390 -50 0 0 {name=VN value=0 savecurrent=false}
C {devices/vsource.sym} -480 -50 0 0 {name=VP value="dc 1.125" savecurrent=true}
C {devices/gnd.sym} -390 30 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -480 30 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} -390 -110 0 0 {name=l4 lab=VSS}
C {devices/lab_pin.sym} -130 -110 0 0 {name=in sig_type=std_logic lab=in
}
C {devices/code.sym} 245 -10 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/lab_pin.sym} 160 -110 2 0 {name=out sig_type=std_logic lab=out
}
C {devices/gnd.sym} 160 30 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -130 -50 0 0 {name=Vin value="0.51439 ac 1e-3
+ sin(0.51439 0.001 5000 0 0 0)" savecurrent=true}
C {devices/res.sym} 160 -60 0 0 {name=Rl
value=1e60
footprint=1206
device=resistor
m=1}
C {devices/title.sym} -380 140 0 0 {name=l7 author="Rafael Miguel Correa"}
C {devices/code.sym} 240 -85 2 1 {name=control only_toplevel=false value=".control
  
  op
  save all 
  let gmn = @m.x1.x1.xm1.msky130_fd_pr__nfet_01v8[gm]
  let gmp = @m.x1.x1.xm2.msky130_fd_pr__pfet_01v8[gm]
  let gdsn = @m.x1.x1.xm1.msky130_fd_pr__nfet_01v8[gds]
  let gdsp = @m.x1.x1.xm2.msky130_fd_pr__pfet_01v8[gds]
  let cgsn = @m.x1.x1.xm1.msky130_fd_pr__nfet_01v8[cgs]
  let cgsp = @m.x1.x1.xm2.msky130_fd_pr__pfet_01v8[cgs]
  let cgdn = @m.x1.x1.xm1.msky130_fd_pr__nfet_01v8[cgd]
  let cgdp = @m.x1.x1.xm2.msky130_fd_pr__pfet_01v8[cgd]
  write tb_inv_sky130_a_op_v3.raw gmn gmp gdsn gdsp cgsn cgsp cgdn cgdp

  ac dec 1000 1 1e8
  save all
  let gain = db(v(out)/v(in))
  let gain_vs1 = db(v(x1.vs1)/v(in))
  let phase = phase(v(out)/v(in))
  write tb_inv_sky130_a_AC_v3.raw gain gain_vs1

  noise v(out) Vin dec 1000 300 10k 10
  save all
  write tb_inv_sky130_a_noise_v3.raw

  noise v(out) Vin dec 1000 300 10k
  save all
  setplot noise1
  write tb_inv_sky130_a_noise_spectrum_v3.raw

  dc Vin 0 1.125 0.00001
  save all v(out) v(x1.vg1) v(x1.vg2) v(x1.vs1) v(x1.vd1)
  write tb_inv_sky130_a_DC_v3.raw v(out) v(x1.vg1) v(x1.vg2) v(x1.vs1) v(x1.vd1)

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
  write tb_inv_sky130_a_tran_v3.raw v(in) v(out) v(x1.vd1) v(x1.vs1) v(vg1) v(vg2) avg_pw_total

  exit 0

.endc
"
savecurrent = true
}
C {devices/vdd.sym} -480 -110 0 0 {name=l5 lab=VCC}
C {devices/vsource.sym} -230 -50 0 0 {name=VG2 value="dc 1.085" savecurrent=false}
C {devices/vsource.sym} -320 -50 0 0 {name=VG1 value="dc 0.725" savecurrent=true}
C {devices/gnd.sym} -230 30 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} -320 30 0 0 {name=l9 lab=GND}
C {devices/vdd.sym} -230 -110 0 0 {name=l10 lab=VG2}
C {devices/vdd.sym} -320 -110 0 0 {name=l11 lab=VG1}
C {v3/inv_sky130_a_v3.sym} 10 -110 0 0 {name=x1}
