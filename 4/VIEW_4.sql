CREATE OR ALTER VIEW VIEW_4(
    ID_SERV,
    COSTS,
    SERVICE)
AS
select * from paid_services  order by costs, id_serv
;
