create table data_user_profiles (
    user_profile_id         int auto_increment not null comment 'Unique identifier for the users profile',
    created_by              varchar(256) not null default 'LERN_DATABASE' comment 'User who created this record',
    creation_date           timestamp not null default current_timestamp comment 'Timestamp when the user was created',
    last_updated_by         varchar(256) default 'LERN_DATABASE' comment 'User who last updated this record',
    last_update_date        timestamp default current_timestamp on update current_timestamp comment 'Timestamp when the user was last updated',

    user_id                 int not null comment 'User ID for the users profile. Foreign key from cmn_users',
    
    constraint data_user_profiles_pk primary key (user_profile_id),
    
    constraint data_user_profiles_users_fk 
        foreign key (user_id) references cmn_users (user_id)
        on update cascade
        on delete cascade
) comment = 'Table to store user profile data';


create unique index idx_data_user_profiles_unique_user_id on data_user_profiles (user_id);