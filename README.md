# configurações basicas server producao

- traefik 
- portainer
- jenkins

# gerar certificados

docker run -it -p 80:80 -v "$CONFIG_PROD_HOME/certbot/etc/letsencrypt:/etc/letsencrypt" certbot/dns-digitalocean certonly --standalone

gitlab.doublecheck-app.tech


# Os seguintes comandos podem ser usados ​​para gerar uma chave SSL autoassinada e um certificado

Para gerar a chave:

openssl genrsa -out nginx.double-check.tech.key 2048 E o certificado (substitua nginx.double-check.tech pelo seu nome de domínio):

openssl req -new -x509 -key nginx.double-check.tech.key -out nginx.double-check.tech.cert -days 3650 -subj /CN=sample-microservice1.test