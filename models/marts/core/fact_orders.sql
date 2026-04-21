with orders as(
    select * from {{ref('stg_orders')}}
),
payments as(
    select * from {{ref('stg_payment')}}
),
fact_orders as(
    select 
        p.order_id,
        payment_id,
        amount
    from orders o
    left join payments p
    on o.order_id = p.order_id
)
select * from fact_orders