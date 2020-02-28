FROM nks0nez/workshop:first
USER ROOT
RUN /juice-shop/burp/run.sh 
USER ROOT
# link stuff here
# fix permissions
# optional: use a custom apache config.
# COPY apache.conf /etc/apache2/apache2.conf

# optional: change document root folder. It's relative to your git working copy.
# ENV APACHE_DOCROOT_IN_REPO="www"
