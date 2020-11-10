use role accountadmin;
use schema snowflake.account_usage;
-- Get all failed logins from between 121 and 120 minutes ago - this is due to data latency in the Snowflake data
select * from login_history where is_success = 'NO' and event_timestamp > dateadd(minute, -121, getdate()) AND event_timestamp < dateadd(minute, -120, getdate());

-- Original query from Snowflake docs
-- select user_name,
--        count(*) as failed_logins,
--        avg(seconds_between_login_attempts) as average_seconds_between_login_attempts
-- from (
--       select user_name,
--              timediff(seconds, event_timestamp, lead(event_timestamp)
--                  over(partition by user_name order by event_timestamp)) as seconds_between_login_attempts
--       from login_history
--       where event_timestamp > date_trunc(month, current_date)
--       and is_success = 'NO'
--      )
-- group by 1
-- order by 3;