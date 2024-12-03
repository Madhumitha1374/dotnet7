CREATE TABLE tbl_desg (
    desg_id int NOT NULL PRIMARY KEY,
    desg_name varchar(50) NOT NULL,
);

CREATE TABLE tbl_empl (
    empl_id int NOT NULL PRIMARY KEY,
    empl_name varchar(50) NOT NULL,
    desg_id int,
	dept_id int,
    FOREIGN KEY (desg_id) REFERENCES tbl_desg(desg_id),
	FOREIGN KEY (dept_id) REFERENCES tbl_dept(dept_id),
);