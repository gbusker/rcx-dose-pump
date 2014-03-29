all: dose-pump.rcx

dose-pump.rcx: dose-pump.nqc
	nqc -TRCX2 $<

install: dose-pump.rcx
	nqc -d $<
	nqc -sleep 0

install3:
	nqc -sleep 0
	nqc -TRCX2 -DWAITTIME=12000 -Op1.rcx dose-pump.nqc
	nqc -TRCX2 -DWAITTIME=6000 -Op2.rcx dose-pump.nqc 
	nqc -TRCX2 -DWAITTIME=3000 -Op3.rcx dose-pump.nqc 
	nqc -TRCX2 -DWAITTIME=1500 -Op4.rcx dose-pump.nqc
	nqc -pgm 1
	nqc -d p1.rcx
	nqc -pgm 2
	nqc -d p2.rcx
	nqc -pgm 3
	nqc -d p3.rcx 
	nqc -pgm 4
	nqc -d p4.rcx 


firmware: firm0332.lgo
	nqc -firmware $<

