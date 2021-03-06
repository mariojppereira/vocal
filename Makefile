##########################################################################
#                                                                        #
#  VOCaL -- A Verified OCaml Library                                     #
#                                                                        #
#  Copyright (c) 2020 The VOCaL Project                                  #
#                                                                        #
#  This software is free software, distributed under the MIT license     #
#  (as described in file LICENSE enclosed).                              #
##########################################################################

all:
	dune build

install:
	dune build @install && dune install

test:
	dune build @runtest

gospel:
	dune build @install -p gospel && dune install gospel

why3gospel:
	dune build @install -p why3gospel && dune install why3gospel

vocal:
	dune build @install -p vocal && dune install vocal

clean:
	dune clean

format:
	dune build @fmt --auto-promote

# update file headers (using headache)
headers:
	headache -c .headache/headache_config.txt -h .headache/header.txt \
		Makefile src/*.mli src/*.ml

.PHONY: all gospel why3gospel vocal clean format headers
