-- SELECT DATE_FORMAT(min(created_at), "%M %D %Y") as "earliest_date"
-- from users
-- ============
-- select email
-- from users
-- where created_at = (
--         SELECT min(created_at) as "earliest_date"
--         from users
--     )
-- ============
-- select MONTHNAME(created_at) as month,
--     count(*) as count
-- from users
-- group by month
-- order by count desc
-- ============
-- select count(*) as yahoo_users
-- from users
-- where email like "%@yahoo.com"
-- ============
select case
        when email like "%@gmail.com" THEN "gmail"
        when email like "%@yahoo.com" THEN "yahoo"
        when email like "%@hotmail.com" THEN "hotmail"
        else "other"
    end as provider,
    count(*) as total_users
from users
GROUP by provider
order by total_users desc