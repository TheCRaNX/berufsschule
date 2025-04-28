create table cmn_logs (
    log_id                  int auto_increment not null comment 'Unique identifier for the log entry',
    created_by              varchar(256) not null default 'LERN_DATABASE' comment 'User or system that created this log entry',
    creation_date           timestamp not null default current_timestamp comment 'Timestamp when the log entry was created',
    last_updated_by         varchar(256) default 'LERN_DATABASE' comment 'User or system that last updated this log entry',
    last_update_date        timestamp default current_timestamp on update current_timestamp comment 'Timestamp when the log entry was last updated',

    log_level               int not null check(log_level in(1, 2, 3, 4, 5)) comment 'Log level (1-5) indicating severity',
    session_id              varchar(64) not null comment 'Session ID associated with the log entry',
    session_user            varchar(256) not null comment 'Session user (username) associated with the log entry',
    log_environment         varchar(256) not null comment 'The environment where the log entry was generated (e.g., production, staging)',
    log_module              varchar(256) not null comment 'The module where the log entry originated (e.g., user, auth)',
    log_sub_module          varchar(256) comment 'The sub-module where the log entry originated, if applicable',
    log_message_1           text not null comment 'Main message describing the log entry',
    log_message_2           text comment 'Secondary message providing additional context, if applicable',
    log_message_3           text comment 'Tertiary message providing further context, if applicable',
    log_message_4           text comment 'Additional message providing further details, if applicable',
    log_message_5           text comment 'Extra message providing any other context, if applicable',
    stack                   text comment 'Stack trace information, if available, to diagnose errors',
    app_version             varchar(32) comment 'Version of the application that generated the log entry',
    
    constraint cmn_logs_pk primary key (log_id)
) comment = 'Table to store application logs with various levels of detail for debugging and tracking';

create index idx_cmn_logs_log_level on cmn_logs (log_level);

create index idx_cmn_logs_session_id on cmn_logs (session_id);

create index idx_cmn_logs_session_user on cmn_logs (session_user);

create index idx_cmn_logs_log_environment on cmn_logs (log_environment);

create index idx_cmn_logs_log_module on cmn_logs (log_module);

create index idx_cmn_logs_log_sub_module on cmn_logs (log_sub_module);