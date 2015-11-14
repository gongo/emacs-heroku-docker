Heroku Emacs Docker Image
==============================

[![Build Status](https://travis-ci.org/gongo/emacs-heroku-docker.svg?branch=master)](https://travis-ci.org/gongo/emacs-heroku-docker)

This image is for use with Heroku Docker CLI.

REQUIREMENTS
--------------------

- [Build and Deploy with Docker | Heroku Dev Center](https://devcenter.heroku.com/articles/docker)
    - `docker`
    - `docker-compose`
    - `heroku-cli`

And, your project must contain the following files:

- [Cask](https://github.com/cask/cask)
- [Procfile](https://devcenter.heroku.com/articles/procfile)
- Application codes (Emacs Lisp)
    - e.g. https://github.com/gongo/emacs-heroku-docker/commit/48a596fd888723c4bbc6e9805cfcccf7a6e6e7d1

USAGE
--------------------

```
$ heroku docker:init --image gongo/heroku-emacs
$ docker-compose build
```

### Deploy

```
$ heroku create --app sample
$ heroku docker:release --app sample
$ heroku open --app sample
```

### Development

```
$ docker-compose up web
```

And access to `http://${DockerHost-IP}:8080`

SPECIFICATION OF ENVIRONMENT
--------------------

Platform:

- [Cedar-14 Stack](https://devcenter.heroku.com/articles/cedar)

Available commands:

- `cask`
- `emacs`

LICENSE
--------------------

MIT License
