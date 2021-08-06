export MY_PASSWORD='{{ user_username }}'
export JWT_SECRET='{{ user_password }}'

export DATASOURCE_URL='{{ db_url_username }}'
export DATASOURCE_USER='{{ db_admin_username }}'
export DATASOURCE_PASSWORD='{{ db_admin_password }}'
echo $DATASOURCE_URL
echo $DATASOURCE_USER

#sudo chmod 775 /opt/tomcat/bin/setenv.sh