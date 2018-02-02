OCBFLAGS := -use-ocamlfind -I src -I lib
OCB := ocamlbuild $(OCBFLAGS)

.PHONY: all debug clean top profile gen-baselines check-baselines

all: ocampiler.native
%.native: .FORCE
	$(OCB) $@

.FORCE:

clean:
	$(OCB) -clean

top: ocampiler.ml
	utop
