create table member(
	user_email varchar2(50) primary key,
	user_password varchar2(30) not null,
	phone_num varchar2(11) not null,
	postcode varchar2(6) not null,
	address varchar2(200) not null,
	user_level number(2) default 0,
	point number(6) default 0,
	num_of_article number(5) default 0,
	num_of_reply number(8) default 0,
	num_of_practice number(4) default 0
);

create table board_qa(
	bd_no_qa number(4) primary key,
	user_email varchar2(50) not null,
	title_qa varchar2(300) not null,
	content_qa varchar2(4000) not null,
	count_qa number(4) default 0,
	ref_qa number(4) default 0,
	re_step number(4) default 0,
	re_level number(4) default 0,
	date_qa date default sysdate,
	user_ip varchar2(15) not null,
	foreign key (user_email) references member (user_email)
);

create sequence board_qa_seq
increment by 1
start with 1;

create table board_reviews(
	bd_no_rev number(4) primary key,
	user_email varchar2(50) not null,
	title_rev varchar2(300) not null,
	content_rev varchar2(4000) not null,
	date_rev date default sysdate,
	count_rev number(4) default 0,
	recommend_rev number(3) default 0,
	user_ip varchar2(15) not null,
	foreign key (user_email) references member (user_email)
);

create sequence board_revies_seq
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
	item_no number(4) not null unique,
	user_email varchar2(50) not null unique,
	time_of_purchase date default sysdate,
	num_of_product number(3),
	pur_canceltime date default sysdate,
	pur_sent number(1) default 0,
	receiver varchar2(30) not null,
	rec_phone varchar2(14) not null,
	rec_addr varchar2(200) not null,
	rec_postcode varchar2(6) not null,
	remarks varchar2(300),
	pur_sub_total number(8),
	foreign key (item_no) references item (item_no),
	foreign key (user_email) references member (user_email)
);

create sequence purchase_seq
increment by 1
start with 1;

create table post(
	idx number(6) primary key,
	postcode varchar2(6),
	sido varchar2(30),
	sigungu varchar2(50),
	dong varchar2(50),
	address varchar2(200)
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


