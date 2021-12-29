.PHONY: run
run:
	cd appsrv && go run main.go &
	cd oidcsrv && go run main.go &

.PHONY: kill-go
kill-go:
	$(eval PSS := $(shell ps x | awk -e 'BEGIN{OFS=" "} /go-build/ && !/awk/ {print $$1}'))
	if [ -n "$(PSS)" ]; then\
		kill $(PSS);\
	fi
