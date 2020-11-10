use role accountadmin;
use schema snowflake.account_usage;
select usage_date, average_stage_bytes from stage_storage_usage_history where usage_date >= date_trunc(day, current_date);