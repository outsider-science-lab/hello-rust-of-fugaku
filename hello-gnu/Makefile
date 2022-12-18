.PHONY: FORCE

.PHONY: all

all: FORCE
	bash -ex ./build.sh

.PHONY: run
run: FORCE
	pjsub job.sh
	pjbstat
