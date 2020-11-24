select * from "SNOWFLAKE"."ACCOUNT_USAGE"."QUERY_HISTORY" where start_time >= dateadd('minute',-90,current_timestamp);
