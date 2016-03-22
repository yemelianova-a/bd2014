CREATE OR ALTER VIEW VIEW2_1(
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
select *from userr where user_id between 5 and 10
;
