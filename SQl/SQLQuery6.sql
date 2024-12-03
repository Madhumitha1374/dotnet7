

create table tbl_picture(
    id INT PRIMARY KEY not null,
    picture varbinary(max) not null
);

select * from tbl_picture

use SagarDB;

create table tbl_doc(
    id INT PRIMARY KEY not null,
	name nvarchar(50) not null,
    document varbinary(max) not null
);