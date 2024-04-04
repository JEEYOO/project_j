select *
from nw.customers cust
join nw.orders ord on cust.customer_id = ord.customer_id
where cust.contact_name = 'Antonio Moreno'
and ord.order_date between to_date('19970101', 'yyyymmdd') and to_date('19971231', 'yyyymmdd');
