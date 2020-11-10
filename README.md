# snowflake-scripts
a set of scripts to fetch data from snowflake. They use data from information_schema which is real time and account_usage which has some data latency.

## Prerequisites
1. Install SnowSQL CLI
2. Configure SnowSQL CLI at `~/.snowsql/config`
3. Ensure the user you are connecting with has sufficient privileges

## Usage
Create shell scripts to run these queries using SnowSQL. Here is an example of SnowSQL command:

`snowsql -o output_format=json -o remove_comments=true -o header=true -o timing=false -o friendly=false -a <ACCOUNT> -u <USER> -q '<QUERY>' | tail -n +2 > /tmp/file.json`

The above command uses SnowSQL to execute a query, with machine readable output in JSON format.

The output can be sent to New Relic using nri-flex and the file api.