CREATE OR ALTER VIEW VIEW2_2(
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
where user_id in (15, 100,90000)
;
