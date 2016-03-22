CREATE PROCEDURE "indiv1" 
as
begin
  delete from groupmembership where groupmembership.userid not in (select member.usernumber from member where member.usernumber=groupmembership.userid);
  suspend;
end
