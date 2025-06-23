create table cmn_user_sessions (
    user_session_id         int auto_increment not null comment 'Unique identifier for the user session',
    created_by              varchar(256) not null default 'LERN_DATABASE' comment 'User who created this record',
    creation_date           timestamp not null default current_timestamp comment 'Timestamp when the user was created',
    last_updated_by         varchar(256) default 'LERN_DATABASE' comment 'User who last updated this record',
    last_update_date        timestamp default current_timestamp on update current_timestamp comment 'Timestamp when the user was last updated',

    user_id                 int not null comment 'User ID for the user session. Foreign key from cmn_users',
    session_id              varchar(24) not null comment 'Session ID for the user session',
    session_duration_min    int not null comment 'Session duration in mintues for the user session',
    active_flag             char(1) not null check(active_flag in ('Y', 'N')) comment 'Active flag for the user sessions. Can be Y or N',
    session_start           timestamp not null comment 'Session start for the user session',
    session_end             timestamp comment 'Session end for the user session',
    
    constraint cmn_user_sessions_pk primary key (user_session_id),
    
    constraint cmn_user_sessions_users_fk 
        foreign key (user_id) references cmn_users (user_id)
        on update cascade
        on delete cascade
) comment = 'Table to store sessions of users';


create unique index idx_cmn_user_sessions_unique_session_id on cmn_user_sessions (session_id);