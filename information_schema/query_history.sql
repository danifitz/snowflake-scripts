use role accountadmin;
use schema snowflake.information_schema;
-- Gets query data from 1 minute ago, we specify no END_TIME_RANGE_END so that we also get queries which are still running
-- https://docs.snowflake.com/en/sql-reference/functions/query_history.html
select * from table(information_schema.query_history(dateadd(minute, -2, getdate()))) order by start_time;