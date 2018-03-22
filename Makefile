NPM=npm
PHP=php

install:
	$(NPM) install

compile:
	$(NPM) run compile

document:
	$(NPM) run docs

server:
	$(PHP) -S 127.0.0.1:8080 main.php

server/mock:
	$(NPM) run mock-server

test:
	$(NPM) run dredd
