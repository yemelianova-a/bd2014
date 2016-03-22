CREATE PROCEDURE INDIV_DELETE 
as
begin
  delete from post_categories pc where not exists (select 1 from categories2 c2 where c2.catnum=pc.id_cat);
  suspend;
end
