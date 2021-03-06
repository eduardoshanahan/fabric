# Python Fabric

A Docker image to apply remote commands from Python.

[Python Fabric](http://www.fabfile.org/)

## Building

```
docker build . -t eduardoshanahan/fabric:latest
```

## Running an interactive test

```
docker run --rm -it eduardoshanahan/fabric:latest
```

Or with Docker Compose

```
docker-compose run --rm shell
```

## Building an image in Docker Hub

If for any reason the tagged build fails, you can fire a fresh one running

```
./build_image.sh
```

## Development

To send the commits to the remote server, you can use the script

```
./save.sh
```

which will also create a new tag if the version is updated.
