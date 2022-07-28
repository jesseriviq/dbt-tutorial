
{{ config(materialized='table') }}

select
nullif(lower(TRIM(' ' from first_name)), '')   as first_name,
nullif(lower(TRIM(' ' from last_name)), '')    as last_name,
id
from {{ source ('raw_jaffle_shop', 'raw_customers') }}


