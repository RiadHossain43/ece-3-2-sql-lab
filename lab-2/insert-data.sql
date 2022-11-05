/*
this code will insert the initial row of ledger table,
this is required to run atleast once before any sales or purchase insertions 
can be done, otherwise triggers will breake.
*/
insert into ledger(
    id,
    ondate,
    details,
    debit,
    credit,
    balance
) values(
    0,
    to_date('2022-11-05','YYYY-MM-DD'),
    'some of transaction',
    0,
    5,
    34
);
/* insert purchase record */
insert into purchase(
    id,
    ondate,
    quantity
) values(
    0,
    to_date('2022-11-05','YYYY-MM-DD'),
    5
);
/* insert sales record */
insert into sales(
    id,
    ondate,
    quantity
) values(
    0,
    to_date('2022-11-05','YYYY-MM-DD'),
    8
);