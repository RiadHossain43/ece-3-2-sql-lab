# Requirements 

`Ledger` table should automatically calculate balance based in `purchase` or `sales`.
**insert** action on `purchase` or `sales` table should add new entry in ledger.
### Ledger table
| id          | details     | date        | credit | debit | balance |
| ----------- | ----------- | ----------- | ------ | ----- | ------- | 
| 1           | purchase    | 12 Nov 2022 | 3      | 0     | 7
| 2           | sales       | 13 Nov 2022 | 0      | 1     | 8
### Purchase table
| id          | date        | quantity |
| ----------- | ----------- | ------   | 
| 1           | 12 Nov 2022 | 3        | 
| 2           | 13 Nov 2022 | 0        | 
### Sales table
| id          | date        | quantity |
| ----------- | ----------- | ------   | 
| 1           | 12 Nov 2022 | 0        | 
| 2           | 13 Nov 2022 | 1        | 
# Creating the tables

Run the commands from the `create-table.sql` file sequentially. It will create all the three
tables for you.

# Creating a automated id sequece for ledger table

Run the command from the `ledger-sequence.sql` file to generate a squence for ledger ids.
This will be required to identify latest record from ledger table.

# Creating  the triggers

Run the commands from the `trigger.sql` file to generate the triggers.
There are two triggers,  one for purchase insert event and the other one is 
for sales insert event.

# Inserting the data

Run the commands of the `insert-data.sql` file sequentially. Keep the sequence right.
Fisrt the ledger table  will have aa default balance on the first insert. After that on 
every insert of **purchase** or **sales** the ledger will update automatically.