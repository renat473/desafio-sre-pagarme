# Desafio Pagar.me


## Requisitos.

- Git
- Docker
- Docker-compose
- AWS CLI version 2

## Comandos Utilizados Terraform

```
terraform-init:     ## Init realizar o Download dos binários necessários para o Terraform.
terraform-plan:     ## Cria o plano de execução do Terraform.
terraform-apply:    ## Aplica o plano de criação do ambiente na AWS.
terraform-destroy:  ## Destroi todo ambiente criado.
```

## Arquivos .tf[terraform] AWS

```
Arquivo provider.tf o parametro region e utilizado para indicar a região que o ambiente será criado.
Arquvio s3.tf repasso o nome do repositório onde repasso o nome do bucket que será criado jundo da aplicação.
```

Acesse o [link](https://www.terraform.io/registry) para ver todos os comandos do Terraform

## Comandos Utilizados Docker

Compila, (re)cria, inicia e anexa um contêiner para um serviço:
``` bash
$ docker-compose up --build
```

Para e remove todos o(s) contêiner(es) e a(s) rede(s):
``` bash
$ docker-compose down
```

Inicia o(s) contêiner(es):
``` bash
$ docker-compose up -d 
```

Para o(s) contêiner(es):
``` bash
$ docker-compose stop [nomedoserviço...]
```

Lista as imagens usadas pelos contêineres criados:
``` bash
$ docker images
```

Visualiza os logs dos contêineres.
``` bash
$ docker logs [nomedoserviço...]
```

Visualiza as estatística dos contêineres como: consumo de cpu, memória, etc...
``` bash
$ docker stats [nomedoserviço....]
```

Exclui todos os processos/serviços do computador local:
``` bash
$ docker rm $(docker ps -a -q) -f  
```

Exclui todas as imagens do computador local:
``` bash
$ docker rmi $(docker images -a -q) -f
```

Remove o cache do builder:
``` bash
$ docker builder prune
```

Remove as redes não utilizadas:
``` bash
$ docker network prune
```

Acesse o [link](https://docs.docker.com/reference/) para ver todos os comandos do Docker.
