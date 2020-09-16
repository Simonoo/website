FROM httpd:2.4
EXPOSE 8080
RUN sed -i "s/Listen 80/Listen 8080/g" /usr/local/apache2/conf/httpd.conf
COPY index.html /usr/local/apache2/htdocs/index.html
COPY ["images","/usr/local/apache2/htdocs/images"]
COPY ["layout","/usr/local/apache2/htdocs/layout"]
COPY ["pages","/usr/local/apache2/htdocs/pages"]
CMD ["httpd-foreground"]
