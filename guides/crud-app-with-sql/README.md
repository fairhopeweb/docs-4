# Quickstart - SQL

At the time of writing, Budibase has fantastic support for Postgres, MySQL and MariaDB. We intend to add more SQL connectors. 

We automate all the most common SQL queries - INSERT, UPDATE, DELETE and SELECT by ID. You can also write custom queries if you need something more complex or use stored procedures.\


This guide will take show you how to build a “Vehicle Maintenance Log” application. For this guide, I will use Postgres. As far as Budibase is concerned, the process is the same, regardless of your database.\


We will use the following table structure.

![](https://lh5.googleusercontent.com/WZCnDv8y\_3BE_jvLna_sWNMIjA3pLgG4G00YIuPMiaigCOvPJwl1DRoRMbFI1uK55jNSxWnAIierCS3W7iwW2RvB9H5HyKvCcyLFs6KHLki6Qdno6Na6DeFtAF8Nd7I85J2PxJiw=s0)

Below are Postgres and MySQL scripts to create the necessary tables, and insert test data.

{% file src="../../.gitbook/assets/budibase_guide_mysql (1).sql" %}
MySQL Demo DB Script
{% endfile %}

\


{% file src="../../.gitbook/assets/budibase_guide_postgres.sql" %}
Postgres Demo DB script
{% endfile %}
