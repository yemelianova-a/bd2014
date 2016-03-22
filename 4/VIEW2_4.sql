CREATE OR ALTER VIEW VIEW2_4(
    USER_ID,
    USERNAME,
    PSWD,
    MAIL,
    COUNTRY,
    GENDER,
    BIRTH_DATE,
    STATUS,
    PAID_SERVICE)
AS
select * from userr
where (user_id between 5 and 15)
and not user_id in (7, 12)
;
