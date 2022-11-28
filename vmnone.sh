#!/bin/bash
# nginx vmnone.conf
rm -fr /etc/nginx/conf.d/vmnone.conf
cat >/etc/nginx/conf.d/vmnone.conf <<EOF
    server {

             listen 80 backlog=65535 reuseport;

             server_name 127.0.0.1 localhost;

             real_ip_header proxy_protocol;

             real_ip_recursive on;
        }
EOF
sed -i '$ ilocation = /worryfree' /etc/nginx/conf.d/vmnone.conf
sed -i '$ i{' /etc/nginx/conf.d/vmnone.conf
sed -i '$ iproxy_redirect off;' /etc/nginx/conf.d/vmnone.conf
sed -i '$ iproxy_pass http://127.0.0.1:$vmess;' /etc/nginx/conf.d/vmnone.conf
sed -i '$ iproxy_http_version 1.1;' /etc/nginx/conf.d/vmnone.conf
sed -i '$ iproxy_set_header X-Real-IP \$remote_addr;' /etc/nginx/conf.d/vmnone.conf
sed -i '$ iproxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;' /etc/nginx/conf.d/vmnone.conf
sed -i '$ iproxy_set_header Upgrade \$http_upgrade;' /etc/nginx/conf.d/vmnone.conf
sed -i '$ iproxy_set_header Connection "upgrade";' /etc/nginx/conf.d/vmnone.conf
sed -i '$ iproxy_set_header Host \$http_host;' /etc/nginx/conf.d/vmnone.conf
sed -i '$ i}' /etc/nginx/conf.d/vmnone.conf


# contoh lain 
server {
  listen 80 backlog=65535 reuseport;
  server_name free.balatack.my.id;
  real_ip_header proxy_protocol;
  real_ip_recursive on;


location ~ / {

     if ($http_connection = 'Upgrade') {
    rewrite /(.*) /worryfree break;
    proxy_pass http://localhost:14617;
    }

     proxy_http_version 1.1;
     proxy_set_header Upgrade $http_upgrade;
     proxy_set_header Connection "Upgrade";
     proxy_set_header Host $host;
     proxy_set_header X-Real-IP $remote_addr;
     proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
}
}
