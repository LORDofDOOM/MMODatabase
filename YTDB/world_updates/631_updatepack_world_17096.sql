# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 630_FIX_17015 631_FIX_17096 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('631_FIX_17096');

# TC
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13,2,75886,0,0,31,0,3,40683,0,0,0, '', 'Blazing Aura can only target Living Embers');

# Chaosua
DELETE FROM `conditions` WHERE `SourceGroup`=9709 AND `SourceEntry`=1;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 9709, 1, 0, 0, 9, 0, 12648, 0, 0, 0, 0, '', 'Show gossip option only if player has taken quest 12648'),
(15, 9709, 1, 0, 0, 2, 0, 38699, 1, 0, 1, 0, '', 'Show gossip option only if player has no item 38699'),
(15, 9709, 1, 0, 1, 9, 0, 12649, 0, 0, 0, 0, '', 'Show gossip option only if player has taken quest 12649'),
(15, 9709, 1, 0, 1, 2, 0, 38699, 1, 0, 1, 0, '', 'Show gossip option only if player no item 38699'),
(15, 9709, 1, 0, 2, 9, 0, 12661, 0, 0, 0, 0, '', 'Show gossip option only if player has taken quest 12661'),
(15, 9709, 1, 0, 2, 2, 0, 38699, 1, 0, 1, 0, '', 'Show gossip option only if player no item 38699'),
(15, 9709, 1, 0, 3, 9, 0, 12669, 0, 0, 0, 0, '', 'Show gossip option only if player has taken quest 12669'),
(15, 9709, 1, 0, 3, 2, 0, 38699, 1, 0, 1, 0, '', 'Show gossip option only if player no item 38699'),
(15, 9709, 1, 0, 4, 9, 0, 12676, 0, 0, 0, 0, '', 'Show gossip option only if player has taken quest 12676'),
(15, 9709, 1, 0, 4, 2, 0, 38699, 1, 0, 1, 0, '', 'Show gossip option only if player no item 38699'),
(15, 9709, 1, 0, 5, 9, 0, 12677, 0, 0, 0, 0, '', 'Show gossip option only if player has taken quest 12677'),
(15, 9709, 1, 0, 5, 2, 0, 38699, 1, 0, 1, 0, '', 'Show gossip option only if player no item 38699'),
(15, 9709, 1, 0, 6, 9, 0, 12713, 0, 0, 0, 0, '', 'Show gossip option only if player has taken quest 12713'),
(15, 9709, 1, 0, 6, 2, 0, 38699, 1, 0, 1, 0, '', 'Show gossip option only if player no item 38699');
DELETE FROM gossip_menu_option WHERE menu_id=9732 AND id=1;
DELETE FROM locales_gossip_menu_option WHERE menu_id=9732 AND id=1;
DELETE FROM `conditions` WHERE `SourceGroup`=9732;
INSERT INTO `conditions` VALUES 
(15, 9732, 0, 0, 0, 9, 0, 12663, 0, 0, 0, 0, '', 'Show gossip option only if player has taken quest 12663'),
(15, 9732, 0, 0, 1, 9, 0, 12664, 0, 0, 0, 0, '', 'Show gossip option only if player has taken quest 12664');

# Fix
UPDATE `game_event` SET `start_time` = '2012-11-04 00:01:00' WHERE `evententry` = 5;
UPDATE `game_event` SET `start_time` = '2012-12-02 00:01:00' WHERE `evententry` = 3;
UPDATE `game_event` SET `start_time` = '2013-01-06 00:01:00' WHERE `evententry` = 4;
UPDATE `game_event` SET `start_time` = '2012-11-18 01:00:00' WHERE `evententry` = 41;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(5865, 176080, 369, 1, 1, 4.58065, 28.2097, 7.01107, 1.5708, 0, 0, 1, 0, 120, 0, 1),
(5866, 176081, 369, 1, 1, 4.52807, 8.43529, 7.01107, 1.5708, 0, 0, 1, 0, 120, 0, 1),
(5863, 176082, 369, 1, 1, -45.4005, 2492.79, 6.9886, 1.5708, 0, 0, 1, 0, 120, 0, 1),
(16394, 176083, 369, 1, 1, -45.4007, 2512.15, 6.9886, 1.5708, 0, 0, 1, 0, 120, 0, 1),
(5864, 176084, 369, 1, 1, -45.3934, 2472.93, 6.9886, -1.5708, 0, 0, 1, 0, 120, 0, 1),
(15363, 176085, 369, 1, 1, 4.49883, -11.3475, 7.01107, 1.5708, 0, 0, 1, 0, 120, 0, 1);
UPDATE `creature_transport` SET `TransOffsetX`=45.50927,`TransOffsetY`=6.679555,`TransOffsetZ`=30.17881,`TransOffsetO`=5.445427 WHERE `guid`=36;
UPDATE `transports` SET `name`= 'Alliance gunship patrolling above Icecrown (\"The Skybreaker\")' WHERE `entry`=192242;
UPDATE `transports` SET `name`= 'Horde gunship patrolling above Icecrown (\"Orgrim''s Hammer\")' WHERE `entry`=192241;
INSERT IGNORE INTO `conditions`(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`Comment`) VALUES
(13,1,11757,31,5,144050,'Digging for Cobalt targets Gordunni Trap');
DELETE FROM `creature_template_addon` WHERE `entry`=30236;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`auras`) VALUES
(30236,0,0,0x0,0x1,'');
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=30236;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`,`user_type`) VALUES
(30236,57573,1,0);
UPDATE `creature_template` SET `npcflag`=0x1000000,`resistance2`=4394,`resistance4`=1 WHERE `entry`=30236;

# NeatElves
UPDATE `quest_template` SET `NextQuestId`='2623' WHERE `id`=2623;
UPDATE `quest_template` SET `NextQuestId`='0' WHERE `id`=2681;
UPDATE `quest_template` SET `NextQuestId`='0' WHERE `id`=2801;
UPDATE creature SET MovementType=0 WHERE id=23210;
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('14469', '2', 'Solid Chest (Eastern Plaguelands)'),
('14470', '2', 'Solid Chest (Western Plaguelands)'),
('14471', '5', 'Solid Chest (Burning Steppes)');
DELETE FROM `gameobject` WHERE `guid` = 9842;
DELETE FROM `gameobject` WHERE `guid` = 10387;
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
('16224', '14469', '0', 'Solid Chest (Eastern Plaguelands)'),
('1491', '14469', '0', 'Solid Chest (Eastern Plaguelands)'),
('1492', '14469', '0', 'Solid Chest (Eastern Plaguelands)'),
('1494', '14469', '0', 'Solid Chest (Eastern Plaguelands)'),
('1506', '14469', '0', 'Solid Chest (Eastern Plaguelands)'),
#
('1673', '14470', '0', 'Solid Chest (Western Plaguelands)'),
('1674', '14470', '0', 'Solid Chest (Western Plaguelands)'),
('1488', '14470', '0', 'Solid Chest (Western Plaguelands)'),
('6287', '14470', '0', 'Solid Chest (Western Plaguelands)'),
('8238', '14470', '0', 'Solid Chest (Western Plaguelands)'),
#
('1667', '14471', '0', 'Solid Chest (Burning Steppes)'),
('1669', '14471', '0', 'Solid Chest (Burning Steppes)'),
('14412', '14471', '0', 'Solid Chest (Burning Steppes)'),
('13578', '14471', '0', 'Solid Chest (Burning Steppes)'),
('11606', '14471', '0', 'Solid Chest (Burning Steppes)'),
('9073', '14471', '0', 'Solid Chest (Burning Steppes)'),
('7934', '14471', '0', 'Solid Chest (Burning Steppes)'),
('7855', '14471', '0', 'Solid Chest (Burning Steppes)'),
('7530', '14471', '0', 'Solid Chest (Burning Steppes)'),
('3516', '14471', '0', 'Solid Chest (Burning Steppes)'),
('4529', '14471', '0', 'Solid Chest (Burning Steppes)'),
('6216', '14471', '0', 'Solid Chest (Burning Steppes)'),
('2113', '14471', '0', 'Solid Chest (Burning Steppes)'),
('98', '14471', '0', 'Solid Chest (Burning Steppes)');
delete from quest_start_scripts where id = 10406;
insert into quest_start_scripts (id, command, datalong) values
(10406, 15, 35679);
update quest_template set StartScript=10406 where id=10406;
DELETE FROM `creature` WHERE `guid` = 84136;
UPDATE creature_template SET MovementType=0 WHERE entry=20802;
DELETE FROM `creature_template_addon` WHERE `entry`=30444;
INSERT INTO `creature_template_addon`(`entry`,`auras`) VALUES
(30444,'56763');

# Kores
UPDATE `quest_template` SET `PrevQuestId` = 0, `NextQuestId` = 0 WHERE `id` = 8743;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 8743;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 8743;
UPDATE `quest_template` SET `NextQuestId` = 8745 WHERE `id` = 8742;
UPDATE `quest_template` SET `PrevQuestId` = 8742 WHERE `id` = 8745;

# Fix
UPDATE `creature` SET `spawnMask`=15 WHERE `id` IN (40091, 40081);
DELETE FROM `creature_template_addon` WHERE `entry` IN (39863, 40142);

# NeatElves
UPDATE `item_template` SET `HolidayId`=201 WHERE `entry` IN (46396,46397,31880,31881,18598,18597);
DELETE FROM `gameobject` WHERE `guid` = 44543;
DELETE FROM `gameobject` WHERE `guid` = 44542;
DELETE FROM `gameobject` WHERE `guid` = 44541;
DELETE FROM `gameobject` WHERE `guid` = 44540;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(44538, 187867, 571, 1, 1, 2904.16, 6484.63, 79.1326, 1.55334, 0, 0, 0.700908, 0.713252, 300, 100, 1),
(44539, 187872, 571, 1, 1, 3048.71, 6490.66, 82.6696, -2.11185, 0, 0, -0.870356, 0.492423, 300, 100, 1);
UPDATE `creature_template` SET `flags_extra`='2' WHERE `entry` in (25610,25624);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(118294, 25610, 571, 1, 1, 0, 0, 3097.94, 6294.8, 94.9317, 1.13446, 300, 0, 0, 5914, 0, 0),
(118293, 25610, 571, 1, 1, 0, 0, 3036.93, 6289.76, 98.5008, 0.610864, 300, 0, 0, 5914, 0, 0),
(118292, 25610, 571, 1, 1, 0, 0, 3083.03, 6341.7, 91.8157, 1.18682, 300, 0, 0, 5914, 0, 0),
(118291, 25610, 571, 1, 1, 0, 0, 2994.85, 6406.29, 90.1489, 0.279252, 300, 0, 0, 5914, 0, 0),
(118290, 25610, 571, 1, 1, 0, 0, 3014.57, 6431.05, 83.886, 2.86234, 300, 0, 0, 5914, 0, 0),
(118289, 25610, 571, 1, 1, 0, 0, 3045.21, 6447.86, 82.6696, 1.67551, 300, 0, 0, 5914, 0, 0),
(127824, 25610, 571, 1, 1, 0, 0, 3072.88, 6426.79, 85.6129, -1.41372, 300, 0, 0, 5914, 0, 0),
(127825, 25610, 571, 1, 1, 0, 0, 3119.33, 6440.66, 84.7426, 0.471238, 300, 0, 0, 5914, 0, 0),
(22481, 25610, 571, 1, 1, 0, 0, 3094.07, 6384.63, 87.0827, -1.18682, 300, 0, 0, 5914, 0, 0),
(22295, 25610, 571, 1, 1, 0, 0, 3042.4, 6518.98, 82.6325, 2.58308, 300, 0, 0, 5914, 0, 0),
(22291, 25610, 571, 1, 1, 0, 0, 2977.8, 6513.84, 74.7137, 1.5708, 300, 0, 0, 5914, 0, 0),
(22217, 25610, 571, 1, 1, 0, 0, 2963.95, 6580.52, 58.1911, 1.43117, 300, 0, 0, 5914, 0, 0),
(22181, 25610, 571, 1, 1, 0, 0, 2933.73, 6492.83, 79.0831, 1.309, 300, 0, 0, 5914, 0, 0),
(22163, 25610, 571, 1, 1, 0, 0, 2904.16, 6484.63, 79.1326, 1.55334, 300, 0, 0, 5914, 0, 0),
(22149, 25610, 571, 1, 1, 0, 0, 2857.29, 6451.8, 79.1326, 2.09439, 300, 0, 0, 5914, 0, 0),
(22113, 25610, 571, 1, 1, 0, 0, 2905.7, 6463.04, 80.7531, 2.47837, 300, 0, 0, 5914, 0, 0),
(22110, 25610, 571, 1, 1, 0, 0, 2975.61, 6369.02, 97.5912, 0.733038, 300, 0, 0, 5914, 0, 0),
(22013, 25610, 571, 1, 1, 0, 0, 3048.71, 6490.66, 82.6696, -2.11185, 300, 0, 0, 5914, 0, 0),
(22012, 25610, 571, 1, 1, 0, 0, 2987.07, 6472.87, 78.6757, -1.0821, 300, 0, 0, 5914, 0, 0),
(21844, 25610, 571, 1, 1, 0, 0, 3070.96, 6451.74, 83.3537, 0.820303, 300, 0, 0, 5914, 0, 0);
REPLACE INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
('2000000294', 'Freedom at last! I must return to Warsong Hold at once!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2000000295', 'I am forever indebted to you, friend.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2000000296', 'Thank you, friend.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2000000297', 'You have my thanks, stranger.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id`=9732 AND `id`=1;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 9732 AND `id` = 1;
REPLACE INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000027, 'Let''s go.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000028, 'The People of Westfall salute $N, a brave and valiant defender of freedom.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

# Ravie
UPDATE `quest_template` SET `SpecialFlags`='0' WHERE `id`='9545';
DELETE FROM `creature_addon` WHERE `guid`='59718';
DELETE FROM `creature` WHERE `guid`='81454';
UPDATE `creature_template` SET `unit_flags` = `unit_flags` | 768 WHERE `entry`='21504';
UPDATE `creature_template` SET `flags_extra` = `flags_extra`|2 WHERE `entry` = 21504;

# NeatElves
DELETE FROM `spell_scripts` WHERE `id` = 29395;
REPLACE INTO `spell_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`) VALUES
(29395, 0, 10, 17035, 200000);
UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE `guid`=70804;
UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE `guid`=70783;
UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE `guid`=70813;
UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE `guid`=70777;
UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE `guid`=70741;
UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE `guid`=70811;
UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE `guid`=70812;
UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE `guid`=70818;
DELETE FROM `creature_addon` WHERE `guid` = 70835;
DELETE FROM `creature_addon` WHERE `guid` = 70790;
DELETE FROM `creature_addon` WHERE `guid` = 70789;
DELETE FROM `creature_addon` WHERE `guid` = 70784;
DELETE FROM `creature_addon` WHERE `guid` = 70773;
DELETE FROM `creature_addon` WHERE `guid` = 70810;
UPDATE creature SET position_x = '-2871.585205', position_y = '6355.595703', position_z = '87.491272', orientation = '3.285670' WHERE guid = '70789';
UPDATE creature SET position_x = '-2884.708252', position_y = '6374.736328', position_z = '81.824265', orientation = '0.553269' WHERE guid = '70777';
UPDATE creature SET position_x = '-2928.191406', position_y = '6416.012695', position_z = '82.323212', orientation = '1.838185' WHERE guid = '70783';
UPDATE `creature_template_addon` SET `auras`=NULL WHERE `entry`=17147;
UPDATE `creature_addon` SET `auras`=NULL WHERE `guid` in (70813,70777,70783);
DELETE FROM `creature_addon` WHERE `guid` = 70834;
DELETE FROM `creature_addon` WHERE `guid` = 70832;
DELETE FROM `creature_addon` WHERE `guid` = 70831;
DELETE FROM `creature_addon` WHERE `guid` = 70830;
DELETE FROM `creature_addon` WHERE `guid` = 70823;
DELETE FROM `creature_addon` WHERE `guid` = 70822;
DELETE FROM `creature_addon` WHERE `guid` = 70817;
DELETE FROM `creature_addon` WHERE `guid` = 70776;
DELETE FROM `creature_addon` WHERE `guid` = 70741;
DELETE FROM `creature_addon` WHERE `guid` = 70775;
DELETE FROM `creature_addon` WHERE `guid` = 70774;
DELETE FROM `creature_addon` WHERE `guid` = 70841;
UPDATE `creature_template` SET `gossip_menu_id`='34435' WHERE `entry` in (35244,35251,35253,35249,35254,35258,35243,35246,35247,35248,35250,35259,35252);
UPDATE `creature_template_addon` SET `auras`='55848 22650' WHERE `entry` in (35244,35251,35253,35249,35254,35258,35243,35246,35247,35248,35250,35259,35252,34435,35260,34483,35256,34484,34478,34476,34481,34479,34477,35261,34480,34482);
Delete from creature where id=23089;

# NeatElves
SET @GUID = 150448;
#
REPLACE INTO `gameobject` VALUES (@GUID+0, 179871, 529, 1, 1, 1185.71, 1185.24, -56.36, 2.56, 0, 0, 0.022338351, 0.999750467, 180, 100, 1);
REPLACE INTO `gameobject` VALUES (@GUID+1, 179904, 529, 1, 1, 1185.71, 1185.24, -56.36, 2.56, 0, 0, 0.022338351, 0.999750467, 180, 100, 1);
REPLACE INTO `gameobject` VALUES (@GUID+2, 179905, 529, 1, 1, 1185.71, 1185.24, -56.36, 2.56, 0, 0, 0.022338351, 0.999750467, 180, 100, 1);
REPLACE INTO `gameobject` VALUES (@GUID+3, 179871, 529, 1, 1, 990.75, 1008.18, -42.60, 2.43, 0, 0, 0.021204161, 0.999775166, 180, 100, 1);
REPLACE INTO `gameobject` VALUES (@GUID+4, 179904, 529, 1, 1, 990.75, 1008.18, -42.60, 2.43, 0, 0, 0.021204161, 0.999775166, 180, 100, 1);
REPLACE INTO `gameobject` VALUES (@GUID+5, 179905, 529, 1, 1, 990.75, 1008.18, -42.60, 2.43, 0, 0, 0.021204161, 0.999775166, 180, 100, 1);
REPLACE INTO `gameobject` VALUES (@GUID+6, 179871, 529, 1, 1, 817.66, 843.34, -56.54, 3.01, 0, 0, 0.026264184, 0.999655036, 180, 100, 1);
REPLACE INTO `gameobject` VALUES (@GUID+7, 179904, 529, 1, 1, 817.66, 843.34, -56.54, 3.01, 0, 0, 0.026264184, 0.999655036, 180, 100, 1);
REPLACE INTO `gameobject` VALUES (@GUID+8, 179905, 529, 1, 1, 817.66, 843.34, -56.54, 3.01, 0, 0, 0.026264184, 0.999655036, 180, 100, 1);
REPLACE INTO `gameobject` VALUES (@GUID+9, 179871, 529, 1, 1, 807.46, 1189.16, 11.92, 5.44, 0, 0, 0.047455126, 0.998873370, 180, 100, 1);
REPLACE INTO `gameobject` VALUES (@GUID+10, 179904, 529, 1, 1, 807.46, 1189.16, 11.92, 5.44, 0, 0, 0.047455126, 0.998873370, 180, 100, 1);
REPLACE INTO `gameobject` VALUES (@GUID+11, 179905, 529, 1, 1, 807.46, 1189.16, 11.92, 5.44, 0, 0, 0.047455126, 0.998873370, 180, 100, 1);
REPLACE INTO `gameobject` VALUES (@GUID+12, 179871, 529, 1, 1, 1146.62, 816.94, -98.49, 6.0, 0, 0, 0.053555973, 0.998564849, 180, 100, 1);
REPLACE INTO `gameobject` VALUES (@GUID+13, 179904, 529, 1, 1, 1146.62, 816.94, -98.49, 6.0, 0, 0, 0.053555973, 0.998564849, 180, 100, 1);
REPLACE INTO `gameobject` VALUES (@GUID+14, 179905, 529, 1, 1, 1146.62, 816.94, -98.49, 6.0, 0, 0, 0.053555973, 0.998564849, 180, 100, 1);
SET @GUID = 150464;
#
REPLACE INTO `gameobject` VALUES (@GUID+0, 179871, 566, 1, 1, 2050.4599609375, 1372.26000976563, 1194.56005859375, 0.907571, 0, 0, 0.438371, 0.898794, 180, 100, 1);
REPLACE INTO `gameobject` VALUES (@GUID+1, 179904, 566, 1, 1, 2050.4599609375, 1372.26000976563, 1194.56005859375, 0.907571, 0, 0, 0.438371, 0.898794, 180, 100, 1);
REPLACE INTO `gameobject` VALUES (@GUID+2, 179905, 566, 1, 1, 2050.4599609375, 1372.26000976563, 1194.56005859375, 0.907571, 0, 0, 0.438371, 0.898794, 180, 100, 1);
REPLACE INTO `gameobject` VALUES (@GUID+3, 179871, 566, 1, 1, 2046.32995605469, 1748.81005859375, 1190.03002929688, 0.907571, 0, 0, 0.438371, 0.898794, 180, 100, 1);
REPLACE INTO `gameobject` VALUES (@GUID+4, 179904, 566, 1, 1, 2046.32995605469, 1748.81005859375, 1190.03002929688, 0.907571, 0, 0, 0.438371, 0.898794, 180, 100, 1);
REPLACE INTO `gameobject` VALUES (@GUID+5, 179905, 566, 1, 1, 2046.32995605469, 1748.81005859375, 1190.03002929688, 0.907571, 0, 0, 0.438371, 0.898794, 180, 100, 1);
REPLACE INTO `gameobject` VALUES (@GUID+6, 179871, 566, 1, 1, 2283.3798828125, 1748.81005859375, 1189.7099609375, 0.907571, 0, 0, 0.438371, 0.898794, 180, 100, 1);
REPLACE INTO `gameobject` VALUES (@GUID+7, 179904, 566, 1, 1, 2283.3798828125, 1748.81005859375, 1189.7099609375, 0.907571, 0, 0, 0.438371, 0.898794, 180, 100, 1);
REPLACE INTO `gameobject` VALUES (@GUID+8, 179905, 566, 1, 1, 2283.3798828125, 1748.81005859375, 1189.7099609375, 0.907571, 0, 0, 0.438371, 0.898794, 180, 100, 1);
REPLACE INTO `gameobject` VALUES (@GUID+9, 179871, 566, 1, 1, 2302.68994140625, 1391.27001953125, 1197.77001953125, 0.907571, 0, 0, 0.438371, 0.898794, 180, 100, 1);
REPLACE INTO `gameobject` VALUES (@GUID+10, 179904, 566, 1, 1, 2302.68994140625, 1391.27001953125, 1197.77001953125, 0.907571, 0, 0, 0.438371, 0.898794, 180, 100, 1);
REPLACE INTO `gameobject` VALUES (@GUID+11, 179905, 566, 1, 1, 2302.68994140625, 1391.27001953125, 1197.77001953125, 0.907571, 0, 0, 0.438371, 0.898794, 180, 100, 1);
UPDATE creature_template SET MovementType=0 WHERE entry in (20865, 20864);
#guid 53882,92175
delete from creature where id in (20864, 20865) and position_y between 0 and 1;
DELETE FROM `creature_addon` WHERE `guid` = 53882;
DELETE FROM `creature_addon` WHERE `guid` = 92175;
UPDATE creature_template SET AIName='EventAI' WHERE entry=16863;
DELETE FROM creature_ai_scripts WHERE creature_id=16863;
INSERT INTO creature_ai_scripts VALUES 
('1686301','16863','1','0','100','0','1000','1000','0','0','11','33908','0','0','0','0','0','0','0','0','0','0','Deranged Helboar - Cast Burning Spikes on Spawn'),
('1686302','16863','2','0','100','0','30','0','0','0','11','8599','0','0','1','-106','0','0','0','0','0','0','Deranged Helboar - Cast Enrage When Below 30% HP'),
('1686303','16863','6','0','100','0','0','0','0','0','11','37689','0','2','0','0','0','0','0','0','0','0','Deranged Helboar - Cast Tell dog I just died! on Death');
UPDATE `creature_addon` SET `bytes1`='8', `emote`='0' WHERE `guid` IN (70804, 70811, 70812, 70818);
UPDATE `game_event` SET `start_time` = '2010-11-01 10:00:01', `end_time` = '2010-12-07 11:00:01' WHERE `evententry` = 48;
UPDATE `creature_template` SET `MovementType`='0' WHERE `entry`=16550;
UPDATE `quest_template` SET `CompleteScript`='9312' WHERE `id`=9312;
REPLACE INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
('2000000029', 'By the seven Ata''mal crystals! Others have survived the crash! Zhanaa, is that you? It is so good to see you again!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2000000030', 'And who do we have here? No doubt th... crzzzk ...ade this communication I give you greetings fro... psshzzzk... Azure Watch.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2000000031', 'Judging by your signal, we put you... ust southeast of the larger part of the island we crashed onto. Cross the Crystalbrook River to ge... kshhhhk zzzt. Sorry, there''s a lot of stat...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2000000298', 'This is great news! Your efforts have indeed saved us, $n!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
DELETE FROM `quest_end_scripts` WHERE `id` in (9312);
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
('9312', '0', '10', '16550', '60000', '0', '-4189.86', '-13738.5', '75.2542', '0.909129'),
('9312', '1', '0', '0', '0', '2000000029', '0', '0', '0', '0'),
('9312', '10', '0', '0', '0', '2000000030', 0, '0', '0', '0'),
('9312', '20', '0', '0', '0', '2000000031', '0', '0', '0', '0'),
('9312', '35', '0', '0', '0', '2000000298', '0', '0', '0', '0');
DELETE FROM `gameobject` WHERE `guid` = 9405;
DELETE FROM `gameobject` WHERE `guid` = 53319;
DELETE FROM `gameobject` WHERE `guid` = 53324;
DELETE FROM `gameobject` WHERE `guid` = 53323;
DELETE FROM `gameobject` WHERE `guid` = 53327;
DELETE FROM `gameobject` WHERE `guid` = 53325;
DELETE FROM `gameobject` WHERE `guid` = 53318;
DELETE FROM `gameobject` WHERE `guid` = 53322;
DELETE FROM `gameobject` WHERE `guid` = 53326;
DELETE FROM `gameobject` WHERE `guid` = 53320;
DELETE FROM `gameobject` WHERE `guid` = 1255;
UPDATE `gameobject` SET `position_z`='-0.003652' WHERE `guid`=1241;
UPDATE `creature` SET `spawntimesecs`='300' WHERE `id`=19449;
UPDATE creature SET spawndist=0, MovementType=0 WHERE guid=62341;
DELETE FROM waypoint_data WHERE id =62341;
DELETE FROM waypoint_data WHERE id =66026;
UPDATE `creature` SET `spawntimesecs`='300', `spawndist`='0', `MovementType`='0' WHERE `id`=21047;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(60409, 21047, 530, 1, 1, 0, 0, 3578.19, 7223.22, 138.612, 1.20746, 300, 0, 0, 5060, 2933, 2),
(60408, 21047, 530, 1, 1, 0, 0, 3603.72, 7214.6, 138.596, 2.59038, 300, 0, 0, 5060, 2933, 2),
(60414, 21047, 530, 1, 1, 0, 0, 3616.61, 7210.66, 137.245, 0.926712, 300, 0, 0, 5060, 2933, 2);
DELETE FROM waypoint_data WHERE id =60414;
DELETE FROM waypoint_data WHERE id =60408;
DELETE FROM waypoint_data WHERE id =60409;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(60402, 21046, 530, 1, 1, 0, 0, 3536.76, 7188.01, 155.488, 2.79042, 300, 5, 0, 6326, 0, 1),
(60403, 21046, 530, 1, 1, 0, 0, 3549.42, 7241.37, 139.86, 5.21168, 300, 10, 0, 6326, 0, 1),
(60416, 21046, 530, 1, 1, 0, 0, 3514.51, 7206.31, 139.782, 4.22964, 300, 0, 0, 6326, 0, 2),
(60404, 21046, 530, 1, 1, 0, 0, 3580.16, 7228.1, 138.262, 4.38078, 300, 0, 0, 6326, 0, 0),
(60405, 21046, 530, 1, 1, 0, 0, 3540.1, 7208.69, 140.147, 2.82733, 300, 10, 0, 6326, 0, 1),
(60418, 21046, 530, 1, 1, 0, 0, 3591.02, 7188.98, 138.358, 2.081, 300, 0, 0, 6326, 0, 2),
(60415, 21046, 530, 1, 1, 0, 0, 3593.69, 7215.44, 138.112, 1.27934, 300, 0, 0, 6326, 0, 2),
(60411, 21046, 530, 1, 1, 0, 0, 3630.08, 7223.25, 136.887, 1.6057, 300, 0, 0, 6326, 0, 2),
(60419, 21046, 530, 1, 1, 0, 0, 3609.74, 7136.49, 140.571, 6.00902, 300, 0, 0, 6326, 0, 2),
(60406, 21046, 530, 1, 1, 0, 0, 3615.42, 7110.99, 154.512, 1.39316, 300, 5, 0, 6326, 0, 1),
(60420, 21046, 530, 1, 1, 0, 0, 3686.1, 7154.7, 141.855, 0.390907, 300, 0, 0, 6326, 0, 2),
(60410, 21046, 530, 1, 1, 0, 0, 3666.55, 7177.22, 141.181, 3.56047, 300, 0, 0, 6326, 0, 0);
DELETE FROM waypoint_data WHERE id =60411;
DELETE FROM waypoint_data WHERE id =60415;
DELETE FROM waypoint_data WHERE id =60416;
DELETE FROM waypoint_data WHERE id =60418;
DELETE FROM waypoint_data WHERE id =60419;
DELETE FROM waypoint_data WHERE id =60420;
UPDATE `creature` SET `spawntimesecs`='300' WHERE `id`=21325;
DELETE FROM `creature` WHERE `guid` = 60396;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(60435, 21325, 530, 1, 1, 0, 0, 3421.69, 7215.73, 146.901, 4.54564, 300, 0, 0, 20240, 2933, 2);
DELETE FROM waypoint_data WHERE id =60435;
UPDATE creature_template SET InhabitType =3 WHERE entry =20237;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(77737, 20237, 530, 1, 1, 0, 0, 308.202, 1469.31, -7.4402, 1.23918, 360, 0, 0, 59140, 0, 0),
(77740, 20237, 530, 1, 1, 0, 0, 267.502, 1449.24, -14.3756, 4.23579, 360, 0, 0, 59140, 0, 2);
DELETE FROM waypoint_data WHERE id =77740;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(58909, 16580, 530, 1, 1, 0, 0, -229.83, 1027.49, 54.411, 3.76991, 180, 0, 0, 9156, 0, 2),
(58910, 16580, 530, 1, 1, 0, 0, 197.406, 2781.6, 115.975, 3.5511, 180, 0, 0, 9156, 0, 2),
(58355, 16580, 530, 1, 1, 0, 0, 104.333, 2746.89, 94.101, 0.619104, 180, 0, 0, 9156, 0, 2),
(59493, 16580, 530, 1, 1, 0, 0, -1339.9, 2370.44, 89.0748, 4.01511, 180, 0, 0, 9156, 0, 2),
(59504, 16580, 530, 1, 1, 0, 0, 106.711, 2745.01, 93.9653, 0.588003, 300, 5, 0, 9156, 0, 1),
(59457, 16580, 530, 1, 1, 0, 0, 200.023, 2782.73, 116.564, 3.53969, 300, 5, 0, 9156, 0, 1),
(58798, 16580, 530, 1, 1, 0, 0, -1326, 2377.83, 88.981, 0.488692, 180, 0, 0, 9156, 0, 2);
DELETE FROM waypoint_data WHERE id in (58909,58910,58355,59493,58798);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(59736, 16912, 530, 1, 1, 0, 0, 266.606, 3799.05, 176.967, 1.58601, 600, 0, 0, 5400, 0, 2),
(59805, 16912, 530, 1, 1, 0, 0, 309.205, 3786.74, 187.05, 2.16313, 600, 5, 0, 5400, 0, 1);
DELETE FROM waypoint_data WHERE id =59736;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(58377, 18977, 530, 1, 1, 0, 0, 146.974, 1718.26, 38.3065, 3.00328, 120, 0, 0, 9958, 0, 2),
(58376, 18977, 530, 1, 1, 0, 0, -418.684, 1847.7, 81.0938, 4.63013, 120, 0, 0, 9958, 0, 2),
(58401, 18977, 530, 1, 1, 0, 0, -84.6836, 1881.47, 74.695, 5.68932, 120, 0, 0, 9958, 0, 2),
(60396, 18977, 530, 1, 1, 0, 0, -548.751, 1783.9, 58.7928, 5.75795, 120, 0, 0, 9958, 0, 2);
DELETE FROM waypoint_data WHERE id =60396;
DELETE FROM waypoint_data WHERE id =58376;
DELETE FROM waypoint_data WHERE id =58401;
DELETE FROM waypoint_data WHERE id =58377;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(59181, 16831, 530, 1, 1, 0, 0, -267.561, 1030.86, 54.4068, 5.63741, 180, 0, 0, 2871, 0, 2),
(58329, 16831, 530, 1, 1, 0, 0, -265.926, 1032.88, 54.4051, 5.34071, 180, 0, 0, 2871, 0, 2),
(21829, 16582, 530, 1, 1, 0, 0, -233.293, 1030.99, 54.4062, 4.2237, 600, 0, 0, 9156, 0, 2),
(91897, 16582, 530, 1, 1, 0, 0, -230.368, 1030.42, 54.4091, 3.89208, 600, 0, 0, 9156, 0, 2);
DELETE FROM waypoint_data WHERE id IN (58329,59181,21829,91897);

# Fix_heroic_only
DELETE FROM `creature_loot_template` WHERE (`entry`=24560) AND (`item`=35275);
DELETE FROM `creature_loot_template` WHERE (`entry`=24723) AND (`item`=35275);
DELETE FROM `creature_loot_template` WHERE (`entry`=24744) AND (`item`=35275);

UPDATE `transports` SET `name`= 'Alliance gunship patrolling above Icecrown (\"The Skybreaker\")' WHERE `entry`=192242;
UPDATE `transports` SET `name`= 'Horde gunship patrolling above Icecrown (\"Orgrim''s Hammer\")' WHERE `entry`=192241;
INSERT IGNORE INTO `creature`(`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`) VALUES
(57954,36209,571,4068.82,-3811,223.4),
(57963,36209,571,4073.2,-3734.354,222.6634),
(57964,36209,571,3923.109,-3763.967,165.362);
INSERT IGNORE INTO `creature`(`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES
(51439,34387,571,4181.482,-461.453,120.728,1.398097);
INSERT IGNORE INTO `creature`(`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES
(51518,34386,571,4120.996,-329.486,121.443817,0.299253);
INSERT IGNORE INTO `creature`(`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES
(51565,34490,571,3325.193,1026.451,138.1712,2.062184);
INSERT IGNORE INTO `creature`(`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES
(51569,34489,571,4382.502,6066.199,0.724562,3.571894);
INSERT IGNORE INTO `creature`(`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES
(51576,34381,571,4022.666,-3777.682,115.443588,4.857019);
INSERT IGNORE INTO `creature`(`guid`,`id`,`map`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES
(51593,22838,530,-2075.759,8559.336,23.027,4.857019),
(51601,22866,530,9506.086,-7329.313,14.397272,0),
(51612,22831,530,-3320.860,4925.095,-101.1,0),
(51615,22829,530,203.587,8550.11,22.3256,0),
(51622,22839,530,-781.294,6943.52,33.3344,0);
INSERT IGNORE INTO `game_event_creature`(`evententry`,`guid`) SELECT 10,`guid` FROM `creature` 
WHERE `id` IN (22905,22851,22838,22866,22831,22829,22872,22839,14450,22819,14451,34365,34387,34386,34490,34489,34381,36209);
UPDATE `creature_template` SET `resistance2`=4394,`resistance4`=1 WHERE `entry`=30236;
UPDATE `gameobject_template` SET `flags`=32,`faction`=114 WHERE `entry` IN (192657,192658,192769,192770,192767,192768,192771,192772);

# Kores
REPLACE INTO npc_text(ID, text0_0, text0_1, lang0, prob0, em0_0, em0_1, em0_2, em0_3, em0_4, em0_5, text1_0, text1_1, lang1, prob1, em1_0, em1_1, em1_2, em1_3, em1_4, em1_5, text2_0, text2_1, lang2, prob2, em2_0, em2_1, em2_2, em2_3, em2_4, em2_5, text3_0, text3_1, lang3, prob3, em3_0, em3_1, em3_2, em3_3, em3_4, em3_5, text4_0, text4_1, lang4, prob4, em4_0, em4_1, em4_2, em4_3, em4_4, em4_5, text5_0, text5_1, lang5, prob5, em5_0, em5_1, em5_2, em5_3, em5_4, em5_5, text6_0, text6_1, lang6, prob6, em6_0, em6_1, em6_2, em6_3, em6_4, em6_5, text7_0, text7_1, lang7, prob7, em7_0, em7_1, em7_2, em7_3, em7_4, em7_5) VALUES
(16605, 'Stormwind''s two most popular inns are located in the Trade and Dwarven Districts: The Gilded Rose and The Golden Keg.', 'Stormwind''s two most popular inns are located in the Trade and Dwarven Districts: The Gilded Rose and The Golden Keg.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(16606, 'The Golden Keg is in the northen part of the Dwarven District, right by the fountain.', 'The Golden Keg is in the northen part of the Dwarven District, right by the fountain.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(16609, 'Byron Oakhorn can be found in earternmost Stormwind, through the gates at the back of Old Town.', 'Byron Oakhorn can be found in earternmost Stormwind, through the gates at the back of Old Town.', 7, 1, 0, 0, 0, 0, 0, 0, 'If you need to house your pet while you''re training another, then you should talk to Jenova Stoneshield over in the Dwarven District.', 'If you need to house your pet while you''re training another, then you should talk to Jenova Stoneshield over in the Dwarven District.', 7, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(16619, 'The Park...?$B$BIt''s in ruins. Haven''t you heard? The great dragon Deathwing soared over Stormwind and destroyed it in passing.$B$BNot sure why he didn''t level everything, honestly, but we all thank the Light he didn''t.', 'The Park...?$B$BIt''s in ruins. Haven''t you heard? The great dragon Deathwing soared over Stormwind and destroyed it in passing.$B$BNot sure why he didn''t level everything, honestly, but we all thank the Light he didn''t.', 7, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(16620, 'The keep is in northren Stormwind.$B$BJust follow the canals north and you''ll eventually come across a drawbridge... that leads into the keep''s courtyard.', 'The keep is in northren Stormwind.$B$BJust follow the canals north and you''ll eventually come across a drawbridge... that leads into the keep''s courtyard.', 7, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(16630, 'The Champions'' Hall is located in the southeastern end of Old Town.$B$BThe Honor and Conquest quartermasters can be found there.', 'The Champions'' Hall is located in the southeastern end of Old Town.$B$BThe Honor and Conquest quartermasters can be found there.', 7, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(16632, 'There are stables just beyond Old Town''s southeast gates. You can find a riding trainer and a horse breeder there.', 'There are stables just beyond Old Town''s southeast gates. You can find a riding trainer and a horse breeder there.', 7, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(16634, 'Do you know of the Gryphon Roost off the Trade District, where the Flight Master may be found?$B$BA pair of Wildhammer dwarves raises and sells gryphons there, and can even train you to ride the beasts.', 'Do you know of the Gryphon Roost off the Trade District, where the Flight Master may be found?$B$BA pair of Wildhammer dwarves raises and sells gryphons there, and can even train you to ride the beasts.', 7, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(17200, 'The Earthen Ring have set up portals to various regions of the world on a small lake islet northwest of Stormwind Keep.\r\n\r\nThere are representatives from the Baradin Wardens there as well, offering transport to Tol Barad.', 'The Earthen Ring have set up portals to various regions of the world on a small lake islet northwest of Stormwind Keep.\r\n\r\nThere are representatives from the Baradin Wardens there as well, offering transport to Tol Barad.', 7, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `npc_text` SET `ID`=18966,`prob0`=1,`text0_0`='Yes. He has been called upon to help the aspects with their efforts at Wyrmrest. He wishes to aid them in cleansing Azeroth of Deathwing''s menace.$b$bMay the Light guide his path.',`text0_1`='',`lang0`=0,`em0_0`=273,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=18076,`prob0`=1,`text0_0`='Good leather in the marshes, if you''ve the guts for it. Lots of crocolisks. Thinkin'' my brother and I''ll stay a while.\
\
Somethin'' I can help you with?',`text0_1`='',`lang0`=0,`em0_0`=396,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=18072,`prob0`=1,`text0_0`='I used ta be in the Explorers'' League, ye know.\
\
But then I realized the only thing I really cared ta look for was GEMS.\
\
Big, sparklin'', colorful, valuable gems... oh, how I love ye!',`text0_1`='',`lang0`=0,`em0_0`=396,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=17789,`prob0`=1,`text0_0`='This chest must have been resting here for millenia.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=16620,`prob0`=1,`text0_0`='The keep is in northren Stormwind.$B$BJust follow the canals north and you''ll eventually come across a drawbridge... that leads into the keep''s courtyard.',`text0_1`='The keep is in northren Stormwind.$B$BJust follow the canals north and you''ll eventually come across a drawbridge... that leads into the keep''s courtyard.',`lang0`=7,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;

# WP
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('66026', '1', '2406.73', '5923.89', '151.522', '0', '3.17831');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('66026', '2', '2388.58', '5929.09', '151.713', '0', '3.02123');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('66026', '3', '2379.33', '5926.61', '151.99', '0', '3.73752');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('66026', '4', '2371.18', '5921.88', '152.501', '0', '3.34715');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('66026', '5', '2363.96', '5921.46', '152.593', '0', '3.06284');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('66026', '6', '2357.77', '5924.23', '152.558', '0', '2.29469');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('66026', '7', '2353.57', '5931.46', '152.456', '0', '1.80696');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('66026', '8', '2350.8', '5944.7', '152.315', '0', '1.63103');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('66026', '9', '2350.33', '5959.02', '152.23', '0', '1.30588');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('66026', '10', '2353.71', '5967.35', '152.474', '0', '0.857416');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('66026', '11', '2388.17', '5991.51', '151.4', '0', '0.385392');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('66026', '12', '2402.41', '5994.39', '150.571', '0', '0.004474');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('66026', '13', '2413.02', '5993.75', '151.275', '0', '5.99785');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('66026', '14', '2434.76', '5986.39', '153.334', '0', '5.60987');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('66026', '15', '2443.83', '5978.13', '153.706', '0', '5.37661');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('66026', '16', '2455.16', '5960', '153.319', '0', '5.06245');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('66026', '17', '2459.71', '5944.92', '153.528', '0', '4.70039');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('66026', '18', '2457.53', '5934.21', '153.465', '0', '4.07286');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('66026', '19', '2453.45', '5931.97', '153.277', '0', '3.32202');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('66026', '20', '2437.62', '5932.77', '152.344', '0', '2.90161');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('66026', '21', '2427.69', '5934.46', '151.928', '0', '3.81111');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('66026', '22', '2416.51', '5927.71', '151.787', '0', '3.68469');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60414', '1', '3603.66', '7196.44', '138.701', '0', '2.93142');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60414', '2', '3595.64', '7197.24', '138.323', '55000', '2.92906');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60414', '3', '3604.57', '7197.61', '138.72', '0', '0.288551');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60414', '4', '3612.32', '7202.37', '138.364', '0', '0.889381');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60414', '5', '3616.86', '7210.92', '137.031', '5000', '0.887025');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60414', '6', '3616.86', '7210.92', '137.031', '10000', '0.887025');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60414', '7', '3616.86', '7210.92', '137.031', '10000', '0.887025');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60414', '8', '3616.86', '7210.92', '137.031', '0', '0.887025');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60408', '1', '3599', '7217.99', '138.465', '0', '1.39411');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60408', '2', '3599.24', '7239.79', '137.287', '25000', '1.39332');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60408', '3', '3599.66', '7217.57', '138.475', '0', '5.53961');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60408', '4', '3614.44', '7207.63', '137.639', '0', '1.00765');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60408', '5', '3623.81', '7222.06', '136.939', '0', '1.52052');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60408', '6', '3619.59', '7227.93', '136.967', '0', '6.27779');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60408', '7', '3620.88', '7228.51', '136.942', '25000', '0.424998');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60408', '8', '3624.25', '7222.35', '136.93', '0', '4.21062');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60408', '9', '3615.32', '7208.89', '137.418', '0', '2.43955');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60408', '10', '3606.45', '7212.2', '138.596', '0', '2.11361');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60409', '1', '3576.47', '7209.9', '137.748', '0', '5.44819');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60409', '2', '3579.81', '7207.4', '137.765', '55000', '5.55264');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60409', '3', '3577.09', '7210.64', '137.776', '0', '1.39788');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60409', '4', '3578.52', '7224.53', '138.53', '30000', '1.12');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60411', '1', '3623.83', '7221.99', '136.939', '0', '4.22225');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60411', '2', '3617.45', '7211.85', '136.89', '0', '5.15687');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60411', '3', '3620.62', '7201.56', '138.635', '0', '0.317609');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60411', '4', '3632.94', '7205.01', '138.347', '0', '5.73921');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60411', '5', '3658.01', '7190.08', '141.269', '25000', '5.6112');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60411', '6', '3643.47', '7205.17', '138.948', '0', '2.73821');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60411', '7', '3627.88', '7201.46', '139.603', '0', '2.58898');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60411', '8', '3615.03', '7208.43', '137.497', '0', '0.803774');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60411', '9', '3624.78', '7222.32', '136.925', '0', '0.977347');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60411', '10', '3629.62', '7221.2', '136.935', '0', '0.919228');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60411', '11', '3629.72', '7222.8', '136.906', '25000', '1.19097');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60415', '1', '3563.65', '7230.52', '138.465', '0', '0.775728');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60415', '2', '3567.02', '7234.85', '138.334', '25000', '0.932808');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60415', '3', '3563.79', '7229.9', '138.488', '0', '5.76693');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60415', '4', '3594.78', '7215.32', '138.074', '0', '4.09797');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60415', '5', '3590.83', '7206.05', '137.965', '55000', '4.20793');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60415', '6', '3630.08', '7223.25', '136.887', '0', '1.6057');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60416', '1', '3509.24', '7205', '140.298', '55000', '0.359473');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60416', '2', '3538.78', '7213.91', '140.623', '0', '5.93501');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60416', '3', '3569.67', '7194.26', '138.632', '0', '0.107874');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60416', '4', '3577.03', '7195.46', '137.986', '55000', '0.176985');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60416', '5', '3571.78', '7195.18', '138.358', '0', '2.37531');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60416', '6', '3537.43', '7215.13', '140.673', '0', '3.44424');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60418', '1', '3594.08', '7184.31', '138.782', '0', '4.39692');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60418', '2', '3582.3', '7153.91', '140.444', '0', '4.63961');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60418', '3', '3580.73', '7136.98', '140.444', '0', '3.96735');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60418', '4', '3577.65', '7134.57', '140.444', '25000', '3.80399');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60418', '5', '3581.01', '7137.47', '140.444', '0', '1.53419');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60418', '6', '3582.91', '7162.07', '140.273', '0', '1.05038');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60418', '7', '3594.1', '7184.06', '138.803', '0', '2.09575');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60418', '8', '3591.02', '7188.98', '138.358', '55000', '2.081');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60419', '1', '3603.23', '7137.36', '140.446', '0', '3.86289');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60419', '2', '3588.73', '7122.47', '140.446', '0', '4.04354');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60419', '3', '3588.73', '7122.47', '140.446', '5000', '4.04354');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60419', '4', '3588.73', '7122.47', '140.446', '3000', '4.04354');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60419', '5', '3588.73', '7122.47', '140.446', '10000', '4.04354');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60419', '6', '3588.73', '7122.47', '140.446', '5000', '4.04354');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60419', '7', '3606.15', '7137.2', '140.446', '0', '5.71958');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60419', '8', '3609.74', '7136.49', '140.571', '30000', '6.00902');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60419', '9', '3609.74', '7136.49', '140.571', '3000', '6.00902');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60420', '1', '3703', '7154.17', '141.185', '0', '0.111796');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60420', '2', '3704.57', '7156.81', '141.364', '20000', '1.07548');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60420', '3', '3683.98', '7156.05', '142.083', '0', '2.88975');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60420', '4', '3667.85', '7161.64', '142.005', '20000', '2.57245');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60420', '5', '3682.33', '7155.86', '142.202', '0', '6.07376');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60435', '1', '3414.06', '7157.87', '155.235', '0', '4.98202');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60435', '2', '3433.69', '7099.58', '153.854', '0', '4.44482');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60435', '3', '3411.15', '7044.36', '156.68', '0', '2.9015');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60435', '4', '3349.78', '7048.44', '159.621', '0', '2.2402');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60435', '5', '3340', '7116.82', '163.36', '0', '1.51528');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60435', '6', '3362.38', '7192.85', '155.493', '0', '1.73991');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60435', '7', '3358.87', '7215.83', '156.112', '0', '2.35428');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60435', '8', '3323.85', '7276.28', '145.87', '0', '0.927997');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60435', '9', '3359.19', '7303.45', '141.544', '0', '0.394715');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60435', '10', '3382.93', '7303.24', '142.595', '0', '5.71658');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60435', '11', '3424.74', '7285.92', '144.528', '0', '4.90526');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60435', '12', '3424.94', '7219.78', '145.799', '0', '4.9219');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('77740', '1', '267.502', '1449.24', '-14.3756', '10000', '4.23579');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('77740', '2', '267.502', '1449.24', '-14.3756', '60000', '4.23579');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('77740', '3', '267.502', '1449.24', '-14.3756', '3000', '4.23579');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('77740', '4', '288.012', '1484.46', '-13.3656', '2000', '1.08004');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('77740', '5', '288.012', '1484.46', '-13.3656', '60000', '1.08004');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('77740', '6', '288.012', '1484.46', '-13.3656', '3000', '1.08004');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58909', '1', '-229.83', '1027.49', '54.411', '300000', '3.76991');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58909', '2', '-229.83', '1027.49', '54.411', '300000', '3.76991');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58910', '1', '185.19', '2775.84', '112.769', '0', '3.30145');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58910', '2', '171.609', '2774.11', '110.251', '0', '3.06897');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58910', '3', '163.967', '2774.68', '109.271', '0', '2.35504');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58910', '4', '160.27', '2783.5', '111.335', '0', '1.52409');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58910', '5', '161.356', '2783.45', '111.389', '0', '5.62465');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58910', '6', '163.834', '2775', '109.295', '0', '5.9129');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58910', '7', '183.773', '2775.6', '112.454', '0', '0.382112');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58910', '8', '190.437', '2778.04', '114.16', '0', '0.711979');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58910', '9', '203.579', '2785.63', '117.474', '0', '0.113505');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58910', '10', '222.558', '2785.56', '120.782', '0', '0.231315');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58910', '11', '233.203', '2788.23', '123.632', '0', '0.583173');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58910', '12', '238.277', '2792.03', '125.372', '0', '1.27118');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58910', '13', '240.56', '2799.09', '127.096', '0', '1.76284');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58910', '14', '239.933', '2803.95', '128.206', '0', '3.05561');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58910', '15', '237.049', '2803.04', '127.744', '0', '4.11511');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58910', '16', '234.936', '2793.61', '124.832', '0', '4.1371');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58910', '17', '228.326', '2787.28', '122.301', '0', '3.46166');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58910', '18', '211.914', '2785.85', '118.773', '0', '3.39568');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58910', '19', '197.298', '2781.47', '115.939', '0', '3.55433');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '1', '117.085', '2754.24', '97.6922', '0', '0.493913');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '2', '124.265', '2758.72', '99.8201', '0', '0.353325');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '3', '132.687', '2760.59', '101.828', '0', '1.07184');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '4', '134.018', '2767.03', '103.409', '0', '1.65932');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '5', '128.817', '2776.32', '104.408', '0', '1.82717');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '6', '131.057', '2779.85', '105.524', '0', '5.39916');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '7', '131.581', '2769.87', '103.744', '0', '4.57999');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '8', '130.934', '2763.22', '102.034', '0', '4.33603');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '9', '129.331', '2759.99', '101.117', '0', '3.79804');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '10', '106.658', '2745.43', '93.9882', '0', '4.03444');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '11', '79.8127', '2712.78', '85.5255', '0', '4.07318');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '12', '66.969', '2695.45', '82.3415', '0', '4.28995');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '13', '60.8477', '2682.65', '80.2212', '0', '5.56308');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '14', '68.158', '2680.34', '80.3072', '0', '0.010653');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '15', '118.639', '2674.62', '83.4106', '0', '5.71893');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '16', '122.003', '2668.44', '83.5886', '0', '4.86205');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '17', '121.856', '2664.05', '83.8964', '0', '4.11395');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '18', '110.982', '2652.41', '81.0365', '0', '3.74902');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '19', '106.926', '2645.07', '79.4854', '0', '0.167602');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '20', '111.446', '2647.12', '80.3296', '0', '0.974206');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '21', '115.04', '2656.9', '82.269', '0', '1.21924');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '22', '117.93', '2663.95', '83.6945', '0', '1.80437');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '23', '114.149', '2674.64', '83.2567', '0', '2.57406');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '24', '67.6503', '2678.17', '80.0797', '0', '2.83324');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '25', '57.3845', '2678.93', '79.6371', '0', '1.9104');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '26', '56.9846', '2683.62', '80.0578', '0', '1.32423');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '27', '66.4244', '2688.93', '81.3967', '0', '0.937026');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '28', '73.1245', '2699.1', '83.282', '0', '0.918962');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '29', '80.619', '2714.3', '85.7457', '0', '0.81686');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '30', '90.8483', '2723.56', '88.4294', '0', '1.34857');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58355', '31', '104.694', '2746.94', '93.9747', '0', '0.583416');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59493', '1', '-1334.61', '2361.44', '88.952', '0', '5.37918');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59493', '2', '-1326.63', '2356.51', '88.9537', '0', '0.208895');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59493', '3', '-1319.9', '2360.74', '88.9537', '0', '1.12231');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59493', '4', '-1316.27', '2374.49', '88.5711', '0', '0.920527');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59493', '5', '-1311.84', '2380.79', '86.4663', '0', '0.664372');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59493', '6', '-1305.65', '2385.17', '83.8705', '0', '0.456242');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59493', '7', '-1300.34', '2386.99', '81.7855', '60000', '0.310943');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59493', '8', '-1314.47', '2380.93', '87.1559', '0', '3.93477');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59493', '9', '-1317.66', '2376', '88.5791', '0', '3.76365');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59493', '10', '-1321.38', '2374.12', '88.873', '0', '2.67745');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59493', '11', '-1323.15', '2376.17', '88.8695', '30000', '1.57395');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59493', '12', '-1322.26', '2373.85', '88.9045', '0', '6.13705');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59493', '13', '-1318.56', '2374.65', '88.7012', '0', '0.595281');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59493', '14', '-1313.77', '2380.42', '87.0546', '0', '0.635337');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59493', '15', '-1307.63', '2384.66', '84.5135', '0', '0.314894');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59493', '16', '-1299.73', '2387.06', '81.5404', '60000', '0.301542');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59493', '17', '-1313.26', '2383.31', '86.4903', '0', '3.0418');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59493', '18', '-1322.3', '2388.47', '88.4279', '0', '3.30647');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59493', '19', '-1327.29', '2387.27', '88.8594', '0', '3.81463');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59493', '20', '-1331.12', '2383.82', '88.9524', '0', '4.56861');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59493', '21', '-1333.59', '2377.26', '88.9512', '0', '4.14292');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59493', '22', '-1340.06', '2370.25', '88.9512', '5000', '4.09501');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58798', '1', '-1326', '2377.83', '88.981', '20000', '0.488692');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58798', '2', '-1326', '2377.83', '88.981', '5000', '0.488692');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59736', '1', '296.593', '3812.2', '166.866', '5000', '0.89604');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59736', '2', '278.562', '3799.43', '174.341', '0', '3.39203');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59736', '3', '254.613', '3795.56', '180.252', '0', '3.57111');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59736', '4', '244.686', '3788', '183.952', '0', '4.36907');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59736', '5', '243.414', '3773.33', '185.054', '0', '5.03402');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59736', '6', '250.251', '3760.86', '183.248', '0', '5.26942');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59736', '7', '254.6', '3754.41', '179.452', '0', '5.30869');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59736', '8', '296.357', '3704.58', '179.279', '0', '5.68725');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59736', '9', '333.027', '3689.41', '179.279', '0', '6.13964');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59736', '10', '358.843', '3689.22', '179.279', '0', '0.335545');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59736', '11', '405.334', '3713.95', '179.279', '0', '0.804324');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59736', '12', '428.31', '3738.71', '180.12', '0', '0.355076');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59736', '13', '434.829', '3740.89', '183.512', '0', '0.140708');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59736', '14', '471.896', '3737.58', '185.936', '0', '6.17649');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59736', '15', '524.585', '3732.89', '184.812', '0', '0.373184');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59736', '16', '532.705', '3739.35', '185.795', '0', '1.00072');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59736', '17', '537.17', '3748.46', '186.823', '5000', '1.24419');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59736', '18', '523.617', '3730.31', '184.739', '0', '2.99798');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59736', '19', '435.559', '3741.62', '183.559', '0', '3.67185');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59736', '20', '427.597', '3737.42', '179.845', '0', '3.95146');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59736', '21', '391.187', '3704.16', '179.279', '0', '3.45273');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59736', '22', '344.63', '3684.85', '179.279', '0', '2.5778');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59736', '23', '300.681', '3702.1', '179.278', '0', '2.44271');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59736', '24', '254.7', '3752.27', '179.342', '0', '1.45075');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59736', '25', '254.312', '3762.82', '183.541', '0', '1.66281');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59736', '26', '249.374', '3780.52', '184.945', '0', '1.01093');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59736', '27', '250.775', '3792.2', '182.04', '0', '0.295429');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59736', '28', '266.842', '3799.05', '176.7', '0', '0.292288');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60396', '1', '-548.751', '1783.9', '58.7928', '5000', '5.75795');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60396', '2', '-539.332', '1778.15', '54.9166', '0', '5.8272');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60396', '3', '-484.651', '1762', '47.9689', '0', '5.79421');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60396', '4', '-477.387', '1759.1', '44.3182', '0', '5.41656');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60396', '5', '-470.217', '1751.53', '44.7839', '0', '5.46761');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60396', '6', '-428.524', '1713.26', '48.1163', '0', '5.57364');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60396', '7', '-420.193', '1706.26', '46.9401', '0', '5.12125');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60396', '8', '-415.045', '1697.1', '49.8067', '0', '5.2202');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60396', '9', '-402.634', '1677.48', '49.7941', '0', '5.07648');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60396', '10', '-399.692', '1633.82', '52.2305', '0', '4.41911');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60396', '11', '-411.174', '1581.67', '43.1752', '0', '5.00029');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60396', '12', '-393.939', '1535.16', '36.96', '0', '5.32466');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60396', '13', '-376.504', '1505.15', '29.9051', '0', '4.86206');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60396', '14', '-354.074', '1464.56', '21.603', '0', '4.97751');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60396', '15', '-347.61', '1441.91', '12.3608', '0', '4.8118');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60396', '16', '-347.823', '1428.78', '9.38403', '0', '4.71755');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60396', '17', '-359.393', '1413.81', '8.10839', '0', '4.70341');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60396', '18', '-357.893', '1401.74', '2.89555', '0', '4.85524');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60396', '19', '-354.706', '1392.34', '7.13694', '0', '5.00443');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60396', '20', '-339.185', '1336.58', '16.0035', '0', '5.14423');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60396', '21', '-317.356', '1281.35', '28.2195', '0', '5.22826');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60396', '22', '-309.27', '1254.1', '30.9437', '0', '5.5864');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60396', '23', '-296.135', '1230.56', '33.484', '10000', '5.14186');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('60396', '24', '-296.135', '1230.56', '33.484', '1000', '5.14186');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58376', '1', '-418.684', '1847.7', '81.0938', '5000', '4.63013');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58376', '2', '-417.971', '1837.02', '76.8658', '0', '4.90382');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58376', '3', '-405.054', '1790.16', '65.1598', '0', '5.05305');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58376', '4', '-392.992', '1761.18', '59.1604', '0', '5.17478');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58376', '5', '-374.273', '1730.57', '55.6068', '0', '5.33971');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58376', '6', '-368.784', '1726.27', '53.5258', '0', '5.15672');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58376', '7', '-364.108', '1717.45', '55.1667', '0', '5.18717');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58376', '8', '-350.564', '1680.91', '54.143', '0', '5.08114');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58376', '9', '-331.799', '1633.08', '59.0785', '0', '4.87615');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58376', '10', '-321.523', '1609.61', '57.9399', '0', '4.72692');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58376', '11', '-320.148', '1574.2', '49.4685', '0', '4.46696');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58376', '12', '-330.446', '1537.61', '42.7065', '0', '4.75206');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58376', '13', '-329.748', '1495.1', '32.3995', '0', '4.73556');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58376', '14', '-327.481', '1456.15', '21.774', '0', '4.81017');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58376', '15', '-326.607', '1425.59', '14.9244', '0', '4.56278');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58376', '16', '-329.437', '1419.7', '10.0179', '0', '4.68137');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58376', '17', '-331.679', '1412.19', '9.89117', '0', '4.4214');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58376', '18', '-333.99', '1404.04', '12.5504', '0', '4.46067');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58376', '19', '-333.571', '1366.64', '13.2063', '0', '4.97039');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58376', '20', '-324.498', '1332.78', '18.0149', '0', '4.97902');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58376', '21', '-310.87', '1297.21', '24.4017', '0', '5.09683');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58376', '22', '-291.883', '1264.71', '31.3752', '0', '5.12432');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58376', '23', '-286.375', '1256.75', '33.0537', '0', '4.9107');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58376', '24', '-278.524', '1241.67', '35.2826', '10000', '4.79053');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58376', '25', '-278.524', '1241.67', '35.2826', '1000', '4.79053');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58401', '1', '-84.6836', '1881.47', '74.695', '5000', '5.68932');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58401', '2', '-73.7038', '1873.04', '71.3422', '0', '4.95937');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58401', '3', '-76.5257', '1856.16', '70.1537', '0', '4.20382');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58401', '4', '-103.248', '1816.39', '69.5072', '0', '4.22503');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58401', '5', '-118.046', '1774.96', '66.762', '0', '4.21538');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58401', '6', '-140.647', '1742', '65.1115', '0', '4.29314');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58401', '7', '-147.946', '1704.46', '59.5284', '0', '4.72325');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58401', '8', '-158.767', '1669.02', '50.4069', '0', '4.47191');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58401', '9', '-162.744', '1661.78', '47.0241', '0', '4.72324');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58401', '10', '-162.393', '1651.14', '45.2469', '0', '4.74287');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58401', '11', '-163.436', '1639.86', '45.6848', '0', '4.59758');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58401', '12', '-165.127', '1618.18', '43.3727', '0', '4.91252');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58401', '13', '-165.351', '1590.24', '37.7744', '0', '4.65253');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58401', '14', '-163.907', '1571.56', '34.868', '0', '4.75856');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58401', '15', '-166.539', '1564.38', '30.8405', '0', '4.32267');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58401', '16', '-168.3', '1557.99', '32.0816', '0', '4.45225');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58401', '17', '-180.223', '1519.54', '27.9732', '0', '4.38943');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58401', '18', '-189.469', '1478.23', '24.0397', '0', '4.84967');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58401', '19', '-186.49', '1440.5', '19.931', '0', '4.81284');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58401', '20', '-184.815', '1406.19', '17.5609', '0', '4.70681');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58401', '21', '-198.149', '1359.6', '13.7377', '0', '4.61648');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58401', '22', '-200.635', '1351.7', '13.5938', '0', '5.24716');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58401', '23', '-196.219', '1344.72', '14.9146', '0', '5.0783');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58401', '24', '-185.332', '1314.39', '19.0676', '0', '4.75314');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58401', '25', '-184.324', '1279.34', '28.113', '0', '4.52302');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58401', '26', '-190.785', '1251.4', '35.008', '10000', '4.31097');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58401', '27', '-190.785', '1251.4', '35.008', '1000', '4.31097');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '1', '146.974', '1718.26', '38.3065', '5000', '3.00328');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '2', '136.14', '1718.34', '39.668', '0', '3.40148');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '3', '88.8104', '1705.05', '41.6697', '0', '4.14289');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '4', '82.1218', '1703.73', '39.8766', '0', '4.10676');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '5', '76.4519', '1694.45', '41.9352', '0', '4.22457');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '6', '59.2275', '1658.92', '40.4723', '0', '4.31881');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '7', '37.7368', '1630.22', '40.4495', '0', '4.05964');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '8', '11.3192', '1609.2', '38.5375', '0', '3.72192');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '9', '2.02095', '1602.75', '37.2254', '0', '3.75333');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '10', '-5.44604', '1595.57', '39.46', '0', '4.32667');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '11', '-8.80662', '1587.53', '38.9472', '0', '4.29918');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '12', '-16.944', '1575.29', '37.4055', '0', '4.35337');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '13', '-27.1672', '1539.12', '29.9471', '0', '4.27881');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '14', '-31.0452', '1516.04', '23.8711', '0', '4.24347');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '15', '-33.1563', '1508.03', '19.6868', '0', '3.88218');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '16', '-37.6349', '1504.89', '18.1432', '0', '3.87637');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '17', '-43.8562', '1499.88', '22.6268', '0', '3.5308');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '18', '-56.4263', '1489.25', '24.203', '0', '3.82926');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '19', '-60.6662', '1482.24', '18.5646', '0', '3.25199');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '20', '-62.2762', '1471.64', '18.1834', '0', '3.84104');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '21', '-83.3243', '1453.51', '18.1357', '0', '3.82533');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '22', '-90.7173', '1449.74', '14.4253', '0', '3.5151');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '23', '-95.1895', '1443.93', '13.583', '0', '3.68946');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '24', '-99.6358', '1440.52', '16.7588', '0', '3.76642');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '25', '-122.879', '1421.33', '18.8397', '0', '3.83711');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '26', '-144.426', '1392.7', '14.4535', '0', '4.13949');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '27', '-158.298', '1370.54', '11.8894', '0', '4.2141');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '28', '-168.949', '1348.08', '8.04313', '0', '4.273');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '29', '-172.158', '1341.32', '11.6357', '0', '4.26907');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '30', '-175.913', '1311.72', '17.8113', '0', '4.60287');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '31', '-186.56', '1284.94', '26.9644', '0', '4.34761');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '32', '-200.465', '1251.87', '34.7689', '10000', '4.34368');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58377', '33', '-200.465', '1251.87', '34.7689', '1000', '4.34368');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58329', '1', '-265.926', '1032.88', '54.4051', '300000', '5.34071');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58329', '2', '-265.926', '1032.88', '54.4051', '300000', '5.34071');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59181', '1', '-267.561', '1030.86', '54.4068', '300000', '5.63741');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59181', '2', '-267.561', '1030.86', '54.4068', '300000', '5.63741');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('21829', '1', '-233.293', '1030.99', '54.4062', '300000', '4.2237');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('21829', '2', '-233.293', '1030.99', '54.4062', '300000', '4.2237');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('91897', '1', '-230.368', '1030.42', '54.4091', '300000', '3.89208');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('91897', '2', '-230.368', '1030.42', '54.4091', '300000', '3.89208');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83309', '4', '1636.63', '8506.09', '-7.37743', '0', '2.5525');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83309', '2', '1670.9', '8499.21', '-7.93905', '0', '3.48791');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83309', '1', '1681.44', '8486.82', '-8.04557', '0', '2.15902');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83309', '5', '1619.45', '8519.54', '-5.86774', '0', '1.97995');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83309', '6', '1612.97', '8530.24', '-7.36203', '0', '1.67757');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83309', '3', '1656.29', '8499.72', '-6.64107', '0', '2.82818');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83289', '4', '1481', '8617.21', '-22.3273', '5000', '3.21949');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83289', '3', '1543.33', '8612.67', '-32.8239', '0', '3.15666');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83289', '2', '1610.06', '8604.58', '-28.9488', '5000', '0.132874');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83289', '1', '1526.74', '8614.7', '-31.361', '0', '6.18436');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83291', '20', '1677.69', '8601.25', '13.2337', '0', '0.384308');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83291', '19', '1643.32', '8548.32', '4.94223', '0', '4.29952');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83291', '18', '1666.42', '8598.06', '10.9684', '0', '4.07929');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83291', '17', '1692.64', '8624.2', '12.4444', '0', '4.02667');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83291', '16', '1710.17', '8632.53', '9.90444', '0', '3.5515');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83291', '15', '1759.86', '8624.35', '4.21319', '0', '3.07005');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83291', '14', '1771.95', '8607.58', '0.194636', '0', '2.10794');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83291', '13', '1783.26', '8543.53', '-10.0934', '0', '1.82441');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83291', '12', '1803.62', '8518.21', '-17.3096', '0', '2.48643');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83291', '11', '1813.69', '8506.08', '-20.6506', '0', '2.24846');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83291', '10', '1805.39', '8477.9', '-19.7164', '0', '1.45049');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83291', '9', '1825.31', '8446.1', '-17.7737', '0', '5.32408');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83291', '8', '1804.65', '8478.49', '-20.0929', '0', '5.03522');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83291', '7', '1813.78', '8505.47', '-20.7223', '0', '4.55846');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83291', '6', '1807.17', '8512.76', '-17.1461', '0', '5.68079');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83291', '5', '1784.37', '8545.48', '-10.2831', '0', '5.29595');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83291', '4', '1772.25', '8605.72', '-0.240625', '0', '4.80045');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83291', '3', '1761.72', '8623.65', '4.05317', '0', '5.27277');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83291', '2', '1743.58', '8627.63', '6.22378', '0', '6.06995');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83291', '1', '1704.64', '8629.95', '11.4306', '0', '0.077358');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('16459', '8', '1893.63', '1584.73', '88.2344', '5000', '2.6878');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('16459', '7', '1904.48', '1587.06', '86.3556', '0', '3.13783');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('16459', '6', '1922.04', '1586.48', '83.6347', '0', '2.95876');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('16459', '5', '1938.35', '1579.9', '81.948', '0', '3.29491');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('16459', '4', '1951.04', '1587.19', '81.5231', '0', '3.64363');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('16459', '3', '1968.3', '1586.97', '82.1956', '0', '3.36752');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('16459', '2', '1972.51', '1594.35', '82.3245', '0', '4.33198');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('16459', '1', '1972.64', '1595.26', '82.325', '30000', '4.48871');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('226', '25', '2008.44', '1478', '69.2912', '0', '4.6913');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('226', '24', '2008.91', '1517.57', '75.1868', '0', '4.61904');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('226', '23', '2005.03', '1528.91', '76.1858', '0', '4.85231');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('226', '22', '2000.68', '1557.37', '78.3015', '0', '4.71486');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('226', '21', '1985.21', '1580.47', '81.6659', '0', '4.95598');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('226', '20', '1988.21', '1580.99', '81.4986', '0', '3.83757');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('226', '19', '1994.32', '1596.89', '81.5804', '0', '4.58557');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('226', '18', '1988.38', '1602.39', '82.3258', '0', '4.82119');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('226', '17', '1990.74', '1608.39', '81.8524', '0', '3.89869');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('226', '16', '1994.46', '1609.71', '80.6842', '0', '2.93422');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('226', '15', '2005.95', '1607.29', '75.285', '0', '2.94207');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('226', '14', '2019.69', '1604.92', '72.013', '0', '3.03632');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('226', '13', '2044.41', '1601.97', '70.767', '0', '2.98134');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('226', '12', '2059.89', '1592.67', '69.8003', '0', '2.69938');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('226', '11', '2066.95', '1582.56', '72.7916', '0', '1.93284');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('226', '10', '2055.48', '1569.07', '76.6675', '0', '0.660492');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('226', '9', '2044.79', '1559.33', '77.3526', '0', '0.764311');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('226', '8', '2034.23', '1542.4', '78.9033', '0', '0.792704');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('226', '7', '2034.93', '1512.63', '77.4423', '0', '1.66999');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('226', '6', '2026.54', '1483.65', '74.5369', '0', '1.30478');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('226', '5', '2023.36', '1471.91', '70.0838', '0', '1.09273');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('226', '4', '2010.56', '1450.87', '63.3095', '0', '1.22703');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('226', '3', '2011.69', '1419.43', '59.1989', '10000', '5.1336');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('226', '2', '2006.37', '1434.88', '60.6175', '0', '4.96082');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('226', '1', '2006.05', '1454.44', '64.1648', '0', '4.63095');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('7846', '19', '1966.66', '1484.12', '83.4741', '50000', '3.17639');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('7846', '18', '1978.23', '1488.28', '85.0991', '0', '3.67512');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('7846', '17', '1987.96', '1493.4', '82.1718', '0', '3.36489');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('7846', '16', '2000.68', '1496.71', '73.0049', '0', '3.50311');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('7846', '15', '2005.73', '1501.61', '72.9365', '0', '4.05996');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('7846', '14', '2007.71', '1522.96', '75.7106', '0', '4.90033');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('7846', '13', '2003.49', '1535.84', '76.7181', '0', '5.06134');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('7846', '12', '1998.18', '1550.03', '78.1416', '0', '5.24198');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('7846', '11', '1993.59', '1557.52', '78.3874', '0', '5.4022');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('7846', '10', '1975.87', '1575.03', '79.1618', '0', '5.40299');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('7846', '9', '1967.7', '1583.2', '81.7346', '0', '6.00382');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('7846', '8', '1950.07', '1584.96', '81.1354', '0', '0.082702');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('7846', '7', '1936.24', '1578.17', '82.4023', '0', '0.740866');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('7846', '6', '1921.22', '1557.97', '86.371', '0', '1.0401');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('7846', '5', '1918.2', '1546.97', '86.9222', '0', '1.39007');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('7846', '4', '1918.64', '1531.43', '86.9021', '0', '1.85345');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('7846', '3', '1933.58', '1520.06', '88.0768', '0', '2.61451');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('7846', '2', '1959.61', '1505.71', '88.0769', '0', '2.631');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('7846', '1', '1970.38', '1496.6', '86.5755', '0', '1.58563');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('53373', '5', '1894.6', '1587.11', '88.0001', '5000', '2.89772');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('53373', '4', '1910.97', '1588.5', '85.4029', '0', '3.1192');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('53373', '3', '1926.58', '1584', '83.058', '0', '2.7697');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('53373', '2', '1923.33', '1571.39', '85.1808', '0', '0.876885');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('53373', '1', '1908.16', '1561.51', '87.9566', '0', '0.576077');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57947', '11', '2161.92', '2246.4', '74.9703', '0', '3.90837');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57947', '10', '2182.62', '2264.59', '76.4681', '0', '0.739291');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57947', '9', '2160.36', '2243.19', '74.9836', '0', '0.806049');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57947', '8', '2172.75', '2227.6', '75.4232', '0', '2.32108');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57947', '7', '2171.88', '2201.96', '72.7954', '0', '1.68177');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57947', '6', '2174.51', '2190.22', '71.7051', '0', '2.72556');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57947', '5', '2178.66', '2193.56', '73.1546', '0', '0.609699');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57947', '4', '2172.49', '2190.35', '71.3903', '0', '0.613626');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57947', '3', '2173.53', '2224.8', '75.4765', '0', '4.68264');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57947', '2', '2159.64', '2245.04', '74.9887', '0', '5.35807');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57947', '1', '2161.25', '2246.41', '75.0865', '1000', '3.86508');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57852', '14', '2269.38', '2151.9', '80.2231', '0', '5.36308');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57852', '13', '2253.71', '2167.8', '82.4061', '4000', '2.30163');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57852', '12', '2272.61', '2147.79', '78.2218', '0', '2.45871');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57852', '11', '2279.06', '2143.55', '84.1136', '0', '2.41158');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57852', '10', '2300.79', '2122.24', '82.4831', '0', '2.84277');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57852', '9', '2316.53', '2139.44', '85.9809', '0', '4.51252');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57852', '8', '2313.38', '2151.85', '88.2726', '0', '5.61993');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57852', '7', '2304.87', '2154.86', '90.0565', '0', '2.78464');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57852', '6', '2314.07', '2151.61', '88.02', '0', '2.21522');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57852', '5', '2316.56', '2138.54', '85.7692', '0', '1.75184');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57852', '4', '2300', '2122.41', '82.435', '0', '0.517196');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57852', '3', '2279.42', '2142.66', '84.0477', '0', '5.40787');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57852', '2', '2273.1', '2148.33', '78.621', '0', '4.97197');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57852', '1', '2270.39', '2149.99', '78.9268', '1000', '5.59527');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57900', '2', '2185.22', '2115.88', '72.4063', '300000', '5.53269');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57900', '1', '2185.22', '2115.88', '72.4063', '1000', '5.53269');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57903', '13', '2218.95', '2154.62', '74.9526', '0', '5.42973');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57903', '12', '2205.78', '2146.11', '72.1888', '0', '6.15151');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57903', '11', '2195.33', '2158.29', '71.5085', '0', '4.98205');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57903', '10', '2202.38', '2165.31', '74.1721', '0', '0.790382');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57903', '9', '2195.97', '2158.52', '71.6383', '0', '0.313645');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57903', '8', '2206.41', '2147.59', '72.4465', '0', '2.44365');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57903', '7', '2217.94', '2154.56', '74.7639', '0', '3.47566');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57903', '6', '2228.2', '2145.41', '74.4934', '0', '2.71461');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57903', '5', '2255.04', '2173.23', '84.0229', '0', '3.8283');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57903', '4', '2272.3', '2197.9', '92.0272', '0', '1.13596');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57903', '3', '2246.68', '2164.27', '80.752', '0', '0.810017');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57903', '2', '2227.73', '2145.34', '74.4228', '0', '0.392289');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('57903', '1', '2221.02', '2152.6', '74.8408', '1000', '5.50607');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('65459', '1', '-2949.06', '5557.71', '-1.5585', '0', '5.10158');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('65459', '2', '-2950.83', '5598.17', '0.942321', '0', '1.21386');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('65459', '3', '-2933.77', '5594.17', '0.453961', '0', '4.09392');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('65459', '4', '-2947.13', '5549.61', '54.6254', '0', '1.33953');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '10', '156.328', '2771.1', '107.878', '0', '3.58573');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '9', '187.407', '2775.84', '113.255', '0', '3.20481');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '8', '208.218', '2786.12', '118.221', '10000', '3.58416');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '7', '208.273', '2792.88', '119.187', '0', '5.48875');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '6', '202.773', '2785.62', '117.363', '0', '0.04672');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '5', '188.743', '2777.97', '113.841', '0', '0.594143');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '4', '161.4', '2772.35', '108.72', '0', '0.246212');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '3', '134.407', '2761.5', '102.288', '0', '0.346076');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '2', '104.762', '2741.75', '93.1585', '0', '0.708138');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '1', '74.1082', '2703.89', '83.9161', '0', '1.03015');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '1', '-1284.35', '97.3245', '130.092', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '2', '-1280.18', '92.5238', '129.457', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '3', '-1274.37', '85.7102', '128.675', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '4', '-1269.94', '79.7221', '128.293', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '5', '-1267.42', '72.3275', '127.641', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '6', '-1265.67', '62.7717', '127.01', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '7', '-1260.59', '54.9526', '126.966', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '8', '-1259.91', '44.5309', '127.486', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '9', '-1259', '52.6779', '127.024', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '10', '-1253.77', '59.9508', '127.129', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '11', '-1246.98', '65.8011', '127.392', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '12', '-1237.66', '73.9001', '129.204', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '13', '-1230.41', '80.8912', '130.329', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '14', '-1222.45', '88.7371', '131.765', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '15', '-1215.43', '95.3951', '133.397', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '16', '-1210.39', '102.358', '134.27', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '17', '-1205.38', '111.1', '134.454', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '18', '-1204.65', '119.247', '134.694', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '19', '-1207.83', '129.223', '134.635', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '20', '-1215.43', '135.226', '133.868', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '21', '-1224.4', '139.811', '133.476', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '22', '-1232.81', '138.176', '133.088', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '23', '-1240.21', '135.596', '132.561', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '24', '-1248.86', '133.352', '132.418', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '25', '-1256.91', '131.809', '132.105', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '26', '-1264.56', '127.191', '131.553', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '27', '-1270.38', '123.159', '131.324', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '28', '-1277.63', '117.296', '131.099', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '29', '-1285.52', '108.809', '130.944', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129165', '30', '-1285.83', '102.097', '130.54', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '1', '-1123.42', '63.2787', '142.185', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '2', '-1124', '56.2305', '142.329', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '3', '-1129.76', '48.4148', '142.917', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '4', '-1139.96', '55.9439', '144.457', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '5', '-1132.36', '49.8563', '143.253', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '6', '-1137.71', '41.3163', '143.549', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '7', '-1141.94', '32.1665', '144.073', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '8', '-1149.38', '32.3454', '145.206', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '9', '-1168.33', '33.9253', '145.766', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '10', '-1158.27', '33.1807', '145.57', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '11', '-1149.03', '31.963', '145.193', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '12', '-1138', '30.0362', '143.706', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '13', '-1124.82', '25.831', '142.608', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '14', '-1111.66', '13.1389', '141.439', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '15', '-1103.96', '15.9685', '140.696', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '16', '-1107.5', '10.2549', '141.172', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '17', '-1109.76', '0.432498', '142.052', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '18', '-1108.52', '-10.6742', '142.461', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '19', '-1111.05', '-1.72891', '142.351', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '20', '-1124.22', '-4.39439', '143.271', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '21', '-1115.26', '-1.80261', '142.8', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '22', '-1105.38', '4.86975', '141.197', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '23', '-1097.81', '0.070428', '140.786', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '24', '-1074.99', '-14.8065', '140.085', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '25', '-1093.88', '-3.50453', '140.681', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '26', '-1103.5', '4.76443', '141.003', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '27', '-1111.86', '14.2652', '141.422', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '28', '-1120.58', '24.4961', '142.154', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '29', '-1122.88', '30.7848', '142.554', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '30', '-1123.27', '39.7362', '142.232', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '31', '-1129.51', '46.6519', '142.852', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129166', '32', '-1126.45', '49.9198', '142.557', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '1', '-984.727', '227.112', '135.068', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '2', '-977.894', '230.145', '134.975', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '3', '-968.74', '238.919', '134.824', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '4', '-975.382', '231.392', '135.026', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '5', '-979.915', '225.963', '135.014', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '6', '-976.34', '218.581', '135.715', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '7', '-980.275', '225.32', '135.026', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '8', '-988.005', '222.669', '135.018', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '9', '-997.943', '217.598', '134.856', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '10', '-1010.04', '223.454', '134.557', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '11', '-1015.29', '215.73', '135.029', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '12', '-1023.56', '201.536', '135.056', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '13', '-1018.34', '210.158', '134.975', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '14', '-1013.82', '218.721', '134.88', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '15', '-1009.08', '233.228', '134.645', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '16', '-1006.19', '239.693', '135.844', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '17', '-1000.6', '251.047', '137.245', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '18', '-1005.7', '242.328', '136.14', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '19', '-1010.23', '233.078', '134.611', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '20', '-1014.45', '227.855', '134.619', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '21', '-1022.27', '230.261', '134.581', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '22', '-1028.85', '224.186', '135.219', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '23', '-1023.33', '230.257', '134.565', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '24', '-1029.77', '241.183', '134.556', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '25', '-1032.13', '258.947', '135.387', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '26', '-1031.82', '243.368', '134.563', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '27', '-1022.6', '234.66', '134.557', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '28', '-1008.89', '222.554', '134.567', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129167', '29', '-996.736', '218.969', '134.786', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '1', '-1396.8', '-104.379', '158.935', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '2', '-1401', '-119.076', '158.935', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '3', '-1410.85', '-116.947', '158.935', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '4', '-1398.57', '-122.24', '158.935', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '5', '-1393.14', '-126.199', '158.415', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '6', '-1385.86', '-131.426', '156.629', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '7', '-1391.21', '-127.368', '157.905', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '8', '-1395.76', '-119.684', '158.934', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '9', '-1395.96', '-106.231', '158.934', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '10', '-1393.81', '-97.1892', '158.934', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '11', '-1386.76', '-98.1439', '158.934', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '12', '-1393', '-95.6407', '158.934', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '13', '-1391.17', '-82.3374', '159.159', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '14', '-1390.99', '-77.5195', '159.273', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '15', '-1387.25', '-77.2756', '160.03', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '16', '-1392.25', '-75.8423', '159.117', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '17', '-1396.88', '-67.717', '158.935', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '18', '-1400.91', '-64.4107', '158.294', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '19', '-1406.48', '-62.3083', '157.433', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '20', '-1418.12', '-59.5898', '156.87', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '21', '-1430.31', '-52.3687', '156.87', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '22', '-1417.88', '-59.8854', '156.871', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '23', '-1409.7', '-62.3769', '157.214', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '24', '-1404.19', '-63.3882', '157.832', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '25', '-1405.25', '-58.3192', '157.006', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '26', '-1407.05', '-53.4021', '156.84', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '27', '-1405.08', '-59.0326', '157.072', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '28', '-1401.85', '-63.6382', '158.06', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '29', '-1397.35', '-68.6339', '158.935', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '30', '-1393.32', '-76.6014', '159.053', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129168', '31', '-1394.26', '-94.8327', '158.936', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '1', '-1276.06', '124.718', '131.269', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '2', '-1280.91', '119.025', '131.173', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '3', '-1286.57', '111.594', '131.112', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '4', '-1290.21', '102.178', '130.879', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '5', '-1284.92', '96.3959', '130.047', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '6', '-1279.52', '90.1819', '129.155', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '7', '-1272.91', '82.5731', '128.498', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '8', '-1266.32', '74.9853', '127.786', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '9', '-1266.77', '67.5523', '127.319', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '10', '-1268.77', '57.6729', '127.27', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '11', '-1273.54', '52.9394', '128.869', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '12', '-1279.55', '49.1371', '129.069', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '13', '-1275.04', '51.7954', '129.086', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '14', '-1268.58', '57.4253', '127.265', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '15', '-1264.11', '57.3577', '126.98', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '16', '-1255.69', '55.6666', '126.951', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '17', '-1248.86', '63.0622', '127.138', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '18', '-1244.63', '68.3148', '127.757', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '19', '-1239.17', '73.9423', '129.031', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '20', '-1232.63', '80.5913', '130.224', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '21', '-1226.09', '87.2402', '131.251', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '22', '-1219.28', '94.1688', '132.661', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '23', '-1214.58', '98.968', '133.698', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '24', '-1210.49', '105.195', '133.936', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '25', '-1205.42', '114.326', '134.5', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '26', '-1204.9', '122.449', '134.688', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '27', '-1209.62', '128.658', '134.436', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '28', '-1217.99', '134.841', '133.793', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '29', '-1226.64', '136.872', '133.203', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '30', '-1235.15', '135.701', '132.689', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '31', '-1244.82', '132.845', '132.347', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '32', '-1255.23', '129.831', '131.99', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '33', '-1264.32', '127.778', '131.622', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129169', '34', '-1271.78', '127.329', '131.365', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '1', '-1058.49', '-232.692', '159.03', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '2', '-1062.43', '-221.02', '159.03', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '3', '-1058.34', '-231.023', '159.03', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '4', '-1051.49', '-219.902', '159.105', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '5', '-1046.2', '-210.105', '159.031', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '6', '-1039.54', '-209.46', '159.639', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '7', '-1046.72', '-208.47', '159.03', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '8', '-1050.1', '-215.977', '159.03', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '9', '-1053.38', '-223.864', '159.03', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '10', '-1057.81', '-232.48', '159.03', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '11', '-1058.95', '-242.861', '159.03', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '12', '-1058.07', '-256.829', '159.03', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '13', '-1055.36', '-282.615', '159.03', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '14', '-1056.62', '-268.672', '159.03', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '15', '-1059.91', '-235.039', '159.03', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '16', '-1049.65', '-238.536', '159.03', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '17', '-1036.86', '-243.71', '159.03', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '18', '-1025.14', '-257.217', '159.03', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '19', '-1019.08', '-274.386', '159.03', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '20', '-1016.39', '-289.042', '159.03', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '21', '-1017.04', '-306.54', '159.058', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '22', '-1027.6', '-319.069', '159.03', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '23', '-1041.73', '-330.059', '159.03', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '24', '-1055.14', '-329.829', '159.036', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '25', '-1071.57', '-319.031', '159.067', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '26', '-1083.18', '-305.503', '159.085', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '27', '-1087.13', '-287.662', '159.03', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '28', '-1086.63', '-260.884', '159.063', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '29', '-1079.18', '-248.379', '159.031', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('129170', '30', '-1066.82', '-234.462', '159.031', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('138238', '1', '2551.09', '1235.07', '125.52', '0', '5.08254');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('138238', '2', '2570.55', '1161.87', '126.581', '0', '4.96866');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('138289', '1', '2471.98', '1397.62', '130.097', '0', '5.11778');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('138289', '2', '2488.93', '1367', '130.409', '0', '5.20809');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79235', '1', '-543.211', '-552.146', '2.47518', '0', '1.54333');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79235', '2', '-543.204', '-562.555', '1.02491', '0', '4.70063');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79235', '3', '-542.842', '-571.203', '2.47447', '0', '4.73597');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79235', '4', '-543.221', '-583.926', '1.02569', '0', '4.66921');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79235', '5', '-530.847', '-596.989', '2.4668', '0', '5.46247');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79235', '6', '-543.704', '-584.594', '1.02492', '0', '2.28161');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79235', '7', '-543.331', '-571.314', '2.47236', '0', '1.54334');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79235', '8', '-543.3', '-562.826', '1.0249', '0', '1.57868');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79235', '9', '-543.332', '-555.482', '2.47257', '0', '1.5669');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79213', '1', '-490.452', '-654.724', '28.5915', '0', '6.21571');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79213', '2', '-452.562', '-654.993', '28.5273', '0', '6.26283');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79214', '1', '-489.82', '-648.72', '28.5883', '0', '6.21801');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79214', '2', '-452.561', '-649.101', '28.5268', '0', '6.26121');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79228', '1', '-496.45', '-711.582', '30.2472', '0', '1.75695');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79228', '2', '-505.356', '-653.783', '30.2464', '0', '1.68626');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79240', '1', '-371.029', '-599.914', '2.26969', '0', '3.15927');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79240', '2', '-377.755', '-599.977', '2.47006', '0', '3.1632');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79240', '3', '-381.476', '-600.116', '1.02772', '0', '3.17891');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79240', '4', '-408.362', '-600.329', '1.02489', '0', '3.16523');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79240', '5', '-381.782', '-599.756', '1.02496', '0', '6.25476');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79240', '6', '-377.926', '-599.835', '2.46797', '0', '6.26261');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79376', '1', '3124.03', '468.191', '83.0309', '0', '5.25739');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79376', '2', '3134.74', '456.316', '80.0977', '0', '5.79931');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79376', '3', '3149.08', '442.247', '74.3676', '0', '5.68543');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79376', '4', '3161.83', '436.847', '70.4455', '0', '6.10562');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79376', '5', '3173.03', '436.852', '67.1688', '0', '6.1763');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79376', '6', '3158.32', '440.243', '71.8745', '0', '2.94439');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79376', '7', '3142.73', '446.856', '76.8387', '0', '2.71662');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79376', '8', '3122.19', '472.226', '84.0471', '0', '2.20218');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79376', '9', '3115.46', '490.55', '87.6521', '0', '1.79394');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79376', '10', '3115.98', '518.258', '89.0697', '0', '1.49942');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79376', '11', '3116.35', '496.383', '88.1715', '0', '4.72348');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('79376', '12', '3122.02', '476.934', '85.0868', '0', '5.1633');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78333', '1', '-219.056', '-61.0287', '104.299', '20000', '4.73051');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78333', '2', '-218.403', '-41.1759', '97.7714', '0', '1.54572');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78333', '3', '-218.649', '11.4459', '97.8441', '20000', '1.54572');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78333', '4', '-218.403', '-41.1759', '97.7714', '0', '4.73051');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78344', '1', '-8764.87', '847.11', '87.2577', '0', '3.86765');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78344', '2', '-8764.87', '847.11', '87.2577', '6000', '3.86765');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78344', '3', '-8764.87', '847.11', '87.2577', '0', '3.86765');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78344', '4', '-8764.87', '847.11', '87.2577', '233000', '3.86765');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78344', '5', '-8764.87', '847.11', '87.2577', '0', '3.86765');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78344', '6', '-8767.81', '845.135', '88.5791', '0', '3.87672');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78344', '7', '-8771.36', '841.955', '90.3736', '0', '3.80918');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78344', '8', '-8775.25', '838.443', '92.3464', '0', '3.80997');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78344', '9', '-8780.41', '835.036', '94.6678', '0', '3.97019');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78344', '10', '-8789.37', '827.108', '97.6443', '0', '3.77777');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78345', '1', '-8764.18', '846.946', '87.0923', '60000', '3.91792');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78345', '2', '-8764.18', '846.946', '87.0923', '6000', '3.91792');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78345', '3', '-8764.18', '846.946', '87.0923', '0', '3.91792');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78345', '4', '-8764.18', '846.946', '87.0923', '174000', '3.91792');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78345', '5', '-8764.18', '846.946', '87.0923', '0', '3.91792');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78345', '6', '-8766.69', '844.125', '88.4861', '0', '3.79112');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78345', '7', '-8770.97', '840.874', '90.511', '0', '3.79112');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78345', '8', '-8775.98', '836.386', '93.0448', '0', '3.81233');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78345', '9', '-8779.09', '833.919', '94.5413', '0', '3.81233');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78345', '10', '-8788.55', '825.631', '97.6435', '0', '3.85238');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78346', '1', '-8764.17', '846.22', '87.2574', '120000', '3.7577');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78346', '2', '-8764.17', '846.22', '87.2574', '6000', '3.7577');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78346', '3', '-8764.17', '846.22', '87.2574', '0', '3.7577');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78346', '4', '-8764.17', '846.22', '87.2574', '115000', '3.7577');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78346', '5', '-8764.17', '846.22', '87.2574', '0', '3.7577');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78346', '6', '-8768.75', '841.352', '89.7436', '0', '3.90186');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78346', '7', '-8773.94', '837.223', '92.2453', '0', '3.72672');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78346', '8', '-8779.93', '831.68', '95.316', '0', '3.79426');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78346', '9', '-8788.56', '825.087', '97.6439', '0', '3.79426');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78347', '1', '-8763.14', '845.686', '87.0814', '180000', '3.76991');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78347', '2', '-8763.14', '845.686', '87.0814', '6000', '3.76991');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78347', '3', '-8763.14', '845.686', '87.0814', '0', '3.76991');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78347', '4', '-8763.14', '845.686', '87.0814', '56700', '3.76991');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78347', '5', '-8763.14', '845.686', '87.0814', '0', '3.76991');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78347', '6', '-8770.88', '840.53', '90.5654', '0', '3.58927');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78347', '7', '-8776.35', '837.9', '92.7992', '0', '3.58927');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78347', '8', '-8781.09', '834.758', '94.9354', '0', '3.69609');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78347', '9', '-8783.9', '830.873', '96.6753', '0', '3.34502');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78347', '10', '-8790.4', '827.703', '97.6425', '0', '3.55629');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49175', '1', '-7601.88', '-992.608', '440.189', '0', '2.13915');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49175', '2', '-7617.46', '-975.581', '440.273', '0', '2.16664');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49175', '3', '-7629.19', '-958.277', '440.265', '0', '2.16664');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49175', '4', '-7619.41', '-970.799', '440.25', '0', '5.36714');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49209', '1', '-7636.89', '-982.791', '440.265', '0', '5.30587');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49209', '2', '-7622.63', '-1002.53', '440.234', '0', '5.29802');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49209', '3', '-7646', '-967.481', '440.203', '0', '2.16428');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('50254', '1', '-7636.34', '-1011.88', '440.237', '0', '5.353');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('50254', '2', '-7658.14', '-978.921', '440.241', '0', '2.19177');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('47959', '1', '-7671.83', '-986.982', '440.221', '0', '5.33728');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('47959', '2', '-7648.58', '-1021.86', '440.222', '0', '5.34121');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('51805', '1', '-7684.24', '-997.789', '440.249', '0', '3.97462');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('51805', '2', '-7661.27', '-1032.28', '440.199', '0', '5.39617');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49924', '1', '-7700.46', '-1007.67', '440.23', '0', '5.25872');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49924', '2', '-7677.2', '-1041.8', '440.217', '0', '5.30977');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('52101', '1', '-7672.28', '-1120.81', '449.153', '0', '5.43934');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('52101', '2', '-7688.44', '-1094.64', '449.1', '0', '2.10925');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('52100', '1', '-7638.9', '-1101.08', '449.164', '0', '5.33332');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('52100', '2', '-7657.45', '-1074.08', '449.164', '0', '2.17995');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('52102', '1', '-7640.84', '-1059.31', '449.164', '0', '2.10926');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('52102', '2', '-7619.69', '-1091.61', '449.164', '0', '5.30583');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('53638', '1', '-7627.46', '-1049.63', '449.164', '0', '2.19957');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('53638', '2', '-7608.17', '-1079', '449.164', '0', '5.43149');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('52099', '1', '-7598.07', '-1071.58', '449.164', '0', '1.99145');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('52099', '2', '-7614.84', '-1040.44', '449.164', '0', '2.02679');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75581', '1', '-17.782', '-4883.05', '302.573', '180000', '0.034907');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75582', '1', '-109.952', '-5143.21', '329.272', '180000', '2.44346');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75583', '1', '17.8127', '-4981.98', '309.815', '180000', '3.29867');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75584', '1', '-83.8677', '-5008.06', '315.917', '180000', '1.65806');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('36161', '1', '-218.01', '-3332.16', '91.6676', '0', '4.60185');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('36161', '2', '-225.482', '-3341.16', '91.6676', '0', '3.96175');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('36161', '3', '-237.319', '-3343.2', '91.7107', '0', '2.57474');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('36161', '4', '-245.034', '-3333.29', '92.3149', '0', '1.87023');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('36161', '5', '-244.485', '-3324.63', '92.7759', '0', '1.24192');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('36161', '6', '-235.332', '-3302.28', '92.9443', '0', '1.09505');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('36161', '7', '-221.838', '-3302.11', '91.668', '0', '6.27475');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('36161', '8', '-221.838', '-3302.11', '91.668', '0', '6.27475');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '1', '-3740.01', '-4437.76', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '2', '-3742.82', '-4433.89', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '3', '-3746.76', '-4431.05', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '4', '-3751.26', '-4429.58', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '5', '-3756.03', '-4429.63', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '6', '-3760.63', '-4431.11', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '7', '-3764.42', '-4433.89', '56.2261', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '8', '-3767.25', '-4437.72', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '9', '-3768.72', '-4442.31', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '10', '-3768.66', '-4447.08', '56.2247', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '11', '-3767.22', '-4451.63', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '12', '-3764.42', '-4455.48', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '13', '-3767.22', '-4451.63', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '14', '-3768.66', '-4447.08', '56.2247', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '15', '-3768.72', '-4442.31', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '16', '-3767.25', '-4437.72', '56.2018', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '17', '-3764.42', '-4433.89', '56.2261', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '18', '-3760.63', '-4431.11', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '19', '-3756.03', '-4429.63', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '20', '-3751.26', '-4429.58', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '21', '-3746.76', '-4431.05', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '22', '-3742.82', '-4433.89', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '23', '-3740.01', '-4437.76', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '24', '-3738.56', '-4442.27', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '25', '-3738.58', '-4447.06', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '26', '-3740.03', '-4451.58', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '27', '-3742.87', '-4455.45', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '28', '-3746.7', '-4458.25', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '29', '-3751.22', '-4459.75', '56.2626', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '30', '-3756.02', '-4459.73', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '31', '-3751.22', '-4459.75', '56.2626', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '32', '-3746.7', '-4458.25', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '33', '-3742.87', '-4455.45', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '34', '-3740.03', '-4451.58', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '35', '-3738.58', '-4447.06', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('78829', '36', '-3738.56', '-4442.27', '56.2398', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('602', '1', '-3942.97', '-3455.51', '28.8974', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('602', '2', '-3943.12', '-3456.5', '28.8974', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('602', '3', '-3948.06', '-3467.44', '29.6474', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('602', '4', '-3950.12', '-3472', '29.0224', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('602', '5', '-3953.3', '-3479.05', '28.6474', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('602', '6', '-3953.3', '-3479.05', '28.6474', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('104346', '1', '7024.75', '-1625.54', '957.369', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('104346', '2', '7025.49', '-1624.87', '957.369', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('104346', '3', '7167.58', '-1501.69', '962.569', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('104346', '4', '7440.4', '-1295.86', '997.291', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('104346', '5', '7210.96', '-1046.89', '1006.18', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('104346', '6', '6998.46', '-1076.85', '1024.82', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('104346', '7', '6874.25', '-1097.38', '927.736', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('104346', '8', '6614.79', '-875.755', '812.765', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('104346', '9', '6563.27', '-811.767', '749.876', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('104346', '10', '6299.5', '-797.577', '529.126', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('104346', '11', '6194.55', '-1013.14', '501.542', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('104346', '12', '6319.25', '-1251.66', '468.626', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('104346', '13', '6309.16', '-1537.86', '615.042', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('104346', '14', '6748.21', '-1664.31', '919.312', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('104346', '15', '6913.31', '-1725.26', '954.792', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('104346', '16', '7167.58', '-1501.69', '962.569', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('104346', '17', '7440.4', '-1295.86', '997.291', '0', '0');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83309', '7', '1611.98', '8538.14', '-9.667', '0', '1.6116');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83309', '8', '1608.91', '8559.17', '-18.6553', '0', '1.95089');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83309', '9', '1606.81', '8566.77', '-20.9001', '0', '1.39404');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83309', '10', '1607.43', '8574.21', '-24.1375', '10000', '1.77339');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83309', '11', '1605.88', '8566.47', '-20.8363', '0', '5.37916');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83309', '12', '1609.4', '8557.97', '-18.1479', '0', '4.78068');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83309', '13', '1610.9', '8540.09', '-10.5095', '0', '4.69115');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83309', '14', '1612.82', '8526.25', '-6.42162', '0', '5.69882');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83309', '15', '1624.66', '8514.33', '-6.42656', '0', '5.71217');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83309', '16', '1643.3', '8503.39', '-7.19652', '0', '6.12057');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83309', '17', '1659.96', '8500.68', '-6.61295', '0', '0.071426');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83309', '18', '1672.67', '8498.77', '-8.13133', '0', '5.72186');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83309', '19', '1702.05', '8479.28', '-6.15383', '10000', '5.79725');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '11', '123.942', '2756.11', '99.2276', '0', '3.79779');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '12', '103.427', '2740.63', '92.7884', '0', '4.07424');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '13', '72.919', '2703.68', '83.788', '0', '4.03969');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '14', '42.7305', '2666.36', '77.4398', '0', '3.78522');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '15', '25.9731', '2654.13', '74.2761', '0', '4.09467');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '16', '7.11001', '2626.27', '69.9156', '0', '4.58161');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '17', '2.25446', '2593.9', '66.3721', '0', '4.92321');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '18', '18.3035', '2542.72', '61.2518', '0', '4.73706');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '19', '16.0396', '2488.79', '55.2833', '0', '4.50695');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '20', '14.4383', '2440.17', '50.9287', '0', '4.49202');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '21', '10.9799', '2430.37', '52.6682', '0', '4.04827');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '22', '-12.21', '2403.47', '52.0178', '0', '3.98859');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '23', '-30.4124', '2394.87', '53.0233', '0', '3.49771');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '24', '-40.3622', '2393.28', '53.4138', '0', '3.99487');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '25', '-43.0976', '2385.17', '53.591', '0', '4.81639');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '26', '-35.6152', '2379.75', '53.732', '0', '0.222135');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '27', '-6.72841', '2402.92', '51.9002', '0', '0.958052');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '28', '12.495', '2428.86', '52.7532', '0', '1.06015');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '29', '15.3727', '2435.89', '51.107', '0', '1.53139');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '30', '21.5283', '2479.01', '54.4931', '0', '1.57773');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '31', '21.9602', '2527.85', '59.7815', '0', '1.9665');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '32', '7.21035', '2573.25', '64.3594', '0', '1.69004');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '33', '1.75946', '2612.56', '68.1799', '0', '1.40023');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '34', '13.7036', '2642.76', '71.9849', '0', '0.993395');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '35', '25.8152', '2656.51', '74.407', '0', '0.603052');
INSERT IGNORE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('5402', '36', '45.9127', '2669.56', '77.8637', '0', '0.575563');

# Conditions
REPLACE INTO `conditions` VALUES ('13', '1', '39635', '0', '0', '31', '0', '3', '23448', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '39849', '0', '0', '31', '0', '3', '23448', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '40704', '0', '0', '31', '0', '3', '23292', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '40707', '0', '0', '31', '0', '3', '23293', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '40708', '0', '0', '31', '0', '3', '23294', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '40709', '0', '0', '31', '0', '3', '23295', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '40710', '0', '0', '31', '0', '3', '23296', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '40711', '0', '0', '31', '0', '3', '23297', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '40712', '0', '0', '31', '0', '3', '23298', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '40713', '0', '0', '31', '0', '3', '23299', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '41333', '0', '0', '31', '0', '3', '22949', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '41333', '0', '1', '31', '0', '3', '22950', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '41333', '0', '2', '31', '0', '3', '22951', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '41333', '0', '3', '31', '0', '3', '22952', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '41342', '0', '0', '31', '0', '3', '23426', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '41455', '0', '0', '31', '0', '3', '22949', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '41455', '0', '1', '31', '0', '3', '22950', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '41455', '0', '2', '31', '0', '3', '22951', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '41455', '0', '3', '31', '0', '3', '22952', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '41499', '0', '0', '31', '0', '3', '22949', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '41499', '0', '1', '31', '0', '3', '22950', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '41499', '0', '2', '31', '0', '3', '22951', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '41499', '0', '3', '31', '0', '3', '22952', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7675', '9369', '0', '0', '8', '0', '10107', '0', '0', '0', '0', '', 'Show different gossip if player has rewarded quest 10107');
REPLACE INTO `conditions` VALUES ('14', '7675', '9369', '0', '1', '8', '0', '10108', '0', '0', '0', '0', '', 'Show different gossip if player has rewarded quest 10108');

# Fix
DELETE FROM linked_respawn WHERE guid=53882;
DELETE FROM linked_respawn WHERE guid=92175;
UPDATE `creature` SET `npcflag` = 128 WHERE `guid` = 97984;
UPDATE `creature` SET `npcflag` = 128 WHERE `guid` = 99369;
DELETE FROM `db_script_string` WHERE `entry` = 2000000294;
DELETE FROM `db_script_string` WHERE `entry` = 2000000295;
DELETE FROM `db_script_string` WHERE `entry` = 2000000296;
DELETE FROM `db_script_string` WHERE `entry` = 2000000297;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=30446);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=16863);
UPDATE `creature_template` SET `npcflag` = 128 WHERE `entry` = 26322;
UPDATE `creature_template` SET `npcflag` = 128 WHERE `entry` = 29451;


# FIX
# DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50314;
# DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50314;
# UPDATE conditions SET SourceGroup=9732 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=28666;
# UPDATE conditions SET SourceGroup=9732 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=28666;
# UPDATE `conditions` SET `SourceEntry`='14237' WHERE `SourceGroup`=7927 AND `SourceEntry`=14239 AND SourceTypeOrReferenceId=14;

# WDB_Check
# UPDATE `npc_text` SET `WDBVerified`=1 WHERE `ID` IN (9516,14330,15608,15609,9842,9704,9708,6520,14451,14452,10955);

# Temp_FIX
update quest_start_scripts set datalong2=3 where datalong2=2 AND command=15;
update quest_end_scripts set datalong2=3 where datalong2=2 AND command=15;
DELETE FROM conditions WHERE ConditionTypeOrReference=14 AND ConditionValue1=0;
UPDATE conditions SET ConditionValue2=0 WHERE ConditionTypeOrReference=25 AND ConditionValue2=1;
UPDATE conditions SET ConditionValue2=0 WHERE ConditionTypeOrReference=17 AND ConditionValue2=1;
# UPDATE `creature_template` SET `gossip_menu_id` = 0 WHERE `npcflag` = `npcflag`|32;
UPDATE `gossip_menu_option` SET `box_text`='Are you sure you wish to purchase a Dual Talent Specialization?' WHERE `option_id` =18;
UPDATE `gossip_menu_option` SET `action_menu_id`=0 WHERE `action_menu_id`=1;
UPDATE `gossip_menu_option` SET `option_id`='18', `action_menu_id`='0' WHERE `menu_id`=10371 AND `id`=0;

# NPC_ADDON_FIX
UPDATE creature_template_addon SET path_id=0;
INSERT IGNORE INTO `creature_template_addon`
SELECT
`creature_template`.`difficulty_entry_1`,
`creature_template_addon`.`path_id`,
`creature_template_addon`.`mount`,
`creature_template_addon`.`bytes1`,
`creature_template_addon`.`bytes2`,
`creature_template_addon`.`emote`,
`creature_template_addon`.`auras`
FROM
`creature_template`, `creature_template_addon`
WHERE
`creature_template_addon`.`entry`=`creature_template`.`entry`
AND `creature_template`.`difficulty_entry_1`>0;
INSERT IGNORE INTO `creature_template_addon`
SELECT
`creature_template`.`difficulty_entry_2`,
`creature_template_addon`.`path_id`,
`creature_template_addon`.`mount`,
`creature_template_addon`.`bytes1`,
`creature_template_addon`.`bytes2`,
`creature_template_addon`.`emote`,
`creature_template_addon`.`auras`
FROM
`creature_template`, `creature_template_addon`
WHERE
`creature_template_addon`.`entry`=`creature_template`.`entry`
AND `creature_template`.`difficulty_entry_2`>0;
INSERT IGNORE INTO `creature_template_addon`
SELECT
`creature_template`.`difficulty_entry_3`,
`creature_template_addon`.`path_id`,
`creature_template_addon`.`mount`,
`creature_template_addon`.`bytes1`,
`creature_template_addon`.`bytes2`,
`creature_template_addon`.`emote`,
`creature_template_addon`.`auras`
FROM
`creature_template`, `creature_template_addon`
WHERE
`creature_template_addon`.`entry`=`creature_template`.`entry`
AND `creature_template`.`difficulty_entry_3`>0;

# NPC_FIX
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenHealth`=`creature_template`.`RegenHealth`,
`copy`.`unit_class`=`creature_template`.`unit_class`,
`copy`.`unit_flags`=`creature_template`.`unit_flags`,
`copy`.`unit_flags2`=`creature_template`.`unit_flags2`,
`copy`.`npcflag`=`creature_template`.`npcflag`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`equipment_id`=`creature_template`.`equipment_id`,
`copy`.`faction_A`=`creature_template`.`faction_A`,
`copy`.`faction_H`=`creature_template`.`faction_H`,
`copy`.`speed_run`=`creature_template`.`speed_run`,
`copy`.`speed_walk`=`creature_template`.`speed_walk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`dmgschool`=`creature_template`.`dmgschool`,
`copy`.`mingold`=`creature_template`.`mingold`,
`copy`.`maxgold`=`creature_template`.`maxgold`,
`copy`.`VehicleId`=`creature_template`.`VehicleId`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_1`;
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenHealth`=`creature_template`.`RegenHealth`,
`copy`.`unit_class`=`creature_template`.`unit_class`,
`copy`.`unit_flags`=`creature_template`.`unit_flags`,
`copy`.`unit_flags2`=`creature_template`.`unit_flags2`,
`copy`.`npcflag`=`creature_template`.`npcflag`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`equipment_id`=`creature_template`.`equipment_id`,
`copy`.`faction_A`=`creature_template`.`faction_A`,
`copy`.`faction_H`=`creature_template`.`faction_H`,
`copy`.`speed_run`=`creature_template`.`speed_run`,
`copy`.`speed_walk`=`creature_template`.`speed_walk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`dmgschool`=`creature_template`.`dmgschool`,
`copy`.`mingold`=`creature_template`.`mingold`,
`copy`.`maxgold`=`creature_template`.`maxgold`,
`copy`.`VehicleId`=`creature_template`.`VehicleId`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_2`;
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`RegenHealth`=`creature_template`.`RegenHealth`,
`copy`.`unit_class`=`creature_template`.`unit_class`,
`copy`.`unit_flags`=`creature_template`.`unit_flags`,
`copy`.`unit_flags2`=`creature_template`.`unit_flags2`,
`copy`.`npcflag`=`creature_template`.`npcflag`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`equipment_id`=`creature_template`.`equipment_id`,
`copy`.`faction_A`=`creature_template`.`faction_A`,
`copy`.`faction_H`=`creature_template`.`faction_H`,
`copy`.`speed_run`=`creature_template`.`speed_run`,
`copy`.`speed_walk`=`creature_template`.`speed_walk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`dmgschool`=`creature_template`.`dmgschool`,
`copy`.`mingold`=`creature_template`.`mingold`,
`copy`.`maxgold`=`creature_template`.`maxgold`,
`copy`.`VehicleId`=`creature_template`.`VehicleId`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_3`;

# Final_FIX
INSERT IGNORE INTO creature_addon (guid, path_id) SELECT id, id FROM waypoint_data;
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE Flags=Flags|4096;
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE Flags=Flags|32768;
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
# DELETE FROM `linked_respawn` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
# DELETE FROM `linked_respawn` WHERE `linkedGuid` NOT IN (SELECT `guid` FROM `creature`);
# DELETE FROM `game_event_gameobject` WHERE `guid` NOT IN (SELECT `guid` FROM `gameobject`);
# DELETE FROM `game_event_creature` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
# UPDATE creature_template SET unit_flags=unit_flags&~2048 WHERE unit_flags&2048=2048;
# UPDATE creature_template SET unit_flags=unit_flags&~524288 WHERE unit_flags&524288=524288;
# UPDATE creature_template SET unit_flags=unit_flags&~67108864 WHERE unit_flags&67108864=67108864;
# UPDATE creature_template SET unit_flags=unit_flags&~8388608 WHERE unit_flags&8388608=8388608;
UPDATE `creature` SET `spawndist` = 5 WHERE `spawndist` = 0 AND `MovementType`=1;
UPDATE `creature` SET `spawndist`=0 WHERE `MovementType`=0;
UPDATE `creature` SET `spawntimesecs` = 300 WHERE `spawntimesecs` = 25;
UPDATE `gameobject` SET `spawntimesecs` = 300 WHERE `spawntimesecs` = 25;
UPDATE `creature_template` SET `scale` = 1 WHERE `scale` = 0;
# update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 0;
# update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 3;
# update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 10;
# update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 25;
UPDATE `gameobject` SET `state`=1 WHERE `state`=0 AND `id` IN (SELECT entry FROM `gameobject_template` WHERE `type`=3);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_questrelation`);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_involvedrelation`);
UPDATE `gameobject` SET `state` = 0 WHERE `id` IN (SELECT `entry` FROM `gameobject_template` WHERE `type` = 0 AND `data0` = 1);
# UPDATE `gameobject_template` SET `flags`=`flags`&~4 WHERE `type` IN (2,19,17);
# DELETE FROM `gameobject_scripts` WHERE `id` NOT IN (SELECT `guid` FROM `gameobject`);
# DELETE FROM `gameobject_scripts` WHERE `command` in (11, 12) and `datalong` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
# UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE `spellid_2` = 0 AND `spelltrigger_2` = 6;
UPDATE `creature_template` SET npcflag = npcflag|1 WHERE `gossip_menu_id` > 0;
UPDATE `creature_template`, `smart_scripts` SET `creature_template`.`ainame`='SmartAI' WHERE `creature_template`.`entry`=`smart_scripts`.`entryorguid` AND `smart_scripts`.`Source_Type`=0;
UPDATE `gameobject_template`, `smart_scripts` SET `gameobject_template`.`ainame`='SmartGameObjectAI' WHERE `gameobject_template`.`entry`=`smart_scripts`.`entryorguid` AND `smart_scripts`.`Source_Type`=1;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `AIName` = 'EventAI' AND `ScriptName` = 'generic_creature';
UPDATE `creature_template` SET `ScriptName` = '' WHERE `AIName` = 'SmartAI' AND `ScriptName` = 'generic_creature';

UPDATE
`creature`, `waypoint_data`
SET
`creature`.`spawndist`=0,
`creature`.`MovementType`=2
WHERE
`creature`.`guid`=`waypoint_data`.`id`;

DELETE
`waypoint_data`
FROM
`waypoint_data`
LEFT JOIN
(`creature`)
ON
(`creature`.`guid`=`waypoint_data`.`id`)
WHERE
`creature`.`guid` IS NULL;

ALTER TABLE `waypoint_data` ADD INDEX `temp_action` (`action`);
ALTER TABLE `waypoint_scripts` ADD INDEX `temp_id` (`id`);
DELETE
`waypoint_scripts`
FROM
`waypoint_scripts`
LEFT JOIN
(`waypoint_data`)
ON
(`waypoint_data`.`action`=`waypoint_scripts`.`id`)
WHERE
`waypoint_data`.`action` IS NULL;
ALTER TABLE `waypoint_data` DROP INDEX `temp_action`;
ALTER TABLE `waypoint_scripts` DROP INDEX `temp_id`;

update creature_addon set path_id=0;
UPDATE
`creature_addon`, `waypoint_data`
SET
`creature_addon`.`path_id`=`creature_addon`.`guid`
WHERE
`creature_addon`.`guid`=`waypoint_data`.`id`;

UPDATE version SET `cache_id`= '631';
UPDATE version SET `db_version`= 'YTDB_0.14.6_R631_TC_R117096_TDBAI_335_RuDB_R56';
