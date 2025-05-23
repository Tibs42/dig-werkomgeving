FROM httpd:alpine

# buildtijd
RUN date -u > /usr/local/apache2/htdocs/buildtime.txt

# kopieeren naar apache webroot
COPY html/ /usr/local/apache2/htdocs
