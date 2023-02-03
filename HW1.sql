create table employees1(
id serial primary key,
employee_name varchar(50) not null);

insert into employees1(employee_name)
values ('Tyrion Lannister'),
       ('Joey Tribbiani'),
       ('Chandler Bing'),
       ('Gregory House'),
       ('Sherlock Holmes'),
       ('Sheldon Cooper'),
       ('Batman'),
       ('Superman'),
       ('Barney Stinson'),
       ('Arya Stark'),
       ('Jon Snow'),
       ('Phoebe Buffay'),
       ('Spock'),
       ('Dean Winchester'),
       ('Sam Winchester'),
       ('Spider-Man'),
       ('Daenerys Targaryen'),
       ('Steve Harrington'),
       ('Eleven'),
       ('Negan'),
       ('Eddard Stark'),
       ('Rachel Green'),
       ('Wonder Woman'),
       ('Monica Geller'),
       ('Rick Grimes'),
       ('Jaime Lannister'),
       ('Jaime Lannister'),
       ('Dana Scully'),
       ('Iron Man'),
       ('Dustin Henderson'),
       ('Buffy Summers'),
       ('Indiana Jones'),
       ('Xena'),
       ('Clark Kent'),
       ('Fox Mulder'),
       ('Sandor Clegane'),
       ('Homer Simpson'),
       ('Loki'),
       ('Castiel'),
       ('Hodor'),
       ('Brienne of Tarth'),
       ('Penny'),
       ('Michonne'),
       ('Bender'),
       ('Leonardo'),
       ('Raphael'),
       ('Columbo'),
       ('Donatello'),
       ('Margaery Tyrell'),
       ('Ygritte'),
       ('Ragnar Lothbrok'),
       ('Mario'),
       ('Pikachu'),
       ('Lara Croft'),
       ('Ellie'),
       ('Geralt of Rivia'),
       ('Agent 47'),
       ('Commander Shepard'),
       ('Ezio'),
       ('Chloe Price'),
       ('Kassandra'),
       ('Arthur Morgan'),
       ('Max Payne'),
       ('Liara TSoni'),
       ('Johnny Silverhand'),
       ('Judy Alvarez'),
       ('Eivor'),
       ('Karl'),
       ('Leo Wyatt'),
       ('Leo Wyatt');
      
select * from employees;
 
create table salary(
id serial primary key,
monthly_salary int not null);

insert into salary(monthly_salary)
values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400),
       (2500);
      
select * from salary;      
       
create table employees_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null);

insert into employees_salary(employee_id, salary_id)
values (5, 1),
       (7, 2),
       (12, 3),
       (15, 7),
       (17, 15),
       (18, 14),
       (21, 4),
       (22, 6),
       (23, 8),
       (6, 5),
       (70, 13),
       (66, 12),
       (65, 11),
       (58, 9),
       (50, 10),
       (33, 1),
       (31, 10),
       (32, 15),
       (35, 5),
       (34, 7),
       (36, 8),
       (41, 5),
       (44, 11),
       (46, 12),
       (42, 14),
       (49, 8),
       (29, 8),
       (28, 9),
       (30, 9),
       (19, 6),
       (61, 3),
       (72, 3),
       (73, 4),
       (74, 5),
       (76, 9),
       (88, 15),
       (81, 14),
       (82, 13),
       (83, 10),
       (84, 1),
       (85, 2);
       
select * from employees_salary;

create table roles(
id serial primary key,
role_name int not null unique);

select * from roles;

ALTER TABLE roles alter column role_name Type VARCHAR(30);

insert into roles(role_name)
values ('Junior Python developer'),
       ('Middle Python developer'),
       ('Senior Python developer'),
       ('Junior Java developer'),
       ('Middle Java developer'),
       ('Senior Java developer'),
       ('Junior JavaScript developer'),
       ('Middle JavaScript developer'),
       ('Senior JavaScript developer'),
       ('Junior Manual QA Engineer'),
       ('Middle Manual QA Engineer'),
       ('Senior Manual QA Engineer'),
       ('Project Manager'),
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales Manager'),
       ('Junior Automation QA engineer'),
       ('Middle Automation QA engineer'),
       ('Senior Automation QA engineer');
      
create table roles_employee(
id serial primary key,
employee_id int not null unique,
foreign key (employee_id)
            references employees1(id),
role_id int not null,
foreign key (role_id)
            references roles(id)
           );
          
insert into roles_employee(employee_id, role_id)
values (5, 1),
       (6, 2),
       (7, 3),
       (8, 4),
       (9, 5),
       (10, 6),
       (11, 7),
       (12, 8),
       (13, 9),
       (14, 10),
       (15, 11),
       (16, 12),
       (17, 13),
       (18, 14),
       (19, 15),
       (20, 16),
       (21, 17),
       (22, 18),
       (23, 19),
       (24, 20),
       (25, 1),
       (26, 2),
       (27, 3),
       (28, 4),
       (29, 5),
       (30, 6),
       (31, 7),
       (32, 8),
       (33, 9),
       (34, 10),
       (35, 11),
       (36, 12),
       (37, 13),
       (38, 14),
       (39, 15),
       (40, 16),
       (41, 17),
       (42, 18),
       (43, 19),
       (44, 20);
                   

      
select role_name, employee_name from roles_employee 
join employees1 on role_id = employees1.id
join roles on employee_id = roles.id;

select * from roles_employee 
join employees1 on role_id = employees1.id
join roles on employee_id = roles.id;



 
