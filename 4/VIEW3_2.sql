CREATE OR ALTER VIEW VIEW3_2(
    COUNT1,
    SUM1,
    AVG1)
AS
select count(costs), sum(costs), sum(costs)/count(costs) from paid_services
;
