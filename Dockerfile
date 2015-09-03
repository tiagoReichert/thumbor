FROM ribeirofelix/thumbor

COPY circus.d/nginx.ini.tpl /etc/circus.d/
COPY setup.d/nginx /etc/setup.d/30-nginx
COPY conf/nginx.conf /etc/nginx/nginx.conf

# thumbor conf
COPY setup.d/thumbor /etc/setup.d/40-thumbor
COPY circus.d/thumbor.ini.tpl /etc/circus.d/
COPY conf/thumbor.conf.tpl /code/thumbor.conf.tpl


EXPOSE 80 8000
