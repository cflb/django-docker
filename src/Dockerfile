#FROM debian
FROM python:3
RUN apt-get update -y

#RUN apt-get install -y vim python3 python3-venv python3-pip
RUN apt-get install -y vim

#CMD mkdir ~/

WORKDIR ~/

# Criando ambiente virtual python
#RUN python3 -m venv .venv
# Ativando ambeinte

#RUN . .venv/bin/activate
# Instalando django e gunicorn
#RUN pip3 install django gunicorn


# o nome do diretório do projeto deve ser modificado caso queira,
# no meu modelo o projeto chama-se "my_project" 
# proxima versao desta Dockerfile farei isso ficar dinamico 
COPY . .

RUN pip3 install -r requirements.txt
# Este container entende que você já possui um projeto django 
# que você já esteja trabalhando 
#RUN cd src/

RUN python3 manage.py makemigrations
RUN python3 manage.py migrate
# TODO:
# 	Não testar agora (melhorar)
# 	- RUN python3 manage.py test

#EXPOSE 8000

#ENTRYPOINT ["python3", "manage.py", "runserver", "0.0.0.0:8000"]


