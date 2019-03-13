NPM=npm
PHP=php
DOCKER=docker

install:
	$(NPM) install

compile:
	$(NPM) run compile

document:
	$(DOCKER) run -it --rm -v $(PWD):/doc quay.io/bukalapak/snowboard html -o dist/output.html api.apib
	$(PHP) -S 127.0.0.1:8080 dist/output.html

server:
	$(PHP) -S 127.0.0.1:8080 main.php

server/mock:
	$(NPM) run mock-server

test:
	$(NPM) run dredd
