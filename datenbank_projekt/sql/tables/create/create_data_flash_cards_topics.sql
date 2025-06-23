create table data_flash_cards_topics (
    flash_card_topic_id                 int auto_increment not null comment 'Unique identifier for the flashcard topic',
    created_by                          varchar(256) not null default 'KARTEGO_DATABASE' comment 'User who created this record',
    creation_date                       timestamp not null default current_timestamp comment 'Timestamp when the user was created',
    last_updated_by                     varchar(256) default 'KARTEGO_DATABASE' comment 'User who last updated this record',
    last_update_date                    timestamp default current_timestamp on update current_timestamp comment 'Timestamp when the user was last updated',
    
    user_id                             int not null comment 'Id of the user who created the flash card topic. Foreign key from cmn_users',
    topic_name      	                varchar(512) not null comment 'Name for the flash card topic',
    description                         text comment 'Description for the flash card topic',
    public_flag                         varchar(1) not null check(public_flag in ('Y', 'N')) comment 'Public flag for flash card topic',
    
    constraint data_flash_cards_topics_pk primary key (flash_card_topic_id),

    constraint data_flash_cards_topics_users_fk
        foreign key (user_id) references cmn_users(user_id)
        on update cascade
        on delete cascade
) comment = 'Table to store flash cards topics data';


create  index idx_data_flash_cards_topics_user_id on data_flash_cards_topics (user_id);

create  index idx_data_flash_cards_topics_topic_name on data_flash_cards_topics (topic_name);