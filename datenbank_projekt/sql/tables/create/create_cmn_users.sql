create table cmn_users (
    user_id                 int auto_increment not null comment 'Unique identifier for the user',
    created_by              varchar(256) not null default 'KARTEGO_DATABASE' comment 'User who created this record',
    creation_date           timestamp not null default current_timestamp comment 'Timestamp when the user was created',
    last_updated_by         varchar(256) default 'KARTEGO_DATABASE' comment 'User who last updated this record',
    last_update_date        timestamp default current_timestamp on update current_timestamp comment 'Timestamp when the user was last updated',

    party_id                int not null comment 'Party ID for the user. Foreign key from cmn_parties',
    user_name               varchar(256) not null comment 'Username for the user',
    password                varchar(256) not null comment 'Hashed password for the user (scrypt)',
    
    constraint cmn_users_pk primary key (user_id),
    
    constraint cmn_users_parties_fk 
        foreign key (party_id) references cmn_parties (party_id)
        on update cascade
        on delete cascade
) comment = 'Table to store user data including authentication details';

create unique index idx_cmn_users_unique_party_id on cmn_users (party_id);

create unique index idx_cmn_users_unique_user_name on cmn_users (user_name);

create index idx_cmn_users_password on cmn_users (password);