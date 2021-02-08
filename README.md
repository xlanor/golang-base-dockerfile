This is a base development dockerfile for the current stack I'm using.

This contains the following:

- [cosmtrek/air](https://github.com/cosmtrek/air), a hot-reloader for golang.
- [gobuffalo/soda](https://github.com/gobuffalo/soda) , a cli-interface for pop.
- [psql](https://pkgs.alpinelinux.org/package/v3.3/main/x86/postgresql-client) - enables access to the psql command.

This Dockerfile is built against `alpine 3.12`, and includes the following golang versions: `1.14`, `1.15`, and `1.16rc1` (which will be replaced when 1.16 enters its final release)

and is avaliable at the following
```
ghcr.io/xlanor/golang-base-dockerfile:1.16rc1-alpine3.12
ghcr.io/xlanor/golang-base-dockerfile:1.15-alpine3.12
ghcr.io/xlanor/golang-base-dockerfile:1.14.15-alpine3.12
```

This is automatically deployed to [ghcr](https://github.com/users/xlanor/packages/container/package/golang-base-dockerfile) on every commit to the master branch via gh actions

Please dont use this in production.
