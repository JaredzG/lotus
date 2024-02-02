.PHONY: up upb down downr downv downrv psql scrcopy scrall scrh scri scrhm scrim scremp dbmgen dbmpush dbmdrop dbupsert dbdelete dbcheck s3upload s3read fdev fbuild fpreview

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

scrcopy:
	@docker compose cp lotus-data-manager:/app/data temp

scrall:
	@docker compose exec lotus-data-manager make scrall

scrh:
	@docker compose exec lotus-data-manager make scrh

scrhm:
	@docker compose exec lotus-data-manager make scrhm

scri:
	@docker compose exec lotus-data-manager make scri

scrim:
	@docker compose exec lotus-data-manager make scrim

scremp:
	@docker compose exec lotus-data-manager make scremp

dbgen:
	@docker compose exec lotus-data-manager make dbgen

dbpush:
	@docker compose exec lotus-data-manager make dbpush

dbdrop:
	@docker compose exec lotus-data-manager make dbdrop

dbupsert:
	@docker compose exec lotus-data-manager make dbupsert

dbdelete:
	@docker compose exec lotus-data-manager make dbdelete

dbcheck:
	@docker compose exec lotus-data-manager make dbcheck

s3upload:
	@docker compose exec lotus-data-manager make s3upload

s3read:
	@docker compose exec lotus-data-manager make s3read

fdev:
	@docker compose exec lotus-web-app make dev
	
fbuild:
	@docker compose exec lotus-web-app make build

fpreview:
	@docker compose exec lotus-web-app make preview