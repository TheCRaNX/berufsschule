create table cmn_application_config(
    application_config_id   int auto_increment not null comment 'Unique identifier for the application config entry',
    created_by              varchar(256) not null default 'LERN_DATABASE' comment 'User or system that created this log entry',
    creation_date           timestamp not null default current_timestamp comment 'Timestamp when the log entry was created',
    last_updated_by         varchar(256) default 'LERN_DATABASE' comment 'User or system that last updated this log entry',
    last_update_date        timestamp default current_timestamp on update current_timestamp comment 'Timestamp when the log entry was last updated',
    
    config_key_code         varchar(256) not null comment 'Config key code for application config',
    config_key_name         varchar(256) not null comment 'Config key name for application config',
    config_value            varchar(256) not null comment 'Config value for application config',
    description             text comment 'Description for application config',
    environment             varchar(256) not null comment 'Environment for application config',
    module                  varchar(256) not null comment 'Module for application config',
    active_flag             varchar(1) not null check(active_flag in ('Y', 'N')) comment 'Active flag for application config',
    char_1                  varchar(1000) comment 'Char 1 placeholder for application config',
    char_2                  varchar(1000) comment 'Char 2 placeholder for application config',
    char_3                  varchar(1000) comment 'Char 3 placeholder for application config',
    char_4                  varchar(1000) comment 'Char 4 placeholder for application config',
    char_5                  varchar(1000) comment 'Char 5 placeholder for application config',
    number_1                int comment 'Number 1 placeholder for application config',
    number_2                int comment 'Number 2 placeholder for application config',
    number_3                int comment 'Number 3 placeholder for application config',
    number_4                int comment 'Number 4 placeholder for application config',
    number_5                int comment 'Number 5 placeholder for application config',
    text_1                  text comment 'Text 1 placeholder for application config',
    text_2                  text comment 'Text 2 placeholder for application config',
    text_3                  text comment 'Text 3 placeholder for application config',
    text_4                  text comment 'Text 4 placeholder for application config',
    text_5                  text comment 'Text 5 placeholder for application config',
    
    constraint cmn_application_config_pk primary key (application_config_id)

);

create unique index idx_cmn_application_config_unique_config_key_code on cmn_application_config (config_key_code);

create unique index idx_cmn_application_config_unique_config_key_name on cmn_application_config (config_key_name);

create index idx_cmn_application_config_environment on cmn_application_config (environment);

create index idx_cmn_application_config_module on cmn_application_config (module);