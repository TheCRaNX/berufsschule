create table data_flash_cards_groups (
    flash_card_group_id           int auto_increment not null comment 'Unique identifier for the flash card group',
    created_by                    varchar(256) not null default 'KARTEGO_DATABASE' comment 'User who created this record',
    creation_date                 timestamp not null default current_timestamp comment 'Timestamp when the user was created',
    last_updated_by               varchar(256) default 'KARTEGO_DATABASE' comment 'User who last updated this record',
    last_update_date              timestamp default current_timestamp on update current_timestamp comment 'Timestamp when the user was last updated',

    group_name      	          varchar(512) comment 'Name for the flash card group',
    description                   text comment 'Description for the flash card group',
    user_id                       int comment 'Id of the user who created the flash card group. Foreign key from cmn_users',
    public_flag                   varchar(1) check(public_flag in ('Y', 'N')) comment 'Public flag for flash card group',
    parent_flash_card_group_id    int comment 'Parent flash card group id for flash card group. Foreign key from data_flash_cards_groups',
    
    constraint data_flash_cards_groups_pk primary key (flash_card_group_id),

    constraint data_flash_cards_groups_users_fk
        foreign key (user_id) references cmn_users(user_id)
        on update cascade
        on delete cascade,

    constraint data_flash_cards_groups_groups_fk
        foreign key (parent_flash_card_group_id) references data_flash_cards_groups(flash_card_group_id)
        on update cascade
        on delete cascade
) comment = 'Table to store flash cards groups data';

create  index idx_data_flash_cards_groups_group_name on data_flash_cards_groups (group_name);

create  index idx_data_flash_cards_groups_user_id on data_flash_cards_groups (user_id);