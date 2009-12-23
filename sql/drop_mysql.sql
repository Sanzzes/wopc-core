REVOKE ALL PRIVILEGES ON * . * FROM 'ixiliumemu'@'localhost';

REVOKE ALL PRIVILEGES ON `world` . * FROM 'ixiliumemu'@'localhost';

REVOKE GRANT OPTION ON `world` . * FROM 'ixiliumemu'@'localhost';

REVOKE ALL PRIVILEGES ON `characters` . * FROM 'ixiliumemu'@'localhost';

REVOKE GRANT OPTION ON `characters` . * FROM 'ixiliuemu'@'localhost';

REVOKE ALL PRIVILEGES ON `realmd` . * FROM 'ixiliumemu'localhost';

REVOKE GRANT OPTION ON `realmd` . * FROM 'ixiliumemu'@'localhost';

DROP USER 'ixiliumemu'@'localhost';

DROP DATABASE IF EXISTS `world`;

DROP DATABASE IF EXISTS `characters`;

DROP DATABASE IF EXISTS `logon`;
