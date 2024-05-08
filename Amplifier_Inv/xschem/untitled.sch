v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -110 0 -110 30 {
lab=in}
N -110 90 -110 140 {
lab=GND}
N -110 0 -80 0 {
lab=in}
N -110 0 -30 -0 {}
N 110 0 110 20 {
lab=out}
N 110 80 110 140 {
lab=GND}
N 50 0 110 0 {}
C {sky130_tests/not.sym} 10 0 0 0 {name=x2 m=1 
+ W_N=250 L_N=1 W_P=200 L_P=0.25
+ VCCPIN=VCC VSSPIN=VSS}
C {devices/gnd.sym} -110 140 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -110 60 0 0 {name=Vin value="0.44866 ac 1e-3
+ sin(0.44866 0.001 1000 0 0 0)" savecurrent=false}
C {devices/lab_pin.sym} -110 0 0 0 {name=out3 sig_type=std_logic lab=in
}
C {devices/gnd.sym} 110 140 0 0 {name=l6 lab=GND}
C {devices/res.sym} 110 50 0 0 {name=Rl
value=1e60
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 110 0 2 0 {name=out1 sig_type=std_logic lab=out
}
C {devices/code.sym} 225 80 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code.sym} 340 -75 0 1 {name=control only_toplevel=false value=".control

  dc Vin 0 1.125 0.00001
  save all v(out)
  write little_test.raw v(out)
  
  exit 0
.endc
"
savecurrent = false
}
