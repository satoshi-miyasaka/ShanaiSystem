create table timecard.mst_access (
	ip_address varchar(100),
	start_date date not null,
	end_date date not null,
	insert_id char(8) not null,
	insert_ts timestamp default (CURRENT_TIMESTAMP) not null,
	update_id char(8) not null,
	update_ts timestamp default (CURRENT_TIMESTAMP) not null,
	primary key(ip_address)
);
