v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -120 0 -30 0 {
lab=in}
N -120 0 -120 30 {
lab=in}
N -120 90 -120 140 {
lab=GND}
N -210 90 -210 140 {
lab=GND}
N -300 90 -300 140 {
lab=GND}
N -300 0 -300 30 {
lab=VCC}
N -210 0 -210 30 {
lab=VSS}
N -300 140 -300 170 {
lab=GND}
N -210 140 -210 170 {
lab=GND}
N -120 140 -120 170 {
lab=GND}
N 50 0 120 0 {
lab=out}
N 120 80 120 170 {
lab=GND}
N 120 0 120 20 {
lab=out}
C {sky130_tests/not.sym} 10 0 0 0 {name=x1 m=1 
+ W_N=20 L_N=0.15 W_P=40 L_P=0.15 
+ VCCPIN=VCC VSSPIN=VSS}
C {devices/gnd.sym} -120 170 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -210 60 0 0 {name=VN value=0 savecurrent=false}
C {devices/vsource.sym} -300 60 0 0 {name=VP value=1.5 savecurrent=false}
C {devices/gnd.sym} -210 170 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -300 170 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} -210 0 0 0 {name=l4 lab=VSS}
C {devices/vdd.sym} -300 0 0 0 {name=l5 lab=VCC
}
C {devices/lab_pin.sym} -120 0 0 0 {name=in sig_type=std_logic lab=in
}
C {devices/vsource.sym} -120 60 0 0 {name=Vin value="0.7052" savecurrent=false}
C {devices/lab_pin.sym} 120 0 2 0 {name=out sig_type=std_logic lab=out
}
C {devices/gnd.sym} 120 170 0 0 {name=l6 lab=GND}
C {devices/code.sym} 190 100 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code.sym} 190 -50 0 0 {name=control only_toplevel=false value="
.control
  op
  print @m.x1.xm1.msky130_fd_pr__nfet_01v8[gm]
  print @m.x1.xm2.msky130_fd_pr__pfet_01v8[gm]
  print @m.x1.xm1.msky130_fd_pr__nfet_01v8[gds]
  print @m.x1.xm2.msky130_fd_pr__pfet_01v8[gds]
  print @m.x1.xm1.msky130_fd_pr__nfet_01v8[cgs]
  print @m.x1.xm2.msky130_fd_pr__pfet_01v8[cgs]
  save all
  write tb_inv_sky130_op.raw
.endc
"}
C {devices/capa.sym} 120 50 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
