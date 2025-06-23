create table data_flash_cards_topics_categories (
    flash_card_topic_id                 int auto_increment not null comment 'Unique identifier for the flashcard topic category',
    created_by                          varchar(256) not null default 'LERN_DATABASE' comment 'User who created this record',
    creation_date                       timestamp not null default current_timestamp comment 'Timestamp when the user was created',
    last_updated_by                     varchar(256) default 'LERN_DATABASE' comment 'User who last updated this record',
    last_update_date                    timestamp default current_timestamp on update current_timestamp comment 'Timestamp when the user was last updated',
    
    flash_card_topic_id                 int not null comment 'Flash card topic id for flashcard topic.',
    flash_card_category_id              int not null comment 'Flash card category id for flashcard topic.',
    
    constraint data_flash_cards_topics_pk primary key (flash_card_topic_id),

    constraint data_flash_cards_topics_users_fk
        foreign key (user_id) references cmn_users(user_id)
        on update cascade
        on delete cascade
) comment = 'Table to store flash cards topics categories mapping';

create  index idx_data_flash_cards_topics__categories_topic_id on data_flash_cards_topics_categories (topic_id);

create  index idx_data_flash_cards_topics__categories_category_id on data_flash_cards_topics_categories (category_id);