DELETE FROM `trinity_string` WHERE `entry` IN(555,556);
DELETE FROM `command` WHERE `name`='hover';
UPDATE `creature_template` SET `ScriptName`='npc_gas_cloud' WHERE `entry`=37562; -- Gas Cloud
UPDATE `spell_script_names` SET `ScriptName`='spell_putricide_clear_aura_effect_value' WHERE `ScriptName`='spell_putricide_clear_mutated_plague';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(71620,'spell_putricide_clear_aura_effect_value');
ALTER TABLE `battleground_template` ADD `StartMaxDist` float NOT NULL DEFAULT 0 AFTER `HordeStartO`;
UPDATE `battleground_template` SET `StartMaxDist`=200 WHERE `id`=30; -- IC
UPDATE `battleground_template` SET `StartMaxDist`=100 WHERE `id`=1; -- AV
UPDATE `battleground_template` SET `StartMaxDist`=75 WHERE `id` IN (2,3,7); -- WSG, AB, EotS
UPDATE `battleground_template` SET `MinLvl`=1 WHERE `id`=32;
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1603019 AND -1603000;
UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName` IN ('boss_algalon','mob_collapsing_star');
UPDATE `creature_template` SET `ScriptName`='boss_algalon_the_observer' WHERE `entry`=32871; -- Algalon the Observer
UPDATE `creature_template` SET `ScriptName`='npc_living_constellation' WHERE `entry`=33052; -- Living Constellation
UPDATE `creature_template` SET `ScriptName`='npc_collapsing_star' WHERE `entry`=32955; -- Collapsing Star
UPDATE `creature_template` SET `ScriptName`='npc_brann_bronzebeard_algalon' WHERE `entry`=34064; -- Brann Bronzebeard
UPDATE `gameobject_template` SET `ScriptName`='go_celestial_planetarium_access' WHERE `entry` IN (194628,194752); -- Celestial Planetarium Access
UPDATE `creature_template` SET `AIName`='NullCreatureAI' WHERE `entry` IN (32953,34099); -- Black Hole
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_algalon_phase_punch';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_algalon_arcane_barrage';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_algalon_trigger_3_adds';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_algalon_collapse';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_algalon_big_bang';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_algalon_remove_phase';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_algalon_cosmic_smash';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_algalon_cosmic_smash_damage';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_algalon_supermassive_fail';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(64412,'spell_algalon_phase_punch'),
(64599,'spell_algalon_arcane_barrage'),
(64607,'spell_algalon_arcane_barrage'),
(62266,'spell_algalon_trigger_3_adds'),
(62018,'spell_algalon_collapse'),
(64443,'spell_algalon_big_bang'),
(64584,'spell_algalon_big_bang'),
(64445,'spell_algalon_remove_phase'),
(62295,'spell_algalon_cosmic_smash'),
(62311,'spell_algalon_cosmic_smash_damage'),
(64596,'spell_algalon_cosmic_smash_damage'),
(65311,'spell_algalon_supermassive_fail');
SET @DIFF_ID := 3262;
DELETE FROM `spelldifficulty_dbc` WHERE `id` BETWEEN @DIFF_ID AND @DIFF_ID+5;
INSERT INTO `spelldifficulty_dbc` (`id`,`spellid0`,`spellid1`) VALUES
(@DIFF_ID+0,64395,64592),
(@DIFF_ID+1,64599,64607),
(@DIFF_ID+2,64443,64584),
(@DIFF_ID+3,64122,65108),
(@DIFF_ID+4,62301,64598),
(@DIFF_ID+5,62304,64597);
DELETE FROM `spell_script_names` WHERE `spell_id` IN (20625,29142,35139,42393,49882,55269,56578,38441,66316,67100,67101,67102);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(20625,'spell_gen_default_count_pct_from_max_hp'), -- Ritual of Doom Sacrifice
(29142,'spell_gen_default_count_pct_from_max_hp'), -- Eyesore Blaster
(35139,'spell_gen_default_count_pct_from_max_hp'), -- Throw Boom's Doom
(42393,'spell_gen_default_count_pct_from_max_hp'), -- Brewfest - Attack Keg
(49882,'spell_gen_default_count_pct_from_max_hp'), -- Leviroth Self-Impale
(55269,'spell_gen_default_count_pct_from_max_hp'), -- Deathly Stare
(56578,'spell_gen_default_count_pct_from_max_hp'), -- Rapid-Fire Harpoon
(38441,'spell_gen_50pct_count_pct_from_max_hp'), -- Cataclysmic Bolt
(66316,'spell_gen_50pct_count_pct_from_max_hp'), -- Spinning Pain Spike 10m
(67100,'spell_gen_50pct_count_pct_from_max_hp'), -- Spinning Pain Spike 25m
(67101,'spell_gen_50pct_count_pct_from_max_hp'), -- Spinning Pain Spike 10m heroic
(67102,'spell_gen_50pct_count_pct_from_max_hp'); -- Spinning Pain Spike 25m heroic
DELETE FROM `command` WHERE `name` IN ('modify tp','modify bwalk','modify swim','modify fly','modify arena','modify aspeed','modify morph');
INSERT INTO `command` (`name`, `security`, `help`) VALUES ('modify speed all', 1, 'Syntax: .modify aspeed #rate\r\n\r\nModify all speeds -run,swim,run back,swim back- of the selected player to "normalbase speed for this move type"*rate. If no player is selected, modify your speed.\r\n\r\n #rate may range from 0.1 to 50.'),
('modify speed backwalk', 1, 'Syntax: .modify speed backwalk #rate\r\n\r\nModify the speed of the selected player while running backwards to "normal walk back speed"*rate. If no player is selected, modify your speed.\r\n\r\n #rate may range from 0.1 to 50.'),
('modify speed fly', 1, '.modify speed fly #rate\nModify the flying speed of the selected player to "normal flying speed"*rate. If no player is selected, modify your speed.\n #rate may range from 0.1 to 50.'),
('modify speed swim', 1, 'Syntax: .modify speed swim #rate\r\n\r\nModify the swim speed of the selected player to "normal swim speed"*rate. If no player is selected, modify your speed.\r\n\r\n #rate may range from 0.1 to 50.'),
('modify speed walk', 1, 'Syntax: .modify speed bwalk #rate\r\n\r\nModify the speed of the selected player while running to "normal walk speed"*rate. If no player is selected, modify your speed.\r\n\r\n #rate may range from 0.1 to 50.'),
('modify talentpoints', 1, 'Syntax: .modify talentpoints #amount\r\n\r\nSet free talent points for selected character or character\'s pet. It will be reset to default expected at next levelup/login/quest reward.'),
('morph', 2, 'Syntax: .morph #displayid\r\n\r\nChange your current model id to #displayid.'),
('modify arenapoints', 1, 'Syntax: .modify arenapoints #value\r\nAdd $amount arena points to the selected player.');
UPDATE `command` SET `help`='Syntax: .modify speed $speedtype #rate\r\n\r\nModify the running speed of the selected player to "normal base run speed"= 1. If no player is selected, modify your speed.\r\n\r\n$speedtypes may be fly, all, walk, backwalk, or swim.\r\n\r\n #rate may range from 0.1 to 50.' WHERE `name`='modify speed' LIMIT 1;
UPDATE `warden_checks` SET `comment`='Swimming_FallCalc - movement state' WHERE `id`=15;
UPDATE `warden_checks` SET `comment`='CreateMovementStatus' WHERE `id`=72;
UPDATE `warden_checks` SET `comment`='OnStartSwim  OnSplineStartSwim - movement state' WHERE `id`=170;
UPDATE `warden_checks` SET `comment`='DefaultServerLogin - account name' WHERE `id`=198;
UPDATE `warden_checks` SET `comment`='Login Checksum - authentication process' WHERE `id`=320;
UPDATE `warden_checks` SET `comment`='CalcFallStartElevation - (some kind of wall climb)' WHERE `id`=329;
UPDATE `warden_checks` SET `comment`='Code injection at 0x40100A' WHERE `id`=381;
UPDATE `warden_checks` SET `comment`='Login State - (May be false positive)' WHERE `id`=437;
-- Earthen Power
DELETE FROM `spell_script_names` WHERE `spell_id`=59566;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(59566,'spell_sha_earthen_power');
DELETE FROM `spell_script_names` WHERE `spell_id` = 46485;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(46485,'spell_item_greatmothers_soulcatcher');
