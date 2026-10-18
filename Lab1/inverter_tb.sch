v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1500 -970 1830 -970 {lab=GND}
N 1830 -1030 1830 -1010 {lab=GND}
N 1820 -1030 1830 -1030 {lab=GND}
N 1450 -1100 1840 -1100 {lab=#net1}
N 1840 -1100 1840 -1070 {lab=#net1}
N 1820 -1070 1840 -1070 {lab=#net1}
N 1450 -970 1500 -970 {lab=GND}
N 1390 -1070 1520 -1070 {lab=Vin}
N 1330 -1100 1450 -1100 {lab=#net1}
N 1330 -1100 1330 -1070 {lab=#net1}
N 1330 -970 1450 -970 {lab=GND}
N 1330 -1010 1330 -970 {lab=GND}
N 1390 -1010 1390 -970 {lab=GND}
N 1830 -1010 1830 -970 {lab=GND}
N 1420 -1080 1420 -1070 {lab=Vin}
C {inverter.sym} 1670 -1050 0 0 {name=x1}
C {vsource.sym} 1330 -1040 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 1390 -1040 0 0 {name=V2 value="PWL( 0 0 20n 0 900n 1.8)" savecurrent=false}
C {gnd.sym} 1600 -970 0 0 {name=l1 lab=GND}
C {opin.sym} 1820 -1050 0 0 {name=p3 lab=Vout}
C {code_shown.sym} 1610 -1130 0 0 {name=s1 only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {code_shown.sym} 1610 -910 0 0 {name=s2 only_toplevel=false value=".control
tran 1n 1u
plot V(Vin) V(Vout)
.endc"
}
C {ipin.sym} 1420 -1080 0 0 {name=p1 lab=Vin}
