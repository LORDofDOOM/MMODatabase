# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 631_FIX_17096 632_FIX_17324 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('632_FIX_17324');

# TC
UPDATE `creature_template` SET `exp` = 1 WHERE `entry` = 27664;
UPDATE `creature_template` SET `exp` = 0 WHERE `entry` = 40281;
DELETE FROM `creature_template_addon` WHERE `entry`=32361;
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES
(32361,'60915');
DELETE FROM `creature_template_addon` WHERE `entry` IN (26500,26543,26701,26787);
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(26500,0,0,65536,1,0,'43167 47119'),
(26543,0,0,65536,1,0,'43167 47119'),
(26701,0,0,65536,1,0,'43167 47119'),
(26787,0,0,65536,1,0,'43167 47119');
-- Mount the rider to the drake
DELETE FROM `vehicle_template_accessory` WHERE `entry`=24083;
INSERT INTO `vehicle_template_accessory`(`entry`,`accessory_entry`,`seat_id`,`minion`,`description`,`summontype`,`summontimer`) VALUES
(24083,24849,0,0,'Proto Drake Rider mounted to Enslaved Proto Drake',6,30000);
UPDATE `quest_template` SET `OfferRewardText`="WOW, that was a real life ghost! That was so awesome - I can't wait to tell everyone back at the orphanage. Captain Grayson... he even looked like a pirate! When I grow up I wanna be a ghost pirate too!$B$BThanks for taking me to Westfall, $N. I know there are scary things out there in the wilds of Westfall, and I hope I wasn't too much of a pain. You're awesome!" WHERE `id`=1687;
UPDATE `creature_template` SET `inhabitType`=4 WHERE `entry`=30078;

# NeatElves
DELETE FROM `creature_addon` WHERE `guid` = 93924;
UPDATE `creature_template_addon` SET `auras`='50494' WHERE `entry`=28006;
UPDATE `creature_template_addon` SET `auras`='18950' WHERE `entry`=36938;
UPDATE `creature_template_addon` SET `auras`='18950' WHERE `entry`=36658;
UPDATE `creature_template_addon` SET `auras`='69012 69413' WHERE `entry`=36477;
UPDATE `creature_template_addon` SET `auras`='69012 69413' WHERE `entry`=37629;
UPDATE `creature_template_addon` SET `auras`='63500 64718' WHERE `entry`=34244;
DELETE FROM `creature_template_addon` WHERE `entry` IN (27241, 27661, 27662, 27241, 31884, 24751, 28816, 29836, 38248, 30268, 32222, 38308, 38309, 29838, 29982, 30935, 30934);
DELETE FROM `creature_template_addon` WHERE `entry` IN (27268, 28614, 28616);
UPDATE `creature_template_addon` SET `auras`=NULL WHERE `entry` IN (28093);
UPDATE `creature_template` SET `npcflag`='0' WHERE `entry`=4624;
UPDATE `creature_template` SET `npcflag`='0' WHERE `entry`=13076;
UPDATE `creature_template` SET `npcflag`='0' WHERE `entry`=15184;

# Fix
UPDATE `quest_template` SET `ExclusiveGroup` = 0 WHERE `id` = 13794;
UPDATE `quest_template` SET `ExclusiveGroup` = 0 WHERE `id` = 13795;

# NeatElves
DELETE FROM `gameobject` WHERE `guid`='40173';
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES ('7303', '8663');
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES ('7361', '8822');
REPLACE INTO `creature_template_addon` (`entry`, `bytes2`, `auras`) VALUES ('32361', 1, '60915');
DELETE FROM `creature_template_addon` WHERE `entry` = 27989;
REPLACE INTO `creature_ai_scripts` VALUES ('2798951', '27989', '11', '0', '100', '1', '0', '0', '0', '0', '11', '50487', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '27989';
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 33229;
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 33243;
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 33272;
DELETE FROM `creature_ai_scripts` WHERE `id` = 3324351;
DELETE FROM `creature_ai_scripts` WHERE `id` = 3322951;
DELETE FROM `creature_ai_scripts` WHERE `id` = 3327251;

# Fix
UPDATE `game_event` SET `start_time` = '2013-11-18 01:00:00', `end_time` = '2020-12-30 22:00:00' WHERE `evententry` = 41;
UPDATE `game_event` SET `start_time` = '2013-09-06 00:01:00', `end_time` = '2020-12-30 02:00:00' WHERE `evententry` = 11;
UPDATE `game_event` SET `start_time` = '2013-10-18 00:00:00', `end_time` = '2020-12-31 09:00:00' WHERE `evententry` = 12;
UPDATE `game_event` SET `start_time` = '2013-09-20 02:00:00', `end_time` = '2020-12-30 20:00:00' WHERE `evententry` = 26;
UPDATE `game_event` SET `start_time` = '2013-09-19 00:01:00', `end_time` = '2020-12-30 22:00:00' WHERE `evententry` = 32;
UPDATE `game_event` SET `start_time` = '2013-11-01 01:00:00', `end_time` = '2020-12-30 22:00:00' WHERE `evententry` = 40;
UPDATE `game_event` SET `start_time` = '2013-06-21 02:00:00', `end_time` = '2020-12-30 02:00:00' WHERE `evententry` = 1;

# ICC_Sniff_434
REPLACE INTO gameobject VALUES
(8344, 202078, 631, 15, 1, 503.62, -2124.65, 836.607, 3.14159, 0, 0, 0, 1, 604800, 255, 1),
(8364, 202141, 631, 15, 1, 473.748, -2096.48, 840.857, 3.14159, 0, 0, -1, 0, 604800, 255, 1),
(8304, 202142, 631, 15, 1, 473.748, -2152.83, 840.857, 4.71239, 0, 0, -0.707107, 0.707107, 604800, 255, 1),
(8310, 202143, 631, 15, 1, 533.56, -2152.83, 840.857, 0, 0, 0, 0, 1, 604800, 255, 1),
(9007, 202144, 631, 15, 1, 533.56, -2096.48, 840.857, 1.5708, 0, 0, 0.707107, 0.707107, 604800, 255, 1),
(8322, 202161, 631, 15, 1, 503.62, -2124.66, 836.607, 3.14159, 0, 0, -1, 0, 604800, 255, 1),
(8790, 202190, 631, 15, 1, 503.619, -2124.65, 840.525, 3.15906, 0, 0, -0.999962, 0.00873456, 604800, 255, 1),
(2625, 202436, 631, 15, 1, 426.561, -2123.86, 864.889, 3.15906, 0, 0, -0.999962, 0.00873456, -604800, 255, 1),
(8967, 202437, 631, 15, 1, 425.089, -2123.31, 858.675, 0, 0, 0, 0, 1, 604800, 255, 1),
(8482, 202189, 631, 15, 1, 503.619, -2124.65, 836.61, 3.15906, 0, 0, -0.999962, 0.00873456, 6000, 255, 1),
(8377, 202188, 631, 15, 1, 503.619, -2124.65, 836.61, 3.15906, 0, 0, -0.999962, 0.00873456, 6000, 255, 0),
(12000, 202438, 631, 15, 1, 425.089, -2123.31, 858.675, 0, 0, 0, 0, 1, -604800, 255, 1);

# NeatElves
UPDATE `creature_template` SET `faction_A`=31,`faction_H`=31 WHERE `entry` IN (32820,32956);
UPDATE `quest_template` SET `ExclusiveGroup`=11364 WHERE `id` IN (11376, 11383, 11385, 11371, 11389, 11500, 11364, 11387);
UPDATE `quest_template` SET `ExclusiveGroup`=11354 WHERE `id` IN (11382, 11368, 11378, 11374, 11499, 11370, 11372, 11369, 11388, 11362, 11363, 11375, 11354, 11386, 11373, 11384);
DELETE FROM `gossip_menu` WHERE `entry` = 6535;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES ('6535', '7737'), ('6535', '7738');
DELETE FROM `gossip_menu_option` WHERE `menu_id`=6535;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES ('6535', '0', '0', 'Smear the ash on my face like war paint!', '1', '1', '1', '0', '0', '0', NULL);
UPDATE `gameobject_template` SET `flags` = 17 WHERE `entry` = 180433;
REPLACE INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(8289,180432,0,1,1,1749.28,507.611,39.2312,1.49635,0,0,0.680301,0.732933,300,0,1),
(8290,180432,0,1,1,1712.63,507.05,38.2495,1.58824,0,0,0.713246,0.700914,300,0,1),
(55143,180433,0,1,1,1734.04,504.05,42.2861,1.4131,0,0,0.649213,0.760607,300,0,0),
(55144,180434,0,1,1,1758.89,513.276,35.8655,1.28897,0,0,0.600788,0.799409,300,0,1),
(55145,180434,0,1,1,1704.48,518.689,35.4045,1.30704,0,0,0.607984,0.793949,300,0,1),
(8293,180434,0,1,1,1739.78,473.238,61.6565,1.59371,0,0,0.71516,0.698961,300,0,1),
(8296,180434,0,1,1,1717.32,472.723,61.6566,1.59371,0,0,0.71516,0.698961,300,0,1),
(8307,180437,0,1,1,1744.62,504.954,40.8518,1.23403,0,0,0.578603,0.81561,300,0,1),
(8311,180437,0,1,1,1729.13,510.378,40.8719,1.23403,0,0,0.578603,0.81561,300,0,1),
(8315,180437,0,1,1,1721.77,503.938,41.1381,1.23403,0,0,0.578603,0.81561,300,0,1),
(8316,180437,0,1,1,1744.96,496.25,41.44,1.24581,0,0,0.583397,0.812187,300,0,1),
(55141,180405,0,1,1,1746.07,517.066,38.936,2.83466,0,0,0.988247,0.152864,300,0,1),
(8319,180405,0,1,1,1728,475.099,63.6779,3.08363,0,0,0.99958,0.0289791,300,0,1),
(55142,180406,0,1,1,1719.67,522.979,36.8828,2.93283,0,0,0.994557,0.10419,300,0,1);
REPLACE INTO `game_event_gameobject` VALUES (12,8289),(12,8290),(12,8293),(12,8296),(12,8307),(12,8311),(12,8315),(12,8316),(12,8319);
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
(6524,15195,0,1,1,0,0,1713.1,511.295,37.2005,1.48063,300,0,0,45780,0,0),
(6589,15195,0,1,1,0,0,1750.57,511.697,37.7587,1.25444,300,0,0,45780,0,0),
(6594,15195,0,1,1,0,0,1732.31,520.874,36.3326,1.30942,300,0,0,45780,0,0),
(16082,15197,0,1,1,0,0,1734.6,508.803,41.2847,1.6173,300,0,0,15260,0,0),
(12158,15199,0,1,1,0,0,-813.614,-547.184,15.6377,1.69193,300,0,0,15260,0,0);
REPLACE INTO `game_event_creature` VALUES (12,6524),(12,6589),(12,6594);
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
(121148,23537,530,1,1,0,0,-4192.38,-12268.1,2.53389,-1.72788,300,0,0,45780,0,0),
(121149,23537,530,1,1,0,0,-4207.84,-12276.7,4.82085,-0.069813,300,0,0,45780,0,0),
(121160,23537,0,1,1,0,0,-5753.24,-533.652,405.022,1.15192,300,0,0,45780,0,0),
(121161,23537,0,1,1,0,0,-5761.17,-528.193,404.855,1.16937,300,0,0,15260,0,0),
(121162,23537,0,1,1,0,0,-5747.52,-527.634,401.297,0.610865,300,0,0,15260,0,0),
(121163,23537,1,1,1,0,0,286.565,-4561.45,28.5742,2.42601,300,0,0,15260,0,0),
(121164,23537,530,1,1,0,0,9235.05,-6783.4,26.4426,1.5708,300,0,0,15260,0,0),
(6638,23537,0,1,1,0,0,2240.44,459.159,39.2838,0.820305,300,0,0,15260,0,0),
(6650,23537,0,1,1,0,0,2239.49,487.861,38.3446,-0.715585,300,0,0,15260,0,0),
(6659,23537,0,1,1,0,0,-9328.25,56.2778,63.2509,2.60054,300,0,0,15260,0,0),
(6748,23537,0,1,1,0,0,-9314.1,52.4562,77.7343,2.93215,300,0,0,15260,0,0),
(6766,23686,1,1,1,0,0,305.144,-4724.5,9.83766,3.68348,300,0,0,7185,7196,0),
(6773,23686,0,1,1,0,0,-9465.54,63.2228,55.8587,6.25841,300,0,0,7185,7196,0);
REPLACE INTO `game_event_creature` VALUES (12,6638),(12,6650),(12,6659),(12,6748),(12,6766),(12,6773);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE `item`=1129;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-50' WHERE `item`=725;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-35' WHERE `item` in (732,772,773);
UPDATE `creature_model_info` SET `bounding_radius`=1.8,`combat_reach`=0,`gender`=2 WHERE `modelid`=28293;
UPDATE `creature_model_info` SET `bounding_radius`=1.75, `combat_reach`=0, `gender`=2 WHERE `modelid`=28310;
INSERT IGNORE INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `description`) VALUES
(32823, 34812, 0, 'Bountiful Table - The Turkey Chair'),
(32823, 34823, 1, 'Bountiful Table - The Cranberry Chair'),
(32823, 34819, 2, 'Bountiful Table - The Stuffing Chair'),
(32823, 34824, 3, 'Bountiful Table - The Sweet Potato Chair'),
(32823, 34822, 4, 'Bountiful Table - The Pie Chair'),
(32823, 32830, 5, 'Bountiful Table - Food Holder'),
(32823, 32840, 6, 'Bountiful Table - Plate Holder'),
(32830, 32824, 0, 'Food Holder - [PH] Pilgrim''s Bounty Table - Turkey'),
(32830, 32827, 1, 'Food Holder - [PH] Pilgrim''s Bounty Table - Cranberry Sauce'),
(32830, 32831, 2, 'Food Holder - [PH] Pilgrim''s Bounty Table - Stuffing'),
(32830, 32825, 3, 'Food Holder - [PH] Pilgrim''s Bounty Table - Yams'),
(32830, 32829, 4, 'Food Holder - [PH] Pilgrim''s Bounty Table - Pie'),
(32840, 32839, 0, 'Plate Holder - Sturdy Plate'),
(32840, 32839, 1, 'Plate Holder - Sturdy Plate'),
(32840, 32839, 2, 'Plate Holder - Sturdy Plate'),
(32840, 32839, 3, 'Plate Holder - Sturdy Plate'),
(32840, 32839, 4, 'Plate Holder - Sturdy Plate');
UPDATE `creature_template` SET `spell2`='52264', `spell1`='52268' WHERE `entry` IN (28605,28606,28607);
UPDATE `npc_spellclick_spells` SET `cast_flags` = '1' WHERE `npc_entry` = 28605 AND `spell_id` = 52263;
UPDATE `npc_spellclick_spells` SET `cast_flags` = '1' WHERE `npc_entry` = 28606 AND `spell_id` = 52263;
UPDATE `npc_spellclick_spells` SET `cast_flags` = '1' WHERE `npc_entry` = 28607 AND `spell_id` = 52263;
UPDATE `creature_template_addon` SET `bytes1`='0', `auras`='29266' WHERE `entry`=3891;
UPDATE `creature_template` SET `RegenHealth`='0' WHERE `entry`=3920;
UPDATE `creature` SET `curhealth`='71' WHERE `guid`=41220;
UPDATE `creature_template` SET `unit_flags` = `unit_flags` | 768 WHERE `entry`='3891';
UPDATE `creature_template` SET `unit_flags` = `unit_flags` | 256 WHERE `entry`='3920';
REPLACE INTO `conditions` VALUES ('13', '1', '63820', '0', '0', '31', '0', '3', '33856', '0',0, '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '64425', '0', '0', '31', '0', '3', '33856', '0',0, '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '64620', '0', '0', '31', '0', '3', '33856', '0',0, '0', '0', '', null);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-50' WHERE `item`=37202;
UPDATE `creature_template_addon` SET `auras`=NULL WHERE `entry`=24822;
UPDATE creature_template SET AIName='EventAI' WHERE entry=28768;
DELETE FROM creature_ai_scripts WHERE creature_id=28768;
INSERT INTO creature_ai_scripts VALUES 
('2876801','28768','4','0','100','0','0','0','0','0','1','-780','0','0','0','0','0','0','0','0','0','0','Dark Rider of Acherus - Yell on Aggro'),
('2876802','28768','0','0','100','1','0','1500','6000','9000','11','52372','1','0','0','0','0','0','0','0','0','0','Dark Rider of Acherus - Cast Icy Touch'),
('2876803','28768','0','0','100','1','3000','7000','6000','9000','11','50688','1','0','0','0','0','0','0','0','0','0','Dark Rider of Acherus - Cast Plague Strike'),
('2876804','28768','0','0','100','1','6000','10000','6000','9000','11','52374','1','0','0','0','0','0','0','0','0','0','Dark Rider of Acherus - Cast Blood Strike'),
('2876805','28768','9','0','100','1','5','30','2000','2000','11','52356','1','0','0','0','0','0','0','0','0','0','Dark Rider of Acherus - Cast Throw');
UPDATE creature_template SET InhabitType=InhabitType|4 WHERE entry IN (28670,30161);
UPDATE creature SET id = 28782 WHERE id=28768;
DELETE FROM creature_template_addon WHERE entry in (28768,28782,27206);
insert ignore into vehicle_template_accessory (entry,seat_id,accessory_entry,description) values
(28782, 0, 28768, 'Acherus Deathcharger - Dark Rider of Acherus');
UPDATE creature_template SET faction_A = 16, faction_H = 16 WHERE entry in (27213,28782);
REPLACE INTO `conditions` VALUES ('13', '1', '52349', '0', '0', '31', '0', '3', '28782', '0', '0',0, '0', '', null);
delete from npc_spellclick_spells where npc_entry=28782;
insert into npc_spellclick_spells (npc_entry, spell_id, cast_flags) values
(28782, 52349, 2);

# Ravie
DELETE FROM creature WHERE guid=41236;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (41236,3811,1,1,1,0,0,2831.68,-3071.57,186.712,0.341283,600,7,0,1176,0,1);
DELETE FROM creature WHERE guid=41270;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (41270,3811,1,1,1,0,0,2846.78,-3060.63,191.373,0.690786,600,7,0,1176,0,1);
DELETE FROM creature WHERE guid=41187;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (41187,3811,1,1,1,0,0,2870.49,-3064.53,198.332,5.87049,600,7,0,1176,0,1);
DELETE FROM creature WHERE guid=41153;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (41153,3811,1,1,1,0,0,2881.41,-3034.26,200.422,1.35837,600,7,0,1176,0,1);
DELETE FROM creature WHERE guid=41215;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (41215,3811,1,1,1,0,0,2881.2,-3001.71,201.331,1.05992,600,7,0,1176,0,1);

# NeatElves
DELETE FROM creature_ai_scripts WHERE creature_id in (20243,21409,27099,22009);
INSERT INTO creature_ai_scripts VALUES 
('2140901','21409','4','0','100','0','0','0','0','0','1','-640','0','0','0','0','0','0','0','0','0','0','Envoy Icarius - Say on Aggro');
#
REPLACE INTO `creature_ai_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`,`emote`) VALUES
('-640','Ah, damn it all! Clever trap. Too bad you\'ll never live to tell the tale...','0','0','0','21409','0');
#
UPDATE creature_template SET AIName='EventAI' WHERE entry IN (21409);
REPLACE INTO `conditions` VALUES ('13', '1', '53210', '0', '0', '31', '0', '3', '29177', '0', '0',0, '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '53210', '0', '0', '31', '0', '3', '29176', '0', '0',0, '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '53210', '0', '0', '31', '0', '3', '29180', '0', '0',0, '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '53210', '0', '0', '31', '0', '3', '29181', '0', '0',0, '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '53210', '0', '0', '31', '0', '3', '29182', '0', '0',0, '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '53210', '0', '0', '31', '0', '3', '29174', '0', '0',0, '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '53210', '0', '0', '31', '0', '3', '29178', '0', '0',0, '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '53210', '0', '0', '31', '0', '3', '29179', '0', '0',0, '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '53644', '0', '0', '31', '0', '3', '29206', '0', '0',0, '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '53644', '0', '0', '31', '0', '3', '29219', '0', '0',0, '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '53644', '0', '0', '31', '0', '3', '29186', '0', '0',0, '0', '', null);
DELETE FROM creature_template_addon WHERE (entry=28821);
INSERT INTO creature_template_addon (entry, auras) VALUES (28821, 54173);
DELETE FROM creature_template_addon WHERE (entry=29175);
INSERT INTO creature_template_addon (entry, mount) VALUES (29175, 14338);
REPLACE INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) values
(73589, 191330, 609, 1, 128, 2282.675, -5284.146, 82.61536, 2.478367, 0, 0, 0, 1, -120, 255, 1),
(8323 ,191302, 609, 1, 128, 2268.648, -5344.329, 86.94088, 2.478367, 0, 0, 0, 1, -120, 255, 1),
(8324 ,191301, 609, 1, 128, 2290.013, -5248.24, 82.4146, 0.06981169, 0, 0, 0, 1, -120, 255, 1),
(8329 ,191302, 609, 1, 128, 2322.023, -5299.277, 81.99951, 0.1919852, 0, 0, 0, 1, -120, 255, 1),
(8330 ,191302, 609, 1, 128, 2248.281, -5308.292, 80.57009, 2.565632, 0, 0, 0, 1, -120, 255, 1),
(8332 ,191301, 609, 1, 128, 2281.657, -5307.493, 86.68705, -1.256636, 0, 0, 0, 1, -120, 255, 1),
(8333 ,191302, 609, 1, 128, 2256.331, -5269.824, 80.03564, 1.012289, 0, 0, 0, 1, -120, 255, 1),
(8334 ,191302, 609, 1, 128, 2299.604, -5267.319, 81.93887, 2.356195, 0, 0, 0, 1, -120, 255, 1),
(8335 ,191302, 609, 1, 128, 2291.603, -5331.028, 131.3173, -0.8726639, 0, 0, 0, 1, -120, 255, 1);
UPDATE `gossip_menu_option` SET `action_poi_id`='1144' WHERE `menu_id`=10265 AND `id`=11;
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(2352, 11, 0, 'Lexicon of Power', 1, 1, 10205, 1162, 0, 0, NULL);
REPLACE INTO `creature_template_addon` (`entry`, `auras`) VALUES ('27664', '49384'), ('40281', '75110');
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
('9045', '0', '0', 'I don''t have time for chit-chat, Lou. Take me to Scalawag Point.', '1', '1', '1', '0', '0', '0', NULL);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
('10218', '0', '0', '<Get in the bomber and return to Scalawag Point.>', '1', '1', '1', '0', '0', '0', NULL);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
('9621', '0', '0', 'Harry said I could use his bomber to Bael''gun''s. I''m ready to go!', '1', '1', '1', '0', '0', '0', NULL);
UPDATE `creature_template` SET `unit_flags` = `unit_flags`|16388 WHERE `entry` = 34822;
DELETE FROM `npc_text` WHERE `ID`=12628;
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(12628, '', 'These infants will live. With love and affection they will grow to be strong members of the Horde, and with time the horrible reminders of their shattered lives will fade.', 0, 1, 396, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature_loot_template` WHERE (`entry`=36853) AND (`item`=51026);
DELETE FROM `creature_loot_template` WHERE (`entry`=38265) AND (`item`=51027);
UPDATE `creature` SET `phaseMask` = 6 WHERE `id` = 30228;
UPDATE `creature` SET `MovementType` = 0 WHERE `id` IN (16206, 16208, 16209, 6090, 1373, 3584, 6176, 5901, 1416, 17682, 29499, 20206, 18384, 19294);
REPLACE INTO `conditions` VALUES ('13', '1', '51022', '0', '0', '31', '0', '3', '28239', '0', '0', '0',0, '', null);
UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE `guid`=48797;
DELETE FROM `creature` WHERE `guid` = 48908;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(48774, 9022, 230, 1, 1, 0, 0, 275.327, -80.9653, -77.0425, 5.79449, 7200, 0, 0, 7113, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(46529, 7318, 1, 1, 1, 0, 0, 9843.19, 1496.22, 1257.25, 2.34654, 300, 0, 0, 186, 191, 0);
UPDATE `creature_template` SET `MovementType`='2' WHERE `entry` in (7318, 6090, 29499);
UPDATE gameobject_template SET flags=34 WHERE entry IN (179550, 179549);
DELETE FROM `creature` WHERE `guid` = 115346;
DELETE FROM `creature` WHERE `guid` = 58472;
DELETE FROM `creature` WHERE `guid` = 130819;
DELETE FROM `creature` WHERE `guid` = 58471;
DELETE FROM `creature` WHERE `guid` = 58470;
DELETE FROM `creature` WHERE `guid` = 58469;
DELETE FROM `creature` WHERE `guid` = 58468;
DELETE FROM `creature` WHERE `guid` = 56778;
DELETE FROM `creature` WHERE `guid` = 59046;
DELETE FROM `creature` WHERE `guid` = 56777;
DELETE FROM `creature` WHERE `guid` = 56776;
DELETE FROM `creature` WHERE `guid` = 56775;
DELETE FROM `creature` WHERE `guid` = 56774;
DELETE FROM `creature` WHERE `guid` = 56773;
DELETE FROM `creature` WHERE `guid` = 56772;
DELETE FROM `creature` WHERE `guid` = 56771;
DELETE FROM `creature` WHERE `guid` = 56770;
DELETE FROM `creature` WHERE `guid` = 98205;
DELETE FROM `creature` WHERE `guid` = 98387;
DELETE FROM `creature` WHERE `guid` = 98388;
DELETE FROM `creature` WHERE `guid` = 115326;
DELETE FROM `creature` WHERE `guid` = 112665;
DELETE FROM `creature` WHERE `guid` = 112664;
DELETE FROM `creature` WHERE `guid` = 110391;
DELETE FROM `creature` WHERE `guid` = 110388;
DELETE FROM `creature` WHERE `guid` = 110386;
DELETE FROM `creature` WHERE `guid` = 110385;
DELETE FROM `creature` WHERE `guid` = 110384;
DELETE FROM `creature` WHERE `guid` = 109233;
DELETE FROM `creature` WHERE `guid` = 109232;
DELETE FROM `creature` WHERE `guid` = 58687;
DELETE FROM `creature` WHERE `guid` = 56769;
DELETE FROM `creature` WHERE `guid` = 89608;
DELETE FROM `creature` WHERE `guid` = 89602;
DELETE FROM `creature` WHERE `guid` = 89599;
DELETE FROM `creature` WHERE `guid` = 89597;
DELETE FROM `creature` WHERE `guid` = 89585;
DELETE FROM `creature` WHERE `guid` = 89593;
DELETE FROM `creature` WHERE `guid` = 89591;
DELETE FROM `creature` WHERE `guid` = 89580;
DELETE FROM `creature` WHERE `guid` = 89590;
DELETE FROM `creature` WHERE `guid` = 89574;
DELETE FROM `creature` WHERE `guid` = 109234;
DELETE FROM `creature` WHERE `guid` = 98389;
DELETE FROM `creature` WHERE `guid` = 98391;
DELETE FROM `creature` WHERE `guid` = 98419;
DELETE FROM `creature` WHERE `guid` = 108622;
DELETE FROM `creature` WHERE `guid` = 109230;
DELETE FROM `creature` WHERE `guid` = 109231;
UPDATE `creature_template` SET `gossip_menu_id`=9318 WHERE `entry`=26485;
UPDATE `creature_template` SET `gossip_menu_id`=9465 WHERE `entry`=26979;
UPDATE `creature_template` SET `gossip_menu_id`=9437 WHERE `entry`=26504;
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (9318,12628),(9437,12703),(9465,12725);
REPLACE INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`) VALUES
(9437,0,0,'I wish to make use of the stables.',14,4194304),
(840,2,0,'Hero, I have urgent business with Corporal Splithoof.',1,1);
DELETE FROM game_graveyard_zone WHERE ghost_zone = 719;
INSERT INTO game_graveyard_zone (id, ghost_zone, faction) VALUES
(469, 719, 0);
UPDATE `creature_template` SET `minlevel` = 1, `maxlevel` = 1, `mindmg` = 1, `maxdmg` = 1, `attackpower` = 1, `dmg_multiplier` = 1, `unit_flags` = 16908288, `minrangedmg` = 1, `maxrangedmg` = 1, `flags_extra` = 2 WHERE `entry` = 4277;
DELETE FROM `creature_template_addon` WHERE `entry` IN (33051,33705);
INSERT INTO `creature_template_addon` (`entry`,`auras`) VALUES (33051,62019),(33705,61974);
DELETE FROM `creature_addon` WHERE `guid` in (59537,59509,59510,59511,59494,59485,59483,59481,59480,59538,59539,59540,59541,63669,63683,63686,63694,63121,63115,63097,63205,63789,63786,63788,63782,63775,63784,63759,63702);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(58816, 16598, 530, 1, 1, 0, 0, 230.327, 2799.57, 213.902, 0.553436, 300, 0, 0, 2138, 0, 2),
(58817, 16598, 530, 1, 1, 0, 0, 236.186, 2813.75, 200.971, 6.14692, 300, 0, 0, 2138, 0, 2),
(58818, 16598, 530, 1, 1, 0, 0, 220.616, 2858.56, 198.872, 3.54279, 300, 0, 0, 2138, 0, 2),
(58819, 16598, 530, 1, 1, 0, 0, 238.445, 2809.38, 158.56, 0.403725, 300, 0, 0, 2138, 0, 2),
(58820, 16598, 530, 1, 1, 0, 0, 246.404, 2854.73, 171.391, 2.19142, 300, 0, 0, 2138, 0, 2);
DELETE FROM waypoint_data WHERE id IN (58816,58817,58818,58819,58820);
#
DELETE FROM `creature` WHERE `guid` = 59538;
DELETE FROM `creature` WHERE `guid` = 59539;
DELETE FROM `creature` WHERE `guid` = 59540;
DELETE FROM `creature` WHERE `guid` = 59541;
DELETE FROM `creature` WHERE `guid` = 63694;
DELETE FROM `creature` WHERE `guid` = 63702;
#
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(58689, 20238, 530, 1, 1, 0, 0, 279.395, 1472.05, -13.1965, 4.16668, 300, 0, 0, 59140, 0, 2),
(58690, 20238, 530, 1, 1, 0, 0, 480.375, 2011.46, 108.841, 2.42601, 300, 0, 0, 59140, 0, 0),
(58691, 20238, 530, 1, 1, 0, 0, 483.338, 2010.52, 109.562, 2.02458, 300, 0, 0, 59140, 0, 0),
(58692, 20238, 530, 1, 1, 0, 0, 522.997, 1989.82, 109.521, 4.69494, 300, 0, 0, 59140, 0, 0),
(58693, 20238, 530, 1, 1, 0, 0, 507.782, 2015.47, 114.171, 1.72788, 300, 0, 0, 59140, 0, 0),
(58694, 20238, 530, 1, 1, 0, 0, 494.46, 2016.79, 112.141, 1.64061, 300, 0, 0, 59140, 0, 0),
(59480, 20238, 530, 1, 1, 0, 0, 497.437, 2019.33, 113.084, 2.30383, 300, 0, 0, 59140, 0, 0),
(59481, 20238, 530, 1, 1, 0, 0, 313.404, 1476.27, -7.68097, 0.820305, 360, 0, 0, 59140, 0, 2),
(59483, 20238, 530, 1, 1, 0, 0, 317.901, 1473.37, -6.11224, 0.453786, 360, 0, 0, 59140, 0, 2),
(59485, 20238, 530, 1, 1, 0, 0, 322.826, 1470.75, -4.64011, 0.593412, 360, 0, 0, 59140, 0, 2),
(59494, 20238, 530, 1, 1, 0, 0, 314.131, 1439.38, 0.876582, 1.20428, 360, 0, 0, 59140, 0, 0);
DELETE FROM waypoint_data WHERE id =58689;
DELETE FROM waypoint_data WHERE id =59485;
DELETE FROM waypoint_data WHERE id =59483;
DELETE FROM waypoint_data WHERE id =59481;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(63689, 18120, 530, 1, 1, 0, 0, 1461.68, 8614.68, -12.7068, 3.23446, 300, 0, 0, 5527, 0, 2),
(99571, 18120, 530, 1, 1, 0, 0, 1484.3, 8625.4, -22.3558, 3.40339, 300, 0, 0, 5527, 0, 0),
(99572, 18120, 530, 1, 1, 0, 0, 1483.27, 8607.94, -21.2415, 2.75762, 300, 0, 0, 5527, 0, 0),
(99573, 18120, 530, 1, 1, 0, 0, 1715.04, 8481.7, -4.55335, 3.01942, 300, 0, 0, 5527, 0, 0),
(99574, 18120, 530, 1, 1, 0, 0, 1714.45, 8396.25, -26.7423, 4.65885, 300, 5, 0, 5527, 0, 1),
(99575, 18120, 530, 1, 1, 0, 0, 1762.23, 8419.85, -13.0764, 5.93659, 300, 5, 0, 5527, 0, 1),
(99576, 18120, 530, 1, 1, 0, 0, 1819.48, 8549.05, -15.778, 4.78996, 300, 5, 0, 5527, 0, 1),
(99577, 18120, 530, 1, 1, 0, 0, 1793.71, 8615.6, -3.0752, 5.57795, 300, 5, 0, 5527, 0, 1),
(99578, 18120, 530, 1, 1, 0, 0, 1666.22, 8587.74, -41.7359, 5.05577, 300, 0, 0, 5527, 0, 2),
(99579, 18120, 530, 1, 1, 0, 0, 1699.82, 8539.68, -47.9322, 3.14159, 300, 0, 0, 5527, 0, 2),
(59509, 18120, 530, 1, 1, 0, 0, 1619.34, 8511.37, -6.28169, 5.23153, 300, 5, 0, 5527, 0, 1),
(59510, 18120, 530, 1, 1, 0, 0, 1677.2, 8525.01, -0.2607, 4.74729, 300, 0, 0, 5527, 0, 0),
(59511, 18120, 530, 1, 1, 0, 0, 1667.21, 8525.35, 0.66946, 4.57276, 300, 0, 0, 5527, 0, 0),
(59537, 18120, 530, 1, 1, 0, 0, 1692.69, 8474.78, -6.9911, 2.09439, 300, 0, 0, 5527, 0, 0);
DELETE FROM waypoint_data WHERE id =99578;
DELETE FROM waypoint_data WHERE id =99579;
DELETE FROM waypoint_data WHERE id =63689;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(63152, 20443, 530, 1, 1, 0, 0, 1230.58, 8413.14, 18.8607, 4.15297, 300, 5, 0, 5341, 0, 1),
(63153, 20443, 530, 1, 1, 0, 0, 1229.11, 8646.23, 21.7311, 2.83405, 300, 0, 0, 5341, 0, 2),
(63158, 20443, 530, 1, 1, 0, 0, 1156.06, 8450.44, 21.9803, 1.58825, 300, 0, 0, 5341, 0, 0),
(63159, 20443, 530, 1, 1, 0, 0, 1181.64, 8439.66, 58.5955, 1.83407, 300, 0, 0, 5341, 0, 2),
(63160, 20443, 530, 1, 1, 0, 0, 1179.79, 8448, 22.0416, 1.48353, 300, 0, 0, 5341, 0, 0),
(63170, 20443, 530, 1, 1, 0, 0, 1177.31, 8406.47, 23.5119, 4.64258, 300, 0, 0, 5341, 0, 0),
(63171, 20443, 530, 1, 1, 0, 0, 1036.71, 8455.7, 22.3028, 4.64258, 300, 0, 0, 5341, 0, 0),
(63172, 20443, 530, 1, 1, 0, 0, 1049.04, 8489.08, 22.4008, 0.855211, 300, 0, 0, 5341, 0, 0),
(63175, 20443, 530, 1, 1, 0, 0, 1044.28, 8487.74, 58.3828, 2.15023, 300, 0, 0, 5341, 0, 2),
(63614, 20443, 530, 1, 1, 0, 0, 1017.63, 8497.78, 22.5249, 1.71042, 300, 0, 0, 5341, 0, 0),
(63619, 20443, 530, 1, 1, 0, 0, 979.345, 8519.84, 19.1686, 5.58282, 300, 5, 0, 5341, 0, 1),
(63620, 20443, 530, 1, 1, 0, 0, 1086.27, 8642.23, 23.8287, 3.44698, 300, 0, 0, 5341, 0, 2);
DELETE FROM waypoint_data WHERE id =63153;
DELETE FROM waypoint_data WHERE id =63620;
DELETE FROM waypoint_data WHERE id =63175;
DELETE FROM waypoint_data WHERE id =63159;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(63815, 18118, 530, 1, 1, 0, 0, 635.365, 7891.39, 22.6852, 5.84373, 300, 5, 0, 4274, 2568, 1),
(63260, 18118, 530, 1, 1, 0, 0, 685.028, 7827.3, 22.1949, 5.52856, 300, 5, 0, 4274, 2568, 1),
(63814, 18118, 530, 1, 1, 0, 0, 678.035, 7766, 20.914, 0.445934, 300, 5, 0, 4274, 2568, 1),
(63813, 18118, 530, 1, 1, 0, 0, 668.823, 7842.5, 22.3872, 2.82466, 300, 5, 0, 4274, 2568, 1),
(63235, 18118, 530, 1, 1, 0, 0, 811.414, 7821.9, 24.4337, 2.15959, 300, 5, 0, 4274, 2568, 1),
(63803, 18118, 530, 1, 1, 0, 0, 986.003, 7654.36, 22.0528, 2.26279, 300, 5, 0, 4274, 2568, 1),
(63220, 18118, 530, 1, 1, 0, 0, 1026.03, 7752.1, 19.5052, 1.13552, 300, 5, 0, 4274, 2568, 1),
(63089, 18118, 530, 1, 1, 0, 0, 986.488, 7724.7, 21.4559, 1.96491, 300, 5, 0, 4274, 2568, 1),
(63217, 18118, 530, 1, 1, 0, 0, 1001.36, 7678.71, 22.9349, 0.191326, 300, 5, 0, 4274, 2568, 1),
(63219, 18118, 530, 1, 1, 0, 0, 879.757, 7735.77, 24.1669, 2.11356, 300, 5, 0, 4274, 2568, 1),
(63791, 18118, 530, 1, 1, 0, 0, 985.97, 7837.71, 21.7641, 4.40484, 300, 5, 0, 4274, 2568, 1),
(63259, 18118, 530, 1, 1, 0, 0, 940.475, 7914.06, 23.5689, 0.93999, 300, 0, 0, 4274, 2568, 2),
(63103, 18118, 530, 1, 1, 0, 0, 1033.8, 7923.98, 20.4459, 1.29385, 300, 5, 0, 4274, 2568, 1),
(63104, 18118, 530, 1, 1, 0, 0, 952.008, 7978.58, 23.9164, 4.01056, 300, 5, 0, 4274, 2568, 1),
(63120, 18118, 530, 1, 1, 0, 0, 785.02, 7982.65, 22.0528, 1.11493, 300, 5, 0, 4274, 2568, 1),
(63759, 18118, 530, 1, 1, 0, 0, 805.798, 7933.78, 23.496, 4.82984, 300, 5, 0, 4274, 2568, 1),
(63210, 18118, 530, 1, 1, 0, 0, 772.929, 7908.65, 20.4256, 0.617525, 300, 5, 0, 4274, 2568, 1);
DELETE FROM waypoint_data WHERE id =63259;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(71235, 21050, 530, 1, 1, 0, 0, -3891.16, 1399.73, 42.5456, 1.46009, 600, 0, 0, 6542, 0, 2);
DELETE FROM waypoint_data WHERE id =71235;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(63121, 21314, 530, 1, 1, 0, 0, -3472.16, 2912.5, 179.804, 1.41592, 300, 0, 0, 6326, 0, 2),
(63115, 21314, 530, 1, 1, 0, 0, -3391.91, 3045.83, 173.878, 2.8e-005, 300, 0, 0, 6326, 0, 2);
DELETE FROM waypoint_data WHERE id =63115;
DELETE FROM waypoint_data WHERE id =63121;
UPDATE creature SET spawndist=10, MovementType=1 WHERE guid IN (124880,124881,124882,124883,124884,124885,124886,124887,124888,124889,124890,124892,124893,124894,124895,124896,124897,124898,124899,125644,125645,125646);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(83726, 22343, 530, 1, 1, 0, 0, -1564.59, 9797.71, 199.122, 4.88692, 300, 0, 0, 6986, 0, 0),
(83731, 22343, 530, 1, 1, 0, 0, -1526.11, 9707.7, 200.013, 1.15457, 300, 0, 0, 6986, 0, 2),
(83728, 22343, 530, 1, 1, 0, 0, -1520.26, 9833.81, 200.323, 5.98648, 300, 0, 0, 6986, 0, 0),
(83734, 22343, 530, 1, 1, 0, 0, -1471.37, 9874.79, 200.387, 6.18657, 300, 0, 0, 6986, 0, 2),
(83737, 22343, 530, 1, 1, 0, 0, -1391.65, 9744.09, 202.75, 0.875509, 300, 0, 0, 6986, 0, 2),
(83739, 22343, 530, 1, 1, 0, 0, -1355.83, 9598.37, 203.966, 5.442, 300, 0, 0, 6986, 0, 2),
(83730, 22343, 530, 1, 1, 0, 0, -1306.94, 9590.38, 210.033, 6.21337, 300, 0, 0, 6986, 0, 0),
(83738, 22343, 530, 1, 1, 0, 0, -1274.74, 9562.37, 213.293, 5.05245, 300, 0, 0, 6986, 0, 2),
(83729, 22343, 530, 1, 1, 0, 0, -1298.21, 9618.36, 205.511, 5.32325, 300, 0, 0, 6986, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(75854, 22394, 530, 1, 1, 0, 0, -1530.46, 9710.17, 201.467, 1.17264, 300, 5, 0, 3493, 0, 1),
(75855, 22394, 530, 1, 1, 0, 0, -1477.16, 9878.33, 200.854, 0.884089, 300, 5, 0, 3493, 0, 1),
(75856, 22394, 530, 1, 1, 0, 0, -1395.83, 9746.88, 202, 0.875532, 300, 5, 0, 3493, 0, 1),
(75857, 22394, 530, 1, 1, 0, 0, -1354.97, 9603.05, 203.475, 5.6471, 300, 5, 0, 3493, 0, 1),
(75858, 22394, 530, 1, 1, 0, 0, -1270.13, 9564.35, 214.043, 5.03002, 300, 5, 0, 3493, 0, 1);
DELETE FROM waypoint_data WHERE id =83738;
DELETE FROM waypoint_data WHERE id =83739;
DELETE FROM waypoint_data WHERE id =83737;
DELETE FROM waypoint_data WHERE id =83734;
DELETE FROM waypoint_data WHERE id =83731;
DELETE FROM `reference_loot_template` WHERE `entry` = 26042;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(26042, 26042, 100, 0, 1, 1),
(26042, 26043, 100, 0, 1, 1);
DELETE FROM `creature_loot_template` WHERE `item` = 26043;
UPDATE `creature_loot_template` SET `mincountOrRef`='-26042' WHERE `item`=26042;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(75860, 22393, 530, 1, 1, 0, 0, -1532.91, 9774.13, 199.682, 1.72692, 300, 0, 0, 33534, 9465, 2),
(75861, 22393, 530, 1, 1, 0, 0, -1586.43, 9870.88, 201.657, 0.576281, 300, 0, 0, 33534, 9465, 2),
(75862, 22393, 530, 1, 1, 0, 0, -1487.72, 9826.38, 200.122, 0.334209, 300, 0, 0, 33534, 9465, 2),
(75863, 22393, 530, 1, 1, 0, 0, -1454.51, 9635.81, 201.747, 1.66862, 300, 0, 0, 33534, 9465, 2),
(75864, 22393, 530, 1, 1, 0, 0, -1394.65, 9627.67, 200.252, 2.58486, 300, 0, 0, 33534, 9465, 2);
DELETE FROM `creature` WHERE `guid` = 75865;
DELETE FROM `creature` WHERE `guid` = 75866;
DELETE FROM `creature` WHERE `guid` = 75867;
DELETE FROM `creature` WHERE `guid` = 75868;
DELETE FROM `creature` WHERE `guid` = 75869;
DELETE FROM `creature` WHERE `guid` = 75870;
DELETE FROM `creature` WHERE `guid` = 75871;
DELETE FROM `creature` WHERE `guid` = 75872;
DELETE FROM `creature` WHERE `guid` = 75873;
DELETE FROM `creature` WHERE `guid` = 75874;
DELETE FROM `creature` WHERE `guid` = 75875;
DELETE FROM `creature` WHERE `guid` = 75876;
DELETE FROM `creature` WHERE `guid` = 75877;
DELETE FROM `creature` WHERE `guid` = 75878;
DELETE FROM `creature` WHERE `guid` = 75879;
DELETE FROM `creature` WHERE `guid` = 75880;
DELETE FROM `creature` WHERE `guid` = 75881;
DELETE FROM `creature` WHERE `guid` = 75882;
DELETE FROM `creature` WHERE `guid` = 75883;
DELETE FROM `creature` WHERE `guid` = 75884;
DELETE FROM `creature_addon` WHERE `guid` in (75865,75866,75867,75868,75869,75870,75871,75872,75873,75874,75875,75876,75877,75878,75879,75880,75881,75882,75883,75884);
DELETE FROM waypoint_data WHERE id =75864;
DELETE FROM waypoint_data WHERE id =75863;
DELETE FROM waypoint_data WHERE id =75862;
DELETE FROM waypoint_data WHERE id =75860;
DELETE FROM waypoint_data WHERE id =75861;
DELETE FROM `creature_addon` WHERE `guid` in (63097,63205,63789,63786,63788,63782,63775,63784,63759,63097,75859,63669,63683,63686);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(69889, 18037, 530, 1, 1, 0, 0, -711.318, 8667.93, 158.378, 4.33187, 300, 5, 0, 4892, 2846, 1),
(81505, 18037, 530, 1, 1, 0, 0, -673.705, 8747.14, 184.569, 4.92682, 300, 5, 0, 4892, 2846, 1),
(81506, 18037, 530, 1, 1, 0, 0, -672.555, 8779.41, 201.774, 2.80521, 300, 5, 0, 4892, 2846, 1),
(81509, 18037, 530, 1, 1, 0, 0, -639.086, 8797.5, 202.376, 3.11775, 300, 5, 0, 4892, 2846, 1),
(81510, 18037, 530, 1, 1, 0, 0, -741.646, 8790.03, 183.59, 3.29302, 300, 5, 0, 4892, 2846, 1),
(69886, 18037, 530, 1, 1, 0, 0, -785.01, 8851.32, 184.643, 1.48353, 300, 0, 0, 4892, 2846, 2),
(81512, 18037, 530, 1, 1, 0, 0, -814.189, 8729.63, 178.212, 4.50789, 300, 5, 0, 4892, 2846, 1),
(81513, 18037, 530, 1, 1, 0, 0, -843.481, 8684.61, 178.649, 4.75825, 300, 5, 0, 4892, 2846, 1),
(81515, 18037, 530, 1, 1, 0, 0, -883.106, 8740.83, 173.61, 3.72594, 300, 5, 0, 4892, 2846, 1),
(81516, 18037, 530, 1, 1, 0, 0, -875.081, 8725.1, 172.793, 3.87112, 300, 5, 0, 4892, 2846, 1),
(81517, 18037, 530, 1, 1, 0, 0, -853.293, 8719.97, 176.366, 2.68818, 300, 5, 0, 4892, 2846, 1),
(81520, 18037, 530, 1, 1, 0, 0, -860.993, 8885.97, 182.756, 0.300296, 300, 0, 0, 4892, 2846, 0),
(63205, 18037, 530, 1, 1, 0, 0, -1011.45, 8956.18, 97.3646, 5.3058, 300, 0, 0, 4892, 2846, 0),
(63789, 18037, 530, 1, 1, 0, 0, -1008.25, 8951.4, 97.2811, 2.14675, 300, 0, 0, 4892, 2846, 0),
(63786, 18037, 530, 1, 1, 0, 0, -1050.95, 8984.82, 96.2913, 5.94741, 300, 5, 0, 4892, 2846, 1),
(63788, 18037, 530, 1, 1, 0, 0, -1128.38, 8990.25, 103.133, 4.00195, 300, 5, 0, 4892, 2846, 1),
(63782, 18037, 530, 1, 1, 0, 0, -1086.13, 8831.01, 101.744, 2.37686, 300, 5, 0, 4892, 2846, 1),
(63775, 18037, 530, 1, 1, 0, 0, -1075.03, 8751.92, 83.9714, 3.96344, 300, 5, 0, 4892, 2846, 1),
(63784, 18037, 530, 1, 1, 0, 0, -1005.09, 8745.01, 122.804, 6.27049, 300, 5, 0, 4892, 2846, 1),
(63759, 18037, 530, 1, 1, 0, 0, -1011.59, 8802.14, 126.914, 2.95314, 300, 5, 0, 4892, 2846, 1),
(75859, 18037, 530, 1, 1, 0, 0, -1045.18, 8705.05, 103.934, 1.7634, 300, 5, 0, 4892, 2846, 1),
(63669, 18037, 530, 1, 1, 0, 0, -964.019, 8687.68, 157.809, 2.16151, 300, 5, 0, 4892, 2846, 1),
(63683, 18037, 530, 1, 1, 0, 0, -914.861, 8676.4, 171.059, 3.28984, 300, 5, 0, 4892, 2846, 1),
(63686, 18037, 530, 1, 1, 0, 0, -909.395, 8692.31, 173.483, 1.57955, 300, 5, 0, 4892, 2846, 1),
(69888, 18037, 530, 1, 1, 0, 0, -1036.35, 8800.96, 112.147, 0.925342, 300, 0, 0, 4892, 2846, 2),
(63097, 18037, 530, 1, 1, 0, 1503, -885.814, 8932.28, 155.101, 1.40118, 25, 5, 0, 4892, 2846, 1);
DELETE FROM waypoint_data WHERE id =69886;
DELETE FROM waypoint_data WHERE id =69888;
UPDATE `creature` SET `MovementType`=2,`position_x`=-5022.191895,`position_y`=629.696777,`position_z`=33.835888 WHERE `guid`=26045;
DELETE FROM `waypoint_data` WHERE `id`=26045;
UPDATE `creature_template` SET `InhabitType`=5 WHERE `entry`=5347;
UPDATE `creature` SET `MovementType`=2,`position_x`=-5750.381348,`position_y`=1687.031372,`position_z`=102.642807 WHERE `guid`=52541;
DELETE FROM `waypoint_data` WHERE `id`=52541;
UPDATE `creature` SET `MovementType`=2,`position_x`=1222.276978,`position_y`=199.114410,`position_z`=5.525987 WHERE `guid`=49562;
DELETE FROM `waypoint_data` WHERE `id`=49562;
UPDATE `creature` SET `MovementType`=2,`position_x`=9816.841797,`position_y`=355.442474,`position_z`=1308.459351,`spawndist`=0 WHERE `guid`=46524;
DELETE FROM `waypoint_data` WHERE `id`=46524;
UPDATE `creature` SET `MovementType`=2,`position_x`=10115.946289,`position_y`=1167.518799,`position_z`=1314.169800,`spawndist`=0 WHERE `guid`=46838;
DELETE FROM `waypoint_data` WHERE `id`=46838;

# Fix
DELETE FROM `creature_loot_template` WHERE (`entry`=9236) AND (`item`=16712);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (9236, 16712, 10, 1, 1, 1);
UPDATE `quest_template` SET `OfferRewardText`="WOW, that was a real life ghost! That was so awesome - I can't wait to tell everyone back at the orphanage. Captain Grayson... he even looked like a pirate! When I grow up I wanna be a ghost pirate too!$B$BThanks for taking me to Westfall, $N. I know there are scary things out there in the wilds of Westfall, and I hope I wasn't too much of a pain. You're awesome!" WHERE `id`=1687;
UPDATE `creature_template` SET `inhabitType`=4 WHERE `entry`=30078;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=24083;
INSERT INTO `npc_spellclick_spells`(`npc_entry`,`spell_id`,`cast_flags`) VALUES
(24083,55074,1);
UPDATE `creature_template` SET `InhabitType`=4, `RegenHealth`=0 WHERE `entry` IN (34606, 34649);
DELETE FROM `npc_spellclick_spells` WHERE npc_entry = 27626;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`) VALUES
(27626,49138,1);
UPDATE `quest_template` SET `OfferRewardText`='This is quite alarming indeed! But with this information we can call on our brethren from Bloodhoof Village to help thwart the attack. You have saved the lives of many $r, $N.', `RequestItemsText`='You have a look of concern about you,$N. What news do you bring?' WHERE `id`=24857;
INSERT IGNORE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
(33628,21636,530,1,1,0,0,-2898.17,4497.223,-42.86146,2.9147,600,0,0,5914,0,0),
(33700,21636,530,1,1,0,0,-3013.516,4510.811,-42.86374,5.009095,600,0,0,5914,0,0),
(34285,21636,530,1,1,0,0,-2974.286,4441.98,-47.21168,1.43117,600,0,0,5914,0,0);
INSERT IGNORE INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(58013,571,6418.42,422.97,511.11,0);
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58816', '1', '246.577', '2800.03', '211.077', '0', '0.866698');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58816', '2', '257.793', '2821.51', '228.829', '0', '1.81153');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58816', '3', '257.221', '2841', '201.134', '0', '2.32047');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58816', '4', '226.784', '2866.29', '181.769', '0', '3.09959');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58816', '5', '208.907', '2841.91', '215.833', '0', '4.68688');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58816', '6', '226.606', '2800.51', '193.466', '0', '6.15556');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58817', '1', '251.188', '2822.46', '209.894', '0', '1.41963');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58817', '2', '254.456', '2842.12', '234.208', '0', '2.47756');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58817', '3', '234.64', '2867.16', '219.251', '0', '3.76561');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58817', '4', '205.042', '2852.06', '237.055', '0', '4.47639');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58817', '5', '212.27', '2826.38', '225.992', '0', '5.55553');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58817', '6', '229.563', '2805.77', '223.808', '0', '0.57924');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58818', '1', '214.874', '2840.25', '204.667', '0', '4.83533');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58818', '2', '208.113', '2820.28', '220.085', '0', '0.174976');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58818', '3', '228.716', '2822.14', '227.78', '0', '0.418446');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58818', '4', '251.159', '2824.68', '233.119', '0', '1.84708');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58818', '5', '243.727', '2843.4', '227.824', '0', '2.79113');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58818', '6', '222.195', '2846.64', '223.267', '0', '4.02342');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58819', '1', '252.368', '2813.77', '164.029', '0', '1.17853');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58819', '2', '259.17', '2841.46', '175.511', '0', '2.20426');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58819', '3', '244.896', '2861.97', '180.513', '0', '3.13575');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58819', '4', '217.166', '2855.36', '178.829', '0', '3.56614');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58819', '5', '206.861', '2831.67', '173.469', '0', '4.61072');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58819', '6', '207.532', '2814.98', '180.937', '0', '5.93018');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58820', '1', '230.011', '2873.23', '184.893', '0', '3.83951');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58820', '2', '208.077', '2867.53', '177.2', '0', '4.30918');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58820', '3', '197.844', '2838.14', '178.206', '0', '4.95635');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58820', '4', '213.767', '2805.59', '180.509', '0', '5.78101');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58820', '5', '245.468', '2804.04', '178.327', '0', '0.805512');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58820', '6', '270.88', '2834.99', '190.895', '0', '2.28992');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58820', '7', '240.322', '2867.26', '170.693', '0', '2.74937');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58689', '1', '272.093', '1456.69', '-14.0281', '0', '4.93631');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58689', '2', '279.39', '1432.53', '-9.7592', '0', '5.30858');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58689', '3', '286.008', '1420.04', '-6.51352', '0', '5.58425');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58689', '4', '300.903', '1407.47', '-2.96807', '0', '6.13167');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58689', '5', '313.457', '1404.95', '-3.53466', '0', '0.140652');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58689', '6', '343.873', '1407.98', '-0.260891', '0', '0.991238');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58689', '7', '350.356', '1417.71', '-0.307936', '0', '1.28733');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58689', '8', '355.045', '1434.57', '-0.832355', '0', '1.6227');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58689', '9', '353.352', '1452.61', '0.88064', '0', '2.11986');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58689', '10', '337.422', '1476.01', '-4.49686', '5000', '2.42066');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58689', '11', '305.432', '1496.18', '-12.9394', '5000', '3.31052');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58689', '12', '285.516', '1479.27', '-12.3245', '0', '3.93255');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('58689', '13', '279.035', '1471.86', '-13.2647', '0', '4.15246');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59485', '1', '322.826', '1470.75', '-4.64011', '8000', '0.593412');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59485', '2', '322.826', '1470.75', '-4.64011', '7500', '0.593412');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59485', '3', '322.826', '1470.75', '-4.64011', '5000', '0.593412');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59485', '4', '322.826', '1470.75', '-4.64011', '10000', '0.593412');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59485', '5', '322.826', '1470.75', '-4.64011', '3000', '0.593412');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59483', '1', '317.901', '1473.37', '-6.11224', '2500', '0.453786');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59483', '2', '317.901', '1473.37', '-6.11224', '7000', '0.453786');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59483', '3', '317.901', '1473.37', '-6.11224', '10000', '0.453786');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59483', '4', '317.901', '1473.37', '-6.11224', '2500', '0.453786');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59483', '5', '317.901', '1473.37', '-6.11224', '5000', '0.453786');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59481', '1', '313.404', '1476.27', '-7.68097', '3500', '0.820305');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59481', '2', '313.404', '1476.27', '-7.68097', '10000', '0.820305');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59481', '3', '313.404', '1476.27', '-7.68097', '9000', '0.820305');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59481', '4', '313.404', '1476.27', '-7.68097', '9500', '0.820305');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('59481', '5', '313.404', '1476.27', '-7.68097', '8000', '0.820305');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99578', '1', '1659.18', '8607.61', '-34.6061', '0', '2.64033');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99578', '2', '1648.21', '8614.57', '-32.3843', '0', '3.20346');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99578', '3', '1630.61', '8611.34', '-27.211', '0', '3.62208');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99578', '4', '1627.22', '8609.39', '-25.8892', '0', '3.82393');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99578', '5', '1618.21', '8605', '-25.7526', '20000', '3.60559');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99578', '6', '1628.24', '8610.04', '-25.9241', '0', '0.483625');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99578', '7', '1646.69', '8613.94', '-31.8836', '0', '6.16834');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99578', '8', '1660.9', '8606.56', '-34.7478', '0', '5.11749');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99578', '9', '1666.94', '8581.06', '-43.5818', '0', '5.40809');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99578', '10', '1675.79', '8571.29', '-45.6864', '0', '5.88403');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99578', '11', '1702.36', '8564.32', '-46.0198', '0', '5.29419');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99578', '12', '1709.18', '8550.77', '-46.4391', '0', '4.62111');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99578', '13', '1706.98', '8544.19', '-46.4588', '0', '3.49956');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99578', '14', '1691.07', '8538.18', '-49.1238', '0', '3.07466');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99578', '15', '1670.08', '8539.95', '-49.6387', '0', '4.04463');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99578', '16', '1654.95', '8527.77', '-53.3702', '0', '4.33523');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99578', '17', '1645.36', '8507.81', '-53.8027', '0', '4.91799');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99578', '18', '1652.28', '8490.96', '-53.7505', '0', '5.41357');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99578', '19', '1660.55', '8476.45', '-57.2465', '0', '5.71359');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99578', '20', '1652.8', '8491.87', '-53.8527', '0', '2.06227');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99578', '21', '1645.09', '8508.75', '-53.7928', '0', '1.12451');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99578', '22', '1656.8', '8524.69', '-53.4573', '0', '1.17634');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99578', '23', '1667.96', '8537.57', '-49.903', '0', '0.197737');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99578', '24', '1705.1', '8540.18', '-47.1107', '0', '1.39861');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99578', '25', '1707.95', '8558.57', '-45.6334', '0', '2.50367');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99578', '26', '1673.56', '8572.05', '-45.4688', '0', '2.18444');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99578', '27', '1664.16', '8587.22', '-42.1337', '0', '1.7242');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99579', '1', '1667.88', '8538.07', '-49.9273', '0', '3.50941');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99579', '2', '1660.89', '8534.72', '-51.8058', '0', '4.17857');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99579', '3', '1644.24', '8509.2', '-53.7217', '0', '4.90427');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99579', '4', '1652.89', '8491.56', '-53.8452', '0', '5.14469');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99579', '5', '1660.02', '8475.86', '-57.2316', '0', '5.67719');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99579', '6', '1653.02', '8492.27', '-53.9008', '0', '1.9599');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99579', '7', '1646.32', '8509.69', '-53.9177', '0', '1.08653');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99579', '8', '1662.12', '8536.14', '-51.5795', '0', '0.492771');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99579', '9', '1668.36', '8538.11', '-49.8393', '0', '6.11779');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99579', '10', '1699.17', '8539.33', '-48.0969', '0', '1.49494');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99579', '11', '1706.61', '8559.14', '-45.7411', '0', '2.61413');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99579', '12', '1671.96', '8573.55', '-45.0745', '0', '2.18845');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99579', '13', '1665.62', '8583.49', '-43.0281', '0', '1.72349');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99579', '14', '1658.94', '8607.65', '-34.5577', '0', '2.64712');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99579', '15', '1646.41', '8614.19', '-31.847', '0', '3.24245');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99579', '16', '1631.22', '8611.18', '-27.2984', '0', '3.91318');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99579', '17', '1627.99', '8609.09', '-25.8482', '0', '3.55504');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99579', '18', '1618.49', '8604.97', '-25.7309', '20000', '3.55111');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99579', '19', '1627.07', '8610.86', '-25.9726', '0', '0.129132');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99579', '20', '1651.24', '8615.12', '-32.9415', '0', '5.69917');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99579', '21', '1661.3', '8606.13', '-34.9404', '0', '4.84074');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99579', '22', '1668.88', '8578.55', '-44.1973', '0', '5.91046');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99579', '23', '1689.62', '8565', '-47.3066', '0', '6.12329');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99579', '24', '1705.95', '8559.63', '-45.7843', '0', '5.02845');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99579', '25', '1710.19', '8546.69', '-46.5797', '0', '4.15504');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('99579', '26', '1700.37', '8538.75', '-47.8614', '0', '3.1697');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63689', '1', '1435.52', '8605.24', '-0.493192', '0', '3.06764');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63689', '2', '1426.18', '8605.95', '2.76557', '0', '2.84616');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63689', '3', '1412.99', '8616.26', '5.16487', '0', '2.65373');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63689', '4', '1403.44', '8621.52', '6.91665', '0', '2.89799');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63689', '5', '1379.74', '8622.23', '12.5169', '0', '3.33193');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63689', '6', '1362.41', '8618.69', '15.5624', '0', '3.8236');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63689', '7', '1330.17', '8594.71', '20.6902', '0', '3.80493');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63689', '8', '1324.07', '8592.12', '20.4461', '0', '3.32262');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63689', '9', '1310.08', '8589.97', '19.5369', '0', '3.05244');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63689', '10', '1264.45', '8591.31', '20.4393', '5000', '3.10506');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63689', '11', '1322.81', '8590.58', '20.52', '0', '0.42764');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63689', '12', '1333.04', '8596.44', '20.5341', '0', '0.772034');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63689', '13', '1350.36', '8609.94', '18.6402', '0', '0.668362');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63689', '14', '1362.56', '8618.97', '15.4915', '0', '0.306293');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63689', '15', '1377.27', '8622.21', '12.6525', '0', '0.069103');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63689', '16', '1401.12', '8622.51', '7.463', '0', '5.98158');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63689', '17', '1413.37', '8617.26', '5.0657', '0', '5.54097');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63689', '18', '1423.21', '8607.58', '3.45812', '0', '5.91797');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63689', '19', '1431', '8604.93', '1.14946', '0', '0.162803');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63689', '20', '1439.97', '8606.19', '-2.20358', '0', '0.35601');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63689', '21', '1456.39', '8614.27', '-9.61857', '0', '0.169085');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63689', '22', '1479.35', '8616.55', '-21.7928', '5000', '6.26063');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63689', '23', '1461.19', '8615.01', '-12.3543', '0', '3.23292');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63153', '1', '1212.84', '8642.76', '19.5724', '0', '3.48807');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63153', '2', '1234.42', '8644.07', '22.8063', '0', '6.05018');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63153', '3', '1240.58', '8633.89', '22.3124', '0', '0.060738');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63153', '4', '1251.21', '8634.98', '22.6891', '0', '0.568106');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63153', '5', '1261', '8641.8', '22.0528', '0', '0.002619');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63153', '6', '1271.67', '8642.51', '20.0857', '0', '5.45486');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63153', '7', '1279.4', '8632.58', '21.0794', '0', '4.96164');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63153', '8', '1286.09', '8619.9', '20.5716', '0', '4.58623');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63153', '9', '1283.28', '8604.38', '17.6392', '0', '4.52575');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63153', '10', '1282.03', '8623.43', '20.7254', '0', '2.135');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63153', '11', '1272.21', '8638.18', '20.9245', '0', '2.5489');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63153', '12', '1264.43', '8643.51', '21.0489', '0', '3.10418');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63153', '13', '1256.4', '8641.95', '22.5985', '0', '3.86052');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63153', '14', '1243.25', '8633.14', '22.3178', '0', '3.06256');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63153', '15', '1230.41', '8645.38', '21.9764', '0', '2.91726');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63620', '1', '1069.01', '8635.73', '21.9735', '0', '3.83538');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63620', '2', '1050.7', '8621.38', '17.6434', '0', '3.81103');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63620', '3', '1072.15', '8638.03', '22.8605', '0', '0.373342');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63620', '4', '1087.09', '8641.7', '24.17', '0', '0.606606');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63620', '5', '1098.31', '8651.26', '22.4604', '0', '1.18152');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63620', '6', '1107.73', '8666.74', '21.1857', '0', '0.731484');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63620', '7', '1132.64', '8678.6', '21.2455', '0', '6.28111');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63620', '8', '1180.07', '8666.91', '19.5877', '0', '5.72191');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63620', '9', '1130.39', '8673.94', '21.4006', '0', '3.6461');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63620', '10', '1107.76', '8663.22', '21.4108', '0', '4.20059');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63620', '11', '1098.81', '8645.03', '22.9454', '0', '3.76108');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63620', '12', '1084.9', '8642.67', '24.1368', '0', '3.85219');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63175', '1', '1027.12', '8493.51', '23.4792', '0', '0.936793');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63175', '2', '1042.81', '8489.57', '58.658', '0', '2.07091');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63159', '1', '1166.12', '8443.74', '23.4809', '0', '0.93636');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63159', '2', '1182.24', '8439.06', '58.4967', '0', '2.12624');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63259', '1', '951.569', '7925.04', '22.1276', '0', '1.91152');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63259', '2', '943.762', '7943.99', '23.6671', '0', '1.51018');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63259', '3', '944.272', '7957.73', '23.067', '5000', '1.49133');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63259', '4', '944.234', '7938.25', '23.9457', '0', '4.96507');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63259', '5', '947.622', '7915.42', '23.4383', '0', '3.67623');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63259', '6', '910.509', '7889.31', '23.3291', '5000', '4.99093');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63259', '7', '897.883', '7888.19', '21.2202', '0', '3.79869');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63259', '8', '854.364', '7871.38', '20.2576', '0', '4.1097');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63259', '9', '845.83', '7848.1', '22.2123', '5000', '4.73802');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63259', '10', '837.837', '7840.62', '23.1816', '0', '3.42798');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63259', '11', '824.862', '7844.13', '24.0133', '0', '3.56856');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63259', '12', '821.483', '7839.45', '22.9234', '0', '5.05296');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63259', '13', '826.641', '7837.25', '22.6798', '0', '0.118299');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63259', '14', '839.074', '7841.34', '22.9379', '5000', '6.22241');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63259', '15', '846.387', '7854.62', '22.7861', '0', '1.56343');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63259', '16', '850.112', '7871.5', '20.6027', '0', '0.607603');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63259', '17', '901.886', '7893.73', '20.8011', '0', '1.04813');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63259', '18', '940.52', '7913.95', '24.0063', '0', '0.736418');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('71235', '1', '-3886.52', '1381.53', '42.6308', '0', '5.21949');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('71235', '2', '-3879.13', '1366.85', '42.8793', '0', '5.26518');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('71235', '3', '-3864.85', '1350.53', '41.9408', '0', '4.59755');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('71235', '4', '-3867.64', '1334.96', '42.6554', '0', '4.10081');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('71235', '5', '-3877.94', '1327.82', '42.858', '0', '3.27284');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('71235', '6', '-3886.86', '1326.42', '42.499', '0', '2.6007');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('71235', '7', '-3895.11', '1332.77', '43.1695', '0', '2.61955');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('71235', '8', '-3887.68', '1325.03', '42.5513', '0', '6.14991');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('71235', '9', '-3873.19', '1328.28', '42.3814', '0', '0.674183');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('71235', '10', '-3865.04', '1336.78', '42.6528', '0', '1.39675');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('71235', '11', '-3864.59', '1349.95', '41.9801', '0', '2.3353');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('71235', '12', '-3887.45', '1383.01', '42.7534', '0', '1.79482');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('71235', '13', '-3897.02', '1391.27', '41.9713', '0', '1.4404');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('71235', '14', '-3892.41', '1400.49', '42.5256', '0', '0.859233');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63115', '1', '-3381.8', '3062.61', '173.236', '0', '4.76098');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63115', '2', '-3371', '3041.67', '173.466', '0', '3.65044');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63115', '3', '-3399.76', '3041.83', '174.758', '0', '3.3622');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63115', '4', '-3433.97', '3035.83', '175.854', '0', '0.018594');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63115', '5', '-3395.24', '3043.34', '174.319', '0', '0.862109');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63121', '1', '-3469.18', '2935.43', '180.614', '0', '1.88382');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63121', '2', '-3474.53', '2954.04', '179.634', '0', '2.0032');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63121', '3', '-3482.12', '2988.72', '170.321', '0', '1.40934');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63121', '4', '-3475.67', '3006.78', '172.339', '0', '4.01293');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63121', '5', '-3484.97', '2985.36', '170.221', '0', '5.01902');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63121', '6', '-3473.26', '2951.88', '179.666', '0', '4.89363');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63121', '7', '-3468.63', '2920.9', '182.204', '0', '4.33369');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63121', '8', '-3483.9', '2904.32', '176.167', '0', '4.14755');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63121', '9', '-3492.56', '2882.87', '181.256', '5000', '4.38317');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63121', '10', '-3487.57', '2901.8', '177.526', '0', '0.636818');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('63121', '11', '-3465.98', '2918.53', '181.739', '0', '1.77171');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83738', '1', '-1267.91', '9545.55', '220.449', '3000', '5.14221');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83738', '2', '-1280.4', '9580.52', '207.72', '0', '2.03203');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83738', '3', '-1289.73', '9597.52', '205.229', '0', '2.20089');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83738', '4', '-1296.62', '9603.65', '204.301', '0', '2.51898');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83738', '5', '-1308.98', '9609.74', '203.106', '0', '2.94702');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83738', '6', '-1316.37', '9608.9', '202.532', '0', '2.84413');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83738', '7', '-1321.99', '9612.33', '202.22', '0', '2.06266');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83738', '8', '-1324.19', '9616.84', '202.284', '0', '1.42099');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83738', '9', '-1322.84', '9620.88', '202.227', '0', '0.732193');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83738', '10', '-1316.26', '9621.42', '201.856', '0', '5.89148');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83738', '11', '-1305.43', '9609.02', '203.604', '0', '5.70063');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83738', '12', '-1290.43', '9598.07', '205.117', '0', '5.44144');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83738', '13', '-1282.57', '9584.44', '206.864', '0', '5.10687');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83738', '14', '-1274.84', '9562.78', '212.898', '0', '5.06289');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83739', '1', '-1353.32', '9586.42', '206.223', '0', '4.65172');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83739', '2', '-1358.69', '9598.02', '203.788', '0', '2.64425');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83739', '3', '-1383.36', '9599.23', '202.661', '0', '3.53882');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83739', '4', '-1403.74', '9590.57', '203.64', '0', '4.17185');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83739', '5', '-1407.63', '9581.09', '205.931', '0', '5.1638');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83739', '6', '-1405.15', '9573.75', '206.087', '0', '5.32873');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83739', '7', '-1406.66', '9584.33', '205.42', '0', '0.934635');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83739', '8', '-1390.73', '9596.43', '203.393', '0', '0.29532');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83739', '9', '-1369.12', '9601.98', '202.605', '0', '5.9117');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83739', '10', '-1358.3', '9597.17', '203.946', '0', '5.26532');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83737', '1', '-1372.27', '9735.47', '204.739', '0', '5.18471');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83737', '2', '-1360.5', '9715.69', '205.424', '0', '4.69128');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83737', '3', '-1361.06', '9694.51', '204.307', '0', '3.96557');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83737', '4', '-1371.8', '9687.97', '203.449', '0', '2.93984');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83737', '5', '-1390.19', '9696.54', '203.666', '0', '2.39949');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83737', '6', '-1405.21', '9713.07', '203.506', '0', '1.41852');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83737', '7', '-1391.49', '9746.17', '202.498', '0', '5.84919');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83734', '1', '-1451.11', '9871.83', '200.94', '0', '5.64812');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83734', '2', '-1433.16', '9858.83', '200.58', '0', '5.31196');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83734', '3', '-1426.65', '9842.49', '200.123', '0', '4.1975');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83734', '4', '-1434.51', '9827.1', '200.717', '0', '3.21418');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83734', '5', '-1453.96', '9825.76', '199.947', '0', '2.61021');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83734', '6', '-1475.44', '9842.91', '199.793', '0', '1.92456');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83734', '7', '-1480.05', '9858.86', '200.74', '0', '1.06533');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83734', '8', '-1471.41', '9873.51', '200.29', '0', '0.30114');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83731', '1', '-1522.4', '9733.7', '200.947', '0', '1.8007');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83731', '2', '-1529.33', '9758.3', '199.745', '0', '2.97644');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83731', '3', '-1551.31', '9763.72', '200.767', '0', '3.71415');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83731', '4', '-1569.74', '9749.59', '201.314', '0', '4.76658');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83731', '5', '-1568', '9733.1', '202.351', '0', '4.91188');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83731', '6', '-1564.24', '9712.3', '203.581', '0', '5.3729');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83731', '7', '-1553.83', '9695.39', '202.528', '0', '5.58653');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83731', '8', '-1542.55', '9689.81', '202.28', '0', '0.31336');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('83731', '9', '-1526.95', '9707.79', '200.28', '0', '1.27166');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75864', '1', '-1415.21', '9632.9', '201.951', '0', '3.03409');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75864', '2', '-1451.03', '9630.88', '201.323', '0', '4.23245');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75864', '3', '-1417.33', '9646.28', '202.491', '0', '6.20222');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75864', '4', '-1398.1', '9639.55', '199.781', '0', '5.41368');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75864', '5', '-1367.18', '9605.33', '202.281', '0', '6.18416');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75864', '6', '-1337.88', '9603.14', '203.265', '0', '0.338435');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75864', '7', '-1319.13', '9611.51', '202.161', '0', '6.11504');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75864', '8', '-1298.06', '9604.43', '204.168', '4000', '5.60846');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75864', '9', '-1320.72', '9607.62', '202.824', '0', '3.56643');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75864', '10', '-1343.16', '9600.33', '203.34', '0', '2.90905');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75864', '11', '-1368.39', '9607.1', '202.031', '0', '2.43417');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75864', '12', '-1394.09', '9626.18', '200.45', '0', '2.51899');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75863', '1', '-1445.78', '9610.96', '201.569', '0', '5.48499');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75863', '2', '-1420.51', '9590.16', '203.023', '0', '6.05754');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75863', '3', '-1400.1', '9588.11', '204.789', '4000', '5.78501');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75863', '4', '-1430.73', '9596.29', '202.419', '0', '2.62221');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75863', '5', '-1451.56', '9617.71', '201.521', '0', '2.16511');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75863', '6', '-1454.29', '9635.21', '201.685', '4000', '1.68602');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75862', '1', '-1460.58', '9829.39', '200.835', '0', '5.77008');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75862', '2', '-1437.84', '9812.27', '201.624', '0', '4.94777');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75862', '3', '-1433.71', '9792.05', '201.16', '0', '5.20146');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75862', '4', '-1414.73', '9763.77', '203.275', '0', '4.93206');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75862', '5', '-1408.64', '9710.68', '203.274', '4000', '4.94039');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75862', '6', '-1408.95', '9764.16', '203.892', '0', '2.18836');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75862', '7', '-1433.02', '9787.44', '200.861', '0', '1.92054');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75862', '8', '-1439.02', '9808.56', '201.837', '0', '2.20407');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75862', '9', '-1460.65', '9830.93', '200.843', '0', '3.23282');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75862', '10', '-1500.75', '9823.05', '199.887', '4000', '3.31971');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75862', '11', '-1487.82', '9825.93', '199.981', '0', '0.319485');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75860', '1', '-1521.47', '9733.45', '200.911', '0', '4.63591');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75860', '2', '-1521.9', '9690.41', '200.192', '0', '5.26739');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75860', '3', '-1508.56', '9674.73', '199.908', '0', '6.21461');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75860', '4', '-1484', '9672.42', '200.863', '0', '0.31863');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75860', '5', '-1469.46', '9677.14', '200.625', '4000', '0.342191');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75860', '6', '-1497.77', '9672.14', '200.466', '0', '2.79892');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75860', '7', '-1515.89', '9680.02', '199.932', '0', '2.07557');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75860', '8', '-1525.46', '9695.65', '200.256', '0', '1.55328');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75860', '9', '-1516.65', '9734.35', '201.072', '0', '2.10026');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75860', '10', '-1532.5', '9773.76', '199.658', '4000', '1.84344');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75861', '1', '-1549.78', '9889.18', '201.035', '0', '6.05788');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75861', '2', '-1475.89', '9889.09', '202.068', '0', '5.97538');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75861', '3', '-1554.36', '9886.78', '201.128', '0', '3.61369');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75861', '4', '-1603.52', '9853.29', '202.185', '0', '4.66377');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75861', '5', '-1604.36', '9803.71', '204.708', '0', '4.55145');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75861', '6', '-1603.83', '9761.46', '200.902', '0', '5.59838');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75861', '7', '-1611.07', '9785.57', '203.727', '0', '1.53866');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75861', '8', '-1615.36', '9828.56', '201.936', '0', '1.25513');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75861', '9', '-1605.25', '9852.42', '202.5', '0', '0.766614');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('75861', '10', '-1587.1', '9870.93', '201.32', '0', '0.44002');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69886', '1', '-755.284', '8839.95', '183.132', '0', '5.37191');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69886', '2', '-742.631', '8819.84', '183.815', '0', '5.70492');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69886', '3', '-723.057', '8807.38', '184.347', '0', '6.09447');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69886', '4', '-664.986', '8798.29', '196.84', '10000', '6.09233');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69886', '5', '-695.049', '8806.12', '187.854', '0', '3.30495');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69886', '6', '-729.287', '8808.48', '183.762', '0', '2.41273');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69886', '7', '-765.167', '8840.99', '183.377', '0', '2.98882');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69886', '8', '-801.517', '8831.81', '182.903', '0', '4.20069');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69886', '9', '-812.759', '8812.95', '183.211', '0', '3.68469');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69886', '10', '-830.129', '8804.83', '184.361', '0', '4.0981');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69886', '11', '-839.459', '8785.45', '179.411', '0', '5.08866');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69886', '12', '-834.182', '8764.46', '178.806', '0', '5.42638');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69886', '13', '-809.979', '8745.99', '180.192', '0', '4.94885');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69886', '14', '-834.534', '8763.89', '178.803', '0', '1.71929');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69886', '15', '-838.613', '8783.27', '179.054', '0', '1.27743');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69886', '16', '-835.289', '8798.41', '182.606', '0', '0.714987');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69886', '17', '-819.008', '8809.56', '183.982', '0', '0.96003');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69886', '18', '-785.075', '8850.92', '184.655', '0', '0.196617');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '1', '-1031.86', '8821.8', '112.913', '0', '2.87378');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '2', '-1055.13', '8825.1', '104.011', '0', '2.5132');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '3', '-1058.63', '8832.19', '105.414', '0', '1.24478');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '4', '-1041.5', '8856.26', '121.251', '0', '0.270889');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '5', '-991.898', '8871.94', '140.727', '0', '0.628254');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '6', '-970.947', '8885.07', '146.278', '0', '0.61361');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '7', '-919.994', '8918.03', '151.879', '0', '0.381917');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '8', '-878.953', '8936.51', '155.531', '0', '0.084258');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '9', '-843.036', '8924.66', '162.601', '0', '5.63388');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '10', '-791.799', '8887.17', '181.75', '0', '5.1705');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '11', '-760.28', '8845.5', '182.722', '0', '4.46366');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '12', '-756.855', '8806.33', '183.555', '0', '4.21783');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '13', '-772.693', '8799.96', '183.208', '0', '3.81042');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '14', '-781.74', '8788.94', '184.038', '0', '4.73539');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '15', '-778.027', '8762.27', '189.089', '0', '4.39374');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '16', '-793.741', '8746.34', '193.252', '0', '3.82618');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '17', '-820.324', '8724.78', '208.524', '5000', '3.79869');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '18', '-803.051', '8738.27', '196.606', '0', '0.920207');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '19', '-778.484', '8762.47', '189.118', '0', '1.60383');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '20', '-783.846', '8794.62', '183.247', '0', '0.446939');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '21', '-766.683', '8797.85', '183.666', '0', '0.737974');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '22', '-754.484', '8806.6', '183.61', '0', '1.18977');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '23', '-754.962', '8835.01', '183.292', '0', '1.93905');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '24', '-783.027', '8882.62', '182.076', '0', '2.3286');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '25', '-848.965', '8929.96', '160.22', '0', '3.02918');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '26', '-882.623', '8934.96', '155.439', '0', '3.53884');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '27', '-924.174', '8913.11', '151.418', '0', '3.65272');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '28', '-982.29', '8880.42', '144.198', '0', '3.82709');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '29', '-1039.43', '8858.48', '122.975', '0', '4.05574');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '30', '-1049.19', '8836.41', '110.315', '0', '5.18043');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '31', '-1035.2', '8814.46', '111.303', '0', '4.55264');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('69888', '32', '-1034.78', '8783.99', '111.634', '5000', '4.61673');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '1', '-5022.19', '629.697', '33.8359', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '2', '-5043.06', '619.918', '31.7509', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '3', '-5054.03', '613.627', '30.7986', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '4', '-5071.43', '601.872', '32.0576', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '5', '-5089.62', '591.379', '28.9511', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '6', '-5105.09', '579.888', '30.5049', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '7', '-5116.35', '576.741', '32.7647', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '8', '-5136.21', '566.893', '31.5779', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '9', '-5150.28', '553.108', '30.9446', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '10', '-5158.92', '542.096', '35.8013', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '11', '-5167.16', '522.274', '38.6004', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '12', '-5166.32', '510.923', '38.5869', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '13', '-5158.1', '492.401', '33.9916', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '14', '-5147.33', '474.399', '30.2359', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '15', '-5134.92', '457.462', '26.0815', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '16', '-5122.42', '440.587', '21.5833', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '17', '-5109.22', '424.297', '16.5536', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '18', '-5094.23', '409.595', '11.2969', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '19', '-5080.25', '393.952', '10.3456', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '20', '-5070.76', '379.526', '13.7113', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '21', '-5063.31', '359.271', '18.1229', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '22', '-5063.43', '338.488', '24.4114', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '23', '-5059.11', '312.621', '24.1474', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '24', '-5054.88', '292.803', '29.3839', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '25', '-5054.42', '273.846', '34.5728', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '26', '-5070.98', '257.049', '38.0706', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '27', '-5087.89', '264.232', '40.3637', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '28', '-5090.11', '281.699', '35.7167', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '29', '-5081.8', '296.34', '31.364', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '30', '-5068.38', '313.534', '24.3237', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '31', '-5063.65', '332.752', '25.1584', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '32', '-5060.01', '353.435', '20.3948', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '33', '-5056.83', '373.165', '13.2976', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '34', '-5051.16', '389.049', '12.1913', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '35', '-5053.75', '410.56', '11.4389', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '36', '-5053.37', '435.001', '12.6685', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '37', '-5047.56', '449.831', '12.9624', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '38', '-5041.59', '465.988', '9.92711', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '39', '-5031.07', '492.359', '14.3807', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '40', '-5017.89', '502.31', '13.9492', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '41', '-5016.62', '521.595', '14.871', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '42', '-5014.02', '548.412', '22.152', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '43', '-5006.89', '566.593', '27.2151', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '44', '-5005.98', '584.286', '27.2142', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('26045', '45', '-5006.48', '605.232', '30.0563', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('52541', '1', '-5750.38', '1687.03', '102.643', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('52541', '2', '-5763.85', '1660', '100.207', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('52541', '3', '-5769.64', '1631.26', '97.2781', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('52541', '4', '-5769.97', '1586.22', '95.6392', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('52541', '5', '-5747.22', '1555.38', '91.3163', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('52541', '6', '-5711.87', '1560.67', '92.6679', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('52541', '7', '-5683.44', '1576.4', '93.4776', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('52541', '8', '-5661.57', '1610.62', '95.7846', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('52541', '9', '-5667.14', '1638.34', '99.2109', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('52541', '10', '-5687.9', '1671.34', '102.928', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '1', '1222.28', '199.114', '5.52599', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '2', '1209.34', '203.459', '5.94868', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '3', '1192.07', '209.217', '5.2444', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '4', '1179.19', '213.726', '5.67425', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '5', '1164.16', '220.786', '4.38275', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '6', '1147.99', '229.043', '3.53207', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '7', '1132.15', '231.525', '7.35797', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '8', '1118.51', '231.104', '9.25522', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '9', '1100.39', '229.453', '11.3085', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '10', '1087.94', '226.725', '10.9176', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '11', '1080.09', '214.417', '10.397', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '12', '1080.62', '198.052', '9.54274', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '13', '1084.61', '185.012', '8.58309', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '14', '1093.25', '171.69', '4.98058', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '15', '1092.94', '164.038', '4.32033', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '16', '1088.53', '156.011', '4.62988', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '17', '1080.08', '140.359', '4.00439', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '18', '1085.4', '127.791', '1.79286', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '19', '1096.18', '118.597', '0.878709', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '20', '1099.51', '109.012', '0.82763', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '21', '1098.44', '95.0113', '-0.082417', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '22', '1098.89', '82.3005', '-1.11889', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '23', '1102.5', '69.4638', '-2.65482', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '24', '1096.98', '57.1571', '-0.905613', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '25', '1091.63', '44.6145', '1.43142', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '26', '1086.33', '32.9632', '3.48268', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '27', '1085.05', '20.6796', '4.1329', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '28', '1092.92', '7.78493', '3.96483', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '29', '1103.3', '1.74843', '3.81136', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '30', '1108.9', '6.66384', '1.96549', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '31', '1119.75', '17.2556', '2.57707', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '32', '1126.57', '33.5558', '4.28383', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '33', '1125.52', '48.322', '2.38885', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '34', '1129.9', '61.2477', '0.658247', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '35', '1132.7', '73.0197', '-0.850287', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '36', '1136.62', '88.9702', '-5.98268', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '37', '1137.55', '99.0144', '-5.72923', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '38', '1134.35', '114.687', '-1.26875', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '39', '1130.8', '132.522', '0.171318', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '40', '1128.71', '146.011', '1.77626', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '41', '1126.63', '159.501', '-0.202374', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '42', '1128.08', '177.528', '1.14402', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '43', '1132.36', '188.767', '2.93699', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '44', '1141.54', '204.471', '2.41599', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '45', '1149.88', '215.243', '2.58233', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '46', '1161.78', '225.303', '3.65146', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '47', '1172.94', '233.153', '5.6798', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '48', '1189.03', '229.718', '8.99644', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '49', '1196.27', '219.676', '6.68681', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '50', '1207.26', '211.585', '6.36744', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '51', '1218.4', '203.704', '6.20296', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('49562', '52', '1229.44', '193.181', '4.62727', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '1', '9816.84', '355.442', '1308.46', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '2', '9812.42', '362.828', '1308.75', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '3', '9813.47', '371.201', '1307.6', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '4', '9817.41', '378.589', '1307.89', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '5', '9825.73', '384.063', '1307.75', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '6', '9834.48', '389.443', '1307.57', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '7', '9841.24', '395.25', '1307.57', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '8', '9848.03', '401.213', '1306.64', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '9', '9859.21', '406.416', '1305.99', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '10', '9869.07', '406.038', '1306.54', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '11', '9878.76', '405.103', '1307.24', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '12', '9885.53', '403.788', '1307.66', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '13', '9889.62', '397.836', '1308.96', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '14', '9893.75', '390.062', '1310', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '15', '9896.48', '384.764', '1309.68', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '16', '9893.9', '389.335', '1310', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '17', '9891.63', '394.619', '1309.8', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '18', '9889.41', '401.267', '1308.38', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '19', '9889.07', '410.169', '1306.58', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '20', '9889.35', '418.27', '1305.85', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '21', '9889.54', '426.962', '1305.15', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '22', '9886.55', '436.957', '1304.24', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '23', '9880.4', '443.821', '1303.31', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '24', '9870.83', '446.341', '1303.2', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '25', '9862.34', '445.663', '1305.03', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '26', '9853.18', '443.625', '1306.19', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '27', '9846.1', '441.481', '1307.79', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '28', '9837.69', '438.919', '1307.79', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '29', '9844.11', '440.792', '1307.79', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '30', '9851.25', '442.721', '1306.9', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '31', '9859.72', '444.625', '1305.26', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '32', '9868.76', '446.034', '1303.59', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '33', '9876.38', '446.37', '1302.64', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '34', '9883', '443.218', '1303.42', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '35', '9886.39', '436.6', '1304.33', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '36', '9888.7', '427.985', '1305.1', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '37', '9888.68', '420.185', '1305.81', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '38', '9886.92', '411.696', '1306.65', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '39', '9881.05', '406.514', '1307.24', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '40', '9872.12', '405.889', '1306.77', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '41', '9863.95', '407.545', '1306.23', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '42', '9857.27', '406.285', '1306.11', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '43', '9850.12', '401.789', '1306.54', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '44', '9843.36', '396.553', '1307.55', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '45', '9836.4', '390.981', '1307.57', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '46', '9828.75', '386.198', '1307.59', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '47', '9820.42', '380.808', '1307.94', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '48', '9814.18', '374.616', '1307.69', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '49', '9812.98', '367.559', '1307.73', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46524', '50', '9812.92', '362.307', '1308.75', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46838', '1', '10115.9', '1167.52', '1314.17', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46838', '2', '10116.4', '1180.53', '1314.8', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46838', '3', '10115', '1189.81', '1313.65', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46838', '4', '10110.6', '1199.47', '1311.57', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46838', '5', '10103.3', '1203.54', '1311.8', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46838', '6', '10096.5', '1201.2', '1312.75', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46838', '7', '10088.9', '1196.34', '1315.41', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46838', '8', '10082.8', '1189.64', '1316.33', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46838', '9', '10076.6', '1182.24', '1316.17', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46838', '10', '10072.2', '1176.47', '1316.69', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46838', '11', '10068.8', '1169.67', '1318.99', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46838', '12', '10063.4', '1163.49', '1319.42', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46838', '13', '10057.8', '1157.82', '1319.43', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46838', '14', '10055.2', '1151.09', '1320.13', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46838', '15', '10057.8', '1157.82', '1319.43', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46838', '16', '10063.4', '1163.49', '1319.42', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46838', '17', '10068.8', '1169.67', '1318.99', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46838', '18', '10072.2', '1176.47', '1316.69', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46838', '19', '10076.6', '1182.24', '1316.17', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46838', '20', '10082.8', '1189.64', '1316.33', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46838', '21', '10088.9', '1196.34', '1315.41', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46838', '22', '10096.5', '1201.2', '1312.75', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46838', '23', '10103.3', '1203.54', '1311.8', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46838', '24', '10110.6', '1199.47', '1311.57', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46838', '25', '10115', '1189.81', '1313.65', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('46838', '26', '10116.4', '1180.53', '1314.8', '0', '0');

# Drop_old_data
DELETE FROM `db_script_string` WHERE entry = 2000000017;
DELETE FROM `db_script_string` WHERE entry = 2000000018;
DELETE FROM `db_script_string` WHERE entry = 2000000021;
DELETE FROM `db_script_string` WHERE entry = 2000000022;
DELETE FROM `db_script_string` WHERE entry = 2000000024;
DELETE FROM `db_script_string` WHERE entry = 2000000025;
DELETE FROM `db_script_string` WHERE entry = 2000000027;
DELETE FROM `db_script_string` WHERE entry = 2000000036;
DELETE FROM `db_script_string` WHERE entry = 2000000037;
DELETE FROM `db_script_string` WHERE entry = 2000000038;
DELETE FROM `db_script_string` WHERE entry = 2000000039;
DELETE FROM `db_script_string` WHERE entry = 2000000040;
DELETE FROM `db_script_string` WHERE entry = 2000000043;
DELETE FROM `db_script_string` WHERE entry = 2000000044;
DELETE FROM `db_script_string` WHERE entry = 2000000045;
DELETE FROM `db_script_string` WHERE entry = 2000000046;
DELETE FROM `db_script_string` WHERE entry = 2000000047;
DELETE FROM `db_script_string` WHERE entry = 2000000054;
DELETE FROM `db_script_string` WHERE entry = 2000000055;
DELETE FROM `db_script_string` WHERE entry = 2000000056;
DELETE FROM `db_script_string` WHERE entry = 2000000057;
DELETE FROM `db_script_string` WHERE entry = 2000000062;
DELETE FROM `db_script_string` WHERE entry = 2000000063;
DELETE FROM `db_script_string` WHERE entry = 2000000064;
DELETE FROM `db_script_string` WHERE entry = 2000000065;
DELETE FROM `db_script_string` WHERE entry = 2000000066;
DELETE FROM `db_script_string` WHERE entry = 2000000067;
DELETE FROM `db_script_string` WHERE entry = 2000000068;
DELETE FROM `db_script_string` WHERE entry = 2000000069;
DELETE FROM `db_script_string` WHERE entry = 2000000070;
DELETE FROM `db_script_string` WHERE entry = 2000000071;
DELETE FROM `db_script_string` WHERE entry = 2000000072;
DELETE FROM `db_script_string` WHERE entry = 2000000073;
DELETE FROM `db_script_string` WHERE entry = 2000000075;
DELETE FROM `db_script_string` WHERE entry = 2000000078;
DELETE FROM `db_script_string` WHERE entry = 2000000080;
DELETE FROM `db_script_string` WHERE entry = 2000000081;
DELETE FROM `db_script_string` WHERE entry = 2000000082;
DELETE FROM `db_script_string` WHERE entry = 2000000083;
DELETE FROM `db_script_string` WHERE entry = 2000000084;
DELETE FROM `db_script_string` WHERE entry = 2000000085;
DELETE FROM `db_script_string` WHERE entry = 2000000086;
DELETE FROM `db_script_string` WHERE entry = 2000000087;
DELETE FROM `db_script_string` WHERE entry = 2000000088;
DELETE FROM `db_script_string` WHERE entry = 2000000093;
DELETE FROM `db_script_string` WHERE entry = 2000000095;
DELETE FROM `db_script_string` WHERE entry = 2000000096;
DELETE FROM `db_script_string` WHERE entry = 2000000097;
DELETE FROM `db_script_string` WHERE entry = 2000000098;
DELETE FROM `db_script_string` WHERE entry = 2000000100;
DELETE FROM `db_script_string` WHERE entry = 2000000101;
DELETE FROM `db_script_string` WHERE entry = 2000000102;
DELETE FROM `db_script_string` WHERE entry = 2000000103;
DELETE FROM `db_script_string` WHERE entry = 2000000104;
DELETE FROM `db_script_string` WHERE entry = 2000000105;
DELETE FROM `db_script_string` WHERE entry = 2000000106;
DELETE FROM `db_script_string` WHERE entry = 2000000107;
DELETE FROM `db_script_string` WHERE entry = 2000000116;
DELETE FROM `db_script_string` WHERE entry = 2000000117;
DELETE FROM `db_script_string` WHERE entry = 2000000118;
DELETE FROM `db_script_string` WHERE entry = 2000000119;
DELETE FROM `db_script_string` WHERE entry = 2000000120;
DELETE FROM `db_script_string` WHERE entry = 2000000121;
DELETE FROM `db_script_string` WHERE entry = 2000000124;
DELETE FROM `db_script_string` WHERE entry = 2000000125;
DELETE FROM `db_script_string` WHERE entry = 2000000126;
DELETE FROM `db_script_string` WHERE entry = 2000000127;
DELETE FROM `db_script_string` WHERE entry = 2000000128;
DELETE FROM `db_script_string` WHERE entry = 2000000129;
DELETE FROM `db_script_string` WHERE entry = 2000000130;
DELETE FROM `db_script_string` WHERE entry = 2000000131;
DELETE FROM `db_script_string` WHERE entry = 2000000132;
DELETE FROM `db_script_string` WHERE entry = 2000000140;
DELETE FROM `db_script_string` WHERE entry = 2000000241;
DELETE FROM `db_script_string` WHERE entry = 2000000242;
DELETE FROM `db_script_string` WHERE entry = 2000000243;
DELETE FROM `db_script_string` WHERE entry = 2000000244;
DELETE FROM `db_script_string` WHERE entry = 2000000252;
DELETE FROM `db_script_string` WHERE entry = 2000000253;
DELETE FROM `db_script_string` WHERE entry = 2000000254;
DELETE FROM `db_script_string` WHERE entry = 2000000261;
DELETE FROM `db_script_string` WHERE entry = 2000000268;
DELETE FROM `db_script_string` WHERE entry = 2000000323;
DELETE FROM `db_script_string` WHERE entry = 2000000325;
DELETE FROM `db_script_string` WHERE entry = 2000000447;
DELETE FROM `db_script_string` WHERE entry = 2000000448;
DELETE FROM `db_script_string` WHERE entry = 2000000450;
DELETE FROM `db_script_string` WHERE entry = 2000000451;
DELETE FROM `db_script_string` WHERE entry = 2000000458;
DELETE FROM `db_script_string` WHERE entry = 2000000459;
DELETE FROM `db_script_string` WHERE entry = 2000000542;
DELETE FROM `db_script_string` WHERE entry = 2000000543;
DELETE FROM `db_script_string` WHERE entry = 2000000544;
DELETE FROM `db_script_string` WHERE entry = 2000000545;
DELETE FROM `db_script_string` WHERE entry = 2000000578;
DELETE FROM `db_script_string` WHERE entry = 2000000579;
DELETE FROM `db_script_string` WHERE entry = 2000000592;
DELETE FROM `db_script_string` WHERE entry = 2000000632;
DELETE FROM `db_script_string` WHERE entry = 2000000633;
DELETE FROM `db_script_string` WHERE entry = 2000000634;
DELETE FROM `db_script_string` WHERE entry = 2000000657;
DELETE FROM `db_script_string` WHERE entry = 2000000658;
DELETE FROM `db_script_string` WHERE entry = 2000000672;
DELETE FROM `db_script_string` WHERE entry = 2000000679;
DELETE FROM `db_script_string` WHERE entry = 2000000737;
DELETE FROM `db_script_string` WHERE entry = 2000000738;
DELETE FROM `db_script_string` WHERE entry = 2000000739;
DELETE FROM `db_script_string` WHERE entry = 2000000740;
DELETE FROM `db_script_string` WHERE entry = 2000000741;
DELETE FROM `db_script_string` WHERE entry = 2000000742;
DELETE FROM `db_script_string` WHERE entry = 2000000743;
DELETE FROM `db_script_string` WHERE entry = 2000000744;
DELETE FROM `db_script_string` WHERE entry = 2000000840;
DELETE FROM `db_script_string` WHERE entry = 2000000841;
DELETE FROM `db_script_string` WHERE entry = 2000001025;
DELETE FROM `db_script_string` WHERE entry = 2000001030;
DELETE FROM `db_script_string` WHERE entry = 2000001041;
DELETE FROM `db_script_string` WHERE entry = 2000001049;
DELETE FROM `db_script_string` WHERE entry = 2000001051;
DELETE FROM `db_script_string` WHERE entry = 2000001052;
DELETE FROM `db_script_string` WHERE entry = 2000001057;
DELETE FROM `db_script_string` WHERE entry = 2000001058;
DELETE FROM `db_script_string` WHERE entry = 2000001065;
DELETE FROM `db_script_string` WHERE entry = 2000001080;
DELETE FROM `db_script_string` WHERE entry = 2000001200;
DELETE FROM `db_script_string` WHERE entry = 2000001201;
DELETE FROM `db_script_string` WHERE entry = 2000001202;
DELETE FROM `db_script_string` WHERE entry = 2000001204;
DELETE FROM `db_script_string` WHERE entry = 2000001213;
DELETE FROM `db_script_string` WHERE entry = 2000001214;
DELETE FROM `db_script_string` WHERE entry = 2000001238;
DELETE FROM `db_script_string` WHERE entry = 2000001239;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`= 30162);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`= 30180);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`= 30086);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`= 30081);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`= 25490);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`= 25492);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`= 25493);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`= 30202);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`= 26498);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`= 26559);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`= 26700);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`= 26789);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`= 28015);


# FIX
# DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50314;
# DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50314;
# UPDATE conditions SET SourceGroup=9732 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=28666;
# UPDATE conditions SET SourceGroup=9732 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=28666;
# UPDATE `conditions` SET `SourceEntry`='14237' WHERE `SourceGroup`=7927 AND `SourceEntry`=14239 AND SourceTypeOrReferenceId=14;

# WDB_Check
# UPDATE `npc_text` SET `WDBVerified`=1 WHERE `ID` IN (9516,14330,15608,15609,9842,9704,9708,6520,14451,14452,10955);

# Temp_FIX
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

UPDATE version SET `cache_id`= '632';
UPDATE version SET `db_version`= 'YTDB_0.14.6_R632_TC_R17324_TDBAI_335_RuDB_R56';
