
help: 
	@cat Makefile |grep -ve "ignore" | grep -E "(.+##|^#--)" | sed '/: ##\//t'

dev: ## start project in docker container running in foreground
	docker compose up

start: ## start project in container running in background
	docker compose up -d

rm:
	docker compose rm -s

prune: ## remove download images and remove containers from system
	docker system prune
	