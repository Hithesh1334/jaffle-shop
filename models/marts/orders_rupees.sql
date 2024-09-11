select
  id as order_id  ,
  order_total as amount_in_cents,
  {{ cents_to_rupees('order_total') }} as amount_in_rupees,
from {{ref("raw_orders")}}