WITH payments as (
    SELECT 
        id as payment_id,
        orderid as order_id,
        paymentmethod,
        status,
        amount,
        created
    FROM {{source('stripe', 'payment')}}
)
select * from payments