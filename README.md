This is a base development dockerfile for the current stack I'm using.

This contains the following:

- [cosmtrek/air](https://github.com/cosmtrek/air), a hot-reloader for golang.
- [gobuffalo/soda](https://github.com/gobuffalo/soda) , a cli-interface for pop.
- [psql](https://pkgs.alpinelinux.org/package/v3.3/main/x86/postgresql-client) - enables access to the psql command.

Please dont use this in production.