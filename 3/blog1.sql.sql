CREATE TABLE ADMINN (
    ADMINN_ID INTEGER NOT NULL,
    USERNUMBER INTEGER NOT NULL);

CREATE TABLE BLOG (
    BLOG_ID INTEGER NOT NULL,
    OWNER INTEGER,
    ENABLE INTEGER,
    BLOG_TITLE VARCHAR(255),
    DATE_CREATED DATE);

CREATE TABLE BLOG_POST (
    POST_ID INTEGER NOT NULL,
    TITLE VARCHAR(255) CHARACTER SET CYRL,
    ARTICLE VARCHAR(255) CHARACTER SET CYRL,
    TEXT VARCHAR(255) CHARACTER SET CYRL,
    ENABLE INTEGER,
    BLOG_ID INTEGER);

CREATE TABLE ENABLE_BLOG (
    ENA_ID INTEGER NOT NULL,
    ENA_TO_WATCH SMALLINT,
    ENA_TO_COMMENT SMALLINT,
    ENA_TO_WRITE SMALLINT);

CREATE TABLE ENABLE_POST (
    ENA_ID INTEGER NOT NULL,
    ENA_TO_WATCH SMALLINT,
    ENA_TO_COMMENT SMALLINT,
    ENA_TO_WRITE SMALLINT);

CREATE TABLE FRIENDSHIP (
    FR_ID INTEGER NOT NULL,
    USER_ID1 INTEGER NOT NULL,
    USER_ID2 INTEGER NOT NULL);

CREATE TABLE GROUPMEMBERSHIP (
    USERID INTEGER);

CREATE TABLE GROUPP (
    GROUP_ID INTEGER NOT NULL,
    NAME VARCHAR(255),
    DESCRIPTION VARCHAR(255),
    DATE_OF_CREATE DATE,
    MEMBERS INTEGER,
    ADMINNS INTEGER);

CREATE TABLE LINKS (
    LINK_ID VARCHAR(255) NOT NULL,
    POST_ID INTEGER,
    LINK VARCHAR(255));

CREATE TABLE MEMBER (
    MEMBER INTEGER NOT NULL,
    USERNUMBER INTEGER);

CREATE TABLE PRIVACY_BLOG (
    PRIV_ID INTEGER NOT NULL,
    ENA_BLOG INTEGER);

CREATE TABLE PRIVACY_POST (
    PRIV_ID INTEGER NOT NULL,
    ENA_POST INTEGER);

CREATE TABLE USERR (
    USER_ID INTEGER NOT NULL,
    USERNAME VARCHAR(255),
    PASSWORD VARCHAR(255),
    MAIL VARCHAR(255),
    COUNTRY VARCHAR(255),
    GENDER VARCHAR(7),
    BIRTH_DATE DATE,
    STATUS VARCHAR(255));

CREATE TABLE USERSTATUS (
    STATUS_ID VARCHAR(255) NOT NULL);

ALTER TABLE ADMINN ADD CONSTRAINT PK_ADMINN PRIMARY KEY (ADMINN_ID);
ALTER TABLE BLOG ADD CONSTRAINT PK_BLOG PRIMARY KEY (BLOG_ID);
ALTER TABLE BLOG_POST ADD CONSTRAINT PK_BLOG_POST PRIMARY KEY (POST_ID);
ALTER TABLE ENABLE_BLOG ADD CONSTRAINT PK_ENABLE_BLOG PRIMARY KEY (ENA_ID);
ALTER TABLE ENABLE_POST ADD CONSTRAINT PK_ENABLE_POST PRIMARY KEY (ENA_ID);
ALTER TABLE FRIENDSHIP ADD CONSTRAINT PK_FRIENDSHIP PRIMARY KEY (FR_ID);
ALTER TABLE GROUPP ADD CONSTRAINT PK_GROUP PRIMARY KEY (GROUP_ID);
ALTER TABLE LINKS ADD CONSTRAINT PK_LINKS PRIMARY KEY (LINK_ID);
ALTER TABLE MEMBER ADD CONSTRAINT PK_MEMBER PRIMARY KEY (MEMBER);
ALTER TABLE PRIVACY_BLOG ADD CONSTRAINT PK_PRIVACY_BLOG PRIMARY KEY (PRIV_ID);
ALTER TABLE PRIVACY_POST ADD CONSTRAINT PK_PRIVACY_POST PRIMARY KEY (PRIV_ID);
ALTER TABLE USERR ADD CONSTRAINT ID_USER PRIMARY KEY (USER_ID);
ALTER TABLE USERSTATUS ADD CONSTRAINT PK_USERSTATUS PRIMARY KEY (STATUS_ID);

ALTER TABLE USERR ADD CONSTRAINT UNAME UNIQUE (USERNAME);

ALTER TABLE ADMINN ADD CONSTRAINT IDNUM FOREIGN KEY (USERNUMBER) REFERENCES GROUPMEMBERSHIP (USERID);
ALTER TABLE BLOG ADD CONSTRAINT FK_OWN FOREIGN KEY (OWNER) REFERENCES USERR (USER_ID);
ALTER TABLE BLOG ADD CONSTRAINT FK_ENA FOREIGN KEY (ENABLE) REFERENCES PRIVACY_BLOG (PRIV_ID);
ALTER TABLE BLOG_POST ADD CONSTRAINT FK_BL FOREIGN KEY (BLOG_ID) REFERENCES BLOG (BLOG_ID);
ALTER TABLE BLOG_POST ADD CONSTRAINT FK_EN FOREIGN KEY (ENABLE) REFERENCES PRIVACY_POST (PRIV_ID);
ALTER TABLE FRIENDSHIP ADD CONSTRAINT USR12 FOREIGN KEY (USER_ID1, USER_ID2) REFERENCES USERR (USER_ID);
ALTER TABLE GROUPMEMBERSHIP ADD CONSTRAINT GRUSR FOREIGN KEY (USERID) REFERENCES USERR (USER_ID);
ALTER TABLE GROUPP ADD CONSTRAINT FK_MEM FOREIGN KEY (MEMBERS) REFERENCES MEMBER (MEMBER);
ALTER TABLE GROUPP ADD CONSTRAINT FK_ADM FOREIGN KEY (ADMINNS) REFERENCES ADMINN (ADMINN_ID);
ALTER TABLE LINKS ADD CONSTRAINT LIN FOREIGN KEY (POST_ID) REFERENCES BLOG_POST (POST_ID);
ALTER TABLE MEMBER ADD CONSTRAINT MEM FOREIGN KEY (USERNUMBER) REFERENCES GROUPMEMBERSHIP (USERID);
ALTER TABLE PRIVACY_BLOG ADD CONSTRAINT ENBL FOREIGN KEY (ENA_BLOG) REFERENCES ENABLE_BLOG (ENA_ID);
ALTER TABLE PRIVACY_POST ADD CONSTRAINT EN FOREIGN KEY (ENA_POST) REFERENCES ENABLE_POST (ENA_ID);
ALTER TABLE USERR ADD CONSTRAINT STAT FOREIGN KEY (STATUS) REFERENCES USERSTATUS (STATUS_ID);