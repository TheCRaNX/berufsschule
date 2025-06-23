create table data_flash_cards_file_paths (
    flash_card_file_path_id    			bigint auto_increment not null comment 'Unique identifier for the flash card file path',
    created_by              			varchar(256) not null default 'LERN_DATABASE' comment 'User who created this record',
    creation_date           			timestamp not null default current_timestamp comment 'Timestamp when the user was created',
    last_updated_by         			varchar(256) default 'LERN_DATABASE' comment 'User who last updated this record',
    last_update_date        			timestamp default current_timestamp on update current_timestamp comment 'Timestamp when the user was last updated',

    flash_card_id                       bigint not null comment 'Flash card id for the flash card file path',
    file_path                	    	varchar(2048) not null comment 'File path for the flash card file path',
    
    constraint data_flash_cards_file_paths_pk primary key (flash_card_file_path_id),
    
    constraint data_flash_cards_file_paths_flash_cards_fk 
        foreign key (flash_card_id) references data_flash_cards (flash_card_id)
        on update cascade
        on delete cascade
) comment = 'Table to store flash card file paths data';


create  index idx_data_flash_cards_file_paths_flash_card_id on data_flash_cards_file_paths (flash_card_id);