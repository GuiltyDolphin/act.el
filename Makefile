.PHONY: build test

build :
	@cask build

test :
	@cask build \
	&& cask emacs -batch -L . -l tests/act-tests.el -f ert-run-tests-batch-and-exit
