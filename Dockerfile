# Define a imagem base utilizada para executar a aplicação Web Java.
# A imagem contém o Apache Tomcat 9.0 com JDK 8.
FROM tomcat:9.0-jdk8

# Copia o arquivo WAR da aplicação, previamente gerado pelo Maven,
# do computador para o diretório de aplicações Web do Tomcat
# dentro do container.
#
# Arquivo de origem:
# ./target/alomundow_java_docker-0.0.1.war
#
# Arquivo de destino dentro do container:
# /usr/local/tomcat/webapps/ROOT.war
#
# O nome ROOT.war faz com que o Tomcat disponibilize a aplicação
# diretamente na raiz do servidor Web.
#
# Dessa forma, a aplicação poderá ser acessada utilizando:
# http://localhost:8080
COPY ./target/alomundow_java_docker-0.0.1.war /usr/local/tomcat/webapps/ROOT.war

# Informa que a aplicação Web utiliza a porta 8080 dentro do container.
#
# A porta 8080 é a porta HTTP padrão utilizada pelo Tomcat
# para receber as requisições da aplicação.
#
# IMPORTANTE:
# O comando EXPOSE apenas documenta a porta utilizada pelo
# container. Para acessar a aplicação pelo computador, é
# necessário publicar a porta utilizando o parâmetro -p
# no comando docker run ou a configuração ports no Docker Compose.
EXPOSE 8080

# Define o comando executado quando o container for iniciado.
#
# "catalina.sh" é o script utilizado pelo Tomcat para controlar
# o servidor de aplicações.
#
# O parâmetro "run" inicia o Tomcat em primeiro plano,
# mantendo o processo principal ativo dentro do container.
#
# Manter o Tomcat em primeiro plano é importante para que o
# Docker consiga acompanhar o processo principal do container.
CMD ["catalina.sh", "run"]