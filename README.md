# OpenGrok:

opengrok version: [opengrok-0.12.1.5](https://java.net/projects/opengrok/downloads/download/opengrok-0.12.1.5.tar.gz)

image base on: [tomcat:8.0](https://registry.hub.docker.com/_/tomcat/)

to start:

```
sudo docker run --rm \
    -v /path/to/source:/src \
    -v /path/to/opengrok_data:/data \
    -p 8888:8080 \
    scue/opengrok:cron
```

then, the search engine is available at `http://localhost:8888/`.
