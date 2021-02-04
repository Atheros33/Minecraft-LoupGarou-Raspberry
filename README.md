# Minecraft-LoupGarou-Raspi

This simple docker-compose file allows you to install, run and configure a minecraft server on Raspberry Pi with the [LoupGarou plug-in](https://github.com/leomelki/LoupGarou).

## Prerequesite
:warning: The LoupGarout plug-in appears to be as not maintened anymore (last update: April 2020). Accordingly, it has been designed for the **1.15.2** version of Minecraft and **have to** run on this version.

You need to have a functionning version of Docker (tutorial available online: [example](https://dev.to/rohansawant/installing-docker-and-docker-compose-on-the-raspberry-pi-in-5-simple-steps-3mgl)(for Raspi, obviously))

## Install
Clone this repo.
Run ```start.sh```

:bulb: It is possible to run the docker container as a daemon (in background).
Add the `-d` option to the `docker-compose up` command

## How to modify the server configuration?
This container is a fork of [itzg/minecraft-server](https://hub.docker.com/r/itzg/minecraft-server).
You just have to follow the config guide available on the [Github](https://github.com/itzg/docker-minecraft-server) of the project.

This configuration is provided with one of the two custom maps available on the official repository (lg_village). Another one is available: to play with, just change the line in `docker-compose.yml`:
```
WORLD: "https://github.com/leomelki/LoupGarou/raw/master/maps/lg_village.zip"
```
by:
```
WORLD: "https://github.com/leomelki/LoupGarou/raw/master/maps/lg_medieval.zip"
```

## Access to the server CLI
Execute the `open-cli.sh`
Press `ctrl+c` to quit

### Details
The LoupGarou plug-in needs a [Spigot](https://getbukkit.org/download/spigot) server and [ProtocolLib](https://github.com/dmulloy2/ProtocolLib/) depedency (already handled in the docker-compose file).

