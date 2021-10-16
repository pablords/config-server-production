# configurações basicas server producao

- nginx 
- portainer
- jenkins

Email:    admin@example.com
Password: changeme
Após login, a primeira coisa que vai pedir é para você colocar seu nome NickName, e-mail e trocar a senha.
# gerar certificados

docker run -it -p 80:80 -v "/docker/volumes/certbot/etc/letsencrypt:/etc/letsencrypt" certbot/dns-digitalocean certonly --standalone

gitlab.doublecheck-app.tech