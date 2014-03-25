all: dose-pump.rcx

dose-pump.rcx: dose-pump.nqc
	nqc -TRCX2 $<

install: dose-pump.rcx
	nqc -d $<
	nqc -sleep 0

firmware: firm0332.lgo
	nqc -firmware $<

