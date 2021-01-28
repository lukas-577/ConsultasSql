--d)
SELECT
    staf.last_name,staf.first_name, COUNT(*) as count
FROM orders ord
inner join staffs staf on ord.staff_id= staf.staff_id
inner join stores st on ord.store_id = st.store_id
where st.store_name = 'Baldwin Bikes'
group by staf.last_name,staf.first_name
order by count desc;