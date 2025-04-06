
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with source_data as (


    select  payment_type ,customer_name  ,sale_time,sale_id  from zone3_sales_data.sales s 
    inner join zone3_sales_data.customer c on c.customer_id  = s.customer_id



)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
