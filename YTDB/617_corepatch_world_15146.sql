DELETE FROM `command` WHERE `name` = 'reload locales_creature_text';
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('reload locales_creature_text', 3, 'Syntax: .reload locales_creature_text\nReload locales_creature_text Table.');
ALTER TABLE `warden_checks` ENGINE=MYISAM;
ALTER TABLE `achievement_dbc` ENGINE=MYISAM;
ALTER TABLE `creature_text` ENGINE=MYISAM;
ALTER TABLE `game_event_seasonal_questrelation` ENGINE=MYISAM;
DELETE FROM `trinity_string` WHERE `entry`=175;
INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES
(175, 'Liquid level: %f, ground: %f, type: %u, flags %u, status: %d.');
ALTER TABLE `creature_template` ADD COLUMN `HoverHeight` FLOAT NOT NULL DEFAULT 1 AFTER `InhabitType`;
