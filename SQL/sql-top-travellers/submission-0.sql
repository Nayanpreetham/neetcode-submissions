select u.name , coalesce(sum(r.distance),0)
as travelled_distance 
fROM users u
LEFT JOIN rides r 
    ON u.id = r.user_id
group by u.id , u.name
order by travelled_distance desc , u.name asc;