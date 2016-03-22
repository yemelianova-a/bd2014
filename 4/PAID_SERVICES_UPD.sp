CREATE PROCEDURE PAID_SERVICES_UPD (
    id_serv type of column paid_services.id_serv,
    costs type of column paid_services.costs,
    service type of column paid_services.service)
as
begin
  update paid_services
  set costs = :costs,
      service = :service
  where (id_serv = :id_serv);
end
