create table data_flash_cards (
    flash_card_id           			bigint auto_increment not null comment 'Unique identifier for the flashcard',
    created_by              			varchar(256) not null default 'KARTEGO_DATABASE' comment 'User who created this record',
    creation_date           			timestamp not null default current_timestamp comment 'Timestamp when the user was created',
    last_updated_by         			varchar(256) default 'KARTEGO_DATABASE' comment 'User who last updated this record',
    last_update_date        			timestamp default current_timestamp on update current_timestamp comment 'Timestamp when the user was last updated',

    flash_card_category_id              int not null comment 'Category id for the flash card. Foreign key from data_flash_card_categories',
    user_id                             int not null comment 'Id of the user who created the flash card topic. Foreign key from cmn_users',
    title                				varchar(512) not null comment 'Title for the flash card',
    front_content           			json not null comment 'Front side content for the flash card',
    back_content            			json not null comment 'Back side content for the flash card',
    
    constraint data_flash_cards_pk primary key (flash_card_id),
    
    constraint data_flash_cards_categories_fk 
        foreign key (flash_card_category_id) references data_flash_cards_categories (flash_card_category_id)
        on update cascade
        on delete cascade,

    constraint data_flash_cards_users_fk
        foreign key (user_id) references cmn_users(user_id)
        on update cascade
        on delete cascade
) comment = 'Table to store flash cards data';

create  index idx_data_flash_cards_user_id on data_flash_cards (user_id);

create  index idx_data_flash_cards_flash_card_category_id on data_flash_cards (flash_card_category_id);

create  index idx_data_flash_cards_title on data_flash_cards (title);