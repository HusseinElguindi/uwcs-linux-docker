build:
	docker build -t "studentcs:1.0" .

run:
	docker run -it --rm -v $PWD:/tmp -w /tmp studentcs:1.0
