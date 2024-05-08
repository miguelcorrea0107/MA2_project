v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -240 30 -240 80 {
lab=GND}
N -150 30 -150 80 {
lab=GND}
N -150 -60 -150 -30 {
lab=VSS}
N -240 -60 -240 -30 {
lab=VCC}
N -40 -0 -30 -0 {
lab=test}
N -40 -60 -40 0 {
lab=test}
N -40 -60 60 -60 {
lab=test}
N 60 -60 60 -0 {
lab=test}
N 50 0 60 -0 {
lab=test}
C {sky130_tests/not.sym} 10 0 0 0 {name=x2 m=1 
+ W_N=250 L_N=1 W_P=200 L_P=0.25
+ VCCPIN=VCC VSSPIN=VSS}
C {devices/vsource.sym} -150 0 0 0 {name=VN value=0 savecurrent=false}
C {devices/vsource.sym} -240 0 0 0 {name=VP value="dc 1.125" savecurrent=false}
C {devices/gnd.sym} -150 80 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -240 80 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} -150 -60 0 0 {name=l4 lab=VSS}
C {devices/vdd.sym} -240 -60 0 0 {name=l5 lab=VCC}
C {devices/code.sym} 85 50 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code.sym} 200 -105 0 1 {name=control only_toplevel=false value=".control

  tran 0.1u 50m
  save all
  write inv_tb.raw
  exit 0
.endc
"
savecurrent = false
}
C {devices/lab_pin.sym} -40 -60 0 0 {name=out4 sig_type=std_logic lab=test
}
