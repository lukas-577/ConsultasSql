--c)
SELECT
    st.store_name,
    COUNT(*) as count
FROM orders ord
inner join stores st on ord.store_id= st.store_id
group by st.store_name
order by count desc;