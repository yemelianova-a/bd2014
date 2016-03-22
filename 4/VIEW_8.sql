CREATE OR ALTER VIEW VIEW_8(
    OWNER,
    NAME)
AS
select blog.owner, userr.username from blog, userr
where blog.owner=userr.user_id and userr.paid_service in (select paid_services.id_serv from paid_services
where paid_services.id_serv=userr.paid_service and costs<100)
;
