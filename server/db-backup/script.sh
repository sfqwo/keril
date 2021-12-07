#Export
pg_dump -s -h localhost -d db-store -U postgres  -f myStoreSchema.sql
pg_dump -a --inserts -h localhost -d db-store -U postgres  -f myStoreData.sql

#create  db study. and  import dump
psql -h localhost -d study -U postgres -f myStoreSchema.sql
psql -h localhost -d study -U postgres -f myStoreData.sql