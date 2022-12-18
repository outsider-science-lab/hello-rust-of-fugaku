.PHONY: FORCE

.PHONY: all

all: FORCE
	cargo build --release

.PHONY: run
run: FORCE
	pjsub job.sh
	pjstat

.PHONY: clean
clean:
	rm -rf target
