use role accountadmin;
use schema snowflake.account_usage;
select count(*) as number_of_jobs from query_history where start_time >= date_trunc(month, current_date);