create table data_flash_cards_categories (
    flash_card_category_id              int auto_increment not null comment 'Unique identifier for the flashcard category',
    created_by                          varchar(256) not null default 'KARTEGO_DATABASE' comment 'User who created this record',
    creation_date                       timestamp not null default current_timestamp comment 'Timestamp when the user was created',
    last_updated_by                     varchar(256) default 'KARTEGO_DATABASE' comment 'User who last updated this record',
    last_update_date                    timestamp default current_timestamp on update current_timestamp comment 'Timestamp when the user was last updated',
    
    user_id                             int not null comment 'Id of the user who created the flash card topic. Foreign key from cmn_users',
    category_name      	                varchar(512) not null comment 'Name for the flash card category',
    parent_flash_card_category_id       int comment 'Id of the parent category. Foreign key from data_flash_cards_categories',
    
    constraint data_flash_cards_categories_pk primary key (flash_card_category_id),

    constraint data_flash_cards_categories_users_fk
        foreign key (user_id) references cmn_users(user_id)
        on update cascade
        on delete cascade,

    constraint data_flash_cards_categories_parent_flash_card_category_id_fk
        foreign key (parent_flash_card_category_id) references data_flash_cards_categories(flash_card_category_id)
        on update cascade
        on delete cascade
) comment = 'Table to store flash cards categories data';

create  index idx_data_flash_cards_categories_user_id on data_flash_cards_categories (user_id);

create  index idx_data_flash_cards_categories_category_name on data_flash_cards_categories (category_name);

create  index idx_data_flash_cards_categories_parent_flash_card_category_id on data_flash_cards_categories (parent_flash_card_category_id);