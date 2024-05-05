v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -90 -80 -90 -50 {
lab=in}
N -90 10 -90 60 {
lab=GND}
N -90 -80 -20 -80 {
lab=in}
N -200 10 -200 60 {
lab=GND}
N -200 -80 -200 -50 {
lab=VCC}
N 20 -130 20 -110 {
lab=VCC}
N 20 -50 20 -20 {
lab=out}
N 20 40 20 60 {
lab=GND}
C {devices/gnd.sym} -90 60 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -90 -20 0 0 {name=Vin value="0.53377" savecurrent=false}
C {devices/lab_pin.sym} -90 -80 0 0 {name=out3 sig_type=std_logic lab=in
}
C {sky130_fd_pr/nfet3_01v8.sym} 0 -80 0 0 {name=M1
W=1
L=10
body=GND
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
C {devices/vsource.sym} -200 -20 0 0 {name=VP value=1.125 savecurrent=false}
C {devices/gnd.sym} -200 60 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} -200 -80 0 0 {name=l5 lab=VCC}
C {devices/vdd.sym} 20 -130 0 0 {name=l2 lab=VCC}
C {sky130_fd_pr/res_xhigh_po.sym} 20 10 0 0 {name=R1
W=1
L=1
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/gnd.sym} 20 60 0 0 {name=l4 lab=GND}
C {devices/code.sym} 260 -155 0 1 {name=control only_toplevel=false value=".control

  dc Vin 0 1.125 0.00001
  save all v(out) v(in)
  write tb_inv_sky130_a_DC_v2.raw v(out) v(in)

.endc
"
savecurrent = false
}
C {devices/code.sym} 135 10 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/lab_pin.sym} 20 -40 2 0 {name=out1 sig_type=std_logic lab=out
}
