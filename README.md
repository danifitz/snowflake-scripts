# snowflake-scripts
a set of scripts to fetch data from snowflake. They use data from information_schema which is real time and account_usage which has some data latency.

## Prerequisites
1. Install SnowSQL CLI
2. Configure SnowSQL CLI at `~/.snowsql/config`
3. Ensure the user you are connecting with has sufficient privileges
4. Replace username and account in scripts

## Usage
Create shell scripts to run these queries using SnowSQL. Here is an example of SnowSQL command:

`snowsql -o output_format=json -o remove_comments=true -o header=true -o timing=false -o friendly=false -a <ACCOUNT> -u <USER> -q '<QUERY>' | tail -n +2 > table_metrics.json`

The above command uses SnowSQL to execute a query, with machine readable output in JSON format which is tailed to a file. This file can be read by nri-flex.

Setup 1 minute cron jobs to run these scripts by running `crontab -e`

For example:
`* * * * * /home/user/script_name.sh`

Use New Relic flex to send the contents of the files to New Relic