use role accountadmin;
use schema snowflake.account_usage;
-- Why doesn't snowflake show data for today? In my tests it only shows data for yesterday
select usage_date, storage_bytes + stage_bytes + failsafe_bytes from storage_usage WHERE usage_date >= date_trunc(day, current_date) group by 1 order by 1;

-- select date_trunc(month, usage_date) as usage_month
--   , avg(storage_bytes + stage_bytes + failsafe_bytes) / power(1024, 4) as billable_tb
-- from storage_usage
-- group by 1
-- order by 1;