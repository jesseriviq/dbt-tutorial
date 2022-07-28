
{{ config(materialized='table') }}

select
user_id,
order_date,
nullif(lower(TRIM(' ' from status)), '')            as status,
id
from {{ source ('raw_jaffle_shop', 'raw_orders') }}
