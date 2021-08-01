SHELL:=/bin/bash
basename:=lmb-unet-server

default: bin-cpu

.PHONY: bin

bin:
	docker build -f Dockerfile-$@ -t $(basename) .

bin-cpu:
	docker build -f Dockerfile-$@ -t $(basename) .

src:
	docker build -f Dockerfile-$@ -t $(basename)-src .
