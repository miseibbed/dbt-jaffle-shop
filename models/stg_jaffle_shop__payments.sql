select
        id as payment_id,
        orderid,
        payment_method,
        --`amount` is currently stored in cents, so we convert it to dollars
        amount / 100 as amount

from raw.stripe.payment