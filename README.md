# README

## Environment setup with docker


#### Setup docker container.  

You should not have to run this command unless
there are changes to the `Gemfile` or  `Dockerfile`.

```

> docker-compose build

```

### Create your database.  

```

docker-compose run web rake db:create

```

### Start the app

```

docker-compose up

```
