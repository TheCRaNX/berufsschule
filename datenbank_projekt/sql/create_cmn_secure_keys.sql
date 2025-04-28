create table cmn_secure_keys(
    secure_key_id           int auto_increment not null comment 'Unique identifier for the secure key',
    created_by              varchar(256) not null default 'LERN_DATABASE' comment 'User who created this record',
    creation_date           timestamp not null default current_timestamp comment 'Timestamp when the user was created',
    last_updated_by         varchar(256) default 'LERN_DATABASE' comment 'User who last updated this record',
    last_update_date        timestamp default current_timestamp on update current_timestamp comment 'Timestamp when the user was last updated',
    
    key_name                varchar(64) not null comment 'Key name for the secure key',
    key_value               varchar(64) comment 'Key value for the secure key',
    
    constraint cmn_secure_keys_pk primary key (secure_key_id)
) comment = 'Table to store secure keys';


create unique index idx_cmn_secure_keys_unique_key_name on cmn_secure_keys (key_name);

create index idx_cmn_secure_keys_key_value on cmn_secure_keys (key_value);