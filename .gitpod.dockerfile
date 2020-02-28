FROM nks0nez/workshop:first
USER root
RUN apt-get install -y nmap iputils-ping strace
RUN chmod u+s /juice-shop/burp/run.sh 
# 
# link stuff here
# fix permissions
USER root
RUN chown -R burpsuite:burpsuite /juice-shop/burp &
# run with setuid wrapper:
# RUN /juice-shop/burp/run.sh > /tmp/lol
USER gitpod
# optional: use a custom apache config.
# COPY apache.conf /etc/apache2/apache2.conf

# optional: change document root folder. It's relative to your git working copy.
# ENV APACHE_DOCROOT_IN_REPO="www"
