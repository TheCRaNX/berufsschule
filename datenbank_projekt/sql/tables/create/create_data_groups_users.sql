create table data_groups_users (
    flash_card_topic_category_id  int auto_increment not null comment 'Unique identifier for the group user',
    created_by                    varchar(256) not null default 'KARTEGO_DATABASE' comment 'User who created this record',
    creation_date                 timestamp not null default current_timestamp comment 'Timestamp when the user was created',
    last_updated_by               varchar(256) default 'KARTEGO_DATABASE' comment 'User who last updated this record',
    last_update_date              timestamp default current_timestamp on update current_timestamp comment 'Timestamp when the user was last updated',

    group_id                      int not null comment 'Group id group user. Foreign key from data_groups',
    user_id                 	  int not null comment 'User for the group user. Foreign key from cmn_users',
    
    constraint data_groups_users_pk primary key (flash_card_topic_category_id),

    constraint data_groups_users_groups_fk
        foreign key (group_id) references data_groups(group_id)
        on update cascade
        on delete cascade,

    constraint data_groups_users_users_fk
        foreign key (user_id) references cmn_users(user_id)
        on update cascade
        on delete cascade
) comment = 'Table to store groups users mapping data';

create unique index idx_data_groups_users_unique_group_user on data_groups_users (group_id, user_id);

create index idx_data_groups_users_group_id on data_groups_users (group_id);

create index idx_data_groups_users_user_id on data_groups_users (user_id);