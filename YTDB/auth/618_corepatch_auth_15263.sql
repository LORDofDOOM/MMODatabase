ALTER TABLE `account_banned`
    CHANGE `bandate` `bandate` INT(10) UNSIGNED DEFAULT 0 NOT NULL,
    CHANGE `unbandate` `unbandate` INT(10) UNSIGNED DEFAULT 0 NOT NULL;

ALTER TABLE `ip_banned`
    CHANGE `ip` `ip` VARCHAR(15) CHARSET utf8 COLLATE utf8_general_ci DEFAULT '127.0.0.1' NOT NULL,
    CHANGE `bandate` `bandate` INT(10) UNSIGNED NOT NULL,
    CHANGE `unbandate` `unbandate` INT(10) UNSIGNED NOT NULL;

ALTER TABLE `realmlist`
    CHANGE `color` `flag` tinyint(3) unsigned NOT NULL DEFAULT '2';

ALTER TABLE `account`
 CHANGE `id` `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
 CHANGE `sessionkey` `sessionkey` VARCHAR(80) NOT NULL DEFAULT '',
 CHANGE `v` `v` VARCHAR(64) NOT NULL DEFAULT '',
 CHANGE `s` `s` VARCHAR(64) NOT NULL DEFAULT '',
 CHANGE `email` `email` VARCHAR(254) NOT NULL DEFAULT '',
 CHANGE `last_ip` `last_ip` VARCHAR(15) NOT NULL DEFAULT '127.0.0.1',
 CHANGE `failed_logins` `failed_logins` INT(10) UNSIGNED NOT NULL DEFAULT '0',
 CHANGE `online` `online` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
 CHANGE `mutetime` `mutetime` BIGINT(20) NOT NULL DEFAULT '0',
 CHANGE `os` `os` VARCHAR(3) NOT NULL DEFAULT '',
 CHANGE `recruiter` `recruiter` INT(10) UNSIGNED NOT NULL DEFAULT '0',
 ROW_FORMAT=DEFAULT ENGINE=INNODB;

ALTER TABLE `account_access`
 CHANGE `id` `id` INT(10) UNSIGNED NOT NULL,
 ROW_FORMAT=DEFAULT ENGINE=INNODB;

ALTER TABLE `account_banned`
 CHANGE `id` `id` INT(10) UNSIGNED DEFAULT '0' NOT NULL COMMENT 'Account id',
 CHANGE `active` `active` TINYINT(3) UNSIGNED DEFAULT '1' NOT NULL,
 ROW_FORMAT=DEFAULT ENGINE=INNODB;

ALTER TABLE `ip_banned`
 ROW_FORMAT=DEFAULT ENGINE=INNODB;
