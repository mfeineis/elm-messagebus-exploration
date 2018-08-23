all:
	./private/elm make ./src/Main.elm --output ./dist/app.js

build.log: ./src/*
	make all | tee ./build.log

clean:
	rm -rf ./dist/
	mkdir -p ./dist/
	mkdir -p ./logs/
	touch ./build.log

markdown.spec.dumptests:
	python3 ${PWD}/../CommonMark/test/spec_tests.py --spec=${PWD}/../CommonMark/spec.txt --dump-tests >> ${PWD}/tests/commonmark.complete.json

markdown.spec.generate:
	node ./tests/generate-tests-from-spec

watch-tests:
	npx elm-test --compiler=./private/elm --watch tests/Test/**/**/*.elm

watch:
	(while true; do make -q build.log || make build.log ; sleep 1; done) | grep -v 'make\[1\]'

.PHONY: all clean
