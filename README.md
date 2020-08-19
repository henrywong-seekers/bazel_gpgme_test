```sh
$ docker build --network=host -t test .
$ docker run -v/var/run/docker.sock:/var/run/docker.sock --network=host test build //:gpgme
```
