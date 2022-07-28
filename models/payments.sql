{{ config(materialized='table') }}

select
order_id,
nullif(lower(TRIM(' ' from payment_method)), '')        as payment_method,
amount                                                  as amount_usd,
{{ dollar_naar_euro('amount')}}                         as amount_eur,
id
from {{ source ('raw_jaffle_shop', 'raw_payments') }}