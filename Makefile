.PHONY: up upb down downr downv downrv psql scrape scrapeh scrapei scrapehm scrapeim copy generate push drop upsert delete check finstall fdev

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

scrapecp:
	@docker compose cp scraper:/app/data temp

dbmgen:
	@docker compose exec database make gen

dbmpush:
	@docker compose exec database make push

dbmdrop:
	@docker compose exec database make drop

dbupsert:
	@docker compose exec database make upsert

dbdelete:
	@docker compose exec database make delete

dbcheck:
	@docker compose exec database make check

fdev:
	@docker compose exec frontend make dev