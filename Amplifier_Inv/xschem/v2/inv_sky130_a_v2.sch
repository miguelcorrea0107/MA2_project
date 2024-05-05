v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 900 90 900 110 {
lab=GND}
N -610 0 -580 0 {
lab=in}
N 230 -120 230 0 {
lab=#net1}
N 50 0 80 0 {
lab=#net1}
N 900 0 900 30 {
lab=out}
N 220 0 240 0 {
lab=#net1}
N 80 0 100 0 {
lab=#net1}
N -20 -310 -20 -290 {
lab=VCC}
N 50 -310 50 -290 {
lab=VCC}
N 300 -160 300 -140 {
lab=VCC}
N -200 -250 -190 -250 {
lab=#net2}
N 10 -250 20 -250 {
lab=#net3}
N 80 -250 90 -250 {
lab=#net4}
N 240 0 270 0 {
lab=#net1}
N 250 -100 270 -100 {
lab=#net1}
N 250 -100 250 0 {
lab=#net1}
N -160 -310 -160 -290 {
lab=VCC}
N -90 -310 -90 -290 {
lab=VCC}
N -130 -250 -120 -250 {
lab=#net5}
N -60 -250 -50 -250 {
lab=#net6}
N -300 -310 -300 -290 {
lab=VCC}
N -230 -310 -230 -290 {
lab=VCC}
N -480 -250 -470 -250 {
lab=#net7}
N -270 -250 -260 -250 {
lab=#net8}
N -200 -250 -190 -250 {
lab=#net2}
N -440 -310 -440 -290 {
lab=VCC}
N -370 -310 -370 -290 {
lab=VCC}
N -410 -250 -400 -250 {
lab=#net9}
N -340 -250 -330 -250 {
lab=#net10}
N -480 -250 -480 -0 {
lab=#net7}
N -520 0 -30 -0 {
lab=#net7}
N 330 -100 340 -100 {
lab=#net11}
N 370 -160 370 -140 {
lab=VCC}
N 400 -100 410 -100 {
lab=#net12}
N 440 -160 440 -140 {
lab=VCC}
N 470 -100 480 -100 {
lab=#net13}
N 900 -100 900 0 {
lab=out}
N 500 -160 500 -140 {
lab=VCC}
N 450 -100 470 -100 {
lab=#net13}
N 530 -100 540 -100 {
lab=#net14}
N 570 -160 570 -140 {
lab=VCC}
N 600 -100 610 -100 {
lab=#net15}
N 640 -160 640 -140 {
lab=VCC}
N 670 -100 680 -100 {
lab=#net16}
N 450 -100 460 -100 {
lab=#net13}
N 120 -310 120 -290 {
lab=VCC}
N 190 -310 190 -290 {
lab=VCC}
N 150 -250 160 -250 {
lab=#net17}
N 220 -250 230 -250 {
lab=#net18}
N 100 0 220 0 {
lab=#net1}
N -20 -160 -20 -140 {
lab=VCC}
N 50 -160 50 -140 {
lab=VCC}
N -200 -100 -190 -100 {
lab=#net19}
N 10 -100 20 -100 {
lab=#net20}
N 80 -100 90 -100 {
lab=#net21}
N -160 -160 -160 -140 {
lab=VCC}
N -90 -160 -90 -140 {
lab=VCC}
N -130 -100 -120 -100 {
lab=#net22}
N -60 -100 -50 -100 {
lab=#net23}
N -300 -160 -300 -140 {
lab=VCC}
N -230 -160 -230 -140 {
lab=VCC}
N -270 -100 -260 -100 {
lab=#net24}
N -200 -100 -190 -100 {
lab=#net19}
N -340 -100 -330 -100 {
lab=#net25}
N 120 -160 120 -140 {
lab=VCC}
N 150 -100 230 -120 {
lab=#net1}
N -400 -100 230 -250 {
lab=#net18}
N -370 -160 -370 -140 {
lab=VCC}
N 690 -100 700 -100 {
lab=#net16}
N 730 -160 730 -140 {
lab=VCC}
N 760 -100 770 -100 {
lab=#net26}
N 790 -160 790 -140 {
lab=VCC}
N 740 -100 760 -100 {
lab=#net26}
N 820 -100 830 -100 {
lab=#net27}
N 860 -160 860 -140 {
lab=VCC}
N 890 -100 900 -100 {
lab=out}
N 740 -100 750 -100 {
lab=#net26}
N 670 -100 690 -100 {
lab=#net16}
C {sky130_tests/not.sym} 10 0 0 0 {name=x1 m=1 
+ W_N=250 L_N=1 W_P=200 L_P=0.25
+ VCCPIN=VCC VSSPIN=VSS}
C {devices/ipin.sym} -610 0 0 0 {name=p1 lab=in
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 900 60 0 0 {name=C2 model=cap_mim_m3_1 W=14 L=15 MF=1 spiceprefix=X}
C {devices/gnd.sym} 900 110 0 0 {name=l6 lab=GND}
C {devices/title.sym} -430 160 0 0 {name=l3 author="Rafael Miguel Correa"}
C {sky130_fd_pr/cap_mim_m3_1.sym} -550 0 3 0 {name=C1 model=cap_mim_m3_1 W=22 L=22 MF=1 spiceprefix=X}
C {devices/opin.sym} 900 0 0 0 {name=p2 lab=out
}
C {sky130_fd_pr/nfet3_01v8.sym} -20 -270 3 1 {name=M3
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
C {devices/vdd.sym} -20 -310 0 0 {name=l2 lab=VCC}
C {sky130_fd_pr/nfet3_01v8.sym} 50 -270 3 1 {name=M1
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
C {devices/vdd.sym} 50 -310 0 0 {name=l5 lab=VCC}
C {sky130_fd_pr/nfet3_01v8.sym} 300 -120 3 1 {name=M2
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
C {devices/vdd.sym} 300 -160 0 0 {name=l8 lab=VCC}
C {sky130_fd_pr/nfet3_01v8.sym} -160 -270 3 1 {name=M7
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
C {devices/vdd.sym} -160 -310 0 0 {name=l10 lab=VCC}
C {sky130_fd_pr/nfet3_01v8.sym} -90 -270 3 1 {name=M9
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
C {devices/vdd.sym} -90 -310 0 0 {name=l12 lab=VCC}
C {sky130_fd_pr/nfet3_01v8.sym} -300 -270 3 1 {name=M11
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
C {devices/vdd.sym} -300 -310 0 0 {name=l14 lab=VCC}
C {sky130_fd_pr/nfet3_01v8.sym} -230 -270 3 1 {name=M13
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
C {devices/vdd.sym} -230 -310 0 0 {name=l16 lab=VCC}
C {sky130_fd_pr/nfet3_01v8.sym} -440 -270 3 1 {name=M15
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
C {devices/vdd.sym} -440 -310 0 0 {name=l18 lab=VCC}
C {sky130_fd_pr/nfet3_01v8.sym} -370 -270 3 1 {name=M17
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
C {devices/vdd.sym} -370 -310 0 0 {name=l20 lab=VCC}
C {sky130_fd_pr/nfet3_01v8.sym} 370 -120 3 1 {name=M19
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
C {devices/vdd.sym} 370 -160 0 0 {name=l22 lab=VCC}
C {sky130_fd_pr/nfet3_01v8.sym} 440 -120 3 1 {name=M21
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
C {devices/vdd.sym} 440 -160 0 0 {name=l24 lab=VCC}
C {sky130_fd_pr/nfet3_01v8.sym} 500 -120 3 1 {name=M4
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
C {devices/vdd.sym} 500 -160 0 0 {name=l1 lab=VCC}
C {sky130_fd_pr/nfet3_01v8.sym} 570 -120 3 1 {name=M5
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
C {devices/vdd.sym} 570 -160 0 0 {name=l4 lab=VCC}
C {sky130_fd_pr/nfet3_01v8.sym} 640 -120 3 1 {name=M6
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
C {devices/vdd.sym} 640 -160 0 0 {name=l7 lab=VCC}
C {sky130_fd_pr/nfet3_01v8.sym} 120 -270 3 1 {name=M8
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
C {devices/vdd.sym} 120 -310 0 0 {name=l9 lab=VCC}
C {sky130_fd_pr/nfet3_01v8.sym} 190 -270 3 1 {name=M10
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
C {devices/vdd.sym} 190 -310 0 0 {name=l11 lab=VCC}
C {sky130_fd_pr/nfet3_01v8.sym} -20 -120 3 1 {name=M12
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
C {devices/vdd.sym} -20 -160 0 0 {name=l13 lab=VCC}
C {sky130_fd_pr/nfet3_01v8.sym} 50 -120 3 1 {name=M14
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
C {devices/vdd.sym} 50 -160 0 0 {name=l15 lab=VCC}
C {sky130_fd_pr/nfet3_01v8.sym} -160 -120 3 1 {name=M16
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
C {devices/vdd.sym} -160 -160 0 0 {name=l17 lab=VCC}
C {sky130_fd_pr/nfet3_01v8.sym} -90 -120 3 1 {name=M18
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
C {devices/vdd.sym} -90 -160 0 0 {name=l19 lab=VCC}
C {sky130_fd_pr/nfet3_01v8.sym} -300 -120 3 1 {name=M20
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
C {devices/vdd.sym} -300 -160 0 0 {name=l21 lab=VCC}
C {sky130_fd_pr/nfet3_01v8.sym} -230 -120 3 1 {name=M22
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
C {devices/vdd.sym} -230 -160 0 0 {name=l23 lab=VCC}
C {sky130_fd_pr/nfet3_01v8.sym} -370 -120 3 1 {name=M23
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
C {devices/vdd.sym} -370 -160 0 0 {name=l25 lab=VCC}
C {sky130_fd_pr/nfet3_01v8.sym} 120 -120 3 1 {name=M24
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
C {devices/vdd.sym} 120 -160 0 0 {name=l26 lab=VCC}
C {sky130_fd_pr/nfet3_01v8.sym} 730 -120 3 1 {name=M25
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
C {devices/vdd.sym} 730 -160 0 0 {name=l28 lab=VCC}
C {sky130_fd_pr/nfet3_01v8.sym} 790 -120 3 1 {name=M26
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
C {devices/vdd.sym} 790 -160 0 0 {name=l29 lab=VCC}
C {sky130_fd_pr/nfet3_01v8.sym} 860 -120 3 1 {name=M27
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
C {devices/vdd.sym} 860 -160 0 0 {name=l30 lab=VCC}
