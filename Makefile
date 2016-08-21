export NAME = bmzhao/sempre-testing

build:
	docker build -t $(NAME):latest .

push:
	docker push $(NAME):latest

prepare:
	./pull-dependencies core
	./pull-dependencies freebase
	./pull-dependencies corenlp
	ant core
	ant corenlp
	ant freebase

start:
	docker run -it $(NAME):latest /bin/bash

startMounted:
	docker run -it -v /Users/brianzhao/Documents/IntellijProjects/sempre/freebase:/root/app/freebase:ro $(NAME):latest /bin/bash