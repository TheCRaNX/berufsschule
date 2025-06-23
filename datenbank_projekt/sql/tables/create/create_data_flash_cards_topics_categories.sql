create table data_flash_cards_topics_categories (
    flash_card_topic_category_id  int auto_increment not null comment 'Unique identifier for the flash card topic category',
    created_by                    varchar(256) not null default 'KARTEGO_DATABASE' comment 'User who created this record',
    creation_date                 timestamp not null default current_timestamp comment 'Timestamp when the user was created',
    last_updated_by               varchar(256) default 'KARTEGO_DATABASE' comment 'User who last updated this record',
    last_update_date              timestamp default current_timestamp on update current_timestamp comment 'Timestamp when the user was last updated',

    flash_card_topic_id           int not null comment 'Flash card topic id for the flash card topic category. Foreign key from data_flash_cards_topics',
    flash_card_category_id    	  int not null comment 'Flash card category id for the flash card topic category. Foreign key from data_flash_cards_categories',
    
    constraint data_flash_cards_topics_categories_pk primary key (flash_card_topic_category_id),

    constraint data_flash_cards_topics_categories_topics_fk
        foreign key (flash_card_topic_id) references data_flash_cards_topics(flash_card_topic_id)
        on update cascade
        on delete cascade,

    constraint data_flash_cards_topics_categories_categories_fk
        foreign key (flash_card_category_id) references data_flash_cards_categories(flash_card_category_id)
        on update cascade
        on delete cascade
) comment = 'Table to store flash cards topic categories mapping data';

create unique index idx_data_flash_cards_topics_categories_unique_topic_category on data_flash_cards_topics_categories (flash_card_topic_id, flash_card_category_id);

create index idx_data_flash_cards_topics_categories_flash_card_topic_id on data_flash_cards_topics_categories (flash_card_topic_id);

create index idx_data_flash_cards_topics_categories_flash_card_category_id on data_flash_cards_topics_categories (flash_card_category_id);