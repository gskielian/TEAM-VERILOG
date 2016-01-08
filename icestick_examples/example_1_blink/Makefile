all: example.bin

example.blif: example.v
	yosys -p 'synth_ice40 -top top -blif example.blif' example.v

example.asc: example.blif icestick.pcf
	arachne-pnr -d 1k -o example.asc -p icestick.pcf example.blif

example.bin: example.asc
	icepack example.asc example.bin

prog:
	iceprog example.bin

clean:
	rm -f example.blif example.asc example.bin

.PHONY: all prog clean
