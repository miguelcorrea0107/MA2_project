v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -270 80 -270 130 {
lab=GND}
N -270 -10 -270 20 {
lab=VCC}
N -170 -20 -170 10 {
lab=in}
N -170 200 -170 220 {
lab=GND}
N -170 100 -170 140 {
lab=out}
N -170 10 -170 40 {
lab=in}
N -170 120 130 120 {
lab=out}
N 130 -10 130 120 {
lab=out}
N 130 -20 130 -10 {
lab=out}
N -170 -40 -170 -20 {
lab=in}
N 130 -40 130 -20 {
lab=out}
N -170 -20 -80 -20 {
lab=in}
N -20 -20 130 -20 {
lab=out}
N -170 -120 -170 -40 {
lab=in}
N -170 -120 -80 -120 {
lab=in}
N -20 -120 130 -120 {
lab=out}
N 130 -120 130 -40 {
lab=out}
N -50 -180 -50 -160 {
lab=VCC}
C {devices/vsource.sym} -270 50 0 0 {name=VP value=1.125 savecurrent=false}
C {devices/gnd.sym} -270 130 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} -270 -10 0 0 {name=l5 lab=VCC}
C {devices/lab_pin.sym} 130 0 2 0 {name=out sig_type=std_logic lab=out
}
C {devices/gnd.sym} -170 220 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -170 0 0 0 {name=in sig_type=std_logic lab=in
}
C {devices/vsource.sym} -170 70 0 0 {name=Vin value="ac 1e-3
+ sin(0.8 0.001 5000 0 0 0)" savecurrent=false}
C {devices/code.sym} 185 30 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code.sym} 190 -45 2 1 {name=control only_toplevel=false value=".control
 
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
C {devices/title.sym} -380 290 0 0 {name=l7 author="Rafael Miguel Correa"}
C {devices/vsource.sym} -170 170 0 0 {name=Vdc value="0.53577" savecurrent=false}
C {sky130_fd_pr/nfet3_01v8.sym} -50 -140 3 1 {name=M1
W=1
L=20
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
C {devices/vdd.sym} -50 -180 0 0 {name=l2 lab=VCC}
