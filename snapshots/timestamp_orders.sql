{% snapshot orders_snapshot_check %}

    {{
        config(
          target_schema='snapshots',
          strategy='check',
          unique_key='id',
          check_cols='all',
        )
    }}

    select * from {{ source ('raw_jaffle_shop', 'raw_orders') }}

{% endsnapshot %}
