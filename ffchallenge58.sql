-- Week 58

create or replace table measurements (

height int,
weight int,
age int, 
id int,
gender varchar()
);

insert into measurements (height, weight, age, gender, id)
values
    (41, 178, 74, 'other', 1),
    (188, 145, 87, 'other', 2),
    (159, 48, 116, 'female', 4),
    (243, 204, 6, 'other', 5),
    (232, 306, 30, 'male', 6),
    (261, 602, 62, 'other', 7),
    (143, 829, 113, 'female', 8),
    (62, 190, 86, 'male', 9),
    (249, 15, 73, 'male', 10)

    ;
    
select * 
replace(
    age - 1 as age,
    weight * 1.1 as weight,
    iff(gender = 'other', 'unknown', gender) as gender
)
from measurements
;
