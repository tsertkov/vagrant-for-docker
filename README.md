# Vagrant for docker

Runs vm with docker engine based on ailispaw/barge. Instead of original it does not map any ports on localhost and uses dhcp assigned IP instead. This allows running multiple isolated docker environments on signle machine (per project envs).

`docker-env.sh` script retrieves dynamically assigned ip of vm and returns shell script for evaluating in current context: `eval $(./bin/docker-env.sh)` for setting up docker environment variables.

```
$ vagrant up
$ eval $(./bin/docker-env.sh)
$ docker ps
...
$ vagrant halt
```
