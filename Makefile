NPM=npm

install:
	$(NPM) install

compile:
	$(NPM) run compile

server:
	$(NPM) run server

server/mock:
	$(NPM) run mock-server
