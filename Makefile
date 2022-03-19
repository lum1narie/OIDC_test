.PHONY: hydra-run
hydra-run:
	cd oidcsrv && \
	docker-compose -f quickstart.yml \
	-f quickstart-mysql.yml \
	up --build

.PHONY: hydra-client
hydra-client:
	cd oidcsrv && \
	docker-compose -f quickstart.yml exec hydra \
	hydra clients create \
	--endpoint http://127.0.0.1:4445/ \
	--id my-client \
	--secret secret \
	--grant-types client_credentials

.PHONY: hydra-down
hydra-down:
	cd oidcsrv && \
	docker-compose -f quickstart.yml \
	-f quickstart-mysql.yml \
	down

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
