CREATE PROCEDURE DELETE2 
as
begin
  delete from groupmembership
  where groupmembership.userid not in (
  select member.usernumber from member group by member.usernumber
  );
end
