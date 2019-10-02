# loadtest docker image

I don't like to install every little program on my machine, so I like to run them from within docker containers.

This image can be used to run `loadtest` within a docker container like this:

```
    # build the image
    docker build -t loadtest_benchmark .
    # using --rps (requests per seconds)
    docker run --rm normoes/loadtest_benchmark -c "loadtest -c 10 --rps 200 <some_URL>"
    # ab syntax
    docker run --rm normoes/loadtest_benchmark -c "loadtest -c 10 -n 10000 <some_URL>"
```

## syntax
The syntax is described at the [loadtest npm package description](https://www.npmjs.com/package/loadtest) website.

* `$ loadtest [-n requests] [-c concurrency] [-k] URL`
* `$ loadtest <url> -c 10 --rps 10`
  - `--rps requests per second`
  > will send a total of 10 rps to the given URL, from 10 different clients (each client will send 1 request per second).


## compared to **ab**
The syntax is very similar, have a look at the [loadtest npm package description](https://www.npmjs.com/package/loadtest) website.
