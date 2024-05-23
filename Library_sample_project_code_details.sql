create table student_enroll (student_id number ,
         stundent_first_name varchar2(100) not null ,
         student_mid_name varchar2(100),
         student_last_name varchar2(100) not null,
         date_of_bith date not null,
         student_branch varchar2(100) not null ,
         year_of_join  number not null ,
phone_number number    ,     
constraint student_enrol__id_pk primary key (student_id)
         )
		 
create table book_details(book_id number ,
book_name varchar2(100),
             book_cat  varchar2(100),
             book_author varchar2(100),
             constraint book_det_order_id_pk primary key(book_id)
             )
			 
create table stude_book_tag_details
(order_id  number,
student_id  number,
book_id number,
date_of_book_reg date,
date_of_book_return date,
constraint student_order_id_pk primary key (order_id),
constraint stude_student_id_fk foreign key (student_id)  references student_enroll (student_id),
constraint book_book_id_fk foreign key (book_id)  references book_details(book_id)
)

CREATE SEQUENCE student_book_order-id_seq
 START WITH     1
 INCREMENT BY   1
 MIN VALUE 1
 MAX VALUE 1000000
 NOCACHE
 NOCYCLE;

create table late_fee_details
(student_id number,
book_name varchar2(100),
no_of_days_due number ,
late_fee_amount float(3,1)
)


insert into student_enroll values(10001,'Naveen', null, 'bondi','14-FEB-2001','CSE',2018,null);
insert into student_enroll values(10002,'Simha', null, 'chodipalli','05-JUN-1989','MCA',2018,null);
insert into student_enroll values(10003,'Raju', null, 'Choipalli','14-FEB-1990','MBA',2018,null);
insert into student_enroll values(10004,'Lova', null, 'Pikki','14-MAY-1989','CSE',2018,null);
insert into student_enroll values(10005,'Arjun', null, 'Ganagalla','14-MAR-1990','CSE',2018,null);



insert into book_details values(1001,'INTELLIGENT INVESTOR','FINANCE','GRAHAMBELL');
insert into book_details values(1002,'FERTILIZERS','AGRICULTUR','Jagadeesh chandra bose');
insert into book_details values(1003,'THERMODYNAMICS','AUTOMOBILE','APJ KALAM');
insert into book_details values(1004,'JAVA COMPLETE REFERENCE','IT','BALA GURUSWAMY');


insert into stude_book_tag_details values(1,10001, 1001,sysdate ,null);



concept :
scripts : 
checking if student exists or not;
IF We have jave code developed by java developer to check if student exists or not ? 
select * from student_enroll where student_id='&value';

IF 
before that we need to check if any pednding books on student name? NO   -- insert_stude_book_reg_details

We haave provide require book to student  -- insert_stude_book_reg_details

 IF then check the book details in library data ? TRUE

then feed the book and student details in library repository

ELSE We have to say sorry the book detais not exists in library data.
and ask student to pay the due for the late return 

 JAVA API :
 
 call this sql query to get how many days peding  : select trunc(sysdate) - trunc(date_of_book_reg)-15 from stude_book_tag_details 
 where student_id='&enter' and date_of_book_return is null


























			 
			