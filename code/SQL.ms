``SQL
select table_name from user_tables
selcet username from user_users;
create user im identified by im default tablespace users;
disc
coneect im/im
connect system/im
grant create session to im;
connect im/im
grant create table to im
alter user in quote unlimited on users

revoke create table from im;
revoke create session from im;
drop user im cascade;
connect sys/im as sysdba
shutdown immediate(abort)
startup
``
