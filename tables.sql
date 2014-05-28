create table member(
	user_email varchar2(50) primary key,
	user_passwd varchar2(30) not null,
	user_alias varchar2(30)  unique not null ,
	user_phone1 varchar2(6) not null,
	user_phone2 varchar2(8) not null,
	user_phone3 varchar2(8) not null,
	user_postcode varchar2(7) not null,
	user_address1 varchar2(200) not null,
	user_address2 varchar2(200) not null,
	user_level number(2) default 0,
	user_point number(6) default 0,
	user_num_of_article number(5) default 0,
	user_num_of_reply number(8) default 0,
	user_num_of_practice number(4) default 0
);

create table board_qa(
	bd_qa_no number(4) primary key,
	user_email varchar2(50) not null unique,
	user_alias varchar2(30) not null unique,
	title_qa varchar2(300) not null,
	content_qa varchar2(4000) not null,
	count_qa number(4) default 0,
	ref_qa number(4) default 0,
	re_step number(4) default 0,
	re_level number(4) default 0,
	date_qa date default sysdate,
	user_ip varchar2(15) not null,
	foreign key (user_email) references member (user_email),
	foreign key (user_alias) references member (user_alias)
);

create sequence board_qa_seq
increment by 1
start with 1;


---
create table board_qa_comments(
	bd_qa_no_comments number(4) primary key,
	bd_qa_no number(4) not null unique,
	user_email varchar2(50) not null unique,
	user_alias varchar2(30) not null unique,
	bd_qa_comments_content varchar2(4000) not null,
	bd_qa_comments_date date default sysdate,
	bd_qa_comments_ip varchar2(15) not null,
	foreign key (bd_no_qa) references board_qa (bd_no_qa),
	foreign key (user_email) references member (user_email),
	foreign key (user_alias) references member (user_alias)
);

create sequence board_qa_comments_seq
increment by 1
start with 1;

create table board_reviews(
	bd_rev_no number(4) primary key,
	user_email varchar2(50) not null,
	user_alias varchar2(30) not null unique,
	title_rev varchar2(300) not null,
	content_rev varchar2(4000) not null,
	date_rev_comments_date date default sysdate,
	count_rev number(4) default 0,
	recommend_rev number(3) default 0,
	user_ip varchar2(15) not null,
	foreign key (user_email) references member (user_email),
	foreign key (user_alias) references member (user_alias)
);

create sequence board_reviews_seq
increment by 1
start with 1;

create table board_reviews_comments(
	bd_reviews_no_comments number(4) primary key,
	bd_rev_no number(4) not null unique,
	user_email varchar2(50) not null unique,
	user_alias varchar2(30) not null unique,
	bd_rev_comments_content varchar2(4000) not null,
	bd_rev_comments_date date default sysdate,
	bd_rev_comments_ip varchar2(15) not null,
	foreign key (bd_no_rev) references board_reviews (bd_no_rev),
	foreign key (user_email) references member (user_email),
	foreign key (user_alias) references member (user_alias)
);

create sequence board_qa_comments_seq
increment by 1
start with 1;

create table board_faq(
	bd_no_faq number(4) primary key,
	title_faq varchar2(300) not null,
	content_faq varchar2(4000) not null
);

create sequence board_faq_seq
increment by 1
start with 1;

create table board_notice(
	bd_no_ntc number(4) primary key,
	title_ntc varchar2(300) not null,
	content_ntc varchar2(300) not null,
	date_ntc date default sysdate not null,
	count_ntc number(4) default 0
);

create sequence board_notice_seq
increment by 1
start with 1;

create table item(
	item_no number(4) primary key,
	item_name varchar2(40) not null,
	origin varchar2(20) not null,
	grade varchar2(15) not null,
	processing varchar2(15) not null,
	roasting_date date not null,
	roasting_level varchar2(15) not null,
	item_info varchar2(4000) not null,
	photo varchar2(75) not null,
	price number(7) not null,
	total_product number(4) not null,
	def_exchange number(3) default 0,
	def_refund number(3) default 0
);


create sequence item_seq
increment by 1
start with 1;




create table purchase(
	pur_no number(4) primary key,
	user_email varchar2(50) not null unique,
	time_of_purchase date default sysdate,
	pur_canceltime date default sysdate,
	pur_sent number(1) default 0,
	receiver varchar2(30) not null,
	rec_phone varchar2(14) not null,
	rec_addr varchar2(200) not null,
	rec_postcode varchar2(6) not null,
	remarks varchar2(300),
	foreign key (user_email) references member (user_email)

);

create sequence purchase_seq
increment by 1
start with 1;

create table purchase_line(
	pur_line_no number(4) primary key,
	pur_no number(4) not null unique,
	item_no number(4) not null unique,
	num_of_product number(3) not null,
	pur_line_sub_total number(8) not null,
	
	foreign key (pur_no) references purchase (pur_no),
	foreign key (item_no) references item (item_no)
	);

	create sequence pur_line_seq
	increment by 1
	start with 1;


CREATE TABLE postcode
(
zipcode varchar2(15),
SiDo varchar2(30),
SiGunGu varchar2(25),
eupMyeonDong varchar2(30),
Ri varchar2(30),
Beonji varchar2(30),
Bldg varchar2(100)
);

create table adminstrator(
	admin_email varchar2(50) primary key,
	admin_grade number(1) default 0 not null,
	admin_passwd varchar2(30) not null
);



create table cart(
	cart_num number(4) primary key,
	user_email varchar(50) not null,
	item_no number(4) not null,
	cart_num_of_product number(4),
	cart_sub_total number(8),
	foreign key (item_no) references item (item_no),
	foreign key (user_email) references member (user_email)
);

create sequence cart_seq
increment by 1
start with 1;

create table experience(
	exp_no number(4) primary key,
	exp_title varchar2(100) not null,
	exp_target_applicant number(3) not null,
	exp_date date default sysdate,
	exp_fee number(7) not null,
	pay_check number(1) default 0 not null
);

create sequence experience_seq
increment by 1
start with 1;

create table reservation(
	res_no number(4) primary key,
	user_email varchar2(50) not null,
	exp_no number(4) not null,
	res_table_num varchar2(3) not null,
	res_time date default sysdate not null,
	res_cancel_time date default sysdate not null,
	res_current_applicant number(3),
	res_max_applicant number(3),
	res_flag number(1) default 0,
	res_index_detail varchar2(2000) not null,
	foreign key (exp_no) references experience (exp_no),
	foreign key (user_email) references member (user_email)
);


create sequence reservation_seq
increment by 1
start with 1;

select * from user_sequences;
select * from user_tables;
select * from postcode;
select * from purchase;
select * from purchase_seq;
select * from purchase_line;
select * from member;

alter table member
modify(user_postcode varchar(7));

delete from member;

alter table member
RENAME COLUMN user_password To user_passwd;

alter table member
ADD(alias VARCHAR2(30));

drop table reservation;
drop table experience;
drop table cart;
drop table adminstrator;
drop table postcode;
drop table purchase_line;
drop table purchase;
drop table item;
drop table board_notice;
drop table board_faq;
drop table board_reviews_comments;
drop table board_reviews;
drop table board_qa_comments;
drop table board_qa;
drop table member;

drop sequence board_faq_seq;
drop sequence board_notice_seq;
drop sequence board_qa_comments_seq;
drop sequence board_qa_seq;
drop sequence board_reviews_comments_seq;
drop sequence board_reviews_seq;
drop sequence cart_seq;
drop sequence experience_seq;
drop sequence item_seq;
drop sequence pur_line_seq;
drop sequence purchase_seq;
drop sequence reservation_seq;
drop sequence board_qa_comments_seq; 
--member테이블 test명 

--새로 생성시 기본 테스트용 추가 테이블 꼭 추가 시킬것!
INSERT INTO member VALUES('cafe4','cafe4','cafe4.0','010','7777','7777','123-456','가산디지털단지', '4층',1,500,3,7,12);
insert into ITEM values(item_seq.nextval,'루티나','에티오피아',2,'연하게',sysdate,'시나몬','연하고 시나몬 맛 나는 커피','bean.jpg',4000,10,0,0);
insert into ITEM values(item_seq.nextval,'시다모','에티오피아',2,'연하게',sysdate,'과일향','연한 꽃내음 나는 커피','bean.jpg',7000,10,0,0);