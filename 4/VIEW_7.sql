CREATE OR ALTER VIEW VIEW_7(
    COSTS,
    SERVICE)
AS
select paid_services.costs, count(paid_services.service) from paid_services
where paid_services.costs<20
group by paid_services.costs having count(paid_services.service)>2
;
