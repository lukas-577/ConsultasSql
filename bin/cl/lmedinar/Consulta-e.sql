--e) 
SELECT
    staf.last_name,staf.first_name,sum(it.quantity * it.list_price)as monto
FROM orders ord
inner join staffs staf on ord.staff_id= staf.staff_id
inner join stores st on ord.store_id=st.store_id
inner join order_items it on ord.order_id=it.order_id-- en esta tabla sale la lista de precios
where st.store_name = 'Baldwin Bikes'
group by staf.last_name,staf.first_name
order by monto desc;
