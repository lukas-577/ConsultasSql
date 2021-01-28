--a)
SELECT
    cos.customer_id,cos.last_name,cos.first_name, cos.phone,cos.email,cos.street,cos.city,cos.state,
    cos.zip_code
FROM customers cos
where cos.state = 'NY'
order by cos.last_name , cos.first_name asc;