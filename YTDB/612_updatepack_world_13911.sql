# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 611_FIX_13785 612_FIX_13911 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('612_FIX_13911');

# TC
DELETE FROM `achievement_criteria_data` WHERE `criteria_id`=3882;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`) VALUES (3882,5,48890,0),(3882,16,324,0);

# SignFinder
-- Fix spell_bonus_data for Item Torment of the Worgen (23864)
DELETE FROM `spell_bonus_data` WHERE `entry` IN (30564, 30731); 
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(30564,0,0,0,0,"Item - Torment of the Worgen - Worgen's Spite"),
(30731,0,0,0,0,'Item - Torment of the Worgen - Torment of the Worgen');
-- Spell proc cooldown and chance for Item Torment of the Worgen (23864)
DELETE FROM `spell_proc_event` WHERE `entry`=30567;
INSERT INTO `spell_proc_event` (`entry`,`CustomChance`,`Cooldown`) VALUES
(30567,3,45);

DELETE FROM  `gossip_menu_option` WHERE  `menu_id` =7938;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(7938, 0, 2, 'Show me where I can fly.', 4, 8192, 0, 0, 0, 0, ''),
(7938, 1, 2, 'Send me to Thrallmar!', 1, 1, 0, 0, 0, 0, '');

DELETE FROM `creature_ai_scripts` WHERE `creature_id` =18930;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE  `entry` =18930;
DELETE FROM  `smart_scripts` WHERE  `entryorguid` =18930;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(18930, 0, 0, 0, 62, 0, 100, 0, 7938, 1, 0, 0, 11, 34924, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Vlagga Freyfeather - On gossip option 1 select - Cast Stair of Destiny to Thrallmar'),
(18930, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 12, 9297, 4, 30000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Vlagga Freyfeather - Summon Enraged Wyverns on Aggro'),
(18930, 0, 2, 0, 4, 0, 100, 0, 0, 0, 0, 0, 12, 9297, 4, 30000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Vlagga Freyfeather - Summon Enraged Wyverns on Aggro'),
(18930, 0, 3, 0, 4, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Vlagga Freyfeather - Say text on Aggro');

DELETE FROM  `conditions` WHERE  `SourceGroup` =7938;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 7938, 0, 0, 8, 10289, 0, 0, 0, '', 'Show gossip option 0 if player has rewarded quest 10289 "Journey to Thrallmar"'),
(15, 7938, 1, 0, 28, 10289, 0, 0, 0, '', 'Show gossip option 1 if player has complete quest 10289 "Journey to Thrallmar"');

-- Amish Wildhammer NPC(18931)
DELETE FROM  `gossip_menu` WHERE  `entry` =7939;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(7939, 10052);

DELETE FROM  `gossip_menu_option` WHERE  `menu_id` =7939;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(7939, 0, 2, 'Show me where I can fly.', 4, 8192, 0, 0, 0, 0, ''),
(7939, 1, 2, 'Send me to Honor Hold!', 1, 1, 0, 0, 0, 0, '');

DELETE FROM `creature_ai_scripts` WHERE `creature_id` =18931;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE  `entry` =18931;
DELETE FROM  `smart_scripts` WHERE  `entryorguid` =18931;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(18931, 0, 0, 0, 62, 0, 100, 0, 7939, 1, 0, 0, 11, 34907, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Amish Wildhammer - On gossip option 1 select - Cast Stair of Destiny to Honor Hold'),
(18931, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 12, 9526, 4, 30000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Amish Wildhammer - Summon Enraged Gryphon on Aggro'),
(18931, 0, 2, 0, 4, 0, 100, 0, 0, 0, 0, 0, 12, 9526, 4, 30000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Amish Wildhammer - Summon Enraged Gryphon on Aggro'),
(18931, 0, 3, 0, 4, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Amish Wildhammer - Say text on Aggro');

DELETE FROM  `conditions` WHERE  `SourceGroup` =7939;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 7939, 0, 0, 8, 10140, 0, 0, 0, '', 'Show gossip option 0 if player has rewarded quest 10140 "Journey to Honor Hold"'),
(15, 7939, 1, 0, 28, 10140, 0, 0, 0, '', 'Show gossip option 1 if player has complete quest 10140 "Journey to Honor Hold"');

# Kores
DELETE FROM `waypoint_data` WHERE `id`=101279; 
UPDATE `creature` SET `spawndist`=5, `MovementType`=1 WHERE `guid`=101279; 

# TC
-- [Q] Laying Waste to the Unwanted

-- Invis Horde Siege Engine - West SAI
SET @ENTRY := 19009;
SET @SPELL_IGNITE_SIEGE := 32979;
SET @SPELL_HELLFIRE_FIRE := 34386;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
UPDATE `creature` SET `position_x`=-183.947998,`position_y`=2773.389893,`position_z`=49.198399 WHERE `guid`=68321 AND `id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,@SPELL_IGNITE_SIEGE,0,60000,60000,11,@SPELL_HELLFIRE_FIRE,0,0,0,0,0,1,0,0,0,0,0,0,0,"Invis Horde Siege Engine - West - On Spellhit - Cast Create Hellfire Fire"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,33,@ENTRY,0,0,0,0,0,1,0,0,0,0,0,0,0,"Invis Horde Siege Engine - West - On Spellhit - Quest Credit");

-- Invis Horde Siege Engine - West 02 SAI
SET @ENTRY := 21236;
SET @SPELL_IGNITE_SIEGE := 32979;
SET @SPELL_HELLFIRE_FIRE := 34386;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
UPDATE `creature` SET `position_z`=43.094120 WHERE `guid`=74454 AND `id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,@SPELL_IGNITE_SIEGE,0,60000,60000,11,@SPELL_HELLFIRE_FIRE,0,0,0,0,0,1,0,0,0,0,0,0,0,"Invis Horde Siege Engine - West 02 - On Spellhit - Cast Create Hellfire Fire"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,33,@ENTRY,0,0,0,0,0,1,0,0,0,0,0,0,0,"Invis Horde Siege Engine - West 02 - On Spellhit - Quest Credit");

-- Invis Horde Siege Engine - East SAI
SET @ENTRY := 21237;
SET @SPELL_IGNITE_SIEGE := 32979;
SET @SPELL_HELLFIRE_FIRE := 34386;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
UPDATE `creature` SET `position_x`=-157.329712,`position_y`=2518.655273,`position_z`=58.221237 WHERE `guid`=67186 AND `id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,@SPELL_IGNITE_SIEGE,0,60000,60000,11,@SPELL_HELLFIRE_FIRE,0,0,0,0,0,1,0,0,0,0,0,0,0,"Invis Horde Siege Engine - East - On Spellhit - Cast Create Hellfire Fire"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,33,@ENTRY,0,0,0,0,0,1,0,0,0,0,0,0,0,"Invis Horde Siege Engine - East - On Spellhit - Quest Credit");

-- Invis Horde Siege Engine - East 02 SAI
SET @ENTRY := 18818;
SET @SPELL_IGNITE_SIEGE := 32979;
SET @SPELL_HELLFIRE_FIRE := 34386;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
UPDATE `creature` SET `position_x`=-152.163116,`position_y`=2662.497314,`position_z`=60.728378 WHERE `guid`=74455 AND `id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,@SPELL_IGNITE_SIEGE,0,60000,60000,11,@SPELL_HELLFIRE_FIRE,0,0,0,0,0,1,0,0,0,0,0,0,0,"Invis Horde Siege Engine - East 02 - On Spellhit - Cast Create Hellfire Fire"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,33,@ENTRY,0,0,0,0,0,1,0,0,0,0,0,0,0,"Invis Horde Siege Engine - East 02 - On Spellhit - Quest Credit");

-- [Q] Fel Spirits

-- Port Fel Spirit's EAI to creature_template_addon
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=22454;
DELETE FROM `creature_template_addon` WHERE `entry`=22454;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (22454,0,0,1,0,"39205");
UPDATE `creature_template` SET `AIName`='',`unit_flags`=32768,`baseattacktime`=2000 WHERE `entry`=22454;

-- Shattered Hand Berserker SAI
SET @ENTRY := 16878;
SET @SPELL_CHARGE := 35570;
SET @SPELL_ENRAGE := 8599;
SET @SPELL_SUMMON := 39206;
SET @SPELL_CONTRITION := 39184;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,@SPELL_CHARGE,0,0,0,0,0,2,0,0,0,0,0,0,0,"Shattered Hand Berserker - On Aggro - Cast Charge"),
(@ENTRY,0,1,0,8,0,100,0,@SPELL_CONTRITION,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shattered Hand Berserker - On Spellhit - Set Phase 1"),
(@ENTRY,0,2,0,6,1,100,0,0,0,0,0,11,@SPELL_SUMMON,2,0,0,0,0,1,0,0,0,0,0,0,0,"Shattered Hand Berserker - On Death (P1) - Cast Summon Fel Spirit"),
(@ENTRY,0,3,4,2,0,100,1,0,30,0,0,11,@SPELL_ENRAGE,1,0,0,0,0,1,0,0,0,0,0,0,0,"Shattered Hand Berserker - At 30% HP - Cast Enrage"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Shattered Hand Berserker - At 30% HP - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s becomes enraged!",16,0,100,0,0,0,"Shattered Hand Berserker");

-- Anchorite Relic Bunny SAI
SET @ENTRY := 22444;
SET @SPELL_CONTRITION := 39184;
UPDATE `creature_template` SET `AIName`='SmartAI',`exp`=2,`minlevel`=35,`maxlevel`=35,`baseattacktime`=2000,`unit_flags`=`unit_flags`|2048 WHERE `entry`=@ENTRY;
DELETE FROM `creature_template_addon` WHERE `entry`=@ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@ENTRY,0,0,1,0, NULL);
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Anchorite Relic Bunny - Just Summoned - Prevent Combat Movemenet"),
(@ENTRY,0,1,0,60,0,100,0,1000,3000,15000,20000,11,@SPELL_CONTRITION,0,0,0,0,0,11,16878,0,0,0,0,0,0,"Anchorite Relic Bunny - On Update - Cast Anchorite Contrition");

-- Condition for spell Anchorite Contrition
DELETE FROM  `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (@SPELL_CONTRITION,@SPELL_SUMMON);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,@SPELL_CONTRITION,0,18,1,16878,0,0,'',"Spell Anchorite Contrition targets Shattered Hand Berserker"),
(13,0,@SPELL_SUMMON,0,18,1,22444,0,0,'',"Spell Summon Fel Spirit targets Anchorite Relic Bunny");

-- [Q] Hard to Swallow

-- Hulking Jormungar SAI
SET @ENTRY := 26293;
SET @SPELL_CORROSIVE_POISON := 50293;
SET @SPELL_GRENADE := 47305;
SET @SPELL_EXPLOSION := 47311;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100,@ENTRY*100+1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,6000,7000,11000,13000,11,@SPELL_CORROSIVE_POISON,0,0,0,0,0,2,0,0,0,0,0,0,0,"Hulking Jormungar - In Combat - Cast Corrode Flesh"),
(@ENTRY,0,1,0,2,0,100,1,0,80,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0,"Hulking Jormungar - At 80% HP - Run Script"),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,2,0,0,0,0,0,0,0,"Hulking Jormungar - On Script - Say Line 0"),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hulking Jormungar - On Script - Set Phase 1"),
(@ENTRY*100,9,2,0,0,0,100,0,5000,5000,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hulking Jormungar - On Script - Set Phase 0"),
(@ENTRY,0,2,0,8,1,100,0,@SPELL_GRENADE,0,0,0,80,@ENTRY*100+1,0,2,0,0,0,1,0,0,0,0,0,0,0,"Hulking Jormungar - On Spellhit (P1) - Run Script"),
(@ENTRY*100+1,9,0,0,0,0,100,0,3000,3000,0,0,11,@SPELL_EXPLOSION,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hulking Jormungar - On Script - Cast Quest - Jormungar Explosion Spell Spawner"),
(@ENTRY*100+1,9,1,0,0,0,100,0,0,0,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hulking Jormungar - On Script - Die");

-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"The Hulking Jormungar falters for a moment, opening its mouth wide.",41,0,100,0,0,0,"Hulking Jormungar");

-- Potent Explosive Charge conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=@SPELL_GRENADE;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,@SPELL_GRENADE,0,18,1,@ENTRY,0,0,'',"Potent Explosive Charge only targets Hulking Jormungar"),
(13,0,@SPELL_GRENADE,0,20,80,0,0,0,'',"Potent Explosive Charge requires target to be below 80% HP");

-- Quest - Jormungar Explosion Spell Spawner triggers the meat throw spells
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=@SPELL_EXPLOSION;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(@SPELL_EXPLOSION,47925,0,"Quest - Jormungar Explosion Spell Spawner triggers Quest - Jormungar Explosion Summon Object"),
(@SPELL_EXPLOSION,47924,0,"Quest - Jormungar Explosion Spell Spawner triggers Quest - Jormungar Explosion Summon Object"),
(@SPELL_EXPLOSION,47309,0,"Quest - Jormungar Explosion Spell Spawner triggers Quest - Jormungar Explosion Summon Object");

-- Jormungar Meat SAI
SET @ENTRY := 26699;
UPDATE `creature_template` SET `AIname`='SmartAI',`unit_flags`=`unit_flags`|33554432,`flags_extra`=`flags_extra`|128 WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,50,188434,120000,0,0,0,0,1,0,0,0,0,0,0,0,"Jormungar Meat - Just Summoned - Summon Jormungar Meat");

-- [Q] The Might of the Horde

-- Warsong Battle Standard SAI
SET @ENTRY := 26678;
SET @QUEST := 12053;
UPDATE `creature_template` SET `AIName`='SmartAI',`minlevel`=70,`maxlevel`=71,`exp`=1 WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warsong Battle Standard - On Spawn - Set React State Passive"), -- We shouldn't EVER attack back or move
(@ENTRY,0,1,0,6,0,100,0,0,0,0,0,6,@QUEST,0,0,0,0,0,23,0,0,0,0,0,0,0,"Warsong Battle Standard - On Death - Fail Quest"),
(@ENTRY,0,2,0,54,0,100,0,0,0,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0,"Warsong Battle Standard - Just Summoned - Run Script"),
(@ENTRY*100,9,0,0,0,0,100,0,5000,15000,0,0,12,26676,1,30000,0,0,0,1,0,0,0,0,0,0,0,"Warsong Battle Standard - On Script - Summon Anub'ar Invader"),
(@ENTRY*100,9,1,0,0,0,100,0,8000,15000,0,0,12,26676,1,30000,0,0,0,1,0,0,0,0,0,0,0,"Warsong Battle Standard - On Script - Summon Anub'ar Invader"),
(@ENTRY*100,9,2,0,0,0,100,0,8000,15000,0,0,12,26676,1,30000,0,0,0,1,0,0,0,0,0,0,0,"Warsong Battle Standard - On Script - Summon Anub'ar Invader"),
(@ENTRY*100,9,3,0,0,0,100,0,8000,15000,0,0,12,26676,1,30000,0,0,0,1,0,0,0,0,0,0,0,"Warsong Battle Standard - On Script - Summon Anub'ar Invader"),
(@ENTRY*100,9,4,0,0,0,100,0,8000,15000,0,0,12,26676,1,30000,0,0,0,1,0,0,0,0,0,0,0,"Warsong Battle Standard - On Script - Summon Anub'ar Invader"),
(@ENTRY*100,9,5,0,0,0,100,0,4000,4000,0,0,15,@QUEST,0,0,0,0,0,23,0,0,0,0,0,0,0,"Warsong Battle Standard - On Script - Quest Credit");

-- Anub'ar Invader SAI
SET @ENTRY := 26676;
UPDATE `creature_template` SET `AIName`='SmartAI',`faction_A`=2018,`faction_H`=2018 WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,1,0,0,0,0,49,0,0,0,0,0,0,23,0,0,0,0,0,0,0,"Anub'ar Invader - Just Summoned - Attack Summoner");

-- [Q] Jack Likes His Drink
-- We are making Jack dance through SAI instead of creature(_template)_addon so we can cancel it in the actual SAI

-- Olga, the Scalawag Wench SAI
SET @ENTRY_OLGA := 24639;
SET @ENTRY_JACK := 24788;
SET @GOSSIP := 9015;
SET @QUEST := 11466;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@ENTRY_OLGA,@ENTRY_JACK);
UPDATE `creature_template` SET `gossip_menu_id`=@GOSSIP+10 WHERE `entry`=@ENTRY_JACK;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY_OLGA,@ENTRY_OLGA*100,@ENTRY_OLGA*100+1,@ENTRY_OLGA*100+2,@ENTRY_JACK,@ENTRY_JACK*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY_OLGA,0,0,0,62,0,100,0,@GOSSIP+1,0,0,0,80,@ENTRY_OLGA*100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Olga, the Scalawag Wench - On Gossip Select - Run Script"),
(@ENTRY_OLGA*100,9,0,0,0,0,100,0,0,0,0,0,53,0,@ENTRY_OLGA,0,0,0,0,1,0,0,0,0,0,0,0,"Olga, the Scalawag Wench - On Script - Start WP"),
(@ENTRY_OLGA*100,9,1,0,0,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Olga, the Scalawag Wench - On Script - Close Gossip"),
(@ENTRY_OLGA*100,9,2,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Olga, the Scalawag Wench - On Script - Whisper Line 0"),
(@ENTRY_OLGA*100,9,3,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Olga, the Scalawag Wench - On Script - Remove Gossip Flag"),

(@ENTRY_OLGA,0,1,0,40,0,100,0,2,@ENTRY_OLGA,0,0,80,@ENTRY_OLGA*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Olga, the Scalawag Wench - On WP 2 - Run Script 2"),
(@ENTRY_OLGA*100+1,9,0,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,11,@ENTRY_JACK,15,0,0,0,0,0,"Olga, the Scalawag Wench - On Script 2 - Face Jack Adams"),
(@ENTRY_OLGA*100+1,9,1,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Olga, the Scalawag Wench - On Script 2 - Say Line 1"),
(@ENTRY_OLGA*100+1,9,2,0,0,0,100,0,3000,3000,0,0,45,1,1,0,0,0,0,19,@ENTRY_JACK,0,0,0,0,0,0,"Olga, the Scalawag Wench - On Script 2 - Set Data 1 1 Jack Adams"),
(@ENTRY_OLGA*100+1,9,3,0,0,0,100,0,3000,3000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Olga, the Scalawag Wench - On Script 2 - Say Line 2"),
(@ENTRY_OLGA*100+1,9,4,0,0,0,100,0,4000,4000,0,0,45,2,2,0,0,0,0,19,@ENTRY_JACK,0,0,0,0,0,0,"Olga, the Scalawag Wench - On Script 2 - Set Data 2 2 Jack Adams"),
(@ENTRY_OLGA,0,2,0,38,0,100,0,3,3,0,0,53,0,@ENTRY_OLGA*10,0,0,0,0,1,0,0,0,0,0,0,0,"Olga, the Scalawag Wench - On Data 3 3 Set - Start WP 2"),

(@ENTRY_JACK,0,0,0,1,0,100,1,0,0,0,0,5,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jack Adams - Out of Combat - Start Dancing"),
(@ENTRY_JACK,0,1,2,38,0,100,0,1,1,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jack Adams - On Data 1 1 Set - Say Line 0"),
(@ENTRY_JACK,0,2,0,61,0,100,0,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jack Adams - On Data 1 1 Set - Set Faction 35"),
(@ENTRY_JACK,0,3,4,62,0,100,0,@GOSSIP+10,0,0,0,56,34116,1,0,0,0,0,7,0,0,0,0,0,0,0,"Jack Adams - On Gossip Select - Give Quest Item"),
(@ENTRY_JACK,0,4,5,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Jack Adams - On Gossip Select - Close Gossip"),
(@ENTRY_JACK,0,5,6,61,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jack Adams - On Gossip Select - Remove Gossip Flag"), -- To prevent getting more than one item per event
(@ENTRY_JACK,0,6,0,61,0,100,0,0,0,0,0,45,3,3,0,0,0,0,19,@ENTRY_OLGA,0,0,0,0,0,0,"Jack Adams - On Gossip Select - Set Data Olga, the Scalawag Wench"),

(@ENTRY_JACK,0,7,0,38,0,100,0,2,2,0,0,80,@ENTRY_JACK*100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jack Adams - On Data 2 2 Set - Run Script"),
(@ENTRY_JACK*100,9,0,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jack Adams - On Script - Say Line 1"),
(@ENTRY_JACK*100,9,1,0,0,0,100,0,0,0,0,0,5,26,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jack Adams - On Script - Stop Dancing"),
(@ENTRY_JACK*100,9,2,0,0,0,100,0,2000,2000,0,0,5,16,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jack Adams - On Script - EMOTE_ONESHOT_KNEEL"),
(@ENTRY_JACK*100,9,3,0,0,0,100,0,4000,4000,0,0,5,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jack Adams - On Script - EMOTE_ONESHOT_EAT"),
(@ENTRY_JACK*100,9,4,0,0,0,100,0,4000,4000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jack Adams - On Script - Say Line 2"),
(@ENTRY_JACK*100,9,5,0,0,0,100,0,4000,4000,0,0,11,43391,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jack Adams - On Script - Cast Vomit"),
(@ENTRY_JACK*100,9,6,0,0,0,100,0,3000,3000,0,0,11,29266,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jack Adams - On Script - Cast Permanent Feign Death"),
(@ENTRY_JACK*100,9,7,0,0,0,100,0,0,0,0,0,81,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jack Adams - On Script - Add Gossip Flag"),
(@ENTRY_JACK*100,9,8,0,0,0,100,0,0,0,0,0,41,30000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jack Adams - On Script - Forced Despawn");

-- Texts
DELETE FROM `creature_text` WHERE `entry` IN (@ENTRY_OLGA,@ENTRY_JACK);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY_OLGA,0,0,"Keep quiet, will you? If anyone catches on, we're both dead.",15,0,100,0,0,0,"Olga, the Scalawag Wench"),
(@ENTRY_OLGA,1,0,"All right, fellas! Who ordered the spiced rum? Was it you, Jackie boy?",12,0,100,0,0,0,"Olga, the Scalawag Wench"),
(@ENTRY_OLGA,2,0,"It's okay, sweetheart. This one's on the house.",12,0,100,0,0,0,"Olga, the Scalawag Wench"),

(@ENTRY_JACK,0,0,"Sure thing, love. Put it on Harry's tab, will ya? He owes me a drink!",12,0,100,0,0,0,"Jack Adams"),
(@ENTRY_JACK,1,0,"Free rum? Why... that's me favorite kind!",12,0,100,0,0,0,"Jack Adams"),
(@ENTRY_JACK,2,0,"Sweet Neptulon! That was... one drink... too many!",12,0,100,0,0,0,"Jack Adams");

-- Insert option menu
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (@GOSSIP,@GOSSIP+1,@GOSSIP+10);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`box_money`,`box_text`) VALUES
(@GOSSIP+0,0,0,"I'd like to buy Jack a drink. Perhaps something... extra strong.",1,1,@GOSSIP+1,0,''),
(@GOSSIP+1,0,0,"Here's a gold, buy yourself something nice.",1,1,0,10000,'Do you really want to bribe Olga?'),
(@GOSSIP+10,0,0,"<Discreetly search the pirate's pockets for Taruk's payment.>",1,1,0,0,'');

-- Waypoints for Olga, the Scalawag Wench
DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY_OLGA,@ENTRY_OLGA*10);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY_OLGA,1,-89.466621,-3539.939941,7.715524,'Olga, the Scalawag Wench'),
(@ENTRY_OLGA,2,-86.451447,-3544.374268,7.716601,'Olga, the Scalawag Wench'),

(@ENTRY_OLGA*10,1,-86.451447,-3544.374268,7.716601,'Olga, the Scalawag Wench'),
(@ENTRY_OLGA*10,2,-89.466621,-3539.939941,7.715524,'Olga, the Scalawag Wench');

-- Only show first gossip if player is on quest Gambling Debt
DELETE FROM `conditions` WHERE `SourceGroup` IN (@GOSSIP+0,@GOSSIP+10) AND `ConditionValue1` IN (@QUEST);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,@GOSSIP+0,0,0,9,@QUEST,0,0,0,'',"Only show first gossip if player is on quest Gambling Debt"),

(15,@GOSSIP+10,0,0,9,@QUEST,0,0,0,'',"Only show first gossip if player is on quest Gambling Debt");

-- Tapper Swindlekeg SAI
SET @ENTRY := 24711;
SET @SPELL_GROW := 50551;
SET @SPELL_DRINK := 50552;
SET @SPELL_FINISH := 50555;
SET @QUEST_DIRE_BREW := 12492;
UPDATE `creature_template` SET `AIName`='SmartAI',`flags_extra`=`flags_extra`|2 WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,20,0,100,0,@QUEST_DIRE_BREW,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tapper Swindlekeg - On Quest Complete - Run Script"),
(@ENTRY*100+0,9,0,0,0,0,100,0,1500,1500,0,0,1,0,0,0,0,0,0,0,7,0,0,0,0,0,0,"Tapper Swindlekeg - On Script - Say Line 0"),
(@ENTRY*100+0,9,1,0,0,0,100,0,0,0,0,0,11,@SPELL_DRINK,0,0,0,0,0,0,1,0,0,0,0,0,0,"Tapper Swindlekeg - On Script - Cast Questgiver Tries Dire Brew"),
(@ENTRY*100+0,9,2,0,0,0,100,0,8500,8500,0,0,11,@SPELL_FINISH,0,0,0,0,0,0,1,0,0,0,0,0,0,"Tapper Swindlekeg - On Script - Cast Questgiver Finishes Drinking"),
(@ENTRY*100+0,9,3,0,0,0,100,0,0,0,0,0,28,@SPELL_GROW,0,0,0,0,0,0,1,0,0,0,0,0,0,"Tapper Swindlekeg - On Script - Remove Growth Aura"),
(@ENTRY*100+0,9,4,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,0,7,0,0,0,0,0,0,"Tapper Swindlekeg - On Script - Say Line 1"),
(@ENTRY*100+0,9,5,0,0,0,100,0,3500,3500,0,0,1,2,0,0,0,0,0,0,7,0,0,0,0,0,0,"Tapper Swindlekeg - On Script - Say Line 2"),
(@ENTRY*100+0,9,6,0,0,0,100,0,3500,3500,0,0,1,3,0,0,0,0,0,0,7,0,0,0,0,0,0,"Tapper Swindlekeg - On Script - Say Line 3");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Well time's money, and time's wasting! Let's have that drink...",12,0,100,1,0,0,"Tapper Swindlekeg"),
(@ENTRY,1,0,"Wow! This really greases the steamplugs!",12,0,100,1,0,0,"Tapper Swindlekeg"),
(@ENTRY,2,0,"If I were an honest goblin, I'd say this was the best beer of the festival...",12,0,100,1,0,0,"Tapper Swindlekeg"),
(@ENTRY,3,0,"Too bad Coren's dead. If I could buy that brew from him and resell it - watered down and rebottled under my own label, of course - I'd be rich!",12,0,100,1,0,0,"Tapper Swindlekeg"),
-- These three are used in areatrigger script
(@ENTRY,4,0,"Hey there, and welcome to Brewfest. Come in and have a drink or three!",12,1,100,3,0,0,"Tapper Swindlekeg"),
(@ENTRY,4,1,"What's up, friend? Welcome to the Brewfest Grounds! Now go buy some drinks!",12,1,100,3,0,0,"Tapper Swindlekeg"),
(@ENTRY,4,2,"Hey hey, it's another $r! Welcome to my annual Brewfest celebration... now go feast and drink some!",12,1,100,3,0,0,"Tapper Swindlekeg");

-- Ipfelkofer Ironkeg SAI
SET @ENTRY := 24710;
SET @SPELL_GROW := 50551;
SET @SPELL_DRINK := 50552;
SET @SPELL_FINISH := 50555;
SET @QUEST_DIRE_BREW := 12491;
UPDATE `creature_template` SET `AIName`='SmartAI',`flags_extra`=`flags_extra`|2 WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,20,0,100,0,@QUEST_DIRE_BREW,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ipfelkofer Ironkeg - On Quest Complete - Run Script"),
(@ENTRY*100+0,9,0,0,0,0,100,0,1500,1500,0,0,1,0,0,0,0,0,0,0,7,0,0,0,0,0,0,"Ipfelkofer Ironkeg - On Script - Say Line 0"),
(@ENTRY*100+0,9,1,0,0,0,100,0,0,0,0,0,11,@SPELL_DRINK,0,0,0,0,0,0,1,0,0,0,0,0,0,"Ipfelkofer Ironkeg - On Script - Cast Questgiver Tries Dire Brew"),
(@ENTRY*100+0,9,2,0,0,0,100,0,8500,8500,0,0,11,@SPELL_FINISH,0,0,0,0,0,0,1,0,0,0,0,0,0,"Ipfelkofer Ironkeg - On Script - Cast Questgiver Finishes Drinking"),
(@ENTRY*100+0,9,3,0,0,0,100,0,0,0,0,0,28,@SPELL_GROW,0,0,0,0,0,0,1,0,0,0,0,0,0,"Ipfelkofer Ironkeg - On Script - Remove Growth Aura"),
(@ENTRY*100+0,9,4,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,0,7,0,0,0,0,0,0,"Ipfelkofer Ironkeg - On Script - Say Line 1"),
(@ENTRY*100+0,9,5,0,0,0,100,0,3500,3500,0,0,1,2,0,0,0,0,0,0,7,0,0,0,0,0,0,"Ipfelkofer Ironkeg - On Script - Say Line 2"),
(@ENTRY*100+0,9,6,0,0,0,100,0,3500,3500,0,0,1,3,0,0,0,0,0,0,7,0,0,0,0,0,0,"Ipfelkofer Ironkeg - On Script - Say Line 3");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Right! Let's try this so-called dire brew...",12,0,100,0,0,0,"Ipfelkofer Ironkeg"),
(@ENTRY,1,0,"Bronzebeard's beard! What a drink!",12,0,100,0,0,0,"Ipfelkofer Ironkeg"),
(@ENTRY,2,0,"$N, this beer... well, it might be the best of Brewfest!",12,0,100,15,0,0,"Ipfelkofer Ironkeg"),
(@ENTRY,3,0,"It is a shame Coren's Dire Brew can't quench more thirsting throats! It's blasphemy, I know, but I envy those Dark Iron dwarves!",12,0,100,274,0,0,"Ipfelkofer Ironkeg"),
-- These three are used in areatrigger script
(@ENTRY,4,0,"Ho there, and welcome to Brewfest!",12,7,100,3,0,0,"Ipfelkofer Ironkeg"),
(@ENTRY,4,1,"Hello, friend! Welcome to the Brewfest Grounds!",12,7,100,3,0,0,"Ipfelkofer Ironkeg"),
(@ENTRY,4,2,"Hail, good $c! Welcome to Ironforge's annual Brewfest celebration!",12,7,100,3,0,0,"Ipfelkofer Ironkeg");

-- [Q] [A/H] Ring of Blood
-- Gurghthock SAI
SET @ENTRY_GURTHOCK := 18471;
SET @ENTRY_BROKENTOE := 18398;
SET @ENTRY_TWIN := 18399;
SET @ENTRY_ROKDAR := 18400;
SET @ENTRY_SKRAGATH := 18401;
SET @ENTRY_WARMAUL := 18402;
SET @ENTRY_MOGOR := 18069;
SET @QUEST_BROKENTOE := 9962;
SET @QUEST_BLUE_BROTHERS := 9967;
SET @QUEST_ROKDAR := 9970;
SET @QUEST_SKRAGATH := 9972;
SET @QUEST_WARMAUL := 9973;
SET @QUEST_MOGOR := 9977;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY_GURTHOCK;
UPDATE `quest_template` SET `StartScript`=0,`CompleteScript`=0,`SpecialFlags`=2 WHERE `id` IN (@QUEST_BROKENTOE,@QUEST_BLUE_BROTHERS,@QUEST_ROKDAR,@QUEST_SKRAGATH,@QUEST_WARMAUL,@QUEST_MOGOR);
DELETE FROM `quest_start_scripts` WHERE `id` IN (@QUEST_BROKENTOE,@QUEST_BLUE_BROTHERS,@QUEST_ROKDAR,@QUEST_SKRAGATH,@QUEST_WARMAUL,@QUEST_MOGOR);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY_GURTHOCK,@ENTRY_GURTHOCK*100+0,@ENTRY_GURTHOCK*100+1,@ENTRY_GURTHOCK*100+2,@ENTRY_GURTHOCK*100+3,@ENTRY_GURTHOCK*100+4);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY_GURTHOCK,0,0,1,19,0,100,0,@QUEST_BROKENTOE,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurghthock - On Quest Accept - Say Line 0"),
(@ENTRY_GURTHOCK,0,1,0,61,0,100,0,0,0,0,0,80,@ENTRY_GURTHOCK*100+0,0,2,0,0,0,1,0,0,0,0,0,0,0,"Gurghthock - On Quest Accept - Run Script"),
(@ENTRY_GURTHOCK,0,2,3,19,0,100,0,@QUEST_BLUE_BROTHERS,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurghthock - On Quest Accept - Say Line 0"),
(@ENTRY_GURTHOCK,0,3,0,61,0,100,0,0,0,0,0,80,@ENTRY_GURTHOCK*100+1,0,2,0,0,0,1,0,0,0,0,0,0,0,"Gurghthock - On Quest Accept - Run Script"),
(@ENTRY_GURTHOCK,0,4,5,19,0,100,0,@QUEST_ROKDAR,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurghthock - On Quest Accept - Say Line 0"),
(@ENTRY_GURTHOCK,0,5,0,61,0,100,0,0,0,0,0,80,@ENTRY_GURTHOCK*100+2,0,2,0,0,0,1,0,0,0,0,0,0,0,"Gurghthock - On Quest Accept - Run Script"),
(@ENTRY_GURTHOCK,0,6,7,19,0,100,0,@QUEST_SKRAGATH,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurghthock - On Quest Accept - Say Line 0"),
(@ENTRY_GURTHOCK,0,7,0,61,0,100,0,0,0,0,0,80,@ENTRY_GURTHOCK*100+3,0,2,0,0,0,1,0,0,0,0,0,0,0,"Gurghthock - On Quest Accept - Run Script"),
(@ENTRY_GURTHOCK,0,8,9,19,0,100,0,@QUEST_WARMAUL,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurghthock - On Quest Accept - Say Line 0"),
(@ENTRY_GURTHOCK,0,9,0,61,0,100,0,0,0,0,0,80,@ENTRY_GURTHOCK*100+4,0,2,0,0,0,1,0,0,0,0,0,0,0,"Gurghthock - On Quest Accept - Run Script"),
(@ENTRY_GURTHOCK*100+0,9,0,0,0,0,100,0,13000,13000,0,0,1,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - On Script - Say Line 1"),
(@ENTRY_GURTHOCK*100+0,9,1,0,0,0,100,0,5000,5000,0,0,12,@ENTRY_BROKENTOE,1,120000,0,0,0,8,0,0,0,-704.669,7871.08,45.0387,1.59531,"Gurghthock - On Script - Summon Brokentoe"),
(@ENTRY_GURTHOCK*100+1,9,0,0,0,0,100,0,13000,13000,0,0,1,3,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - On Script - Say Line 3"),
(@ENTRY_GURTHOCK*100+1,9,1,0,0,0,100,0,5000,5000,0,0,12,@ENTRY_TWIN,1,120000,0,0,0,8,0,0,0,-717.852356,7877.326660,45.547367,1.599185,"Gurghthock - On Script - Summon Murkblood Twin"),
(@ENTRY_GURTHOCK*100+1,9,2,0,0,0,100,0,0,0,0,0,12,@ENTRY_TWIN,1,120000,0,0,0,8,0,0,0,-695.944275,7880.357910,47.097507,2.084561,"Gurghthock - On Script - Summon Murkblood Twin"),
(@ENTRY_GURTHOCK*100+2,9,0,0,0,0,100,0,13000,13000,0,0,1,5,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - On Script - Say Line 5"),
(@ENTRY_GURTHOCK*100+2,9,1,0,0,0,100,0,5000,5000,0,0,12,@ENTRY_ROKDAR,1,120000,0,0,0,8,0,0,0,-704.669,7871.08,45.0387,1.59531,"Gurghthock - On Script - Summon Rokdar the Sundered Lord"),
(@ENTRY_GURTHOCK*100+3,9,0,0,0,0,100,0,13000,13000,0,0,1,7,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - On Script - Say Line 7"),
(@ENTRY_GURTHOCK*100+3,9,1,0,0,0,100,0,5000,5000,0,0,12,@ENTRY_SKRAGATH,1,120000,0,0,0,8,0,0,0,-704.669,7871.08,45.0387,1.59531,"Gurghthock - On Script - Summon Skra'gath"),
(@ENTRY_GURTHOCK*100+4,9,0,0,0,0,100,0,13000,13000,0,0,1,9,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurgthock - On Script - Say Line 9"),
(@ENTRY_GURTHOCK*100+4,9,1,0,0,0,100,0,5000,5000,0,0,12,@ENTRY_WARMAUL,1,120000,0,0,0,8,0,0,0,-704.669,7871.08,45.0387,1.59531,"Gurghthock - On Script - Summon Warmaul Champion"),
(@ENTRY_GURTHOCK,0,10,11,19,0,100,0,@QUEST_MOGOR,0,0,0,1,11,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurghthock - On Quest Accept - Say Line 11"),
(@ENTRY_GURTHOCK,0,11,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,@ENTRY_MOGOR,0,0,0,0,0,0,"Gurghthock - On Quest Accept - Set Data Mogor"),
(@ENTRY_GURTHOCK,0,12,0,38,0,100,0,10,10,0,0,1,2,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurghthock - On Data Set - Say Line 2"), -- Brokentoe's death
(@ENTRY_GURTHOCK,0,13,0,38,0,100,0,11,11,0,0,1,4,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurghthock - On Data Set - Say Line 4"), -- Murkblood Twins death
(@ENTRY_GURTHOCK,0,14,15,38,0,100,0,12,12,0,0,1,6,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurghthock - On Data Set - Say Line 6"), -- Rokdar the Sundered Lord's death
(@ENTRY_GURTHOCK,0,15,0,61,0,100,0,0,0,0,0,45,12,12,0,0,0,0,19,18069,0,0,0,0,0,0,"Gurghthock - On Data Set - Set Data Mogor"), -- Rokdar the Sundered Lord's death
(@ENTRY_GURTHOCK,0,16,17,38,0,100,0,13,13,0,0,1,8,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurghthock - On Data Set - Say Line 8"), -- Skra'gath's death
(@ENTRY_GURTHOCK,0,17,0,61,0,100,0,0,0,0,0,45,13,13,0,0,0,0,19,18069,0,0,0,0,0,0,"Gurghthock - On Data Set - Set Data Mogor"), -- Skra'gath's death
(@ENTRY_GURTHOCK,0,18,19,38,0,100,0,14,14,0,0,1,10,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gurghthock - On Data Set - Say Line 10"), -- Warmaul Champion's death
(@ENTRY_GURTHOCK,0,19,0,61,0,100,0,0,0,0,0,45,14,14,0,0,0,0,19,18069,0,0,0,0,0,0,"Gurghthock - On Data Set - Set Data Mogor"); -- Warmaul Champion's death
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY_GURTHOCK;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY_GURTHOCK,0,0,"Get in the Ring of Blood, $N. The fight is about to start!",12,0,100,0,0,0,"Gurgthock"),
(@ENTRY_GURTHOCK,1,0,"The battle is about to begin! $N versus the ferocious clefthoof, Brokentoe!",14,0,100,0,0,0,"Gurgthock"),
(@ENTRY_GURTHOCK,2,0,"$N has defeated Brokentoe!",14,0,100,0,0,0,"Gurgthock"),
(@ENTRY_GURTHOCK,3,0,"The battle is about to begin! The unmerciful Murkblood twins versus $N!",14,0,100,0,0,0,"Gurgthock"),
(@ENTRY_GURTHOCK,4,0,"Unbelievable! $N has defeated the Murkblood Twins!",14,0,100,0,0,0,"Gurgthock"),
(@ENTRY_GURTHOCK,5,0,"Hailing from the mountains of Blade's Edge comes Rokdar the Sundered Lord! $N is in for the fight of $g his:her; life.",14,0,100,0,0,0,"Gurgthock"),
(@ENTRY_GURTHOCK,6,0,"$N is victorious once more!",14,0,100,0,0,0,"Gurgthock"),
(@ENTRY_GURTHOCK,7,0,"From parts unkown: Skra'gath! Can $N possibly survive the onslaught of void energies?",14,0,100,0,0,0,"Gurgthock"),
(@ENTRY_GURTHOCK,8,0,"$N is victorious once more!",14,0,100,0,0,0,"Gurgthock"),
(@ENTRY_GURTHOCK,9,0,"This is the moment we've all been waiting for! The Warmaul champion is about to make $g his:her; first showing at the Ring of Blood in weeks! Will $N go down in defeat as easily as the champion's other opponents? We shall see...",14,0,100,0,0,0,"Gurgthock"),
(@ENTRY_GURTHOCK,10,0,"$N is victorious once more!",14,0,100,0,0,0,"Gurgthock"),
(@ENTRY_GURTHOCK,11,0,"Mogor has challenged you. You have to accept! Get in the ring if you are ready to fight.",12,0,100,0,0,0,"Gurgthock");
-- Mogor SAI
SET @ENTRY := 18069;
SET @QUEST := 9977;
SET @SPELL_CHAIN_LIGHTNING := 16033;
SET @SPELL_FLAME_SHOCK := 39529;
SET @SPELL_HEALING_WAVE := 15982;
SET @SPELL_FRENZY := 28747;
SET @SPELL_REVIVE_SELF := 32343;
UPDATE `creature_template` SET `AIName`="SmartAI",`faction_A`=35,`faction_H`=35 WHERE `entry`=@ENTRY;
DELETE FROM `creature` WHERE `id`=@ENTRY;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(199969,@ENTRY,530,1,1,0,0,-714.823,7931.65,58.8672,4.3693,300,0,0,60720,29330,0,0,0,0);
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100,@ENTRY*100+1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,3500,3500,11,@SPELL_CHAIN_LIGHTNING,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mogor - In Combat - Cast Chain Lightning"),
(@ENTRY,0,1,0,0,0,100,0,4000,4000,11000,13000,11,@SPELL_FLAME_SHOCK,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mogor - In Combat - Cast Flame Shock"),
(@ENTRY,0,2,0,2,0,100,1,0,60,0,0,11,@SPELL_HEALING_WAVE,1,0,0,0,0,1,0,0,0,0,0,0,0,"Mogor - At 60% HP - Cast Healing Wave"),
(@ENTRY,0,3,0,2,0,100,1,0,30,0,0,11,@SPELL_FRENZY,1,0,0,0,0,1,0,0,0,0,0,0,0,"Mogor - At 30% HP - Cast Frenzy"),
(@ENTRY,0,4,0,2,0,100,1,0,30,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Mogor - At 30% HP - Say Line 0"),
(@ENTRY,0,5,0,6,0,100,1,0,0,0,0,80,@ENTRY*100+1,0,2,0,0,0,1,0,0,0,0,0,0,0,"Mogor - On Death - Run Script"),
(@ENTRY*100+1,9,0,0,0,0,100,0,2000,2000,0,0,11,@SPELL_REVIVE_SELF,2,0,0,0,0,1,0,0,0,0,0,0,0,"Mogor - On Script - Cast Revive Self"),
(@ENTRY*100+1,9,1,0,0,0,100,0,1000,1000,0,0,70,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mogor - On Script - Revive Self"),
(@ENTRY*100+1,9,2,0,0,0,100,0,1000,1000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mogor - On Script - Say Line 5"),
(@ENTRY*100+1,9,3,0,0,0,100,0,500,500,0,0,49,0,0,0,0,0,0,21,0,0,0,0,0,0,0,"Mogor - On Script - Attack Closest Player"),
(@ENTRY,0,6,0,38,0,100,0,12,12,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mogor - On Data Set - Say Line 1"), -- Rokdar the Sundered Lord's death
(@ENTRY,0,7,0,38,0,100,0,13,13,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mogor - On Data Set - Say Line 2"), -- Skra'gath's death
(@ENTRY,0,8,0,38,0,100,0,14,14,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mogor - On Data Set - Say Line 6"), -- Warmaul Champion's death
(@ENTRY,0,9,10,38,0,100,0,1,1,0,0,53,0,@ENTRY,0,0,0,0,1,0,0,0,0,0,0,0,"Mogor - On Data Set - Start WP"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,1,3,0,0,0,0,0,7,0,0,0,0,0,0,0,"Mogor - On Data Set - Say Line 3"),
(@ENTRY,0,11,12,40,0,100,0,4,@ENTRY,0,0,54,100000,0,2,0,0,0,1,0,0,0,0,0,0,0,"Mogor - At WP 4 - Pause Path"),
(@ENTRY,0,12,0,61,0,100,0,0,0,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0,"Mogor - At WP 4 - Run Script"),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mogor - On Script - Say Line 4"),
(@ENTRY*100,9,1,0,0,0,100,0,5000,5000,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mogor - On Script - Set Faction Aggressive"),
(@ENTRY*100,9,2,0,0,0,100,0,9,9,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mogor - On Script - Set React State Aggressive"),
(@ENTRY,0,13,0,21,0,100,0,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mogor - Reached Home - Set Faction Friendly"); -- To prevent issues =)
-- Waypoints
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,-715.036621,7922.948730,59.506184,"Mogor"),
(@ENTRY,2,-720.282532,7916.268066,57.146416,"Mogor"),
(@ENTRY,3,-724.706299,7909.140137,51.817696,"Mogor"),
(@ENTRY,4,-717.016479,7896.937500,48.460430,"Mogor");
-- Texts
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s goes into a frenzy!",16,0,100,0,0,0,"Mogor"),
(@ENTRY,1,0,"Dat was poop! Mogor could put up much better fight den dat!",14,0,100,0,0,0,"Mogor"),
(@ENTRY,2,0,"Mogor not impressed! Skra'gath wuz made of da air and shadow! Soft like da squishy orcies!",14,0,100,0,0,0,"Mogor"),
(@ENTRY,3,0,"Now you face da true champion! I give you chance to run away little one. Run away now before Mogor decim... destyor... Run away before Mogor KILL!",14,0,100,0,0,0,"Mogor"),
(@ENTRY,4,0,"No more chances! Now you pay da ogre!",14,0,100,15,0,0,"Mogor"), -- ONESHOT_ROAR
(@ENTRY,5,0,"No more nice ogre! You hurt Mogor!",14,0,100,0,0,0,"Mogor"),
(@ENTRY,6,0,"WUT!? UNPOSSIBLE!! You fight Mogor now! Mogor destroy!",14,0,100,0,0,0,"Mogor");
-- Brokentoe SAI
SET @ENTRY := 18398;
SET @QUEST := 9962;
SET @SPELL_HOOF_STOMP := 32023;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,9000,11000,11,@SPELL_HOOF_STOMP,0,0,0,0,0,2,0,0,0,0,0,0,0,"Brokentoe - In Combat - Cast Hoof Stomp"),
(@ENTRY,0,1,2,6,0,100,1,0,0,0,0,15,@QUEST,0,0,0,0,0,24,0,0,0,0,0,0,0,"Brokentoe - On Death - Give Quest Credit"),
(@ENTRY,0,2,0,61,0,100,1,0,0,0,0,45,10,10,0,0,0,0,19,18471,0,0,0,0,0,0,"Brokentoe - On Death - Set Data Gurghthock");
-- Murkblood Twin SAI
SET @ENTRY := 18399;
SET @QUEST := 9967;
SET @SPELL_EVISCERATE := 15691;
SET @SPELL_MUTILATE := 32319;
SET @SPELL_SINISTER_STRIKE := 14873;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Murkblood Twin - On Aggro - Say Line 0"),
(@ENTRY,0,1,0,0,0,100,0,1000,1000,2000,2000,11,@SPELL_SINISTER_STRIKE,1,0,0,0,0,2,0,0,0,0,0,0,0,"Murkblood Twin - In Combat - Cast Sinister Strike"),
(@ENTRY,0,2,0,0,0,100,0,5000,6000,11000,12000,11,@SPELL_EVISCERATE,1,0,0,0,0,2,0,0,0,0,0,0,0,"Murkblood Twin - In Combat - Cast Eviscerate"),
(@ENTRY,0,3,0,0,0,100,0,8000,9000,15000,16000,11,@SPELL_MUTILATE,1,0,0,0,0,2,0,0,0,0,0,0,0,"Murkblood Twin - In Combat - Cast Gouge"),
(@ENTRY,0,4,5,6,0,100,1,0,0,0,0,15,@QUEST,0,0,0,0,0,24,0,0,0,0,0,0,0,"Murkblood Twin - On Death - Give Quest Credit"),
(@ENTRY,0,5,0,61,0,100,1,0,0,0,0,45,11,11,0,0,0,0,19,18471,0,0,0,0,0,0,"Murkblood Twin - On Death - Set Data Gurghthock");
-- Texts
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Blue brothers reign supreme!",12,0,100,0,0,0,"Murkblood Twin");
-- Rokdar the Sundered Lord SAI
SET @ENTRY := 18400;
SET @QUEST := 9970;
SET @SPELL_WAR_STOMP := 16727;
SET @SPELL_PUNCTURE := 15976;
SET @SPELL_KNOCK_AWAY := 31389;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Rokdar the Sundered Lord - Out of Combat - Say Line"),
(@ENTRY,0,1,0,0,0,100,0,1000,1000,9000,11000,11,@SPELL_WAR_STOMP,0,0,0,0,0,2,0,0,0,0,0,0,0,"Rokdar the Sundered Lord - In Combat - Cast War Stomp"),
(@ENTRY,0,2,0,31,0,100,0,@SPELL_KNOCK_AWAY,0,0,0,1,0,0,0,0,0,0,2,0,0,0,0,0,0,0,"Rokdar the Sundered Lord - On Target Spellhit War Stomp - Say Line"),
(@ENTRY,0,3,0,0,0,100,0,6000,6000,12000,12000,11,@SPELL_KNOCK_AWAY,0,0,0,0,0,2,0,0,0,0,0,0,0,"Rokdar the Sundered Lord - In Combat - Cast Knock Away"),
(@ENTRY,0,4,0,0,0,100,0,20000,20000,25000,25000,11,@SPELL_PUNCTURE,0,0,0,0,0,2,0,0,0,0,0,0,0,"Rokdar the Sundered Lord - In Combat - Cast Puncture"),
(@ENTRY,0,5,6,6,0,100,1,0,0,0,0,15,@QUEST,0,0,0,0,0,24,0,0,0,0,0,0,0,"Rokdar the Sundered Lord - On Death - Give Quest Credit"),
(@ENTRY,0,6,0,61,0,100,1,0,0,0,0,45,12,12,0,0,0,0,19,18471,0,0,0,0,0,0,"Rokdar the Sundered Lord - On Death - Set Data Gurghthock");
-- Texts
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"ROKDAR SMASH PUNY %t!",14,0,100,0,0,0,"Rokdar the Sundered Lord");
-- Skra'gath SAI
SET @ENTRY := 18401;
SET @QUEST := 9972;
SET @SPELL_DRAINING_TOUCH := 29299;
SET @SPELL_SHADOW_BURST := 32324;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,11,@SPELL_DRAINING_TOUCH,0,0,0,0,0,1,0,0,0,0,0,0,0,"Skra'gath - Out of Combat - Cast Draining Touch"),
(@ENTRY,0,1,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Skra'gath - On Aggro - Say Line"),
(@ENTRY,0,2,0,0,0,100,0,6000,6000,12000,12000,11,@SPELL_SHADOW_BURST,0,0,0,0,0,2,0,0,0,0,0,0,0,"Skra'gath - In Combat - Cast Shadow Burst"),
(@ENTRY,0,3,4,6,0,100,1,0,0,0,0,15,@QUEST,0,0,0,0,0,24,0,0,0,0,0,0,0,"Skra'gath - On Death - Give Quest Credit"),
(@ENTRY,0,4,0,61,0,100,1,0,0,0,0,45,13,13,0,0,0,0,19,18471,0,0,0,0,0,0,"Skra'gath - On Death - Set Data Gurgthock");
-- Texts
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Closer... Come closer... See what the void brings!",14,0,100,0,0,0,"Skra'gath");
-- Warmaul Champion SAI
SET @ENTRY := 18402;
SET @QUEST := 9973;
SET @SPELL_BATTLE_SHOUT := 31403;
SET @SPELL_CHARGE := 32323;
SET @SPELL_MORTAL_STRIKE := 15708;
SET @SPELL_SUNDERING_CLEAVE := 17963;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Warmaul Champion - On Aggro - Say Line"),
(@ENTRY,0,1,0,4,0,100,0,0,0,0,0,11,@SPELL_BATTLE_SHOUT,1,0,0,0,0,1,0,0,0,0,0,0,0,"Warmaul Champion - On Aggro - Cast Battle Shout"),
(@ENTRY,0,2,0,9,0,100,1,5,30,1500,2000,11,@SPELL_CHARGE,1,0,0,0,0,2,0,0,0,0,0,0,0,"Warmaul Champion - On Player Range - Cast Charge"),
(@ENTRY,0,3,0,0,0,100,0,3000,4000,6000,7000,11,@SPELL_MORTAL_STRIKE,1,0,0,0,0,2,0,0,0,0,0,0,0,"Warmaul Champion - In Combat - Cast Mortal Strike"),
(@ENTRY,0,4,0,0,0,100,0,1000,1000,9000,11000,11,@SPELL_SUNDERING_CLEAVE,1,0,0,0,0,2,0,0,0,0,0,0,0,"Warmaul Champion - In Combat - Cast Sundering Cleave"),
(@ENTRY,0,4,5,6,0,100,1,0,0,0,0,15,@QUEST,0,0,0,0,0,24,0,0,0,0,0,0,0,"Warmaul Champion - On Death - Give Quest Credit"),
(@ENTRY,0,5,0,61,0,100,1,0,0,0,0,45,14,14,0,0,0,0,19,18471,0,0,0,0,0,0,"Warmaul Champion - On Death - Set Data Gurgthock");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Piece by piece I will tear this challenger apart... PIECE BY PIECE!",14,0,100,0,0,0,"Warmaul Champion");

-- G.N.E.R.D. Rage
DELETE FROM `achievement_criteria_data` WHERE `criteria_id`=3882;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(3882,5,48890,0,''), -- The aura
(3882,16,324,0,''); -- Holiday must be active

-- [Q] Maintaining Discipline

-- Exhausted Vrykul SAI
SET @ENTRY := 30146;
SET @SPELL_DESPERATE_BLOW := 57395;
SET @SPELL_DISCIPLINING_ROD := 42837;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100+0,@ENTRY*100+1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,0,0,0,0,90,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Exhausted Vrykul - Out of Combat - Set Bytes1 Sit"), -- Not doing this in creature_addon(_template) so that we can cancel this in SAI
(@ENTRY,0,1,2,8,0,100,0,@SPELL_DISCIPLINING_ROD,0,0,0,87,@ENTRY*100+0,@ENTRY*100+1,0,0,0,0,1,0,0,0,0,0,0,0,"Exhausted Vrykul - On Spellhit - Run Random Script"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Exhausted Vrykul - On Spellhit - Set Phase 1"), -- To prevent the same one to give more credits
(@ENTRY*100+0,9,0,0,0,0,100,0,0,0,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Exhausted Vrykul - On Script - Attack Player"),
(@ENTRY*100+0,9,1,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Exhausted Vrykul - On Script - Say Line 0 (random)"),
(@ENTRY*100+1,9,0,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Exhausted Vrykul - On Script - Say Line 1 (random)"),
(@ENTRY*100+1,9,1,0,0,0,100,0,0,0,0,0,91,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Exhausted Vrykul - On Script - Stand Up"),
(@ENTRY*100+1,9,2,0,0,0,100,0,0,0,0,0,5,233,0,0,0,0,0,1,0,0,0,0,0,0,0,"Exhausted Vrykul - On Script - Emote Work"),
(@ENTRY*100+1,9,3,0,0,0,100,0,0,0,0,0,33,29886,0,0,0,0,0,7,0,0,0,0,0,0,0,"Exhausted Vrykul - On Script - Kill Credit"),
(@ENTRY,0,3,0,2,0,100,1,0,15,0,0,11,@SPELL_DESPERATE_BLOW,0,0,0,0,0,2,0,0,0,0,0,0,0,"Exhausted Vrykul - At 15% HP - Cast Desperate Blow");

-- Texts
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Curse you! You will not treat me like a beast!",12,0,100,1,0,0,"Exhausted Vrykul"),
(@ENTRY,0,1,"Enough! I will teach you some manners, wench!",12,0,100,1,0,0,"Exhausted Vrykul"),
(@ENTRY,0,2,"I'd rather die fighting than live like a slave!",12,0,100,1,0,0,"Exhausted Vrykul"),

(@ENTRY,1,0,"Back... to work...",12,0,100,1,0,0,"Exhausted Vrykul"),
(@ENTRY,1,1,"We will have revenge... some day.",12,0,100,1,0,0,"Exhausted Vrykul"),
(@ENTRY,1,2,"You treat us worse than animals!",12,0,100,1,0,0,"Exhausted Vrykul");

-- Captive Vrykul should be mining
DELETE FROM `creature_template_addon` WHERE `entry`=29427;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (29427,0,0,1,233,NULL);

-- [Q] [A/H] The Skettis Offensive
-- Defender Grashna SAI
SET @ENTRY := 22373;
SET @QUEST := 10879;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
UPDATE `quest_template` SET `StartScript`=0,`CompleteScript`=0,`SpecialFlags`=2 WHERE `id`=@QUEST;
DELETE FROM `quest_start_scripts` WHERE `id`=@QUEST;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,@QUEST,0,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0,"Defender Grashna - On Quest Accept - Run Script"),
-- Wave one - no text
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,12,22376,1,60000,0,0,0,8,0,0,0,-1626.12,5402.47,-42.31,2.08131,"Defender Grashna - On Script - Summon Minion of Terokk"),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,12,22376,1,60000,0,0,0,8,0,0,0,-1626.12,5402.47,-42.31,2.08131,"Defender Grashna - On Script - Summon Minion of Terokk"),
-- Wave two
(@ENTRY*100,9,2,0,0,0,100,0,30000,30000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Defender Grashna - On Script - Say Line 0"),
(@ENTRY*100,9,3,0,0,0,100,0,0,0,0,0,12,22376,1,60000,0,0,0,8,0,0,0,-1626.12,5402.47,-42.31,2.08131,"Defender Grashna - On Script - Summon Minion of Terokk"),
(@ENTRY*100,9,4,0,0,0,100,0,0,0,0,0,12,22376,1,60000,0,0,0,8,0,0,0,-1626.12,5402.47,-42.31,2.08131,"Defender Grashna - On Script - Summon Minion of Terokk"),
-- Wave three
(@ENTRY*100,9,5,0,0,0,100,0,30000,30000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Defender Grashna - On Script - Say Line 1"),
(@ENTRY*100,9,6,0,0,0,100,0,0,0,0,0,12,22376,1,60000,0,0,0,8,0,0,0,-1626.12,5402.47,-42.31,2.08131,"Defender Grashna - On Script - Summon Minion of Terokk"),
(@ENTRY*100,9,7,0,0,0,100,0,0,0,0,0,12,22376,1,60000,0,0,0,8,0,0,0,-1626.12,5402.47,-42.31,2.08131,"Defender Grashna - On Script - Summon Minion of Terokk"),
(@ENTRY*100,9,8,0,0,0,100,0,0,0,0,0,12,22376,1,60000,0,0,0,8,0,0,0,-1626.12,5402.47,-42.31,2.08131,"Defender Grashna - On Script - Summon Minion of Terokk"),
-- Wave four
(@ENTRY*100,9,9,0,0,0,100,0,30000,30000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Defender Grashna - On Script - Say Line 2"),
(@ENTRY*100,9,10,0,0,0,100,0,0,0,0,0,12,22375,1,60000,0,0,0,8,0,0,0,-1626.12,5402.47,-42.31,2.08131,"Defender Grashna - On Script - Summon Avatar of Terokk"),
(@ENTRY,0,1,0,38,0,100,0,1,1,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Defender Grashna - On Data Set - Say Line 3");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"More Minions of Terokk are coming!",12,0,100,0,0,0,"Defender Grashna"),
(@ENTRY,1,0,"The invaders persist! Hold them off!",12,0,100,0,0,0,"Defender Grashna"),
(@ENTRY,2,0,"An Avatar of Terokk!! To arms!",12,0,100,0,0,0,"Defender Grashna"),
(@ENTRY,3,0,"The Avatar of Terokk has been defeated! Death to Terokk! Death to Skettis!",12,0,100,0,0,0,"Defender Grashna");
-- Minion of Terokk SAI
SET @ENTRY := 22376;
SET @SPELL_SCREECH := 38021;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,-1647.329956,5443.410156,-40.911999,2.254425,"Minion of Terokk - Just Summoned - Move To Pos"),
(@ENTRY,0,1,0,0,0,100,1,3000,4000,8000,8000,11,@SPELL_SCREECH,0,0,0,0,0,2,0,0,0,0,0,0,0,"Minion of Terokk - In Combat - Cast Terrifying Screech");
-- Avatar of Terokk SAI
SET @ENTRY := 22375;
SET @SPELL_CHARGE := 24193;
SET @SPELL_FEATHER_BURST := 39068;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,-1641.118652,5436.648926,-43.344521,0.803601,"Avatar of Terokk - Just Summoned - Move To Pos"),
(@ENTRY,0,1,0,4,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,-1641.118652,5436.648926,-43.344521,0.803601,"Avatar of Terokk - Just Summoned - Move To Pos"),
(@ENTRY,0,2,3,6,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,6546,0,0,0,0,0,0,"Avatar of Terokk - On Death - Set Data Defender Grashna"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,15,@QUEST,0,0,0,0,0,7,0,0,0,0,0,0,0,"Avatar of Terokk - On Death - Quest Credit"),
(@ENTRY,0,4,0,4,0,100,1,0,0,0,0,11,@SPELL_CHARGE,0,0,0,0,0,2,0,0,0,0,0,0,0,"Avatar of Terokk - On Aggro - Cast Charge"),
(@ENTRY,0,5,0,0,0,100,0,6000,9000,11000,14000,11,@SPELL_FEATHER_BURST,0,0,0,0,0,2,0,0,0,0,0,0,0,"Avatar of Terokk - In Combat - Cast Feather Burst");

-- [Q] A Carver and a Croaker

-- Scalawag Frog SAI
SET @ENTRY := 26503;
UPDATE `creature_template` SET `AIName`='SmartAI',`npcflag`=`npcflag`|1,`IconName`='LootAll' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,64,0,100,0,0,0,0,0,56,35803,1,0,0,0,0,7,0,0,0,0,0,0,0,"Scalawag Frog - Gossip Hello - Create Item Scalawag Frog"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scalawag Frog - Gossip Hello - Force Despawn");

-- [Q] Rivenwood Captives

-- Riven Widow Cocoon SAI
SET @ENTRY := 24210;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
UPDATE `creature` SET `MovementType`=0,`spawndist`=0 WHERE `id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,6,0,25,0,0,0,0,0,12,24211,2,8000,0,0,0,1,0,0,0,0,0,0,0,"Riven Widow Cocoon - On Death - Summon Freed Winterhoof Longrunner (25%)"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,33,24211,0,0,0,0,0,7,0,0,0,0,0,0,0,"Riven Widow Cocoon - On Death - Quest Credit");

-- Freed Winterhoof Longrunner SAI
SET @ENTRY := 24211;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Freed Winterhoof Longrunner - Just Summoned - Say Line 0"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,41,6000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Freed Winterhoof Longrunner - Just Summoned - Forced Desoawn");

-- Texts
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Blessings of the spirits of the land and air upon you.",12,0,100,1,0,0,"Freed Winterhoof Longrunner"),
(@ENTRY,0,1,"I must return. Good hunting to you.",12,0,100,1,0,0,"Freed Winterhoof Longrunner"),
(@ENTRY,0,2,"I owe you a life debt, stranger.",12,0,100,1,0,0,"Freed Winterhoof Longrunner"),
(@ENTRY,0,3,"Strange ghosts walk the land. Be careful!",12,0,100,1,0,0,"Freed Winterhoof Longrunner"),
(@ENTRY,0,4,"Thank you, stranger.",12,0,100,1,0,0,"Freed Winterhoof Longrunner"),
(@ENTRY,0,5,"They took us one by one. I'm sure there are other survivors.",12,0,100,1,0,0,"Freed Winterhoof Longrunner"),
(@ENTRY,0,6,"We should never have traveled through the Rivenwood. Everyone knows this!",12,0,100,1,0,0,"Freed Winterhoof Longrunner"),
(@ENTRY,0,7,"You saved me from certain death. I owe you.",12,0,100,1,0,0,"Freed Winterhoof Longrunner");

-- [Q] Elixir of Pain
-- Stanley SAI
SET @ENTRY := 2274;
SET @QUEST := 502;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,20,0,100,0,@QUEST,0,0,0,36,2275,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stanley - On Quest Complete - Update Entry");
-- Enraged Standley SAI
SET @ENTRY := 2275;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,49,0,0,0,0,0,0,21,0,0,0,0,0,0,0,"Enraged Standley - Just Summoned - Attack Closest Player");

-- revert 2011_11_20_11_world_sai.sql
SET @ENTRY := 26503;
UPDATE `creature_template` SET `AIName`='',`npcflag`=`npcflag`&~1,`IconName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`= @ENTRY AND `source_type`=0;

-- [Q] [A/H] Cleansing of the Orb of Orahil
-- [Q] [A/H] Mana Surges
-- Tabetha SAI
SET @ENTRY := 6546;
SET @QUEST_CLEANSING := 4961;
SET @QUEST_MANA_SURGE := 1957;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
UPDATE `quest_template` SET `StartScript`=0,`CompleteScript`=0 WHERE `id` IN (@QUEST_CLEANSING,@QUEST_MANA_SURGE);
DELETE FROM `quest_start_scripts` WHERE `id` IN (@QUEST_CLEANSING,@QUEST_MANA_SURGE);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100,@ENTRY*100+1,@ENTRY*100+2,@ENTRY*100+3) AND `source_type` IN (0,9);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,@QUEST_CLEANSING,0,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0,"Tabetha - On Quest Accept - Run Script"),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tabetha - On Script - Say Line 0"),
(@ENTRY*100,9,1,0,0,0,100,0,2000,2000,0,0,11,9097,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tabetha - On Script - Cast Summon Demon of the Orb"),

(@ENTRY,0,1,0,20,0,100,0,@QUEST_MANA_SURGE,0,0,0,9,0,0,0,0,0,0,14,28294,103680,0,0,0,0,0,"Tabetha - On Quest Complete - Deactivate Mana Rift (GO)"), -- Make it stop being visual
(@ENTRY,0,2,3,19,0,100,0,@QUEST_MANA_SURGE,0,0,0,9,0,0,0,0,0,0,14,28294,103680,0,0,0,0,0,"Tabetha - On Quest Accept - Activate Mana Rift (GO)"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,87,@ENTRY*100+1,@ENTRY*100+2,@ENTRY*100+3,0,0,0,1,0,0,0,0,0,0,0,"Tabetha - On Quest Accept - Run Random Script"),
(@ENTRY,0,4,0,38,0,100,0,1,1,0,0,87,@ENTRY*100+1,@ENTRY*100+2,@ENTRY*100+3,0,0,0,1,0,0,0,0,0,0,0,"Tabetha - On Data Set - Run Random Script"),
(@ENTRY*100+1,9,0,0,0,0,100,0,0,0,0,0,12,6550,1,600000,0,0,0,8,0,0,0,-4019.22,-3383.91,38.2265,2.7963,"Tabetha - On Random Script - Summon Mana Surge"),
(@ENTRY*100+1,9,1,0,0,0,100,0,0,0,0,0,12,6550,1,600000,0,0,0,8,0,0,0,-4019.22,-3383.91,38.2265,2.7963,"Tabetha - On Random Script - Summon Mana Surge"),
(@ENTRY*100+1,9,2,0,0,0,100,0,0,0,0,0,12,6550,1,600000,0,0,0,8,0,0,0,-4019.22,-3383.91,38.2265,2.7963,"Tabetha - On Random Script - Summon Mana Surge"),
(@ENTRY*100+2,9,0,0,0,0,100,0,0,0,0,0,12,6550,1,600000,0,0,0,8,0,0,0,-4019.99,-3394.54,38.5507,1.8342,"Tabetha - On Random Script - Summon Mana Surge"),
(@ENTRY*100+2,9,1,0,0,0,100,0,0,0,0,0,12,6550,1,600000,0,0,0,8,0,0,0,-4019.99,-3394.54,38.5507,1.8342,"Tabetha - On Random Script - Summon Mana Surge"),
(@ENTRY*100+3,9,0,0,0,0,100,0,0,0,0,0,12,6550,1,600000,0,0,0,8,0,0,0,-4013.29,-3385.14,38.4656,2.3801,"Tabetha - On Random Script - Summon Mana Surge"),
(@ENTRY*100+3,9,1,0,0,0,100,0,0,0,0,0,12,6550,1,600000,0,0,0,8,0,0,0,-4013.29,-3385.14,38.4656,2.3801,"Tabetha - On Random Script - Summon Mana Surge"),
(@ENTRY*100+3,9,2,0,0,0,100,0,0,0,0,0,12,6550,1,600000,0,0,0,8,0,0,0,-4013.29,-3385.14,38.4656,2.3801,"Tabetha - On Random Script - Summon Mana Surge");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Grid yourself, $N. The demon in this orb is a fel beast.",12,0,100,0,0,0,"Tabetha");
-- Mana Surge SAI
SET @ENTRY := 6550;
SET @SPELL_SHOCK := 11824;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,1,0,0,0,0,89,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mana Surge - On Just Summoned - Set Random Movement"),
(@ENTRY,0,1,0,6,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,6546,0,0,0,0,0,0,"Mana Surge - On Death - Set Data Tabetha"),
(@ENTRY,0,2,0,0,0,100,0,3000,4000,8000,8000,11,@SPELL_SHOCK,0,0,0,0,0,2,0,0,0,0,0,0,0,'Mana Surge - In Combat - Cast Shock');
UPDATE `smart_scripts` SET `target_param1`=35 WHERE `entryorguid`=2275 AND `source_type`=0 AND `id`=0;
UPDATE `smart_scripts` SET `target_param1`=35 WHERE `entryorguid`=1806901 AND `source_type`=9 AND `id`=3;
UPDATE `achievement_reward` SET `item`=44810, `sender`=28951, `subject`='A Gobbler not yet Gobbled', `text` = 'Can you believe this Plump Turkey made it through November alive?$B$BSince all this friends have been served up on Bountiful Tables with sides of Cranberry Chutney and Spice Bread Stuffing and... ooo... I''m getting hungry. But anyhow! He''s all alone, now, so I was hoping you might be willing to take care of him. There simply isn''t enough room left in my shop!$B$BJust keep him away from cooking fires, please. He gets this strange look in his eyes around them...' WHERE `entry` IN (3478,3656); -- Pilgrim achievement (A/H)

-- Achievement: Turkey Lurkey
DELETE FROM `achievement_criteria_data` WHERE `type`=2 AND `criteria_id` IN (11158,11159,11160,11161,11162,11163,11164,11165);
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES
(11158, 2, 4, 1), -- Human Rogue
(11159, 2, 4, 4), -- Night Elf Rogue
(11160, 2, 4, 2), -- Orc Rogue
(11161, 2, 4, 8), -- Troll Rogue
(11162, 2, 4, 5), -- Undead Rogue
(11163, 2, 4, 10), -- Blood Elf Rogue
(11164, 2, 4, 3), -- Dwarf Rogue
(11165, 2, 4, 7); -- Gnome Rogue

UPDATE `creature_template` SET `baseattacktime`=2000,`npcflag`=16777216,`unit_flags`=16384,`speed_run`=1.57143,`VehicleId`=321 WHERE `entry`=34819; -- The Stuffing Chair
UPDATE `creature_template` SET `baseattacktime`=2000,`npcflag`=16777216,`unit_flags`=16384,`speed_run`=1.57143,`VehicleId`=321 WHERE `entry`=34824; -- The Sweet Potato Chair
UPDATE `creature_template` SET `baseattacktime`=2000,`npcflag`=16777216,`unit_flags`=16384,`speed_run`=1.57143,`VehicleId`=321 WHERE `entry`=34823; -- The Cranberry Chair
UPDATE `creature_template` SET `baseattacktime`=2000,`npcflag`=16777216,`unit_flags`=16384,`speed_run`=1.57143,`VehicleId`=321 WHERE `entry`=34812; -- The Turkey Chair
UPDATE `creature_template` SET `baseattacktime`=2000,`npcflag`=16777216,`unit_flags`=16384,`speed_run`=1.57143,`VehicleId`=321 WHERE `entry`=34822; -- The Pie Chair
UPDATE `creature_model_info` SET `bounding_radius`=0.8725,`combat_reach`=3.75,`gender`=1 WHERE `modelid`=29330; -- Bountiful Feast Hostess
UPDATE `creature_model_info` SET `bounding_radius`=0.9747,`combat_reach`=4.05,`gender`=0 WHERE `modelid`=29339; -- Dokin Farplain
UPDATE `creature_model_info` SET `bounding_radius`=1,`combat_reach`=0,`gender`=0 WHERE `modelid`=29775; -- Bountiful Barrel
UPDATE `creature_model_info` SET `bounding_radius`=0.8725,`combat_reach`=3.75,`gender`=1 WHERE `modelid`=29342; -- Laha Farplain
UPDATE `creature_model_info` SET `bounding_radius`=1.6,`combat_reach`=0,`gender`=2 WHERE `modelid`=29205; -- Chairs
UPDATE `creature_model_info` SET `bounding_radius`=0.8725,`combat_reach`=3.75,`gender`=1 WHERE `modelid`=29397; -- Dalni Tallgrass
UPDATE `creature_model_info` SET `bounding_radius`=0.8725,`combat_reach`=3.75,`gender`=1 WHERE `modelid`=29401; -- Ondani Greatmill
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1.5,`gender`=0 WHERE `modelid`=29428; -- John Rigsdale
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1.5,`gender`=1 WHERE `modelid`=29427; -- Alice Rigsdale
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1.5,`gender`=0 WHERE `modelid`=29338; -- Miles Standish
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1.5,`gender`=1 WHERE `modelid`=29365; -- Roberta Carter
UPDATE `creature_model_info` SET `bounding_radius`=0.383,`combat_reach`=1.5,`gender`=1 WHERE `modelid`=29340; -- Rose Standish
DELETE FROM `creature_template_addon` WHERE `entry` IN (34654,34678,35343,34684,34819,34824,34823,34812,34822,34685,35342,34713,34787,34786,34677,34712,34683,35341);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(34654,0,0,1,0, NULL), -- Bountiful Feast Hostess
(34678,0,0,2,0, NULL), -- Dokin Farplain
(35343,0,0,1,0, NULL), -- Bountiful Barrel (TB)
(34684,0,0,1,0, NULL), -- Laha Farplain
(34685,0,0,1,0, NULL), -- Dalni Tallgrass
(35342,0,0,1,0, NULL), -- Bountiful Barrel (OG)
(34713,0,0,2,0, NULL), -- Ondani Greatmill
(34787,0,0,1,0, NULL), -- John Rigsdale
(34786,0,0,2,0, NULL), -- Alice Rigsdale
(34677,0,0,2,0, NULL), -- Miles Standish
(34712,0,0,2,0, NULL), -- Roberta Carter
(34683,0,0,1,0, NULL), -- Rose Standish
(35341,0,0,1,0, NULL), -- Bountiful Barrel
(34819,0,0,1,0, '61795'), -- The Stuffing Chair (Stuffing Server)
(34824,0,0,1,0, '61797'), -- The Sweet Potato Chair (Sweet Potatoes Server)
(34823,0,0,1,0, '61793'), -- The Cranberry Chair (Cranberry Server)
(34812,0,0,1,0, '61796'), -- The Turkey Chair (Turkey Server)
(34822,0,0,1,0, '61794'); -- The Pie Chair (Pie Server)
-- Vehicles
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (34819,34824,34823,34812,34822);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES
(34819, 65403, 0, 0, 0, 1, 0, 0, 0), -- The Stuffing Chair (Ride Vehicle)
(34824, 65403, 0, 0, 0, 1, 0, 0, 0), -- The Sweet Potato Chair (Ride Vehicle)
(34823, 65403, 0, 0, 0, 1, 0, 0, 0), -- The Cranberry Chair (Ride Vehicle)
(34812, 65403, 0, 0, 0, 1, 0, 0, 0), -- The Turkey Chair (Ride Vehicle)
(34822, 65403, 0, 0, 0, 1, 0, 0, 0); -- The Pie Chair (Ride Vehicle)
-- Gossips
UPDATE `creature_template` SET `gossip_menu_id`=10575 WHERE `entry`=34654; -- Bountiful Feast Hostess
DELETE FROM `gossip_menu` WHERE `entry`=10575 AND `text_id`=14633;
DELETE FROM `gossip_menu` WHERE `entry`=10589 AND `text_id`=14648;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(10575, 14633),
(10589, 14648);
DELETE FROM `gossip_menu_option` WHERE `menu_id`=10575 AND `id`=0;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(10575, 0, 0, 'How do the Bountiful Tables work?', 1, 1, 10589, 0, 0, 0, NULL);

DELETE FROM `creature_template_addon` WHERE `entry` IN (32823,34645,34783,34682,35337,35338,35340,34711,34676,34708,34644,34744,34710,34675);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(32823,0,0,1,0, NULL), -- Bountiful Table
(34645,0,0,1,0, NULL), -- Elizabeth Barker Winslow
(34783,0,0,1,0, NULL), -- Ranisa Whitebough
(34682,0,0,1,0, NULL), -- Wilmina Holbeck
(35337,0,0,1,0, NULL), -- Bountiful Barrel
(35338,0,0,1,0, NULL), -- Bountiful Barrel
(35340,0,0,1,0, NULL), -- Bountiful Barrel
(34711,0,0,2,0, NULL), -- Mary Allerton
(34676,0,0,2,0, NULL), -- Isaac Allerton
(34708,0,0,2,0, NULL), -- Caitrin Ironkettle
(34644,0,0,2,0, NULL), -- Edward Winslow
(34744,0,0,1,0, NULL), -- Jasper Moore
(34710,0,0,1,0, NULL), -- Ellen Moore
(34675,0,0,2,0, NULL); -- Gregory Tabor
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1.5,`gender`=1 WHERE `modelid`=29394; -- Elizabeth Barker Winslow
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5,`gender`=1 WHERE `modelid`=29430; -- Ranisa Whitebough
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1.5,`gender`=1 WHERE `modelid`=29393; -- Ikaneba Summerset
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1.5,`gender`=1 WHERE `modelid`=29329; -- Wilmina Holbeck
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1.5,`gender`=1 WHERE `modelid`=29388; -- Mary Allerton
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5,`gender`=0 WHERE `modelid`=29391; -- Isaac Allerton
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1.5,`gender`=1 WHERE `modelid`=29324; -- Caitrin Ironkettle
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5,`gender`=0 WHERE `modelid`=29392; -- Edward Winslow
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5,`gender`=0 WHERE `modelid`=29444; -- Jasper Moore
UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1.5,`gender`=1 WHERE `modelid`=29400; -- Ellen Moore
UPDATE `creature_model_info` SET `bounding_radius`=0.306,`combat_reach`=1.5,`gender`=0 WHERE `modelid`=29337; -- Gregory Tabor

UPDATE `creature_template` SET `unit_flags`=33555200,`VehicleId`=323 WHERE `entry`=32830; -- Food Holder
UPDATE `creature_template` SET `unit_flags`=33555200,`VehicleId`=325 WHERE `entry`=32840; -- Plate Holder
UPDATE `creature_template` SET `unit_flags`=33554432,`speed_run`=1,`VehicleId`=320 WHERE `entry`=32823; -- Bountiful Table
UPDATE `creature_template` SET `unit_flags`=33554432,`speed_run`=1 WHERE `entry`=32839; -- Sturdy Plate
UPDATE `creature_template` SET `unit_flags`=33554432 WHERE `entry`=32824; -- [PH] Pilgrim's Bounty Table - Turkey
UPDATE `creature_template` SET `unit_flags`=33554432 WHERE `entry`=32827; -- [PH] Pilgrim's Bounty Table - Cranberry Sauce
UPDATE `creature_template` SET `unit_flags`=33554432 WHERE `entry`=32831; -- [PH] Pilgrim's Bounty Table - Stuffing
UPDATE `creature_template` SET `unit_flags`=33554432 WHERE `entry`=32825; -- [PH] Pilgrim's Bounty Table - Yams
UPDATE `creature_template` SET `unit_flags`=33554432 WHERE `entry`=32829; -- [PH] Pilgrim's Bounty Table - Pie

UPDATE `creature_model_info` SET `bounding_radius`=1.8,`combat_reach`=0,`gender`=2 WHERE `modelid`=28293; -- Bountiful Table
UPDATE `creature_model_info` SET `bounding_radius`=1.75,`combat_reach`=0,`gender`=2 WHERE `modelid`=28310; -- Sturdy Plate
UPDATE `creature_model_info` SET `bounding_radius`=0.125,`combat_reach`=0.25,`gender`=2 WHERE `modelid`=17188; -- [PH] Pilgrim's Bounty Table - X

DELETE FROM `creature_template_addon` WHERE `entry` IN (32830,32840,32839,32824,32827,32831,32829,32825);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(32830,0,0,1,0, NULL), -- Food Holder
(32840,0,0,1,0, NULL), -- Plate Holder
(32839,0,0,1,0, NULL), -- Sturdy Plate
(32824,0,0,1,0, NULL), -- [PH] Pilgrim's Bounty Table - Turkey
(32827,0,0,1,0, NULL), -- [PH] Pilgrim's Bounty Table - Cranberry Sauce
(32831,0,0,1,0, NULL), -- [PH] Pilgrim's Bounty Table - Stuffing
(32825,0,0,1,0, NULL), -- [PH] Pilgrim's Bounty Table - Yams
(32829,0,0,1,0, NULL); -- [PH] Pilgrim's Bounty Table - Pie

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (32823,32830,32840);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES
(32823, 46598, 0, 0, 0, 1, 0, 0, 0), -- Bountiful Table (Ride Vehicle Hardcoded)
(32830, 46598, 0, 0, 0, 1, 0, 0, 0), -- Food Holder (Ride Vehicle Hardcoded)
(32840, 46598, 0, 0, 0, 1, 0, 0, 0); -- Plate Holder (Ride Vehicle Hardcoded)

DELETE FROM `vehicle_template_accessory` WHERE `entry` IN (32823,32830,32840);
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(32823, 34812, 0, 1, 'Bountiful Table - The Turkey Chair', 8, 0),
(32823, 34823, 1, 1, 'Bountiful Table - The Cranberry Chair', 8, 0),
(32823, 34819, 2, 1, 'Bountiful Table - The Stuffing Chair', 8, 0),
(32823, 34824, 3, 1, 'Bountiful Table - The Sweet Potato Chair', 8, 0),
(32823, 34822, 4, 1, 'Bountiful Table - The Pie Chair', 8, 0),
(32823, 32830, 5, 1, 'Bountiful Table - Food Holder', 8, 0),
(32823, 32840, 6, 1, 'Bountiful Table - Plate Holder', 8, 0),
--
(32830, 32824, 0, 1, 'Food Holder - [PH] Pilgrim''s Bounty Table - Turkey', 8, 0),
(32830, 32827, 1, 1, 'Food Holder - [PH] Pilgrim''s Bounty Table - Cranberry Sauce', 8, 0),
(32830, 32831, 2, 1, 'Food Holder - [PH] Pilgrim''s Bounty Table - Stuffing', 8, 0),
(32830, 32825, 3, 1, 'Food Holder - [PH] Pilgrim''s Bounty Table - Yams', 8, 0),
(32830, 32829, 4, 1, 'Food Holder - [PH] Pilgrim''s Bounty Table - Pie', 8, 0),
--
(32840, 32839, 0, 1, 'Plate Holder - Sturdy Plate', 8, 0),
(32840, 32839, 1, 1, 'Plate Holder - Sturdy Plate', 8, 0),
(32840, 32839, 2, 1, 'Plate Holder - Sturdy Plate', 8, 0),
(32840, 32839, 3, 1, 'Plate Holder - Sturdy Plate', 8, 0),
(32840, 32839, 4, 1, 'Plate Holder - Sturdy Plate', 8, 0);

UPDATE `quest_template` SET `RequiredClasses`=0 WHERE `id`=8249; -- Junkboxes Needed
UPDATE `quest_template` SET `RequiredRaces`=0 WHERE `Id`=14171;

DELETE FROM `achievement_criteria_data` WHERE `type` = 11 AND `criteria_id` = 7363;
INSERT INTO `achievement_criteria_data` VALUES
(7363, 11, 0, 0, 'achievement_snakes_whyd_it_have_to_be_snakes');

-- [Q] [H] Teron Gorefiend, I am...
-- Ancient Shadowmoon Spirit SAI
SET @ENTRY := 21797;
SET @QUEST := 10639;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
UPDATE `quest_template` SET `StartScript`=0,`CompleteScript`=0 WHERE `Id`=@QUEST;
DELETE FROM `quest_start_scripts` WHERE `id`=@QUEST;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,@QUEST,0,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0,"Ancient Shadowmoon Spirit - On Quest Accept - Run Script"),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ancient Shadowmoon Spirit - On Script - Say Line 0"),
(@ENTRY*100,9,1,0,0,0,100,0,5000,5000,0,0,12,21877,1,300000,0,0,0,8,0,0,0,-4536.58,1028.76,8.8266,3.72963,"Ancient Shadowmoon Spirit - On Script - Summon Karsius the Ancient Watcher");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Your body is mine! Our fates are forever intertwined!",14,0,100,0,0,0,"Ancient Shadowmoon Spirit");

UPDATE `creature_template` SET `mindmg`=509,`maxdmg`=683,`attackpower`=805,`dmg_multiplier`=150 WHERE `entry`=36597; -- The Lich King 10N
UPDATE `creature_template` SET `mindmg`=509,`maxdmg`=683,`attackpower`=805,`dmg_multiplier`=180 WHERE `entry`=39166; -- The Lich King 25N
UPDATE `creature_template` SET `mindmg`=509,`maxdmg`=683,`attackpower`=805,`dmg_multiplier`=180 WHERE `entry`=39167; -- The Lich King 10H
UPDATE `creature_template` SET `mindmg`=509,`maxdmg`=683,`attackpower`=805,`dmg_multiplier`=225 WHERE `entry`=39168; -- The Lich King 25H

DELETE FROM achievement_criteria_data WHERE criteria_id = 3693;
INSERT INTO achievement_criteria_data VALUES
(3693, 11, 0, 0, 'achievement_bg_control_all_nodes');

# Fix
UPDATE `game_event` SET `start_time` = '2012-02-05 12:01:00' WHERE `evententry` = 3;

# NeatElves
UPDATE `creature_template` SET `mechanic_immune_mask` = '1' WHERE `entry` =9297;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '25',`maxcount` = '4' WHERE `entry` =103713 AND `item` =2835;
UPDATE `gameobject_loot_template` SET `mincountOrRef` = '-818' WHERE `entry` =103713 AND `item` =818;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 103713 AND `item` = 774;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 103713 AND `item` = 1210;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 103713 AND `item` = 5075;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =6643 AND `item` =774;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '25',`groupid` = '1' WHERE `entry` =6643 AND `item` =818;
DELETE FROM `item_loot_template` WHERE `entry` = 20708 AND `item` = 856;
DELETE FROM `item_loot_template` WHERE `entry` = 20708 AND `item` = 2657;
DELETE FROM `item_loot_template` WHERE `entry` = 20708 AND `item` = 5573;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0.3',`mincountOrRef` = '-5574' WHERE `entry` =20708 AND `item` =5574;
DELETE FROM `item_loot_template` WHERE `entry` = 20708 AND `item` = 1210;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '1',`mincountOrRef` = '-818' WHERE `entry` =20708 AND `item` =818;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `item` =34109;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =9363;
DELETE FROM `item_loot_template` WHERE `entry` = 9363 AND `item` = 5568;
UPDATE `item_loot_template` SET `maxcount` = '4' WHERE `entry` =6755 AND `item` =1206;
UPDATE `item_loot_template` SET `maxcount` = '4' WHERE `entry` =6755 AND `item` =1210;
UPDATE `item_loot_template` SET `maxcount` = '4' WHERE `entry` =6755 AND `item` =1529;
UPDATE `item_loot_template` SET `maxcount` = '4' WHERE `entry` =6755 AND `item` =1705;
UPDATE `item_loot_template` SET `maxcount` = '4' WHERE `entry` =6755 AND `item` =5500;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =6755 AND `ChanceOrQuestChance` <100;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 152618 AND `item` in (1206,1210,5075);
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1',`mincountOrRef` = '-818' WHERE `entry` =152618 AND `item` =818;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 152608 AND `item` in (1206,1210,5075);
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1',`mincountOrRef` = '-818' WHERE `entry` =152608 AND `item` =818;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 106319 AND `item` in (1206,1210,5075);
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1',`mincountOrRef` = '-818' WHERE `entry` =106319 AND `item` =818;
DELETE FROM `gameobject_loot_template` WHERE `entry` in (3642,3715,111095,105579,4096) AND `item` in (1206,1210,5075);
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1',`mincountOrRef` = '-818' WHERE `entry` in (3642,3715,111095,105579,4096) AND `item` =818;
DELETE FROM `gameobject_loot_template` WHERE `entry` in (2843,75293,2844,2849,106318,2845,2847,2846) AND `item` in (1206,1210,5075);
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1',`mincountOrRef` = '-818' WHERE `entry` in (2843,75293,2844,2849,106318,2845,2847,2846) AND `item` =818;
DELETE FROM `creature_loot_template` WHERE `entry` = 1030 AND `item` = 814;
DELETE FROM `creature_loot_template` WHERE `entry` = 1031 AND `item` = 814;
DELETE FROM `creature_loot_template` WHERE `entry` = 1032 AND `item` = 814;
DELETE FROM `creature_loot_template` WHERE `entry` = 1033 AND `item` = 814;
DELETE FROM `creature_loot_template` WHERE `entry` = 3286 AND `item` = 814;
DELETE FROM `creature_loot_template` WHERE `entry` = 1731 AND `item` = 814;
DELETE FROM `creature_loot_template` WHERE `entry` = 3992 AND `item` = 814;
DELETE FROM `creature_loot_template` WHERE `entry` = 3993 AND `item` = 814;
DELETE FROM `creature_loot_template` WHERE `entry` = 5836 AND `item` = 814;
DELETE FROM `creature_loot_template` WHERE `entry` = 9336 AND `item` = 814;
DELETE FROM `creature_loot_template` WHERE `entry` = 14433 AND `item` = 814;
UPDATE `creature_loot_template` SET `maxcount` = '1' WHERE `entry` =480 AND `item` =814;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-50' WHERE `item` =814;
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES ('36', '814', '0', '1', '1', '1');

# Fix
UPDATE `creature` SET `position_x` = 2960.72, `position_y` = -3433.41, `position_z` = 298.227, `orientation` = 2.94052 WHERE `guid` = 52342;

# NeatElves
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '90' WHERE `entry` =7190 AND `item` =4234;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '50' WHERE `entry` =7190 AND `item` =10559;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '20' WHERE `entry` =7190 AND `item` =7191;
UPDATE `quest_template` SET `PrevQuestId` = '9791' WHERE `id` =9901;
UPDATE `quest_template` SET `PrevQuestId` = '9773' WHERE `id` =9899;
UPDATE `quest_template` SET `PrevQuestId` = '9773' WHERE `id` =9769;
UPDATE `creature_template` SET `PetSpellDataId` = 12864 WHERE `entry` = 462;
UPDATE `creature_template` SET `PetSpellDataId` = 13049 WHERE `entry` = 704;
UPDATE `creature_template` SET `PetSpellDataId` = 13048 WHERE `entry` = 705;
UPDATE `creature_template` SET `PetSpellDataId` = 13010 WHERE `entry` = 830;
UPDATE `creature_template` SET `PetSpellDataId` = 13019 WHERE `entry` = 831;
UPDATE `creature_template` SET `PetSpellDataId` = 13191 WHERE `entry` = 1015;
UPDATE `creature_template` SET `PetSpellDataId` = 13187 WHERE `entry` = 1022;
UPDATE `creature_template` SET `PetSpellDataId` = 13182 WHERE `entry` = 1023;
UPDATE `creature_template` SET `PetSpellDataId` = 13228 WHERE `entry` = 1140;
UPDATE `creature_template` SET `PetSpellDataId` = 12870 WHERE `entry` = 1194;
UPDATE `creature_template` SET `PetSpellDataId` = 13183 WHERE `entry` = 1353;
UPDATE `creature_template` SET `PetSpellDataId` = 13058 WHERE `entry` = 1508;
UPDATE `creature_template` SET `PetSpellDataId` = 12817 WHERE `entry` = 1512;
UPDATE `creature_template` SET `PetSpellDataId` = 12818 WHERE `entry` = 1513;
UPDATE `creature_template` SET `PetSpellDataId` = 13155 WHERE `entry` = 1780;
UPDATE `creature_template` SET `PetSpellDataId` = 13160 WHERE `entry` = 1781;
UPDATE `creature_template` SET `PetSpellDataId` = 13158 WHERE `entry` = 1986;
UPDATE `creature_template` SET `PetSpellDataId` = 12885 WHERE `entry` = 2172;
UPDATE `creature_template` SET `PetSpellDataId` = 13034 WHERE `entry` = 2275;
UPDATE `creature_template` SET `PetSpellDataId` = 13147 WHERE `entry` = 2707;
UPDATE `creature_template` SET `PetSpellDataId` = 12858 WHERE `entry` = 2829;
UPDATE `creature_template` SET `PetSpellDataId` = 12859 WHERE `entry` = 2830;
UPDATE `creature_template` SET `PetSpellDataId` = 12861 WHERE `entry` = 2831;
UPDATE `creature_template` SET `PetSpellDataId` = 13215 WHERE `entry` = 3632;
UPDATE `creature_template` SET `PetSpellDataId` = 13180 WHERE `entry` = 3637;
UPDATE `creature_template` SET `PetSpellDataId` = 13032 WHERE `entry` = 3862;
UPDATE `creature_template` SET `PetSpellDataId` = 12826 WHERE `entry` = 3866;
UPDATE `creature_template` SET `PetSpellDataId` = 12814 WHERE `entry` = 3868;
UPDATE `creature_template` SET `PetSpellDataId` = 12895 WHERE `entry` = 4250;
UPDATE `creature_template` SET `PetSpellDataId` = 13161 WHERE `entry` = 4264;
UPDATE `creature_template` SET `PetSpellDataId` = 12918 WHERE `entry` = 4342;
UPDATE `creature_template` SET `PetSpellDataId` = 13207 WHERE `entry` = 4355;
UPDATE `creature_template` SET `PetSpellDataId` = 13210 WHERE `entry` = 4356;
UPDATE `creature_template` SET `PetSpellDataId` = 13208 WHERE `entry` = 4357;
UPDATE `creature_template` SET `PetSpellDataId` = 12946 WHERE `entry` = 4398;
UPDATE `creature_template` SET `PetSpellDataId` = 12947 WHERE `entry` = 4399;
UPDATE `creature_template` SET `PetSpellDataId` = 12911 WHERE `entry` = 4660;
UPDATE `creature_template` SET `PetSpellDataId` = 12898 WHERE `entry` = 5829;
UPDATE `creature_template` SET `PetSpellDataId` = 13064 WHERE `entry` = 5834;
UPDATE `creature_template` SET `PetSpellDataId` = 13189 WHERE `entry` = 6581;
UPDATE `creature_template` SET `PetSpellDataId` = 12840 WHERE `entry` = 6789;
UPDATE `creature_template` SET `PetSpellDataId` = 13221 WHERE `entry` = 9683;
UPDATE `creature_template` SET `PetSpellDataId` = 13036 WHERE `entry` = 10077;
UPDATE `creature_template` SET `PetSpellDataId` = 12833 WHERE `entry` = 12037;
UPDATE `creature_template` SET `PetSpellDataId` = 12905 WHERE `entry` = 14228;
UPDATE `creature_template` SET `PetSpellDataId` = 13200 WHERE `entry` = 14232;
UPDATE `creature_template` SET `PetSpellDataId` = 13065 WHERE `entry` = 14234;
UPDATE `creature_template` SET `PetSpellDataId` = 12876 WHERE `entry` = 14268;
UPDATE `creature_template` SET `PetSpellDataId` = 12832 WHERE `entry` = 14280;
UPDATE `creature_template` SET `PetSpellDataId` = 13264 WHERE `entry` = 14283;
UPDATE `creature_template` SET `PetSpellDataId` = 13354 WHERE `entry` = 14430;
UPDATE `creature_template` SET `PetSpellDataId` = 13166 WHERE `entry` = 14472;
UPDATE `creature_template` SET `PetSpellDataId` = 12825 WHERE `entry` = 14965;
UPDATE `creature_template` SET `PetSpellDataId` = 13376 WHERE `entry` = 15068;
UPDATE `creature_template` SET `PetSpellDataId` = 12815 WHERE `entry` = 16173;
UPDATE `creature_template` SET `PetSpellDataId` = 12816 WHERE `entry` = 16174;
UPDATE `creature_template` SET `PetSpellDataId` = 12827 WHERE `entry` = 16175;
UPDATE `creature_template` SET `PetSpellDataId` = 12822 WHERE `entry` = 16354;
UPDATE `creature_template` SET `PetSpellDataId` = 12823 WHERE `entry` = 16355;
UPDATE `creature_template` SET `PetSpellDataId` = 13149 WHERE `entry` = 16453;
UPDATE `creature_template` SET `PetSpellDataId` = 13103 WHERE `entry` = 16520;
UPDATE `creature_template` SET `PetSpellDataId` = 12925 WHERE `entry` = 17144;
UPDATE `creature_template` SET `PetSpellDataId` = 13008 WHERE `entry` = 17216;
UPDATE `creature_template` SET `PetSpellDataId` = 13009 WHERE `entry` = 17217;
UPDATE `creature_template` SET `PetSpellDataId` = 12841 WHERE `entry` = 17347;
UPDATE `creature_template` SET `PetSpellDataId` = 12880 WHERE `entry` = 17372;
UPDATE `creature_template` SET `PetSpellDataId` = 12881 WHERE `entry` = 17373;
UPDATE `creature_template` SET `PetSpellDataId` = 13115 WHERE `entry` = 17522;
UPDATE `creature_template` SET `PetSpellDataId` = 13119 WHERE `entry` = 17523;
UPDATE `creature_template` SET `PetSpellDataId` = 12850 WHERE `entry` = 17661;
UPDATE `creature_template` SET `PetSpellDataId` = 12957 WHERE `entry` = 18280;
UPDATE `creature_template` SET `PetSpellDataId` = 12887 WHERE `entry` = 18880;
UPDATE `creature_template` SET `PetSpellDataId` = 13167 WHERE `entry` = 18983;
UPDATE `creature_template` SET `PetSpellDataId` = 13246 WHERE `entry` = 19429;
UPDATE `creature_template` SET `PetSpellDataId` = 12926 WHERE `entry` = 20075;
UPDATE `creature_template` SET `PetSpellDataId` = 13106 WHERE `entry` = 20752;
UPDATE `creature_template` SET `PetSpellDataId` = 13109 WHERE `entry` = 21373;
UPDATE `creature_template` SET `PetSpellDataId` = 13247 WHERE `entry` = 21891;
UPDATE `creature_template` SET `PetSpellDataId` = 13248 WHERE `entry` = 21904;
UPDATE `creature_template` SET `PetSpellDataId` = 13154 WHERE `entry` = 22132;
UPDATE `creature_template` SET `PetSpellDataId` = 5884 WHERE `entry` = 120;
UPDATE `creature_template` SET `PetSpellDataId` = 8312 WHERE `entry` = 1811;
UPDATE `creature_template` SET `PetSpellDataId` = 5839 WHERE `entry` = 3460;
UPDATE `creature_template` SET `PetSpellDataId` = 5957 WHERE `entry` = 4482;
UPDATE `creature_template` SET `PetSpellDataId` = 8281 WHERE `entry` = 4691;
UPDATE `creature_template` SET `PetSpellDataId` = 5922 WHERE `entry` = 4725;
UPDATE `creature_template` SET `PetSpellDataId` = 5792 WHERE `entry` = 4862;
UPDATE `creature_template` SET `PetSpellDataId` = 8286 WHERE `entry` = 5986;
UPDATE `creature_template` SET `PetSpellDataId` = 5870 WHERE `entry` = 5987;
UPDATE `creature_template` SET `PetSpellDataId` = 5871 WHERE `entry` = 5989;
UPDATE `creature_template` SET `PetSpellDataId` = 8841 WHERE `entry` = 14274;
UPDATE `creature_template` SET `PetSpellDataId` = 11562 WHERE `entry` = 15653;
UPDATE `creature_template` SET `PetSpellDataId` = 11593 WHERE `entry` = 17198;
UPDATE `creature_template` SET `PetSpellDataId` = 13244 WHERE `entry` = 17221;
UPDATE `creature_template` SET `PetSpellDataId` = 11563 WHERE `entry` = 17526;
UPDATE `creature_template` SET `PetSpellDataId` = 11596 WHERE `entry` = 17620;
UPDATE `creature_template` SET `PetSpellDataId` = 13087 WHERE `entry` = 17736;
UPDATE `creature_template` SET `PetSpellDataId` = 10480 WHERE `entry` = 18851;
UPDATE `creature_template` SET `PetSpellDataId` = 10482 WHERE `entry` = 18854;
UPDATE `creature_template` SET `PetSpellDataId` = 11573 WHERE `entry` = 18878;
UPDATE `creature_template` SET `PetSpellDataId` = 5830 WHERE `entry` = 19031;
UPDATE `creature_template` SET `PetSpellDataId` = 11588 WHERE `entry` = 19785;
UPDATE `creature_template` SET `PetSpellDataId` = 13355 WHERE `entry` = 22173;
UPDATE `creature_template` SET `PetSpellDataId` = 12926 WHERE `entry` = 22163;
UPDATE `creature_template` SET `PetSpellDataId` = 13167 WHERE `entry` = 22162;
UPDATE `creature_template` SET `PetSpellDataId` = 13248 WHERE `entry` = 21990;
UPDATE `creature_template` SET `PetSpellDataId` = 13247 WHERE `entry` = 21989;
UPDATE `creature_template` SET `PetSpellDataId` = 12890 WHERE `entry` = 21841;
UPDATE `creature_template` SET `PetSpellDataId` = 10480 WHERE `entry` = 20517;
UPDATE `creature_template` SET `PetSpellDataId` = 13246 WHERE `entry` = 20686;
UPDATE `creature_template` SET `PetSpellDataId` = 11583 WHERE `entry` = 20999;
UPDATE `creature_template` SET `PetSpellDataId` = 13108 WHERE `entry` = 21372;
UPDATE `creature_template` SET `PetSpellDataId` = 13087 WHERE `entry` = 20186;
UPDATE `creature_template` SET `PetSpellDataId` = 12956 WHERE `entry` = 20185;
UPDATE `creature_template` SET `PetSpellDataId` = 12891 WHERE `entry` = 20173;
UPDATE `creature_template` SET `PetSpellDataId` = 13040 WHERE `entry` = 22737;
UPDATE `creature_template` SET `PetSpellDataId` = 13264 WHERE `entry` = 22767;
UPDATE `creature_template` SET `PetSpellDataId` = 8311 WHERE `entry` = 17042;
UPDATE `creature_template` SET `PetSpellDataId` = 13236 WHERE `entry` = 23873;
UPDATE `creature_template` SET `PetSpellDataId` = 13348 WHERE `entry` = 24043;
UPDATE `creature_template` SET `PetSpellDataId` = 12927 WHERE `entry` = 24047;
UPDATE `creature_template` SET `PetSpellDataId` = 13364 WHERE `entry` = 24064;
UPDATE `creature_template` SET `PetSpellDataId` = 12921 WHERE `entry` = 24138;
UPDATE `creature_template` SET `PetSpellDataId` = 13347 WHERE `entry` = 24530;
UPDATE `creature_template` SET `PetSpellDataId` = 13071 WHERE `entry` = 24479;
UPDATE `creature_template` SET `PetSpellDataId` = 8298 WHERE `entry` = 24726;
UPDATE `creature_template` SET `PetSpellDataId` = 9111 WHERE `entry` = 25738;
UPDATE `creature_template` SET `PetSpellDataId` = 5874 WHERE `entry` = 30613;
UPDATE `creature_template` SET `PetSpellDataId` = 13040 WHERE `entry` = 31975;
UPDATE `creature_template` SET `PetSpellDataId` = 13264 WHERE `entry` = 32098;
UPDATE `creature_ai_scripts` SET `action2_param1` = '34386' WHERE `id` =1881851;
UPDATE `creature_ai_scripts` SET `action2_param1` = '34386' WHERE `id` =1900951;
UPDATE `creature_ai_scripts` SET `action2_param1` = '34386' WHERE `id` =2123651;
UPDATE `creature_ai_scripts` SET `action2_param1` = '34386' WHERE `id` =2123751;
UPDATE `creature_template` SET `faction_A` = '2018',`faction_H` = '2018' WHERE `entry` =26676;
DELETE FROM `creature` WHERE `guid` = 127857;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id`=3882;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`) VALUES (3882,5,48890,0),(3882,16,324,0);
REPLACE INTO `creature_ai_texts` VALUES ('-242111', 'Thank you, stranger.', '', '', '', '', '', '', '', '', '0', '0', '0', '0', 'ytdb');
REPLACE INTO `creature_ai_texts` VALUES ('-242112', 'Blessings of the spirits of the land and air upon you.', '', '', '', '', '', '', '', '', '0', '0', '0', '0', 'ytdb');
REPLACE INTO `creature_ai_texts` VALUES ('-242113', 'We should never have traveled through the Rivenwood. Everyone knows this!', '', '', '', '', '', '', '', '', '0', '0', '0', '0', 'ytdb');
REPLACE INTO `creature_ai_scripts` VALUES ('2421151', '24211', '11', '0', '100', '0', '0', '0', '0', '0', '1', '-242111', '-242112', '-242113', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '24211';
DELETE FROM `creature` WHERE `guid` = 12629;
UPDATE `creature_template` SET `skinloot` = '0' WHERE `entry` =2275;
DELETE FROM `skinning_loot_template` WHERE `entry` = 2275;
UPDATE `creature_template` SET `skinloot` = '0' WHERE `entry` =2274;
DELETE FROM `skinning_loot_template` WHERE `entry` = 2274;
DELETE FROM `creature_loot_template` WHERE `entry` = 14280 AND `item` = 3476;
DELETE FROM `creature_loot_template` WHERE `entry` = 14279 AND `item` = 3477;
UPDATE creature SET position_x = '-1129.058472', position_y = '-1351.496216', position_z = '54.588726', orientation = '0.512919' WHERE guid = '11625';
UPDATE creature SET position_x = '-439.924530', position_y = '-932.249268', position_z = '39.414852', orientation = '4.635467' WHERE guid = '11747';
DELETE FROM `creature_loot_template` WHERE `entry` = 2406 AND `item` = 3496;
DELETE FROM `creature_loot_template` WHERE `entry` = 2407 AND `item` = 3496;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(40805, 2712, 0, 1, 1, -2347.72, -1690.61, -34.7886, 2.30383, 0, 0, 0.913544, 0.406739, 180, 100, 1),
(40807, 2712, 0, 1, 1, -2346.7, -1622.4, -32.7284, 0.296705, 0, 0, 0.147809, 0.989016, 180, 100, 1),
(40806, 2712, 0, 1, 1, -2311.44, -1775.69, -38.396, 2.87979, 0, 0, 0.991445, 0.130528, 180, 100, 1),
(40803, 2712, 0, 1, 1, -2298.33, -1623.97, -65.0526, -2.00713, 0, 0, -0.843392, 0.537299, 180, 100, 1),
(40808, 2712, 0, 1, 1, -2294.67, -1563.63, -39.7692, 2.40855, 0, 0, 0.93358, 0.35837, 180, 100, 1),
(40804, 2712, 0, 1, 1, -2292.4, -1676.4, -62.0808, -1.39626, 0, 0, -0.642786, 0.766046, 180, 100, 1),
(40809, 2712, 0, 1, 1, -2278.12, -1764, -29.885, 0.349066, 0, 0, 0.173648, 0.984808, 180, 100, 1),
(4076, 2712, 0, 1, 1, -2263.77, -1499.15, -42.0514, -0.261798, 0, 0, -0.130525, 0.991445, 180, 100, 1),
(5405, 2712, 0, 1, 1, -2224.82, -1608.23, -54.794, 2.33874, 0, 0, 0.920505, 0.390732, 180, 100, 1),
(2700, 2712, 0, 1, 1, -2208.79, -1749.48, -64.7426, 0.855211, 0, 0, 0.414693, 0.909961, 180, 100, 1),
(7050, 2712, 0, 1, 1, -2165.82, -1741.98, -52.3526, 2.80997, 0, 0, 0.986285, 0.165053, 180, 100, 1),
(7053, 2712, 0, 1, 1, -2164.48, -1571.8, -48.4028, 1.62316, 0, 0, 0.725376, 0.688353, 180, 100, 1);
UPDATE `creature_template` SET `faction_A` = '14',`faction_H` = '14' WHERE `entry` =2056;
UPDATE `creature_ai_scripts` SET `action1_param2` = '-10001' WHERE `id` =205651;
REPLACE INTO `creature_ai_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES ('-10001', 'My minions...\r\nThe time for conquest approaches quickly. The rebels of Lordaeron are small, and weak, and know not the joy of serving our Lich King. Make ready for battle, my creations. We will drive our foes from Silverpine, then bring the very tides of war to their very capital! Death, and praise the Lich King! ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '2056');
UPDATE `event_scripts` SET `x` = '3211.019',`y` = '5348.486',`z` = '144.56',`o` = '5.31' WHERE `id` =14029;
DELETE FROM `creature` WHERE `guid` = 76138;
DELETE FROM `creature` WHERE `guid` = 76067;
DELETE FROM `creature` WHERE `id` = 20327;
DELETE FROM `creature` WHERE `id` = 21811;
DELETE FROM `creature` WHERE `id` = 21853;
DELETE FROM `creature` WHERE `guid` = 76082;
UPDATE creature SET position_x = '3000.636475', position_y = '5591.983398', position_z = '147.373001', orientation = '0.985313' WHERE guid = '61757';
UPDATE creature SET position_x = '3020.654541', position_y = '5590.092773', position_z = '147.626999', orientation = '3.764840' WHERE guid = '61756';
UPDATE creature SET position_x = '3051.549316', position_y = '5479.072754', position_z = '146.079010', orientation = '1.231141' WHERE guid = '60898';
UPDATE creature SET position_x = '2998.618896', position_y = '5524.142578', position_z = '147.378311', orientation = '0.525068' WHERE guid = '60877';
UPDATE creature SET position_x = '3029.365967', position_y = '5521.751953', position_z = '147.601700', orientation = '1.828042' WHERE guid = '61759';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '10' WHERE `item` =31489;
UPDATE `creature_template` SET `lootid` = '0' WHERE `entry` =21811;
DELETE FROM `creature_loot_template` WHERE `entry` = 21811;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(43391, 187039, 530, 1, 2, 3727.06, 5909.39, 266.414, 3.07395, 0, 0, 0.999428, 0.0338149, 180, 100, 1),
(43390, 187039, 530, 1, 2, 3712.68, 6107.97, 266.461, 4.26382, 0, 0, 0.846663, -0.53213, 180, 100, 1),
(43387, 187039, 530, 1, 2, 3686.08, 6173.06, 266.134, 1.90449, 0, 0, 0.814719, 0.579856, 180, 100, 1),
(43378, 187039, 530, 1, 2, 3720.59, 6183.41, 265.501, 2.78335, 0, 0, 0.984001, 0.178165, 180, 100, 1),
(43356, 187039, 530, 1, 2, 3765.71, 6170.88, 266.224, 6.2501, 0, 0, 0.0165418, -0.999863, 180, 100, 1),
(43353, 187039, 530, 1, 2, 3792.39, 6161.76, 266.065, 2.40636, 0, 0, 0.933187, 0.359392, 180, 100, 1),
(43340, 187039, 530, 1, 2, 3783.95, 6084.12, 266.18, 0.831637, 0, 0, 0.403939, 0.914786, 180, 100, 1),
(43338, 187039, 530, 1, 2, 3809.84, 6123.52, 265.946, 5.3948, 0, 0, 0.429729, -0.902958, 180, 100, 1),
(43327, 187039, 530, 1, 2, 3802.5, 6071.06, 267.132, 2.83991, 0, 0, 0.988645, 0.15027, 180, 100, 1),
(43326, 187039, 530, 1, 2, 3841.06, 6025.76, 270.227, 4.70759, 0, 0, 0.708801, -0.705408, 180, 100, 1),
(7059, 187039, 530, 1, 2, 3925.84, 6095.39, 271.076, 0.770403, 0, 0, 0.375746, 0.926723, 180, 100, 1),
(7063, 187039, 530, 1, 2, 3932.46, 6028.16, 269.179, 6.05923, 0, 0, 0.111744, -0.993737, 180, 100, 1),
(7064, 187039, 530, 1, 2, 3975.32, 6078.22, 266.584, 1.28244, 0, 0, 0.598174, 0.801367, 180, 100, 1);
DELETE FROM `creature_loot_template` WHERE `item` = 34246;
REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
(2222651, 22226, 0, 0, 100, 1, 2500, 2500, 15000, 20000, 11, 36093, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb-Koi-Koi Spirit - Casts Ghost Strike'),
(2132651, 21326, 0, 0, 100, 1, 10000, 10000, 20000, 20000, 11, 37696, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb-Raven''s Wood Leafbeard - Casts Force of Nature'),
(2132652, 21326, 8, 0, 100, 1, 38606, -1, 0, 0, 36, 22233, 0, 0, 41, 30000, 0, 0, 24, 0, 0, 0, 'ytdb-q10830');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` in (22226,21326);
DELETE FROM `spell_area` WHERE `spell` = 37475;
DELETE FROM `creature` WHERE `guid` = 47988;
UPDATE `creature_template` SET `faction_A` = '1802',`faction_H` = '1802' WHERE `entry` =34653;
REPLACE INTO `spell_scripts` (`id`, `delay`, `command`, `datalong`) VALUES ('37473', '0', '15', '37466');
REPLACE INTO `creature_ai_scripts` VALUES ('1998951', '19989', '6', '0', '100', '0', '0', '0', '0', '0', '11', '37473', '6', '23', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q10607');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '19989';
REPLACE INTO `creature_ai_scripts` VALUES ('1998851', '19988', '6', '0', '100', '0', '0', '0', '0', '0', '11', '37473', '6', '23', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q10607');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '19988';
REPLACE INTO `creature_ai_scripts` VALUES ('2032951', '20329', '6', '0', '100', '0', '0', '0', '0', '0', '11', '37473', '6', '23', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q10607');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '20329';
REPLACE INTO `creature_ai_scripts` VALUES ('1999051', '19990', '6', '0', '100', '0', '0', '0', '0', '0', '11', '37473', '6', '23', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q10607');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '19990';
UPDATE `creature_template` SET `gossip_menu_id`=10575 WHERE `entry`in (34654,34653);
DELETE FROM `gossip_menu_option` WHERE `menu_id`=10575 AND `id`=0;
DELETE FROM `gossip_menu` WHERE `entry`=10575 AND `text_id`=14633;
DELETE FROM `gossip_menu` WHERE `entry`=10589 AND `text_id`=14648;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(10575, 14633),(10589, 14648);
DELETE FROM `gossip_menu` WHERE `entry` =50149;
UPDATE `item_template` SET `BuyCount`=5 WHERE `entry` IN (44835,44853,46797,46793,46796);
UPDATE `creature_template` SET `faction_A` = '1801',`faction_H` = '1801' WHERE `entry` =34654;
UPDATE `item_template` SET `BuyCount`=5 WHERE `entry` IN (44854,46784,44855);
DELETE FROM `gameobject` WHERE (`guid`=5691);
DELETE FROM `gameobject` WHERE (`guid`=5693);
UPDATE `gameobject_template` SET `faction` = 0 WHERE `entry` = 201872;
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('11142', '5', '66303', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('11142', '5', '66304', '0');
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES ('11142', '16', '404', '0');
DELETE FROM `creature` WHERE `id` = 6913;

# Tronik
UPDATE `creature_loot_template` SET `mincountOrRef`='1', `maxcount`='1' WHERE `item`='33054';

# WDB
INSERT IGNORE INTO `npc_text` SET `ID`=16541,`prob0`=1,`text0_0`='Are you ready to train, warrior?',`text0_1`='Are you ready to train, warrior?',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17421,`prob0`=1,`text0_0`='I assume you have heard of the hole by now, $r.  If not, you are going to know a whole lot about it soon.',`text0_1`='I assume you have heard of the hole by now, $r.  If not, you are going to know a whole lot about it soon.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18156,`prob0`=1,`text0_0`='Yes? The Arch Druid is resting.$B$BI am sure he appreciates your visit, but it is best not to disturb him.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17905,`prob0`=1,`text0_0`='If you seek training in the Old Ways, I cannot help you.',`text0_1`='If you seek training in the Old Ways, I cannot help you.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15393,`prob0`=1,`text0_0`='We must hold fast. If Northwatch falls, there is nothing to our backs but the sea!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15397,`prob0`=1,`text0_0`='All hands topside! Run ''em through!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=22,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15398,`prob0`=1,`text0_0`='Assuming we make it through this, it''ll take a month to clean the brains off my brasswork.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=274,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15411,`prob0`=1,`text0_0`='Quick is the word and sharp is the action, $gMister:Miss; $N.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=273,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15409,`prob0`=1,`text0_0`='They sunk the Collingwood off the coast, but we managed to drag her carronades to the shore.$B$BThose animals won''t set one filthy green foot on this beach! Not while I''ve got powder!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15455,`prob0`=1,`text0_0`='<The unfortunate soldier you find at the side of the road has been gutted with what appears to have been long knives. Rolling the body over, you notice teeth marks.>$B$B<Could wild animals have done this?> ',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15481,`prob0`=1,`text0_0`='There''s some good huntin'' to be found here in the Barrens, if you''ve the stomach for it.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15459,`prob0`=1,`text0_0`='Look at this mess. I was told the Barrens would be... barren.$B$BThis jungle appeared overnight and has already swallowed up my camp and choked off the roads!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15483,`prob0`=1,`text0_0`='',`text0_1`='The Corporal''s a good man, but he''s got tunnel-vision when it comes to his orders.$B$BSomething unnatural is happening to the land here, $N. This jungle shouldn''t be here!',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15471,`prob0`=1,`text0_0`='This ain''t the first time I been stuck up to me teef in a jungle that up an'' done ambushed me. I been all over the world, $gson:missy;, an'' I''ll be hog-smacked if this one''s gonna be the end of me.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15473,`prob0`=1,`text0_0`='Back in the day ''afore the day, me and me mates didn''t have much in the way of drinkin'' money, as is we spent our pay on booze an'' that didn''t leave none left over for more casual drinkin''.$B$BSo we decide we''re gonna comm-an-deer one of them epic-sized kegs of ol'' Barkerstout from the loft of Barky''s Brewpub.$B$BWe chopped the supports out with hatchets and that ol'' boy just up an'' ROLLED on out through the side of the thatch roof like a baby bird leavin'' the nest, but some sort of big round beer bird, that could crush a man.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15474,`prob0`=1,`text0_0`='You know why they call it stout? ''Cuz once it were rolling down the hill it couldnae be bargained wit'', couldnae be reasoned wit''. It felt no pity, no remorse, no fear.$B$BIt were like a beervalanche, which is a damn fine way to die.$B$BSo that keg explodered soon as it hit the orphanage at the bottom of the hill, and I dove inta the mud puddle wit'' me mouth open, an''... Come to think of it, I don''t ''member how this story ends. Wanna see the tattoo?$B$B<Ol'' Durty Pete drops his pants.>',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=22,`em0_4`=0,`em0_5`=14,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15475,`prob0`=1,`text0_0`='You see this here gun, $gboy:missy;?$B$B<Ol'' Durty Pete casually waves his weapon directly at your face.>$B$BThis here gun''s seen action on every continent but for Northrend. It''s saved me life more times than I can count: Seven. One time, "Big Mackie" MacDungal - not the wee MacDungal now, but his pappy - offered me his youngest daughter in barter for me gun.$B$BLet me tell you somethin'' about Edie: she and me gun had a lot in common. Wide-mouthed. Buck-toofed. Dangerous from the biz-ness end. Likin'' to go oft half-cocked.$B$BYou heard about the time wee Edie bet Chuck Brandybeard 25 silver she could kick ''im in the head so hard he would weep snot?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=6,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15477,`prob0`=1,`text0_0`='They didn''t always call me Ol'' Durty Pete.$B$BOnce, when I were young an'' durty, I thought I''d impress a sweet buxom lass named Bellie with me chiselin'' styles.$B$BOl'' Bellie! She were somthin'' else. Firm, that one. All big but for the middle, like they was meant to be.$B$BSo I found me a chunk of limestone white like her skin and I set about to chiselin'' and carvin'' and creatin'' what you''d call a masterpiece, but I got me scale all wrong, see? I ended up with an enormous, what would you call it? Butt.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=23,`em0_4`=0,`em0_5`=5,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15478,`prob0`=1,`text0_0`='You heard me, $glad:lass; - a butt! Not a fitting gift for a lady. But I liked it. So I offered to donate it to me local drinkin'' hole.$B$BThey called it Durty Pete''s Bottom, and eventually named the pub after it, afore them orcs burned it to toast, and all that''s left today is me big blackened bottom amidst a heap of rubble.$B$B<Ol'' Durty Pete sheds a single tear.> ',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=1,`em0_4`=0,`em0_5`=18,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15479,`prob0`=1,`text0_0`='Back in the war - not that one, the udder one - when them orcs rode dragons? Me and Whistler set out to cross from Southshore to Menethil Harbor inna rowboat we''d built outta knotty pine while soused to our eyeballs on Cherry Grog.$B$BAn'' we got about a third the way by my reckoning, which were mostly far judgin'' by the fact that there were nothing all around us but the sea, when my feet got to start feelin'' wet.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=23,`em0_4`=0,`em0_5`=5,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15480,`prob0`=1,`text0_0`='Now let me tell you somethin'' about knotty pine, it''s got knots, $gson:missy;.$B$BAnd knots is just big holes in trees, which makes for a stupid rowboat and I blamed Whistler but he had his own ideas about my choice of tar (I chose to forget it) so we decided to settle it by drinking.$B$BWhen the grog ran out, that''s when we had the knife fight. For sport.$B$BAnyways, we never made it to Menethil, and I''m pretty sure one or both of us drowned.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=6,`em0_4`=0,`em0_5`=273,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15476,`prob0`=1,`text0_0`='Ayup, word got around fast and soon the whole of Menethil gathered around to see it through, with bettin'' and fruit vendors and the like, an'' there were some consternation over the rules that had to be ironed out with a big rigamarole, ''til the mayor hisself agreed that weepin'' blood tain''t count fer nothin''.$B$BSo Chuck kneels down an'' she gets up on a stool and REARS back with that big ''ol thick leg of hers and - but I''m digressin''. Point is, I shoulda taken the deal, ''cuz this gun''s a bit dodgy.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=5,`em0_4`=0,`em0_5`=274,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15482,`prob0`=1,`text0_0`='We''re still cut off from Forward Command, but thanks to your ''negotiations'' with the quilboar, we should be able to re-open the roads with a little elbow grease.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15288,`prob0`=1,`text0_0`='As Druids, we are tasked with protecting the balance of nature. My life''s work has gone against this. In my folly, I have sewn chaos, and this deviant crop must be reaped before it spreads further.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15517,`prob0`=1,`text0_0`='$N! How can I help you, old friend?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15495,`prob0`=1,`text0_0`='What is your name, $c? $N?$B$BWelcome to the Barrens. You are standing at the vanguard of one of our most important operations on this continent. I would be honored if you were to lend us your strength.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15496,`prob0`=1,`text0_0`='I want you to know that I sincerely appreciate your aid, $c. We are not fighting beasts out here, but a foe both cunning and fanatical. We must stick together or hang separately.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15519,`prob0`=1,`text0_0`='You might not think that a Worgen like myself would know how to cook a fine steak.$B$BJust ''cuz I like my meat raw... Still panting from flight... Arterial spray in my face...$B$BWhat were we talking about? Oh yes! I was quite the gourmet back in Gilneas.',`text0_1`='',`lang0`=7,`em0_0`=0,`em0_1`=6,`em0_2`=0,`em0_3`=15,`em0_4`=0,`em0_5`=1,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15514,`prob0`=1,`text0_0`='Any savage can win a war. The true hero aims not merely for victory on the battlefield, but to attain a lasting peace after the final arrow falls.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15501,`prob0`=1,`text0_0`='Hey $gman:woman;, I''m just tryin'' to get my slice of the pie.',`text0_1`='Hey $gman:woman;, I''m just tryin'' to get my slice of the pie.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=1,`text1_0`='You want in on this? Smash and grab, baby!',`text1_1`='You want in on this? Smash and grab, baby!',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=1,`text2_0`='Hurry up, $c! Take everything you can!',`text2_1`='Hurry up, $c! Take everything you can!',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=1,`text3_0`='All these dead Tauren got on ''em is beads and junk. Did you score anything good? ',`text3_1`='All these dead Tauren got on ''em is beads and junk. Did you score anything good? ',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=1,`text4_0`='Hey, $c! This place is pretty picked over but you might still be able to find somethin'' worth your time.',`text4_1`='Hey, $c! This place is pretty picked over but you might still be able to find somethin'' worth your time.',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=1,`text5_0`='Whoa, you aren''t here to bust us, are you?',`text5_1`='Whoa, you aren''t here to bust us, are you?',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15518,`prob0`=1,`text0_0`='Just between you and me, I worry that the good General here doesn''t have the stomach to do what needs to be done.$B$BThis is the Horde we''re dealing with. History shows there can never be peace.$B$BOur goal should be ... annihilation.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15515,`prob0`=1,`text0_0`='You''re doing incredible work here in the Barrens, $N.$B$BWith the help of heroes like you, we can secure Kalimdor, and in doing so ensure a lasting peace in our homelands.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=273,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15535,`prob0`=1,`text0_0`='We can afford no delay. Fort Triumph must be completed and reinforced, or any hope we have for permanent settlement on this continent will be erased.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=274,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15530,`prob0`=1,`text0_0`='',`text0_1`='Our equipment is really taking a beating out here!',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15536,`prob0`=1,`text0_0`='When me and my Wildhammer Mercenaries were hired on to secure Fort Triumph, I imagined we''d be fighting the Horde.$B$BBut we''re set on from all sides! ''Sploding goblins, burrowing bugs, electro-fied lizards... ',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15537,`prob0`=1,`text0_0`='',`text0_1`='The Battlescar is a dangerous place. All the armor in the world can''t save a steam tank that''s swallowed up by the earth.',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15538,`prob0`=1,`text0_0`='',`text0_1`='What I''m cooking up is way ahead of its time, $N.$B$BLook at these blueprints! It''s like licking the future.',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15539,`prob0`=1,`text0_0`='',`text0_1`='Sure, it''s got bugs to work out. But the microtank is a marvel of engineering.$B$Bit uses one quarter the materials of a full-sized siege engine, and it can be mass-produced by anyone! ...with really tiny hands!',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=5,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15586,`prob0`=1,`text0_0`='Welcome to the field, $c! You can''t get a feel for the tactical situation if you''re hiding in a fortress all day. I always like to get my boots dirty.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15552,`prob0`=1,`text0_0`='That''s me job, $c. The General goes out on patrol, and I carry his banner and plant it in the dirt.$B$BImagine a General out and about without his banner. He might as well not wear pants.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15554,`prob0`=1,`text0_0`='Hey! Hands off the banner, $gson:missy;.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15528,`prob0`=1,`text0_0`='We do our best here to heal the broken earth. It was difficult enough before we started getting raided at night.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15317,`prob0`=1,`text0_0`='',`text0_1`='Greetings, $c. We shaman have gathered here at Firestone Point to watch over the land and tend to its wounds.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15563,`prob0`=1,`text0_0`='Bah! Rowdy tauren don''t scare me none.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=274,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15590,`prob0`=1,`text0_0`='These crazy tauren - always trying to blow up my flying machine. This has been going on for years!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15547,`prob0`=1,`text0_0`='Turn away, $c.$B$BBefore the cataclysm hit, we found something.$B$BWe dug something up that should''ve stayed buried.$B$BPray to whatever you believe in that the landslide was enough to keep it down...',`text0_1`='Turn away, $c.$B$BBefore the cataclysm hit, we found something.$B$BWe dug something up that should''ve stayed buried.$B$BPray to whatever you believe in that the landslide was enough to keep it down...',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=274,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15564,`prob0`=1,`text0_0`='It''s a one-seater plane, but you can always sit up on the fuselage. It''s perfectly safe.$B$BYou ready?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=273,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15588,`prob0`=1,`text0_0`='Have you been to Bael Modan? What''s going on over there?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15589,`prob0`=1,`text0_0`='They''re going to pay, $N. They''re all going to pay.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18267,`prob0`=1,`text0_0`='Has the Earthen Ring sent you?$B$BOur efforts to heal the land must begin here, at the World Tree. I''m glad you are here to witness this.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18268,`prob0`=1,`text0_0`='I believe Aggra is almost here, and the other aspects have assembled.$B$BAre you ready to begin, $N?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=6,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18260,`prob0`=1,`text0_0`='',`text0_1`='Go''el - the one you call Thrall - his spirit has been scattered across the elemental planes.$b$bThe Twilight''s Hammer thinks to shake our will... but we shall not weaken. We will not forsake Go''el.$b$bHe has risked everything to save this world, and we''ll do no less for him!',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=5,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18261,`prob0`=1,`text0_0`='',`text0_1`='Let me know when you are ready to travel to Uldum. We will ask Cyclonas what he knows.',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18113,`prob0`=1,`text0_0`='The winds are strange today. Strange indeed.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18201,`prob0`=1,`text0_0`='',`text0_1`='No matter how far it takes me - I refuse to give up on him.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18202,`prob0`=1,`text0_0`='',`text0_1`='I can only teleport us once. Make sure you are ready. Go''el waits for us at the bottom of the ocean...',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18185,`prob0`=1,`text0_0`='',`text0_1`='My Go''el... consumed by the sea. Tormented by his own desires!',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18186,`prob0`=1,`text0_0`='',`text0_1`='The cycle begins again! Go''el has become living stone! We must pursue him within the caverns of Deepholm.$b$bSeeing as how the Earthen Ring just saved her kingdom, Therazane should be more than willing to help us in saving him. If not, the Stonemother will answer to me!',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18204,`prob0`=1,`text0_0`='',`text0_1`='The sooner we can get away from the Stonemother, the better. I do not trust her.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18208,`prob0`=1,`text0_0`='',`text0_1`='Brace yourself. The Firelands are a dangerous place... even for a formidable $r such as yourself.$b$bLet me know when you are ready.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18220,`prob0`=1,`text0_0`='',`text0_1`='We will need the help of ALL the elements to save Thrall from this place. The lieutenants of Ragnaros will not be nearly as compromising as Cyclonas, Hydrius, or even Therazane.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18029,`prob0`=1,`text0_0`='',`text0_1`='That Malfurion... fitting of him to send his $r underling to speak with me.$b$bHe has proven himself a coward, as always.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18030,`prob0`=1,`text0_0`='',`text0_1`='Never you mind, $r. The details of my past were burned away when I joined the Druids of the Flame. They are of no concern to you.$b$bBesides, I am here to discuss the future of this realm. And I do not plan to discuss it with you.$b$bNow answer me... where is Malfurion!?',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=5,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18031,`prob0`=1,`text0_0`='',`text0_1`='Very well. Malfurion shall press into the Firelands, and we will deal with him there. His judgment can wait for a few more brief days.$b$b<Leyara''s eyes light up.>$b$bThe tauren arch druid, however, will not be so lucky.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=5,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15325,`prob0`=1,`text0_0`='We came here to Un''Goro with one objective in mind: profit.  My associates and I are always looking for business partners, if you''re interested.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15324,`prob0`=1,`text0_0`='',`text0_1`='Are you interested in making some money?',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15639,`prob0`=1,`text0_0`='<This robotic gorilla appears to be damaged.>',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15277,`prob0`=1,`text0_0`='<Maximillian is deep in prayer, oblivious to your presence.>',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15278,`prob0`=1,`text0_0`='Stay your sword and loosen your cap.  Before we do battle with our blades, I first have prepared an assault to unleash upon your ears.$b$bAre you prepared?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15266,`prob0`=1,`text0_0`='A squire is the right hand of the knight.  As you are already fully aware, hands are especially good at carrying things, and thus your first duty will be to carry my sundries, knickknacks, and other miscellaneous paraphernalia while I dispense justice across the land.  To lug around such etcetera is a job unbefitting of a knight.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15267,`prob0`=1,`text0_0`='Very good.  Secondly, you must know that a knight embraces no tenet more tightly than that of chivalry.  He clings to his generosity as tightly as he clings to his lance.  His valor shines as brightly as his armor.  And while his smallsword may be sharp, his manner among allies is soft and courteous.$b$bNow tell me $n, do you give your oath to hold to the teachings of chivalry and gallantry?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15268,`prob0`=1,`text0_0`='Ha!  Did I not just say, good $n, chivalry and gallantry are the charge of the KNIGHT?  You seek only to be a SQUIRE.  The colossal burden of chivalry is unfit for the squire, for as I mentioned before, the only colossal burden that you are to bear is that of my belongings.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15269,`prob0`=1,`text0_0`='Moving on!  As chivalry is the way of the knight, and I am a knight, you must know then that my own intentions are indeed valorous.  It is true, I fight for my Lady Doloria, to proclaim her beauty and majesty across all the lands.  Any who question her beauty are without a doubt the most vile of enemies, and must be brought to justice.$b$bAs I speak, it occurs to me that I am a failure.  We have come quite far in the squiring ceremony, yet I have not yet ascertained whether or not you deserve my charity or my righteous fury.$b$bI must know, now, do you agree that my Lady Doloria is unquestionably the fairest Lady across all of Azeroth?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15270,`prob0`=1,`text0_0`='I''m rather glad to hear that.  Congratulations, $N, for you have completed your training.  You may now ride beside me into the fray.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15291,`prob0`=1,`text0_0`='Come, Squire $N, for adventure awaits us!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15333,`prob0`=1,`text0_0`='A fair question.$b$bOne might check the perimeter of the hot springs.  Or one might look for signal fires up in the cliffs to the west.  Finally, the path to Silithus, far to the north, is often wrought with danger.$b$bThose would be the places I''d check.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15294,`prob0`=1,`text0_0`='Save me!  I''ve dropped my belongings into the hot springs.$b$bMy gowns are in there!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15353,`prob0`=1,`text0_0`='The flora of Un''Goro Crater are quite remarkable, to be sure.  Wouldn''t you agree, $N?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=1123,`prob0`=100,`text0_0`='Can''t ye see I''m busy? This had better be good.',`text0_1`='',`lang0`=7,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=14549,`prob0`=1,`text0_0`='',`text0_1`='Need some help finding your way? I know this place like the back of my hand.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=1,`text1_0`='',`text1_1`='It saddens me to see the furbolg all corrupted so readily. These used to be our friends.',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=1,`text2_0`='',`text2_1`='This place is infested... we''ll need to make our way out of here with the relics as quickly as possible.',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=1,`text3_0`='',`text3_1`='I haven''t seen any of the sleeping druids. They must have been taken from here already.',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=1,`text4_0`='',`text4_1`='We should have seen this coming. The corruption has been spreading for quite some time.',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=1,`text5_0`='',`text5_1`='If the furbolg could be this far gone, what does that say for the rest of Teldrassil?',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=1,`text6_0`='',`text6_1`='There has to be a way to stop this corruption before it consumes us all.',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=1,`text7_0`='',`text7_1`='Damn you, Fandral! What have you gotten us into with this cursed "World Tree?"',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=14595,`prob0`=1,`text0_0`='What? $N, you''re not a warlock.$B$BThere''s nothing that I can teach a $c like you, $g sir : ma''am;.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=6,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=14636,`prob0`=1,`text0_0`='I am told Pilgrim''s Bounty is a time to reflect upon one''s good fortune and share with all around you.$B$BWe are lucky to have found this world and its bold inhabitants; it is only fitting that we lend our knowledge and strength to these new-found allies.',`text0_1`='I am told Pilgrim''s Bounty is a time to reflect upon one''s good fortune and share with all around you.$B$BWe are lucky to have found this world and its bold inhabitants; it is only fitting that we lend our knowledge and strength to these new-found allies.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=14807,`prob0`=1,`text0_0`='You''re doing a great job, $g Mr. : Ms.; $N. Keep up the good work.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15111,`prob0`=1,`text0_0`='The elements are fickle and best left out of untrained hands.  My apologies, but I have no need for yours.',`text0_1`='The elements are fickle and best left out of untrained hands.  My apologies, but I have no need for yours.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16288,`prob0`=1,`text0_0`='What are you still doing here, $c?$B$BShouldn''t you be in Twilight Highlands laying waste to that wretched cult?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16520,`prob0`=1,`text0_0`='You are not yet strong enough to enter The Battle for Gilneas. Return when you have gained more experience.',`text0_1`='You are not yet strong enough to enter The Battle for Gilneas. Return when you have gained more experience.',`lang0`=0,`em0_0`=1,`em0_1`=274,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16562,`prob0`=1,`text0_0`='',`text0_1`='I''m sorry, but I can''t offer you training.',`lang0`=0,`em0_0`=0,`em0_1`=6,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16602,`prob0`=1,`text0_0`='You''ll find it in the northernmost part of the Dwarven District, near the Northern Landing.',`text0_1`='You''ll find it in the northernmost part of the Dwarven District, near the Northern Landing.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16603,`prob0`=60,`text0_0`='There are two banks in the city: The Stormwind Counting House in the Trade District, and the Royal Bank of Stormwind in the Dwarven District.',`text0_1`='There are two banks in the city: The Stormwind Counting House in the Trade District, and the Royal Bank of Stormwind in the Dwarven District.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16604,`prob0`=50,`text0_0`='Stormwind''s Royal Bank is in the northernmost corner of the Dwarven District, just inside the Northern Landing.',`text0_1`='Stormwind''s Royal Bank is in the northernmost corner of the Dwarven District, just inside the Northern Landing.',`lang0`=7,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16608,`prob0`=1,`text0_0`='There are stable masters in both Old Town and the Dwarven District.',`text0_1`='There are stable masters in both Old Town and the Dwarven District.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16622,`prob0`=1,`text0_0`='',`text0_1`='I''m sorry, I cannot train you.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16705,`prob0`=1,`text0_0`='I can instruct you in blacksmithing as well as supply the necessary tools.$B$BHow may I help you?',`text0_1`='I can instruct you in blacksmithing as well as supply the necessary tools.$B$BHow may I help you?',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16784,`prob0`=1,`text0_0`='You be a LONG way from home, mon. Heh heh heh.
\

\
What can I be helpin'' ya find?',`text0_1`='You be a LONG way from home, mon. Heh heh heh.
\

\
What can I be helpin'' ya find?',`lang0`=1,`em0_0`=0,`em0_1`=153,`em0_2`=3,`em0_3`=396,`em0_4`=0,`em0_5`=0,`prob1`=1,`text1_0`='Don''t see many a'' your kind ''round here, mon.
\

\
What can I be helpin'' ya find?',`text1_1`='Don''t see many a'' your kind ''round here, mon.
\

\
What can I be helpin'' ya find?',`lang1`=1,`em1_0`=0,`em1_1`=396,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16795,`prob0`=1,`text0_0`='Which ya be lookin'' for?',`text0_1`='Which ya be lookin'' for?',`lang0`=1,`em0_0`=0,`em0_1`=6,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16834,`prob0`=1,`text0_0`='',`text0_1`='Nay, but ye can talk ta Earthmender Doros over there... the big draenei, lookin'' over what''s left o'' the Twilight camp.',`lang0`=0,`em0_0`=0,`em0_1`=274,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16836,`prob0`=1,`text0_0`='I have nothing for you.$B$BHegrid, though, has been gathering Twilight supplies to replenish our own. You might speak with her.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=274,`em0_2`=3,`em0_3`=1,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16880,`prob0`=1,`text0_0`='Hey there, $N. Here for a lesson? I ain''t got all day...',`text0_1`='Hey there, $N. Here for a lesson? I ain''t got all day...',`lang0`=1,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16943,`prob0`=1,`text0_0`='',`text0_1`='This stronghold is fortified, but our enemies close in from all sides. We would be wise to secure our position on the coast before advancing farther inland. ',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17537,`prob0`=1,`text0_0`='',`text0_1`='Hey. How ya doing, boss? Hobart and I are working on some things that will ensure that you have phenomenal backup products for when the kaja''mite runs out.$B$BThere''s only so much of it left down there in the mines, and when it''s gone, all of the Kaja''Cola is going to go with it, I''m afraid.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=273,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17538,`prob0`=1,`text0_0`='Good to see you, $N!$B$BI just wanted to make sure that you appreciate all of the products that my genius has brought to the Kajaro Trading Company?$B$BThese include, but are not limited to: Kaja''Cola, the Poultryizer, Town-In-A-Box, my Ingenious Cap of Mook Foolery, KTC Train-a-Tron Deluxe, the Amazing G-Ray, Never-Deflating Pool Ponies, the Big Ones, Warrior-Matic NX-01, and gilgoblins. No strike that last one. Under advice of counsel, I had nothing to do with them.$B$BAnyway, I''m working on a few more things here that I think you''ll find interesting, such as the Micro Mechachicken and a little something I like to call Subject Nine.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=3,`em0_2`=0,`em0_3`=1,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17552,`prob0`=1,`text0_0`='<To your astonishment, the Raptor hatchling is able to communicate with you.>$B$B$G Papa : Mama;...?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=1,`text1_0`='<To your astonishment, the Raptor hatchling is able to communicate with you.>$B$BI hunger... therefore, I am.',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=1,`text2_0`='<To your astonishment, the Raptor hatchling is able to communicate with you.>$B$BWhat does "$c" mean? Are you the goblin $g patriarch : matriarch;?',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=1,`text3_0`='<To your astonishment, the Raptor hatchling is able to communicate with you.>$B$BThey call you $N. Is this your unique signifier, or is it an honorary title?',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=1,`text4_0`='<To your astonishment, the Raptor hatchling is able to communicate with you.>$B$BGreetings. I recently emerged from an egg. You?',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=1,`text5_0`='<To your astonishment, the Raptor hatchling is able to communicate with you.>$B$BIs it true that you cook your meat? Curious.',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=1,`text6_0`='<To your astonishment, the Raptor hatchling is able to communicate with you.>$B$BYou lack a helmet. Does this diminish your intellectual capacities?',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=1,`text7_0`='<To your astonishment, the Raptor hatchling is able to communicate with you.>$B$BThe ends of your fingers are dull and round. Is this why you carry around other implements for use in combat?$B$BHow interesting.',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17745,`prob0`=1,`text0_0`='My apologies, $c, but the arcane secrets of the Highborne will forever remain secrets to you.',`text0_1`='My apologies, $c, but the arcane secrets of the Highborne will forever remain secrets to you.',`lang0`=7,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17941,`prob0`=1,`text0_0`='Handmade toys from all over Azeroth!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18037,`prob0`=1,`text0_0`='These trolls have just shown up demanding our help.',`text0_1`='',`lang0`=7,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=1,`text1_0`='I can barely understand what these trolls are trying to say.',`text1_1`='',`lang1`=7,`em1_0`=0,`em1_1`=1,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=1,`text2_0`='Why don''t these trolls just deal with their problems on their own?',`text2_1`='',`lang2`=7,`em2_0`=0,`em2_1`=1,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18050,`prob0`=1,`text0_0`='Oh, aye. I took the wee rotter''s candle.
\

\
Now, what did ye need?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18063,`prob0`=1,`text0_0`='',`text0_1`='I consider it a great honor to assist the Lady Proudmoore in her research. She''s the most powerful human mage upon Azeroth, you know!
\

\
Now, was there something I might help you with?',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18064,`prob0`=1,`text0_0`='Were this tower to boast TWICE as many tomes, it would still not be enough for me. My collecting and copying shall never be done.
\

\
So. You have need of my assistance?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18067,`prob0`=1,`text0_0`='',`text0_1`='You mean to say there is a warlock? Here, in goodly Theramore?!
\

\
Oh, my. Someone must inform Lady Proudmoore immediately!
\

\
...heh.',`lang0`=7,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18070,`prob0`=1,`text0_0`='With all the Siege Engines nearly complete, I''m getting a bit bored!
\

\
You''re not an engineer, are you? Care to compare blueprints...?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18086,`prob0`=1,`text0_0`='Speak to Paymaster Lendry on the second floor of the barracks.
\

\
He can arrange to store your goods with Theramore''s treasury.',`text0_1`='Speak to Paymaster Lendry on the second floor of the barracks.
\

\
He can arrange to store your goods with Theramore''s treasury.',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18087,`prob0`=1,`text0_0`='Look for Jensen Farran near the archery range.',`text0_1`='Look for Jensen Farran near the archery range.',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18088,`prob0`=1,`text0_0`='You''ll find Horace Alder pacing about above the ground level of Lady Proudmoore''s tower.',`text0_1`='You''ll find Horace Alder pacing about above the ground level of Lady Proudmoore''s tower.',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18089,`prob0`=1,`text0_0`='Look for Brother Karman overseeing training at the combat dummies outside the barracks.',`text0_1`='Look for Brother Karman overseeing training at the combat dummies outside the barracks.',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18090,`prob0`=1,`text0_0`='Look for Allen Bright at the sparring ring near the barracks.
\

\
He and Doctor Gustaf VanHowzen oversee the training of the isle''s healers.',`text0_1`='Look for Allen Bright at the sparring ring near the barracks.
\

\
He and Doctor Gustaf VanHowzen oversee the training of the isle''s healers.',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18091,`prob0`=1,`text0_0`='I''m not certain. Try asking Calia Hastings, by the docks. I''m told she has connections to SI:7.',`text0_1`='I''m not certain. Try asking Calia Hastings, by the docks. I''m told she has connections to SI:7.',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18092,`prob0`=1,`text0_0`='A shaman...?
\

\
There''s a rather rough-looking dwarven lass staying in Theramore''s inn; I believe she came to visit an old friend of hers here.
\

\
She might be able to help you.',`text0_1`='A shaman...?
\

\
There''s a rather rough-looking dwarven lass staying in Theramore''s inn; I believe she came to visit an old friend of hers here.
\

\
She might be able to help you.',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18093,`prob0`=1,`text0_0`='Well... ah... don''t tell her I sent you, but look for a red-robed woman above the ground level of the central tower.
\

\
Redia Vaunt is her name. But do not mention me!',`text0_1`='Well... ah... don''t tell her I sent you, but look for a red-robed woman above the ground level of the central tower.
\

\
Redia Vaunt is her name. But do not mention me!',`lang0`=0,`em0_0`=0,`em0_1`=274,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18094,`prob0`=1,`text0_0`='Report to Captain Evencane on the second level of the barracks. He can see to your training.',`text0_1`='Report to Captain Evencane on the second level of the barracks. He can see to your training.',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18095,`prob0`=1,`text0_0`='Alchemist Narett and Brant Jasperbloom teach Alchemy and Herbalism out of a small shop here; they''ll be able to help you.',`text0_1`='Alchemist Narett and Brant Jasperbloom teach Alchemy and Herbalism out of a small shop here; they''ll be able to help you.',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18096,`prob0`=1,`text0_0`='I know that one of those visiting Woolybush dwarves is an archaeologist.
\

\
I think it''s the wife, Faena. They''re both explorers of some sort. Look for them in the inn.',`text0_1`='I know that one of those visiting Woolybush dwarves is an archaeologist.
\

\
I think it''s the wife, Faena. They''re both explorers of some sort. Look for them in the inn.',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18097,`prob0`=1,`text0_0`='Ask for Marie Holdston at the smithy.',`text0_1`='Ask for Marie Holdston at the smithy.',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18098,`prob0`=1,`text0_0`='Craig Nollward works the inn''s kitchen. He''ll be able to help you.',`text0_1`='Craig Nollward works the inn''s kitchen. He''ll be able to help you.',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18099,`prob0`=1,`text0_0`='Lissah Spellwick, at the top of mage tower, is the mistress of Lady Jaina''s enchanters.',`text0_1`='Lissah Spellwick, at the top of mage tower, is the mistress of Lady Jaina''s enchanters.',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18101,`prob0`=1,`text0_0`='Doctor Gustaf VanHowzen works on the ground level of the barracks.',`text0_1`='Doctor Gustaf VanHowzen works on the ground level of the barracks.',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18102,`prob0`=1,`text0_0`='Michael Crowe, down by the docks, can teach you anything you need to know about catching and gutting fish.',`text0_1`='Michael Crowe, down by the docks, can teach you anything you need to know about catching and gutting fish.',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18103,`prob0`=1,`text0_0`='Look for Theoden Manners at the top of Lady Proudmoore''s tower.',`text0_1`='Look for Theoden Manners at the top of Lady Proudmoore''s tower.',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18104,`prob0`=1,`text0_0`='I''m certain that one of the visiting Woolybush dwarves is a jewelcrafter.
\

\
I believe it''s the husband, Ingo. They''re both explorers of some sort. Look for them in the inn.',`text0_1`='I''m certain that one of the visiting Woolybush dwarves is a jewelcrafter.
\

\
I believe it''s the husband, Ingo. They''re both explorers of some sort. Look for them in the inn.',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18105,`prob0`=1,`text0_0`='Seek out the Tanwell brothers in Theramore''s inn. One of them will be able to help you.',`text0_1`='Seek out the Tanwell brothers in Theramore''s inn. One of them will be able to help you.',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18106,`prob0`=1,`text0_0`='Look out for the dwarf, Kerik, outside Theramore''s smithy.
\

\
He''s a drunkard and a bit free with the explosives, but he''s friendly enough and knows his way around a mine.',`text0_1`='Look out for the dwarf, Kerik, outside Theramore''s smithy.
\

\
He''s a drunkard and a bit free with the explosives, but he''s friendly enough and knows his way around a mine.',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18107,`prob0`=1,`text0_0`='You''ll want to find Sansha MacVince, just outside Theramore''s stables.',`text0_1`='You''ll want to find Sansha MacVince, just outside Theramore''s stables.',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18108,`prob0`=1,`text0_0`='Timothy Worthington works out of the second floor of one of Theramore''s larger buildings. He''ll do you right.',`text0_1`='Timothy Worthington works out of the second floor of one of Theramore''s larger buildings. He''ll do you right.',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15257,`prob0`=1,`text0_0`='Take care of ya weapons an'' they''ll take care of ya back.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=14562,`prob0`=1,`text0_0`='',`text0_1`='Another new face? It''s so good to meet you. I''m Dellylah.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=14752,`prob0`=1,`text0_0`='',`text0_1`='The Gumps are letting me help them run their shop! I just love flowers.$B$B<Little Adeline suddenly squints at you, looking very serious.>$B$BDo you like flowers?',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `page_text` VALUES ('3470', 'The sheer vastness of the nether is no excuse for using it as a garbage repository! Your Portal and Teleport spells are a great privilege and responsibility, and carelessly casting the waste from your noontime meals into a portal could have GRAVE CONSEQUENCES for all of Azeroth! Please secure all objects when traveling via portal and report any lost objects to the Kirin Tor council at once. Read the latest edition of �_Thinking with Portals - A Memorandum on Proper Portal Usage�_ for all information regarding portal use. \n', '3471',1);
INSERT IGNORE INTO `page_text` VALUES ('3471', 'If this problem grows any further out of hand, I will be forced to insist that all portal travelers relinquish their weaponry and personal hygiene supplies before embarking. And the next time my lecture notes appear among the rubbish, I will personally transform the heads of all apprentices into dunce caps!\n--Archmage Runeweaver \n', '0',1);
INSERT IGNORE INTO `page_text` VALUES ('3488', 'For regional fare in a less boisterous setting, try the Hocus Pocus Inn near the center of town.  The open, airy inn is easy to find and serves light meals with pleasant conversation in a relaxed, library-like atmosphere.  The regulars are primarily exhausted students of the arcane; no wonder the real star of the show is the incredibly skilled food that prepares and cooks itself at your table!\n', '3489',1);
INSERT IGNORE INTO `page_text` VALUES ('3489', 'If you are looking for a bed, a bar and not much else, look no further than the Filthy Animal!  The bar area is dark and authentically malodorous, replete at all hours with individuals of questionable character.  The menu boasts such delicacies as Briny Hardcheese and it would take an army of enchanted dancing mops and buckets to make the sleeping quarters habitable.  A Horde paradise indeed!\n', '0',1);

# NeatElves
DELETE FROM `gameobject` WHERE `guid` = 44126;
DELETE FROM creature_ai_scripts WHERE id=2491401;
INSERT INTO creature_ai_scripts VALUES (2491401, 24914, 6, 0, 100, 0, 0, 0, 0, 0, 11, 45070, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sorlof - Cast Sorlof\'s Booty on Death (Quest: 11529)');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 24914;
UPDATE creature_ai_scripts SET action1_param1 = 43326 WHERE id = 2393101;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 29375;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 29503;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 29504;
REPLACE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(2937501, 29375, 0, 0, 100, 1, 6000, 12000, 20000, 25000, 11, 57741, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stormforged Iron Giant - Cast Shockwave'),
(2937502, 29375, 2, 0, 100, 0, 30, 0, 120000, 120000, 11, 55512, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Stormforged Iron Giant - Cast Call of Earth at 30% HP'),
(2950301, 29503, 0, 0, 100, 1, 7000, 11000, 9000, 23000, 11, 57801, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fjorn - Cast Flame Breath'),
(2950302, 29503, 0, 0, 100, 1, 12000, 15000, 30000, 35000, 11, 55512, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fjorn - Cast Call of Earth'),
(2950401, 29504, 0, 0, 100, 1, 3000, 7000, 9000, 12000, 11, 56620, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Seething Revenant - Cast Seething Flame');
UPDATE `creature_template` SET `inhabittype` = 4 WHERE `entry` = 19514;
UPDATE `creature_template` SET `vehicleid`=321 WHERE `entry`=34819;
UPDATE `creature_template` SET `vehicleid`=321 WHERE `entry`=34824;
UPDATE `creature_template` SET `vehicleid`=321 WHERE `entry`=34823;
UPDATE `creature_template` SET `vehicleid`=321 WHERE `entry`=34812;
UPDATE `creature_template` SET `vehicleid`=321 WHERE `entry`=34822;
UPDATE `creature_template` SET `unit_flags`=33555200,`vehicleid`=323 WHERE `entry`=32830;
UPDATE `creature_template` SET `unit_flags`=33555200,`vehicleid`=325 WHERE `entry`=32840;
UPDATE `creature_template` SET `unit_flags`=33554432,`vehicleid`=320 WHERE `entry`=32823;
UPDATE `creature_template` SET `unit_flags`=33554432 WHERE `entry`=32839;
UPDATE `creature_model_info` SET `gender` = '2' WHERE `modelid` =29205;
UPDATE `creature_template` SET `unit_flags`=33554432 WHERE `entry`=32839;
UPDATE `creature_template` SET `unit_flags`=33554432 WHERE `entry`=32824;
UPDATE `creature_template` SET `unit_flags`=33554432 WHERE `entry`=32827;
UPDATE `creature_template` SET `unit_flags`=33554432 WHERE `entry`=32831;
UPDATE `creature_template` SET `unit_flags`=33554432 WHERE `entry`=32825;
UPDATE `creature_template` SET `unit_flags`=33554432 WHERE `entry`=32829;
UPDATE `creature_template` SET `faction_A` = '35',`faction_H` = '35' WHERE `entry` =16988;
DELETE FROM `creature` WHERE `id` = 18399;
UPDATE `quest_template` SET `RequiredMinRepFaction` = '932',`RequiredMinRepValue` = '3000' WHERE `id` =14172;
UPDATE `quest_template` SET `RequiredMinRepFaction` = '934',`RequiredMinRepValue` = '3000' WHERE `id` =14173;
UPDATE `creature_template` SET `gossip_menu_id` = '34435' WHERE `entry` in (34435,35256,34478,34481,34484,34479,34483,35260,35261,34476,34477,34480,34482);
UPDATE `creature` SET `spawndist` = '0',`MovementType` = '0' WHERE `guid` =136894;
UPDATE `creature_template` SET `faction_A` = '35',`faction_H` = '35' WHERE `entry` =23872;
UPDATE `creature_template` SET `faction_A` = '1620',`faction_H` = '1620' WHERE `entry` =26776;
UPDATE creature SET position_x = '890.119873', position_y = '-131.115936', position_z = '-49.744194', orientation = '5.247625' WHERE guid = '126546';
DELETE FROM `creature` WHERE `id` = 26776;
REPLACE INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES 
('2000000578', 'You''ll pay for this insult, $R!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
UPDATE `creature_template` SET `gossip_menu_id` = '8763' WHERE `entry` =24519;
DELETE FROM `gossip_menu` WHERE `entry` = 8763 AND `text_id` = 11147;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '2' WHERE `entry` =34077 AND `item` =33154;
UPDATE `creature_template` SET `gossip_menu_id` = '6763' WHERE `entry` =15664;
UPDATE `gossip_menu` SET `entry` = '6763' WHERE `entry` =15664 AND `text_id` =8076;
UPDATE `gossip_menu` SET `entry` = '6761' WHERE `entry` =50019 AND `text_id` =8077;
UPDATE `gossip_menu_option` SET `menu_id` = '6763',`action_menu_id` = '6761' WHERE `menu_id` =15664 AND `id` =0;
UPDATE `locales_gossip_menu_option` SET `menu_id` = '6763' WHERE `menu_id` =15664 AND `id` =0;
REPLACE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`) VALUES
(10639, 0, 0, 0, 0, 2000000579);
REPLACE INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000579, 'Your body is mine! Our fates are forever intertwined!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
DELETE FROM `quest_start_scripts` WHERE `id` = 10645;
UPDATE `quest_template` SET `StartScript` = '10639' WHERE `id` =10645;
DELETE FROM `creature` WHERE `guid` = 92069;
UPDATE `quest_start_scripts` SET `datalong2` = '30000' WHERE `id` =10639 AND `delay` =5 AND `command` =10 AND `datalong` =21877;

# Kores
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id`=33778;
UPDATE `creature_template` SET `flags_extra`='2' WHERE `entry`=37158;
DELETE FROM `waypoint_data` WHERE `id`=101279;
UPDATE `creature` SET `spawndist`=5, `MovementType`=1 WHERE `guid`=101279;
UPDATE `creature` SET `spawndist`=0, `MovementType`=0 WHERE `id`=34244;
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|2 WHERE `entry` in (30755,30352);
UPDATE `creature_template` SET `faction_A` = '1802',`faction_H` = '1802',`flags_extra` = '2' WHERE `entry` =31081;
UPDATE `creature_template` SET `faction_A` = '1801',`faction_H` = '1801',`flags_extra` = '2' WHERE `entry` =31085;

# Fix
UPDATE `creature_template` SET `flags_extra` = 64 WHERE `entry` = 28104;

# NeatElves
DELETE FROM gossip_menu WHERE entry=5749;
UPDATE `creature` SET `spawndist` = '0',`MovementType` = '0' WHERE `guid` =98347;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`) VALUES
(98348, 30659, 571, 1, 65535, 0, 0, 5657.12, 521.141, 652.674, 5.80026, 900, 0, 0, 42540, 0);

# Kores
DELETE FROM `game_event` WHERE `evententry`=31;
INSERT INTO `game_event` (`evententry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`) VALUES
(31, '2011-01-01 21:00:00', '2020-12-31 00:00:00', 1440, 5, 0, 'Dalaran - Invitation to the Argent Crusade');
DELETE FROM `game_event_creature` WHERE `guid` in (75734,77232,136675);
INSERT INTO `game_event_creature` (`guid`, `evententry`) VALUES
(136675, 31),
(75734, 31),
(77232, 31);
UPDATE `creature_template` SET `faction_A` = '2072',`faction_H` = '2072',`flags_extra` = '2' WHERE `entry` =35587;
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=35604;
DELETE FROM `creature` WHERE `id` in (35604,35587);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
(75734, 35604, 571, 1, 65535, 0, 0, 5806.18, 367.449, 670.051, 1.53171, 25, 0, 1, 10635, 0, 2),
(136675, 35587, 571, 1, 65535, 0, 1974, 5807.09, 363.106, 698.051, 1.51601, 25, 0, 1, 126000, 39940, 2),
(77232, 35587, 571, 1, 65535, 0, 1974, 5802.59, 362.902, 698.051, 1.5058, 25, 0, 1, 126000, 39940, 2);
DELETE FROM `waypoint_data` WHERE `id` in (75734,77232,136675);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `delay`, `action`) VALUES
(75734, 1, 5806.18, 367.449, 670.051, 0, 824),
(75734, 2, 5804.68, 414.056, 670.051, 0, 0),
(75734, 3, 5797.46, 476.482, 670.051, 0, 0),
(75734, 4, 5786.03, 538.357, 670.051, 0, 0),
(75734, 5, 5781.17, 570.999, 684.910, 0, 0),
(75734, 6, 5738.58, 612.009, 662.265, 0, 825),
(75734, 7, 5727.24, 621.844, 655.067, 900000, 826),
(136675, 1, 5807.09, 363.106, 698.051, 0, 824),
(136675, 2, 5805.81, 408.990, 698.051, 0, 0),
(136675, 3, 5800.44, 471.639, 698.051, 0, 0),
(136675, 4, 5788.81, 534.924, 698.051, 0, 0),
(136675, 5, 5783.83, 569.001, 687.036, 0, 0),
(136675, 6, 5744.01, 609.707, 662.715, 0, 0),
(136675, 7, 5732.05, 620.782, 655.385, 900000, 0),
(77232, 1, 5802.59, 362.902, 698.051, 0, 824),
(77232, 2, 5801.45, 409.652, 698.051, 0, 0),
(77232, 3, 5796.29, 470.238, 698.051, 0, 0),
(77232, 4, 5785.09, 535.167, 698.051, 0, 0),
(77232, 5, 5779.37, 566.119, 687.036, 0, 0),
(77232, 6, 5741.27, 606.300, 662.142, 0, 0),
(77232, 7, 5728.81, 617.063, 655.385, 900000, 0);
DELETE FROM `waypoint_scripts` WHERE `id` in (824,825,826);
INSERT INTO `waypoint_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `guid`) VALUES
(824, 0, 25, 1, 0, 0, '1105'),
(825, 0, 16, 15852, 0, 0, '1106'),
(826, 0, 0, 0, 0, 2000000580, '1107'),
(826, 5, 0, 0, 0, 2000000581, '1108');
DELETE FROM `db_script_string` WHERE `entry` in (2000000580,2000000581);
INSERT INTO `db_script_string` (`entry`, `content_default`) VALUES
(2000000580, 'The Argent Crusade invites you to test your skills in honorable combat against other heroes of Azeroth at the Argent Tournament.'),
(2000000581, 'The champions of the world\'s great nations have gathered at the Argent Tournament Grounds in northeastern Icecrown to face all challengers.');
UPDATE creature_addon SET emote=333 WHERE guid=98345;
UPDATE creature_addon SET emote=333 WHERE guid=98346;
UPDATE `creature` SET `spawndist`=0, `MovementType`=0 WHERE `id`=34244; 
UPDATE `creature_template` SET `faction_A` = '1802',`faction_H` = '1802',`flags_extra` = '2' WHERE `entry` =31081; 
UPDATE `creature_template` SET `faction_A` = '1801',`faction_H` = '1801',`flags_extra` = '2' WHERE `entry` =31085;
# UPDATE `creature_template` SET `unit_flags`=`unit_flags`|2 WHERE `entry` in (30755,30352);

# NeatElves
UPDATE `creature` SET `spawndist`=5, `MovementType`=1 WHERE `guid`=101279;
DELETE FROM `gameobject` WHERE `guid` = 55554;
DELETE FROM `gossip_menu` WHERE `entry` = 2211;
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES
(2211, 2850);
DELETE FROM `creature` WHERE `id` = 9136;

# SignFinder
UPDATE `creature` SET `position_x`='3386.21', `position_y`='-1805.14', `position_z`='115.050003', `orientation`='4.97' WHERE `id`=26500;

# NeatElves
DELETE FROM `gossip_menu` WHERE `entry` = 6543 AND `text_id` = 7754;
DELETE FROM `gossip_menu` WHERE `entry` = 6540 AND `text_id` = 7744;
DELETE FROM `gossip_menu` WHERE `entry` = 6542 AND `text_id` = 7749;
REPLACE INTO `gossip_menu` (`entry`, text_id) VALUES
(6540, 7744),
(6542, 7749),
(6543, 7754);
DELETE FROM `creature_loot_template` WHERE `entry` = 22199 AND `item` = 32382;
DELETE FROM `creature_loot_template` WHERE `entry` = 20216 AND `item` = 32379;
DELETE FROM `creature_loot_template` WHERE `entry` = 20600 AND `item` = 32380;
DELETE FROM `gameobject` WHERE `guid` = 69666;
DELETE FROM `gameobject` WHERE `guid` = 38555;
UPDATE `creature_template` SET `flags_extra` = '2' WHERE `entry` =30196;
UPDATE `gameobject` SET `spawntimesecs` = '-604800' WHERE `guid` =9750;
UPDATE `gameobject` SET `spawntimesecs` = '-604800' WHERE `guid` =39997;
UPDATE `gameobject` SET `spawntimesecs` = '-604800' WHERE `guid` =39996;
UPDATE `quest_template` SET `ExclusiveGroup` = '10983' WHERE `id` =10983;
UPDATE `quest_template` SET `ExclusiveGroup` = '10983' WHERE `id` =11057;
UPDATE `quest_template` SET `NextQuestId` = '10995' WHERE `id` =10983;
UPDATE `quest_template` SET `NextQuestId` = '10995' WHERE `id` =11057;
UPDATE `quest_template` SET `PrevQuestId` = '0' WHERE `id` =10996;
UPDATE `quest_template` SET `PrevQuestId` = '0' WHERE `id` =10997;
UPDATE `quest_template` SET `PrevQuestId` = '0' WHERE `id` =10995;
UPDATE `quest_template` SET `PrevQuestId` = '0' WHERE `id` =11009;
UPDATE `quest_template` SET `NextQuestId` = '11009' WHERE `id` =11000;
UPDATE `quest_template` SET `ExclusiveGroup` = '10983' WHERE `id` =11022;
UPDATE `quest_template` SET `NextQuestId` = '10995' WHERE `id` =11022;
UPDATE `quest_template` SET `PrevQuestId` = '0',`NextQuestIdChain` = '0' WHERE `id` =11022;
DELETE FROM `gameobject` WHERE `guid` = 69801;
UPDATE `creature_template` SET `IconName` = NULL WHERE `IconName` = '';
UPDATE `creature_template` SET `subname` = NULL WHERE `subname` = '';
UPDATE `db_script_string` SET `content_loc8` = NULL WHERE `entry` =2000001049;
UPDATE `locales_creature` SET `subname_loc8` = NULL WHERE `subname_loc8` = '';
UPDATE `locales_item` SET `description_loc8` = NULL WHERE `description_loc8` = '';
UPDATE `locales_npc_text` SET `Text0_0_loc8` = NULL WHERE `Text0_0_loc8` = '';
UPDATE `locales_npc_text` SET `Text0_1_loc8` = NULL WHERE `Text0_1_loc8` = '';
UPDATE `locales_npc_text` SET `Text1_0_loc8` = NULL WHERE `Text1_0_loc8` = '';
UPDATE `locales_npc_text` SET `Text1_1_loc8` = NULL WHERE `Text1_1_loc8` = '';
UPDATE `locales_npc_text` SET `Text2_0_loc8` = NULL WHERE `Text2_0_loc8` = '';
UPDATE `locales_npc_text` SET `Text2_1_loc8` = NULL WHERE `Text2_1_loc8` = '';
UPDATE `locales_npc_text` SET `Text3_0_loc8` = NULL WHERE `Text3_0_loc8` = '';
UPDATE `locales_npc_text` SET `Text3_1_loc8` = NULL WHERE `Text3_1_loc8` = '';
UPDATE `locales_npc_text` SET `Text4_0_loc8` = NULL WHERE `Text4_0_loc8` = '';
UPDATE `locales_npc_text` SET `Text4_1_loc8` = NULL WHERE `Text4_1_loc8` = '';
UPDATE `locales_npc_text` SET `Text5_0_loc8` = NULL WHERE `Text5_0_loc8` = '';
UPDATE `locales_npc_text` SET `Text5_1_loc8` = NULL WHERE `Text5_1_loc8` = '';
UPDATE `locales_npc_text` SET `Text6_0_loc8` = NULL WHERE `Text6_0_loc8` = '';
UPDATE `locales_npc_text` SET `Text6_1_loc8` = NULL WHERE `Text6_1_loc8` = '';
UPDATE `locales_npc_text` SET `Text7_0_loc8` = NULL WHERE `Text7_0_loc8` = '';
UPDATE `locales_npc_text` SET `Text7_1_loc8` = NULL WHERE `Text7_1_loc8` = '';
UPDATE `locales_quest` SET `EndText_loc8` = NULL WHERE `EndText_loc8` = '';
UPDATE `locales_quest` SET `ObjectiveText2_loc8` = NULL WHERE `ObjectiveText2_loc8` = '';
UPDATE `locales_quest` SET `ObjectiveText3_loc8` = NULL WHERE `ObjectiveText3_loc8` = '';
UPDATE `locales_quest` SET `ObjectiveText4_loc8` = NULL WHERE `ObjectiveText4_loc8` = '';
UPDATE `locales_quest` SET `CompletedText_loc8` = NULL WHERE `CompletedText_loc8` = '';
UPDATE `locales_quest` SET `ObjectiveText1_loc8` = NULL WHERE `ObjectiveText1_loc8` = '';
UPDATE `quest_template` SET `EndText` = NULL WHERE `EndText` = '';
UPDATE `quest_template` SET `CompletedText` = NULL WHERE `CompletedText` = '';
UPDATE `quest_template` SET `ObjectiveText1` = NULL WHERE `ObjectiveText1` = '';
UPDATE `quest_template` SET `ObjectiveText2` = NULL WHERE `ObjectiveText2` = '';
UPDATE `quest_template` SET `ObjectiveText3` = NULL WHERE `ObjectiveText3` = '';
UPDATE `quest_template` SET `ObjectiveText4` = NULL WHERE `ObjectiveText4` = '';
UPDATE `gameobject_template` SET `data0` = '43',`data1` = '8417',`data3` = '6798',`data6` = '21400' WHERE `entry` =187236;
UPDATE `gameobject_template` SET `faction` = '1802' WHERE `entry` =55;
UPDATE `gameobject_template` SET `data3` = '0' WHERE `data3` =196608;
UPDATE `gameobject_template` SET `data10` = 37264 WHERE `entry` = 184906;
UPDATE `quest_template` SET `PrevQuestId` = '10584' WHERE `id` =10632;
UPDATE `quest_template` SET `PrevQuestId` = '10584' WHERE `id` =10620;
UPDATE `quest_template` SET `PrevQuestId` = '10620' WHERE `id` =10671;
DELETE FROM `creature` WHERE `id` = 21737;
REPLACE INTO `creature_ai_scripts` VALUES ('2172952', '21729', '6', '0', '100', '0', '0', '0', '0', '0', '41', '0', '0', '0', '12', '21737', '0', '60000', '0', '0', '0', '0', 'ytdb-q10584');
UPDATE `creature_template` SET `pickpocketloot` = '0' WHERE `entry` =20116;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 20116;
DELETE FROM `creature` WHERE `guid` = 81278;
DELETE FROM `creature` WHERE `guid` = 76136;
UPDATE creature SET position_x = '1492.155029', position_y = '6389.433105', position_z = '35.102539', orientation = '4.317107' WHERE guid = '76137';
UPDATE creature SET position_x = '2507.214600', position_y = '6749.493164', position_z = '5.220716', orientation = '4.827619' WHERE guid = '81287';
UPDATE creature SET position_x = '2522.201904', position_y = '6742.209473', position_z = '5.220716', orientation = '3.434321' WHERE guid = '62084';
DELETE FROM `creature_questrelation` WHERE `id` = 415 AND `quest` = 1097;
DELETE FROM `creature_loot_template` WHERE `entry` = 5992 AND `item` = 31671;
DELETE FROM `creature_loot_template` WHERE `entry` = 16949 AND `item` = 31671;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-30' WHERE `entry` =20749 AND `item` =30849;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '20' WHERE `item` =29560;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '80' WHERE `item` =29559;
UPDATE `creature_template` SET `skinloot` = '23162' WHERE `entry` =23162;
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(23162, 21887, 0, 1, 1, 1),
(23162, 25649, 0, 1, 1, 3),
(23162, 29547, 20, 1, 1, 3),
(23162, 35229, -50, 0, 1, 1);
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = '20',`maxcount` = '3' WHERE `item` =29547;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '50' WHERE `item` =31671;
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = '100' WHERE `creature_id` =23165;
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = '100' WHERE `creature_id` =23162;
UPDATE `creature_onkill_reputation` SET `MaxStanding1` = '7' WHERE `creature_id` =23163;
UPDATE `creature_onkill_reputation` SET `MaxStanding1` = '7' WHERE `creature_id` =23161;
UPDATE `creature_onkill_reputation` SET `MaxStanding1` = '7' WHERE `creature_id` =23051;
UPDATE `creature_onkill_reputation` SET `MaxStanding1` = '7' WHERE `creature_id` =23066;
UPDATE `creature_onkill_reputation` SET `MaxStanding1` = '7' WHERE `creature_id` =23067;
UPDATE `creature_onkill_reputation` SET `MaxStanding1` = '7' WHERE `creature_id` =23068;
UPDATE `creature_onkill_reputation` SET `MaxStanding1` = '7',`RewOnKillRepValue1` = '5' WHERE `creature_id` =21804;
DELETE FROM `creature_loot_template` WHERE `entry` = 22181 AND `item` = 25426;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '80' WHERE `item` =25426;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 184796 AND `item` = 25426;
DELETE FROM `creature_loot_template` WHERE `entry` = 22181 AND `item` = 25428;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '20' WHERE `item` =25428;
UPDATE `creature_template` SET `pickpocketloot` = '0' WHERE `entry` =23161;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 23161;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '50' WHERE `item` =32620;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '50' WHERE `item` =32388;
UPDATE `creature_template` SET `faction_A` = '1860',`faction_H` = '1860' WHERE `entry` in (23066,23067,23068,21651,21763,21787);
UPDATE `creature_template` SET `faction_A` = '91',`faction_H` = '91' WHERE `entry` =21728;
UPDATE `creature_template` SET `faction_A` = '1869',`faction_H` = '1869' WHERE `entry` =21804;
UPDATE `creature_template` SET `faction_A` = '1881',`faction_H` = '1881' WHERE `entry` =23051;
UPDATE `creature_template` SET `faction_A` = '1862',`faction_H` = '1862' WHERE `entry` in (21838,23029,23165,23162,23161,23163,21985,21912,21911,21650,21652,21649,21644);
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = '10' WHERE `creature_id` =21985;
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = '10' WHERE `creature_id` =21912;
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = '10' WHERE `creature_id` =21911;
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = '10' WHERE `creature_id` =21650;
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = '10' WHERE `creature_id` =21652;
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = '10' WHERE `creature_id` =21728;
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = '10' WHERE `creature_id` =21649;
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = '10' WHERE `creature_id` =21644;
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = '10' WHERE `creature_id` =21787;
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = '10' WHERE `creature_id` =21651;
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = '10' WHERE `creature_id` =21763;
UPDATE `quest_template` SET `PrevQuestId` = '11098' WHERE `id` =11008;
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(14643, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(14645, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(14637, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

# Conditions
REPLACE INTO `conditions` VALUES ('13', '0', '25177', '0', '18', '1', '15339', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '25178', '0', '18', '1', '15339', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '25180', '0', '18', '1', '15339', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '25181', '0', '18', '1', '15339', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '25183', '0', '18', '1', '15339', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '5749', '6929', '0', '29', '202', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6001', '7155', '0', '8', '7761', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '5749', '6931', '0', '29', '202', '300', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6001', '0', '0', '8', '7761', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('18', '0', '31518', '0', '24', '1', '21326', '0', '0', '', null);
REPLACE INTO `gossip_menu` VALUES ('5749', '6929');
REPLACE INTO `gossip_menu` VALUES ('5749', '6931');
REPLACE INTO `gossip_menu` VALUES ('6001', '7154');
REPLACE INTO `gossip_menu` VALUES ('6001', '7155');
REPLACE INTO `gossip_menu` VALUES ('11388', '15859');
REPLACE INTO `gossip_menu` VALUES ('34435', '14552');
REPLACE INTO `gossip_menu_option` VALUES ('10575', '0', '0', 'How do the Bountiful Tables work?', '1', '1', '10589', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6001', '0', '0', '<Put your hand on the sphere.>', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('11388', '0', '0', 'Attack!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('11388', '1', '0', 'Sorry!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50169', '0', '0', 'Who is the Headless Horseman?', '1', '1', '8880', '0', '0', '0', null);
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=15664;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=15664;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=21236);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=24211);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=26699);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=18818);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=21729);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=24210);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=21237);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=19009);
INSERT IGNORE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(1, 41, 0, 0, 0, '2000000118', 0, 0, 0, 0),
(1, 42, 0, 0, 0, '2000000119', 0, 0, 0, 0),
(1, 43, 0, 0, 0, '2000000120', 0, 0, 0, 0),
(1, 44, 0, 0, 0, '2000000121', 0, 0, 0, 0),
(1, 45, 0, 0, 0, '2000000578', 0, 0, 0, 0),
(1, 46, 0, 0, 0, '2000000580', 0, 0, 0, 0),
(1, 47, 0, 0, 0, '2000000581', 0, 0, 0, 0),
(1, 48, 0, 0, 0, '2000000102', 0, 0, 0, 0),
(1, 49, 0, 0, 0, '2000000103', 0, 0, 0, 0),
(1, 50, 0, 0, 0, '2000000104', 0, 0, 0, 0);
DELETE FROM conditions WHERE SourceTypeOrReferenceId=13 AND SourceEntry=47305;


# FIX
# DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50314;
# DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50314;
# UPDATE conditions SET SourceGroup=9732 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=28666;
# UPDATE conditions SET SourceGroup=9732 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=28666;

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
DELETE FROM `game_event_gameobject` WHERE `guid` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `game_event_creature` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
UPDATE creature_template SET unit_flags=unit_flags&~2048 WHERE unit_flags&2048=2048;
UPDATE creature_template SET unit_flags=unit_flags&~524288 WHERE unit_flags&524288=524288;
UPDATE creature_template SET unit_flags=unit_flags&~67108864 WHERE unit_flags&67108864=67108864;
UPDATE creature_template SET unit_flags=unit_flags&~8388608 WHERE unit_flags&8388608=8388608;
UPDATE `creature` SET `MovementType` = 0 WHERE `spawndist` = 0 AND `MovementType`=1;
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
UPDATE `gameobject_template` SET `flags`=`flags`&~4 WHERE `type` IN (2,19,17);
DELETE FROM `gameobject_scripts` WHERE `id` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `gameobject_scripts` WHERE `command` in (11, 12) and `datalong` NOT IN (SELECT `guid` FROM `gameobject`);
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

UPDATE version SET `cache_id`= '612';
UPDATE version SET `db_version`= 'YTDB_0.14.4_R612_TC_R13911_TDBAI_335.0.3_RuDB_R45';
