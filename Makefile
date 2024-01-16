
build:
	@chmod +x config.override.sh
	@docker build -t javanile/roundcube:latest .

test: build
	@docker run --rm -it -p 80:80 javanile/roundcube:latest
