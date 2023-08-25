# Wandersnap Docker Environment

## Requirements

- Docker (https://docs.docker.com/get-docker/)

## Setup
Before running any docker commands you will first need to download the two repositories required for this application these are as follows

- API - https://github.com/JumpTwentyFour/wandersnap-api
- Admin Panel - https://github.com/JumpTwentyFour/wandersnap-admin-panel

you can install these anywhere on your local machine but the locations that they are installed will need to be used in 
the .env file you will be using in this repository

- `cp .env.example .env`
- change both the variables in the `.env` file to point to the above installed repositories
- `docker compose build`
- `docker compose up -d`
- `docker compose exec php composer install`
- `docker compose exec php php artisan key:generate`
- `docker compose exec php php artisan migrate`

The admin panel should be available at
The API should be available at

## Running commands

Run artisan commands with: `docker compose exec php php artisan <command>`

## Tests

For PHP testing we are using the [Pest framework](https://pestphp.com/).

Run PHP unit tests with: `docker compose exec php php artisan test`


## Database

You can connect to the MySQL database with the following credentials:
```
Host: 127.0.0.1
Port: 33061
Username: root
Password: root
```

## Emails

The development docker setup includes [Mailpit](https://github.com/axllent/mailpit) for catching emails sent from the app.

You can access the Mailpit UI at http://localhost:8025

## Coding Standards

- Run `composer lint` to check coding standards on PHP files.
- Run `composer fix` to auto-fix coding standards on PHP files.

## Pull Requests

Pull requests targeting the `main` branch should reference a Jira task using either the branch name or a commit message, more information can be found [here](https://support.atlassian.com/jira-software-cloud/docs/reference-issues-in-your-development-work/).

This ensures all PRs are linked to a Jira task.


## Open API Specification

The Open API Spec for this project can be found [here](https://github.com/JumpTwentyFour/wandersnap-api-documentation) 
