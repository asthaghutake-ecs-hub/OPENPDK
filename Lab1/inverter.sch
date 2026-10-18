v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1630 -960 1630 -930 {lab=Vss}
N 1630 -1070 1630 -1020 {lab=out}
N 1630 -1050 1690 -1050 {lab=out}
N 1580 -1100 1580 -990 {lab=Vin}
N 1580 -990 1590 -990 {lab=Vin}
N 1580 -1100 1590 -1100 {lab=Vin}
N 1530 -1050 1580 -1050 {lab=Vin}
N 1630 -990 1650 -990 {lab=Vss}
N 1650 -990 1650 -940 {lab=Vss}
N 1650 -940 1650 -930 {lab=Vss}
N 1650 -930 1670 -930 {lab=Vss}
N 1630 -930 1650 -930 {lab=Vss}
N 1630 -1150 1630 -1130 {lab=Vdd}
N 1600 -1150 1630 -1150 {lab=Vdd}
C {sky130_fd_pr/nfet_01v8.sym} 1610 -990 0 0 {name=M1
W=4.5
L=0.18
nf=3
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1610 -1100 0 0 {name=M2
W=3
L=0.18
body=Vdd
nf=3
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {ipin.sym} 1530 -1050 0 0 {name=p1 lab=Vin
}
C {opin.sym} 1690 -1050 0 0 {name=p2 lab=Vout}
C {iopin.sym} 1600 -1150 0 1 {name=p3 lab=Vdd}
C {iopin.sym} 1670 -930 0 0 {name=p4 lab=Vss}
