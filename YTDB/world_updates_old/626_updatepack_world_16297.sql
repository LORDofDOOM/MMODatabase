# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 625_FIX_16208 626_FIX_16297 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('626_FIX_16297');

# TC
UPDATE `spell_proc_event` SET `procFlags` = 16384 WHERE `entry` in (48492,48494,48495);
UPDATE `spelldifficulty_dbc` SET `spellid0`= 61890 WHERE `id`= 3251 AND `spellid1`= 63498;
-- NPC Cowlen - Missing Gossip Options
SET @NPC := 17311;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@NPC;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@NPC AND `source_type`=0 AND `id` IN (0,1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC,0,0,1,62,0,100,0,7401,0,0,0,5,18,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Cowlen - On gossip option play emote'),
(@NPC,0,1,0,61,0,100,0,7401,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Cowlen - On gossip option Close Gossip');
-- Add SAI for Liquid Pyrite ID: 33189 - remove auras to prevent exploit after used, also despawn
SET @Pyrite := 33189;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@Pyrite;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Pyrite;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Pyrite,0,0,1,8,0,100,0,67390,0,0,0,28,62494,0,0,0,0,0,1,0,0,0,0,0,0,0,'Pyrite - On hit by spell Ride Vehicle - Remove auras from Liquid Pyrite'),
(@Pyrite,0,1,0,61,0,100,0,0,0,0,0,41,15000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Pyrite - Linked with previous event - Despawn in 15 sec');
-- Remove disables (instances scripts) for 10 and 25 version of achievement Dwarfageddon
DELETE FROM `achievement_criteria_data` WHERE  `criteria_id`=10858 AND `type`=18;
DELETE FROM `achievement_criteria_data` WHERE  `criteria_id`=10860 AND `type`=18;
-- Insert the required spell credit markers for Dwarfageddon (10/25 player) achievements
DELETE FROM `spell_dbc` WHERE `Id`=65387;
INSERT INTO `spell_dbc` (`Id`, `Dispel`, `Mechanic`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `AttributesEx6`, `AttributesEx7`, `Stances`, `StancesNot`, `Targets`, `CastingTimeIndex`, `AuraInterruptFlags`, `ProcFlags`, `ProcChance`, `ProcCharges`, `MaxLevel`, `BaseLevel`, `SpellLevel`, `DurationIndex`, `RangeIndex`, `StackAmount`, `EquippedItemClass`, `EquippedItemSubClassMask`, `EquippedItemInventoryTypeMask`, `Effect1`, `Effect2`, `Effect3`, `EffectDieSides1`, `EffectDieSides2`, `EffectDieSides3`, `EffectRealPointsPerLevel1`, `EffectRealPointsPerLevel2`, `EffectRealPointsPerLevel3`, `EffectBasePoints1`, `EffectBasePoints2`, `EffectBasePoints3`, `EffectMechanic1`, `EffectMechanic2`, `EffectMechanic3`, `EffectImplicitTargetA1`, `EffectImplicitTargetA2`, `EffectImplicitTargetA3`, `EffectImplicitTargetB1`, `EffectImplicitTargetB2`, `EffectImplicitTargetB3`, `EffectRadiusIndex1`, `EffectRadiusIndex2`, `EffectRadiusIndex3`, `EffectApplyAuraName1`, `EffectApplyAuraName2`, `EffectApplyAuraName3`, `EffectAmplitude1`, `EffectAmplitude2`, `EffectAmplitude3`, `EffectMultipleValue1`, `EffectMultipleValue2`, `EffectMultipleValue3`, `EffectMiscValue1`, `EffectMiscValue2`, `EffectMiscValue3`, `EffectMiscValueB1`, `EffectMiscValueB2`, `EffectMiscValueB3`, `EffectTriggerSpell1`, `EffectTriggerSpell2`, `EffectTriggerSpell3`, `EffectSpellClassMaskA1`, `EffectSpellClassMaskA2`, `EffectSpellClassMaskA3`, `EffectSpellClassMaskB1`, `EffectSpellClassMaskB2`, `EffectSpellClassMaskB3`, `EffectSpellClassMaskC1`, `EffectSpellClassMaskC2`, `EffectSpellClassMaskC3`, `MaxTargetLevel`, `SpellFamilyName`, `SpellFamilyFlags1`, `SpellFamilyFlags2`, `SpellFamilyFlags3`, `MaxAffectedTargets`, `DmgClass`, `PreventionType`, `DmgMultiplier1`, `DmgMultiplier2`, `DmgMultiplier3`, `AreaGroupId`, `SchoolMask`, `Comment`) VALUES
(65387, 0, 0, 545259776, 0, 5, 268697600, 128, 0, 16777216, 0, 0, 0, 0, 1, 0, 0, 101, 0, 0, 0, 0, 0, 13, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 0, 0, 7, 0, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 'Steelforged Defender - Credit marker');
-- Add SAI support for Dwarfageddon (10 and 25 player) achievement/also SAI for the NPC connected
SET @Defender := 33236;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@Defender;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Defender;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Defender,0,0,0,6,0,100,0,0,0,0,0,11,65387,0,0,0,0,0,16,0,0,0,0,0,0,0,'Steelforged Defender - On death - Cast achievement credit'),
(@Defender,0,1,0,0,0,100,0,0,2500,9000,12000,11,62845,0,0,0,0,0,2,0,0,0,0,0,0,0,'Steelforged Defender - IC - Hamstring'),
(@Defender,0,2,0,0,0,100,0,0,2600,13000,14000,11,50370,0,0,0,0,0,2,0,0,0,0,0,0,0,'Steelforged Defender - IC - Cast Sunder armor'),
(@Defender,0,3,0,0,0,100,0,500,4000,4500,9000,11,57780,0,0,0,0,0,2,0,0,0,0,0,0,0,'Steelforged Defender - IC - Cast Lightening Bolt');
-- Add spells to Salvaged Chopper - 25 version
UPDATE `creature_template` SET `spell1`=62974,`spell2`=62286,`spell3`=62299,`spell4`=64660, `mechanic_immune_mask`=344276858 WHERE `entry`=34045;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 9699;
-- Fix Night Elf Corpse (16804) so it can't be attacked
UPDATE `creature_template` SET `unit_flags`=768, `dynamicflags`=40 WHERE `entry` = 16804;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=22 AND SourceEntry=160445;
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, ErrorTextId, ScriptName, Comment) VALUES
(22, 1, 160445, 1, 0, 28, 0, 3821, 0, 0, 0, 0, '', 'Execute SmartAI for gameobject 160445 only if player has complete quest 3821');
-- SAI for quest 12150 "Reclusive Runemaster"
SET @Dregmar := 27003;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@Dregmar;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@Dregmar;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Dregmar AND `source_type`=0 AND `id` BETWEEN 0 AND 2;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Dregmar*100 AND `source_type`=9 AND `id` BETWEEN 0 AND 8;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Dregmar,0,0,0,4,0,100,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dregmar Runebrand - on aggro - yell text 0'),
(@Dregmar,0,1,0,2,0,100,1,0,50,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dregmar Runebrand - at 50% HP - yell text 1'),
(@Dregmar,0,2,0,2,0,100,0,0,20,0,0,80,@Dregmar*100,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Dregmar Runebrand - at 20% HP - run script'),
(@Dregmar*100,9,0,0,0,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dregmar Runebrand - set phase 1'),
(@Dregmar*100,9,1,0,0,0,100,0,0,0,0,0,24,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dregmar Runebrand - evade'),
(@Dregmar*100,9,2,0,0,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dregmar Runebrand - Stop combat'),
(@Dregmar*100,9,3,0,0,0,100,0,0,0,0,0,18,33346,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dregmar Runebrand - unitflags OutOfCombat'),
(@Dregmar*100,9,4,0,0,0,100,0,0,0,0,0,75,48325,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dregmar Runebrand - apply aura RUNE SHIELD'),
(@Dregmar*100,9,5,0,0,0,100,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dregmar Runebrand - yell text 2'),
(@Dregmar*100,9,6,0,0,0,100,0,0,14000,0,0,11,48028,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dregmar Runebrand - Complete quest on player range'),
(@Dregmar*100,9,7,0,0,0,100,0,0,14000,0,0,19,514,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dregmar Runebrand - unitflags reseted'),
(@Dregmar*100,9,8,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dregmar Runebrand - force despawn');
-- creature_text
DELETE FROM `creature_ai_texts` WHERE `entry` BETWEEN -894 AND -892;
DELETE FROM `creature_text` WHERE `entry`=@Dregmar AND `groupid` BETWEEN 0 AND 2;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@Dregmar,0,0, 'I know why you''ve come - one of those foolish Magnataur on the plains meddled and managed to get the dragons involved. Do you enjoy serving them like a dog?',14,0,100,0,0,0, 'Dregmar Runebrand - yell'),
(@Dregmar,1,0, 'You seek their leader... little thing, you wage war against the clans of Grom''thar the Thunderbringer himself. Don''t be so eager to rush to your death.',14,0,100,0,0,0, 'Dregmar Runebrand yell'),
(@Dregmar,2,0, 'Hah! So be it. Blow the horn of a magnataur leader at the ring of torches south of the Azure Dragonshrine. Make peace with your gods... Grom''thar will come.',14,0,100,0,0,0, 'Dregmar Runebrand yell');
-- Faction change item conversion for Reins of the Traveler's Tundra Mammoth
DELETE FROM `player_factionchange_items` WHERE `alliance_id`=44235;
INSERT INTO `player_factionchange_items` (`race_A`, `alliance_id`, `commentA`, `race_H`, `horde_id`, `commentH`) VALUES
(0,44235,'Reins of the Traveler''s Tundra Mammoth',0,44234,'Reins of the Traveler''s Tundra Mammoth');
-- Faction change spell conversion for Reins of the Traveler's Tundra Mammoth
DELETE FROM `player_factionchange_spells` WHERE `alliance_id`=61425;
INSERT INTO `player_factionchange_spells` (`alliance_id`,`horde_id`) VALUES
(61425,61447);
SET @Gossip :=9640;
SET @NPCText :=13047;
UPDATE `creature_template` SET AIName = 'SmartAI', `npcflag` = `npcflag`|1 WHERE `entry` = 28041;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 28041;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 28041 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 28041*100 AND `source_type` = 9;
INSERT INTO `smart_scripts` VALUES
(28041,0,0,0,0,0,100,0,8000,10000,8000,12000,11,50370,0,0,0,0,0,2,0,0,0,0,0,0,0,'Argent Soldier - Combat - Cast Sunder Armor'),
(28041,0,1,2,62,0,100,0,@Gossip,0,0,0,33,28041,0,0,0,0,0,7,0,0,0,0,0,0,0,'Argent Soldier - On Gossip - Credit'),
(28041,0,2,3,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Argent Soldier - Event Linked - Close Gossip'),
(28041,0,3,4,61,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Argent Soldier - Event Linked - NpcFlag Remove'),
(28041,0,4,0,61,0,100,0,0,0,0,0,80,2804100,0,2,0,0,0,1,0,0,0,0,0,0,0,'Argent Soldier - Event Linked - Run Script'),
(28041*100,9,0,0,0,0,100,0,6000,6000,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Argent Soldier - Script 6 Seconds - Unseen'),
(28041*100,9,1,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Argent Soldier - Script - Despawn');
-- [Q] Truce (11989)
SET @ENTRY := 26423; -- Drakuru
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 62, 0, 100, 0, 9615, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Drakuru - On Gossip Select - Close Gossip'),
(@ENTRY, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 85, 50016, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Drakuru - On Gossip Select - Give kill credit');
UPDATE `creature` SET `spawntimesecs`=180 WHERE `id`=23689;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (23689,24170);
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=23689;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23689,24170) AND `source_type`=0;
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
(23689,0,1,2,65,0,100,0,0,0,0,0,11,36809,2,0,0,0,0,1,0,0,0,0,0,0,0,'Proto-Drake - Reach Target - Cast Spell (36809)'),
(23689,0,2,0,61,0,100,0,0,0,0,0,33,24170,0,0,0,0,0,18,35,0,0,0,0,0,0,'Draconis Gastritis Bunny - On Death - Quest Reward'),
(23689,0,3,5,1,0,100,0,10000,10000,10000,10000,29,0,0,24170,1,1,0,19,24170,75,0,0,0,0,0,'Proto-Drake - Find Target - Follow'),
(23689,0,4,0,65,0,100,0,0,0,0,0,51,0,0,0,0,0,0,19,24170,5,0,0,0,0,0,'Proto-Drake - Reach Target - Kill Dummy'),
(23689,0,5,3,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Proto-Drake - On Find Target - Set Phase 1'),
(23689,0,6,0,1,1,100,0,45000,45000,45000,45000,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Proto-Drake - Idle on Ground(Phase 1) - Despawn'),
(24170,0,0,0,54,0,100,0,0,0,0,0,50,186598,60000,0,0,0,0,1,0,0,0,0,0,0,0,'Draconis Gastritis Bunny - On Create - Spawn GO'),
(24170,0,1,0,6,0,100,0,0,0,0,0,33,24170,0,0,0,0,0,18,20,0,0,0,0,0,0,'Draconis Gastritis Bunny - On Death - Quest Reward'),
(24170,0,2,0,54,0,100,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Draconis Gastritis Bunny - On Create - Hide'),
(24170,0,3,0,6,0,100,0,0,0,0,0,41,0,0,0,0,0,0,15,186598,5,0,0,0,0,0,'Draconis Gastritis Bunny - On Death - Remove Gobjects');
-- Life or Death (12296)
SET @ENTRY := 27482; -- Wounded Westfall Infantry npc
SET @SOURCETYPE := 0;
SET @CREDIT := 27466; -- Kill Credit Bunny - Wounded Skirmishers npc
SET @ITEM := 37576; -- Renewing Bandage item
# DELETE FROM `conditions` WHERE `SourceEntry`=@ITEM;
# INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
# (18,0,@ITEM,0,24,1,@ENTRY,0,0,'', "Item Renewing Bandage target Wounded Westfall Infantry");
-- Wounded Westfall Infantry SAI
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,@SOURCETYPE,0,0,8,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"On creature spellhit - Set phasemask 1 - self"),
(@ENTRY,@SOURCETYPE,1,0,1,1,100,0,0,0,3000,3000,1,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"On OOC - Talk - Self"),
(@ENTRY,@SOURCETYPE,2,3,1,1,100,0,2000,2000,2000,2000,53,1,@ENTRY,0,12296,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"On OOC Update 2 sec - Start WP 1 - Self"),
(@ENTRY,@SOURCETYPE,3,4,61,1,100,0,0,0,0,0,18,128,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Link - Set unit_flag 128 - Self"),
(@ENTRY,@SOURCETYPE,4,5,61,1,100,0,0,0,0,0,33,@CREDIT,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"Link - Give credit - Invoker"),
(@ENTRY,@SOURCETYPE,5,0,61,1,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Link - Set phasemask 2 - Self"),
(@ENTRY,@SOURCETYPE,6,0,40,2,100,0,2,@ENTRY,0,0,41,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"On WP 2 - Force despawn - Self");
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"I'd nearly given up.You've given me new life!",12,0,50,0,0,0,"Wounded Westfall Infantry say text"),
(@ENTRY,0,1,"Bless you, friend.I nearly expired....",12,0,50,0,0,0,"Wounded Westfall Infantry say text"),
(@ENTRY,0,2,"Without your help, I surely would have died....",12,0,50,0,0,0,"Wounded Westfall Infantry say text"),
(@ENTRY,0,3,"Thank you $r.",12,0,50,0,0,0,"Wounded Westfall Infantry say text");
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4105.278809,-2917.963867,280.320129,'Wounded Westfall Infantry'),
(@ENTRY,2,4048.682861,-2936.736572,275.191681,'Wounded Westfall Infantry');
DELETE FROM `smart_scripts` WHERE `entryorguid` = 28041 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 28041*100 AND `source_type` = 9;
SET @ENTRY := 28041; -- Argent Soldier
SET @SOURCETYPE := 0;
SET @CREDIT := 50289; -- Argent Crusade, We Are Leaving!: Argent Soldier Quest Credit
SET @MENUID := 9640;
SET @OPTION := 0;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY,@SOURCETYPE,0,0,0,0,100,0,8000,10000,8000,12000,11,50370,0,0,0,0,0,2,0,0,0,0,0,0,0,"IC - Cast Sunder Armor - Victim"),
(@ENTRY,@SOURCETYPE,1,2,62,0,100,0,@MENUID,@OPTION,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"On gossip select - Close Gossip - Invoker"),
(@ENTRY,@SOURCETYPE,2,3,61,0,100,0,0,0,0,0,11,@CREDIT,0,0,0,0,0,7,0,0,0,0,0,0,0,"On link - Cast credit spell - Invoker"),
(@ENTRY,@SOURCETYPE,3,4,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"On link - Whisper - Invoker"),
(@ENTRY,@SOURCETYPE,4,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"On link - Despawn - Self");
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Careful here, $C. These trolls killed their own snake god!",15,0,50,0,0,0,"Argent Soldier whisper text"),
(@ENTRY,0,1,"Watch your back. These Drakkari are a nasty lot.",15,0,50,0,0,0,"Argent Soldier whisper text"),
(@ENTRY,0,2,"These Drakkari are just bad news. We need to leave and head back to Justice Keep!",15,0,50,0,0,0,"Argent Soldier whisper text"),
(@ENTRY,0,3,"See you around.",15,0,50,0,0,0,"Argent Soldier whisper text"),
(@ENTRY,0,4,"I wonder where we're headed to. And who's going to deal with these guys?",15,0,50,0,0,0,"Argent Soldier whisper text"),
(@ENTRY,0,5,"Right. I'd better get back to the sergeant then.",15,0,50,0,0,0,"Argent Soldier whisper text"),
(@ENTRY,0,6,"Are you $N? I heard you were dead.",15,0,50,0,0,0,"Argent Soldier whisper text");
DELETE FROM `smart_scripts` WHERE `entryorguid`=181758 AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(181758, 1, 0, 0, 20,  0, 100, 0, 9561, 0, 0, 0, 56, 23846, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Add Nolkais Box after finishing quest: Nolkais Words');
UPDATE `gameobject_template` SET `AIName`= 'SmartGameObjectAI' WHERE `entry`=181758;
-- Meeting at the Blackwing Coven quest fix
-- Variables
SET @QUEST := 10722;
SET @ENTRY := 22019;
SET @SPELL1:= 37704; -- Whirlwind
SET @SPELL2:= 8599; -- Enrage
-- Add SmartAI for Kolphis Darkscale
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,8439,0,0,0,15,@QUEST,0,0,0,0,0,7,0,0,0,0,0,0,0,'Kolphis Darkscale - On Gossip Select - Quest Credit'),
(@ENTRY,0,1,0,0,0,50,0,3000,3000,8000,8000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0,'Kolphis Darkscale - Combat - Whirlwind'),
(@ENTRY,0,2,3,2,0,100,1,0,25,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Kolphis Darkscale - On Health level - Emote when below 25% HP'),
(@ENTRY,0,3,0,61,0,100,1,0,0,0,0,11,@SPELL2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Kolphis Darkscale - On Health level - Cast Enrage when below 25% HP');
-- add missing text to Kolphis Darkscale from sniff
DELETE FROM `npc_text` WHERE `ID`=10540;
INSERT INTO `npc_text` (`ID`,`prob0`,`text0_0`,`text0_1`) VALUES
(10540,1,"Begone, overseer!  We've already spoken.$B$BStop dragging your feet and execute your orders at Ruuan Weald!",'');
-- Kolphis Darkscale emote
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,'%s becomes enraged!',16,0,100,0,0,0,'Kolphis Darkscale');
-- [Q] Measuring Warp Energies
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN(20333,20336,20337,20338);
UPDATE `creature_template` SET AIName='SmartAI' WHERE `entry` IN (20333,20336,20337,20338);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (20333,20336,20337,20338);
INSERT INTO `smart_scripts` VALUES
(20333,0,0,0,8,0,100,0,35113,0,0,0,33,20333,0,0,0,0,0,7,0,0,0,0,0,0,0,"Northern Pipe Credit Marker - Spellhit - Credit"),
(20336,0,0,0,8,0,100,0,35113,0,0,0,33,20336,0,0,0,0,0,7,0,0,0,0,0,0,0,"Eastern Pipe Credit Marker - Spellhit - Credit"),
(20337,0,0,0,8,0,100,0,35113,0,0,0,33,20337,0,0,0,0,0,7,0,0,0,0,0,0,0,"Southern Pipe Credit Marker - Spellhit - Credit"),
(20338,0,0,0,8,0,100,0,35113,0,0,0,33,20338,0,0,0,0,0,7,0,0,0,0,0,0,0,"Western Pipe Credit Marker - Spellhit - Credit");
-- Conditions
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 35113, 0, 0, 31, 0, 3, 20333, 0, 0, 0, '', "Spell Search NPC 20333"),
(13, 1, 35113, 0, 1, 31, 0, 3, 20336, 0, 0, 0, '', "Spell Search NPC 20336"),
(13, 1, 35113, 0, 2, 31, 0, 3, 20337, 0, 0, 0, '', "Spell Search NPC 20337"),
(13, 1, 35113, 0, 3, 31, 0, 3, 20338, 0, 0, 0, '', "Spell Search NPC 20338");

# TC
UPDATE `quest_template` SET `RewardMoneyMaxLevel` = 107700, `RewardItemId1` = 28168, `RewardItemCount1` = 1, `RewardChoiceItemId1` = 28173, `RewardChoiceItemId2` = 28169, `RewardChoiceItemId3` = 28172, `RewardChoiceItemId4` = 28175, `RewardChoiceItemCount1` = 1, `RewardChoiceItemCount2` = 1, `RewardChoiceItemCount3` = 1, `RewardChoiceItemCount4` = 1, `RewardFactionValueId1` = 8 WHERE `Id` = 10172;

# Chaosua
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (30313,30315,30316,30317,30318);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=30313 AND `source_type`=0);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=30315 AND `source_type`=0);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=30316 AND `source_type`=0);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=30317 AND `source_type`=0);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=30318 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(30313, 0, 0, 0, 1, 0, 100, 0, 1000, 2000, 5000, 5000, 11, 56523, 3, 0, 0, 0, 0, 9, 0, 1, 20, 0, 0, 0, 0, 'q12986');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(30315, 0, 0, 0, 8, 0, 100, 0, 56523, 1, 1000, 1000, 11, 56532, 3, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 'q12986');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(30315, 0, 1, 0, 8, 0, 100, 0, 56523, 1, 2000, 2000, 33, 30315, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 'q12986');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(30316, 0, 0, 0, 8, 0, 100, 0, 56523, 1, 1000, 1000, 11, 56534, 3, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 'q12986');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(30316, 0, 1, 0, 8, 0, 100, 0, 56523, 1, 2000, 2000, 33, 30316, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 'q12986');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(30317, 0, 1, 0, 8, 0, 100, 0, 56523, 1, 2000, 2000, 33, 30317, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 'q12986');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(30317, 0, 0, 0, 8, 0, 100, 0, 56523, 1, 1000, 1000, 11, 56533, 3, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 'q12986');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(30318, 0, 1, 0, 8, 0, 100, 0, 56523, 1, 2000, 2000, 33, 30318, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 'q12986');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(30318, 0, 0, 0, 8, 0, 100, 0, 56523, 1, 1000, 1000, 11, 56535, 3, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 'q12986');

# NeatElves
UPDATE `pool_template` SET `max_limit`='18' WHERE `entry`=1227;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(26029, 182139, 530, 1, 1, -133.788, 6952.09, 19.2631, 1.3114, 0, 0, 0.609714, 0.792621, 120, 100, 1),
(26030, 182139, 530, 1, 1, -97.1974, 6998.89, 19.1707, 3.54586, 0, 0, 0.97964, -0.20076, 120, 100, 1),
(26031, 182139, 530, 1, 1, -202.643, 7049.52, 19.327, 3.5757, 0, 0, 0.976536, -0.215353, 120, 100, 1),
(26032, 182139, 530, 1, 1, -235.074, 7040.57, 18.7178, 6.10075, 0, 0, 0.0910912, -0.995843, 120, 100, 1),
(26033, 182139, 530, 1, 1, -107.417, 7106.15, 19.4062, 1.68838, 0, 0, 0.747433, 0.664337, 120, 100, 1),
(26034, 182139, 530, 1, 1, -34.6708, 7115.12, 20.3811, 2.83349, 0, 0, 0.988158, 0.153443, 120, 100, 1),
(38685, 182139, 530, 1, 1, -79.6786, 7132.48, 18.6876, 2.13056, 0, 0, 0.874925, 0.484259, 120, 100, 1),
(38686, 182139, 530, 1, 1, -147.765, 7290.63, 23.3198, 4.92658, 0, 0, 0.627472, -0.778639, 120, 100, 1),
(38687, 182139, 530, 1, 1, -163.823, 7333.81, 23.5985, 4.3768, 0, 0, 0.815268, -0.579083, 120, 100, 1),
(38688, 182139, 530, 1, 1, -354.537, 7244.25, 50.1074, 1.51716, 0, 0, 0.687891, 0.725814, 120, 100, 1),
(38689, 182139, 530, 1, 1, -354.904, 7264.76, 50.6482, 4.82369, 0, 0, 0.666682, -0.745343, 120, 100, 1),
(38690, 182139, 530, 1, 1, -205.034, 7347.71, 31.9097, -1.309, 0, 0, -0.608763, 0.793352, 120, 100, 1),
(1635, 182139, 530, 1, 1, -199.924, 7315.18, 56.7761, 1.97222, 0, 0, 0.833885, 0.551938, 120, 100, 1),
(3714, 182139, 530, 1, 1, -206.092, 7350.44, 56.7761, -1.36136, 0, 0, -0.629322, 0.777145, 120, 100, 1),
(4501, 182139, 530, 1, 1, -132.601, 7246.44, 29.7679, 2.18166, 0, 0, 0.88701, 0.461749, 120, 100, 1),
(5691, 182139, 530, 1, 1, -198.688, 7012.56, 25.5302, 2.18166, 0, 0, 0.88701, 0.461749, 120, 100, 1),
(5693, 182139, 530, 1, 1, -119.5, 6919.59, 17.6368, -1.93732, 0, 0, -0.824127, 0.566404, 120, 100, 1),
(6242, 182139, 530, 1, 1, -310.054, 7228, 30.5561, 1.74533, 0, 0, 0.766045, 0.642787, 120, 100, 1),
(6292, 182139, 530, 1, 1, -293.075, 7218.43, 24.5668, 0.366518, 0, 0, 0.182235, 0.983255, 120, 100, 1),
(6300, 182139, 530, 1, 1, -361.882, 7242.5, 52.6647, 0.59341, 0, 0, 0.292371, 0.956305, 120, 100, 1),
(6303, 182139, 530, 1, 1, -167.25, 7263.1, 23.3273, 2.96704, 0, 0, 0.996194, 0.0871655, 120, 100, 1),
(6304, 182139, 530, 1, 1, -134.533, 7020.82, 23.6492, -0.925024, 0, 0, -0.446198, 0.894934, 120, 100, 1),
(6890, 182139, 530, 1, 1, -119.41, 7268.5, 23.2162, -2.65289, 0, 0, -0.970294, 0.241927, 120, 100, 1),
(6990, 182139, 530, 1, 1, -156.05, 7301.58, 22.7274, -1.36136, 0, 0, -0.629322, 0.777145, 120, 100, 1),
(7070, 182139, 530, 1, 1, -178.847, 7316.93, 21.8591, -0.139624, 0, 0, -0.0697553, 0.997564, 120, 100, 1),
(7111, 182139, 530, 1, 1, -216.573, 7067.33, 18.9056, -2.26892, 0, 0, -0.906306, 0.422622, 120, 100, 1),
(8052, 182139, 530, 1, 1, -99.8542, 7166.18, 19.2331, 1.90241, 0, 0, 0.814116, 0.580702, 120, 100, 1),
(8056, 182139, 530, 1, 1, -69.0226, 7153.78, 19.3556, 2.94959, 0, 0, 0.995395, 0.0958539, 120, 100, 1),
(8057, 182139, 530, 1, 1, -107.885, 7149.89, 19.2729, 1.16937, 0, 0, 0.551937, 0.833886, 120, 100, 1),
(8058, 182139, 530, 1, 1, -135.537, 7087.72, 17.4921, 1.79769, 0, 0, 0.782608, 0.622514, 120, 100, 1),
(8065, 182139, 530, 1, 1, -112.642, 6976.46, 17.7378, 2.02458, 0, 0, 0.848048, 0.52992, 120, 100, 1),
(8071, 182139, 530, 1, 1, -118.233, 7007.3, 18.6213, -0.017452, 0, 0, -0.00872589, 0.999962, 120, 100, 1),
(8079, 182139, 530, 1, 1, -233.861, 7032.65, 18.4706, 1.43117, 0, 0, 0.656059, 0.75471, 120, 100, 1),
(8084, 182139, 530, 1, 1, -0.602159, 7158.36, 17.3827, 1.93731, 0, 0, 0.824125, 0.566409, 120, 100, 1);
DELETE FROM `creature` WHERE `guid` = 62210;
DELETE FROM `creature` WHERE `guid` = 62212;
DELETE FROM `creature` WHERE `guid` in (81373,81375,81374,81372,81371,81370,81369,81368,81354);
DELETE FROM `game_event_creature` WHERE `guid` in (81373,81375,81374,81372,81371,81370,81369,81368,81354);
UPDATE IGNORE `creature_involvedrelation` SET `id`='16817' WHERE `id`=16788 AND `quest`=9365;
UPDATE IGNORE `creature_involvedrelation` SET `id`='16818' WHERE `id`=16788 AND `quest`=9339;
UPDATE IGNORE `creature_questrelation` SET `id`='16818' WHERE `id`=16788 AND `quest`=9339;
UPDATE `creature_template` SET `npcflag`='0' WHERE `entry`=16788;
DELETE FROM `creature` WHERE `guid` = 57719;
DELETE FROM `game_event_creature` WHERE `guid` = 57719;
REPLACE gameobject VALUES (45559, 181305, 530, 1,1,-3794.19, -11520, -134.936, 5.08077, 0, 0, 0.565638, -0.824653, 180, 100, 1);
DELETE FROM `game_event_gameobject` WHERE `guid` = 69557;
DELETE FROM `gameobject` WHERE `guid` = 69557;
UPDATE `gameobject` SET `id`='181288' WHERE `id`= 300068;
DELETE FROM `gameobject_template` WHERE `entry` = 300068;
REPLACE INTO gameobject VALUES ( 37423, 181302, 1, 1,1,8707.71, 927.48, 15.3919, 3.29546, 0, 0, 0.997042, -0.0768555, 180, 100, 1);
DELETE FROM `creature` WHERE `guid` = 117103;
DELETE FROM `creature` WHERE `guid` = 117104;
DELETE FROM `creature` WHERE `guid` = 117105;
UPDATE creature_template SET InhabitType=InhabitType|4 WHERE entry IN (38004,38451,38332,38454);
UPDATE creature_template SET RegenHealth = 0 WHERE entry IN (37970,37972,37973);
UPDATE creature SET spawnMask = 15 WHERE id in (37970,37972,37973);
delete from creature_template_addon where entry in (37973,37970,37972);

# NeatElves
UPDATE `gameobject_template` SET `faction` = 14 WHERE `entry` = 175124;
UPDATE `creature_template` SET InhabitType=InhabitType|4 WHERE `entry` = 34606;
DELETE FROM `creature_loot_template` WHERE `entry` = 21728 AND `item` = 27511;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`= -100 WHERE `item`=23270;
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(37703, 37700, 0, 1, 3, 5),
(37703, 37701, 0, 1, 3, 5),
(37703, 37702, 0, 1, 3, 5),
(37703, 37703, 0, 1, 3, 5),
(37703, 37704, 0, 1, 3, 5),
(37703, 37705, 0, 1, 3, 5);
UPDATE `item_loot_template` SET `mincountOrRef`='20' WHERE `entry`=44663 AND `item`=33470;
DELETE FROM `item_loot_template` WHERE `entry` = 44663 AND `item` = 37700;
DELETE FROM `item_loot_template` WHERE `entry` = 44663 AND `item` = 37701;
DELETE FROM `item_loot_template` WHERE `entry` = 44663 AND `item` = 37702;
DELETE FROM `item_loot_template` WHERE `entry` = 44663 AND `item` = 37704;
DELETE FROM `item_loot_template` WHERE `entry` = 44663 AND `item` = 37705;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100', `groupid`='0', `mincountOrRef`='-37703', `maxcount`='3' WHERE `entry`=44663 AND `item`=37703;
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(29918, 29918, 0, 1, 1, 1),
(29918, 29920, 0, 1, 1, 1),
(29918, 29921, 0, 1, 1, 1),
(29918, 29922, 0, 1, 1, 1),
(29918, 29923, 0, 1, 1, 1),
(29918, 29924, 0, 1, 1, 1),
(29918, 29925, 0, 1, 1, 1),
(29918, 29947, 0, 1, 1, 1),
(29918, 29948, 0, 1, 1, 1),
(29918, 29949, 0, 1, 1, 1),
(29918, 30447, 0, 1, 1, 1),
(29918, 30448, 1, 1, 1, 1),
(29918, 32944, 1, 1, 1, 1);
DELETE FROM `creature_loot_template` WHERE `entry` = 19514 AND `item` = 29920;
DELETE FROM `creature_loot_template` WHERE `entry` = 19514 AND `item` = 29921;
DELETE FROM `creature_loot_template` WHERE `entry` = 19514 AND `item` = 29922;
DELETE FROM `creature_loot_template` WHERE `entry` = 19514 AND `item` = 29923;
DELETE FROM `creature_loot_template` WHERE `entry` = 19514 AND `item` = 29924;
DELETE FROM `creature_loot_template` WHERE `entry` = 19514 AND `item` = 29925;
DELETE FROM `creature_loot_template` WHERE `entry` = 19514 AND `item` = 29947;
DELETE FROM `creature_loot_template` WHERE `entry` = 19514 AND `item` = 29948;
DELETE FROM `creature_loot_template` WHERE `entry` = 19514 AND `item` = 29949;
DELETE FROM `creature_loot_template` WHERE `entry` = 19514 AND `item` = 30447;
DELETE FROM `creature_loot_template` WHERE `entry` = 19514 AND `item` = 30448;
DELETE FROM `creature_loot_template` WHERE `entry` = 19514 AND `item` = 32944;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='100', `groupid`='0', `mincountOrRef`='-29918', `maxcount`='3' WHERE `entry`=19514 AND `item`=29918;
DELETE FROM `skinning_loot_template` WHERE (`entry`=31233) AND (`item`=33568);
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (31233, 33568, 0, 1, 1, 6);
UPDATE `creature_template` SET `type_flags` = 34816 WHERE `entry` = 29724;
DELETE FROM `creature` WHERE `id` in (22418);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`) VALUES
(32239,22418, 534, 1, 1, 18783, 0, 5503.713, -3523.436,1608.781, 0.0, 604800, 0, 0, 7588, 0);
UPDATE `creature_template` SET InhabitType=InhabitType|4 WHERE entry in (30282,30084,32295,30592);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(116900, 28859, 616, 3, 1, 0, 0, 808.535, 1213.55, 295.972, 3.22503, 604800, 0, 0, 6972500, 212900, 0);
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 10137 AND `id` = 1;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 10137 AND `id` = 1;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 9262;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 9262;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 9699;
REPLACE INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(40224,142189,1,1,1,-10249.2,-3981.8,1.66783,-0.750491,0,0,0.366501,-0.930418,300,100,1),
(8087,142189,1,1,1,-10119.7,-4052.46,5.33005,-0.366519,0,0,0.182236,-0.983255,300,100,1),
(8090,142189,1,1,1,-10154.2,-3948.635,7.744733,2.652894,0,0,0.970295,0.241925,300,100,1);
UPDATE `creature_template` SET `npcflag`=0 WHERE `entry`=8151;
UPDATE `gossip_menu_option` SET `option_text`='How can I prove myself to the Timbermaw furbolg?' WHERE `menu_id`=3622 AND `id`=0;
UPDATE `gossip_menu_option` SET `option_text`='Let me take a look at what you have to offer.' WHERE `menu_id`=4002 AND `id`=0;
UPDATE `gossip_menu_option` SET `option_text`='I am curious to see what a bucket of bolts has to offer.' WHERE `menu_id`=4003 AND `id`=0;
UPDATE `creature_template` SET `gossip_menu_id`=3963 WHERE `entry`=11626;
UPDATE `creature_template` SET `gossip_menu_id`=8080 WHERE `entry`=17310;
UPDATE `creature_template` SET `gossip_menu_id`=7407 WHERE `entry`=17303;
UPDATE `creature_template` SET `gossip_menu_id`=7405 WHERE `entry`=17287;
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (3963, 4815),(7405, 8874),(7407, 8876),(8080, 9986);
# NeatElves
UPDATE `gameobject_template` SET `flags`='4', `data1`='178104' WHERE `entry`=178105;
UPDATE `gameobject_template` SET `flags`='4', `data1`='178104' WHERE `entry`=178106;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 178105;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 178106;
DELETE FROM `gameobject` WHERE `guid` = 42804;
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('14415', '15', 'Resonite Crystal');
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(42808, 14415, 0, 'Resonite Crystal'),
(42809, 14415, 0, 'Resonite Crystal'),
(42803, 14415, 0, 'Resonite Crystal'),
(42807, 14415, 0, 'Resonite Crystal'),
(42796, 14415, 0, 'Resonite Crystal'),
(42794, 14415, 0, 'Resonite Crystal'),
(42798, 14415, 0, 'Resonite Crystal'),
(42810, 14415, 0, 'Resonite Crystal'),
(42806, 14415, 0, 'Resonite Crystal'),
(42800, 14415, 0, 'Resonite Crystal'),
(42799, 14415, 0, 'Resonite Crystal'),
(42812, 14415, 0, 'Resonite Crystal'),
(42814, 14415, 0, 'Resonite Crystal'),
(42813, 14415, 0, 'Resonite Crystal'),
(42795, 14415, 0, 'Resonite Crystal'),
(42811, 14415, 0, 'Resonite Crystal'),
(12796, 14415, 0, 'Resonite Crystal'),
(14020, 14415, 0, 'Resonite Crystal'),
(15061, 14415, 0, 'Resonite Crystal'),
(42815, 14415, 0, 'Resonite Crystal'),
(8143, 14415, 0, 'Resonite Crystal'),
(42802, 14415, 0, 'Resonite Crystal'),
(42801, 14415, 0, 'Resonite Crystal'),
(12006, 14415, 0, 'Resonite Crystal'),
(42797, 14415, 0, 'Resonite Crystal'),
(19120, 14415, 0, 'Resonite Crystal'),
(19121, 14415, 0, 'Resonite Crystal'),
(19119, 14415, 0, 'Resonite Crystal'),
(19118, 14415, 0, 'Resonite Crystal');
UPDATE `gameobject` SET `spawntimesecs`='300' WHERE `guid`=71339;
UPDATE `gameobject` SET `spawntimesecs`='300' WHERE `guid`=69330;
UPDATE creature_template SET gossip_menu_id =6476 WHERE entry = 15116;
REPLACE INTO gossip_menu (entry, text_id) VALUES (6476, 7677);
UPDATE `creature_template` SET `faction_A`='1602', `faction_H`='1602' WHERE `entry`=16661;
REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES ('10879', '7492'), ('10881', '7492'), ('20724', '7492');
UPDATE `quest_template` SET `RequiredRaces`='690' WHERE `id`=7492;
UPDATE `creature_questrelation` SET `id`='10881' WHERE `id`=10880 AND `quest`=1000;
UPDATE `quest_template` SET `RequiredRaces`='0' WHERE `id`=1126;
UPDATE `quest_template`SET`NextQuestId`='1124', `PrevQuestId`='0', `NextQuestIdChain`='1124' WHERE `id`=6762;
UPDATE creature_template SET gossip_menu_id =7812 WHERE entry = 17631;
UPDATE creature_template SET gossip_menu_id =7812 WHERE entry = 17632;
REPLACE INTO gossip_menu (entry, text_id) VALUES (7812, 9564);
UPDATE creature_template SET gossip_menu_id =11778 WHERE entry = 4265;
REPLACE INTO gossip_menu (entry, text_id) VALUES (11778, 16510);
UPDATE creature_template SET gossip_menu_id =5782 WHERE entry = 20724;
UPDATE `gameobject_template` SET `data1`='13359' WHERE `entry`=13873;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 13873;
UPDATE `gameobject_template` SET `flags`='4', `data1`='12654' WHERE `entry`=13360;
UPDATE `gameobject_template` SET `flags`='4', `data1`='12654' WHERE `entry`=13872;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 13360;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 13872;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(511, 13359, 1, 1, 1, 7417.82, -851, 17.574, 0.628, 0, 0, 0.308866, 0.951106, 300, 100, 1),
(3208, 13359, 1, 1, 1, 7286.63, -988, 33.378, 1.208, 0, 0, 0.567939, 0.82307, 300, 100, 1),
(3311, 13359, 1, 1, 1, 7408.14, -919, 13.574, -2, 0, 0, -0.841471, 0.540302, 300, 100, 1),
(6452, 13359, 1, 1, 1, 7381.15, -985, 31.5038, 2.88, 0, 0, 0.991458, 0.130424, 300, 100, 1),
(7066, 13359, 1, 1, 1, 7357.62, -804, 8.267, -3, 0, 0, -0.997495, 0.0707372, 300, 100, 1),
(11706, 13359, 1, 1, 1, 7312.63, -951, 32.62, 1.78, 0, 0, 0.777072, 0.629412, 300, 100, 1),
(14350, 13359, 1, 1, 1, 7416.72, -1062, 38.1199, 2.635, 0, 0, 0.968092, 0.250596, 300, 100, 1),
(1630, 13359, 1, 1, 1, 7389.11, -1065, 38.538, -1, 0, 0, -0.479426, 0.877583, 300, 100, 1),
(4005, 13359, 1, 1, 1, 7247.78, -864, 30.767, -2, 0, 0, -0.841471, 0.540302, 300, 100, 1),
(12462, 13359, 1, 1, 1, 7369.33, -782, 7.816, 4.778, 0, 0, 0.683534, -0.729919, 300, 100, 1),
(15614, 13359, 1, 1, 1, 7459.36, -836, 1.29, 4.28, 0, 0, 0.84233, -0.538962, 300, 100, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(42804, 12653, 1, 1, 1, 7247.78, -864, 30.767, -2, 0, 0, -0.841471, 0.540302, 300, 100, 1),
(8095, 12653, 1, 1, 1, 7286.63, -988, 33.378, 1.208, 0, 0, 0.567939, 0.82307, 300, 100, 1),
(8102, 12653, 1, 1, 1, 7312.63, -951, 32.62, 1.78, 0, 0, 0.777072, 0.629412, 300, 100, 1),
(8103, 12653, 1, 1, 1, 7357.62, -804, 8.267, -3, 0, 0, -0.997495, 0.0707372, 300, 100, 1),
(8104, 12653, 1, 1, 1, 7369.33, -782, 7.816, 4.778, 0, 0, 0.683534, -0.729919, 300, 100, 1),
(8105, 12653, 1, 1, 1, 7381.15, -985, 31.5038, 2.88, 0, 0, 0.991458, 0.130424, 300, 100, 1),
(8106, 12653, 1, 1, 1, 7389.11, -1065, 38.538, -1, 0, 0, -0.479426, 0.877583, 300, 100, 1),
(8107, 12653, 1, 1, 1, 7408.14, -919, 13.574, -2, 0, 0, -0.841471, 0.540302, 300, 100, 1),
(8108, 12653, 1, 1, 1, 7416.72, -1062, 38.1199, 2.635, 0, 0, 0.968092, 0.250596, 300, 100, 1),
(8110, 12653, 1, 1, 1, 7417.82, -851, 17.574, 0.628, 0, 0, 0.308866, 0.951106, 300, 100, 1),
(8112, 12653, 1, 1, 1, 7459.36, -836, 1.29, 4.28, 0, 0, 0.84233, -0.538962, 300, 100, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(8113, 13873, 1, 1, 1, 7247.78, -864, 30.767, -2, 0, 0, -0.841471, 0.540302, 300, 100, 1),
(8114, 13873, 1, 1, 1, 7286.63, -988, 33.378, 1.208, 0, 0, 0.567939, 0.82307, 300, 100, 1),
(8115, 13873, 1, 1, 1, 7312.63, -951, 32.62, 1.78, 0, 0, 0.777072, 0.629412, 300, 100, 1),
(8117, 13873, 1, 1, 1, 7357.62, -804, 8.267, -3, 0, 0, -0.997495, 0.0707372, 300, 100, 1),
(8118, 13873, 1, 1, 1, 7369.33, -782, 7.816, 4.778, 0, 0, 0.683534, -0.729919, 300, 100, 1),
(8119, 13873, 1, 1, 1, 7381.15, -985, 31.5038, 2.88, 0, 0, 0.991458, 0.130424, 300, 100, 1),
(8120, 13873, 1, 1, 1, 7389.11, -1065, 38.538, -1, 0, 0, -0.479426, 0.877583, 300, 100, 1),
(8127, 13873, 1, 1, 1, 7408.14, -919, 13.574, -2, 0, 0, -0.841471, 0.540302, 300, 100, 1),
(8129, 13873, 1, 1, 1, 7416.72, -1062, 38.1199, 2.635, 0, 0, 0.968092, 0.250596, 300, 100, 1),
(8131, 13873, 1, 1, 1, 7417.82, -851, 17.574, 0.628, 0, 0, 0.308866, 0.951106, 300, 100, 1),
(8132, 13873, 1, 1, 1, 7459.36, -836, 1.29, 4.28, 0, 0, 0.84233, -0.538962, 300, 100, 1);
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('14416', '1', 'Cat Figurine 1+2'),('14417', '1', 'Cat Figurine 1+2'),('14418', '1', 'Cat Figurine 1+2'),
('14419', '1', 'Cat Figurine 1+2'),('14420', '1', 'Cat Figurine 1+2'),('14421', '1', 'Cat Figurine 1+2'),
('14422', '1', 'Cat Figurine 1+2'),('14423', '1', 'Cat Figurine 1+2'),('14424', '1', 'Cat Figurine 1+2'),
('14425', '1', 'Cat Figurine 1+2'),('14426', '1', 'Cat Figurine 1+2');
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
('511', '14416', '0', 'Cat Figurine 1'),('8113', '14416', '10', 'Cat Figurine 2'),
('3208', '14417', '0', 'Cat Figurine 1'),('8114', '14417', '10', 'Cat Figurine 2'),
('3311', '14418', '0', 'Cat Figurine 1'),('8115', '14418', '10', 'Cat Figurine 2'),
('6452', '14419', '0', 'Cat Figurine 1'),('8117', '14419', '10', 'Cat Figurine 2'),
('7066', '14420', '0', 'Cat Figurine 1'),('8118', '14420', '10', 'Cat Figurine 2'),
('11706', '14421', '0', 'Cat Figurine 1'),('8119', '14421', '10', 'Cat Figurine 2'),
('14350', '14422', '0', 'Cat Figurine 1'),('8120', '14422', '10', 'Cat Figurine 2'),
('1630', '14423', '0', 'Cat Figurine 1'),('8127', '14423', '10', 'Cat Figurine 2'),
('4005', '14424', '0', 'Cat Figurine 1'),('8129', '14424', '10', 'Cat Figurine 2'),
('12462', '14425', '0', 'Cat Figurine 1'),('8131', '14425', '10', 'Cat Figurine 2'),
('15614', '14426', '0', 'Cat Figurine 1'),('8132', '14426', '10', 'Cat Figurine 2');
DELETE FROM `gameobject_loot_template` WHERE `entry` = 17783 AND `item` = 5498;
UPDATE `gameobject_template` SET `flags`='4' WHERE `entry`=17783;
UPDATE `gameobject_template` SET `flags`='4' WHERE `entry` in (153123,191209,191210,126049,128293,126049,128293,191209,191210,264,321,331,2739,2907,3640,13891,19021,68865,105175,141853,152094,152095,165554,171938,175566,175928,176753,177785,177792,177794,178185,178186,179004,179005,179006,179007,179008,180216,180501,181644,181671,181680,181757,181771,181872,181873,181874,181875,181876,182095,182127,182166,182599,182600,182601,182606,183441,184075,184443,184691,184744,184980,185233,186423,186463,186662,186729,186938,187333,187660,187885,187886,187898,187899,187900,187901,187902,188016,188017,188018,188237,188238,188263,188489,188502,188503,188650,189288,189295,190208,190223,190399,190542,190543,190696,190718,190719,191531,191532,191533,191534,191535,191536,191537,191773,191781,191844,191845,192243,192818,192828,192910,192911,192912,193200,193201,193943,193944,193945,193946,194126,201778);
UPDATE `gameobject_template` SET `flags`='20' WHERE `entry`=179545;
UPDATE `gameobject_template` SET `flags`='20' WHERE `entry`=194159;
UPDATE `gameobject_template` SET `flags`='16' WHERE `entry`=193597;
UPDATE `gameobject_template` SET `flags`='16' WHERE `entry`=194200;
UPDATE `gameobject_template` SET `flags`='16' WHERE `entry`=194201;
UPDATE `gameobject_template` SET `flags`='6' WHERE `entry`=103815;
UPDATE `gameobject_template` SET `flags`='6' WHERE `entry`=121264;
UPDATE `gameobject_template` SET `flags`='6' WHERE `entry`=129127;
UPDATE `gameobject_template` SET `flags`='6' WHERE `entry`=191543;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(66019, 13872, 1, 1, 1, 7203.75, -860, 41.626, 1.518, 0, 0, 0.688196, 0.725525, 120, 100, 1),
(66020, 13872, 1, 1, 1, 7240.99, -888, 34.821, -1, 0, 0, -0.479426, 0.877583, 120, 100, 1),
(66021, 13872, 1, 1, 1, 7244.85, -956, 37.689, 1.222, 0, 0, 0.573687, 0.819075, 120, 100, 1),
(66022, 13872, 1, 1, 1, 7262.83, -866, 32.906, 2.57, 0, 0, 0.959437, 0.281922, 120, 100, 1),
(66023, 13872, 1, 1, 1, 7283.04, -793, 23.596, 4.895, 0, 0, 0.639688, -0.768634, 120, 100, 1),
(66024, 13872, 1, 1, 1, 7298.42, -862, 29.827, -2, 0, 0, -0.841471, 0.540302, 120, 100, 1),
(66025, 13872, 1, 1, 1, 7317.71, -914, 32.254, 1.777, 0, 0, 0.776127, 0.630577, 120, 100, 1),
(66026, 13872, 1, 1, 1, 7328.4, -928, 4.692, 4.676, 0, 0, 0.719854, -0.694125, 120, 100, 1),
(66027, 13872, 1, 1, 1, 7352.02, -772, 7.951, -1, 0, 0, -0.479426, 0.877583, 120, 100, 1),
(66028, 13872, 1, 1, 1, 7363.67, -958, 15.798, 5.968, 0, 0, 0.156941, -0.987608, 120, 100, 1),
(66029, 13872, 1, 1, 1, 7378.33, -828, 17.493, 1.78, 0, 0, 0.777072, 0.629412, 120, 100, 1),
(66030, 13872, 1, 1, 1, 7382.99, -924, 32.254, 1.676, 0, 0, 0.743307, 0.668951, 120, 100, 1),
(66031, 13872, 1, 1, 1, 7383.58, -828, 17.567, 1.46, 0, 0, 0.66687, 0.745174, 120, 100, 1),
(66032, 13872, 1, 1, 1, 7384.15, -1009, 31.562, -3, 0, 0, -0.997495, 0.0707372, 120, 100, 1),
(8133, 13872, 1, 1, 1, 7393.72, -881, 14.189, 1.313, 0, 0, 0.610348, 0.792133, 120, 100, 1),
(8136, 13872, 1, 1, 1, 7395.24, -1124, 41.174, 0.803, 0, 0, 0.390799, 0.920476, 120, 100, 1),
(8138, 13872, 1, 1, 1, 7430.09, -865, 3.619, -2, 0, 0, -0.841471, 0.540302, 120, 100, 1),
(8140, 13872, 1, 1, 1, 7438.6, -1087, 38.0979, 2.356, 0, 0, 0.923842, 0.382773, 120, 100, 1),
(8141, 13872, 1, 1, 1, 7439.39, -769, 15.291, 3.242, 0, 0, 0.99874, -0.0501826, 120, 100, 1),
(8145, 13872, 1, 1, 1, 7457.69, -856, 1.149, 0.988, 0, 0, 0.474151, 0.880443, 120, 100, 1),
(8156, 13872, 1, 1, 1, 7490.79, -888, 16.76, -1, 0, 0, -0.479426, 0.877583, 120, 100, 1),
(8165, 13872, 1, 1, 1, 7493.77, -1003, -10, 3.044, 0, 0, 0.99881, 0.048777, 120, 100, 1),
(8168, 13872, 1, 1, 1, 7505.54, -1026, -10, 1.082, 0, 0, 0.514993, 0.857194, 120, 100, 1),
(8171, 13360, 1, 1, 1, 7203.75, -860, 41.626, 1.518, 0, 0, 0.688196, 0.725525, 120, 100, 1),
(8175, 13360, 1, 1, 1, 7240.99, -888, 34.821, -1, 0, 0, -0.479426, 0.877583, 120, 100, 1),
(8181, 13360, 1, 1, 1, 7244.85, -956, 37.689, 1.222, 0, 0, 0.573687, 0.819075, 120, 100, 1),
(8184, 13360, 1, 1, 1, 7262.83, -866, 32.906, 2.57, 0, 0, 0.959437, 0.281922, 120, 100, 1),
(8185, 13360, 1, 1, 1, 7283.04, -793, 23.596, 4.895, 0, 0, 0.639688, -0.768634, 120, 100, 1),
(8188, 13360, 1, 1, 1, 7298.42, -862, 29.827, -2, 0, 0, -0.841471, 0.540302, 120, 100, 1),
(8189, 13360, 1, 1, 1, 7317.71, -914, 32.254, 1.777, 0, 0, 0.776127, 0.630577, 120, 100, 1),
(8193, 13360, 1, 1, 1, 7328.4, -928, 4.692, 4.676, 0, 0, 0.719854, -0.694125, 120, 100, 1),
(8199, 13360, 1, 1, 1, 7352.02, -772, 7.951, -1, 0, 0, -0.479426, 0.877583, 120, 100, 1),
(8202, 13360, 1, 1, 1, 7363.67, -958, 15.798, 5.968, 0, 0, 0.156941, -0.987608, 120, 100, 1),
(8203, 13360, 1, 1, 1, 7378.33, -828, 17.493, 1.78, 0, 0, 0.777072, 0.629412, 120, 100, 1),
(8204, 13360, 1, 1, 1, 7382.99, -924, 32.254, 1.676, 0, 0, 0.743307, 0.668951, 120, 100, 1),
(8207, 13360, 1, 1, 1, 7383.58, -828, 17.567, 1.46, 0, 0, 0.66687, 0.745174, 120, 100, 1),
(8211, 13360, 1, 1, 1, 7384.15, -1009, 31.562, -3, 0, 0, -0.997495, 0.0707372, 120, 100, 1),
(8212, 13360, 1, 1, 1, 7393.72, -881, 14.189, 1.313, 0, 0, 0.610348, 0.792133, 120, 100, 1),
(8213, 13360, 1, 1, 1, 7395.24, -1124, 41.174, 0.803, 0, 0, 0.390799, 0.920476, 120, 100, 1),
(8214, 13360, 1, 1, 1, 7430.09, -865, 3.619, -2, 0, 0, -0.841471, 0.540302, 120, 100, 1),
(8215, 13360, 1, 1, 1, 7438.6, -1087, 38.0979, 2.356, 0, 0, 0.923842, 0.382773, 120, 100, 1),
(8216, 13360, 1, 1, 1, 7439.39, -769, 15.291, 3.242, 0, 0, 0.99874, -0.0501826, 120, 100, 1),
(8217, 13360, 1, 1, 1, 7457.69, -856, 1.149, 0.988, 0, 0, 0.474151, 0.880443, 120, 100, 1),
(8218, 13360, 1, 1, 1, 7490.79, -888, 16.76, -1, 0, 0, -0.479426, 0.877583, 120, 100, 1),
(8223, 13360, 1, 1, 1, 7493.77, -1003, -10, 3.044, 0, 0, 0.99881, 0.048777, 120, 100, 1),
(8233, 13360, 1, 1, 1, 7505.54, -1026, -10, 1.082, 0, 0, 0.514993, 0.857194, 120, 100, 1);
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
('6834', '14428', '0', 'Mathystra Relic 1'),('8171', '14428', '0', 'Mathystra Relic 2'),('66019', '14428', '0', 'Mathystra Relic 3'),
('7711', '14429', '0', 'Mathystra Relic 1'),('8175', '14429', '0', 'Mathystra Relic 2'),('66020', '14429', '0', 'Mathystra Relic 3'),
('6946', '14430', '0', 'Mathystra Relic 1'),('8181', '14430', '0', 'Mathystra Relic 2'),('66021', '14430', '0', 'Mathystra Relic 3'),
('1351', '14431', '0', 'Mathystra Relic 1'),('8184', '14431', '0', 'Mathystra Relic 2'),('66022', '14431', '0', 'Mathystra Relic 3'),
('2483', '14432', '0', 'Mathystra Relic 1'),('8185', '14432', '0', 'Mathystra Relic 2'),('66023', '14432', '0', 'Mathystra Relic 3'),
('7020', '14433', '0', 'Mathystra Relic 1'),('8188', '14433', '0', 'Mathystra Relic 2'),('66024', '14433', '0', 'Mathystra Relic 3'),
('10873', '14434', '0', 'Mathystra Relic 1'),('8189', '14434', '0', 'Mathystra Relic 2'),('66025', '14434', '0', 'Mathystra Relic 3'),
('16256', '14435', '0', 'Mathystra Relic 1'),('8193', '14435', '0', 'Mathystra Relic 2'),('66026', '14435', '0', 'Mathystra Relic 3'),
('4439', '14436', '0', 'Mathystra Relic 1'),('8199', '14436', '0', 'Mathystra Relic 2'),('66027', '14436', '0', 'Mathystra Relic 3'),
('9409', '14437', '0', 'Mathystra Relic 1'),('8202', '14437', '0', 'Mathystra Relic 2'),('66028', '14437', '0', 'Mathystra Relic 3'),
('10671', '14438', '0', 'Mathystra Relic 1'),('8203', '14438', '0', 'Mathystra Relic 2'),('66029', '14438', '0', 'Mathystra Relic 3'),
('4230', '14439', '0', 'Mathystra Relic 1'),('8204', '14439', '0', 'Mathystra Relic 2'),('66030', '14439', '0', 'Mathystra Relic 3'),
('8362', '14440', '0', 'Mathystra Relic 1'),('8207', '14440', '0', 'Mathystra Relic 2'),('66031', '14440', '0', 'Mathystra Relic 3'),
('9769', '14441', '0', 'Mathystra Relic 1'),('8211', '14441', '0', 'Mathystra Relic 2'),('66032', '14441', '0', 'Mathystra Relic 3'),
('6805', '14442', '0', 'Mathystra Relic 1'),('8212', '14442', '0', 'Mathystra Relic 2'),('8133', '14442', '0', 'Mathystra Relic 3'),
('8721', '14443', '0', 'Mathystra Relic 1'),('8213', '14443', '0', 'Mathystra Relic 2'),('8136', '14443', '0', 'Mathystra Relic 3'),
('8327', '14444', '0', 'Mathystra Relic 1'),('8214', '14444', '0', 'Mathystra Relic 2'),('8138', '14444', '0', 'Mathystra Relic 3'),
('12362', '14445', '0', 'Mathystra Relic 1'),('8215', '14445', '0', 'Mathystra Relic 2'),('8140', '14445', '0', 'Mathystra Relic 3'),
('980', '14446', '0', 'Mathystra Relic 1'),('8216', '14446', '0', 'Mathystra Relic 2'),('8141', '14446', '0', 'Mathystra Relic 3'),
('9084', '14447', '0', 'Mathystra Relic 1'),('8217', '14447', '0', 'Mathystra Relic 2'),('8145', '14447', '0', 'Mathystra Relic 3'),
('193', '14448', '0', 'Mathystra Relic 1'),('8218', '14448', '0', 'Mathystra Relic 2'),('8156', '14448', '0', 'Mathystra Relic 3'),
('12403', '14449', '0', 'Mathystra Relic 1'),('8223', '14449', '0', 'Mathystra Relic 2'),('8165', '14449', '0', 'Mathystra Relic 3'),
('3869', '14450', '0', 'Mathystra Relic 1'),('8233', '14450', '0', 'Mathystra Relic 2'),('8168', '14450', '0', 'Mathystra Relic 3');
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('14428', '1', 'Mathystra Relic 1+2+3'),('14429', '1', 'Mathystra Relic 1+2+3'),('14430', '1', 'Mathystra Relic 1+2+3'),
('14431', '1', 'Mathystra Relic 1+2+3'),('14432', '1', 'Mathystra Relic 1+2+3'),('14433', '1', 'Mathystra Relic 1+2+3'),
('14434', '1', 'Mathystra Relic 1+2+3'),('14435', '1', 'Mathystra Relic 1+2+3'),('14436', '1', 'Mathystra Relic 1+2+3'),
('14437', '1', 'Mathystra Relic 1+2+3'),('14438', '1', 'Mathystra Relic 1+2+3'),('14439', '1', 'Mathystra Relic 1+2+3'),
('14440', '1', 'Mathystra Relic 1+2+3'),('14441', '1', 'Mathystra Relic 1+2+3'),('14442', '1', 'Mathystra Relic 1+2+3'),
('14443', '1', 'Mathystra Relic 1+2+3'),('14444', '1', 'Mathystra Relic 1+2+3'),('14445', '1', 'Mathystra Relic 1+2+3'),
('14446', '1', 'Mathystra Relic 1+2+3'),('14447', '1', 'Mathystra Relic 1+2+3'),('14448', '1', 'Mathystra Relic 1+2+3'),
('14449', '1', 'Mathystra Relic 1+2+3'),('14450', '1', 'Mathystra Relic 1+2+3'),('14451', '12', 'Master Mathystra Relic 1+2+3');
REPLACE INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES
('14428', '14451', '0', 'Mathystra Relic 1+2+3'),('14429', '14451', '0', 'Mathystra Relic 1+2+3'),
('14430', '14451', '0', 'Mathystra Relic 1+2+3'),('14431', '14451', '0', 'Mathystra Relic 1+2+3'),
('14432', '14451', '0', 'Mathystra Relic 1+2+3'),('14433', '14451', '0', 'Mathystra Relic 1+2+3'),
('14434', '14451', '0', 'Mathystra Relic 1+2+3'),('14435', '14451', '0', 'Mathystra Relic 1+2+3'),
('14436', '14451', '0', 'Mathystra Relic 1+2+3'),('14437', '14451', '0', 'Mathystra Relic 1+2+3'),
('14438', '14451', '0', 'Mathystra Relic 1+2+3'),('14439', '14451', '0', 'Mathystra Relic 1+2+3'),
('14440', '14451', '0', 'Mathystra Relic 1+2+3'),('14441', '14451', '0', 'Mathystra Relic 1+2+3'),
('14442', '14451', '0', 'Mathystra Relic 1+2+3'),('14443', '14451', '0', 'Mathystra Relic 1+2+3'),
('14444', '14451', '0', 'Mathystra Relic 1+2+3'),('14445', '14451', '0', 'Mathystra Relic 1+2+3'),
('14446', '14451', '0', 'Mathystra Relic 1+2+3'),('14447', '14451', '0', 'Mathystra Relic 1+2+3'),
('14448', '14451', '0', 'Mathystra Relic 1+2+3'),('14449', '14451', '0', 'Mathystra Relic 1+2+3'),
('14450', '14451', '0', 'Mathystra Relic 1+2+3');
UPDATE `creature_template` SET `spell1`=62974,`spell2`=62286,`spell3`=62299,`spell4`=64660, `mechanic_immune_mask`=344276858 WHERE `entry`=34045;
UPDATE `creature_template` SET `spell1`=62974,`spell2`=62286,`spell3`=62299,`spell4`=64660, `mechanic_immune_mask`=344276858 WHERE `entry`=33062;
UPDATE `creature_template` SET `lootid`='0' WHERE `entry`=2909;
DELETE FROM `creature_loot_template` WHERE `entry` = 2909;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1', `mincountOrRef`='50' WHERE `entry`=54218 AND `item`=35223;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1', `mincountOrRef`='50' WHERE `entry`=54218 AND `item`=45047;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1', `mincountOrRef`='50' WHERE `entry`=54218 AND `item`=46779;
UPDATE creature_loot_template SET ChanceOrQuestChance=ABS(ChanceOrQuestChance) WHERE item in (17502,17503,17504,17326,17327,17328);
UPDATE `creature_template` SET `npcflag`='0' WHERE `entry`=3210;
UPDATE `creature_template` SET `npcflag`='0' WHERE `entry`=3211;
UPDATE `creature_template` SET `npcflag`='0' WHERE `entry`=3213;
UPDATE `creature_template` SET `npcflag`='0' WHERE `entry`=3214;
UPDATE `creature_template` SET `npcflag`='2' WHERE `entry`=21469;
REPLACE INTO gossip_menu (entry, text_id) VALUES (5081, 6288),(5141, 6173),(5142, 6174),(7973, 9805);
UPDATE `creature_template` SET `gossip_menu_id`=5142 WHERE `entry`=13442;
UPDATE `creature_template` SET `gossip_menu_id`=5141 WHERE `entry`=13443;
UPDATE `creature_template` SET `gossip_menu_id`=5081 WHERE `entry`=13447;
UPDATE `creature_template` SET `gossip_menu_id`=7973 WHERE `entry`=19375;
REPLACE INTO gossip_menu (entry, text_id) VALUES (1621, 2273);
UPDATE `creature_template` SET `gossip_menu_id`=5241 WHERE `entry`=32099;
UPDATE `creature_template` SET `gossip_menu_id`=5241 WHERE `entry`=22658;
UPDATE `creature_template` SET `gossip_menu_id`=5241 WHERE `entry`=37420;
UPDATE `creature_template` SET `gossip_menu_id`=5124 WHERE `entry`=32080;
UPDATE `creature_template` SET `gossip_menu_id`=5124 WHERE `entry`=22571;
UPDATE `creature_template` SET `gossip_menu_id`=5124 WHERE `entry`=37401;
UPDATE `creature_template` SET `gossip_menu_id`=5141 WHERE `entry`=22541;
UPDATE `creature_template` SET `gossip_menu_id`=5141 WHERE `entry`=31965;
UPDATE `creature_template` SET `gossip_menu_id`=5141 WHERE `entry`=37284;
UPDATE `creature_template` SET `gossip_menu_id`=10875 WHERE `entry`=38157;
UPDATE `creature_template` SET `gossip_menu_id`=10875 WHERE `entry`=38639;
UPDATE `creature_template` SET `gossip_menu_id`=10875 WHERE `entry`=38640;
UPDATE `creature_template` SET `gossip_menu_id`=6484 WHERE `entry`=22647;
UPDATE `creature_template` SET `gossip_menu_id`=6484 WHERE `entry`=31979;
UPDATE `creature_template` SET `gossip_menu_id`=6484 WHERE `entry`=37298;
UPDATE `creature_template` SET `gossip_menu_id`=8453 WHERE `entry`=22656;
UPDATE `creature_template` SET `gossip_menu_id`=8453 WHERE `entry`=32092;
UPDATE `creature_template` SET `gossip_menu_id`=8453 WHERE `entry`=37413;
UPDATE `creature_template` SET `gossip_menu_id`=5442 WHERE `entry`=22628;
UPDATE `creature_template` SET `gossip_menu_id`=5442 WHERE `entry`=32032;
UPDATE `creature_template` SET `gossip_menu_id`=5442 WHERE `entry`=37352;
UPDATE `creature_template` SET `gossip_menu_id`=5146 WHERE `entry`=22597;
UPDATE `creature_template` SET `gossip_menu_id`=5146 WHERE `entry`=32766;
UPDATE `creature_template` SET `gossip_menu_id`=5146 WHERE `entry`=37480;
UPDATE `creature_template` SET `gossip_menu_id`=5147 WHERE `entry`=22722;
UPDATE `creature_template` SET `gossip_menu_id`=5147 WHERE `entry`=31823;
UPDATE `creature_template` SET `gossip_menu_id`=5147 WHERE `entry`=37484;
UPDATE `creature_template` SET `gossip_menu_id`=5142 WHERE `entry`=22527;
UPDATE `creature_template` SET `gossip_menu_id`=5142 WHERE `entry`=31923;
UPDATE `creature_template` SET `gossip_menu_id`=5142 WHERE `entry`=37239;
UPDATE `creature_template` SET `gossip_menu_id`=5081 WHERE `entry`=22735;
UPDATE `creature_template` SET `gossip_menu_id`=5081 WHERE `entry`=31960;
UPDATE `creature_template` SET `gossip_menu_id`=5081 WHERE `entry`=37278;
UPDATE `creature_template` SET `gossip_menu_id`=5281 WHERE `entry`=22575;
UPDATE `creature_template` SET `gossip_menu_id`=5281 WHERE `entry`=32101;
UPDATE `creature_template` SET `gossip_menu_id`=5281 WHERE `entry`=37422;
UPDATE `creature_template` SET `gossip_menu_id`=6261 WHERE `entry`=22736;
UPDATE `creature_template` SET `gossip_menu_id`=6261 WHERE `entry`=31961;
UPDATE `creature_template` SET `gossip_menu_id`=6261 WHERE `entry`=37279;
UPDATE `creature_template` SET `gossip_menu_id`=6262 WHERE `entry`=22759;
UPDATE `creature_template` SET `gossip_menu_id`=6262 WHERE `entry`=32076;
UPDATE `creature_template` SET `gossip_menu_id`=6262 WHERE `entry`=37397;
UPDATE `creature_template` SET `gossip_menu_id`=7499 WHERE `entry`=20548;
UPDATE `creature_template` SET `gossip_menu_id`=9680 WHERE `entry`=31210;
UPDATE `creature` SET `position_x`=3214.92, `position_y`=4065.25, `position_z`=106.16 WHERE `id`=20333;
UPDATE `creature` SET `position_x`=2755.55, `position_y`=3863.32, `position_z`=142.27 WHERE `id`=20336;
UPDATE `creature` SET `position_x`=2819.01, `position_y`=4351.10, `position_z`=144.97 WHERE `id`=20337;
UPDATE `creature` SET `position_x`=2947.31, `position_y`=4327.47, `position_z`=154.02 WHERE `id`=20338;
DELETE FROM `npc_text` WHERE `ID`=10540;
INSERT INTO `npc_text` (`ID`,`prob0`,`text0_0`) VALUES
(10540,1,"Begone, overseer!  We've already spoken.$B$BStop dragging your feet and execute your orders at Ruuan Weald!");
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES
(8436, 10540);
UPDATE `gameobject` SET `spawntimesecs` = -43200 WHERE `guid` = 30032;
DELETE FROM `creature_loot_template` WHERE (`entry`=11583) AND (`item`=16963);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (11583, 16963, 0, 3, 1, 1);
UPDATE `gameobject` SET `spawntimesecs` = 120 WHERE `guid` = 44135;

# Conditions
REPLACE INTO `conditions` VALUES ('13', '1', '32111', '0', '0', '31', '0', '3', '17946', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '45536', '0', '0', '31', '0', '5', '191088', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '45536', '0', '1', '31', '0', '5', '191089', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '45536', '0', '2', '31', '0', '5', '191090', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '3', '56140', '0', '0', '31', '0', '3', '30118', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '56429', '0', '0', '31', '0', '3', '22517', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '65872', '0', '0', '31', '0', '3', '34660', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '3', '66170', '0', '0', '31', '0', '3', '34660', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '66181', '0', '0', '31', '0', '3', '34606', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '66332', '0', '0', '31', '0', '3', '34862', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '66339', '0', '0', '31', '0', '3', '34862', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '70983', '0', '0', '31', '0', '3', '37970', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '70983', '0', '1', '31', '0', '3', '37972', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '70983', '0', '2', '31', '0', '3', '37973', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '71075', '0', '0', '31', '0', '3', '37972', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '71075', '0', '1', '31', '0', '3', '37973', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '71079', '0', '0', '31', '0', '3', '37970', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '71079', '0', '1', '31', '0', '3', '37973', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '71082', '0', '0', '31', '0', '3', '37970', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '71082', '0', '1', '31', '0', '3', '37972', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9262', '0', '0', '0', '9', '0', '11957', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9262', '1', '0', '0', '9', '0', '11967', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7675', '9369', '0', '0', '8', '0', '10107', '0', '0', '0', '0', '', 'Show different gossip if player has rewarded quest 10107');
REPLACE INTO `conditions` VALUES ('14', '7675', '9369', '0', '1', '8', '0', '10108', '0', '0', '0', '0', '', 'Show different gossip if player has rewarded quest 10108');
REPLACE INTO `gossip_menu` VALUES ('7574', '9204');
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=9262 AND SourceEntry=1;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=9262 AND SourceEntry=2;
REPLACE INTO `gossip_menu_option` VALUES ('9262', '0', '0', 'I am prepared to face Saragosa!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9262', '1', '0', 'Keristrasa, I am finished here. Please return me to the Transitus Shield.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7812', '0', '6', 'I would like to check my deposit box.', '9', '131072', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('11778', '1', '1', 'Show me what you have for sale.', '3', '128', '0', '0', '0', '0', null);
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=10137 AND SourceEntry=1;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=30315);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=30316);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=30317);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=30318);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=27482);


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

UPDATE version SET `cache_id`= '626';
UPDATE version SET `db_version`= 'YTDB_0.14.5_R626_TC_R16297_TDBAI_335_RuDB_R52';
