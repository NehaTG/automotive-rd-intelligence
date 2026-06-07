with vehicle_sales as (
    select * from {{ source('automotive', 'vehicle_sales') }}
),

brand_premium as (
    select
        make,
        count(*)                           as total_sold,
        round(avg(sellingprice), 0)        as avg_price,
        round(avg(price_vs_market), 0)     as avg_vs_mmr,
        round(avg(price_vs_market_pct), 2) as premium_pct
    from vehicle_sales
    where mmr > 0
    group by make
    having count(*) > 1000
    order by premium_pct desc
    limit 10
)

select * from brand_premium
