.PHONY: install test clean

circle-install:
	curl --remote-name https://raw.githubusercontent.com/Shyp/set-node-npm/master/set-node-npm
	chmod +x set-node-npm
	./set-node-npm

install:
	npm install

test:
	node --version
	@NODE_ENV=test ./node_modules/.bin/mocha

clean:
	rm -rf node_modules
