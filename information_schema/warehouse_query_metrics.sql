use role accountadmin;
use schema snowflake.information_schema;
select * from table(information_schema.query_history_by_warehouse("WAREHOUSE_NAME"));