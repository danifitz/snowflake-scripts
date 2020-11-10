# snowflake-scripts
a set of scripts to fetch data from snowflake. They use data from information_schema which is real time and account_usage which has some data latency.

## Prerequisites
1. Install SnowSQL CLI
2. Configure SnowSQL CLI at `~/.snowsql/config`
3. Ensure the user you are connecting with has sufficient privileges
4. Replace username and account in scripts

## Usage
Setup 1 minute cron jobs to run these scripts by running `crontab -e`

For example:
`* * * * * /home/user/script_name.sh`

Use New Relic flex to send the contents of the files to New Relic