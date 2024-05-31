v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -230 -10 -200 -10 {
lab=in}
N 130 -10 160 -10 {
lab=VS1}
N 340 -10 340 20 {
lab=out}
N 160 -10 180 -10 {
lab=VS1}
N -140 -10 -40 -10 {
lab=VD1}
N -70 -110 -70 -10 {
lab=VD1}
N 170 -110 170 -10 {
lab=VS1}
N 280 -10 340 -10 {
lab=out}
N -70 -130 -70 -110 {
lab=VD1}
N -60 -240 -30 -240 {
lab=VD1}
N 30 -240 90 -240 {
lab=VS1}
N 170 -130 170 -110 {
lab=VS1}
N 240 -10 250 -10 {
lab=out}
N 250 -10 280 -10 {
lab=out}
N 0 -310 0 -280 {
lab=VG1}
N 210 -80 210 -50 {
lab=VG2}
N 340 80 340 100 {
lab=VSS}
N 310 60 310 80 {
lab=VSS}
N 310 80 370 80 {
lab=VSS}
N 370 60 370 80 {
lab=VSS}
N 40 -10 40 20 {lab=VS1}
N 40 -10 80 -10 {lab=VS1}
N 0 -10 0 50 {lab=VD1}
N -40 -10 0 -10 {lab=VD1}
N 40 -150 40 -110 {lab=VCC}
N 40 90 40 110 {lab=VSS}
N 40 50 120 50 { lab=VSS}
N 120 50 120 90 { lab=VSS}
N 40 90 120 90 { lab=VSS}
N 40 -110 120 -110 { lab=VCC}
N 120 -110 120 -70 { lab=VCC}
N 40 -70 120 -70 { lab=VCC}
N 0 -70 0 -10 { lab=VD1}
N 40 -40 40 -10 {lab=VS1}
N 40 80 40 90 { lab=VSS}
N 40 -110 40 -100 { lab=VCC}
N -70 -240 -70 -130 {
lab=VD1}
N -70 -240 -60 -240 {
lab=VD1}
N 90 -240 170 -240 {
lab=VS1}
N 170 -240 170 -130 {
lab=VS1}
N 80 -10 130 -10 {
lab=VS1}
N 40 120 340 120 {
lab=VSS}
N 40 110 40 120 {
lab=VSS}
N 340 100 340 120 {
lab=VSS}
N -0 -240 -0 -200 {
lab=VSS}
N 210 -10 210 30 {
lab=VSS}
N 340 60 340 80 {
lab=VSS}
C {devices/ipin.sym} -230 -10 0 0 {name=p1 lab=in
}
C {devices/title.sym} -440 170 0 0 {name=l3 author="Rafael Miguel Correa"}
C {sky130_fd_pr/cap_mim_m3_1.sym} -170 -10 3 0 {name=C1 model=cap_mim_m3_1 W=26 L=26 MF=1 spiceprefix=X}
C {devices/opin.sym} 340 -10 0 0 {name=p2 lab=out
}
C {devices/lab_pin.sym} 90 -240 1 0 {name=out2 lab=VS1}
C {devices/lab_pin.sym} -90 -10 3 0 {name=out1 sig_type=std_logic lab=VD1
}
C {devices/ipin.sym} 0 -310 0 0 {name=p3 lab=VG1
}
C {devices/ipin.sym} 210 -80 2 0 {name=p5 lab=VG2
}
C {sky130_fd_pr/nfet_01v8.sym} 20 50 0 0 {name=M4
L=1
W=250
nf=10 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 20 -70 0 0 {name=M5
L=0.25
W=200
nf=8 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 40 120 0 0 {name=p4 lab=VSS
}
C {devices/ipin.sym} 40 -150 0 0 {name=p7 lab=VCC
}
C {sky130_fd_pr/nfet_01v8.sym} 210 -30 3 1 {name=M2
L=0.15
W=0.5
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 340 40 3 1 {name=M3
L=10
W=100
nf=4 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 0 -260 3 1 {name=M1
L=0.15
W=0.5
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 0 -200 2 0 {name=out3 lab=VSS}
C {devices/lab_pin.sym} 210 30 2 0 {name=out4 lab=VSS}
