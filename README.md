# README

## Environment setup with docker

Host Url: http://localhost:6111

Host Port: 6111

Web App Port: 6111

#### Setup docker container.  

You should not have to run this command unless
there are changes to the `Gemfile` or  `Dockerfile`.

```

> docker-compose build

```

#### Create your database.  

```

docker-compose run web rake db:create

```

#### Start the app

```

docker-compose up

```

#### Bundling and Rebuilding

Only the latter is required for non gem related changes

```

docker-compose run web bundle install

docker-compose up --build

```

#### Helpful commands

Console

```

docker-compose run web bash


```

Rake commands

```

docker-compose run web rake db:migrate


```

These instruction where mostly grabbed from the sample app here: https://docs.docker.com/compose/rails/
