.PHONY: FORCE

.PHONY: all

all: FORCE
	bash -ex ./build.sh

.PHONY: run
run: FORCE
	pjsub job.sh
	pjstat

.PHONY: clean
clean:
	rm -rf target
