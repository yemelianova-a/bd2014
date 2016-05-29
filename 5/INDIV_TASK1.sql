CREATE PROCEDURE INDIV_TASK1 (
    startdate date not null,
    enddate date not null,
    d1 date not null,
    d2 date not null,
    countt integer)
as
declare variable userid_to_update integer;
declare variable enaid integer;
begin
SELECT first 1 eb.ena_id FROM enable_blog eb
WHERE eb.ena_to_comment=1 AND eb.ena_to_watch=0 AND eb.ena_to_write = 0
into :enaid;
FOR
select blog.owner
from blog
where not exists (select post_owner from blog_post where blog_post.date_create > :d1 AND blog_post.date_create < :d2 and blog.blog_id = blog_post.blog_id)
group by blog.owner
into :userid_to_update
DO
begin
UPDATE privacy_blog set privacy_blog.ena_blog = :enaid
WHERE privacy_blog.user_id =: userid_to_update;
end
suspend;
end
