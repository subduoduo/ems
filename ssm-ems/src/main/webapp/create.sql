drop database if exists ems;
create database ems charset utf8;
use ems;

create table t_user
(
  id int primary key auto_increment,
  username varchar(50) unique not null,
  password varchar(30),
  name varchar(30),
  age int,
  status int, -- 1表示启用，0表示禁用
  regist_date datetime, -- 注册时间
  avatar varchar(200) -- 头像
)charset utf8;

insert into t_user values (null,'admin','admin','管理员',18,1,'2022-02-14 12:30:25','');
insert into t_user values (null,'tom','123','汤姆',18,1,'2022-02-14 12:30:25','');
insert into t_user values (null,'jack','123','杰克',21,0,'2022-02-14 12:30:25','');

create table t_dept(
  id int primary key auto_increment,
  name varchar(30) unique not null,
  loc varchar(100)
)charset utf8;

create table t_emp(
  id int primary key auto_increment,
  name varchar(50) not null,
  age int,
  sex varchar(10),
  height double,
  birthday date,
  dept_id int,
  foreign key (dept_id) references t_dept(id)
)charset utf8;

insert into t_dept values (null,'研发部','南京');
insert into t_dept values (null,'市场部','上海');
insert into t_dept values (null,'运维部','北京');

insert into t_emp values (null,'张三',24,'男',180.4,'2000-12-25',1);
insert into t_emp values (null,'李四',25,'女',160.1,'1999-11-05',2);
insert into t_emp values (null,'王五',19,'男',182.4,'2002-11-12',1);
insert into t_emp values (null,'赵六',26,'女',165.1,'2000-04-18',3);
insert into t_emp values (null,'孙七',22,'男',172.8,'2002-08-22',1);
insert into t_emp values (null,'周八',21,'男',182.8,'1999-06-30',1);
insert into t_emp values (null,'吴九',27,'女',160.6,'1998-07-12',1);
insert into t_emp values (null,'郑十',20,'男',184.0,'2002-06-22',1);


select e.*,d.name dept_name,d.loc
from t_emp e,t_dept d
where e.dept_id=d.id;
