.PHONY: all

all: oparser.bytes

oparser.bytes: oparser.ml lib/processing.ml lib/awesome.mli lib/awesome.ml
	ocamlfind ocamlc -I lib/ -o oparser.bytes lib/awesome.mli lib/awesome.ml lib/processing.ml oparser.ml
