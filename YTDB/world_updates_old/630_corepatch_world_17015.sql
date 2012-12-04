# RENAME TABLE `ip2nationcountries` TO `ip2nationCountries`;
              
-- Scripted Npc Infiltrator Marksen (Zombie Form 7293) From Sniff author expecto Closes #6910
UPDATE creature_template SET AIName = 'SmartAI', `spell1` = 7293 WHERE entry = 5416;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=5416 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(5416, 0, 0, 0, 1, 0, 100, 0, 5000, 5000, 10000, 12000, 11, 7293, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Infiltrator Marksen - Cast Zombie Form');

-- Spell conditions
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=17 AND `SourceEntry`=38448);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,38448,0,0,3,0,31366,0,0,0,0,'',"Felsworn Gas Mask spell only if the mask is equiped");

-- SAI for Wildlord Antelarion
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=22127;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=22127 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(22127,0,0,1,62,0,100,0,8523,0,0,0,11,39101,0,0,0,0,0,7,0,0,0,0,0,0,0,"Wildlord Antelarion - On Gossip option select - Cast Create Felsword Gas Mask"),
(22127,0,1,2,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Wildlord Antelarion - On Gossip option select - Close Gossip"),
(22127,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wildlord Antelarion - On Gossip option select - Say 0");

-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry` IN (22127) AND `groupid` IN (0);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(22127,0,0,"It's a good thing I was able to make duplicates of the Felsworn Gas Mask.",12,0,100,1,0,0,"Wildlord Antelarion");

UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=177490;
DELETE FROM `smart_scripts` WHERE `entryorguid`=177490 AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(177490,1,0,1,62,0,100,0,4362,0,0,0,50,177491,60000,0,0,0,0,8,0,0,0,2449.614014,-1662.360352,104.370209,104.370209,'Temp Spawn Termite Barrel'),
(177490,1,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Close Gossip'),
(177490,1,2,1,62,0,100,0,4362,1,0,0,50,177491,60000,0,0,0,0,8,0,0,0,2449.614014,-1662.360352,104.370209,104.370209,'Temp Spawn Termite Barrel');

-- Add conditions for spell In the Maws of Old the God author trista Closes #1664
SET @ThrowFragments := 64184; -- The spell "In the Maws of Old the God" that you throw at Yogg-Saron while he is casting Deafening Roar.
SET @DeafeningRoar :=  64189; -- The scream that Yogg-Saron makes in 3rd phase of 25 man with 0-3 Guardians alive.
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=@ThrowFragments;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition` ,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,@ThrowFragments,0,0,1,0,@DeafeningRoar,1,0,0,0,'','In the Maws of the Old God can be casted only under the effect of Deafening Roar'),
(17,0,@ThrowFragments,0,0,31,1,3,33288,0,0,0,'','In the Maws of the Old God can target only Yogg-Saron');

-- Template updates for creature 29611 (King Varian Wrynn)
-- Model data 28127 (creature 29611 (King Varian Wrynn))
UPDATE `creature_model_info` SET `bounding_radius`=0.3875,`combat_reach`=1.25,`gender`=0 WHERE `modelid`=28127; -- King Varian Wrynn

-- fix Crashin' Thrashin' Racer author nelegalno Closes #4363
UPDATE `creature_template` SET `spell1` = 49297 WHERE `entry` IN (27664,40281);

DELETE FROM `event_scripts` WHERE `id`=10951;
INSERT INTO `event_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(10951,0,10,17651,300000,0,-11161,-1923.2,91.4737,2.89811);

-- Zeppelin: <The Purple Princess> author malcom Closes #6664
UPDATE `creature_transport` SET `emote`=173 WHERE `transport_entry`=176495 AND `npc_entry`=25101; -- Crewman Cutpipe
UPDATE `creature_transport` SET `emote`=133 WHERE `transport_entry`=176495 AND `npc_entry`=25102; -- Crewman Spinshaft
UPDATE `creature_transport` SET `emote`=173 WHERE `transport_entry`=176495 AND `npc_entry`=25103; -- Crewman Boltshine
UPDATE `creature_model_info` SET `modelid_other_gender`=0 WHERE `modelid`=4083; -- Watcher Umjin should only have a male model
UPDATE `creature_model_info` SET `modelid_other_gender`=0 WHERE `modelid`=4084; -- Watcher Du'una should only have a female model
-- Zeppelin: <Iron Eagle>
UPDATE `creature_model_info` SET `modelid_other_gender`=0 WHERE `modelid`=4259; -- Grunt Umgor should only have a male model
UPDATE `creature_transport` SET `TransOffsetX`=-10.3057, `TransOffsetY`=-12.10524, `TransOffsetZ`=-16.96907, `TransOffsetO`=5.927236 WHERE `transport_entry`=175080 AND`npc_entry`=24926; -- Chief Officer Brassbolt
UPDATE `creature_transport` SET `emote`=133 WHERE `transport_entry`=175080 AND `npc_entry`=24931; -- Crewman Fastwrench
DELETE FROM `creature_transport` WHERE `transport_entry`=175080 AND `npc_entry` IN (24927,24929,24930);
INSERT INTO `creature_transport` (`guid`,`transport_entry`,`npc_entry`,`TransOffsetX`,`TransOffsetY`,`TransOffsetZ`,`TransOffsetO`,`emote`) VALUES
(3,175080,24927,-1.874165,-7.847112,-23.68718,3.385939,0), -- Navigator Sparksizzle
(4,175080,24929,9.083008,-4.964111,-23.59211,1.594056,133), -- Crewman Crosswire
(5,175080,24930,-17.0083,-7.874878,-15.18782,3.141593,133); -- Crewman Gazzlegear
-- Zeppelin: <The Cloudkisser>
-- Deleting some NPCs that are double spawned out of the zeppelin. They are already spawned by `creature_transport` table
UPDATE `creature_transport` SET `npc_entry`=31715 WHERE `guid`=3 AND `transport_entry`=181689; -- Deathguard Hicks
UPDATE `creature_transport` SET `emote`=133 WHERE `transport_entry`=181689 AND `npc_entry`=31704; -- Crewman Spinwheel
UPDATE `creature_transport` SET `emote`=133 WHERE `transport_entry`=181689 AND `npc_entry`=31705; -- Crewman Coilspan
UPDATE `creature_transport` SET `emote`=133, `TransOffsetO`=4.64346 WHERE `transport_entry`=181689 AND`npc_entry`=31706; -- Crewman Stembolt
DELETE FROM `creature_transport` WHERE `transport_entry`=181689 AND `npc_entry`=25075; -- Zeppelin Controls
INSERT INTO `creature_transport` (`guid`,`transport_entry`,`npc_entry`,`TransOffsetX`,`TransOffsetY`,`TransOffsetZ`,`TransOffsetO`,`emote`) VALUES
(7,181689,25075,4.362147,-2.254167,-23.59002,4.712389,0); -- Zeppelin Controls
UPDATE `creature_template` SET `exp`=2 WHERE `entry`=31708; -- Deathguard Barth
-- Zeppelin: <The Mighty Wind>
UPDATE `creature_model_info` SET `gender`=0, `modelid_other_gender`=0 WHERE `modelid`=4601; -- Grunt Gritch should only have a male model
UPDATE `creature_model_info` SET `gender`=1, `modelid_other_gender`=0 WHERE `modelid`=4602; -- Grunt Grikee should only have a female model
UPDATE `creature_transport` SET `TransOffsetO`=1.16964 WHERE `transport_entry`=186238 AND `npc_entry`=31726; -- Grunt Gritch orientation
UPDATE `creature_transport` SET `TransOffsetO`=5.47991 WHERE `transport_entry`=186238 AND `npc_entry`=31727; -- Grunt Grikee orientation
UPDATE `creature_transport` SET `emote`=133 WHERE `transport_entry`=186238 AND `npc_entry`=31720; -- Crewman Shubbscoop
UPDATE `creature_transport` SET `emote`=133 WHERE `transport_entry`=186238 AND `npc_entry`=31723; -- Crewman Barrowswizzle
UPDATE `creature_transport` SET `emote`=133 WHERE `transport_entry`=186238 AND `npc_entry`=31724; -- Crewman Paltertop
-- Zeppelin: <The Thundercaller>
UPDATE `creature_transport` SET `emote`=133 WHERE `transport_entry`=164871 AND `npc_entry`=25071; -- Crewman Rusthammer
UPDATE `creature_transport` SET `emote`=133 WHERE `transport_entry`=164871 AND `npc_entry`=25072; -- Crewman Quickfix
UPDATE `creature_transport` SET `emote`=133 WHERE `transport_entry`=164871 AND `npc_entry`=25074; -- Crewman Sparkfly
DELETE FROM `creature_transport` WHERE `transport_entry`=164871 AND `npc_entry`=25077; -- Sky-Captain Cloudkicker
INSERT INTO `creature_transport` (`guid`,`transport_entry`,`npc_entry`,`TransOffsetX`,`TransOffsetY`,`TransOffsetZ`,`TransOffsetO`,`emote`) VALUES
(18,164871,25077,-19.68856,-8.170582,-14.37648,3.176499,0); -- Sky-Captain Cloudkicker
-- Zeppelin: <The Zephyr>
UPDATE `creature_transport` SET `emote`=173 WHERE `transport_entry`=190549 AND `npc_entry`=34719; 

-- Fix flight masters around the Dark Portal in Outland (16.11.2011) by SignFinder ( https://github.com/TrinityCore/TrinityCore/issues/2596#issuecomment-4450115 ) Closes #6401

-- Vlagga Freyfeather SAI
SET @NPC := 18930;
SET @GOSSIP_VLAGGA := 7938;
SET @SPELL_STAIR_OF_DESTINY_THRALLMAR := 34924;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` =@NPC;
UPDATE `creature_template` SET `AIName`= "SmartAI" WHERE `entry` =@NPC;
DELETE FROM `smart_scripts` WHERE `entryorguid` =@NPC;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC,0,0,0,62,0,100,0,@GOSSIP_VLAGGA,1,0,0,11,@SPELL_STAIR_OF_DESTINY_THRALLMAR,2,0,0,0,0,7,0,0,0,0,0,0,0,"Vlagga Freyfeather - On Gossip Select - Cast Stair of Destiny to Thrallmar"),
(@NPC,0,1,2,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Vlagga Freyfeather - On Aggro - Summon Enraged Wyvern"),
(@NPC,0,2,3,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Vlagga Freyfeather - On Aggro - Summon Enraged Wyvern"),
(@NPC,0,3,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vlagga Freyfeather - On Aggro - Say Line 0");

-- Amish Wildhammer SAI
SET @NPC := 18931;
SET @GOSSIP_AMISH := 7939;
SET @SPELL_STAIR_OF_DESTINY_HONOR_HOLD := 34907;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` =@NPC;
UPDATE `creature_template` SET `AIName`= "SmartAI" WHERE `entry` =@NPC;
DELETE FROM `smart_scripts` WHERE `entryorguid` =@NPC;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC,0,0,0,62,0,100,0,@GOSSIP_AMISH,1,0,0,11,@SPELL_STAIR_OF_DESTINY_HONOR_HOLD,2,0,0,0,0,7,0,0,0,0,0,0,0,"Amish Wildhammer - On Gossip Select - Cast Stair of Destiny to Honor Hold"),
(@NPC,0,1,2,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Amish Wildhammer - On Aggro - Summon Enraged Gryphon"),
(@NPC,0,2,3,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Amish Wildhammer - On Aggro - Summon Enraged Gryphon"),
(@NPC,0,3,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Amish Wildhammer - On Aggro - Say Line 0");

-- fix dedication of honor movie playback. author trista and vincent-michael. Closes 	#5754
SET @MEMORIAL := 202443;
SET @Script := 20244300;
UPDATE `gameobject_template` SET AIName = 'SmartGameObjectAI' WHERE entry = @MEMORIAL;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@MEMORIAL);
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@Script;
INSERT INTO `smart_scripts` VALUES
(@MEMORIAL,1,0,0,62,0,100,0,11431,0,0,0,80,@Script,0,0,0,0,0,1,0,0,0,0,0,0,0,'Memorial - On gossip select - Run Script'),
(@Script,9,0,0,0,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Actionlist - On action 0 - Close gossip'),
(@Script,9,1,0,0,0,100,0,0,0,0,0,68,16,0,0,0,0,0,7,0,0,0,0,0,0,0,'Actionlist - On action 1 - Startmovie');
SET @OGUID := 342;

-- Add immune to interrupt for hodir & ignis AUTHOR gecko32 Closes #5617
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask`|1|2|4|8|16|64|256|512|1024|2048|4096|8192|65536|131072|524288|4194304|8388608|33554432|67108864|536870912 WHERE `entry` IN (32845,32846,33118,33190);

-- Leader of the Deranged ID: 11240 - adds spawn and SAI author trista Closes #5556
SET @GUID := 42567;
SET @ID := 24048;
SET @Dynamite := 7978;
-- Add simple SAI for Squeeg Idolhunter
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ID;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ID;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ID,0,1,0,0,0,100,0,2000,6000,12000,15000,11,@Dynamite,0,0,0,0,0,2,0,0,0,0,0,0,0,'Combat - Throw Dynamite');

-- Gnomish Army Knife Resurrection (54732) is restricted to Grand Master Engineers (51306) author mweinelt Closes #5415
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceEntry` = 54732 LIMIT 1;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17, 0, 54732, 0, 0, 25, 0, 51306, 0, 0, 0, 0, '', 'Only Grand-Masters in Engineering can use the Gnomish Army Knife to resurrect players.');

-- [NPC] Fix behaviour of Scarlet Peasant author Valcorb Closes #3925
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=28557;
DELETE FROM `smart_scripts` WHERE `entryorguid`=28557 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(28557, 0, 0, 0, 2, 0, 20, 1, 0, 20, 1, 1, 1, 0, 10, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'At 0-20% hp- say text'),
(28557, 0, 1, 0, 2, 0, 20, 1, 0, 20, 1, 1, 1, 1, 10, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'At 0-20% hp- say text'),
(28557, 0, 2, 0, 2, 0, 20, 1, 0, 20, 1, 1, 1, 2, 10, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'At 0-20% hp- say text'),
(28557, 0, 3, 0, 2, 0, 20, 1, 0, 20, 1, 1, 1, 3, 10, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'At 0-20% hp- say text'),
(28557, 0, 4, 0, 2, 0, 20, 1, 0, 20, 1, 1, 1, 4, 10, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'At 0-20% hp- say text');

DELETE FROM `creature_text` WHERE `entry`=28557 AND `probability`=100;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`)
VALUES
(28557, 0, 0, 'Ungh! I ... I think I pooped...', 12, 0, 100, 0, 0, 0, 'Scarlet Peasant'),
(28557, 0, 1, 'I... I have a sick grandmother at home... I--I''m all she''s got.', 12, 0, 100, 0, 0, 0, 'Scarlet Peasant'),
(28557, 0, 2, 'I picked the wrong week to quit drinkin''!', 12, 0, 100, 0, 0, 0, 'Scarlet Peasant'),
(28557, 0, 3, 'I''ve got five kids lady, they''ll die without me!', 12, 0, 100, 0, 0, 0, 'Scarlet Peasant'),
(28557, 0, 4, 'You don''t have to do this! Nobody has to die!', 12, 0, 100, 0, 0, 0, 'Scarlet Peasant');

-- Cast Terrified! when Citizen of New Avalon enters combat author Valcorb Closes #3734
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (28941,28942);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (28941, 28942);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(28941, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 11, 52716, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Citizen of New Avalon 1 - if enter combat - fear'),
(28942, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 11, 52716, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Citizen of New Avalon 2 - if enter combat - fear');

-- Credit fix for stinking up southshore 1657 author Norfik Closes #3552
DELETE FROM `event_scripts` WHERE `id`=9417;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(9417, 3, 8, 15415, 0, 0, 0, 0, 0, 0);

DELETE FROM `spell_bonus_data` WHERE `entry` IN (6489,6789);
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(6789,0.2143,0,0,0,'Spell Power Coeff for Death Coil');

-- Custodian of Time's Whispers for quest 10277
DELETE FROM `script_texts` WHERE `entry` IN (-1000217,-1000218,-1000219,-1000220,-1000221,-1000222,-1000223,-1000224,-1000225,-1000226,-1000227,-1000228,-1000229,-1000230);
DELETE FROM `creature_text` WHERE `entry`=20129; 
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
(20129,0,0, 'Greetings, $N. I will guide you through the cavern. Please try and keep up.',15,0,100,0,0,0, 'WHISPER_CUSTODIAN_1'),
(20129,1,0, 'We do not know if the Caverns of Time have always been accessible to mortals. Truly, it is impossible to tell as the Timeless One is in perpetual motion, changing our timeways as he sees fit. What you see now may very well not exist tomorrow. You may wake up and have no memory of this place.',15,0,100,0,0,0, 'WHISPER_CUSTODIAN_2'),
(20129,2,0, 'It is strange, I know... Most mortals cannot actually comprehend what they see here, as often, what they see is not anchored within their own perception of reality.',15,0,100,0,0,0, 'WHISPER_CUSTODIAN_3'),
(20129,3,0, 'Follow me, please.',15,0,100,0,0,0, 'WHISPER_CUSTODIAN_4'),
(20129,4,0, 'There are only two truths to be found here: First, that time is chaotic, always in flux, and completely malleable and second, perception does not dictate reality.',15,0,100,0,0,0, 'WHISPER_CUSTODIAN_5'),
(20129,5,0, 'As custodians of time, we watch over and care for Nozdormu''s realm. The master is away at the moment, which means that attempts are being made to dramatically alter time. The master never meddles in the affairs of mortals but instead corrects the alterations made to time by others. He is reactionary in this regard.',15,0,100,0,0,0, 'WHISPER_CUSTODIAN_6'),
(20129,6,0, 'For normal maintenance of time, the Keepers of Time are sufficient caretakers. We are able to deal with most ordinary disturbances. I speak of little things, such as rogue mages changing something in the past to elevate their status or wealth in the present.',15,0,100,0,0,0, 'WHISPER_CUSTODIAN_7'),
(20129,7,0, 'These tunnels that you see are called timeways. They are infinite in number. The ones that currently exist in your reality are what the master has deemed as ''trouble spots.'' These trouble spots may differ completely in theme but they always share a cause. That is, their existence is a result of the same temporal disturbance. Remember that should you venture inside one...',15,0,100,0,0,0, 'WHISPER_CUSTODIAN_8'),
(20129,8,0, 'This timeway is in great disarray! We have agents inside right now attempting to restore order. What information I have indicates that Thrall''s freedom is in jeopardy. A malevolent organization known as the Infinite Dragonflight is trying to prevent his escape. I fear without outside assistance, all will be lost.',15,0,100,0,0,0, 'WHISPER_CUSTODIAN_9'),
(20129,9,0, 'We have very little information on this timeway. Sa''at has been dispatched and is currently inside. The data we have gathered from his correspondence is that the Infinite Dragonflight are once again attempting to alter time. Could it be that the opening of the Dark Portal is being targeted for sabotage? Let us hope not...',15,0,100,0,0,0, 'WHISPER_CUSTODIAN_10'),
(20129,10,0, 'This timeway collapsed and reformed. The result was Stratholme of yore. What could possibly be happening inside?',15,0,100,0,0,0, 'WHISPER_CUSTODIAN_11'),
(20129,11,0, 'The timeways are currently ranked in order from least catastrophic to most catastrophic. Note that they are all classified as catastrophic, meaning that any single one of these timeways collapsing would mean that your world would end. We only classify them in such a way so that the heroes and adventurers that are sent here know which timeway best suits their abilities.',15,0,100,0,0,0, 'WHISPER_CUSTODIAN_12'),
(20129,12,0, 'All we know of this timeway is that it leads to Mount Hyjal. The Infinite Dragonflight have gone to great lengths to prevent our involvement. We know next to nothing, mortal. Soridormi is currently attempting to break through the timeway''s defenses but has thus far been unsuccessful. You might be our only hope of breaking through and resolving the conflict.',15,0,100,0,0,0, 'WHISPER_CUSTODIAN_13'),
(20129,13,0, 'Our time is at an end $N. I would wish you luck, if such a thing existed.',15,0,100,0,0,0, 'WHISPER_CUSTODIAN_14');

-- VoA
UPDATE `creature_model_info` SET `bounding_radius`=0.3875,`combat_reach`=7.5 WHERE `modelid`=29524; -- Koralon
UPDATE `creature_model_info` SET `bounding_radius`=0.465,`combat_reach`=7.5 WHERE `modelid`=27108; -- Emalon
UPDATE `creature_model_info` SET `bounding_radius`=0.465,`combat_reach`=9 WHERE `modelid`=31089; -- Toravon
UPDATE `creature_model_info` SET `bounding_radius`=0.465,`combat_reach`=7.5 WHERE `modelid`=26967; -- Archavon

-- ToCr
UPDATE `creature_model_info` SET `bounding_radius`=1.085,`combat_reach`=10.5 WHERE `modelid`=29614; -- Gormok
UPDATE `creature_model_info` SET `bounding_radius`=1.55,`combat_reach`=5 WHERE `modelid`=29815; -- Acidmaw
UPDATE `creature_model_info` SET `bounding_radius`=1.24,`combat_reach`=12 WHERE `modelid`=24564; -- Dreadscale
UPDATE `creature_model_info` SET `bounding_radius`=4,`combat_reach`=14 WHERE `modelid`=21601; -- Icehowl
UPDATE `creature_model_info` SET `bounding_radius`=1.52778,`combat_reach`=5 WHERE `modelid`=29615; -- Jaraxxus
UPDATE `creature_model_info` SET `bounding_radius`=1.5,`combat_reach`=9 WHERE `modelid`=29267; -- Eydis Darkbane
UPDATE `creature_model_info` SET `bounding_radius`=1.5,`combat_reach`=9 WHERE `modelid`=29240; -- Fjola Lightbane
UPDATE `creature_model_info` SET `bounding_radius`=1.5,`combat_reach`=2.25 WHERE `modelid`=29773; -- Saamul
UPDATE `creature_model_info` SET `bounding_radius`=0.459,`combat_reach`=2.25 WHERE `modelid`=29774; -- Baelnor Lightbearer
UPDATE `creature_model_info` SET `bounding_radius`=0.312,`combat_reach`=2.25 WHERE `modelid`=29776; -- Irieth Shadowstep
UPDATE `creature_model_info` SET `bounding_radius`=0.52785,`combat_reach`=2.5875 WHERE `modelid`=29777; -- Serissa Grimdabbler
UPDATE `creature_model_info` SET `bounding_radius`=0.312,`combat_reach`=2.25 WHERE `modelid`=29778; -- Brienna Nightfell
UPDATE `creature_model_info` SET `bounding_radius`=1.5,`combat_reach`=2.25 WHERE `modelid`=29779; -- Shocuul
UPDATE `creature_model_info` SET `bounding_radius`=0.4511,`combat_reach`=2.6 WHERE `modelid`=29780; -- Melador Valestrider / Erin Misthoof

-- Mimiron
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1603259 AND -1603240;
DELETE FROM `creature_text` WHERE `entry`=33350;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(33350,0,0, 'Oh, my! I wasn''t expecting company! The workshop is such a mess! How embarrassing!',14,0,100,0,0,15611, 'Mimiron SAY_AGGRO'),
(33350,1,0, 'Now why would you go and do something like that? Didn''t you see the sign that said ''DO NOT PUSH THIS BUTTON!''? How will we finish testing with the self-destruct mechanism active?',14,0,100,0,0,15629, 'Mimiron SAY_HARDMODE_ON'),
(33350,2,0, 'We haven''t much time, friends! You''re going to help me test out my latest and greatest creation. Now, before you change your minds, remember, that you kind of owe it to me after the mess you made with the XT-002.',14,0,100,0,0,15612, 'Mimiron SAY_MKII_ACTIVATE'),
(33350,3,0, 'MEDIC!',14,0,100,0,0,15613, 'Mimiron SAY_MKII_SLAY_1'),
(33350,3,1, 'I can fix that... or, maybe not! Sheesh, what a mess...',14,0,100,0,0,15614, 'Mimiron SAY_MKII_SLAY_2'),
(33350,4,0, 'WONDERFUL! Positively marvelous results! Hull integrity at 98.9 percent! Barely a dent! Moving right along.',14,0,100,0,0,15615, 'Mimiron SAY_MKII_DEATH'),
(33350,5,0, 'Behold the VX-001 Anti-personnel Assault Cannon! You might want to take cover.',14,0,100,0,0,15616, 'Mimiron SAY_VX001_ACTIVATE'),
(33350,6,0, 'Fascinating. I think they call that a "clean kill".',14,0,100,0,0,15617, 'Mimiron SAY_VX001_SLAY_1'),
(33350,6,1, 'Note to self: Cannon highly effective against flesh.',14,0,100,0,0,15618, 'Mimiron SAY_VX001_SLAY_2'),
(33350,7,0, 'Thank you, friends! Your efforts have yielded some fantastic data! Now, where did I put- oh, there it is!',14,0,100,0,0,15619, 'Mimiron SAY_VX001_DEATH'),
(33350,8,0, 'Isn''t it beautiful? I call it the magnificent aerial command unit!',14,0,100,0,0,15620, 'Mimiron SAY_AERIAL_ACTIVATE'),
(33350,9,0, 'Outplayed!',14,0,100,0,0,15621, 'Mimiron SAY_AERIAL_SLAY_1'),
(33350,9,1, 'You can do better than that!',14,0,100,0,0,15622, 'Mimiron SAY_AERIAL_SLAY_2'),
(33350,10,0, 'Preliminary testing phase complete. Now comes the true test!!',14,0,100,0,0,15623, 'Mimiron SAY_AERIAL_DEATH'),
(33350,11,0, 'Gaze upon its magnificence! Bask in its glorious, um, glory! I present you... V-07-TR-0N!',14,0,100,0,0,15624, 'Mimiron SAY_V07TRON_ACTIVATE'),
(33350,12,0, 'Prognosis: Negative!',14,0,100,0,0,15625, 'Mimiron SAY_V07TRON_SLAY_1'),
(33350,12,1, 'You''re not going to get up from that one, friend.',14,0,100,0,0,15626, 'Mimiron SAY_V07TRON_SLAY_2'),
(33350,13,0, 'It would appear that I''ve made a slight miscalculation. I allowed my mind to be corrupted by the fiend in the prison, overriding my primary directive. All systems seem to be functional now. Clear.',14,0,100,0,0,15627, 'Mimiron SAY_V07TRON_DEATH'),
(33350,14,0, 'Oh, my! It would seem that we are out of time, my friends!',14,0,100,0,0,15628, 'Mimiron SAY_BERSERK'),
(33350,15,0, 'Combat matrix enhanced. Behold wonderous rapidity!',14,0,100,0,0,15630, 'Mimiron SAY_YS_HELP');

-- AzjolNerub/Ahnkahet/Elder Nadox
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1619020 AND -1619014;
DELETE FROM `creature_text` WHERE `entry`=29309;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(29309,0,0, 'The secrets of the deep shall remain hidden.',14,0,100,0,0,14033, 'SAY_AGGRO'),
(29309,1,0, 'Sleep now, in the cold dark.',14,0,100,0,0,14036, 'SAY_SLAY_1'),
(29309,1,1, 'For the Lich King!',14,0,100,0,0,14037, 'SAY_SLAY_2'),
(29309,1,2, 'Perhaps we will be allies soon.',14,0,100,0,0,14038, 'SAY_SLAY_3'),
(29309,2,0, 'Master, is my service complete?',14,0,100,0,0,14039, 'SAY_DEATH'),
(29309,3,0, 'The young must not grow hungry...',14,0,100,0,0,14034, 'SAY_EGG_SAC_1'),
(29309,3,1, 'Shhhad ak kereeesshh chak-k-k!',14,0,100,0,0,14035, 'SAY_EGG_SAC_2'),
(29309,4,0, 'An Ahn''kahar Guardian hatches!',16,0,100,0,0,14035, 'EMOTE_HATCHES');

-- Title converter
DROP TABLE IF EXISTS `player_factionchange_titles`;
CREATE TABLE `player_factionchange_titles` (
 `alliance_id` int(8) NOT NULL,
 `horde_id` int(8) NOT NULL,
 PRIMARY KEY (`alliance_id`,`horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DELETE FROM `player_factionchange_titles` WHERE `alliance_id` IN (1,2,3,4,5,6,7,8,9,10,11,12,13,14,48,75,113,126,146,147,148,149);
INSERT INTO `player_factionchange_titles` (`alliance_id`,`horde_id`) VALUES
(1, 15),
(2, 16),
(3, 17),
(4, 18),
(5, 19),
(6, 20),
(7, 21),
(8, 22),
(9, 23),
(10, 24),
(11, 25),
(12, 26),
(13, 27),
(14, 28),
(48, 47),
(75, 76),
(113, 153),
(126, 127),
(146, 152),
(147, 154),
(148, 151),
(149, 150);

-- AzjolNerub/Ahnkahet/Herald Volazj
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1619036 AND -1619030;
DELETE FROM `creature_text` WHERE `entry`=29311;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(29311,0,0, 'Shgla''yos plahf mh''naus.', 14,0,100,0,0,14043, 'SAY_AGGRO_1'),
(29311,0,1, 'They who dine on lost souls know only hunger.', 15, 0, 100, 0, 0, 14043, 'SAY_AGGRO_2'),
(29311,1,0, 'Ywaq puul skshgn: on''ma yeh''glu zuq.', 14,0,100,0,0,14045, 'SAY_SLAY_1'),
(29311,1,1, 'Ywaq ma phgwa''cul hnakf.',14,0,100,0,0,14046, 'SAY_SLAY_2'),
(29311,1,2, 'Ywaq maq oou; ywaq maq ssaggh. Ywaq ma shg''fhn.',14,0,100,0,0,14047, 'SAY_SLAY_3'),
(29311,2,0, 'Iilth vwah, uhn''agth fhssh za.', 14, 0, 100, 0, 0, 14048, 'SAY_DEATH_1'),
(29311,2,1, 'Where one falls, many shall take its place.', 15, 0, 100, 0, 0, 14048, 'SAY_DEATH_2'),
(29311,3,0, 'Gul''kafh an''shel. Yoq''al shn ky ywaq nuul.', 14, 0, 100, 0, 0, 14044, 'SAY_PHASE');

-- AzjolNerub/Ahnkahet/Jedoga Shadowseeker
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1619013 AND -1619000;
DELETE FROM `creature_text` WHERE `entry`=29310;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(29310, 0, 0, 'These are sacred halls! Your intrusion will be met with death!', 14, 0, 100, 0, 0, 14343, 'SAY_AGGRO'),
(29310, 1, 0, 'Who among you is devoted?', 14, 0, 100, 0, 0, 14343, 'SAY_SACRIFICE_1_1'),
(29310, 1, 1, 'You there! Step forward!', 14, 0, 100, 0, 0, 14343, 'SAY_SACRIFICE_1_2'),
(29310, 2, 0, 'Yogg-Saron, grant me your power!', 14, 0, 100, 0, 0, 14343, 'SAY_SACRIFICE_2_1'),
(29310, 2, 1, 'Master, a gift for you!', 14, 0, 100, 0, 0, 14343, 'SAY_SACRIFICE_2_2'),
(29310, 3, 0, 'Glory to Yogg-Saron!', 14, 0, 100, 0, 0, 0, 'SAY_SLAY_1'),
(29310, 3, 1, 'You are unworthy!', 14, 0, 100, 0, 0, 0, 'SAY_SLAY_2'),
(29310, 3, 2, 'Get up! You haven''t suffered enough.', 14, 0, 100, 0, 0, 14350, 'SAY_SLAY_3'),
(29310, 4, 0, 'Do not expect your sacrilege... to go unpunished.', 14, 0, 100, 0, 0, 0, 'SAY_DEATH'),
(29310, 5, 0, 'The elements themselves will rise up against the civilized world! Only the faithful will be spared!', 14, 0, 100, 0, 0, 14352, 'SAY_PREACHING_1'),
(29310, 5, 1, 'Immortality can be yours, but only if you pledge yourself fully to Yogg-Saron!', 14, 0, 100, 0, 0, 14353, 'SAY_PREACHING_2'),
(29310, 5, 2, 'Here, on the very borders of his domain, you will experience power you could have never imagined!', 14, 0, 100, 0, 0, 0, 'SAY_PREACHING_3'),
(29310, 5, 3, 'You have traveled long and risked much to be here! Your devotion shall be rewarded.', 14, 0, 100, 0, 0, 0, 'SAY_PREACHING_4'),
(29310, 5, 4, 'The faithful shall be exalted! But there is more work to be done. We will press on until all of Azeroth lies beneath his shadow!', 14, 0, 100, 0, 0, 0, 'SAY_PREACHING_5');

-- Change script name for gossip npcs and drakes and set npc_flag to 0, since only after Ist boss is dead, they should acquire gossip flag
UPDATE `creature_template` SET `ScriptName`='npc_verdisa_beglaristrasz_eternos' WHERE `entry` IN (27657,27658,27659);
UPDATE `creature_template` SET `spell2`=50240,`spell3`=50253,`spell4`=0  WHERE `entry`=27756;
UPDATE `creature_template` SET `spell6`=53389,`ScriptName`='npc_ruby_emerald_amber_drake' WHERE `entry` IN (27692,27755,27756); -- Add GPS spell for all drakes and script names for drakes
-- Add spell_script name for Call Ruby/Emerald/Amber Drake spells
DELETE FROM `spell_script_names` WHERE `spell_id` IN (49462,49345,49461);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(49462,'spell_call_ruby_emerald_amber_drake'), -- Ruby
(49345,'spell_call_ruby_emerald_amber_drake'), -- Emerald
(49461,'spell_call_ruby_emerald_amber_drake'); -- Amber
-- Remove wrong use of npc_spellclick_spell, the drake should auto do all on summon
# DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (27692,27755,27756);
-- Add conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (49464,49346,49460,66667,49838);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry` IN (49840,49592,50328,50341,50232);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1|4,49464,0,0,33,0,1,5,0,0,0,'','Ruby Drake Saddle control vehicle aura can hit only created unit'),
(13,1|4,49346,0,0,33,0,1,5,0,0,0,'','Emerald Drake Saddle control vehicle aura can hit only created unit'),
(13,1|4,49460,0,0,33,0,1,5,0,0,0,'','Amber Drake Saddle control vehicle aura can hit only created unit'),
(13,1|2|4,66667,0,0,33,1,0,0,0,0,0,'','Gear scaling for Oculus drakes can only be casted on self'),
(17,0,49840,0,1,31,1,3,28236,0,0,0,'','Shock Lance target can be Azure Ring Captain'),
(17,0,49840,0,2,31,1,3,27638,0,0,0,'','Shock Lance target can be Azure Ring Guardian'),
(17,0,49840,0,3,31,1,3,28276,0,0,0,'','Shock Lance target can be Greater Lay Whelp'),
(17,0,49840,0,4,31,1,3,27656,0,0,0,'','Shock Lance target can be Eregos'),
(13,1,49838,0,1,31,0,3,28236,0,0,0,'','Stop Time can hit Azure Ring Captain'),
(13,1,49838,0,2,31,0,3,27638,0,0,0,'','Stop Time can hit Azure Ring Guardian'),
(13,1,49838,0,3,31,0,3,28276,0,0,0,'','Stop Time can hit Greater Lay Whelp'),
(13,1,49838,0,4,31,0,3,27656,0,0,0,'','Stop Time can hit Eregos'),
(17,0,49592,0,1,31,1,3,28236,0,0,0,'','Temporal Rift target can be Azure Ring Captain'),
(17,0,49592,0,2,31,1,3,27638,0,0,0,'','Temporal Rift target can be Azure Ring Guardian'),
(17,0,49592,0,3,31,1,3,28276,0,0,0,'','Temporal Rift target can be Greater Lay Whelp'),
(17,0,49592,0,4,31,1,3,27656,0,0,0,'','Temporal Rift target can be Eregos'),
(17,0,50328,0,1,31,1,3,28236,0,0,0,'','Leeching Poison target can be Azure Ring Captain'),
(17,0,50328,0,2,31,1,3,27638,0,0,0,'','Leeching Poison target can be Azure Ring Guardian'),
(17,0,50328,0,3,31,1,3,28276,0,0,0,'','Leeching Poison target can be Greater Lay Whelp'),
(17,0,50328,0,4,31,1,3,27656,0,0,0,'','Leeching Poison target can be Eregos'),
(17,0,50341,0,1,31,1,3,28236,0,0,0,'','Touch the Nightmare target can be Azure Ring Captain'),
(17,0,50341,0,2,31,1,3,27638,0,0,0,'','Touch the Nightmare target can be Azure Ring Guardian'),
(17,0,50341,0,3,31,1,3,28276,0,0,0,'','Touch the Nightmare target can be Greater Lay Whelp'),
(17,0,50341,0,4,31,1,3,27656,0,0,0,'','Touch the Nightmare target can be Eregos'),
(17,0,50232,0,1,31,1,3,28236,0,0,0,'','Searing Wrath target can be Azure Ring Captain'),
(17,0,50232,0,2,31,1,3,27638,0,0,0,'','Searing Wrath target can be Azure Ring Guardian'),
(17,0,50232,0,3,31,1,3,28276,0,0,0,'','Searing Wrath target can be Greater Lay Whelp'),
(17,0,50232,0,4,31,1,3,27656,0,0,0,'','Searing Wrath target can be Eregos');
-- Add text for Belgaristrasz
SET @Belgaristrasz := 27658;
DELETE FROM `creature_text` WHERE `entry`=@Belgaristrasz;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@Belgaristrasz,0,0,'Thank you for freeing us, mortals. Beware, the blue flight is alerted to your presence. Even now, Malygos sends Varos Cloudstrider and his ring guardians to defend the Oculus. You will need our help to stand a chance.',12,0,100,1,3500,0,'Belgaristrasz - On freed');
-- Add text for Ruby, Amber and Emerald drakes
SET @Ruby :=    27756;
SET @Emerald := 27692;
SET @Amber :=   27755;
DELETE FROM `creature_text` WHERE `entry` IN (@Ruby,@Emerald,@Amber);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@Ruby,0,0,'Ruby Drake flies away.',16,0,100,1,0,2858,'Ruby - On take off'),
(@Ruby,1,0,'Welcome Friend. Keep your head down and hold on tight!',15,0,100,1,0,0,'Ruby - On welcome'),
(@Ruby,2,0,'Use Searing Wrath to damage enemies and Evasive Maneuvers if I start taking damage. Remember I need to build up Evasive Charges by taking damage to perform Evasive Maneuvers!',15,0,100,1,0,0,'Ruby - On explaining abilities'),
(@Ruby,3,0,'Now that I am at my full power I can perform Martyr. You can use it to protect other drakes, but I will take lots of damage, so make sure you''re using Evasive Maneuvers too!',15,0,100,1,0,0,'Ruby - On ultimate ability unlocked'),
(@Ruby,4,0,'I''m badly injured! I can''t take much more of this!',15,0,100,1,0,0,'Ruby - On below 40%'),
(@Emerald,0,0,'Emerald Drake flies away.',16,0,100,1,0,2858,'Emerald - On take off'),
(@Emerald,1,0,'Welcome Friend. Keep your head down and hold on tight!',15,0,100,1,0,0,'Emerald - On welcome'),
(@Emerald,2,0,'Use Leeching Poison to damage enemies and keep me healed. Touch the Nightmare is very powerful, but it hurts me, so only use it when I have a lot of health!',15,0,100,1,0,0,'Emerald - On explaining abilities'),
(@Emerald,3,0,'Now that I am at my full power I can perform Dream Funnel. You can use it to heal other drakes, but it drains my health, so make sure you''re using Leeching Poison too!',15,0,100,1,0,0,'Emerald - On ultimate ability unlocked'),
(@Emerald,4,0,'I''m badly injured! I can''t take much more of this!',15,0,100,1,0,0,'Emerald - On below 40%'),
(@Amber,0,0,'Amber Drake flies away.',16,0,100,1,0,2858,'Amber - On take off'),
(@Amber,1,0,'Welcome Friend. Keep your head down and hold on tight!',15,0,100,1,0,0,'Amber - On welcome'),
(@Amber,2,0,'Use Shock Lance to damage enemies. If we get in trouble, Stop Time to freeze all enemies in place, then hit them with Shock Lance for massive damage!',15,0,100,1,0,0,'Amber - On explaining abilities'),
(@Amber,3,0,'Now that I am at my full power I can perform Temporal Rift. You can use it to make enemies take extra damage and to get Shock Charges. Save up Shock Charges and then Shock Lance for huge damage!',15,0,100,1,0,0,'Amber - On ultimate ability unlocked'),
(@Amber,4,0,'I''m badly injured! I can''t take much more of this!',15,0,100,1,0,0,'Amber - On below 40%');

-- Boss Anubarak Move Heroic Spell in spelldifficulty
DELETE FROM `spelldifficulty_dbc` WHERE `id` IN (53472,53454);
INSERT INTO `spelldifficulty_dbc`(`id`,`spellid0`,`spellid1`) VALUES
(53472,53472,59433), -- Spell Pound 
(53454,53454,59446); -- Spell Impale Damage

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000649 AND -1000641;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(4979,-1000641,'Hey, thanks.','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0, 'Theramore Guard - SAY_QUEST1'),
(4979,-1000642,'...receive 50 percent off deserter undergarments? What is this garbage?','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'Theramore Guard - SAY_QUEST2'),
(4979,-1000643,'...to establish a fund for the purchase of hair gel? I like my hair the way it is, thanks!','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'Theramore Guard - SAY_QUEST3'),
(4979,-1000644,'...the deserters seek a Theramore where citizens will be free to juggle at all hours of the day? What is this nonsense?','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'Theramore Guard - SAY_QUEST4'),
(4979,-1000645,'...to establish the chicken as the official symbol of Theramore?! These guys are nuts!','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'Theramore Guard - SAY_QUEST5'),
(4979,-1000646,"...as a deserter, you'll enjoy activities like tethered swimming and dog grooming? How ridiculous!",'NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'Theramore Guard - SAY_QUEST6'),
(4979,-1000647,'This... this is a joke, right?','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'Theramore Guard - SAY_QUEST7'),
(4979,-1000648,"I'd never join anything like this. Better keep this, though. It'll come in handy in the privy...",'NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'Theramore Guard - SAY_QUEST8'),
(4979,-1000649,'What a bunch of lunatics! You actually believe this stuff?','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'Theramore Guard - SAY_QUEST9');

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/* Table structure for table `lfg_entrance` */

DROP TABLE IF EXISTS `lfg_entrances`;

CREATE TABLE `lfg_entrances` (
  `dungeonId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Unique id from LFGDungeons.dbc',
  `name` varchar(255) DEFAULT NULL,
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`dungeonId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- only The Frost Lord Ahune and The Crown Chemical Co. were taken from sniffs, others from areatrigger_teleport or guessed
-- TODO: replace them by sniffed positions and probably use this table for all dungeons instead of areatrigger_teleport
-- note: this table should be used more in Cataclysm and Mists of Pandaria (there will be all events like Zalazane's Fall and scenarios)
DELETE FROM `lfg_entrances`;
INSERT INTO `lfg_entrances` (`dungeonId`,`name`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES
(18,'Scarlet Monastery - Graveyard',1688.99,1053.48,18.6775,0.00117),
(26,'Maraudon - Orange Crystals',1019.69,-458.31,-43.43,0.31),
(34,'Dire Maul - East',44.4499,-154.822,-2.71201,0),
(36,'Dire Maul - West',-62.9658,159.867,-3.46206,3.14788),
(38,'Dire Maul - North',255.249,-16.0561,-2.58737,4.7),
(40,'Stratholme - Main Gate',3395.09,-3380.25,142.702,0.1),
(163,'Scarlet Monastery - Armory',1610.83,-323.433,18.6738,6.28022),
(164,'Scarlet Monastery - Cathedral',855.683,1321.5,18.6709,0.001747),
(165,'Scarlet Monastery - Library',255.346,-209.09,18.6773,6.26656),
(272,'Maraudon - Purple Crystals',752.91,-616.53,-33.11,1.37),
(273,'Maraudon - Pristine Waters',495.701904,17.337202,-96.31284,3.118538), -- guessed
(274,'Stratholme - Service Entrance',3593.15,-3646.56,138.5,5.33),
(285,'The Headless Horseman',1797.517212,1347.381104,18.8876,3.142), -- guessed
(286,'The Frost Lord Ahune',-100.396,-95.9996,-4.28423,4.712389),
(287,'Coren Direbrew',897.494995,-141.976349,-49.7563,2.125502), -- guessed
(288,'The Crown Chemical Co.',-238.075,2166.43,88.853,1.134464);

DELETE FROM `lfg_dungeon_rewards` WHERE `dungeonId` BETWEEN 285 AND 288;
INSERT INTO `lfg_dungeon_rewards` (`dungeonId`,`maxLevel`,`firstQuestId`,`firstMoneyVar`,`firstXPVar`,`otherQuestId`,`otherMoneyVar`,`otherXPVar`) VALUES
(285,80,25482,0,0,0,0,0),
(286,80,25484,0,0,0,0,0),
(287,80,25483,0,0,0,0,0),
(288,80,25485,0,0,0,0,0);

UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags`|8|1 WHERE `Id` IN (25482,25483,25484,25485);

DELETE FROM `spell_script_names` WHERE `spell_id` = 54643;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(54643, 'spell_wintergrasp_defender_teleport_trigger');

-- Boss Elder Nadox Move Heroic Spell in spelldifficulty
DELETE FROM `spelldifficulty_dbc` WHERE `id` =56130;
INSERT INTO `spelldifficulty_dbc`(`id`,`spellid0`,`spellid1`) VALUES
(56130,56130,59467); -- Brood Plague

DELETE FROM `spell_script_names` WHERE `spell_id` IN (74562,74567,74610,74641,74792,74795,74800,74805,74807,74808,74812,75396,74769,77844,77845,77846);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(74562, 'spell_halion_fiery_combustion'),
(74567, 'spell_halion_mark_of_combustion'),
(74610, 'spell_halion_damage_aoe_summon'),
(74641, 'spell_halion_meteor_strike_marker'),
(74792, 'spell_halion_soul_consumption'),
(74795, 'spell_halion_mark_of_consumption'),
(74800, 'spell_halion_damage_aoe_summon'),
(74805, 'spell_halion_summon_exit_portals'),
(74807, 'spell_halion_enter_twilight_realm'),
(74808, 'spell_halion_twilight_phasing'),
(74812, 'spell_halion_leave_twilight_realm'),
(75396, 'spell_halion_clear_debuffs'),
(74769, 'spell_halion_twilight_cutter'),
(77844, 'spell_halion_twilight_cutter'),
(77845, 'spell_halion_twilight_cutter'),
(77846, 'spell_halion_twilight_cutter');

DELETE FROM `spell_dbc` WHERE  `Id` IN (70507, 74810, 74805);
INSERT INTO `spell_dbc` (`Id`, `Dispel`, `Mechanic`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `AttributesEx6`, `AttributesEx7`, `Stances`, `StancesNot`, `Targets`, `CastingTimeIndex`, `AuraInterruptFlags`, `ProcFlags`, `ProcChance`, `ProcCharges`, `MaxLevel`, `BaseLevel`, `SpellLevel`, `DurationIndex`, `RangeIndex`, `StackAmount`, `EquippedItemClass`, `EquippedItemSubClassMask`, `EquippedItemInventoryTypeMask`, `Effect1`, `Effect2`, `Effect3`, `EffectDieSides1`, `EffectDieSides2`, `EffectDieSides3`, `EffectRealPointsPerLevel1`, `EffectRealPointsPerLevel2`, `EffectRealPointsPerLevel3`, `EffectBasePoints1`, `EffectBasePoints2`, `EffectBasePoints3`, `EffectMechanic1`, `EffectMechanic2`, `EffectMechanic3`, `EffectImplicitTargetA1`, `EffectImplicitTargetA2`, `EffectImplicitTargetA3`, `EffectImplicitTargetB1`, `EffectImplicitTargetB2`, `EffectImplicitTargetB3`, `EffectRadiusIndex1`, `EffectRadiusIndex2`, `EffectRadiusIndex3`, `EffectApplyAuraName1`, `EffectApplyAuraName2`, `EffectApplyAuraName3`, `EffectAmplitude1`, `EffectAmplitude2`, `EffectAmplitude3`, `EffectMultipleValue1`, `EffectMultipleValue2`, `EffectMultipleValue3`, `EffectMiscValue1`, `EffectMiscValue2`, `EffectMiscValue3`, `EffectMiscValueB1`, `EffectMiscValueB2`, `EffectMiscValueB3`, `EffectTriggerSpell1`, `EffectTriggerSpell2`, `EffectTriggerSpell3`, `EffectSpellClassMaskA1`, `EffectSpellClassMaskA2`, `EffectSpellClassMaskA3`, `EffectSpellClassMaskB1`, `EffectSpellClassMaskB2`, `EffectSpellClassMaskB3`, `EffectSpellClassMaskC1`, `EffectSpellClassMaskC2`, `EffectSpellClassMaskC3`, `MaxTargetLevel`, `SpellFamilyName`, `SpellFamilyFlags1`, `SpellFamilyFlags2`, `SpellFamilyFlags3`, `MaxAffectedTargets`, `DmgClass`, `PreventionType`, `DmgMultiplier1`, `DmgMultiplier2`, `DmgMultiplier3`, `AreaGroupId`, `SchoolMask`, `Comment`) VALUES
(70507, 0, 0, 256, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 101, 0, 0, 0, 0, 21, 1, 99, -1, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, "Halion - Combustion & Consumption Scale Aura"),
(74805, 0, 0, 0, 0, 0, 262144, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, 0, 0, 76, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 202796, 202796, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Halion - Summon Twilight Portals"),
(74810, 0, 0, 256, 268435456, 4, 0, 0, 0, 16785408, 0, 0, 0, 0, 1, 0, 0, 101, 0, 0, 0, 0, 21, 13, 0, -1, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 22, 0, 0, 300, 0, 0, 0, 0, 0, 1, 0, 0, 127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,'Halion - Copy Damage');

-- Twilight Portals
UPDATE `gameobject_template` SET `flags`=32, `faction`=35, `ScriptName`="go_twilight_portal" WHERE `entry` IN (202794, 202796);

UPDATE `creature_template` SET `mindmg`=509,`maxdmg`=683,`attackpower`=805,`dmg_multiplier`=35,`faction_A`=14,`faction_H`=14,`exp`=2 WHERE `entry` IN (39863, 39864, 39944, 39945, 40142); -- Halion
UPDATE `creature_template` SET `ScriptName`= 'boss_halion',`flags_extra`=`flags_extra`|0x1 WHERE `entry`=39863; -- Halion
UPDATE `creature_template` SET `mindmg`=422,`maxdmg`=586,`attackpower`=642,`dmg_multiplier`=7.5 WHERE `entry` IN (40417, 40418, 40419, 40420, 40421, 40422, 40423, 40424); -- Trashs

-- Trahs respawn time
UPDATE `creature` SET `spawntimesecs`=604800 WHERE `id` IN (39751, 39746, 39747);
UPDATE `creature` SET `spawntimesecs`=1209600 WHERE `map`=724 AND `id` NOT IN (39751,39746,39747);

UPDATE `creature_template` SET `flags_extra`=130 WHERE `entry` IN (40041, 40042, 40043, 40044); -- 40041, 40042, 40043 & 40044 - Meteor Strike
UPDATE `creature_template` SET `flags_extra`=130 WHERE `entry`=40029; -- 40029 - Meteor Strike (Initial)
UPDATE `creature_template` SET `flags_extra`=130 WHERE `entry`=40055; -- 40055 - Meteor Strike

UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`exp`=2,`mindmg`=509,`maxdmg`=683,`attackpower`=805,`dmg_multiplier`=35 WHERE `entry`=40143; -- 40143 - Halion (1) - The Twilight Destroyer
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`exp`=2,`mindmg`=509,`maxdmg`=683,`attackpower`=805,`dmg_multiplier`=50 WHERE `entry`=40144; -- 40144 - Halion (2) - The Twilight Destroyer
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`exp`=2,`mindmg`=509,`maxdmg`=683,`attackpower`=805,`dmg_multiplier`=85 WHERE `entry`=40145; -- 40145 - Halion (3) - The Twilight Destroyer

-- Orb rotation focus
UPDATE `creature_template` SET `modelid1`=11686, `modelid2`=169, `scale`=1, `unit_flags`=0x2000100 WHERE `entry`=40091;

UPDATE `creature_template` SET `InhabitType`=7,`modelid1`=11686,`modelid2`=169,`VehicleId`=718,`unit_flags`=0x2000100 WHERE `entry`=40081; -- 40081 - Orb Carrier
UPDATE `creature_template` SET `InhabitType`=7,`modelid1`=11686,`modelid2`=169,`VehicleId`=718,`unit_flags`=0x2000100 WHERE `entry`=40470; -- 40470 - Orb Carrier (1)
UPDATE `creature_template` SET `InhabitType`=7,`modelid1`=11686,`modelid2`=169,`VehicleId`=746,`unit_flags`=0x2000100 WHERE `entry`=40471; -- 40471 - Orb Carrier (2)
UPDATE `creature_template` SET `InhabitType`=7,`modelid1`=11686,`modelid2`=169,`VehicleId`=746,`unit_flags`=0x2000100 WHERE `entry`=40472; -- 40472 - Orb Carrier (3)
UPDATE `creature_template` SET `scale`=1,`flags_extra`=130,`exp`=2,`baseattacktime`=2000,`unit_flags`=33554432 WHERE `entry` IN(40001, 40135); -- 40001 & 40135 - Combustion & Consumption

-- Shadow orbs
UPDATE `creature_template` SET `InhabitType`=7,`flags_extra`=2,`unit_flags`=33554432,`baseattacktime`=2000,`speed_walk`=2.4,`speed_run`=0.85714,`faction_A`=14,`faction_H`=14,`exp`=2,`maxlevel`=80,`minlevel`=80,`HoverHeight`=6.25, `ScriptName`= '' WHERE `entry` IN (40469, 40468, 40083, 40100);

UPDATE `creature_template` SET `speed_walk`=3.2,`speed_run`=1.71428573131561, `unit_flags`=0x40 WHERE `entry` IN (40683, 40681); -- Living Inferno & Living Ember

UPDATE `creature_template` SET `ScriptName`= 'boss_twilight_halion' WHERE `entry`=40142; -- Twilight Halion
UPDATE `creature_template` SET `ScriptName`= 'npc_orb_carrier' WHERE `entry`=40081; -- Orb carrier
UPDATE `creature_template` SET `ScriptName`= 'npc_combustion_consumption' WHERE `entry` IN(40001, 40135); -- Combustion & consumption
UPDATE `creature_template` SET `ScriptName`= 'npc_meteor_strike_initial' WHERE `entry`=40029;
UPDATE `creature_template` SET `ScriptName`= 'npc_meteor_strike' WHERE `entry` IN (40041, 40042, 40043, 40044);

UPDATE `creature_template` SET `speed_walk`=1.6,`speed_run`=1.42857146263123,`minlevel`=83,`maxlevel`=83,`faction_H`=14,`faction_A`=14,`unit_flags`=0x88840,`BaseAttackTime`=1800,`DynamicFlags`=0xC WHERE `entry`=40142; -- Twilight Halion
UPDATE `creature_template` SET `speed_walk`=1.6,`speed_run`=1.42857146263123,`minlevel`=83,`maxlevel`=83,`faction_H`=14,`faction_A`=14,`unit_flags`=0x8040,`BaseAttackTime`=1500 WHERE `entry`=39863; -- Material Halion
UPDATE `creature_template` SET `faction_H`=14,`faction_A`=14,`unit_flags`=0x2000000,`unit_class`=2 WHERE `entry`=40029; -- Meteor Strike
UPDATE `creature_template` SET `faction_H`=14,`faction_A`=14,`unit_flags`=0x2000000 WHERE `entry`=40001; -- Combustion
UPDATE `creature_template` SET `InhabitType`=0x4,`speed_walk`=1.2,`speed_run`=0.428571432828903,`VehicleId`=718,`minlevel`=80,`maxlevel`=80,`faction_H`=14,`faction_A`=14,`unit_flags`=0x2000100 WHERE `entry`=40081; -- Orb Carrier
UPDATE `creature_template` SET `speed_walk`=2.2,`speed_run`=0.785714268684387,`minlevel`=80,`maxlevel`=80,`faction_H`=14,`faction_A`=14,`unit_flags`=0x2000100 WHERE `entry`=40091; -- Orb Rotation Focus
UPDATE `creature_template` SET `flags_extra`=130,`ScriptName`= 'npc_halion_controller',`exp`=2,`speed_walk`=2.8,`speed_run`=1,`minlevel`=80,`maxlevel`=80,`faction_A`=14,`faction_H`=14,`unit_flags`=0x2000100 WHERE `entry`=40146; -- 40146 - Halion Controller

UPDATE `creature_template` SET `ScriptName`="npc_living_ember" WHERE `entry`=40683;
UPDATE `creature_template` SET `ScriptName`="npc_living_inferno" WHERE `entry`=40681;

UPDATE `creature_model_info` SET `bounding_radius`=1, `combat_reach`=2 WHERE `modelid`=16946;
UPDATE `creature_model_info` SET `combat_reach`=18 WHERE `modelid`=31952; -- Halion
UPDATE `creature_model_info` SET `combat_reach`=12.25 WHERE `modelid`=32179; -- General Zarithrian

-- Halion, Combustion, Consumption, Shadow Orb, Rotation Focus, Controller
DELETE FROM `creature_template_addon` WHERE `entry` IN (40142, 40146, 40001, 40135, 40100, 40469, 40468, 40083, 39863, 40091);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(40142, 0, 0x0, 0x1, '75476'),
(40146, 0, 0x0, 0x1, ''),
(40001, 0, 0x0, 0x1, '74629'),
(40135, 0, 0x0, 0x1, '74803'),
(40469, 0, 0x2000000, 0x1, ''),
(40468, 0, 0x2000000, 0x1, ''),
(40083, 0, 0x2000000, 0x1, ''),
(40100, 0, 0x2000000, 0x1, ''),
(39863, 0, 0x0, 0x1, '78243'),
(40091, 0, 0x0, 0x1, '');

-- Vehicle accessory for Orb Carrier
DELETE FROM `vehicle_template_accessory` WHERE `entry` IN (40081,40470,40471,40472);
INSERT INTO `vehicle_template_accessory` (`entry`,`accessory_entry`,`seat_id`,`minion`,`description`,`summontype`,`summontimer`) VALUES
(40081,40083,0,1, 'Orb Carrier',6,30000),
(40081,40100,1,1, 'Orb Carrier',6,30000),

(40470,40083,0,1, 'Orb Carrier',6,30000),
(40470,40100,1,1, 'Orb Carrier',6,30000),

(40471,40083,0,1, 'Orb Carrier',6,30000),
(40471,40100,1,1, 'Orb Carrier',6,30000),
(40471,40468,2,1, 'Orb Carrier',6,30000),
(40471,40469,3,1, 'Orb Carrier',6,30000),

(40472,40083,0,1, 'Orb Carrier',6,30000),
(40472,40100,1,1, 'Orb Carrier',6,30000),
(40472,40468,2,1, 'Orb Carrier',6,30000),
(40472,40469,3,1, 'Orb Carrier',6,30000);

-- Vehicle spellclicks
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (40081,40470,40471,40472);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`,`user_type`) VALUES
(40081, 46598, 0, 1), -- Ride Vehicle Hardcoded
(40470, 46598, 0, 1),
(40471, 46598, 0, 1),
(40472, 46598, 0, 1);

-- Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=74758;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=75509;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=75886;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13,1,75886,0,0,31,0,3,40683,0,0,0, "", "Blazing Aura can only target Living Embers"),
(13,1,75886,0,0,31,0,3,40684,0,0,0, "", "Blazing Aura can only target Living Embers"),
(13,1,75509,0,0,31,0,3,40142,0,0,0, "", "Twilight Mending can only target Halion"),
(13,2,75509,0,0,31,0,3,39863,0,0,0, "", "Twilight Mending can only target Halion"),
(13,1,74758,0,0,31,0,3,40091,0,0,0, "", "Track Rotation can only target Orb Rotation Focus");

DELETE FROM `creature_text` WHERE `entry`=39863;
DELETE FROM `creature_text` WHERE `entry`=40142;
DELETE FROM `creature_text` WHERE `entry`=40146;
DELETE FROM `creature_text` WHERE `entry`=40083;
DELETE FROM `creature_text` WHERE `entry`=40146;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(39863,0,0, 'Without pressure in both realms, %s begins to regenerate.',41,0,100,0,0,0, 'Halion'),
(39863,1,0, 'Meddlesome insects! You are too late. The Ruby Sanctum is lost!',14,0,100,1,0,17499, 'Halion'),
(39863,2,0, 'Your world teeters on the brink of annihilation. You will ALL bear witness to the coming of a new age of DESTRUCTION!',14,0,100,0,0,17500, 'Halion'),
(39863,3,0, 'The heavens burn!',14,0,100,0,0,17505, 'Halion'),
(39863,4,0, 'You will find only suffering within the realm of twilight! Enter if you dare!',14,0,100,0,0,17507, 'Halion'),
(39863,5,0, 'Relish this victory, mortals, for it will be your last! This world will burn with the master''s return!',14,0,100,0,0,17503, 'Halion'),
(39863,6,0, 'Another "hero" falls.',14,0,100,0,0,17501, 'Halion'),
(39863,7,0, 'Not good enough.',14,0,100,0,0,17504, 'Halion'),
(39863,8,0, 'Your efforts force %s further out of the physical realm!',41,0,100,0,0,0, 'Halion'),
(39863,9,0, 'Your companions'' efforts force %s further into the physical realm!',41,0,100,0,0,0, 'Halion'),
(40142,0,0, 'Without pressure in both realms, %s begins to regenerate.',41,0,100,0,0,0, 'Halion'),
(40142,1,0, 'Beware the shadow!',14,0,100,0,0,17506, 'Halion'),
(40142,2,0, 'I am the light and the darkness! Cower, mortals, before the herald of Deathwing!',14,0,100,0,0,17508, 'Halion'),
(40142,3,0, 'Your companions'' efforts force %s further into the twilight realm!',41,0,100,0,0,0, 'Halion'),
(40142,4,0, 'Your efforts force %s further out of the twilight realm!',41,0,100,0,0,0, 'Halion'),
(40083,0,0, 'The orbiting spheres pulse with dark energy!',41,0,100,0,0,0, 'Shadow Orb');

-- Boss Elder Nadox Move Heroic Spell Script
DELETE FROM `spell_script_names` WHERE `spell_id`=56153;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(56153, 'spell_elder_nadox_guardian');

UPDATE `spell_proc_event` SET `procflags`=0x15510 WHERE `entry`=53386;

-- Improved Scorch, Improved Shadow Bolt and Winter's Chill effect should not stack
DELETE FROM `spell_group` WHERE `id`=1037;
INSERT INTO `spell_group`(`id`,`spell_id`) VALUES
(1037,22959),
(1037,17800),
(1037,12579);

DELETE FROM `spell_group_stack_rules` WHERE `group_id`=1037;
INSERT INTO `spell_group_stack_rules`(`group_id`,`stack_rule`) VALUES (1037,3);

-- Blood Frenzy (Warrior) and Savage Combat effect should not stack
DELETE FROM `spell_group` WHERE `id`=1119;
INSERT INTO `spell_group`(`id`,`spell_id`) VALUES
(1119,30069),
(1119,58684);

DELETE FROM `spell_group_stack_rules` WHERE `group_id`=1119;
INSERT INTO `spell_group_stack_rules`(`group_id`,`stack_rule`) VALUES (1119,3);

-- Remove invalid spell_groups
DELETE FROM `spell_group` WHERE `id` IN (1038,1039);

SET @GROUP := 1120;
-- Totem of Wrath and Heart of the Crusader effect should not stack
DELETE FROM `spell_group` WHERE `id`=@GROUP;
INSERT INTO `spell_group`(`id`,`spell_id`) VALUES
(@GROUP,21183),
(@GROUP,30708);

DELETE FROM `spell_group_stack_rules` WHERE `group_id`=@GROUP;
INSERT INTO `spell_group_stack_rules`(`group_id`,`stack_rule`) VALUES (@GROUP,3);

-- Remove all bgs from e1bee86ee6f5c3ab7b1da6d1b54c98c2851f11ec
DELETE FROM `battleground_template` WHERE `id` = 6; -- all Bgs

-- Orb rotation focus
UPDATE `creature_template` SET `modelid1`=11868,`modelid2`=169,`minlevel`=80,`maxlevel`=80,`faction_A`=14,`faction_H`=14,`speed_walk`=2.2,`speed_run`=0.785714,`baseattacktime`=2000,`unit_flags`=33554688 WHERE `entry` IN(43280,43281,43282);

-- Orb carrier
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`exp`=2,`faction_A`=14,`faction_H`=14,`speed_walk`=1.2,`speed_run`=1.14286,`baseattacktime`=2000 WHERE `entry` IN(40470,40471,40472);

-- Saviana Ragefire
UPDATE `creature_template` SET `exp`=2 WHERE `entry`=39823;

-- General Zarithrian
UPDATE `creature_template` SET `exp`=2 WHERE `entry`=39805;

-- Twilight Halion
UPDATE `creature_template` SET `minlevel`=83,`maxlevel`=83,`speed_walk`=1.6,`speed_run`=1.42857,`baseattacktime`=1800,`unit_flags`=559168,`dynamicflags`=12 WHERE `entry` IN(40143,40144,40145);

-- Halion
UPDATE `creature_template` SET `speed_walk`=1.6,`speed_run`=1.42857,`baseattacktime`=1500,`unit_flags`=32832,`dynamicflags`=12,`flags_extra`=1 WHERE `entry` IN(39864,39944,39945);

-- Onyx Flamecaller
UPDATE `creature_template` SET `minlevel`=82,`maxlevel`=82,`faction_A`=103,`faction_H`=103,`exp`=2,`speed_walk`=0.88888,`speed_run`=1.42857,`baseattacktime`=2000,`unit_flags`=32768 WHERE `entry`=39815;

ALTER TABLE `spell_area` ADD COLUMN `quest_start_status` INT(11) NOT NULL DEFAULT 64; -- default is QUEST_STATUS_REWARDED
ALTER TABLE `spell_area` ADD COLUMN `quest_end_status` INT(11) NOT NULL DEFAULT 11; -- default is QUEST_STATUS_COMPLETE | QUEST_STATUS_NONE | QUEST_STATUS_INCOMPLETE
DELETE FROM  spell_area WHERE spell=49416 and area=4430 and quest_start_active=0;
DELETE FROM  spell_area WHERE spell=40214 and area=3965 and quest_start_active=0;
DELETE FROM  spell_area WHERE spell=40214 and area=3966 and quest_start_active=0;
DELETE FROM  spell_area WHERE spell=40214 and area=3939 and quest_start_active=0;
DELETE FROM  spell_area WHERE spell=40214 and area=3759 and quest_start_active=0;
UPDATE spell_area SET `quest_start_status` = (1 << 6) | (1 << 3) | (1 << 1) WHERE `quest_start_active` = 1;
ALTER TABLE spell_area DROP COLUMN `quest_start_active`;
