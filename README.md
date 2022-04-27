# Series Reviews Application

## Stack
* Ruby 3.1.1
* Rails 7.0.2.3
* Docker
* PostgreSQL

## Run the project
* Go to directory of the project
* Run ```make image``` to build the image
* Run Server & DB Container using command ```make services``` or ```make services-d``` to run it background
* Run ```make create-db``` to create the database
* To run any migrations use ```make migrate-db```

## Importing Data
* Go to directory of the project
* Run ```make import-data``` and it will run the task