Os seguintes comandos podem ser usados ​​para gerar uma chave SSL autoassinada e um certificado

Para gerar a chave:

openssl genrsa -out nginx.double-check.tech.key 2048
E o certificado (substitua nginx.double-check.tech pelo seu nome de domínio):

openssl req -new -x509 -key nginx.double-check.tech.key -out nginx.double-check.tech.cert -days 3650 -subj /CN=sample-microservice1.test
