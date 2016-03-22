CREATE OR ALTER VIEW VIEW3_1(
    MAX1,
    MIN1,
    AVG1)
AS
select max(costs), min(costs), avg(costs) from paid_services
;
