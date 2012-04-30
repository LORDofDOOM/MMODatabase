# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 610_FIX_13712 611_FIX_13785 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('611_FIX_13785');

# TC
-- by Nay
DELETE FROM `spell_dbc` WHERE `Id` IN (12507,31982,33134);
INSERT INTO `spell_dbc` (`Id`, `Dispel`, `Mechanic`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `AttributesEx6`, `AttributesEx7`, `Stances`, `StancesNot`, `Targets`, `CastingTimeIndex`, `AuraInterruptFlags`, `ProcFlags`, `ProcChance`, `ProcCharges`, `MaxLevel`, `BaseLevel`, `SpellLevel`, `DurationIndex`, `RangeIndex`, `StackAmount`, `EquippedItemClass`, `EquippedItemSubClassMask`, `EquippedItemInventoryTypeMask`, `Effect1`, `Effect2`, `Effect3`, `EffectDieSides1`, `EffectDieSides2`, `EffectDieSides3`, `EffectRealPointsPerLevel1`, `EffectRealPointsPerLevel2`, `EffectRealPointsPerLevel3`, `EffectBasePoints1`, `EffectBasePoints2`, `EffectBasePoints3`, `EffectMechanic1`, `EffectMechanic2`, `EffectMechanic3`, `EffectImplicitTargetA1`, `EffectImplicitTargetA2`, `EffectImplicitTargetA3`, `EffectImplicitTargetB1`, `EffectImplicitTargetB2`, `EffectImplicitTargetB3`, `EffectRadiusIndex1`, `EffectRadiusIndex2`, `EffectRadiusIndex3`, `EffectApplyAuraName1`, `EffectApplyAuraName2`, `EffectApplyAuraName3`, `EffectAmplitude1`, `EffectAmplitude2`, `EffectAmplitude3`, `EffectMultipleValue1`, `EffectMultipleValue2`, `EffectMultipleValue3`, `EffectMiscValue1`, `EffectMiscValue2`, `EffectMiscValue3`, `EffectMiscValueB1`, `EffectMiscValueB2`, `EffectMiscValueB3`, `EffectTriggerSpell1`, `EffectTriggerSpell2`, `EffectTriggerSpell3`, `EffectSpellClassMaskA1`, `EffectSpellClassMaskA2`, `EffectSpellClassMaskA3`, `EffectSpellClassMaskB1`, `EffectSpellClassMaskB2`, `EffectSpellClassMaskB3`, `EffectSpellClassMaskC1`, `EffectSpellClassMaskC2`, `EffectSpellClassMaskC3`, `MaxTargetLevel`, `SpellFamilyName`, `SpellFamilyFlags1`, `SpellFamilyFlags2`, `SpellFamilyFlags3`, `MaxAffectedTargets`, `DmgClass`, `PreventionType`, `DmgMultiplier1`, `DmgMultiplier2`, `DmgMultiplier3`, `AreaGroupId`, `SchoolMask`, `Comment`) VALUES
(12507, 0, 0, 464, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 21, 1, 0, -1, 0, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 23, 0, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12504, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 'Atal''ai Skeleton Totem'),
(31982, 0, 0, 464, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 29, 29, 21, 1, 0, -1, -1, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 23, 0, 0, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31983, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 'Tainted Earthgrab Totem'),
(33134, 0, 0, 65920, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 20, 20, 85, 1, 0, -1, -1, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 23, 0, 0, 18000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 2, 'Tainted Nova Totem');

DELETE FROM `player_factionchange_items` WHERE `alliance_id` IN (48072,48073,48074,48075,48076) AND horde_id IN (48097,48098,48099,48100,48101);
INSERT INTO `player_factionchange_items` (`race_A`,`alliance_id`,`commentA`,`race_H`,`horde_id`,`commentH`) VALUES 
(0,48076, 'Velen''s Mantle of Conquest',0,48101, 'Zabra''s Mantle of Conquest'),
(0,48075, 'Velen''s Raiments of Conquest',0,48100, 'Zabra''s Raiments of Conquest'),
(0,48074, 'Velen''s Pants of Conquest',0,48099, 'Zabra''s Pants of Conquest'),
(0,48072, 'Velen''s Handwraps of Conquest',0,48097, 'Zabra''s Handwraps of Conquest'),
(0,48073, 'Velen''s Circlet of Conquest',0,48098, 'Zabra''s Circlet of Conquest');
UPDATE `spell_proc_event` SET `procFlags`=0x10 WHERE `entry` IN (20335,20336,20337,53695,53696);
-- Template updates for creature 30560 (The RP-GG)
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216 WHERE `entry`=30560; -- The RP-GG
-- Addon data for creature 30560 (The RP-GG)
DELETE FROM `creature_template_addon` WHERE `entry`=30560;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(30560,0,0,1,0, NULL); -- The RP-GG
-- Fixing spawntime for creature 30560 (The RP-GG)
UPDATE `creature` SET `spawntimesecs`=60 WHERE `id`=30560;
-- Spellclick data for creature 30560 (The RP-GG)
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=30560;
INSERT INTO `npc_spellclick_spells` VALUES
(30560,57347,0,0,0,1,0,57348,1);
-- Spell proc cooldown for Item - Hunter T9 4P Bonus
DELETE FROM `spell_proc_event` WHERE `entry`=67151;
INSERT INTO `spell_proc_event` (`entry`,`Cooldown`) VALUES
(67151,45);

-- Areatrigger Warsong Farms SAI
SET @AT_SLAUGHTERHOUSE := 4873;
SET @AT_GRAINERY := 4871;
SET @AT_TORP_FARM := 4872;
SET @NPC_SLAUGHTERHOUSE := 25672;
SET @NPC_GRAINERY := 25669;
SET @NPC_TORP_FARM := 25671;
UPDATE `areatrigger_scripts` SET `ScriptName`='SmartTrigger' WHERE `entry` IN (@AT_SLAUGHTERHOUSE,@AT_GRAINERY,@AT_TORP_FARM);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@AT_SLAUGHTERHOUSE,@AT_GRAINERY,@AT_TORP_FARM) AND `source_type`=2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@AT_SLAUGHTERHOUSE,2,0,0,46,0,100,0,@AT_SLAUGHTERHOUSE,0,0,0,33,@NPC_SLAUGHTERHOUSE,0,0,0,0,0,7,0,0,0,0,0,0,0,"Areatrigger Slaughterhouse - On Trigger - Quest Credit"),
(@AT_GRAINERY,2,0,0,46,0,100,0,@AT_GRAINERY,0,0,0,33,@NPC_GRAINERY,0,0,0,0,0,7,0,0,0,0,0,0,0,"Areatrigger Grainery - On Trigger - Quest Credit"),
(@AT_TORP_FARM,2,0,0,46,0,100,0,@AT_TORP_FARM,0,0,0,33,@NPC_TORP_FARM,0,0,0,0,0,7,0,0,0,0,0,0,0,"Areatrigger Torp Farm - On Trigger - Quest Credit");
-- Areatrigger Ravenholdt SAI
SET @AT_RAVENHOLDT := 3066;
SET @NPC_RAVENHOLDT := 13936;
UPDATE `areatrigger_scripts` SET `ScriptName`='SmartTrigger' WHERE `entry`=@AT_RAVENHOLDT;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@AT_RAVENHOLDT AND `source_type`=2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@AT_RAVENHOLDT,2,0,0,46,0,100,0,@AT_RAVENHOLDT,0,0,0,33,@NPC_RAVENHOLDT,0,0,0,0,0,7,0,0,0,0,0,0,0,"Areatrigger Ravenholdt - On Trigger - Quest Credit");
-- Areatrigger Aldurthar Gate SAI
SET @AT_SOUTH := 5284;
SET @AT_CENTRAL := 5285;
SET @AT_NORTH := 5286;
SET @AT_NORTHWEST := 5287;
SET @NPC_SOUTH := 32195;
SET @NPC_CENTRAL := 32196;
SET @NPC_NORTH := 32197;
SET @NPC_NORTHWEST := 32199;
UPDATE `areatrigger_scripts` SET `ScriptName`='SmartTrigger' WHERE `entry` IN (@AT_SOUTH,@AT_CENTRAL,@AT_NORTH,@AT_NORTHWEST);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@AT_SOUTH,@AT_CENTRAL,@AT_NORTH,@AT_NORTHWEST) AND `source_type`=2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@AT_SOUTH,2,0,0,46,0,100,0,@AT_SOUTH,0,0,0,33,@NPC_SOUTH,0,0,0,0,0,7,0,0,0,0,0,0,0,"Areatrigger South - On Trigger - Quest Credit"),
(@AT_CENTRAL,2,0,0,46,0,100,0,@AT_CENTRAL,0,0,0,33,@NPC_CENTRAL,0,0,0,0,0,7,0,0,0,0,0,0,0,"Areatrigger Central - On Trigger - Quest Credit"),
(@AT_NORTH,2,0,0,46,0,100,0,@AT_NORTH,0,0,0,33,@NPC_NORTH,0,0,0,0,0,7,0,0,0,0,0,0,0,"Areatrigger North - On Trigger - Quest Credit"),
(@AT_NORTHWEST,2,0,0,46,0,100,0,@AT_NORTHWEST,0,0,0,33,@NPC_NORTHWEST,0,0,0,0,0,7,0,0,0,0,0,0,0,"Areatrigger Northwest - On Trigger - Quest Credit");

# FIX
UPDATE `creature_template` SET `minlevel`=83,`maxlevel`=83 WHERE entry IN (38008, 38641, 38773, 38774);
DELETE FROM `spell_area` WHERE `spell`=74276;
INSERT INTO `spell_area` (`spell`,`area`,`autocast`) VALUES (74276,4910,1);
UPDATE `quest_template` SET `RequiredRaces` = 0 WHERE `entry` = 12013;
UPDATE `quest_template` SET `RequiredRaces` = 0 WHERE `entry` = 12006;

# WDB
INSERT IGNORE INTO `npc_text` SET `ID`=15782,`prob0`=1,`text0_0`='<Blackhorn strains against his bonds, for the first time visibly upset.>$B$BRedemption! You act as if there''s an escape from the Burning Legion. So smug! As though your efforts a decade ago or in Outland have slowed the Legion a single iota! They will come, $r. They will return. And I will be here to welcome them.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15933,`prob0`=1,`text0_0`='',`text0_1`='Greetings, $c.  I hope you find your accomodations suitable, even in this time of war.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16095,`prob0`=1,`text0_0`='Goldrinn''s tenacity is the stuff of legend.$B$BWarriors from all walks visit this shrine in hopes of tapping into that kind of battle prowess. ',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16122,`prob0`=1,`text0_0`='The Earthwatchers won''t allow faction squabbling to jeopardize the Earthen Ring''s work here.
\

\
Those who break the peace will be dealt with... harshly.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16125,`prob0`=1,`text0_0`='The Wildhammers have always embraced shamanism, aye, but to find ourselves beneath the sea as part of the Earthen Ring?
\

\
It would''ve taken more than a few tankards for me to believe that one, a year ago.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16303,`prob0`=1,`text0_0`='Dere be nothin'' chaotic about dis attack. Da elementals and giants be organizin'' against us. It be seemin'' dat somehow we''ve earned da ire of Therazane, da Stonemother herself.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16348,`prob0`=1,`text0_0`='Among the Twilight cult are magics that threaten us greatly.$B$BWe have every desire to wipe their existence from our home.$B$BWe are divided, and so we cannot.$B$BAnd so I watch...$B$BAnd wait...',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16365,`prob0`=1,`text0_0`='Deepholm was a slow, quiet place. Always alive. Steadily moving. Never rushed. In this time, I strived to become one with the earth, and to a large degree, I succeeded.$B$BLater, the Earthwarder returned, injured. He did not upset the balance at first. He''d stayed here before, and we knew of him. The shift did not truly begin until the Twilight cult joined him.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16406,`prob0`=1,`text0_0`='',`text0_1`='There''s more to this than we know, $N.  I can guarantee you that much.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16422,`prob0`=1,`text0_0`='We''ve come to try to help, but it seems that their favor for you does not yet extend to us.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16507,`prob0`=1,`text0_0`='We have to keep those fungal terrors off of the front. They''re too powerful!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16508,`prob0`=1,`text0_0`='My father is close, I know it! We have to bust through their defenses and rescue him!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16544,`prob0`=1,`text0_0`='',`text0_1`='We will defeat the Twilight''s Hammer wherever they may hide.  Not even the elemental planes will be a safe haven for their kind.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16545,`prob0`=1,`text0_0`='When Deathwing destroyed the World Pillar, he broke open a rift between your world and ours. These spores and fungi are one consequence.$B$BLet''s see if we can deal with them together.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16552,`prob0`=1,`text0_0`='The prince has run off. This is bad!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16566,`prob0`=1,`text0_0`='You have my undying gratitude and that of my people, $N.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16618,`prob0`=1,`text0_0`='You can always find a handful of hunters just outside Old Town''s east gate.',`text0_1`='You can always find a handful of hunters just outside Old Town''s east gate.',`lang0`=7,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16629,`prob0`=60,`text0_0`='Profession vendors can always be found near their respective trainers. Other sorts of vendors are scattered throughout Stormwind.$B$BWhat were you looking for?',`text0_1`='Profession vendors can always be found near their respective trainers. Other sorts of vendors are scattered throughout Stormwind.$B$BWhat were you looking for?',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16635,`prob0`=1,`text0_0`='You look exhausted. Is something wrong?',`text0_1`='You look exhausted. Is something wrong?',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=1,`text1_0`='Good to see you.',`text1_1`='Good to see you.',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=1,`text2_0`='Yes?',`text2_1`='Yes?',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=1,`text3_0`='Have you recovered the final piece?',`text3_1`='Have you recovered the final piece?',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=1,`text4_0`='Any luck with Therazane?',`text4_1`='Any luck with Therazane?',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=1,`text5_0`='You look intent. Is there something I can help with?',`text5_1`='You look intent. Is there something I can help with?',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=1,`text6_0`='Am I needed?',`text6_1`='Am I needed?',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=1,`text7_0`='And I thought I might get a bit of rest. Silly me.',`text7_1`='And I thought I might get a bit of rest. Silly me.',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16642,`prob0`=1,`text0_0`='<Anduin sizes you up.>$B$B$N, is it? A few of your triumphs have been the talk of the court.$B$BWhat was it like to serve in Northrend? Have you seen the World Tree? Are the stories about Vashj''ir true? I have so many questions!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=6,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16651,`prob0`=1,`text0_0`='I trust you and my son are getting along? Anduin is anything but shy.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16653,`prob0`=1,`text0_0`='When Stormwind is secure, we will take this fight to the Highlands.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16659,`prob0`=1,`text0_0`='',`text0_1`='Hi. Welcome to my salon.$B$BYou look great! But if you''re in the mood for a change, speak with my barber, Jelinek, or just sit right down in one of the chairs.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16669,`prob0`=1,`text0_0`='',`text0_1`='We''re trying to find out what''s so important up at the Masters'' Gate.$B$BI just know that those Hammer jerks are up to no good. No fair! We came all this way following a clue and now we can''t even get close.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16671,`prob0`=1,`text0_0`='',`text0_1`='Call me Twin. That''s what Mowi calls me.$B$BNo, we don'' look alike. Are ye blind? She''s a gnome fer the Light''s sake! We act alike. ''specially when we''re fightin''.$B$BAs fer my name... have ya na heard o'' the storied Wildhammer Brewers? Care fer a pint?',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16672,`prob0`=1,`text0_0`='',`text0_1`='The Twilight''s Hammer has most certainly uncovered something of interest up at the Masters'' Gate.$B$BPerhaps a $g skilled : lovely; $c such as yourself would help me with that?',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16673,`prob0`=1,`text0_0`='As my lovely companion may have already enlightened you, we are in pursuit of something mysterious and powerful. All of our clues point to the Masters'' Gate.$B$BUnfortunately, the nihilistic cultists known as the Twilight''s Hammer have prevented our attempts to research the area. Surely a $c with your reputation can assist the Reliquary in its time of need?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16682,`prob0`=1,`text0_0`='There you are, $N! I thought you''d forgotten about me.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16720,`prob0`=1,`text0_0`='Back so soon, $N? Did you learn anything from the dockworkers?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=6,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16728,`prob0`=1,`text0_0`='',`text0_1`='Deathwing''s taint shall be wiped from Deepholm, and his Twilight cultists with it.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16729,`prob0`=1,`text0_0`='I was in Ironforge during the takeover - it was chaos.$B$BNo wonder father gets so protective when I leave the keep. ',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16730,`prob0`=1,`text0_0`='We''ve got to get out of here!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16731,`prob0`=1,`text0_0`='What WAS that thing?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=6,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16766,`prob0`=1,`text0_0`='The fleet was mostly intact as it limped into harbor after our engagement with the Horde. We weighed anchor in the shadow of Highbank here to regroup.$B$BThen the naga came.$B$BScaly, glistening hands clambering up the anchor chains... dragging men, screaming, into the depths...$B$BThese are cursed shores, $N. Cursed. ',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16767,`prob0`=1,`text0_0`='Slaughter them, $c! Destroy as many naga as you can to honor those that fell.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16775,`prob0`=1,`text0_0`='',`text0_1`='Glad to have a chance to catch my breath. Thanks for the help!',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16830,`prob0`=1,`text0_0`='',`text0_1`='<The Stonemother stares down at you. Through you. As if she''s peering into your soul.>$B$BMy daughter, Theradras, sequestered herself deep within the Crystal Caverns of Terramok to grieve for her lost love, Zaetar. There, heartless, stoneless beings invaded and slaughtered her amidst her mourning.$B$BIf I had any reason to trust a creature afflicted by the curse of flesh, it was stripped from me that day. And yet in your arrogance, you persist.$B$BOne day, you will outlive your usefulness.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16833,`prob0`=1,`text0_0`='',`text0_1`='How can I help ye, $c?',`lang0`=0,`em0_0`=0,`em0_1`=6,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16835,`prob0`=1,`text0_0`='Little of their camp has been left intact. Still, there might be something we can make use of.$B$BDid you require something of me, $r?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16867,`prob0`=1,`text0_0`='This here terrain is terrible! Spongy ground, all lumpy-like with stumps and stones. Like angry oatmeal. The mud''ll practically swallow a steam tank whole.$B$BOur gear''s all mired in the muck, getting thumped by the Horde!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=274,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16872,`prob0`=1,`text0_0`='She''s hung up in the debris and I''ve lost steam pressure. This terrain is murder!$B$BCan you get us out of this?',`text0_1`='She''s hung up in the debris and I''ve lost steam pressure. This terrain is murder!$B$BCan you get us out of this?',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16897,`prob0`=1,`text0_0`='My bird! Lightning - they shot her! Those filthy beasts shot her from the sky!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=15,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16898,`prob0`=1,`text0_0`='Poor Lightning. She''s gonna need some time to recouperate.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=274,`em0_2`=0,`em0_3`=1,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16899,`prob0`=1,`text0_0`='Well then. Ready to fly?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=6,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16903,`prob0`=1,`text0_0`='',`text0_1`='We have pledged to open an elemental gateway from Stormwind to the Highlands, but interference from the Bastion of Twilight hampers our efforts.$B$BWhat madness are they engaged in over there?',`lang0`=0,`em0_0`=0,`em0_1`=6,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16906,`prob0`=1,`text0_0`='',`text0_1`='The portal has been opened! Thanks to your efforts, we can now quickly travel from Stormwind to Twilight Highlands.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16914,`prob0`=1,`text0_0`='You will own this peninsula, $c.$B$BYou will be a weapon.$B$BYou will be a minister of death, praying for war.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16918,`prob0`=1,`text0_0`='Report!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=25,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17098,`prob0`=1,`text0_0`='They took us unaware... attacked all of the highlands all at once, burstin'' forth from the ground, swoopin'' from the air. Most of the gryphon wings were scattered, and far too many good dwarves lost their lives.$B$BThere''d be little hope at all if Keegan hadn''t rallied us together. I owe that man my life. At least now we have a chance.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17099,`prob0`=1,`text0_0`='You''re certainly not local. Matters to me little though. I''ll put my life on the line for anyone here as long as they pull their weight.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17103,`prob0`=1,`text0_0`='The gryphon appears to be injured. Perhaps healing or first aid could get it back on its feet.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17104,`prob0`=1,`text0_0`='The gryphon looks at you intently, clearly smelling a familiar scent on your clothing.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17212,`prob0`=1,`text0_0`='Duglas send you over to get roughed up?',`text0_1`='Duglas send you over to get roughed up?',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=1,`text1_0`='Lookin'' to scrap?',`text1_1`='Lookin'' to scrap?',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=1,`text2_0`='You look like you want a piece of me...',`text2_1`='You look like you want a piece of me...',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=1,`text3_0`='Lookin'' for some punishment?',`text3_1`='Lookin'' for some punishment?',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17228,`prob0`=1,`text0_0`='This orc is severely injured.',`text0_1`='This orc is severely injured.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17397,`prob0`=1,`text0_0`='Curse the Dragonmaw!$B$BThey kill our birds, attack our families, take our land. Even as the world crashes down around us, still they assault our homes.$B$BIf your Alliance wants the help of the Wildhammer, there''s only one way to win us over: Stop. The. Dragonmaw.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17398,`prob0`=1,`text0_0`='<Blundy peers up from his cups.>$B$BAye, that''s right. The High Shaman is out in the field, fighting to retake the Thundermar Wreckage. I''m whatcha call the "Low Shaman."$B$BWhile he''s away, he left me here, to take care of all of Thundermar''s Shamanin''in... nin.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=273,`em0_2`=0,`em0_3`=1,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17399,`prob0`=1,`text0_0`='',`text0_1`='Thundermar is the last holdout of the Wildhammer. My brother''s trying to keep up the fight while our little town fills up with refugees.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=5,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17401,`prob0`=1,`text0_0`='Greetings, $c! I''m from the Highbank advance scouting unit, trying to win over the Wildhammer here at Thundermar.$B$BTheir gryphon riders are having a tough time bringing down Dragonmaw drake riders. I''ve got a plan for a contraption that will help, but I''m going to need supplies. Lots of supplies.$B$BCan you help?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=25,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17407,`prob0`=1,`text0_0`='Eh, wot?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=6,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17408,`prob0`=1,`text0_0`='Pack yer bags, $N! We''re off to the Twilight Highlands. You ready?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=4,`em0_2`=0,`em0_3`=6,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17409,`prob0`=1,`text0_0`='I''ve been placed in command of Alliance joint operations in the Twilight Highlands.$B$BThe independant Wildhammer clans still dot this countryside. If we can unite them under the Alliance banner, nothing can stop us! But enemies close in on all sides. I hope you''re ready for a fight, $c.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=274,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17416,`prob0`=1,`text0_0`='I am thankful for all you''ve done, $N.  But I am afraid I will be even further in your debt before this ordeal is through.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17441,`prob0`=1,`text0_0`='Heads up, $N! They''re here. Dragonmaw ... everywhere!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17443,`prob0`=1,`text0_0`='This is it! They''re making their final assault. There''s no place to run. We hold Thundermar or die with hammer in hand.$B$BFor the Wildhammer!!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=15,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17446,`prob0`=1,`text0_0`='D''ye hear it, $N? The beating of great leathery wings over the treetops... Narkrall is closing in.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17662,`prob0`=1,`text0_0`='<The SI:7 agent is unconscious.>',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=17989,`prob0`=1,`text0_0`='Da Zandalari be a threat to both our peoples, $r. It will take da stength o'' both our forces to break them.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18000,`prob0`=1,`text0_0`='',`text0_1`='I be an emissary from da Darkspear trolls.  Da threat we face, also be a threat to da Alliance.  You willin'' to help out da Darkspear, $r?',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18001,`prob0`=1,`text0_0`='Ya have my tanks, $c. I thought I''d be endin'' up just another sacrifice...',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18004,`prob0`=1,`text0_0`='',`text0_1`='This place be reekin'' of death and sacrifice.$b$bBest you leave before you become da next prisoner.
\
',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18005,`prob0`=1,`text0_0`='',`text0_1`='It be good to be outta dat cage. Norkani will have her revenge...',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18006,`prob0`=1,`text0_0`='',`text0_1`='Where am I? You be here to help?',`lang0`=0,`em0_0`=0,`em0_1`=21,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18032,`prob0`=1,`text0_0`='Our assault on the Firelands cannot wait. We strike, at Ragnaros and at Fandral, as soon as we can.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18130,`prob0`=1,`text0_0`='Yes, mortal?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18131,`prob0`=1,`text0_0`='Kalecgos has been chosen as the new aspect for the blue dragonflight.$b$bOne among you was instrumental in thwarting Arygos''s betrayal to Deathwing, thereby averting a terrible crisis.$b$bWe are here to partake in the celebration of their heroic deeds.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18150,`prob0`=1,`text0_0`='',`text0_1`='Welcome, $N. Have you come to join the invasion of the Firelands?',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18151,`prob0`=1,`text0_0`='',`text0_1`='While we prepare to invade the Firelands, the Firelord sends his minions to repel our attack. Our position here cannot fall. We are all that stands between them and the World Tree.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18152,`prob0`=1,`text0_0`='',`text0_1`='We do not yet have the strength to push forward into the Firelands. First, we must rebuild our forces and supplies. Will you lend yourself to our efforts?',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18154,`prob0`=1,`text0_0`='',`text0_1`='Are there any teeny tiny animals in need of my aid?$B$B<Mylune''s eyes glisten at the thought.>$B$BI need to hug a bunny right now!',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18155,`prob0`=1,`text0_0`='',`text0_1`='How are the preparations going?',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18158,`prob0`=1,`text0_0`='',`text0_1`='Hello, $N. Are you helping with the invasion? A skilled $c such as yourself will be a valuable addition to our force.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18224,`prob0`=1,`text0_0`='Welcome to the Shady Lady, home of fine wines and exotic merchandise you won''t find anywhere else!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=9984,`prob0`=1,`text0_0`='What are ye doin'' here?! Get yer chatty self ta Alterac Vallery, where ye''re needed!',`text0_1`='',`lang0`=7,`em0_0`=1,`em0_1`=5,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO page_text (entry, text, next_page) VALUES (3562, 'The tiny gnome peered over the railing into the secluded Dalaran courtyard.$B$B"The view from the balcony is amazing.  You have to come see!"$B$BArmor legplates creaked as Marcus walked over, taking in a deep breath as he absently scratched his scruffy chin.$B$B"The Hero\'s Welcome is no slouch.  And there\'s something in the room that might interest you."$B$BTavi bounded into the room, pausing only a moment before jumping onto the massive bed.  She turned to gaze at Marcus with her huge saucer-like eyes, narrowing them playfully and replacing her glowing smile with a diabolical grin.', 3563);
INSERT IGNORE INTO page_text (entry, text, next_page) VALUES (3563, '"Interested in some more company?" she purred as her hands weaved through a complex summoning ritual, stopping only when she felt the warmth of a new presence behind her.$B$BAll color drained from Marcus\'s face as he struggled to protest.  "I... I don\'t think that\'s appropriate."$B$BConfused, Tavi turned to see what was wrong.  A hideous fel hound stood ready, drooling onto the floor as it stared intently at the half-armored paladin.$B$B"No!  No that\'s not what I meant." she stammered as she dispelled the hungry demon.  "I\'m sorry, that\'s not really my specialization...."', 3564);
INSERT IGNORE INTO page_text (entry, text, next_page) VALUES (3564, 'Marcus took both her hands in one of his as he reassured her, "It\'s fine.  What is your specialization?"$B$BHer head snapped up, eyes burning with renewed life as shadowy energy channeled through her hands into Marcus, dropping him to his knees in agony.$B$B"Affliction, actually."$B', 3565);
INSERT IGNORE INTO page_text (entry, text, next_page) VALUES (3565, 'Gritting his teeth, Marcus gestured as light flashed over him, restoring his strength.$B$BTavi stared anxiously as he rose to his full height, engulfing her in his shadow.  He thrust his hand forward, sending a wave of righteous force through her.  Eyes rolled back as she wavered for several seconds before regaining consciousness.$B$B"I\'ve recently taken the path of... retribution."$B$BThe mischievous smirk returned to her face, "Well then, this is going to be fun."$B$B<The remaining pages have a level 99 requirement to read.>', 0);
INSERT IGNORE INTO page_text (entry, text, next_page) VALUES (3045, 'First Watch, Eight Bells$BWatches changed.  All is well.', 3046);
INSERT IGNORE INTO page_text (entry, text, next_page) VALUES (3046, 'Middle Watch, One Bell$BCedric found attempting to break into Captain\'s wine cabinet.  Disciplined.', 3047);
INSERT IGNORE INTO page_text (entry, text, next_page) VALUES (3047, 'Middle Watch, Two Bells$BCedric climbed rigging, became tangled and fell.  Attended by ship\'s surgeon.  Sent below to sober up.', 3049);
INSERT IGNORE INTO page_text (entry, text, next_page) VALUES (3049, 'Middle Watch, Four Bells$BBottle of rum found in Cedric\'s pants.  Disciplined.', 3050);
INSERT IGNORE INTO page_text (entry, text, next_page) VALUES (3050, 'Middle Watch, Five Bells$BCedric\'s clothes found.  Cedric found separately.  Cedric disciplined.', 3051);
INSERT IGNORE INTO page_text (entry, text, next_page) VALUES (3051, 'Middle Watch, Six Bells$BCedric singing loudly.  Woke Captain.  Cedric disciplined by Captain.', 3052);
INSERT IGNORE INTO page_text (entry, text, next_page) VALUES (3052, 'Middle Watch, Eight Bells$BWatches changed.  All quiet.  Two men sent to locate Cedric.$B', 3053);
INSERT IGNORE INTO page_text (entry, text, next_page) VALUES (3053, 'Morning Watch, One Bell$BFire in Captain\'s quarters.  All hands roused.  Throwing powder overboard. ', 0);
INSERT IGNORE INTO page_text (entry, text, next_page) VALUES (3036, 'The mighty creature\'s maw opened wide, tossing bolts of icy water toward our vessel. Those terrible jaws clamped down upon the bow of our ship, tearing it from the hull. Sailors and cargo were thrown violently into the sea as the remnants of the ship disappeared beneath the waves.$B$BThe last thing I remember was flying from the broken hull, hitting the inky waters, and plunging beneath the waves. The world went dark and I thought for certain I\'d drawn my last breath. When I awoke in Theramore\'s infirmary, I knew someone had to tell our story.', 0);

# NeatElves
DELETE FROM `creature_loot_template` WHERE `entry` = 32447 AND `item` = 37705;
DELETE FROM `creature_loot_template` WHERE `entry` = 32495 AND `item` = 37701;
DELETE FROM `creature_loot_template` WHERE `entry` = 32517 AND `item` = 44687;
DELETE FROM `creature_loot_template` WHERE `entry` = 32398 AND `item` = 37701;
DELETE FROM `creature_loot_template` WHERE `entry` = 32398 AND `item` = 37704;
DELETE FROM `creature_loot_template` WHERE `entry` = 32400 AND `item` = 42104;
DELETE FROM `creature_loot_template` WHERE `entry` = 32422 AND `item` = 37705;
DELETE FROM `creature_loot_template` WHERE `entry` = 32487 AND `item` = 33470;
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(32361, 44128, 1, 1, 1, 1);
DELETE FROM `skinning_loot_template` WHERE `item` = 36902;
DELETE FROM `skinning_loot_template` WHERE `entry` in (26782,27254,30329,23874,25707,25709,26333,26417,26421,26792,28323,29036,30258,30845,30861,31229,33354,33431,34300,33430,32913,32914,32915,33525,32357);
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(26782, 33452, 100, 0, -33452, 1),
(27254, 33452, 100, 0, -33452, 1),
(30329, 33452, 100, 0, -33452, 1),
(23874, 33452, 100, 0, -33452, 1),
(25707, 33452, 100, 0, -33452, 1),
(25709, 33452, 100, 0, -33452, 1),
(26333, 33452, 100, 0, -33452, 1),
(26417, 33452, 100, 0, -33452, 1),
(26421, 33452, 100, 0, -33452, 1),
(26792, 33452, 100, 0, -33452, 1),
(28323, 33452, 100, 0, -33452, 1),
(29036, 33452, 100, 0, -33452, 1),
(30258, 33452, 100, 0, -33452, 1),
(30845, 33452, 100, 0, -33452, 1),
(30861, 33452, 100, 0, -33452, 1),
(31229, 33452, 100, 0, -33452, 1),
(33354, 33452, 100, 0, -33452, 1),
(33431, 33452, 100, 0, -33452, 1),
(34300, 33452, 100, 0, -33452, 1),
(33430, 33452, 100, 0, -33452, 1),
(32913, 33452, 100, 0, -33452, 1),
(32914, 33452, 100, 0, -33452, 1),
(32915, 33452, 100, 0, -33452, 1),
(33525, 33452, 100, 0, -33452, 1),
(32357, 33452, 100, 0, -33452, 1);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(33452, 33452, 30, 1, 1, 5),
(33452, 36901, 10, 1, 1, 5),
(33452, 36904, 0, 1, 1, 5),
(33452, 36903, 0, 1, 1, 5),
(33452, 36905, 0, 1, 1, 5),
(33452, 36906, 0, 1, 1, 5),
(33452, 36907, 0, 1, 1, 5),
(33452, 37704, 0, 1, 1, 5),
(33452, 39516, 40, 1, 1, 5);
DELETE FROM `creature_loot_template` WHERE `item` = 29453;
UPDATE `creature_template` SET `type_flags` = '256' WHERE `entry` =20983;
DELETE FROM `skinning_loot_template` WHERE `entry` in (17723,17725,17734,17770,17871,17977,18124,18125,18127,19402,19519,19734,20774,21023,21040,21251,21325,21326,21694,22095,22307,23029,20983);
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(23029, 22575, 100, 0, -22575, 1),
(22307, 22575, 100, 0, -22575, 1),
(20983, 22575, 100, 0, -22575, 1),
(22095, 22575, 100, 0, -22575, 1),
(21694, 22575, 100, 0, -22575, 1),
(21326, 22575, 100, 0, -22575, 1),
(21325, 22575, 100, 0, -22575, 1),
(21251, 22575, 100, 0, -22575, 1),
(21040, 22575, 100, 0, -22575, 1),
(21023, 22575, 100, 0, -22575, 1),
(20774, 22575, 100, 0, -22575, 1),
(19734, 22575, 100, 0, -22575, 1),
(19519, 22575, 100, 0, -22575, 1),
(19402, 22575, 100, 0, -22575, 1),
(18127, 22575, 100, 0, -22575, 1),
(18125, 22575, 100, 0, -22575, 1),
(18124, 22575, 100, 0, -22575, 1),
(17977, 22575, 100, 0, -22575, 1),
(17871, 22575, 100, 0, -22575, 1),
(17770, 22575, 100, 0, -22575, 1),
(17734, 22575, 100, 0, -22575, 1),
(17725, 22575, 100, 0, -22575, 1),
(17723, 22575, 100, 0, -22575, 1);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(22575, 29453, 20, 1, 1, 5),
(22575, 24401, 25, 1, 1, 1),
(22575, 25813, 15, 1, 1, 5),
(22575, 22785, 0, 1, 1, 5),
(22575, 22787, 0, 1, 1, 5),
(22575, 22786, 0, 1, 1, 5),
(22575, 22575, 10, 1, 1, 5),
(22575, 22789, 0, 1, 1, 5),
(22575, 22790, 0, 1, 1, 5),
(22575, 22794, 1, 1, 1, 5);
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '15',`groupid` = '1' WHERE `entry` =181278 AND `item` =22575;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =181278 AND `item` =22790;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '5',`groupid` = '1' WHERE `entry` =181278 AND `item` =22794;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `entry` =24402 AND `item` =24407;
DELETE FROM `creature_loot_template` WHERE `entry` = 22095 AND `item` = 24401;
DELETE FROM `creature_loot_template` WHERE `entry` = 17725 AND `item` = 24401;
DELETE FROM `creature_loot_template` WHERE `entry` = 17871 AND `item` = 24401;
DELETE FROM `creature_loot_template` WHERE `entry` = 21694 AND `item` = 24401;
DELETE FROM `creature_loot_template` WHERE `entry` = 17723 AND `item` = 24401;
DELETE FROM `creature_loot_template` WHERE `entry` = 21251 AND `item` = 24401;
DELETE FROM `creature_loot_template` WHERE `entry` = 21325 AND `item` = 24401;
DELETE FROM `creature_loot_template` WHERE `entry` = 20774 AND `item` = 24401;
DELETE FROM `creature_loot_template` WHERE `entry` = 21326 AND `item` = 24401;
DELETE FROM `creature_loot_template` WHERE `entry` = 21023 AND `item` = 24401;
DELETE FROM `creature_loot_template` WHERE `entry` = 22307 AND `item` = 24401;
DELETE FROM `creature_loot_template` WHERE `entry` = 18127 AND `item` = 24401;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '25' WHERE `entry` =181275 AND `item` =24401;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '25' WHERE `item` =24401;
DELETE FROM `creature_loot_template` WHERE `item` = 25813;
DELETE FROM `pickpocketing_loot_template` WHERE `item` = 24231;
DELETE FROM `creature_loot_template` WHERE `item` = 24477;
DELETE FROM `creature_loot_template` WHERE `item` = 22575 AND `entry` in (17723,17725,17734,17770,17871,17977,18124,18125,18127,19402,19519,19734,20774,21023,21040,21251,21325,21326,21694,22095,22307,23029,20983);
UPDATE `creature` SET `phaseMask` = '128' WHERE `id` =31434;
UPDATE `quest_template` SET `RequiredRaces` = '690' WHERE `entry` =5761;
UPDATE quest_template SET SpecialFlags=2 WHERE entry=5727;
DELETE FROM gossip_menu_option WHERE menu_id=3701 AND id=2;
DELETE FROM gossip_menu_option WHERE menu_id IN (50010, 50011, 50012);
DELETE FROM gossip_menu WHERE entry IN (50010,50011,50012,50013);
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = '5',`maxcount` = '1' WHERE `item` =4232;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = '50' WHERE `entry` =3674 AND `item` =4232;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = '5',`maxcount` = '1' WHERE `item` =6471;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = '10',`maxcount` = '1' WHERE `item` =6470;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = '40' WHERE `ChanceOrQuestChance` > 0 AND `item` =2318;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = '30' WHERE `ChanceOrQuestChance` > 0 AND `item` =2934;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = '50',`maxcount` = '2' WHERE `item` =8167;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = '5',`maxcount` = '2' WHERE `item` =4235;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = '100' WHERE `entry` =4422 AND `item` =4235;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `item` =8169;
UPDATE creature_loot_template SET ChanceOrQuestChance=1 WHERE item=18335;
UPDATE gameobject_loot_template SET ChanceOrQuestChance=1 WHERE item=18335;
UPDATE `gameobject_questrelation` SET `quest` = '13436' WHERE `id` =194059;
UPDATE `gameobject_involvedrelation` SET `quest` = '13436' WHERE `id` =194059;
UPDATE `quest_template` SET `RequiredRaces` = '1101' WHERE `entry` =13436;
UPDATE `gameobject_questrelation` SET `quest` = '13438' WHERE `id` =194061;
UPDATE `gameobject_involvedrelation` SET `quest` = '13438' WHERE `id` =194061;
UPDATE `quest_template` SET `RequiredRaces` = '1101' WHERE `entry` =13438;
UPDATE `gameobject_questrelation` SET `quest` = '13439' WHERE `id` =194062;
UPDATE `gameobject_involvedrelation` SET `quest` = '13439' WHERE `id` =194062;
UPDATE `quest_template` SET `RequiredRaces` = '1101' WHERE `entry` =13439;
UPDATE `gameobject_questrelation` SET `quest` = '12944' WHERE `id` =191882;
UPDATE `gameobject_involvedrelation` SET `quest` = '12944' WHERE `id` =191882;
UPDATE `quest_template` SET `RequiredRaces` = '1101' WHERE `entry` =12944;
UPDATE `quest_template` SET `RequiredRaces` = '1101' WHERE `entry` =13434;
UPDATE `quest_template` SET `RequiredRaces` = '1101' WHERE `entry` =13433;
UPDATE `quest_template` SET `RequiredRaces` = '1101' WHERE `entry` =13435;
UPDATE `gameobject_questrelation` SET `quest` = '12945' WHERE `id` =191883;
UPDATE `gameobject_involvedrelation` SET `quest` = '12945' WHERE `id` =191883;
UPDATE `quest_template` SET `RequiredRaces` = '1101' WHERE `entry` =12945;
UPDATE `gameobject_questrelation` SET `quest` = '13437' WHERE `id` =194060;
UPDATE `gameobject_involvedrelation` SET `quest` = '13437' WHERE `id` =194060;
UPDATE `quest_template` SET `RequiredRaces` = '1101' WHERE `entry` =13437;
UPDATE `gameobject_questrelation` SET `quest` = '13448' WHERE `id` =194063;
UPDATE `gameobject_involvedrelation` SET `quest` = '13448' WHERE `id` =194063;
UPDATE `quest_template` SET `RequiredRaces` = '1101' WHERE `entry` =13448;
UPDATE `gameobject_questrelation` SET `quest` = '12946' WHERE `id` =191880;
UPDATE `gameobject_involvedrelation` SET `quest` = '12946' WHERE `id` =191880;
UPDATE `quest_template` SET `RequiredRaces` = '690' WHERE `entry` =12946;
UPDATE `gameobject_questrelation` SET `quest` = '12947' WHERE `id` =191881;
UPDATE `gameobject_involvedrelation` SET `quest` = '12947' WHERE `id` =191881;
UPDATE `quest_template` SET `RequiredRaces` = '690' WHERE `entry` =12947;
UPDATE `quest_template` SET `RequiredRaces` = '690' WHERE `entry` =13464;
UPDATE `quest_template` SET `RequiredRaces` = '690' WHERE `entry` =13465;
UPDATE `quest_template` SET `RequiredRaces` = '690' WHERE `entry` =13466;
UPDATE `quest_template` SET `RequiredRaces` = '690' WHERE `entry` =13467;
UPDATE `quest_template` SET `RequiredRaces` = '690' WHERE `entry` =13468;
UPDATE `quest_template` SET `RequiredRaces` = '690' WHERE `entry` =13469;
UPDATE `quest_template` SET `RequiredRaces` = '690' WHERE `entry` =13470;
UPDATE `quest_template` SET `RequiredRaces` = '690' WHERE `entry` =13471;
UPDATE `quest_template` SET `RequiredRaces` = '690' WHERE `entry` =13501;
UPDATE `quest_template` SET `RequiredRaces` = '690' WHERE `entry` =13548;
UPDATE `gameobject_template` SET `data1` = '180164' WHERE `entry` =180164;
UPDATE `gameobject_template` SET `data1` = '180165' WHERE `entry` =180165;
UPDATE `gameobject_template` SET `data1` = '180166' WHERE `entry` =180166;
UPDATE `gameobject_template` SET `data1` = '180167' WHERE `entry` =180167;
UPDATE `gameobject_template` SET `data1` = '180168' WHERE `entry` =180168;
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(180165, 8831, 100, 0, 1, 3),
(180165, 19726, 15, 0, 1, 3),
(180164, 8838, 100, 0, 1, 3),
(180164, 19726, 15, 0, 1, 3),
(180167, 13464, 100, 0, 1, 3),
(180167, 19726, 15, 0, 1, 3),
(180168, 13463, 100, 0, 1, 3),
(180168, 19726, 15, 0, 1, 3),
(180166, 13465, 100, 0, 1, 3),
(180166, 19726, 15, 0, 1, 3);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(7007, 180164, 309, 1, 1, -12347.2, -1845.5, 131.012, -2.93215, 0, 0, -0.994522, 0.10453, 2700, 100, 1),
(7009, 180164, 309, 1, 1, -11597.3, -1752.79, 39.3294, -0.785398, 0, 0, -0.382683, 0.92388, 2700, 100, 1),
(7010, 180165, 309, 1, 1, -11874.8, -1382.4, 68.2662, -1.01229, 0, 0, -0.484809, 0.87462, 2700, 100, 1),
(7016, 180165, 309, 1, 1, -12334.5, -1899.65, 131.243, -3.00197, 0, 0, -0.997564, 0.0697546, 2700, 100, 1),
(7017, 180165, 309, 1, 1, -11969.4, -1825.95, 56.2139, 2.16421, 0, 0, 0.882948, 0.469471, 2700, 100, 1),
(7018, 180166, 309, 1, 1, -11595.3, -1218.19, 81.0125, -0.820305, 0, 0, -0.398749, 0.91706, 2700, 100, 1),
(7019, 180166, 309, 1, 1, -12264.7, -1869.38, 133.452, 1.29154, 0, 0, 0.601814, 0.798637, 2700, 100, 1),
(7021, 180166, 309, 1, 1, -11733.9, -1945.6, 58.6811, -2.82743, 0, 0, -0.987688, 0.156436, 2700, 100, 1),
(7027, 180166, 309, 1, 1, -12225.9, -1419.93, 131.392, -1.25664, 0, 0, -0.587786, 0.809016, 2700, 100, 1),
(7029, 180167, 309, 1, 1, -12223.5, -1416.27, 131.545, 2.93215, 0, 0, 0.994522, 0.10453, 2700, 100, 1),
(7030, 180167, 309, 1, 1, -11834.8, -1326.26, 67.5547, -2.63545, 0, 0, -0.968148, 0.250379, 2700, 100, 1),
(7031, 180167, 309, 1, 1, -12298.4, -1684.08, 132.492, 1.44862, 0, 0, 0.662619, 0.748957, 2700, 100, 1),
(7034, 180167, 309, 1, 1, -11585.2, -1573.6, 50.7598, 1.16937, 0, 0, 0.551937, 0.833886, 2700, 100, 1),
(7038, 180167, 309, 1, 1, -11988.1, -1825.93, 58.5294, -1.81514, 0, 0, -0.78801, 0.615662, 2700, 100, 1),
(7039, 180168, 309, 1, 1, -11821, -1892.17, 49.6586, 0.977384, 0, 0, 0.469471, 0.882948, 2700, 100, 1),
(7040, 180168, 309, 1, 1, -11456.6, -1606.96, 49.1958, 2.02458, 0, 0, 0.848048, 0.52992, 2700, 100, 1),
(7041, 180168, 309, 1, 1, -12185.9, -1901.98, 133.235, 0.820305, 0, 0, 0.398749, 0.91706, 2700, 100, 1),
(7042, 180168, 309, 1, 1, -11608.9, -1274.07, 79.271, 0.017453, 0, 0, 0.00872639, 0.999962, 2700, 100, 1),
(7043, 180168, 309, 1, 1, -11986.2, -1475.36, 79.6971, -3.00197, 0, 0, -0.997564, 0.0697546, 2700, 100, 1);
UPDATE `gameobject_loot_template` SET `maxcount` = '3' WHERE `item` =11514;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '20' WHERE `entry` =180228 AND `item` =14047;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '25' WHERE `entry` =180228 AND `item` =19727;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '20' WHERE `entry` =180229 AND `item` =14047;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '25' WHERE `entry` =180229 AND `item` =19727;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(65588, 180228, 309, 1, 1, -11556, -1725.95, 39.7283, 0.942478, 0, 0, 0.453991, 0.891006, 7200, 100, 1),
(65591, 180228, 309, 1, 1, -11542.7, -1544.95, 51.7792, -0.785398, 0, 0, -0.382683, 0.92388, 7200, 100, 1),
(65589, 180228, 309, 1, 1, -12358.3, -1939.73, 132.353, 0.10472, 0, 0, 0.0523361, 0.99863, 7200, 100, 1),
(65590, 180228, 309, 1, 1, -12155.9, -1960.37, 133.111, -2.63545, 0, 0, -0.968148, 0.250379, 7200, 100, 1),
(65592, 180228, 309, 1, 1, -12376.2, -1661.07, 132.864, 1.43117, 0, 0, 0.656059, 0.75471, 7200, 100, 1),
(7045, 180228, 309, 1, 1, -12382.4, -1919.37, 131.553, -2.84489, 0, 0, -0.989016, 0.147808, 7200, 100, 1),
(7046, 180228, 309, 1, 1, -11518.2, -1693.06, 52.485, 1.02974, 0, 0, 0.492422, 0.870357, 7200, 100, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(70941, 180229, 309, 1, 1, -12357.9, -1836.31, 130.865, 0.453786, 0, 0, 0.224951, 0.97437, 3600, 100, 1),
(70938, 180229, 309, 1, 1, -11974.8, -1474.54, 79.9835, 2.93215, 0, 0, 0.994522, 0.10453, 3600, 100, 1),
(70631, 180229, 309, 1, 1, -11810.1, -1882.4, 46.0745, -2.44346, 0, 0, -0.939692, 0.342021, 3600, 100, 1),
(70628, 180229, 309, 1, 1, -11781.9, -1621.91, 21.149, -3.12414, 0, 0, -0.999962, 0.0087262, 3600, 100, 1),
(70510, 180229, 309, 1, 1, -11742.3, -1930.5, 56.9127, 1.62316, 0, 0, 0.725376, 0.688353, 3600, 100, 1),
(70945, 180229, 309, 1, 1, -11638.4, -1882.91, 57.3159, -2.42601, 0, 0, -0.936673, 0.350206, 3600, 100, 1),
(70644, 180229, 309, 1, 1, -11594.7, -1216.66, 81.3685, 0.331613, 0, 0, 0.165048, 0.986286, 3600, 100, 1),
(70955, 180229, 309, 1, 1, -11539.9, -1247.64, 78.5177, 3.00197, 0, 0, 0.997564, 0.0697546, 3600, 100, 1),
(7048, 180229, 309, 1, 1, -11526.3, -1479.74, 78.0266, -1.15192, 0, 0, -0.54464, 0.83867, 3600, 100, 1),
(7049, 180229, 309, 1, 1, -11452.9, -1613.94, 49.0348, 2.53073, 0, 0, 0.953717, 0.300705, 3600, 100, 1);
UPDATE `quest_template` SET `SpecialFlags` = '2' WHERE `entry` =3441;
UPDATE `gameobject` SET `id` = '176638' WHERE `guid` =91630;
UPDATE `gameobject` SET `id` = '176638' WHERE `guid` =91634;
UPDATE `gameobject` SET `id` = '176638' WHERE `guid` =91636;
UPDATE `gameobject` SET `id` = '176638' WHERE `guid` =91643;
UPDATE `gameobject` SET `id` = '176638' WHERE `guid` =91654;
UPDATE `gameobject` SET `id` = '176638' WHERE `guid` =91675;
UPDATE `gameobject` SET `id` = '176638' WHERE `guid` =91718;
UPDATE `gameobject` SET `id` = '176638' WHERE `guid` =91722;
UPDATE `gameobject` SET `id` = '176638' WHERE `guid` =91727;
UPDATE `gameobject` SET `id` = '176638' WHERE `guid` =91730;
UPDATE `gameobject` SET `id` = '176638' WHERE `guid` =4816;
UPDATE `gameobject` SET `id` = '176638' WHERE `guid` =13224;
UPDATE `gameobject` SET `id` = '176638' WHERE `guid` =12726;
UPDATE `gameobject` SET `id` = '176638' WHERE `guid` =6948;
UPDATE `gameobject` SET `id` = '176638' WHERE `guid` =91752;
UPDATE `gameobject` SET `id` = '176638' WHERE `guid` =91756;
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('14147', '1', 'GO 176638');
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (42989, 14147, 0, ''),(43012, 14147, 0, ''),(43015, 14147, 0, '');
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES ('176638', '11514', '20', '0', '1', '3');
#
UPDATE `gameobject_loot_template` SET `entry` = '176640' WHERE `entry` =176586 AND `item` =11514;
UPDATE `gameobject` SET `id` = '176640' WHERE `guid` =91669;
UPDATE `gameobject` SET `id` = '176640' WHERE `guid` =10504;
UPDATE `gameobject` SET `id` = '176640' WHERE `guid` =91626;
UPDATE `gameobject` SET `id` = '176640' WHERE `guid` =91629;
UPDATE `gameobject` SET `id` = '176640' WHERE `guid` =91638;
UPDATE `gameobject` SET `id` = '176640' WHERE `guid` =43006;
UPDATE `gameobject` SET `id` = '176640' WHERE `guid` =91641;
UPDATE `gameobject` SET `id` = '176640' WHERE `guid` =42981;
UPDATE `gameobject` SET `id` = '176640' WHERE `guid` =91652;
UPDATE `gameobject` SET `id` = '176640' WHERE `guid` =91662;
UPDATE `gameobject` SET `id` = '176640' WHERE `guid` =91659;
UPDATE `gameobject` SET `id` = '176640' WHERE `guid` =91657;
UPDATE `gameobject` SET `id` = '176640' WHERE `guid` =91697;
UPDATE `gameobject` SET `id` = '176640' WHERE `guid` =91695;
UPDATE `gameobject` SET `id` = '176640' WHERE `guid` =42983;
UPDATE `gameobject` SET `id` = '176640' WHERE `guid` =91698;
UPDATE `gameobject` SET `id` = '176640' WHERE `guid` =91685;
UPDATE `gameobject` SET `id` = '176640' WHERE `guid` =91687;
UPDATE `gameobject` SET `id` = '176640' WHERE `guid` =43009;
UPDATE `gameobject` SET `id` = '176640' WHERE `guid` =91708;
UPDATE `gameobject` SET `id` = '176640' WHERE `guid` =91759;
UPDATE `gameobject` SET `id` = '176640' WHERE `guid` =91676;
UPDATE `gameobject` SET `id` = '176640' WHERE `guid` =91680;
UPDATE `gameobject` SET `id` = '176640' WHERE `guid` =42993;
#
DELETE FROM `gameobject_loot_template` WHERE `entry` = 142145 AND `item` = 11514;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91716;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91706;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91704;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91696;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91693;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91691;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91690;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91679;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91670;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91728;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91717;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91711;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91699;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91624;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91627;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91637;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91639;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91644;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =43016;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =2144;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =43004;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91655;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91660;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =42995;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91650;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =43007;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =7252;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =7255;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =14431;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =43008;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91760;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =13214;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91757;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =42997;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91751;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91743;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91749;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91721;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91739;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91734;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =91732;
UPDATE `gameobject` SET `id` = '176637' WHERE `guid` =43027;
#
DELETE FROM `gameobject_loot_template` WHERE `entry` = 142141 AND `item` = 11514;
UPDATE `gameobject` SET `id` = '176642' WHERE `id` =142141 AND `map` =1;
#
UPDATE `gameobject_loot_template` SET `entry` = '176639' WHERE `entry` =176584 AND `item` =11514;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =42994;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =91705;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =43026;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =809;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =91762;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =91714;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =43011;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =91754;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =42991;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =91745;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =91741;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =91733;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =91740;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =91731;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =91719;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =91720;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =13583;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =91702;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =42986;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =14144;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =91682;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =91692;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =43005;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =91649;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =91653;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =8371;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =91678;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =91635;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =4145;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =91666;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =91633;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =91628;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =4165;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =43023;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =91642;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =91663;
UPDATE `gameobject` SET `id` = '176639' WHERE `guid` =10794;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 142142 AND `item` = 11514;
UPDATE `gameobject` SET `id` = '176636' WHERE `guid` =91684;
UPDATE `gameobject` SET `id` = '176636' WHERE `guid` =91681;
UPDATE `gameobject` SET `id` = '176636' WHERE `guid` =150;
UPDATE `gameobject` SET `id` = '176636' WHERE `guid` =91672;
UPDATE `gameobject` SET `id` = '176636' WHERE `guid` =91658;
UPDATE `gameobject` SET `id` = '176636' WHERE `guid` =91648;
UPDATE `gameobject` SET `id` = '176636' WHERE `guid` =42992;
UPDATE `gameobject` SET `id` = '176636' WHERE `guid` =91631;
UPDATE `gameobject` SET `id` = '176636' WHERE `guid` =43019;
UPDATE `gameobject` SET `id` = '176636' WHERE `guid` =91710;
UPDATE `gameobject` SET `id` = '176636' WHERE `guid` =91744;
UPDATE `gameobject` SET `id` = '176636' WHERE `guid` =91736;
UPDATE `gameobject` SET `id` = '176636' WHERE `guid` =91725;
UPDATE `gameobject` SET `id` = '176636' WHERE `guid` =43017;
#
DELETE FROM `gameobject_loot_template` WHERE `entry` = 176587 AND `item` = 11514;
UPDATE `gameobject` SET `id` = '176641' WHERE `id` =176587 AND `map` =1;
#
DELETE FROM `creature_loot_template` WHERE `item` = 12924;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 2047 AND `item` = 11513;
UPDATE `gameobject_template` SET `data1` = '181108' WHERE `entry` =181108;
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(181108, 7909, 1, 0, -7909, 1),
(181108, 11513, 20, 0, 1, 3),
(181108, 7911, 100, 0, 1, 4);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 1734 AND `item` = 1705;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 1734 AND `item` = 3864;
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES ('7909', '1705', '0', '1', '1', '1');
UPDATE `gameobject_loot_template` SET `item` = '7909',`ChanceOrQuestChance` = '1',`mincountOrRef` = '-7909' WHERE `entry` =1734 AND `item` =1529;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 1734 AND `item` = 11513;
UPDATE `gameobject_template` SET `data1` = '181109' WHERE `entry` =181109;
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(181109, 2776, 100, 0, 1, 4),
(181109, 7909, 1, 0, -7909, 1),
(181109, 11513, 20, 0, 1, 3);
UPDATE `gameobject_loot_template` SET `entry` = '176643',`maxcount` = '3' WHERE `entry` =324 AND `item` =11513;
UPDATE `gameobject_loot_template` SET `entry` = '176645',`maxcount` = '3' WHERE `entry` =2040 AND `item` =11513;
UPDATE `gameobject_template` SET `data1` = '181249' WHERE `gameobject_template`.`entry` =181249;
UPDATE `gameobject_template` SET `data1` = '2054' WHERE `gameobject_template`.`entry` =2054;
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(2054, 774, 1, 0, -774, 1),
(2054, 2771, 100, 0, 1, 4),
(2054, 2836, 25, 0, 1, 4),
(2054, 2798, -50, 0, 1, 4);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 1732;
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(1732, 774, 1, 0, -774, 1),
(1732, 2771, 100, 0, 1, 4),
(1732, 2836, 25, 0, 1, 4);
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(181249, 774, 1, 0, -774, 1),
(181249, 2771, 100, 0, 1, 4),
(181249, 2836, 25, 0, 1, 4),
(181249, 11513, 20, 0, 1, 3);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 1731 AND `item` = 774;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 1731 AND `item` = 1210;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 1731 AND `item` = 5075;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1',`mincountOrRef` = '-818' WHERE `entry` =1731 AND `item` =818;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 2055;
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(2055, 818, 1, 0, -818, 1),
(2055, 2770, 100, 0, 1, 4),
(2055, 2835, 25, 0, 1, 4),
(2055, 2798, -50, 0, 1, 4);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 103711;
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(103711, 774, 1, 0, -774, 1),
(103711, 2771, 100, 0, 1, 4),
(103711, 2836, 25, 0, 1, 4);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(774, 1206, 0, 1, 1, 1),
(774, 1705, 0, 1, 1, 1),
(774, 1210, 0, 1, 1, 1),
(774, 1529, 0, 1, 1, 1),
(774, 774, 0, 1, 1, 1);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(818, 5075, 0, 1, 1, 1),
(818, 1210, 0, 1, 1, 1),
(818, 818, 0, 1, 1, 1),
(818, 774, 0, 1, 1, 1);
DELETE FROM `creature_loot_template` WHERE `entry` = 446 AND `item` = 2798;
DELETE FROM `creature_loot_template` WHERE `entry` = 445 AND `item` = 2798;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-50' WHERE `entry` =580 AND `item` =2798;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '25' WHERE `entry` =176645 AND `item` =7912;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '25',`maxcount` = '4' WHERE `entry` =2040 AND `item` =7912;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '25',`maxcount` = '4' WHERE `entry` =123310 AND `item` =7912;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-50' WHERE `item` =22634;
UPDATE `gameobject` SET `id` = '2055' WHERE `guid` =5377;
UPDATE `gameobject` SET `id` = '2055' WHERE `guid` =24166;
UPDATE `gameobject` SET `id` = '2055' WHERE `guid` =1350;
UPDATE `gameobject` SET `id` = '2055' WHERE `guid` =13203;
UPDATE `gameobject` SET `id` = '2055' WHERE `guid` =48005;
UPDATE `gameobject` SET `id` = '2055' WHERE `guid` =11417;
UPDATE `gameobject` SET `id` = '2055' WHERE `guid` =19017;
UPDATE `gameobject` SET `id` = '2055' WHERE `guid` =48027;
UPDATE `gameobject` SET `id` = '2055' WHERE `guid` =6371;
UPDATE `gameobject` SET `id` = '2055' WHERE `guid` =16325;
UPDATE `gameobject` SET `id` = '2055' WHERE `guid` =13202;
UPDATE `gameobject` SET `id` = '2055' WHERE `guid` =14353;
UPDATE `gameobject` SET `id` = '2055' WHERE `guid` =14383;
UPDATE `gameobject` SET `id` = '2055' WHERE `guid` =7960;
UPDATE `gameobject` SET `id` = '2055' WHERE `guid` =9779;
UPDATE `gameobject` SET `id` = '2055' WHERE `guid` =24137;
#
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =19020;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =11418;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =14351;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =11403;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =19016;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =11401;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =6378;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =285;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =6374;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =19019;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =19026;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =14573;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =24138;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =24160;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =19048;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =24154;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =19044;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =10359;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =14923;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =551;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =19049;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =19046;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =22639;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =19030;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =19040;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =10555;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =3715;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =15676;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =2898;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =1946;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =3374;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =5964;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =1504;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =19041;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =9186;
UPDATE `gameobject` SET `id` = '2054' WHERE `guid` =9418;
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES ('103711', '22634', '-50', '0', '1', '4'), ('103713', '22634', '-50', '0', '1', '4');
UPDATE `gameobject` SET `id` = '103713' WHERE `guid` =31271;
UPDATE `gameobject` SET `id` = '103713' WHERE `guid` =31278;
UPDATE `gameobject` SET `id` = '103713' WHERE `guid` =31274;
UPDATE `gameobject` SET `id` = '103713' WHERE `guid` =31270;
UPDATE `gameobject` SET `id` = '103713' WHERE `guid` =31273;
UPDATE `gameobject` SET `id` = '103713' WHERE `guid` =31268;
UPDATE `gameobject` SET `id` = '103713' WHERE `guid` =31267;
UPDATE `gameobject` SET `id` = '103713' WHERE `guid` =81070;
UPDATE `gameobject` SET `id` = '103713' WHERE `guid` =81072;
UPDATE `gameobject` SET `id` = '103713' WHERE `guid` =31275;
UPDATE `gameobject` SET `id` = '103713' WHERE `guid` =81073;
#
UPDATE `gameobject` SET `id` = '103711' WHERE `guid` =43943;
UPDATE `gameobject` SET `id` = '103711' WHERE `guid` =81071;
UPDATE `gameobject` SET `id` = '103711' WHERE `guid` =81074;
UPDATE `gameobject` SET `id` = '181249' WHERE `guid` =82731;
UPDATE `gameobject` SET `id` = '181249' WHERE `guid` =82338;
UPDATE `gameobject` SET `id` = '181249' WHERE `guid` =81987;
UPDATE `gameobject` SET `id` = '181249' WHERE `guid` =82710;
#
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =42982;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86212;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =16735;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86246;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =16778;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =15930;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86304;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =16523;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =43031;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =16521;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =16502;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86174;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =16055;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86322;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86452;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86580;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86538;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86442;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86434;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86420;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86300;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =43028;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =14081;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86550;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86456;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86254;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =14120;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =14086;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86482;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86582;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86256;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86248;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86558;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86552;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86454;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86562;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86574;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =11825;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86370;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =42963;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86318;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86584;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86284;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =43001;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =15600;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =14121;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =43018;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86586;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =14070;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =43002;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =13911;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =1407;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =13827;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =13530;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86576;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =13482;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86554;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =13412;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =13072;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =13062;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86184;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =12872;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86428;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86578;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =12674;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86154;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =12670;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =1248;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86572;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86556;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86564;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =86560;
UPDATE `gameobject` SET `id` = '176645' WHERE `guid` =42988;
#
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =6061;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =5720;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =12070;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =12060;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =11841;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =11950;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =42998;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =12142;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =12812;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =1281;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =42974;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =1874;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =12867;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =7779;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =43025;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =13112;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =1334;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =42999;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =43014;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =14691;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =14084;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =14252;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =13833;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =43030;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =14129;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =15928;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =10888;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =15601;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =15602;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =15700;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =43013;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =15910;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =7900;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =16501;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =16776;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =43000;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =11025;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =12955;
UPDATE `gameobject` SET `id` = '176643' WHERE `guid` =16524;
#
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =85561;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =85483;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =85480;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =85264;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =85486;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =85555;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =84862;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =85345;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =84559;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =85471;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =85477;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =85564;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =84976;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =85489;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =84892;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =85570;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =84691;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =84583;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =82730;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =84469;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =85573;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =85567;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =85222;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =82337;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =85087;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =84904;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =84868;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =85558;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =81986;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =84913;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =84880;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =82709;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =85285;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =85576;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =85249;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =84487;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =84943;
UPDATE `gameobject` SET `id` = '181109' WHERE `guid` =85474;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86283;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =85566;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86581;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86481;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =84945;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86549;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86455;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =85572;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86253;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =84585;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86585;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =84471;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =85575;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86433;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86579;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86441;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86369;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86451;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86321;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =84915;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86173;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =84882;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =85287;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =85578;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =85251;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =85560;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86211;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =84870;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86245;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =84906;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =85089;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86303;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =85491;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86575;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =85479;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86553;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =84561;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =85347;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =85473;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86537;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86419;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86299;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =85224;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =84693;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =84894;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =85476;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86583;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86317;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =84978;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =85569;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =84489;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =85557;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86183;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86427;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86577;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =84864;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =85266;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86153;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =85485;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86571;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =85488;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86573;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86561;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86551;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86453;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86557;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86247;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86255;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86559;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86563;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =85563;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =86555;
UPDATE `gameobject` SET `id` = '181108' WHERE `guid` =85482;
UPDATE `quest_template` SET `OfferRewardText` = 'Outstanding - your tribute to the Dawn is duly noted, $N. With this accomplished, I am delighted to make our mantles available to you for purchase. So long as you maintain your current status with us, these mantles will be purchasable from any authorized quartermaster of the Argent Dawn.$B$BFor the Dawn, my $gbrother:sister;!' WHERE `entry` IN (5504,5507,5513);
UPDATE `quest_template` SET `OfferRewardText` = 'Congratulations, $N - I am pleased to award you with an Argent Dawn valor token!$B$BTo acquire a valor token in such a manner indicates that you are a true hero in the cause of good. We value all effort brought to bear against the Scourge, but to take down one of their leaders is to truly deliver onto them a crushing defeat!$B$BFor the Dawn, my $gbrother:sister;!' WHERE `entry` IN (5404,5406,5508);

# Fix
DELETE FROM spell_scripts WHERE id=59910;
INSERT INTO spell_scripts (id, command, datalong, datalong2) VALUES
(59910, 15, 59935, 3),
(59910, 15, 59938, 3),
(59910, 15, 59939, 3),
(59910, 15, 59940, 3),
(59910, 15, 59943, 3);

# NeatElves
DELETE FROM creature WHERE id IN (34816, 35766, 35770, 35771) AND map=649; 
DELETE FROM creature WHERE id=35651 AND map=649;
DELETE FROM creature WHERE id=22517 AND map=649;
DELETE FROM creature WHERE id=34862;
UPDATE `gossip_menu_option` SET `option_text` = '<Take this book for the good of Azeroth!>' WHERE `menu_id` =6668 AND `id` =0;
UPDATE `gossip_menu_option` SET `option_text` = '<Take this book for the good of Azeroth!>' WHERE `menu_id` =6669 AND `id` =0;
UPDATE `gossip_menu_option` SET `option_text` = '<Take this book for the good of Azeroth!>' WHERE `menu_id` =6670 AND `id` =0;
DELETE FROM creature_template_addon WHERE entry IN (23877, 23878, 23879, 23880);
INSERT INTO creature_template_addon (entry, auras) VALUES
(23877, '42466'),
(23878, '42466'),
(23879, '42466'),
(23880, '42466');
INSERT IGNORE INTO achievement_criteria_data (criteria_id, type, value1) VALUES
(12344, 12, 0),
(12345, 12, 2),
(12338, 12, 1),
(12339, 12, 3);
UPDATE creature_template SET lootid=0 WHERE entry=23954;
DELETE FROM creature_loot_template WHERE entry=23954;
UPDATE item_loot_template SET ChanceOrQuestChance=15 WHERE entry=35348 AND item IN (33816, 33818, 35349, 35350);
UPDATE creature_loot_template SET maxcount=1 WHERE item=29740;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` =10508 AND `item` =13314;
UPDATE creature_template SET npcflag=npcflag|1, gossip_menu_id=3381 WHERE entry=11316;
REPLACE INTO gossip_menu (entry, text_id) VALUES (3381, 4133);
UPDATE `gossip_menu_option` SET `option_text` = 'Calm down, I want to ask you about the Iron Dwarves and Loken.' WHERE `menu_id` =9484 AND `id` =2;
UPDATE `gossip_menu_option` SET `option_text` = 'I would like to browse your goods, Illusia.' WHERE `menu_id` =9498 AND `id` =1;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 9498 AND `id` = 3;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 9498 AND `id` = 3;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 9763 AND `id` = 0;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 9763 AND `id` = 0;
UPDATE `locales_gossip_menu_option` SET `id` = '0' WHERE `menu_id` =9763 AND `id` =2;
UPDATE `gossip_menu_option` SET `id` = '0' WHERE `menu_id` =9763 AND `id` =2;
UPDATE creature_template SET npcflag=npcflag&~1 WHERE entry=32790;
UPDATE `creature_template` SET `lootid` = '0' WHERE `entry` =31673;
UPDATE `creature_template` SET `lootid` = '31674' WHERE `entry` =31674;
UPDATE `creature_loot_template` SET `entry` = '31674' WHERE `entry` =31673;
UPDATE `creature_template` SET `lootid` = '23980' WHERE `entry` =23980;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (23980,43228,100,0,1,1),(23980,33330,-100,0,1,1),(23980,35578,0,1,1,1),(23980,35576,0,1,1,1),(23980,35577,0,1,1,1);
UPDATE `quest_template` SET `SrcSpell` = '0' WHERE `entry` =12757;
UPDATE `creature_template` SET `flags_extra`=`flags_extra` &~ 1 WHERE `entry`=17256;
DELETE FROM `creature_loot_template` WHERE `entry`=11671;
UPDATE `creature_template` SET `lootid`=0 WHERE `entry`=11671;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` =165658 AND `item` =11382;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` =165658 AND `item` =11754;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '15' WHERE `item` =11370;
UPDATE `creature_template` SET `faction_A` = '35',`faction_H` = '35' WHERE `entry` =9502;
UPDATE `creature_template` SET `flags_extra`=`flags_extra` &~ 1 WHERE `entry`=17256;
UPDATE `creature_template` SET `faction_A` = '15',`faction_H` = '15' WHERE `entry` =20777;
DELETE FROM `creature` WHERE `guid` = 123598;

# SATANA
DELETE FROM `creature` WHERE `guid` IN (97343, 111385);

# NeatElves
DELETE FROM `gossip_menu` WHERE `entry` = 50005;
DELETE FROM gossip_menu_option WHERE menu_id=9709;
UPDATE quest_end_scripts SET datalong2=1000 WHERE command=3;
UPDATE quest_start_scripts SET datalong2=1000 WHERE command=3;
DELETE FROM quest_end_scripts WHERE id=502;
INSERT INTO quest_end_scripts VALUES 
(502,2,0,2,0,2000000537,0,0,0,0),
(502,10,18,0,0,0,0,0,0,0),
(502,10,10,2275,300000,0,-353.534,21.4088,54.6594,3.68102),
(502,11,22,44,2275,0,0,0,0,0);
DELETE FROM db_script_string WHERE entry IN (2000000537);
INSERT INTO db_script_string VALUES
(2000000537,'%s sniffs the elixir then eagerly digs in!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
UPDATE quest_template SET CompleteScript =502 WHERE entry =502;
DELETE FROM quest_end_scripts WHERE id =411;
INSERT INTO quest_end_scripts VALUES 
(411,2,15,7673,1,0,0,0,0,0),
(411,7,10,5666,23000,0,1768.58,55.4891,-46.3198,2.28248),
(411,23,0,0,5666,2000000538,0,0,0,0),
(411,23,1,2,5666,0,0,0,0,0),
(411,30,0,0,0,2000000539,0,0,0,0);
DELETE FROM db_script_string WHERE entry in (2000000538,2000000539,2000000540,2000000541);
INSERT INTO db_script_string (entry,content_default) VALUES
('2000000540','It has been a long time, Bethor, my friend.'),
('2000000541','When time permits, we must speak at length.  For we have much to discuss.'),
('2000000538','And thank you, $N.  Without your aid I may never have found my way to the Forsaken.'),
('2000000539','Farewell, my friend.');
UPDATE quest_template SET CompleteScript =411 WHERE entry =411;
UPDATE creature_template SET MovementType =2 WHERE entry =5666;
DELETE FROM quest_start_scripts WHERE id =1064;
INSERT INTO quest_start_scripts VALUES
(1064,2,0,2,0,2000000542,0,0,0,0), 
(1064,4,10,4068,163000,0,-1067.22,-213.737,160.473,5.25037),
(1064,8,0,0,0,2000000543,0,0,0,0),
(1064,10,0,0,0,2000000544,0,0,0,0),
(1064,12,0,0,0,2000000545,0,0,0,0),
(1064,14,1,25,0,0,0,0,0,0);
DELETE FROM db_script_string WHERE entry in (2000000542,2000000543,2000000544,2000000545);
INSERT INTO db_script_string (entry,content_default) VALUES
('2000000542','%s summons a messenger...'),
('2000000543','Go, my servant. Send word of Stonetalon to Apothecary Zamah.'),
('2000000544','%s gives message to Apothecary Zamah.'),
('2000000545','Apothecary Zamah smiles.');
UPDATE creature_template SET inhabittype =5 WHERE entry =4068;
UPDATE quest_template SET StartScript =1064 WHERE entry =1064;
UPDATE creature_template SET MovementType =2 WHERE entry =4068;
DELETE FROM quest_end_scripts WHERE id=3922 AND delay=6;        
INSERT INTO quest_end_scripts VALUES 
(3922,6,15,13727,1,0,0,0,0,0),
(3922,6,1,0,0,0,0,0,0,0);
UPDATE gossip_menu_option SET action_menu_id=1044 WHERE menu_id=1045 AND id=0;
UPDATE gossip_menu_option SET action_menu_id=1046 WHERE menu_id=1047 AND id=0;
UPDATE gossip_menu_option SET action_menu_id=1048 WHERE menu_id=1049 AND id=0;
UPDATE gossip_menu_option SET action_menu_id=1052 WHERE menu_id=1050 AND id=0;
UPDATE creature SET position_x =-4629.427734, position_y =-3176.136719, position_z =41.233944, orientation =6.153070 WHERE guid =125122;
REPLACE INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000546, 'But this the only building that fit Brogg! Goblins make buildings too small!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000547, 'I thought we talked about this, Brogg. You can''t stay in this building. Sure, it can house you, but there''s no room for anyone else!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000548, 'Yes, we said you can stay here, but this building is our headquarters! All of our manuals and blueprints are stored here!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000549, 'I''m inclined to say they made ogres too big! I can see I''m not going to convince you to move now, but don''t think this is permanent!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
DELETE FROM db_script_string WHERE entry =2000000550;
INSERT INTO db_script_string VALUES 
(2000000550,'You said Brogg could stay here! You promised Brogg you\'d help regain Stonemaul clan mound!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
DELETE FROM quest_end_scripts WHERE id=970;
INSERT INTO quest_end_scripts VALUES 
(970, 1, 0, 0, 0, 2000000255, 0, 0, 0, 0),
(970, 2, 3, 0, 0, 0, 3185.46, 189.38, 4.7517, 2.28164),
(970, 3, 1, 36, 0, 0, 0, 0, 0, 0),
(970, 4, 6877, 5, 0, 0, 3184.06, 190.81, 4.61263, 5.55407),
(970, 6, 0, 2, 0, 2000000256, 0, 0, 0, 0),
(970, 10, 10, 4509,54000,0,3184.06,190.81,4.61263,5.55407),
(970, 11, 0, 0,4509,2000000551,0,0,0,0),
(970, 11, 1, 1,4509,0,0,0,0,0),
(970, 18, 0, 0,4509,2000000552,0,0,0,0),
(970, 18, 1, 1,4509,0,0,0,0,0),
(970, 25, 0, 0,4509,2000000553,0,0,0,0),
(970, 25, 1, 1,4509,0,0,0,0,0),
(970, 32, 0, 0,4509,2000000554,0,0,0,0),
(970, 32, 1, 1,4509,0,0,0,0,0),
(970, 39, 0, 0,4509,2000000555,0,0,0,0),
(970, 39, 1, 1,4509,0,0,0,0,0),
(970, 47, 0, 0,0,2000000257,0,0,0,0),
(970, 47, 1, 6,0,0,0,0,0,0),
(970, 56, 0, 0,4509,2000000556,0,0,0,0),
(970, 56, 1, 1,4509,0,0,0,0,0),
(970, 64, 0, 2,0,2000000258,0,0,0,0),
(970, 65, 3, 0, 0, 0, 3185.46, 189.38, 4.7517, 0.471239);
REPLACE INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000551,'In the throes of the Sundering, Ameth\'Aran was at the whim of the terror that gripped the land. There was little hope for survival.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000552,'Athrikus came to us. He told us that he could save us from harm. He cast a spell upon us to protect us from harm.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000553,'When the shaking stopped, his true motives were revealed. We were trapped, and he was slowly draining our powers.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000554,'There were hundreds imprisoned by his spell. Now only a few remain in their prisons. He would speak to us sometimes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000555,'He worried that his power weakened, that soon even we last of his precious soulgems would fade and die.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000556,'His lieutenant, Ilkurd Magthrull possesses a tome which might indicate the location of the remaining soulgems.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
UPDATE quest_template SET CompleteScript =970 WHERE entry =970;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`) VALUES
(37600, 5907, 1, 1, 1, 0, 0, 268.899, -3055.15, 97.1642, 5.48952, 300, 0, 0, 328, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`) VALUES
(3095, 522, 0, 1, 1, 0, 0, -10389, 383.148, 46.9751, 6.15685, 600, 0, 0, 2865, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`) VALUES
(53125, 3626, 0, 1, 1, 0, 0, -8646.47, 475.49, 102.505, 5.51888, 600, 0, 0, 102, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`) VALUES
(5950, 14439, 0, 1, 1, 0, 0, -8599.39, 526.047, 106.46, 0.773191, 350, 0, 1, 50400, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`) VALUES
(36741, 14857, 1, 1, 1, 0, 0, -29.8645, -2615.39, 97.1417, 2.856, 300, 0, 0, 55, 0);
REPLACE INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000564, 'Zug zug! Happy to help!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000557,'Hmmm... Where is my fishing hook? Oh, there it is.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000558,'Let\'s see if the fish are biting.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000559,'Hmmm... I think I need better bait. I\'ll check my father\'s wagon.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000560,'Quillboar scraps! These should do the trick. Fish love Quillboar.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000561,'Caught one! I\'ll see if any of the guards are hungry. Come on Fang!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000562,'I caught a fish if you are hungry...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000563,'A nice catch it is at that! You bring honor to the Horde boy, We thank you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
UPDATE creature_template SET MovementType=1 WHERE entry =14892;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`) VALUES
(102094, 14892, 1, 1, 1, 0, 0, -26.3665, -2618.95, 97.31, 5.43324, 300, 5, 0, 42, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`) VALUES
(52954, 14850, 1, 1, 1, 0, 0, -537.488, -2986.61, 92.9323, 2.40044, 300, 0, 0, 42, 0);
REPLACE INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000564,'Would you like something more to eat sir?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000565,'More bread boy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000566,'Right away sir.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000567,'Here is your bread sir.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000568,'Aaahh... Very good. Now scat!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000569,'As you wish sir.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`) VALUES
(52958, 14873, 1, 1, 1, 0, 0, 280.125, -3029.01, 97.3502, 3.76837, 300, 0, 0, 42, 0);
REPLACE INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000570,'Can I go collect more rocks for my necklace, Papa?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000571,'Yes you may, $N. But do not stray too far from home.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000572,'Dabu! I will be careful Papa!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000573,'Ooohh... This rock is nice and colorful. Let\'s see if I can find more like it...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000574,'Hmm... That rock is nice, but too small.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000575,'This is a shiney rock. I\'ll put it in my bucket. Ok, I just need a few more...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000576,'I bet my friend Gruk would like this rock for the spear he is making! It\'s very sharp... I hope he likes it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000577,'There... That should be enough rocks to make a necklace. I should probably get home now anyway.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`) VALUES
(18298, 1533, 0, 1, 1, 0, 0, 2869.45, 1046.28, 114.79, 0.08547, 72000, 0, 0, 190, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`) VALUES
(16737, 10358, 0, 1, 1, 0, 0, 2013.67, -353.764, 35.5772, 3.17405, 28800, 0, 0, 230, 249);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`) VALUES
(18612, 1531, 0, 1, 1, 0, 0, 2380.35, 630.252, 30.2444, 1.33931, 300, 20, 0, 120, 0),
(17626, 1531, 0, 1, 1, 0, 0, 2463.78, 623.208, 29.7211, 4.7822, 300, 20, 0, 120, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(97343, 25428, 571, 1, 1, 0, 0, 4457.88, 5241.73, 74.4109, 5.03238, 600, 15, 0, 7984, 3080, 1),
(111385, 31718, 571, 1, 1, 0, 0, 7930.02, 1022.7, 462.613, 5.22892, 300, 0, 0, 12600, 3994, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(98952, 30102, 571, 1, 1, 0, 0, 5823.54, -2910.77, 303.546, 3.70443, 600, 0, 0, 10635, 0, 0),
(111940, 31140, 571, 1, 1, 0, 0, 6582.88, 1116.38, 273.358, 0.355237, 300, 0, 0, 12600, 0, 0);
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` in (51999,52000,52001,52002,52003,52004,52005);
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '50' WHERE `item` in (51994,51996,51992,51993,51995,51991);
UPDATE `creature_template` SET `equipment_id` = '1945' WHERE `entry` =35012;
REPLACE INTO `game_event_creature` (`guid`, `evententry`) VALUES (111351, 2);
DELETE FROM `event_scripts` WHERE `id` = 5991 AND `delay` = 5 AND `command` = 7 AND `datalong` = 6001;
DELETE FROM `event_scripts` WHERE `id` = 6028 AND `delay` = 5 AND `command` = 7 AND `datalong` = 6002;
UPDATE `gossip_menu_option` SET `option_text` = 'You have fought well, spirit.  I ask you to grant me the strength of your body and the strength of your heart.' WHERE `menu_id` =3862 AND `id` =0;
UPDATE `gossip_menu_option` SET `option_text` = 'You have fought well, spirit.  I ask you to grant me the strength of your body and the strength of your heart.' WHERE `menu_id` =3862 AND `id` =1;
UPDATE `quest_template` SET `RequestItemsText` = 'The Stormpike Brigade cannot charge into battle bareback! We require harnesses for our mounts, after all, we are not savages.$B$BWhile we could easily slay the rams that roam near our base for the leather required to fashion a harness, doing so would be idiotic. We need those rams for mounts.$B$BYou must strike at our enemy''s base, slaying the frostwolves they use as mounts and taking their hides. Return their hides to me so that harnesses may be made for the cavalry. Go! ' WHERE `entry` = 7026;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=50 WHERE `item`=38551;
DELETE FROM `creature_loot_template` WHERE `entry` = 16949 AND `item` = 29797;
DELETE FROM `creature_loot_template` WHERE `entry` = 18858 AND `item` = 29797;
DELETE FROM `creature_loot_template` WHERE `entry` = 5981 AND `item` = 15727;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` =6005 AND `item` =15727;
DELETE FROM `creature_loot_template` WHERE `entry` = 23873 AND `item` = 33085;
UPDATE `quest_template` SET `RequestItemsText` = 'The Stormpike Brigade cannot charge into battle bareback! We require harnesses for our mounts, after all, we are not savages.$B$BWhile we could easily slay the rams that roam near our base for the leather required to fashion a harness, doing so would be idiotic. We need those rams for mounts.$B$BYou must strike at our enemy''s base, slaying the frostwolves they use as mounts and taking their hides. Return their hides to me so that harnesses may be made for the cavalry. Go!' WHERE `entry` = 7026;
UPDATE `quest_template` SET `RequiredRaces` = '1101' WHERE `entry` in (13427,13477,7221);
UPDATE `quest_template` SET `RequiredRaces` = '690' WHERE `entry` =13475;
UPDATE `quest_template` SET `SpecialFlags` = '0' WHERE `entry` in (8369,8375);
UPDATE `quest_template` SET `PrevQuestId` = '8369' WHERE `entry` =8387;
UPDATE `quest_template` SET `NextQuestId` = '0',`NextQuestInChain` = '0' WHERE `entry` =8375;
UPDATE `quest_template` SET `PrevQuestId` = '8375' WHERE `entry` =8383;
DELETE FROM `creature_questrelation` WHERE `quest` = 7222;
REPLACE INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('13816', '7221');
DELETE FROM `creature_questrelation` WHERE `id` = 4949 AND `quest` = 13370;
DELETE FROM `creature_involvedrelation` WHERE `id` = 4949 AND `quest` = 13369;
DELETE FROM `creature_involvedrelation` WHERE `id` = 4949 AND `quest` = 13267;
DELETE FROM `creature_questrelation` WHERE `id` = 4949 AND `quest` = 13266;
DELETE FROM `creature_involvedrelation` WHERE `id` = 4949 AND `quest` = 13257;
UPDATE `quest_template` SET `SpecialFlags` = '0' WHERE `entry` in (7202,7365,7361,7364,7363,7366,7082,7081,7181,7362);
UPDATE `quest_template` SET `PrevQuestId` = '7202' WHERE `entry` =7382;
UPDATE `quest_template` SET `PrevQuestId` = '7181' WHERE `entry` =7381;
UPDATE `quest_template` SET `PrevQuestId` = '7365' WHERE `entry` =7425;
UPDATE `quest_template` SET `PrevQuestId` = '7361' WHERE `entry` =7421;
UPDATE `quest_template` SET `PrevQuestId` = '7364' WHERE `entry` =7424;
UPDATE `quest_template` SET `PrevQuestId` = '7362' WHERE `entry` =7422;
UPDATE `quest_template` SET `PrevQuestId` = '7363' WHERE `entry` =7423;
UPDATE `quest_template` SET `PrevQuestId` = '7366' WHERE `entry` =7426;
REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES ('13154', '7363');
REPLACE INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('13154', '7363');
UPDATE `creature_template` SET `faction_A` = '1078',`faction_H` = '1078' WHERE `entry` in (13446,22621,37292,31973);
UPDATE `creature_template` SET `npcflag` = '0' WHERE `entry` in (2386,2405);
UPDATE `quest_template` SET `NextQuestId` = '0',`NextQuestInChain` = '0' WHERE `entry`in (7221,7222);
UPDATE `quest_template` SET `SpecialFlags` = '0' WHERE `entry` in (654,841,10076,10074);
DELETE FROM `creature_loot_template` WHERE `entry` = 8208 AND `item` = 9439;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =8208 AND `item` =4304;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-20' WHERE `item` in (9439,9442,9437);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '10' WHERE `item` in (26043,26042);
UPDATE `quest_template` SET `RequiredRaces` = '1101',`PrevQuestId` = '10076' WHERE `entry` =10077;
UPDATE `quest_template` SET `RequiredRaces` = '690' WHERE `entry` =10074;
UPDATE `quest_template` SET `RequiredRaces` = '1101' WHERE `entry` =10076;
UPDATE `quest_template` SET `RequiredRaces` = '690',`PrevQuestId` = '10074' WHERE `entry` =10075;
UPDATE `creature_questrelation` SET `quest` = '10075' WHERE `id` =18816 AND `quest` =10077;
UPDATE `creature_questrelation` SET `quest` = '10077' WHERE `id` =18817 AND `quest` =10075;
UPDATE `creature_involvedrelation` SET `quest` = '10077' WHERE `id` =18817 AND `quest` =10075;
UPDATE `creature_involvedrelation` SET `quest` = '10075' WHERE `id` =18816 AND `quest` =10077;
UPDATE `creature_template` SET `faction_A` = '35',`faction_H` = '35' WHERE `entry` =13936;
UPDATE `quest_template` SET `PrevQuestId` = '8304',`NextQuestId` = '8314',`ExclusiveGroup` = '-8309' WHERE `entry` in (8309,8310);
UPDATE `quest_template` SET `SpecialFlags` = '0',`PrevQuestId` = '0' WHERE `entry` =8314;
UPDATE `creature_questrelation` SET `quest` = '8268' WHERE `id` =14781 AND `quest` =8266;
UPDATE `creature_questrelation` SET `quest` = '8269' WHERE `id` =14781 AND `quest` =8267;
UPDATE `creature_questrelation` SET `quest` = '8266' WHERE `id` =14733 AND `quest` =8268;
UPDATE `creature_questrelation` SET `quest` = '8267' WHERE `id` =14733 AND `quest` =8269;
UPDATE `creature_involvedrelation` SET `quest` = '8268' WHERE `id` =14781 AND `quest` =8266;
UPDATE `creature_involvedrelation` SET `quest` = '8269' WHERE `id` =14781 AND `quest` =8267;
UPDATE `creature_involvedrelation` SET `quest` = '8266' WHERE `id` =14733 AND `quest` =8268;
UPDATE `creature_involvedrelation` SET `quest` = '8267' WHERE `id` =14733 AND `quest` =8269;
UPDATE `quest_template` SET `RequiredRaces` = '690' WHERE `entry` in (8268,8269);
UPDATE `quest_template` SET `RequiredRaces` = '1101' WHERE `entry` in (8266,8267);
UPDATE `quest_template` SET `SpecialFlags` = '0' WHERE `entry` in (8105,8166,8167,8168,8171,8170,8169,8120);
UPDATE `gameobject_template` SET `data0` = '259' WHERE `entry` in (174610,174711,174619,174613,174618,174617,174616,164884);
UPDATE `gameobject_template` SET `data2` = '2244' WHERE `entry` =171943;
UPDATE `gameobject_template` SET `data3` = '0' WHERE `name` LIKE '%Cleansed %';

# NeatElves
UPDATE `quest_template` SET `RequiredRaces` = '1101' WHERE `entry` =10558;
UPDATE `quest_template` SET `RequiredRaces` = '690' WHERE `entry` =10559;

# Fix
DELETE FROM `creature_loot_template` WHERE `entry`=11671;
UPDATE `creature_template` SET `lootid`=0 WHERE `entry`=11671;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=ABS(`ChanceOrQuestChance`) WHERE `item`=38551;

# Conditions
REPLACE INTO `conditions` VALUES ('13', '0', '13727', '0', '18', '0', '162024', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176513', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176514', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176515', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176809', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176810', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176811', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176812', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176813', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176814', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176815', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176816', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176817', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176818', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176819', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176820', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176821', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176822', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176823', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176824', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176825', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176826', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176827', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176828', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176829', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176830', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176831', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176832', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176833', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176834', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176835', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176836', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176837', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176838', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176839', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176840', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176841', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176842', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176908', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176909', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176910', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176911', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176912', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176913', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176914', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176915', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176916', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176917', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176918', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176919', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176920', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176921', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '17731', '0', '18', '0', '176922', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176513', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176514', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176515', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176809', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176810', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176811', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176812', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176813', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176814', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176815', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176816', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176817', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176818', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176819', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176820', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176821', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176822', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176823', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176824', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176825', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176826', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176827', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176828', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176829', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176830', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176831', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176832', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176833', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176834', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176835', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176836', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176837', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176838', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176839', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176840', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176841', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176842', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176908', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176909', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176910', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176911', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176912', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176913', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176914', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176915', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176916', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176917', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176918', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176919', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176920', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176921', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '18431', '0', '18', '0', '176922', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '49625', '0', '18', '1', '24087', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '49625', '0', '18', '1', '24092', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '49625', '0', '18', '1', '24093', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '49625', '0', '18', '1', '24094', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '54258', '0', '18', '1', '29326', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '54264', '0', '18', '1', '29326', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '54265', '0', '18', '1', '29326', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '54266', '0', '18', '1', '29326', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '54267', '0', '18', '1', '29326', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3701', '2', '0', '9', '5727', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1323', '0', '0', '9', '3441', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9500', '0', '0', '9', '12247', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9504', '0', '0', '9', '12247', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9709', '0', '0', '9', '12630', '0', '0', '0', '', null);
REPLACE INTO `gossip_menu` VALUES ('1044', '1644');
REPLACE INTO `gossip_menu` VALUES ('1046', '1648');
REPLACE INTO `gossip_menu` VALUES ('1048', '1650');
REPLACE INTO `gossip_menu` VALUES ('1052', '1652');
REPLACE INTO `gossip_menu` VALUES ('50010', '4533');
REPLACE INTO `gossip_menu` VALUES ('50011', '4534');
REPLACE INTO `gossip_menu` VALUES ('50012', '4535');
REPLACE INTO `gossip_menu` VALUES ('50013', '4536');
REPLACE INTO `gossip_menu_option` VALUES ('3701', '2', '0', 'You may speak frankly, Neeru...', '1', '1', '50010', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50010', '1', '0', 'It is good to see the Burning Blade is taking over where the Shadow Council once failed.', '1', '1', '50011', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50011', '1', '0', 'So the Searing Blade is expendable?', '1', '1', '50012', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('50012', '1', '0', 'Is there anything you would have of me? ', '1', '1', '50013', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('1323', '0', '0', 'Tell me what drives this vengeance?', '1', '1', '1322', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9500', '0', '0', 'You\'re free to go Orsonn, but first tell me what\'s wrong with the furbolg.', '1', '1', '9502', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9504', '0', '0', 'Who was this stranger?', '1', '1', '9505', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9709', '0', '0', 'I\'ve lost Nass...', '1', '1', '1', '0', '0', '0', null);
DELETE FROM conditions WHERE SourceTypeOrReferenceId=1 AND SourceGroup=31673;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=1 AND SourceGroup=23954;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=9498;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=9498;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=9709;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=9709;
DELETE FROM `db_script_string` WHERE entry = 2000000540;
DELETE FROM `db_script_string` WHERE entry = 2000000541;
DELETE FROM `db_script_string` WHERE entry = 2000000546;
DELETE FROM `db_script_string` WHERE entry = 2000000547;
DELETE FROM `db_script_string` WHERE entry = 2000000548;
DELETE FROM `db_script_string` WHERE entry = 2000000549;
DELETE FROM `db_script_string` WHERE entry = 2000000550;
DELETE FROM `db_script_string` WHERE entry = 2000000557;
DELETE FROM `db_script_string` WHERE entry = 2000000558;
DELETE FROM `db_script_string` WHERE entry = 2000000559;
DELETE FROM `db_script_string` WHERE entry = 2000000560;
DELETE FROM `db_script_string` WHERE entry = 2000000561;
DELETE FROM `db_script_string` WHERE entry = 2000000562;
DELETE FROM `db_script_string` WHERE entry = 2000000563;
DELETE FROM `db_script_string` WHERE entry = 2000000564;
DELETE FROM `db_script_string` WHERE entry = 2000000565;
DELETE FROM `db_script_string` WHERE entry = 2000000566;
DELETE FROM `db_script_string` WHERE entry = 2000000567;
DELETE FROM `db_script_string` WHERE entry = 2000000568;
DELETE FROM `db_script_string` WHERE entry = 2000000569;
DELETE FROM `db_script_string` WHERE entry = 2000000570;
DELETE FROM `db_script_string` WHERE entry = 2000000571;
DELETE FROM `db_script_string` WHERE entry = 2000000572;
DELETE FROM `db_script_string` WHERE entry = 2000000573;
DELETE FROM `db_script_string` WHERE entry = 2000000574;
DELETE FROM `db_script_string` WHERE entry = 2000000575;
DELETE FROM `db_script_string` WHERE entry = 2000000576;
DELETE FROM `db_script_string` WHERE entry = 2000000577;
DELETE FROM conditions WHERE SourceEntry=11513 AND SourceGroup=1734;
DELETE FROM conditions WHERE SourceEntry=11513 AND SourceGroup=1732;
DELETE FROM conditions WHERE SourceEntry=11513 AND SourceGroup=2040;
DELETE FROM conditions WHERE SourceEntry=11513 AND SourceGroup=2047;
DELETE FROM conditions WHERE SourceEntry=11513 AND SourceGroup=324;


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
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE QuestFlags=QuestFlags|4096;
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE QuestFlags=QuestFlags|32768;
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

UPDATE version SET `cache_id`= '611';
UPDATE version SET `db_version`= 'YTDB_0.14.4_R611_TC_R13785_TDBAI_335.0.3_RuDB_R44';
