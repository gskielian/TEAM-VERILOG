# TEAM-VERILOG

Resources and examples for working with the awesome [Project IceStorm](http://www.clifford.at/icestorm/).

## Installation on Ubuntu

To install follow the directions on Clifford's website: http://www.clifford.at/icestorm/

Or you copypasta the following auto-magical line to run all of those commands for you:

`curl https://raw.githubusercontent.com/gskielian/TEAM-VERILOG/master/ice-ubuntu-14.04-installer.sh | sh`

## examples:

There are two examples we looked at:

* the icestick
* the hx8kboard


current tree:
```sh
.
├── hx8kboard_examples
│   └── example_1_blink
│       ├── example.v
│       ├── hx8kboard.pcf
│       └── Makefile
├── icestick_examples
│   └── example_1_blink
│       ├── example.v
│       ├── icestick.pcf
│       └── Makefile
```


## icestick

<p align="center"><img width="30%" src="./img/icestick-lattice.jpg"/></p>

navigate to the directory below:

`./icestick_examples/example_1_blink/`


run with the following line:

```shell
make && sudo make prog
```

make edits to example.v as desired

## hx8kboard

<p align="center"><img width="30%" src="./img/hx8kboard.jpg"/></p>

navigate to the directory below:

`./hx8kboard_examples/example_1_blink/`

run with the following line:

```shell
sudo iceprog -S example.bin
```

