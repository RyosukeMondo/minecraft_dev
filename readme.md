# minecraft development environment

## requirement

- Docker

## How to use

```bat
.\setup.bat
```

It will build docker image minecraft forge server and VSCode server with minecraft forge MDK.

https://maven.minecraftforge.net/net/minecraftforge/forge/1.20.1-47.3.5/forge-1.20.1-47.3.5-installer.jar

https://maven.minecraftforge.net/net/minecraftforge/forge/1.20.1-47.3.5/forge-1.20.1-47.3.5-mdk.zip


## edit and build

after docker image up and running, go to http://localhost:8180/

```bash
# only for first time or build fail.
rm -rf ~/.gradle/caches/

# usual
./gradlew build
```

you will find your mod file under workspace/build/libs.

## forge server for test

once docker-compose up, your forge server stops.

edit minecraft\eula.txt.

```bash
eula=false
# to
eula=true
```

then save eula.txt and re up docker-compose.

copy your mod file to mods folder.

enjoy!