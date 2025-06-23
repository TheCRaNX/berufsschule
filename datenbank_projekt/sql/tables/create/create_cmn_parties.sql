create table cmn_parties(
    party_id                int auto_increment not null comment 'Unique identifier for the party',
    created_by              varchar(256) not null default 'LERN_DATABASE' comment 'User who created this record',
    creation_date           timestamp not null default current_timestamp comment 'Timestamp when the user was created',
    last_updated_by         varchar(256) default 'LERN_DATABASE' comment 'User who last updated this record',
    last_update_date        timestamp default current_timestamp on update current_timestamp comment 'Timestamp when the user was last updated',
    
    party_name              varchar(256) not null comment 'Partyname for the user',
    email_address           varchar(256) comment 'E-mail address for the party',
    active_flag             char(1) not null check(active_flag in ('Y', 'N')) comment 'Active flag for the party. Can be Y or N',
    
    constraint cmn_parties_pk primary key (party_id)
) comment = 'Table to store party data';


create unique index idx_cmn_parties_unique_party_name on cmn_parties (party_name);

create unique index idx_cmn_parties_unique_email_address on cmn_parties (email_address);