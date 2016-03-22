CREATE OR ALTER VIEW INDIV2(
    posts_num,
    category,
    comments_num
    )
AS
select first 10 sum(c2.postnum), pc.categories, sum(cm.id_com)
from categories2 c2, post_categories pc, comments cm, blog_post bp
where c2.postnum=bp.post_id and cm.post_num=bp.post_id and pc.id_cat=c2.catnum
  group by pc.categories
  order by 1 desc;

