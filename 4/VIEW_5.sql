CREATE OR ALTER VIEW VIEW_5(
    USERNAME,
    SERVICE)
AS
select userr.username, paid_services.costs from userr, paid_services
where userr.paid_service=paid_services.id_serv
;
