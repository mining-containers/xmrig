[![Docker Pulls](https://img.shields.io/docker/pulls/miningcontainers/xmrig)](https://hub.docker.com/r/miningcontainers/xmrig)

# XMRig

This [XMRig](https://hub.docker.com/r/miningcontainers/xmrig) image is kept up to date with the latest updates and is custom built in an Alpine container for best performance and size.

This image will CPU mine very well on any Docker host including Azure and AWS.

## Getting Started

The most simple execution is:

```shell
docker run -it miningcontainers/xmrig:latest -k --tls -o POOL:PORT -u USER -p PASSWORD 
```

An excellent Monero mining pool is [SupportXMR](https://supportxmr.com/).  To mine at SupportXMR you use your monero wallet address as the username, and password is not required.  

For Example:

```shell
docker run miningcontainers/xmrig:latest -k --tls -o pool.supportxmr.com:443 -u 48edfHu7V9Z84YzzMa6fUueoELZ9ZRXq9VetWzYGzKt52XU5xvqgzYnDK9URnRoJMk1j8nLwEVsaSWJ4fhdUyZijBGUicoD 
```
Here is another example for [Nanopool](https://xmr.nanopool.org/) (nanopool difficulty may be too high for low resource machines):

```shell
docker run miningcontainers/xmrig:latest --tls -o xmr-us-east1.nanopool.org:14433 -u 48edfHu7V9Z84YzzMa6fUueoELZ9ZRXq9VetWzYGzKt52XU5xvqgzYnDK9URnRoJMk1j8nLwEVsaSWJ4fhdUyZijBGUicoD --coin monero
```

### Running in Azure ACI

You can run in Azure Container Instances quite easily by using the native support in Docker Desktop for Windows/Mac.

You simply log Docker into Azure, create a context, and include the context on your normal `run` command.

Example:

```shell
docker login azure
docker context create aci myacicontext
docker --context myacicontext run miningcontainers/xmrig:latest -k --tls -o POOL:PORT -u USER -p PASSWORD 
```
Learn more at https://docs.docker.com/cloud/aci-integration/.

### Running in AWS ECS

Running in ECS is similar to running in ACI.  You can follow the instructions at: https://docs.docker.com/cloud/ecs-integration/

