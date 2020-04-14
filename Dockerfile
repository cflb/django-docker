FROM debian
RUN apt-get update -y

RUN apt-get install -y vim python3 python3-venv python3-pip

CMD mkdir ~/src

WORKDIR ~/src

# Instalando django e gunicorn
RUN pip3 install django gunicorn

# o nome do diretório do projeto deve ser modificado caso queira,
# no meu modelo o projeto chama-se "my_project" 
# proxima versao desta Dockerfile farei isso ficar dinamico 
COPY my_project/ .

# Este container entende que você já possui um projeto django 
# que você já esteja trabalhando 
RUN cd my_project/

RUN python3 manage.py makemigrations
RUN python3 manage.py migrate

# TODO:
# 	Não testar agora (melhorar)
# 	- RUN python3 manage.py test

EXPOSE 8000

ENTRYPOINT ["python3", "manage.py", "runserver", "0.0.0.0:8000"]


