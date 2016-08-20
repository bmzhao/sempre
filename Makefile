export NAME = sempre-testing

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