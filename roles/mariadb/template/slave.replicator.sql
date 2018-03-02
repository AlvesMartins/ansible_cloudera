CHANGE MASTER TO MASTER_HOST=’54.162.103.228’, MASTER_USER=’replicator’, MASTER_PASSWORD=’replicate123′, MASTER_LOG_FILE=’mysql_binary_log.000003′, MASTER_LOG_POS=3490;
START SLAVE;
SHOW SLAVE STATUS;
grant all on *.* to ‘temp’@’%’ identified by ‘temp’ with grant option;