CREATE PROCEDURE DELETE1 
as
declare variable min_cost integer;
begin
  select min(costs) from paid_services into :min_cost;
  delete from paid_services where costs=:min_cost;
end
