# Role: Activity Monitor
create database amon DEFAULT CHARACTER SET utf8;
grant all on amon.* TO 'amon'@'%' IDENTIFIED BY 'amon_pass';

# Role: Reports Manager
create database rman DEFAULT CHARACTER SET utf8;
grant all on rman.* TO 'rman'@'%' IDENTIFIED BY 'rman_pass';

# Role: Hive Metastore Server
create database metastore DEFAULT CHARACTER SET utf8;
grant all on metastore.* TO 'hive'@'%' IDENTIFIED BY 'hive_pass';

# Role: Sentry Server
create database sentry DEFAULT CHARACTER SET utf8;
grant all on sentry.* TO 'sentry'@'%' IDENTIFIED BY 'sentry_pass';

# Role: Cloudera Navigator Audit Server
create database nav DEFAULT CHARACTER SET utf8;
grant all on nav.* TO 'nav'@'%' IDENTIFIED BY 'nav_pass';

# Role: Cloudera Navigator Metadata Server
create database navms DEFAULT CHARACTER SET utf8;
grant all on navms.* TO 'navms'@'%' IDENTIFIED BY 'navms_pass';

# Role: Cloudera Hue
create database hue DEFAULT CHARACTER SET utf8;
grant all on hue.* TO 'hue'@'%' IDENTIFIED BY 'hue_pass';

# Role: Cloudera Oozie
create database oozie default character set utf8;
grant all privileges on oozie.* to 'oozie'@'%' identified by 'oozie_pass';

# Role: Cloudera Oozie
create database hive default character set utf8;
grant all privileges on hive.* to 'hive'@'%' identified by 'hive_pass';