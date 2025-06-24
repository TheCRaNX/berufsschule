create user 'quartett_database'@'%' identified by 'securepassword123';

grant all privileges on quartett_database.* to 'quartett_database'@'%';

flush privileges;