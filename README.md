# OpenPDK_SkyWater130
This repository contains the documentation of the work done for clearing the Physical Design screening test of ESSCI-SFAL-VSD VLSI Training program for Women.

The workshop describes the physical verification process that takes place during an RTL to GDSII flow using Skywater 130nm Technology, including DRC and LVS tests. This helps the participants get ready for the tape out and is particularly helpful for chip fabrication. The workshop assists in locating and fixing violations made during the physical verification stage.

More information about the workshop can be found at https://www.vlsisystemdesign.com/physical-verification-using-sky130/

A special thanks to Tim and Kunal for creating and helping out.

<a href = "https://github.com/RTimothyEdwards"> R. Timothy Edwards </a>
<a href = "https://github.com/kunalg123"> Kunal Ghosh </a>


# Index
- Chapter 0 - Getting the tools
- Chapter 1 - Understanding the design flow
- Chapter 2 - DRC and LVS Fundamentals
- Chapter 3 - DRC Issues
- Chapter 4 - LVS
- Additional Content Workshop 

# Chapter 0 - Getting the tools
To adequately utilize the open source skywater130 pdk and understand the design flow, we first require to install all the tools, which are

- open_pdk
- magic
- ngspice
- xschem
- netgen 

Note: open_pdk has to be installed last so it can correctly associate the xschem and magic directories. Note: if the configure step fails during any process, its most likely due to missing additional packages, and they need to be installed (preferably from source) to complete the installation

Magic
Magic is an open-source VLSI layout tool.

Install steps:
```bash
$  git clone git://opencircuitdesign.com/magic
$  cd magic
$	 ./configure
$  make
$  sudo make install
```
More info can be found at http://opencircuitdesign.com/magic/index.html

Netgen
Netgen is a tool for comparing netlists, a process known as LVS, which stands for "Layout vs. Schematic"

Install steps:
```bash
$  git clone git://opencircuitdesign.com/netgen
$  cd netgen
$	./configure
$  make
$  sudo make install
```
More info can be found at http://opencircuitdesign.com/netgen/index.html

Xschem
Xschem is a schematic capture program

Install steps:
```bash
$  git clone https://github.com/StefanSchippers/xschem.git xschem_git
$	./configure
$  make
$  sudo make install
```
More info can be found at http://repo.hu/projects/xschem/index.html

Ngspice
ngspice is the open-source spice simulator for electric and electronic circuits.

Install steps:

After downloading the tarball from https://sourceforge.net/projects/ngspice/files/ to a local directory, unpack it using:
```bash
 $ tar -zxvf ngspice-37.tar.gz
 $ cd ngspice-37
 $ mkdir release
 $ cd release
 $ ../configure  --with-x --with-readline=yes --disable-debug
 $ make
 $ sudo make install
```
More info can be found at https://ngspice.sourceforge.io/index.html

Please note that to view the simulation graphs of ngspice, xterm is required and can be installed using.
```bash
$ sudo apt-get update
$ sudo apt-get install xterm
open_pdk
```
Open_PDKs is distributed with files that support the Google/SkyWater sky130 open process description https://github.com/google/skywater-pdk. Open_PDKs will set up an environment for using the SkyWater sky130 process with open-source EDA tools and tool flows such as magic, qflow, openlane, netgen, klayout, etc.

Install steps:
```bash
$  git clone git://opencircuitdesign.com/open_pdks
$  open_pdks
$	./configure --enable-sky130-pdk
$  make
$  sudo make install
```
Now that we have all the necessary tools installed let's understand the design flow!
