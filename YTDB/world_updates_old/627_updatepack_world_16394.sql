# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 626_FIX_16297 627_FIX_16394 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('627_FIX_16394');

# TC
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE `guid` in (48199,142619,142620,142621,142622);
REPLACE INTO `game_event_gameobject` SELECT '9',`guid` FROM `gameobject` WHERE `id`=194047;
REPLACE INTO `game_event_gameobject` SELECT '9',`guid` FROM `gameobject` WHERE `id`=113768;
REPLACE INTO `game_event_gameobject` SELECT '9',`guid` FROM `gameobject` WHERE `id`=113769;
REPLACE INTO `game_event_gameobject` SELECT '9',`guid` FROM `gameobject` WHERE `id`=113770;
REPLACE INTO `game_event_gameobject` SELECT '9',`guid` FROM `gameobject` WHERE `id`=113771;

# Chaosua
UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI' WHERE `entry` = 180667;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=180667 AND `source_type`=1);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(180667, 1, 0, 0, 62, 0, 100, 0, 6668, 0, 0, 0, 56, 21106, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'The Only Prescription -  Draconic for Dummies "Chapter IV"');
UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI' WHERE `entry` = 180666;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=180666 AND `source_type`=1);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(180666, 1, 0, 0, 62, 0, 100, 0, 6670, 0, 0, 0, 56, 21107, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'The Only Prescription -  Draconic for Dummies "Chapter V"');
UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI' WHERE `entry` = 180665;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=180665 AND `source_type`=1);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(180665, 1, 0, 0, 62, 0, 100, 0, 6669, 0, 0, 0, 56, 21109, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'The Only Prescription -  Draconic for Dummies "Chapter VII"');

# Ravie
INSERT IGNORE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES ('8284', '1', '-7005.000000', '-1741.000000', '234.098999', 'Dorius Stonetender');
INSERT IGNORE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES ('8284', '2', '-7002.751953', '-1726.690918', '234.620392', 'Dorius Stonetender');
INSERT IGNORE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES ('8284', '3', '-6986.963867', '-1736.839111', '241.082123', 'Dorius Stonetender');
INSERT IGNORE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES ('8284', '4', '-6939.178711', '-1743.562256', '240.744064', 'Dorius Stonetender');
INSERT IGNORE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES ('8284', '5', '-6922.880859', '-1772.865845', '240.744781', 'Dorius Stonetender');
INSERT IGNORE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES ('8284', '6', '-6870.689453', '-1832.613647', '240.687744', 'Dorius Stonetender');
INSERT IGNORE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES ('8284', '7', '-6699.832520', '-1896.856934', '244.144485', 'Dorius Stonetender');
INSERT IGNORE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES ('8284', '8', '-6661.958496', '-1916.346924', '244.144577', 'Dorius Stonetender');
INSERT IGNORE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES ('8284', '9', '-6570.032715', '-1921.347412', '244.167068', 'Dorius Stonetender');
INSERT IGNORE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES ('8284', '10', '-6473.979980', '-1970.568359', '244.151413', 'Dorius Stonetender');
INSERT IGNORE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES ('8284', '11', '-6439.722168', '-1985.220581', '244.438568', 'Dorius Stonetender');
INSERT IGNORE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES ('8284', '12', '-6389.888184', '-1989.311279', '246.838516', 'Dorius Stonetender');
DELETE FROM `smart_scripts` WHERE `entryorguid`=8284 AND `id`=0 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES (8284,0,0,0,19,0,100,0,3367,0,0,0,53,0,8284,1,3367,10,2,18,100,0,0,0.0,0.0,0.0,0.0,"Escort Dorius Stonetender");
UPDATE `gameobject` SET `spawntimesecs` = -120 WHERE `guid`=22495;
DELETE FROM `smart_scripts` WHERE `entryorguid`=8284 AND `id`=1 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES (8284,0,1,0,58,0,100,0,12,0,0,0,50,175704,60000,0,0,0,0,19,8284,0,0,0.0,0.0,0.0,0.0,"Singed Letter was dropped by Dorius");
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`='8284';

# TC
-- Fix [Qs] Words of Power /11640/11942/{A/H}
-- 10x to Subv for giving me idea how to fix it
SET @BEAM := 47848;
SET @NECRO := 25378;
SET @NAFERSET := 26076;
SET @Blast := 15587;
SET @Renew:= 11640;
SET @Corruption := 32063;
SET @Shadow := 9613;
-- Add SAI for En"kilah Necromancer
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@NECRO;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@NECRO;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@NECRO;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NECRO,0,0,0,1,0,100,0,10000,20000,180000,200000,11,@BEAM,0,0,0,0,0,11,@NAFERSET,30,0,0,0,0,0,' En"kilah Necromancer - OOC - Cast spell Purple Beam on Naferset'),
(@NECRO,0,1,0,6,0,100,0,0,0,0,0,45,0,1,0,0,0,0,11,@NAFERSET,50,0,0,0,0,0,' En"kilah Necromancer - on death - Data set 0 1 on Hight Priest Nafarset'),
(@NECRO,0,2,0,0,0,100,0,2000,3000,15000,16000,11,@Corruption,0,0,0,0,0,2,0,0,0,0,0,0,0,' En"kilah Necromancer - IC - Corruption'),
(@NECRO,0,3,0,0,0,100,0,4000,6000,2000,6500,11,@Shadow,32,0,0,0,0,2,0,0,0,0,0,0,0, 'En"kilah Necromancer - Ic - Shadow Bolt');
--  Add SAI for Hight Priest Naferset
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@NAFERSET;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@NAFERSET;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NAFERSET,0,0,0,38,0,100,0,0,1,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,' Hight Priest Nafarset - On Data set 0 1 - Increment event phase by 1'),
(@NAFERSET,0,1,2,60,4,100,1,1000,2000,1000,2000,1,0,1000,0,0,0,0,1,0,0,0,0,0,0,0, 'Hight Priest Nafarset - On Event update /in event phase 3/ - Say text 0'),
(@NAFERSET,0,2,3,61,4,100,0,0,0,0,0,19,33555200,0,0,0,0,0,1,0,0,0,0,0,0,0,' Hight Priest Nafarset - Linked with event 1 - Set field flags to 0'),
(@NAFERSET,0,3,0,61,4,100,0,0,0,0,0,49,0,0,0,0,0,0,21,20,0,0,0,0,0,0,' Hight Priest Nafarset - Linked with event 2 - Attack start on closest player'),
(@NAFERSET,0,4,0,0,4,100,0,4000,6000,5000,8000,11,@Blast,0,0,0,0,0,2,0,0,0,0,0,0,0,' Hight Priest Nafarset - IC - Cast spell Mind Blast'),
(@NAFERSET,0,5,0,0,4,100,0,8000,12000,10000,15000,11,@Renew,0,0,0,0,0,1,0,0,0,0,0,0,0,' Hight Priest Nafarset - IC - Cast spell Renew on self'),
(@NAFERSET,0,6,7,6,0,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0,' Hight Priest Nafarset - On death - Data set 0 0'),
(@NAFERSET,0,7,0,61,0,100,0,0,0,0,0,78,0,0,0,0,0,0,1,0,0,0,0,0,0,0,' Hight Priest Nafarset - Linked with event 6 - Reset');
-- Hight Priest Naferset's Text
DELETE FROM `creature_text` WHERE `entry`=@NAFERSET;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@NAFERSET,0,0,'What is the meaning of this?! I have not yet finished my feast!',14,0,100,1,1000,0,'Nafarset on activation');

UPDATE `quest_template` SET `specialflags`= `specialflags`|8 WHERE `id` IN (
24889, -- Classic Random 5-15 (Nth)
24890, -- Classic Random 15-25 (Nth)
24891, -- Classic Random 24-34 (Nth)
24892, -- Classic Random 35-45 (Nth)
24893, -- Classic Random 46-55 (Nth)
24894, -- Classic Random 56-60 (Nth)
24895, -- Classic Random 60-64 (Nth)
24896); -- Classic Random 65-70 (Nth)

-- Territorial Trespass (13051)

SET @NPC_VERANUS := 30461;
SET @QUEST := 13051;
SET @EVENT := 19714;
SET @NPC_THORIM := 30462;
SET @SPELL_MOUNT := 43671;

UPDATE `creature_template` SET `HoverHeight`=10.8,`speed_walk`=3.2,`speed_run`=1.42857146263123,`VehicleId`=237,`minlevel`=80,`faction_A`=14,`faction_H`=14,`unit_flags`=0x8140,`InhabitType`=5 WHERE `entry`=@NPC_VERANUS;

DELETE FROM `creature_template_addon` WHERE `entry`=@NPC_VERANUS;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`auras`) VALUES
(@NPC_VERANUS,0,0x3000000,0x1,'');

DELETE FROM `creature_text` WHERE `entry` IN (@NPC_VERANUS,@NPC_THORIM);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@NPC_VERANUS,0,0,'%s lets out a bellowing roar as she descends upon the nest.',16,0,100,15,0,0,'Veranus'),
(@NPC_THORIM,0,0,'Look out below!',14,0,100,0,0,0,'Thorim'),
(@NPC_THORIM,1,0,'Easy there, girl!  Don''t you recognize your old master?',12,0,100,0,0,0,'Thorim'),
(@NPC_THORIM,2,0,'I will see you at the Temple of Storms. Looks like I''m going to have to break her in again.',12,0,100,0,0,0,'Thorim');

-- Veranus SAI
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@NPC_VERANUS,@NPC_THORIM);
DELETE FROM `smart_scripts` WHERE (`entryorguid` IN (@NPC_VERANUS,@NPC_THORIM) AND `source_type`=0) OR (`entryorguid`=@NPC_THORIM*100 AND `source_type`=9);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC_VERANUS,0,0,0,54,0,100,0,0,0,0,0,53,1,@NPC_VERANUS,0,@QUEST,0,0,1,0,0,0,0,0,0,0,'Veranus - On Summoned - Start WP-Movement'),
(@NPC_VERANUS,0,1,2,58,0,100,0,1,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Veranus - On WP-End - Talk(emote)'),
(@NPC_VERANUS,0,2,3,61,0,100,0,1,0,0,0,33,@NPC_VERANUS,0,0,0,0,0,7,0,0,0,0,0,0,0,'Veranus - On WP-End - Give quest credit'),
(@NPC_VERANUS,0,3,0,61,0,100,0,0,0,0,0,12,@NPC_THORIM,8,0,0,0,0,8,0,0,0,7096.863,-904.658,1119.904,2.338741,'Veranus - On WP-End - Summon Thorim'),
(@NPC_VERANUS,0,4,5,38,0,100,0,1,1,0,0,46,100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Veranus - On data - Move forward'),
(@NPC_VERANUS,0,5,0,61,0,100,0,0,0,0,0,41,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Veranus - On data - despawn'),
--
(@NPC_THORIM,0,0,0,54,0,100,0,0,0,0,0,80,@NPC_THORIM*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Thorim - On Summoned - Start script'),
(@NPC_THORIM,0,1,0,38,0,100,0,1,1,0,0,41,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Thorim - On data - despawn'),
(@NPC_THORIM*100,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Thorim - On Script - Talk(yell)'),
(@NPC_THORIM*100,9,1,0,0,0,100,0,0,0,0,0,11,@SPELL_MOUNT,0,0,0,0,0,7,0,0,0,0,0,0,0,'Thorim - On Script - Cast spell mount'),
(@NPC_THORIM*100,9,2,0,0,0,100,0,10000,10000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Thorim - On Script - Talk(say)'),
(@NPC_THORIM*100,9,3,0,0,0,100,0,5000,5000,0,0,1,2,1000,0,0,0,0,1,0,0,0,0,0,0,0,'Thorim - On Script - Talk(say)'),
(@NPC_THORIM*100,9,4,0,0,0,100,0,0,0,0,0,45,1,1,0,0,0,0,7,0,0,0,0,0,0,0,'Thorim - On Script - Set data'),
(@NPC_THORIM*100,9,5,0,0,0,100,0,0,0,0,0,45,1,1,0,0,0,0,1,0,0,0,0,0,0,0,'Thorim - On Script - Set data');

DELETE FROM `waypoints` WHERE `entry`=@NPC_VERANUS;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@NPC_VERANUS,1,7083.224,-912.2372,1090.213,'Veranus - WP1');

DELETE FROM `event_scripts` WHERE `id`=@EVENT;
INSERT INTO `event_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(@EVENT,0,10,@NPC_VERANUS,600000,0,6947.481,-859.5176,1147.604,5.674867);

SET @ENTRY := 27482; -- Wounded Westfall Infantry npc
SET @SPELL := 48845; -- Renew Infantry spell
SET @ITEM := 37576; -- Renewing Bandage item
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,@SPELL,0,31,1,3,@ENTRY,0,0,0,'', "Item Renewing Bandage target Wounded Westfall Infantry");
-- Model data
UPDATE `creature_model_info` SET `bounding_radius`=0.6076385,`combat_reach`=2.625,`gender`=0 WHERE `modelid`=27004; -- Chieftain Swiftspear
-- Addon data
DELETE FROM `creature_template_addon` WHERE `entry`IN (30395,30469);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(30395,0,0,1,0, NULL), -- Chieftain Swiftspear
(30469,0,8,1,0, NULL); -- Tracker Val'zij

-- PK and new index for quest_poi
ALTER TABLE `quest_poi` DROP INDEX `questId`;
ALTER TABLE `quest_poi` DROP INDEX `id`;
ALTER TABLE `quest_poi` ADD PRIMARY KEY (`questId`, `id`);
ALTER TABLE `quest_poi` ADD INDEX `idx` (`questId`, `id`);
# ALTER TABLE `quest_poi_points` ADD PRIMARY KEY (`questId`, `id`, `idx`);

INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,58124,0,0,32,0,0x90,0,0,0,0,'','Mal''Ganis Kill Credit - Player target');

SET @ENTRY := 36095; -- Highlord Tirion Fordring

DELETE FROM `creature` WHERE `id`=@ENTRY;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`MovementType`) VALUES
(199952,@ENTRY,649,15,1,648.9167,131.0208,141.6161,0,7200,0,0);

DELETE FROM `creature_template_addon` WHERE `entry`=@ENTRY;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(@ENTRY,0,0x0,0x1,'57545');

DELETE FROM `creature_text` WHERE `entry` IN (34990,34995);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
-- King Varian Wrynn
(34990, 0, 0, 'Your beasts will be no match for my champions, Tirion!', 14, 0, 0, 0, 0, 16069, 'King Varian Wrynn - Northrend Beasts Outro'),
(34990, 1, 0, 'The Alliance doesn''t need the help of a demon lord to deal with Horde filth! Come, pig!', 14, 0, 100, 5, 0, 16064, 'King Varian Wrynn - Lord Jaraxxus Outro'),
(34990, 2, 0, 'Our honor has been besmirched! They make wild claims and false accusations against us. I demand justice! Allow my champions to fight in place of your knights, Tirion. We challenge the Horde!', 14, 0, 100, 5, 0, 16066, 'King Varian Wrynn - Faction Champions Intro'),
(34990, 3, 0, 'Fight for the glory of the Alliance, heroes! Honor your king and your people!', 14, 0, 100, 5, 0, 16065, 'King Varian Wrynn - Faction Champions Intro'),
(34990, 4, 0, 'GLORY TO THE ALLIANCE!', 14, 0, 100, 0, 0, 16067, 'King Varian Wrynn - Victory'),
(34990, 5, 0, 'Not even the Lich King most powerful minions can stand against the Alliance! All hail our victors!', 14, 0, 0, 0, 0, 16068, 'King Varian Wrynn - Faction Champions Outro'),
(34990, 6, 0, 'Hardly a challenge.', 14, 0, 100, 274, 0, 16061, 'King Varian Wrynn - Faction Champions Kill Player'),
(34990, 6, 1, 'HAH!', 14, 0, 100, 5, 0, 16060, 'King Varian Wrynn - Faction Champions Kill Player'),
(34990, 6, 2, 'Is this the best the Horde has to offer?', 14, 0, 100, 6, 0, 16063, 'King Varian Wrynn  - Faction Champions Kill Player'),
(34990, 6, 3, 'Worthless scrub.', 14, 0, 100, 25, 0, 16062, 'King Varian Wrynn  - Faction Champions Kill Player'),
-- Garrosh Hellscream
(34995, 0, 0, 'I''ve seen more worthy challenges in the Ring of Blood. You waste our time, paladin.', 14, 0, 100, 1, 0, 16026, 'Garrosh Hellscream  - Northrend Beasts Outro'),
(34995, 1, 0, 'Treacherous Alliance dogs! You summon a demon lord against warriors of the Horde? Your deaths will be swift!', 14, 0, 100, 5, 0, 16021, 'Garrosh Hellscream - Lord Jaraxxus Outro'),
(34995, 2, 0, 'The Horde demands justice! We challenge the Alliance. Allow us to battle in place of your knights, paladin. We will show these dogs what it means to insult the Horde!', 14, 0, 100, 1, 0, 16023, 'Garrosh Hellscream - Faction Champions Intro'),
(34995, 3, 0, 'Show them no mercy, Horde champions! LOK''TAR OGAR!', 14, 0, 0, 0, 0, 16022, 'Garrosh - Faction Champions Intro'),
(34995, 4, 0, 'That was just a taste of what the future brings. FOR THE HORDE!', 14, 0, 100, 1, 0, 16024, 'Garrosh Hellscream - Faction Champions Victory'),
(34995, 5, 0, 'Do you still question the might of the Horde, paladin? We will take on all comers!', 14, 0, 100, 1, 0, 16025, 'Garrosh Hellscream - Faction Champions Outro'),
(34995, 6, 0, 'Weakling!', 14, 0, 100, 0, 0, 16017, 'Garrosh Hellscream - Faction Champions Kill Player'),
(34995, 6, 1, 'Pathetic!', 14, 0, 100, 0, 0, 16018, 'Garrosh Hellscream - Faction Champions Kill Player'),
(34995, 6, 2, 'Overpowered.', 14, 0, 100, 0, 0, 16019, 'Garrosh Hellscream - Faction Champions Kill Player'),
(34995, 6, 3, 'Lok''tar!', 14, 0, 100, 0, 0, 16020, 'Garrosh Hellscream - Faction Champions Kill Player');
DELETE FROM `creature_template_addon` WHERE `entry`=@ENTRY;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(@ENTRY,0,0,0x10000,0x1,0,'51589 52215');

# FIX
UPDATE `creature_template` SET `unit_flags` = 4, `spell1` = 43997, `spell2` = 43986 WHERE `entry` = 27992;
UPDATE `creature_template` SET `unit_flags` = 4, `spell1` = 43997, `spell2` = 43986 WHERE `entry` = 27993;

# NeatElves
UPDATE `quest_template` SET `RequiredRaces`='690' WHERE `id`=10102;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='1' WHERE `item`=18228;
UPDATE `quest_template` SET `Details`=NULL WHERE `Details`='';
UPDATE `quest_template` SET `Objectives`=NULL WHERE `Objectives`='';
UPDATE `quest_template` SET `OfferRewardText`=NULL WHERE `OfferRewardText`='';
UPDATE `quest_template` SET `RequestItemsText`=NULL WHERE `RequestItemsText`='';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-50' WHERE `item`=30157;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-50' WHERE `item`=31347;
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES
(4041, 4913),
(4041, 4914),
(4041, 4915);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES
(4042, 4916),
(4042, 4918),
(4042, 4917);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES
('50009', '5376'),
('50009', '5375'),
('50018', '5374'),
('50018', '5373');
UPDATE `creature_template` SET `faction_A`='35', `faction_H`='35' WHERE `entry`=9528;
UPDATE `creature_template` SET `faction_A`='35', `faction_H`='35' WHERE `entry`=9529;
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES
(50413, 2842),
(50413, 2843),
(2208, 2844),
(2208, 2845),
(2208, 2848),
(50413, 2849);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES ('4763', '5820');
UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE `id` in (9545,9547);
UPDATE `creature` SET `spawndist`='0', `MovementType`='2' WHERE `guid` in (47678);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES
(4781, 3673),
(4781, 5834);
UPDATE `gameobject_template` SET `data1`='177790' WHERE `entry`=177844;
UPDATE `gameobject_template` SET `flags`='4', `faction`='1801' WHERE `entry`=177844;
UPDATE `gameobject_template` SET `flags`='4', `faction`='1802' WHERE `entry`=177790;
UPDATE `gameobject_template` SET `data1`='0', `data7`='0' WHERE `entry`=177795;
UPDATE `gameobject_template` SET `faction`='1801' WHERE `entry`=177794;
UPDATE `gameobject_template` SET `faction`='1802' WHERE `entry`=177792;
UPDATE `gameobject` SET `spawntimesecs`='60' WHERE `guid`=42463;
UPDATE `gameobject` SET `spawntimesecs`='60' WHERE `guid`=48668;
UPDATE `gameobject` SET `spawntimesecs`='300' WHERE `guid`=3816;
UPDATE `gameobject` SET `spawntimesecs`='300' WHERE `guid`=19138;
DELETE FROM `gameobject` WHERE `guid` = 40488;
DELETE FROM `gameobject` WHERE `guid` = 26074;
DELETE FROM `gameobject` WHERE `guid` = 37369;
DELETE FROM `gameobject` WHERE `guid` = 37368;
DELETE FROM `gameobject` WHERE `guid` = 40489;
DELETE FROM `gameobject` WHERE `guid` = 12309;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(40487, 177792, 1, 1, 1, 7838.95, -259.246, -26.4806, 0.191986, 0, 0, 0.0958456, 0.995396, 60, 100, 1),
(18962, 177793, 1, 1, 1, 7838.95, -259.246, -26.4806, 0.191986, 0, 0, 0.0958456, 0.995396, 60, 100, 1);
UPDATE `quest_template` SET `PrevQuestId`='0' WHERE `id`=10048;
UPDATE `quest_template` SET `NextQuestId`='0', `NextQuestIdChain`='0' WHERE `id`=9943;
UPDATE `quest_template` SET `NextQuestId`='0', `NextQuestIdChain`='0' WHERE `id`=9947;
UPDATE `quest_template` SET `PrevQuestId`='0' WHERE `id`=10049;
UPDATE `quest_template` SET `PrevQuestId`='0', `NextQuestId`='0', `NextQuestIdChain`='0' WHERE `id`=9949;
UPDATE `quest_template` SET `PrevQuestId`='0', `NextQuestId`='0', `NextQuestIdChain`='0' WHERE `id`=9950;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 636;
DELETE FROM `creature_questrelation` WHERE `quest` in (9950,9949,10048,10049);
DELETE FROM `creature_involvedrelation` WHERE `quest` in (9949,9950,1289,10549,10048,10049);

# NeatElves
DELETE FROM `creature_involvedrelation` WHERE `quest` in (9034,9036,9037,9038,9039,9040,9041,9042,9043,9044,9046,9047,9048,9049,9050,9054,9055,9056,9057,9058,9059,9060,9061,9068,9069,9070,9071,9072,9073,9074,9075,9077,9078,9079,9080,9081,9082,9083,9084,9086,9087,9088,9089,9090,9091,9092,9093,9095,9096,9097,9098,9099,9100,9101,9102,9103,9104,9105,9106,9107,9108,9109,9110,9111,9112,9113,9114,9115,9116,9117,9118,11087);

UPDATE `quest_template` SET `OfferRewardText`='This crate is covered with clawed scratches, and the marks of water damage. Prying it open reveals soggy and rotted straw, as if something of value was stored in the crate. You search through the straw...$B$B...and find an armload of red-colored bottles.' WHERE `id`=281;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Netherstorm flame!' WHERE `id` =11835;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Durotar flame!' WHERE `id` =11846;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Eversong woods flame!' WHERE `id` =11848;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Ghostland flame!' WHERE `id` =11850;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Mulgore flame!' WHERE `id` =11852;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Shadowmoon Valley flame!' WHERE `id` =11855;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Borean Tundra flame!' WHERE `id` =13493;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Sholazar Basin flame!' WHERE `id` =13494;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Dragonblight flame!' WHERE `id` =13495;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Howling Fjords flame!' WHERE `id` =13496;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Grizzly Hills flame!' WHERE `id` =13497;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Storm Peaks flame!' WHERE `id` =13498;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Crystalsong Forest flame!' WHERE `id` =13499;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Zul''Drak flame!' WHERE `id` =13500;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Tanaris flame!',`RequestItemsText`=NULL WHERE `id`=11838;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Nagrand flame!', `RequestItemsText`=NULL WHERE `id`=11821;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Blade''s Edge Mountains flame!', `RequestItemsText`=NULL WHERE `id`=11807;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Blade''s Edge Mountains flame!', `RequestItemsText`=NULL WHERE `id`=11843;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Arathi Highlands flame!' WHERE `id`=11804;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Blasted Lands flame!' WHERE `id`=11808;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Burning Steppes flame!' WHERE `id`=11810;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Dun Morogh flame!' WHERE `id`=11813;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Duskwood flame!' WHERE `id`=11814;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Elwynn Forest flame!' WHERE `id`=11816;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Loch Modan flame!' WHERE `id`=11820;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Redridge Mountains flame!' WHERE `id`=11822;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Hinterlands flame!' WHERE `id`=11826;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Wetlands flame!' WHERE `id`=11828;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Western Plaguelands flame!' WHERE `id`=11827;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Westfall flame!' WHERE `id`=11583;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Ashenvale flame!' WHERE `id`=11805;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Azuremyst Isle flame!' WHERE `id`=11806;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Bloodmyst Isle flame!' WHERE `id`=11809;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Darkshore flame!' WHERE `id`=11811;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Desolace flame!' WHERE `id`=11812;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Dustwallow Marsh flame!' WHERE `id`=11815;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Feralas flame!' WHERE `id`=11817;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Silithus flame!' WHERE `id`=11831;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Tanaris flame!' WHERE `id`=11833;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Teldrassil flame!' WHERE `id`=11824;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Winterspring flame!' WHERE `id`=11834;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Hellfire Peninsula flame!' WHERE `id`=11818;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Howling Fjord flame!' WHERE `id`=13488;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Grizzly Hills flame!' WHERE `id`=13489;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Storm Peaks flame!' WHERE `id`=13490;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Hillsbrad Foothills flame!' WHERE `id`=11819;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Crystalsong Forest flame!' WHERE `id`=13491;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Zul''Drak flame!' WHERE `id`=13492;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Netherstorm flame!' WHERE `id`=11830;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Shadowmoon Valley flame!' WHERE `id`=11823;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Terokkar Forest flame!' WHERE `id`=11825;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Zangarmarsh flame!' WHERE `id`=11829;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Borean Tundra flame!' WHERE `id`=13485;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Sholazar Basin flame!' WHERE `id`=13486;
UPDATE `quest_template` SET `OfferRewardText`='Honor the Dragonblight flame!' WHERE `id`=13487;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Howling Fjord bonfire!' WHERE `id`=13444;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Grizzly Hills bonfire!' WHERE `id`=13445;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Storm Peaks bonfire!' WHERE `id`=13446;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Crystalsong Forest bonfire!' WHERE `id`=13447;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Zul''Drak bonfire!' WHERE `id`=13449;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Sholazar Basin bonfire!' WHERE `id`=13450;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Dragonblight bonfire!' WHERE `id`=13451;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Howling Fjord bonfire!' WHERE `id`=13453;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Grizzly Hills bonfire!' WHERE `id`=13454;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Storm Peaks bonfire!' WHERE `id`=13455;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Crystalsong Forest bonfire!' WHERE `id`=13457;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Zul''Drak bonfire!' WHERE `id`=13458;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Zangarmarsh bonfire!' WHERE `id`=11758;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Borean Tundra bonfire!' WHERE `id`=13440;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Borean Tundra bonfire!' WHERE `id`=13441;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Sholazar Basin bonfire!' WHERE `id`=13442;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Dragonblight bonfire!' WHERE `id`=13443;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Burning Steppes bonfire!' WHERE `id`=11768;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Arathi Highlands bonfire!' WHERE `id`=11764;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Badlands bonfire!' WHERE `id`=11766;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Eversong Woods bonfire!' WHERE `id`=11772;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Hillsbrad Foothills bonfire!' WHERE `id`=11776;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Silverpine bonfire!' WHERE `id`=11580;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Stranglethorn Vale bonfire!' WHERE `id`=11801;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Swamp of Sorrows bonfire!' WHERE `id`=11781;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Hinterlands bonfire!' WHERE `id`=11784;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Tirisfal Glades bonfire!' WHERE `id`=11786;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Hellfire Peninsula bonfire!' WHERE `id`=11747;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Nagrand bonfire!' WHERE `id`=11750;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Netherstorm bonfire!' WHERE `id`=11759;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Shadowmoon Valley bonfire!' WHERE `id`=11752;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Terokkar Forest bonfire!' WHERE `id`=11754;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Netherstorm bonfire!' WHERE `id`=11799;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Shadowmoon Valley bonfire!' WHERE `id`=11779;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Terokkar Forest bonfire!' WHERE `id`=11782;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Zangarmarsh bonfire!' WHERE `id`=11787;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Blade''s Edge Mountains bonfire!' WHERE `id`=11736;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Dustwallow Marsh bonfire!' WHERE `id`=11744;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Teldrassil bonfire!' WHERE `id`=11753;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Blade''s Edge Mountains bonfire!' WHERE `id`=11767;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Hellfire Peninsula bonfire!' WHERE `id`=11775;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Nagrand bonfire!' WHERE `id`=11778;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Ashenvale bonfire!' WHERE `id`=11734;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Azuremyst Isle bonfire!' WHERE `id`=11735;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Bloodmyst Isle bonfire!' WHERE `id`=11738;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Darkshore bonfire!' WHERE `id`=11740;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Desolace bonfire!' WHERE `id`=11741;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Stonetalon Mountains bonfire!' WHERE `id`=11780;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Tanaris bonfire!' WHERE `id`=11802;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Barrens bonfire!' WHERE `id`=11783;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Winterspring bonfire!' WHERE `id`=11803;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Loch Modan bonfire!' WHERE `id`=11749;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Redridge Mountains bonfire!' WHERE `id`=11751;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Hinterlands bonfire!' WHERE `id`=11755;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Wetlands bonfire!' WHERE `id`=11757;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Ashenvale bonfire!' WHERE `id`=11765;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Desolace bonfire!' WHERE `id`=11769;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Durotar bonfire!' WHERE `id`=11770;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Dustwallow Marsh bonfire!' WHERE `id`=11771;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Feralas bonfire!' WHERE `id`=11773;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Blasted Lands bonfire!' WHERE `id`=11737;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Burning Steppes bonfire!' WHERE `id`=11739;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Dun Morogh bonfire!' WHERE `id`=11742;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Duskwood bonfire!' WHERE `id`=11743;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Elywnn Forest bonfire!' WHERE `id`=11745;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Arathi Highlands bonfire!' WHERE `id`=11732;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Western Plaguelands bonfire!' WHERE `id`=11756;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Mulgore bonfire!' WHERE `id`=11777;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Silithus bonfire!' WHERE `id`=11800;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Westfall bonfire!' WHERE `id`=11581;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Alliance''s Hillsbrad Foothills bonfire!' WHERE `id`=11748;
UPDATE `quest_template` SET `OfferRewardText`='Desecrate the Horde''s Thousand Needles bonfire!' WHERE `id`=11785;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(72560, 192517, 604, 3, 1, 1837.86, 1873.78, 188.544, 3.14159, 0, 0, 1, 1.26759e-006, 180, 0, 1);
UPDATE `gameobject` SET `spawntimesecs` = -43200 WHERE `id` = 193597;
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES ('3801', '4773');
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (3801);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`) VALUES
(3801,0,0,"I am ready for the illusion, Myranda.",1,1,1);
UPDATE `creature_template` SET `minlevel` = 1, `maxlevel` = 1 WHERE `entry` = 18162;
UPDATE `quest_template` SET `NextQuestId` = 0, `NextQuestIdChain` = 0 WHERE `id` = 7732;
UPDATE creature_loot_template SET ChanceOrQuestChance=ABS(ChanceOrQuestChance) WHERE item in (814);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='10' WHERE `item`=22554;
UPDATE `gameobject` SET `spawntimesecs`='120' WHERE `id`=179494;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(8234, 179494, 0, 1, 1, -6886.06, -1229.12, 215.483, -2.67035, 0, 0, -0.972369, 0.233447, 120, 100, 1),
(8235, 179494, 0, 1, 1, -6772.75, -1124.14, 206.103, 0.418879, 0, 0, 0.207912, 0.978148, 120, 100, 1),
(8237, 179494, 0, 1, 1, -6563.64, -1231.7, 186.145, 1.95477, 0, 0, 0.829038, 0.559192, 120, 100, 1),
(8239, 179494, 0, 1, 1, -6538.47, -1266.37, 180.943, 0.872665, 0, 0, 0.422618, 0.906308, 120, 100, 1),
(8240, 179494, 0, 1, 1, -6463.42, -1194.57, 181.996, -1.50098, 0, 0, -0.681997, 0.731355, 120, 100, 1);
UPDATE `quest_template` SET `PrevQuestId`='3372' WHERE `id`=3566;
UPDATE `creature` SET `spawntimesecs`='2' WHERE `guid`=53464;
UPDATE `creature_template` SET `faction_A`='35', `faction_H`='35' WHERE `entry`=8400;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 5119;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 5120;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 17306;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 17326;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 17327;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 17328;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 17422;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 17423;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 17502;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 17503;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 17504;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 18225;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 18226;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 18227;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 18231;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 18233;
DELETE FROM `creature_loot_template` WHERE `entry` = 13676 AND `item` = 5120;
DELETE FROM `creature_loot_template` WHERE `entry` = 13676 AND `item` = 17326;
DELETE FROM `creature_loot_template` WHERE `entry` = 13676 AND `item` = 17327;
DELETE FROM `creature_loot_template` WHERE `entry` = 13676 AND `item` = 17422;
DELETE FROM `creature_loot_template` WHERE `entry` = 13676 AND `item` = 17423;
DELETE FROM `creature_loot_template` WHERE `entry` = 13676 AND `item` = 17502;
DELETE FROM `creature_loot_template` WHERE `entry` = 13676 AND `item` = 17504;
DELETE FROM `creature_loot_template` WHERE `entry` = 13676 AND `item` = 18145;
DELETE FROM `creature_loot_template` WHERE `entry` = 13676 AND `item` = 18146;
DELETE FROM `creature_loot_template` WHERE `entry` = 13676 AND `item` = 18147;
DELETE FROM `creature_loot_template` WHERE `entry` = 13676 AND `item` = 18206;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 4583;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 4584;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 17306;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 17326;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 17327;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 17328;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 17422;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 17423;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 17502;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 17503;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 17504;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 18225;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 18231;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 18233;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 18234;
DELETE FROM `creature_loot_template` WHERE `entry` = 13618 AND `item` = 17643;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 3395;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 4583;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 4584;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 5758;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 8146;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 8251;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 8254;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 12203;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 12208;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 12693;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 17422;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 17423;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 17502;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 17503;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 17504;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 18234;
DELETE FROM `skinning_loot_template` WHERE `entry` = 14282 AND `item` = 8169;
DELETE FROM `skinning_loot_template` WHERE `entry` = 14282 AND `item` = 8171;
DELETE FROM `skinning_loot_template` WHERE `entry` = 14282 AND `item` = 8368;
DELETE FROM `skinning_loot_template` WHERE `entry` = 14282 AND `item` = 21887;
DELETE FROM `skinning_loot_template` WHERE `entry` = 14282 AND `item` = 25649;
UPDATE `creature_template` SET `lootid`='0' WHERE `lootid`='13618';
UPDATE creature_loot_template SET ChanceOrQuestChance=ABS(ChanceOrQuestChance) WHERE item in (17642,17643);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 14282;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance`='20' WHERE `entry`=10990 AND `item`=8170;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance`='20' WHERE `entry`=13676 AND `item`=8170;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance`='0' WHERE `entry`=14282 AND `item`=4304;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance`='20' WHERE `entry`=14282 AND `item`=8170;
DELETE FROM `skinning_loot_template` WHERE `entry` = 10981 AND `item` = 8368;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance`='20' WHERE `entry`=10981 AND `item`=8170;
UPDATE `creature_template` SET `faction_A`='1274', `faction_H`='1274' WHERE `entry` IN (10990,22727,31921,37237,22726,13676,22764,32084,37405);
UPDATE `creature_template` SET `faction_A`='1275', `faction_H`='1275' WHERE `entry` IN (10981,22737,31975,37294,14282,22738,31977,37296);
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 5119;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 5120;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 17306;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 17326;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 17327;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 17328;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 17422;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 17423;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 17502;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 17503;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 17504;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 18225;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 18226;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 18227;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 18231;
DELETE FROM `creature_loot_template` WHERE `entry` = 10990 AND `item` = 18233;
DELETE FROM `creature_loot_template` WHERE `entry` = 13676 AND `item` = 5120;
DELETE FROM `creature_loot_template` WHERE `entry` = 13676 AND `item` = 17326;
DELETE FROM `creature_loot_template` WHERE `entry` = 13676 AND `item` = 17327;
DELETE FROM `creature_loot_template` WHERE `entry` = 13676 AND `item` = 17422;
DELETE FROM `creature_loot_template` WHERE `entry` = 13676 AND `item` = 17423;
DELETE FROM `creature_loot_template` WHERE `entry` = 13676 AND `item` = 17502;
DELETE FROM `creature_loot_template` WHERE `entry` = 13676 AND `item` = 17504;
DELETE FROM `creature_loot_template` WHERE `entry` = 13676 AND `item` = 18145;
DELETE FROM `creature_loot_template` WHERE `entry` = 13676 AND `item` = 18146;
DELETE FROM `creature_loot_template` WHERE `entry` = 13676 AND `item` = 18147;
DELETE FROM `creature_loot_template` WHERE `entry` = 13676 AND `item` = 18206;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 4583;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 4584;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 17306;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 17326;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 17327;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 17328;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 17422;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 17423;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 17502;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 17503;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 17504;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 18225;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 18231;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 18233;
DELETE FROM `creature_loot_template` WHERE `entry` = 10981 AND `item` = 18234;
DELETE FROM `creature_loot_template` WHERE `entry` = 13618 AND `item` = 17643;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 3395;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 4583;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 4584;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 5758;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 8146;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 8251;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 8254;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 12203;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 12208;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 12693;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 17422;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 17423;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 17502;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 17503;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 17504;
DELETE FROM `creature_loot_template` WHERE `entry` = 14282 AND `item` = 18234;
DELETE FROM `skinning_loot_template` WHERE `entry` = 14282 AND `item` = 8169;
DELETE FROM `skinning_loot_template` WHERE `entry` = 14282 AND `item` = 8171;
DELETE FROM `skinning_loot_template` WHERE `entry` = 14282 AND `item` = 8368;
DELETE FROM `skinning_loot_template` WHERE `entry` = 14282 AND `item` = 21887;
DELETE FROM `skinning_loot_template` WHERE `entry` = 14282 AND `item` = 25649;
UPDATE `creature_template` SET `lootid`='0' WHERE `lootid`='13618';
UPDATE creature_loot_template SET ChanceOrQuestChance=ABS(ChanceOrQuestChance) WHERE item in (17642,17643);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 14282;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance`='20' WHERE `entry`=10990 AND `item`=8170;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance`='20' WHERE `entry`=13676 AND `item`=8170;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance`='0' WHERE `entry`=14282 AND `item`=4304;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance`='20' WHERE `entry`=14282 AND `item`=8170;
DELETE FROM `skinning_loot_template` WHERE `entry` = 10981 AND `item` = 8368;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance`='20' WHERE `entry`=10981 AND `item`=8170;
UPDATE `creature_template` SET `faction_A`='1274', `faction_H`='1274' WHERE `entry` IN (10990,22727,31921,37237,22726,13676,22764,32084,37405);
UPDATE `creature_template` SET `faction_A`='1275', `faction_H`='1275' WHERE `entry` IN (10981,22737,31975,37294,14282,22738,31977,37296);
DELETE FROM `skinning_loot_template` WHERE `item` = 8368;
DELETE FROM `skinning_loot_template` WHERE `item` = 7428;
DELETE FROM `page_text` WHERE (`entry`=3773);
INSERT INTO `page_text` (`entry`, `text`, `next_page`) VALUES (3773, 'The way of the priest is a new one for our people, but it draws on the ancient traditions of our seers. In your lessons, you will learn the wisdom of the Earthmother as illuminated by the Light. Meet with me in the circle at the center of Camp Narache and we will begin your lessons.$B$BSeer Ravenfeather', 0);
DELETE FROM `page_text` WHERE (`entry`=3774);
INSERT INTO `page_text` (`entry`, `text`, `next_page`) VALUES (3774, 'I have been awaiting your arrival, sunwalker. Chief Hawkwind himself told me of your interest in our order and I have agreed to begin your training. Please meet with me in the circle at the center of Camp Narache when you are ready to begin your instruction.$B$BSunwalker Helaku', 0);
DELETE FROM `page_text` WHERE (`entry`=4330);
INSERT INTO `page_text` (`entry`, `text`, `next_page`) VALUES (4330, '<Much of the coded missive was destroyed by fire.>$B$B...his calling...$B     ...the will of Grand Master Fahrad that we act by dawn tomorrow. The one who calls is restless ...        renewed urgency    ....$B  ...mustn\'t forgo the element of surprise ... an eventuality, you must divert attention away from the objec....$B...but with all luck attributed to the Twilight\'s Hammer....$B$B              ...fter the operation is done, both groups will reconvene back at Ravenholdt Manor. May you be fleet of foot and quiet of blade.$B$BBurn this.', 0);
DELETE FROM `gameobject_loot_template` WHERE `item` in (43697,43668);
#
DELETE FROM `creature_loot_template` WHERE `item` in (43662,43726,43823,43693,43821,43665,43669,43724,43699,48418,43670);
#
DELETE FROM `creature_involvedrelation` WHERE `id` = 20735 AND `quest` = 13245;
DELETE FROM `creature_involvedrelation` WHERE `id` = 20735 AND `quest` = 13246;
DELETE FROM `creature_involvedrelation` WHERE `id` = 20735 AND `quest` = 13247;
DELETE FROM `creature_involvedrelation` WHERE `id` = 20735 AND `quest` = 13248;
DELETE FROM `creature_involvedrelation` WHERE `id` = 20735 AND `quest` = 13249;
DELETE FROM `creature_involvedrelation` WHERE `id` = 20735 AND `quest` = 13250;
DELETE FROM `creature_involvedrelation` WHERE `id` = 20735 AND `quest` = 13251;
DELETE FROM `creature_involvedrelation` WHERE `id` = 20735 AND `quest` = 13252;
DELETE FROM `creature_involvedrelation` WHERE `id` = 20735 AND `quest` = 13253;
DELETE FROM `creature_involvedrelation` WHERE `id` = 20735 AND `quest` = 13254;
DELETE FROM `creature_involvedrelation` WHERE `id` = 20735 AND `quest` = 13255;
DELETE FROM `creature_involvedrelation` WHERE `id` = 20735 AND `quest` = 13256;
DELETE FROM `creature_involvedrelation` WHERE `id` = 20735 AND `quest` = 14199;
#
DELETE FROM `creature` WHERE `guid` in (15653,15783,123545,15584);
DELETE FROM `gameobject` WHERE `guid` = 40084;
DELETE FROM `creature_involvedrelation` WHERE `quest` in (7507,7508,7509);
DELETE FROM `creature_questrelation` WHERE `quest` in (7507,7508,7509);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='10' WHERE `item`=11382;
UPDATE `gameobject_loot_template` SET `groupid`='1' WHERE`entry`=165658;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='0' WHERE `entry`=165658 AND `item`=11370;
UPDATE `quest_template` SET `RequiredSkillId` = 186, `RequiredSkillPoints` = 230 WHERE `Id` = 4083;
UPDATE `quest_template` SET `RewardSpellCast` = 0 WHERE `Id` = 4083;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(19214, 164869, 230, 1, 1, 1215.11, -218.722, -85.6731, 0.0494741, 0, 0, 0.0247345, 0.999694, -300, 0, 1);
DELETE FROM `gossip_menu` WHERE `entry` = 1945;
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES
('1945', '2598'),
('1945', '2605'),
('50019', '2604'),
('50020', '2606');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(52086, 15957, 531, 1, 1, 0, 0, -9188.45, 2091.56, -64.17, 6.01, 604800, 0, 0, 1, 0, 0);
delete from creature where id = 15718;
UPDATE creature_template SET unit_flags=33554432, flags_extra=0 WHERE entry in (15957,15712,15717);
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16 WHERE `entry` = 15712;
UPDATE `creature_template`SET`mingold`='0', `maxgold`='0', `flags_extra`='2' WHERE `entry` in (18797,20662);
REPLACE INTO gossip_menu (entry, text_id) VALUES (7724, 9432),(7724, 9749);
DELETE FROM gossip_menu_option WHERE menu_id = 7724;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, box_coded, box_money, box_text, option_id, npc_option_npcflag) VALUES
(7724, 0, 0, 'Give me a battle standard. I will take control of Twin Spire Ruins.', 0, 0, '', 1, 1),
(7724, 1, 1, 'I have marks to redeem!', 0, 0, '', 3, 128);
REPLACE INTO gossip_menu (entry, text_id) VALUES (7722, 9430);
DELETE FROM gossip_menu_option WHERE menu_id = 7722;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, box_coded, box_money, box_text, option_id, npc_option_npcflag) VALUES
(7722, 0, 0, 'Give me a battle standard. I will take control of Twin Spire Ruins.', 0, 0, '', 1, 1),
(7722, 1, 1, 'I have marks to redeem!', 0, 0, '', 3, 128);
UPDATE gameobject SET animprogress = 255 WHERE id IN (181899, 182096, 182097, 182098, 182173, 182174, 182175, 182522, 182523, 182528, 182529, 183104, 183411, 183412, 183413, 183414, 182210);	  	
UPDATE gameobject_template SET flags = 32 WHERE entry = 182529;
UPDATE gameobject_template SET flags = 32 WHERE entry IN (183412, 183413, 183414, 182210);
UPDATE `creature_template` SET `AIName`='EventAI' WHERE `entry`=18225;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=18225;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('1822501','18225','11','0','100','0','0','0','0','0','11','31961','0','0','20','0','0','0','21','0','0','0','Fire Bomb Target - Cast Fire Bomb on Spawn and set Combat Movement and Auto Attack to false');
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` in (17635,17995);
DELETE FROM `creature_questrelation` WHERE `quest` = 7677;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 7677;
UPDATE `creature_template` SET unit_flags=unit_flags|33554432 WHERE `entry` in (15910,15904,15800);
DELETE FROM `item_loot_template` WHERE (`entry`=46007) AND (`item`=48681);
DELETE FROM `item_loot_template` WHERE (`entry`=46007) AND (`item`=48679);
DELETE FROM `item_loot_template` WHERE (`entry`=46007) AND (`item`=49667);
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (46007, 49667, 10, 0, 1, 1);
# INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (46007, 48679, 10, 0, 1, 1);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES ('7768', '9819');
UPDATE creature_template SET MovementType=0, unit_flags=unit_flags|33554432 WHERE entry=18225;
UPDATE `quest_template` SET `PrevQuestId` = 3372 WHERE `id` = 3566;
UPDATE `gossip_menu` SET `entry`='9789' WHERE `entry`=50235;
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES ('6520', '7722');
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 4783;
DELETE FROM `gossip_menu_option` WHERE `menu_id` in (4783,6520);
UPDATE creature_template SET faction_A=370, faction_H=370 WHERE entry=21101;
DELETE FROM creature_template_addon WHERE entry=20886;
UPDATE creature_template SET MovementType=0 WHERE entry IN (20978,21030);
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=4783;

# Fix
UPDATE `creature_template` SET `npcflag` = 128 WHERE `entry` = 27914;
DELETE FROM `npc_vendor` WHERE (`entry`=27914);
INSERT INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES 
(27914, 38160, 0, 0, 2412),
(27914, 38161, 0, 0, 2412),
(27914, 38162, 0, 0, 2412),
(27914, 38163, 0, 0, 2412),
(27914, 38286, 0, 0, 2412),
(27914, 38285, 0, 0, 2412),
(27914, 38294, 0, 0, 2409),
(27914, 38308, 0, 0, 2411),
(27914, 38291, 0, 0, 2408);
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(9430, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

# Conditions
REPLACE INTO `conditions` VALUES ('13', '2', '26063', '0', '0', '31', '0', '5', '180795', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '29534', '0', '0', '31', '0', '5', '181597', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '29770', '0', '0', '31', '0', '3', '15550', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '7', '35289', '0', '0', '31', '0', '3', '21062', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '35301', '0', '0', '31', '0', '3', '21062', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '7', '35754', '0', '0', '31', '0', '3', '20978', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '7', '35754', '0', '1', '31', '0', '3', '21030', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '35770', '0', '0', '31', '0', '3', '20978', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '36859', '0', '0', '31', '0', '3', '20904', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4783', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4783', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7675', '9369', '0', '0', '8', '0', '10107', '0', '0', '0', '0', '', 'Show different gossip if player has rewarded quest 10107');
REPLACE INTO `conditions` VALUES ('14', '7675', '9369', '0', '1', '8', '0', '10108', '0', '0', '0', '0', '', 'Show different gossip if player has rewarded quest 10108');
REPLACE INTO `gossip_menu` VALUES ('4041', '4913');
REPLACE INTO `gossip_menu` VALUES ('4041', '4914');
REPLACE INTO `gossip_menu` VALUES ('4041', '4915');
REPLACE INTO `gossip_menu` VALUES ('4042', '4916');
REPLACE INTO `gossip_menu` VALUES ('4042', '4917');
REPLACE INTO `gossip_menu` VALUES ('4042', '4918');
REPLACE INTO `gossip_menu` VALUES ('50009', '5375');
REPLACE INTO `gossip_menu` VALUES ('50009', '5376');
REPLACE INTO `gossip_menu` VALUES ('50018', '5373');
REPLACE INTO `gossip_menu` VALUES ('50018', '5374');
REPLACE INTO `gossip_menu_option` VALUES ('3881', '0', '0', 'I seek to understand the importance of strength of the body.', '1', '1', '3883', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('3882', '0', '0', 'What do you represent, spirit?', '1', '1', '3881', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('3883', '0', '0', 'I seek to understand the importance of strength of the heart.', '1', '1', '3884', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('3884', '0', '0', 'I have heard your words, Great Bear Spirit, and I understand.  I now seek your blessings to fully learn the way of the Claw.', '1', '1', '3885', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('3884', '1', '0', 'I have heard your words, Great Bear Spirit, and I understand.  I now seek your blessings to fully learn the way of the Claw.', '1', '1', '3885', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4041', '0', '0', 'I\'d like to fly to Rut\'theran Village.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4041', '1', '0', 'Do you know where I can find Half Pendant of Aquatic Agility?', '1', '1', '50009', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4042', '0', '0', 'I\'d like to fly to Thunder Bluff.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4042', '1', '0', 'Do you know where I can find Half Pendant of Aquatic Endurance?', '1', '1', '50018', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('2208', '0', '0', 'Please make me a Cenarion Beacon.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50413', '0', '0', 'Please make me a Cenarion Beacon.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('2208', '1', '0', 'What plants are in Felwood that might be corrupted?', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50413', '1', '0', 'What plants are in Felwood that might be corrupted?', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4763', '0', '0', 'My answer - Ysera.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4763', '1', '0', 'My answer - Neltharion.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4763', '2', '0', 'My answer - Nozdormu.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4763', '3', '0', 'My answer - Alexstrasza.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4763', '4', '0', 'My answer - Malygos.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4781', '0', '1', 'Show me what I have access to, Lothos.', '3', '128', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4781', '1', '0', 'Hmm, I listen. Also that you offer?', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('1945', '0', '0', 'Gloom\'rel, tell me your secrets!', '1', '1', '50019', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('1945', '1', '0', 'I have pald your price, Gloom\'rel. Now teach me your secrets!', '1', '1', '50020', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4783', '0', '0', 'How to me to bring up my pet?', '1', '1', '9789', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4783', '1', '2', 'I wish to unlearn my pet\'s skills.', '1', '1', '6520', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6520', '0', '13', 'Yes, please do.', '17', '16', '0', '0', '0', '0', null);


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
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 0;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 3;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 10;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 25;
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

UPDATE version SET `cache_id`= '627';
UPDATE version SET `db_version`= 'YTDB_0.14.5_R627_TC_R16394_TDBAI_335_RuDB_R53';
