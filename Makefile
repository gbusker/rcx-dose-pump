all: dose-pump.rcx

dose-pump.rcx: dose-pump.nqc
	nqc -TRCX2 $<

install: dose-pump.rcx
	nqc -d $<
