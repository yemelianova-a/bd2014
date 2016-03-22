CREATE OR ALTER VIEW VIEW5_1(
    TITLE_BLOG,
    ENA)
AS
select blog.blog_title,  privacy_blog.ena_blog from blog, privacy_blog
where blog.enable=privacy_blog.priv_id and blog.blog_title like 'd%'
;
