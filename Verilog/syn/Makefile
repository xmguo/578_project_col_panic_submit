SOURCES = $(wildcard ../src/clib/*.v)
SOURCES += $(wildcard ../src/*.v)

export SOURCES

all: syn

.PHONY: all

syn: $(SOURCES) router.tcl
	dc_shell-t -f ./router.tcl | tee router_synth.out