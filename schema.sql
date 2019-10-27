CREATE TABLE employees (
    emp_no      INT             NULL,
    birth_date  DATE            NOT NULL,
    first_name  VARCHAR(15)     NOT NULL,
    last_name   VARCHAR(15)     NOT NULL,
    gender      VARCHAR(15) 		NOT NULL,
    hire_date   DATE            NOT NULL,
);

CREATE TABLE departments (
    dept_no     VARCHAR(15)         NOT NULL,
    dept_name   VARCHAR(15)        NOT NULL,
);

CREATE TABLE dept_manager (
   dept_no      VARCHAR(15)         NOT NULL,
   emp_no       INT             NOT NULL,
   from_date    DATE            NOT NULL,
   to_date      DATE            NOT NULL,
);

CREATE TABLE dept_emp (
    emp_no      INT             NOT NULL,
    dept_no     VARCHAR(15)         NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE            NOT NULL,
    FOREIGN KEY (emp_no)  REFERENCES employees   (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
);

CREATE TABLE titles (
    emp_no      INT             NOT NULL,
    title       VARCHAR(15)     NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE,
);

CREATE TABLE salaries (
    emp_no      INT             NOT NULL,
    salary      INT             NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE            NOT NULL,
);