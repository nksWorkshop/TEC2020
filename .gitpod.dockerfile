FROM nks0nez/workshop:first
USER root
RUN apt-get install -y nmap iputils-ping strace
RUN chmod u+s /juice-shop/burp/run.sh 
# link stuff here
# fix permissions
USER root
RUN chown -R burpsuite:burpsuite /juice-shop/burp &
RUN /juice-shop/burp/run.sh > /tmp/lol
#RUN sudo /juice-shop/burp/local/burpsuiteenterpriseedition_db status 
#RUN sudo /juice-shop/burp/local/burpsuiteenterpriseedition_db start
#RUN sudo /juice-shop/burp/local/burpsuiteenterpriseedition_db restart
# RUN sudo /juice-shop/burp/local/burpsuiteenterpriseedition_db status 
USER gitpod
RUN sudo /juice-shop/burp/local/burpsuiteenterpriseedition_enterpriseserver restart >> /tmp/lol2
RUN sleep 5
RUN sudo /juice-shop/burp/local/burpsuiteenterpriseedition_webserver restart >> /tmp/lol2
RUN sudo /juice-shop/burp/local/burpsuiteenterpriseedition_enterpriseserver start >> /tmp/lol2
RUN sleep 5
RUN sudo /juice-shop/burp/local/burpsuiteenterpriseedition_webserver start >> /tmp/lol2
RUN sudo /juice-shop/burp/local/burpsuiteenterpriseedition_enterpriseserver restart >> /tmp/lol2
RUN sleep 5
RUN sudo /juice-shop/burp/local/burpsuiteenterpriseedition_webserver restart >> /tmp/lol2
RUN sleep 1
# optional: use a custom apache config.
# COPY apache.conf /etc/apache2/apache2.conf

# optional: change document root folder. It's relative to your git working copy.
# ENV APACHE_DOCROOT_IN_REPO="www"
