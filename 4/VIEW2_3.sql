CREATE OR ALTER VIEW VIEW2_3(
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
where username like ('g%')
;
