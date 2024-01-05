.PHONY: up upb down downr downv downrv psql scrcp scrall scrh scri scrhm scrim scremp dbmgen dbmpush dbmdrop dbupsert dbdelete dbcheck bdev bserve bwatch fdev fbuild fpreview

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

scrcp:
	@docker compose cp backend:/app/data temp

scrall:
	@docker compose exec backend make scrall

scrh:
	@docker compose exec backend make scrh

scrhm:
	@docker compose exec backend make scrhm

scri:
	@docker compose exec backend make scri

scrim:
	@docker compose exec backend make scrim

scremp:
	@docker compose exec backend make scremp

dbgen:
	@docker compose exec backend make dbgen

dbpush:
	@docker compose exec backend make dbpush

dbdrop:
	@docker compose exec backend make dbdrop

dbupsert:
	@docker compose exec backend make dbupsert

dbdelete:
	@docker compose exec backend make dbdelete

dbcheck:
	@docker compose exec backend make dbcheck

bdev:
	@docker compose exec backend make dev

bserve:
	@docker compose exec backend make serve

bwatch:
	@docker compose exec backend make watch

fdev:
	@docker compose exec frontend make dev
	
fbuild:
	@docker compose exec frontend make build

fpreview:
	@docker compose exec frontend make preview