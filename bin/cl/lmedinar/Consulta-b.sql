--b)
SELECT
    cos.customer_id,cos.last_name,cos.first_name, cos.phone,cos.email,cos.street,cos.city,cos.state,
    cos.zip_code
FROM customers cos
where cos.email like '%yahoo%'
and cos.phone is NULL
order by cos.last_name,cos.first_name asc;