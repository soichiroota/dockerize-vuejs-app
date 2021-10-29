build:
	docker-compose build

up:
	docker-compose up

up--build:
	docker-compose up --build

down:
	docker-compose down

install:
	docker-compose run --rm vue npm install

unit:
	docker-compose run --rm vue npm run unit

e2e:
	docker-compose run --rm vue npm run e2e

test:
	docker-compose run --rm vue npm run test

lint:
	docker-compose run --rm vue npm run lint

build--report--production:
	docker-compose run --rm vue npm run build --report

up--build--production:
	docker build -t vue-app ./app
	docker run -it -p 8080:80 --rm --name vue-app-1 vue-app