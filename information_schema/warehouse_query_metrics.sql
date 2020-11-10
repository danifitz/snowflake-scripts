use role accountadmin;
use schema snowflake.account_usage;
select * from table(information_schema.query_history_by_warehouse());