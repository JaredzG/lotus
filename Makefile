.PHONY: up upb down downr downv downrv psql scrape scrapeh scrapei scrapehm scrapeim copy generate push drop upsert delete check

up:
	@docker compose up -d

upb:
	@docker compose up -d --build

down:
	@docker compose down

downr:
	@docker compose down --rmi all

downv:
	@docker compose down --volumes

downrv:
	@docker compose down --rmi all --volumes

psql:
	@docker compose exec postgres psql

scrape:
	@docker compose exec scraper make

scrapeh:
	@docker compose exec scraper make heroes

scrapei:
	@docker compose exec scraper make items

scrapehm:
	@docker compose exec scraper make heroesm

scrapeim:
	@docker compose exec scraper make itemsm

copy:
	@docker compose cp scraper:/app/data temp

generate:
	@docker compose exec database npm run migration:generate

push:
	@docker compose exec database npm run migration:push

drop:
	@docker compose exec database npm run migration:drop

upsert:
	@docker compose exec database make upsert

delete:
	@docker compose exec database make delete

check:
	@docker compose exec database make check