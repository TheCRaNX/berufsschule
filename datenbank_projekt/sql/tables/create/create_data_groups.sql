create table data_groups(
    group_id                int auto_increment not null comment 'Unique identifier for the group',
    created_by              varchar(256) not null default 'KARTEGO_DATABASE' comment 'User who created this record',
    creation_date           timestamp not null default current_timestamp comment 'Timestamp when the user was created',
    last_updated_by         varchar(256) default 'KARTEGO_DATABASE' comment 'User who last updated this record',
    last_update_date        timestamp default current_timestamp on update current_timestamp comment 'Timestamp when the user was last updated',
    
    group_name              varchar(256) not null comment 'Group name for the group',
    description             text comment 'Description for the group',
    
    constraint data_groups_pk primary key (group_id)
) comment = 'Table to store groups data';


create index idx_data_groups_group_name on data_groups (group_name);