v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -230 20 -230 70 {
lab=GND}
N -230 -70 -230 -40 {
lab=VCC}
N -130 -80 -130 -50 {
lab=in}
N -130 140 -130 160 {
lab=GND}
N -130 40 -130 80 {
lab=out}
N -130 -50 -130 -20 {
lab=in}
N -130 60 170 60 {
lab=out}
N 170 -70 170 60 {
lab=out}
N 170 -80 170 -70 {
lab=out}
N -130 -80 -40 -80 {
lab=in}
N 20 -80 170 -80 {
lab=out}
N -10 -140 -10 -120 {
lab=out}
N -10 -140 40 -140 {
lab=out}
N 40 -140 40 -80 {
lab=out}
C {devices/vsource.sym} -230 -10 0 0 {name=VP value=1.125 savecurrent=false}
C {devices/gnd.sym} -230 70 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} -230 -70 0 0 {name=l5 lab=VCC}
C {devices/lab_pin.sym} 170 -60 2 0 {name=out sig_type=std_logic lab=out
}
C {devices/gnd.sym} -130 160 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -130 -60 0 0 {name=in sig_type=std_logic lab=in
}
C {devices/vsource.sym} -130 10 0 0 {name=Vin value="ac 1e-3
+ sin(0.8 0.001 5000 0 0 0)" savecurrent=false}
C {devices/code.sym} 225 -30 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code.sym} 230 -105 2 1 {name=control only_toplevel=false value=".control
 
  ac lin 100 1 100k
  save all
  let r = (v(out)-v(in))/i(Vin)
  write tb_inv_sky130_a_res_AC_v2.raw r

  tran 0.1u 4m
  save all
  write test.raw

  exit 0
.endc
"
savecurrent = false
}
C {devices/vsource.sym} -130 110 0 0 {name=Vdc value="0.53577" savecurrent=false}
C {sky130_fd_pr/nfet3_01v8.sym} -10 -100 3 1 {name=M1
W=100
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
C {devices/title.sym} -360 240 0 0 {name=l7 author="Rafael Miguel Correa"}
