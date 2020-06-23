# Docker LiteShort
From https://github.com/132ikl/liteshort

Dockerized application

## How to start ?
`docker run -ti -d thomaslachaux/liteshort`

Get the IP address associated with `docker network inspect bridge0`

Edit the nginx configuration to change the ip address

Start a nginx container with
`docker run -v $PWD/nginx.conf:/etc/nginx/nginx.conf:ro -d nginx`

To avoid changing ip address, you could use the nginx-proxy image
