/*
this trigger is for purchase insert action
*/
create trigger purchase_to_ledger after insert on purchase
for each row 
declare 
    current_balance int;
    next_id int;
begin
    select balance into current_balance from ledger where id = (select max(id) from ledger) fetch first 1 ROWS only;
    select ledger_sequence.nextval into next_id from dual;
    insert into ledger(
        id,
        ondate,
        debit,
        credit,
        balance
    ) values(
        next_id,
        to_date(:new.ondate,'YYYY-MM-DD'),
        :new.quantity,
        0,
        :new.quantity+current_balance
    );
end;
/

/*
this trigger is for sales insert action
*/

create trigger sales_to_ledger after insert on sales
for each row 
declare 
    current_balance int;
    next_id int;
begin
    select balance into current_balance from ledger where id = (select max(id) from ledger) fetch first 1 ROWS only;
    select ledger_sequence.nextval into next_id from dual;
    insert into ledger(
        id,
        ondate,
        debit,
        credit,
        balance
    ) values(
        next_id,
        to_date(:new.ondate,'YYYY-MM-DD'),
        0,
        :new.quantity,
        current_balance - :new.quantity
    );
end;
/