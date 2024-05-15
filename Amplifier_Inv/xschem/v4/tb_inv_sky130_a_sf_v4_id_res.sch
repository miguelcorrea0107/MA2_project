v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -90 -90 -90 -60 {
lab=in}
N -280 0 -280 50 {
lab=GND}
N -190 0 -190 50 {
lab=GND}
N -190 -90 -190 -60 {
lab=VSS}
N -90 0 -90 50 {
lab=GND}
N 130 -90 200 -90 {
lab=out}
N 200 -90 200 -70 {
lab=out}
N 200 -10 200 50 {
lab=GND}
N -90 -90 0 -90 {
lab=in}
N -280 -90 -280 -60 {
lab=VCC}
C {devices/gnd.sym} -90 50 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -190 -30 0 0 {name=VN value=0 savecurrent=false}
C {devices/vsource.sym} -280 -30 0 0 {name=VP value="dc 1.125" savecurrent=true}
C {devices/gnd.sym} -190 50 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -280 50 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} -190 -90 0 0 {name=l4 lab=VSS}
C {devices/lab_pin.sym} -90 -90 0 0 {name=in sig_type=std_logic lab=in
}
C {devices/code.sym} 285 10 0 0 {name=SF_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice sf

"
spice_ignore=false}
C {devices/lab_pin.sym} 200 -90 2 0 {name=out sig_type=std_logic lab=out
}
C {devices/gnd.sym} 200 50 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -90 -30 0 0 {name=Vin value="0.51439 ac 1e-3
+ sin(0.51439 0.001 5000 0 0 0)" savecurrent=true}
C {devices/res.sym} 200 -40 0 0 {name=Rl
value=1e60
footprint=1206
device=resistor
m=1}
C {devices/title.sym} -340 160 0 0 {name=l7 author="Rafael Miguel Correa"}
C {devices/vdd.sym} -280 -90 0 0 {name=l5 lab=VCC}
C {v4/inv_sky130_a_v4_id_res.sym} 70 -90 0 0 {name=x1}
C {devices/code.sym} 290 -85 2 1 {name=control only_toplevel=false value=".control
  
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
  write tb_inv_sky130_a_op_sf_v4_id_res.raw gmn gmp gdsn gdsp cgsn cgsp cgdn cgdp

  ac dec 1000 1 1e8
  save all
  let gain = db(v(out)/v(in))
  let gain_vs1 = db(v(x1.vs1)/v(in))
  let phase = phase(v(out)/v(in))
  write tb_inv_sky130_a_AC_sf_v4_id_res.raw gain gain_vs1

  noise v(out) Vin dec 1000 300 10k 10
  save all
  write tb_inv_sky130_a_noise_sf_v4_id_res.raw

  noise v(out) Vin dec 1000 300 10k
  save all
  setplot noise1
  write tb_inv_sky130_a_noise_spectrum_sf_v4_id_res.raw

  dc Vin 0 1.125 0.00001
  save all v(out) v(x1.vs1) v(x1.vd1)
  write tb_inv_sky130_a_DC_sf_v4_id_res.raw v(out) v(x1.vs1) v(x1.vd1)

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
  write tb_inv_sky130_a_tran_sf_v4_id_res.raw v(in) v(out) v(x1.vd1) v(x1.vs1) v(vg1) v(vg2) avg_pw_total

  exit 0
.endc
"
savecurrent = true
}
