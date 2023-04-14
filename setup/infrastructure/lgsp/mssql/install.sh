sudo docker exec -it mssql /opt/mssql-tools/bin/sqlcmd \
-S localhost -U SA -P "1Qaz2wsx3edc" -i /var/opt/mssql/scripts/mssql_shared.sql

sudo docker exec -it mssql /opt/mssql-tools/bin/sqlcmd \
-S localhost -U SA -P "1Qaz2wsx3edc" -i /var/opt/mssql/scripts/mssql_identity.sql

sudo docker exec -it mssql /opt/mssql-tools/bin/sqlcmd \
-S localhost -U SA -P "1Qaz2wsx3edc" -i /var/opt/mssql/scripts/mssql_apim.sql