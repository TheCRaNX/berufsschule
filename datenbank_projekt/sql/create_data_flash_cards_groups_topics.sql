create table data_flash_cards_groups_topics (
    flash_card_group_topic_id     int auto_increment not null comment 'Unique identifier for the flash card group topic',
    created_by                    varchar(256) not null default 'LERN_DATABASE' comment 'User who created this record',
    creation_date                 timestamp not null default current_timestamp comment 'Timestamp when the user was created',
    last_updated_by               varchar(256) default 'LERN_DATABASE' comment 'User who last updated this record',
    last_update_date              timestamp default current_timestamp on update current_timestamp comment 'Timestamp when the user was last updated',

    flash_card_group_id      	  int not null comment 'Flash card group id for the flash card group topic',
    flash_card_topic_id           int not null comment 'Flash card topic id for the flash card group topic',
    
    constraint data_flash_cards_groups_topics_pk primary key (flash_card_group_topic_id),

    constraint data_flash_cards_groups_topics_groups_fk
        foreign key (flash_card_group_id) references data_flash_cards_groups(flash_card_group_id)
        on update cascade
        on delete cascade,

    constraint data_flash_cards_groups_topics_topics_fk
        foreign key (flash_card_topic_id) references data_flash_cards_topics(flash_card_topic_id)
        on update cascade
        on delete cascade
) comment = 'Table to store flash cards groups topics data';

create  unique index idx_data_flash_cards_groups_topics_unique_group_topic on data_flash_cards_groups_topics (flash_card_group_id, flash_card_topic_id);

create  index idx_data_flash_cards_groups_topics_flash_card_group_id on data_flash_cards_groups_topics (flash_card_group_id);

create  index idx_data_flash_cards_groups_topics_flash_card_topic_id on data_flash_cards_groups_topics (flash_card_topic_id);