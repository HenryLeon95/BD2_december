# The proper term is pseudo_replica_mode, but we use this compatibility alias
# to make the statement usable on server versions 8.0.24 and older.
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=1*/;
/*!50003 SET @OLD_COMPLETION_TYPE=@@COMPLETION_TYPE,COMPLETION_TYPE=0*/;
DELIMITER /*!*/;
# at 4
#211214 18:39:14 server id 1  end_log_pos 125 CRC32 0x55ea5d81 	Start: binlog v 4, server v 8.0.27-0ubuntu0.20.04.1 created 211214 18:39:14
BINLOG '
Mjm5YQ8BAAAAeQAAAH0AAAAAAAQAOC4wLjI3LTB1YnVudHUwLjIwLjA0LjEAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAEwANAAgAAAAABAAEAAAAYQAEGggAAAAICAgCAAAACgoKKioAEjQA
CigBgV3qVQ==
'/*!*/;
# at 125
#211214 18:39:14 server id 1  end_log_pos 156 CRC32 0xb53521cb 	Previous-GTIDs
# [empty]
# at 156
#211214 18:40:49 server id 1  end_log_pos 235 CRC32 0x7243dff9 	Anonymous_GTID	last_committed=0	sequence_number=1	rbr_only=yes	original_committed_timestamp=1639528849517409	immediate_commit_timestamp=1639528849517409	transaction_length=697
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1639528849517409 (2021-12-14 18:40:49.517409 CST)
# immediate_commit_timestamp=1639528849517409 (2021-12-14 18:40:49.517409 CST)
/*!80001 SET @@session.original_commit_timestamp=1639528849517409*//*!*/;
/*!80014 SET @@session.original_server_version=80027*//*!*/;
/*!80014 SET @@session.immediate_server_version=80027*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 235
#211214 18:40:49 server id 1  end_log_pos 314 CRC32 0xe1043bf2 	Query	thread_id=18	exec_time=0	error_code=0
SET TIMESTAMP=1639528849/*!*/;
SET @@session.pseudo_thread_id=18/*!*/;
SET @@session.foreign_key_checks=1, @@session.sql_auto_is_null=0, @@session.unique_checks=1, @@session.autocommit=1/*!*/;
SET @@session.sql_mode=1168113696/*!*/;
SET @@session.auto_increment_increment=1, @@session.auto_increment_offset=1/*!*/;
/*!\C utf8mb4 *//*!*/;
SET @@session.character_set_client=255,@@session.collation_connection=255,@@session.collation_server=255/*!*/;
SET @@session.lc_time_names=0/*!*/;
SET @@session.collation_database=DEFAULT/*!*/;
/*!80011 SET @@session.default_collation_for_utf8mb4=255*//*!*/;
BEGIN
/*!*/;
# at 314
#211214 18:40:49 server id 1  end_log_pos 380 CRC32 0xf2b73ec8 	Table_map: `bd2pr1`.`habitacion` mapped to number 110
# at 380
#211214 18:40:49 server id 1  end_log_pos 822 CRC32 0xaf70963b 	Write_rows: table id 110 flags: STMT_END_F

BINLOG '
kTm5YRMBAAAAQgAAAHwBAAAAAG4AAAAAAAMABmJkMnByMQAKaGFiaXRhY2lvbgACAw8C8AACAQEA
AgP8/wDIPrfy
kTm5YR4BAAAAugEAADYDAAAAAG4AAAAAAAEAAgAC/wABAAAAE1NhbGEgZGUgZXhhbWVuZXMgMQ0A
AgAAABNTYWxhIGRlIGV4YW1lbmVzIDINAAMAAAATU2FsYSBkZSBleGFtZW5lcyAzDQAEAAAAE1Nh
bGEgZGUgZXhhbWVuZXMgNA0ABQAAABNTYWxhIGRlIGltYWdlbmVzIDENAAYAAAAZU2FsYSBkZSBw
cm9jZWRpbWllbnRvcyAxDQAHAAAAGVNhbGEgZGUgcHJvY2VkaW1pZW50b3MgMg0ACAAAABlTYWxh
IGRlIHByb2NlZGltaWVudG9zIDMNAAkAAAAZU2FsYSBkZSBwcm9jZWRpbWllbnRvcyA0DQAKAAAA
ClJlY2VwY2lvbg0ACwAAAAxMYWJvcmF0b3Jpbw0ADAAAABlFc3RhY2nDs24gZGUgcmV2aXNpw7Nu
IDENAA0AAAAZRXN0YWNpw7NuIGRlIHJldmlzacOzbiAyDQAOAAAAGUVzdGFjacOzbiBkZSByZXZp
c2nDs24gMw0ADwAAABlFc3RhY2nDs24gZGUgcmV2aXNpw7NuIDQNO5Zwrw==
'/*!*/;
# at 822
#211214 18:40:49 server id 1  end_log_pos 853 CRC32 0x9e4c9750 	Xid = 355
COMMIT/*!*/;
# at 853
#211214 18:41:10 server id 1  end_log_pos 897 CRC32 0x97334ed0 	Rotate to binlog.000672  pos: 4
SET @@SESSION.GTID_NEXT= 'AUTOMATIC' /* added by mysqlbinlog */ /*!*/;
DELIMITER ;
# End of log file
/*!50003 SET COMPLETION_TYPE=@OLD_COMPLETION_TYPE*/;
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=0*/;
