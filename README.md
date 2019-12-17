# ubuntu00
simple dockerfile to create ubuntu os with vim git ping ansible ssh and docker (docker in docker )


### How to pull?

`$ docker pull gaetan1903/ubuntu00:latest`

### How to run? 

`$ docker run -tid --name ub0 -v /var/run/docker.sock:/var/run/docker.sock ubuntu00:latest`

### How to get shell?

`$ docker exec -ti ub0 bash`

### How to coonect with ssh?

`ssh -l root ip_adress `

*password:* ***toor*** 
