create user 'kartego_database'@'%' identified by 'securepassword123';

grant all privileges on kartego_database.* to 'kartego_database'@'%';

flush privileges;