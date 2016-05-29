CREATE PROCEDURE INDIV_TASK2 (
    d1 date not null,
    d2 date not null,
    serv integer)
as
declare variable us_id integer;
declare variable countt integer;
begin
    for
    select first 10 count(bp.post_id), u.user_id
    from userr u, blog b, blog_post bp
    where b.owner=u.user_id and b.blog_id=bp.blog_id
    and bp.date_create between :d1 and :d2
    group by u.user_id
    order by count(bp.post_id) desc
    into :countt, :us_id
        do
        begin
        update userr set paid_service =:serv
        where userr.user_id =:us_id;
        end
        suspend;
end
