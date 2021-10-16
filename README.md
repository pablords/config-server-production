# configurações basicas server producao

- nginx 
- portainer
- jenkins

Email:    admin@example.com
Password: changeme
Após login, a primeira coisa que vai pedir é para você colocar seu nome NickName, e-mail e trocar a senha.
# gerar certificados

docker run -it -p 8989:80 -v "$CONFIG_PROD_HOME/api-gateway/ssl:/etc/letsencrypt" certbot/dns-digitalocean certonly --standalone
