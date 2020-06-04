# DDv0 - Django-docker versão 0
Um conjunto de containers para prover um sistema de deploy simples e rápido.

# Instalação

1. Clone este repositório
2. Entre no diretório criado
3. Tenha instalado o docker e o docker-compose em sua máquina
4. Pode ser que seu docker-compose nao suporte a versão 3, por isso, se algum erro pertinente a versão aparecer, abra o arquivo docker-compose.yml e mude para a versão indicada.
5. na pasta src/ vc colocara seu projeto django, coloque em primeiro nível de forma que o arquivo manage.py fique no próximo nível após src/
6. No arquivo docker-compose.yml mude o nome de 'supersite' pelo nome do seu projeto django.
7. Execute: docker-compose build
8. Execute: docker-compose up -d (isso levantara os containers e entra em modo daemon, após este procedimento você pode simplesmente usar start, stop, restart - docker-compose restart)
9. Abra seu projeto em um browser acessando o endereço http://localhost

# TODO ddv1

1. Um esquema de configuração para criar de forma mais simples um projeto de containers.
2. Pensar em um container para o graphana ou algo do tipo
3. Containers para bkp de banco de dados
4. CI/CD

## Incremento por list feita

   ddv0.1 (item 1 concluido)
   ddv0.2.1 (item 2 concluido e refatorado e corrigido bugs 1 vez)
