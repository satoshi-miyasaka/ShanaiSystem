create table timecard.tr_timecard (
	user_id char(8),
	yyyymm char(6),
	dd int,
	hist_no int,
	kaisya_cd char(4),
	project char(4),
	status char(2),
	start_time time,
	end_time time,
	sagyo_jikan decimal(3,2),
	kyukei_jikan decimal(3,2),
	zangyo_jikan decimal(3,2),
	insert_id char(8) not null,
	insert_ts timestamp default (CURRENT_TIMESTAMP) not null,
	update_id char(8) not null,
	update_ts timestamp default (CURRENT_TIMESTAMP) not null,
	primary key(user_id,yyyymm,dd,hist_no)
);
