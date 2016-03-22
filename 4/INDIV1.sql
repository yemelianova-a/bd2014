CREATE OR ALTER VIEW INDIV1(
    USERNAME,
    POSTS)
AS
select first 10 u.username,count(b.blog_id) from blog b, userr u
where b.owner=u.user_id and b.date_created between '2014-11-01' and '2014-12-31'
group by u.username order by 2 desc
;
