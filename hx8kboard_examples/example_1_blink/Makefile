all: example.bin

example.blif: example.v
	yosys -p 'synth_ice40 -top top -blif example.blif' example.v

example.asc: example.blif hx8kboard.pcf
	arachne-pnr -d 8k -o example.asc -p hx8kboard.pcf example.blif

example.bin: example.asc
	icepack example.asc example.bin

prog:
	iceprog example.bin

clean:
	rm -f example.blif example.asc example.bin

.PHONY: all prog clean
