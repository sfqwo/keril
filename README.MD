```shell
docker run -p 5432:5432 --env POSTGRES_USER=postgres --env POSTGRES_PASSWORD=2308 --env POSTGRES_DB=db-store --name KerilProj postgres
```

```sql
--
-- Name: db-store; Type: SCHEMA; Schema: -; Owner: postgres
--
CREATE SCHEMA "db-store";
--
--
ALTER SCHEMA "db-store" OWNER TO postgres;
--
-- --
-- -- Name: postgres; Type: SCHEMA; Schema: -; Owner: postgres
-- --
--
CREATE SCHEMA postgres;
--
--
ALTER SCHEMA postgres OWNER TO postgres;

```

```shell
gradlew :server:migrate
```

```sql
select * from public.flyway_schema_history;
```

gradle.properties:
```text
flyway.user=postgres
flyway.password=2308
flyway.url=jdbc:postgresql://localhost:5432/db-store
migration=/server/db/migration
```