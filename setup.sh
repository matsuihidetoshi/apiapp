docker-compose run web rails new . --force --no-deps --database=postgresql --skip-bundle --skip-test --skip-active-storage --skip-yarn --skip-action-mailer --skip-sprockets --skip-javascript --skip-turbolinks --api
docker-compose build
docker-compose run web rails db:create
docker-compose up