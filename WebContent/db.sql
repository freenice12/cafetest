--<ScriptOptions statementTerminator=";"/>
drop sequence item_seq;
create sequence item_seq
start with 1
increment by 1;

drop table sale_line;
drop table item;
create table item(
item_id number(5),
item_name varchar2(30),
price number(6),
description varchar2(255),
picture_url blob,
primary key(item_id)
);

insert into item values(1, '레몬', 300, '레몬에 들어 있는 쿠엔산은 피로회복에 좋습니다. 비타민 C도 풍부합니다.', 'lemon.jpg');
insert into item values(item_seq.nextval, '오렌지', 2000, '비타민 C가 풍부합니다. 신선한 주스도 추천합니다.', 'orange.jpg');
insert into item values(item_seq.nextval, '키위', 300, '비타민 C가 매우 풍부합니다. 다이어트와 미용에도 매우 좋습니다.', 'kiwi.jpg');
insert into item values(item_seq.nextval, '청사과', 500, '단맛과 강한 향기가 상큼한 파란 사과입니다.', 'aoringo.jpg');
insert into item values(item_seq.nextval, '블루베리', 500, '블루베리에 포함된 anthocyanine(안토시아닌)은 눈 피로에 효과가 있습니다.', 'blueberry.jpg');
insert into item values(item_seq.nextval, '체리', 1000, '체리는 맛이 단 성분이 많고 피로회복에 잘 듣습니다.', 'sakuranbo.jpg');
insert into item values(item_seq.nextval, '메론', 1000, '메론에는 비타민A와 칼륨이 많이 포함되어 있습니다.', 'melon.jpg');
insert into item values(item_seq.nextval, '수박', 2000, '수분이 풍부한 작은 수박입니다.', 'suika.jpg');
insert into item values(item_seq.nextval, '파인애플', 300, '비타민B1 비타민 B2가 풍부합니다. 요리에도 사용할 수 있습니다.', 'pine.jpg');


select * from item;

CREATE TABLE USER_ACCOUNT(
USER_ID VARCHAR2(20),
USER_NAME VARCHAR2(20),
PASSWORD VARCHAR2(20),
POSTCODE VARCHAR2(8),
ADDRESS VARCHAR2(50),
EMAIL VARCHAR2(50),
JOB VARCHAR2(30),
BIRTHDAY DATE,
PRIMARY KEY(USER_ID)
);

insert into USER_ACCOUNT values 
('USERID01', 'USERNAME01', 'PASSWD01', '111-111', 'seoul', 'user01@magic.net', 'doctor', '1979/01/01');
insert into USER_ACCOUNT values 
('USERID02', 'USERNAME02', 'PASSWD02', '222-222', 'busan', 'user02@magic.net', 'teacher', '1979/06/01');
insert into USER_ACCOUNT values 
('USERID03', 'USERNAME03', 'PASSWD03', '333-333', 'daegu', 'user03@magic.net', 'salaryman', '1985/11/01');

select * from USER_ACCOUNT;

CREATE TABLE SALE(
	SALE_ID NUMBER(10),
	USER_ID	VARCHAR2(20),
	UPDATE_TIME DATE,
	PRIMARY KEY(SALE_ID),
	FOREIGN KEY(USER_ID) REFERENCES USER_ACCOUNT(USER_ID)
);

select * from sale;
CREATE TABLE SALE_LINE(
	SALE_ID NUMBER(10),
	SALE_LINE_ID NUMBER(3),
	ITEM_ID NUMBER(5),
	QUANTITY NUMBER(1),
	UPDATE_TIME DATE,
	PRIMARY KEY(SALE_LINE_ID),
	FOREIGN KEY(SALE_ID) REFERENCES SALE(SALE_ID),
	FOREIGN KEY(ITEM_ID) REFERENCES ITEM(ITEM_ID)
);



-- ========= 팀 프로젝트용 테이블 생성 =========

SELECT * FROM postcode;

SELECT *
FROM postcode
WHERE eupmyeondong like '소하%';

DROP TABLE postcode;
CREATE TABLE postcode
(
zipcode varchar2(20),
SiDo varchar2(30),
SiGunGu varchar2(30),
eupMyeonDong varchar2(30),
Ri varchar2(30),
Beonji varchar2(30),
Bldg varchar2(100)
);


-- ======== ctl 파일 내용 - text 파일에 작성 후 '.ctl'로 저장 ========== --
load data
infile 'c:\postcode\zipcode_20140313.csv'
into table postcode
fields terminated by ","
(zipcode,
SiDo,
SiGunGu,
eupMyeonDong,
Ri,
Beonji,
Bldg);


drop table member;
create table member(
	user_email varchar2(50) primary key,
	user_passwd varchar2(30) not null,
	user_alias varchar2(50) not null,
	user_phone_num1 varchar2(11) not null,
	user_phone_num2 varchar2(11) not null,
	user_phone_num3 varchar2(11) not null,
	user_postcode varchar2(20) not null,
	user_address1 varchar2(200) not null,
	user_address2 varchar2(200) not null,
	user_user_level number(2) default 0,
	user_point number(6) default 0,
	user_num_of_article number(5) default 0,
	user_num_of_reply number(8) default 0,
	user_num_of_practice number(4) default 0
);

select * from member;

