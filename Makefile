.PHONY: all

OPTS = -I lib -bin-annot

all: oparser.bytes

lib/awesome.cmo: lib/awesome.mli lib/awesome.ml
	ocamlfind ocamlc -c $(OPTS) $^

lib/processing.cmo: lib/processing.ml
	ocamlfind ocamlc -c $(OPTS) $^

oparser.bytes: lib/awesome.cmo lib/processing.cmo oparser.ml 
	ocamlfind ocamlc $(OPTS) -o $@ $^

clean:
	find . -name \*.cm\* -exec rm {} \;
	find . -name \*~ -exec rm {} \;
