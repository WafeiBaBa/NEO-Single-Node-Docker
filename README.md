# NEO-Single-Node-Docker

This is a docker image of a single-node private net running on neo-cli v2.10.2.

### To use the image

```
$ docker pull merlin217/neo-cli-privatenet
$ docker run --name neo-cli-privatenet -it -p 10002-10003:10002-10003/tcp merlin217/neo-cli-privatenet
```

### To build the image yourself

```
$ git clone https://github.com/WafeiBaBa/NEO-Single-Node-Docker.git
$ cd NEO-Single-Node-Docker
$ docker build -t neo-cli-privatenet .
$ docker run --name neo-cli-privatenet -it -p 10002-10003:10002-10003/tcp neo-cli-privatenet
```

### To save the container as an image

You can commit a running privatenet as a separate docker image by using `docker commit {container id} {name}:{tag}`

eg:

```
$ docker commit neo-cli-privatenet neo-cli-privatenet:version2
```

### Wallet password

All 100000000 NEO from the genesis block is stored in the `neo-cli/a.json` wallet. Password is `'1'`.
