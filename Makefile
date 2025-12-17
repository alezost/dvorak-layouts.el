# This is not a full-featured Makefile and it is not intended to be used
# to install this package to your system.  Its only purpose is to
# byte-compile "*.el" files (using 'make') - to make sure that there are
# no compilation warnings.

EMACS = emacs
TOP := $(dir $(lastword $(MAKEFILE_LIST)))

LOAD_PATH = -L $(TOP)
EMACS_BATCH = $(EMACS) -batch -Q $(LOAD_PATH)

ELS =	      	       	      	\
  dvorak-qwerty.el		\
  dvorak-russian-computer.el

ELCS = $(ELS:.el=.elc)

all: $(ELCS)

%.elc: %.el
	@printf "Compiling $<\n"
	@$(EMACS_BATCH) -f batch-byte-compile $<

clean:
	@printf "Removing *.elc...\n"
	@$(RM) $(ELCS)
