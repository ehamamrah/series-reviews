image:
	docker compose build

services:
	docker compose up --force-recreate

services-d:
	docker compose up -d --force-recreate

services-down:
	docker compose down

create-db:
	docker exec -it web-server rails db:create

migrate-db:
	docker exec -it web-server rails db:migrate

bundle:
	docker exec -it web-server bundle install