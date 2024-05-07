v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -110 80 -50 80 {
lab=gs}
N -110 80 -110 90 {
lab=gs}
N 90 100 90 120 {
lab=#net1}
N -10 10 90 10 {
lab=in}
N -10 10 -10 50 {
lab=in}
N 90 10 90 40 {
lab=in}
N -10 230 -10 240 {
lab=GND}
N -10 110 -10 140 {
lab=#net1}
N -110 160 -10 160 {
lab=#net1}
N -10 140 -10 170 {
lab=#net1}
N -10 160 90 160 {
lab=#net1}
N -110 150 -110 160 {
lab=#net1}
N 90 120 90 160 {
lab=#net1}
C {devices/vsource.sym} -110 120 0 0 {name=Vgs value="dc 1.125" savecurrent=false}
C {devices/lab_pin.sym} -10 10 0 0 {name=in sig_type=std_logic lab=in
}
C {devices/vsource.sym} 90 70 0 0 {name=Vds value="ac 1e-3" savecurrent=false}
C {devices/code.sym} 205 100 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code.sym} 200 35 2 1 {name=control only_toplevel=false value=".control
  
  let start_vgs = 0.2
  let stop_vgs = 0.8
  let delta_vgs = 0.05
  let vgs_act = start_vgs  

  while vgs_act le stop_vgs
  alter vgs dc vgs_act
  ac dec 100 0.1 100k
  let r = v(in)/(-i(Vds))
  save all
  write tb_inv_sky130_a_res_AC_v2.raw r
  set appendwrite
  let vgs_act = vgs_act + delta_vgs
  end

.endc
"
savecurrent = false
}
C {devices/title.sym} -380 290 0 0 {name=l7 author="Rafael Miguel Correa"}
C {sky130_fd_pr/nfet3_01v8.sym} -30 80 0 0 {name=M1
W=0.5
L=0.15
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
C {devices/gnd.sym} -10 240 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -110 80 0 0 {name=in1 sig_type=std_logic lab=gs
}
C {devices/vsource.sym} -10 200 0 0 {name=Vs value="dc 0.5" savecurrent=false}
