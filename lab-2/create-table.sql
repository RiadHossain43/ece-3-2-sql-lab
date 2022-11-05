/* creating puchase table */
create table purchase (
    id int NOT NULL,
    ondate DATE,
    quantity int
);
/* creating sales table */
create table sales (
    id int NOT NULL,
    ondate date,
    quantity int
);
/* creating ledger table */
create table ledger (
    id int not null,
    ondate date,
    details varchar(255),
    debit int,
    credit int,
    balance int
);
