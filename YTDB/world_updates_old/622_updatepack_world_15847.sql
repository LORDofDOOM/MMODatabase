# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 621_FIX_15679 622_FIX_15847 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('622_FIX_15947');

# SignFinder
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 66665, 0, 1, 31, 0, 3, 35015, 0, 0, 0, '', NULL),
(13, 1, 66665, 0, 0, 31, 0, 3, 35013, 0, 0, 0, '', 'Koralon Burning Breath'),
(13, 1, 66665, 0, 0, 31, 0, 3, 35015, 0, 0, 0, '', NULL);
DELETE FROM `conditions` WHERE `SourceEntry` =66665 AND `ConditionValue2` =35015;

# Chaosua
UPDATE `smart_scripts` SET `link`='0' WHERE (`entryorguid`='18398') AND (`source_type`='0') AND (`id`='1') AND (`link`='2');

# TC
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
# UPDATE `quest_template` SET `StartScript`=0,`CompleteScript`=0,`SpecialFlags`=2 WHERE `entry` IN (@QUEST_BROKENTOE,@QUEST_BLUE_BROTHERS,@QUEST_ROKDAR,@QUEST_SKRAGATH,@QUEST_WARMAUL,@QUEST_MOGOR);
# DELETE FROM `quest_start_scripts` WHERE `id` IN (@QUEST_BROKENTOE,@QUEST_BLUE_BROTHERS,@QUEST_ROKDAR,@QUEST_SKRAGATH,@QUEST_WARMAUL,@QUEST_MOGOR);
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
# DELETE FROM `creature` WHERE `id`=@ENTRY;
# INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
# (1022681,@ENTRY,530,1,1,0,0,-714.823,7931.65,58.8672,4.3693,300,0,0,60720,29330,0,0,0,0);
# DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
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
# (@ENTRY*100+1,9,3,0,0,0,100,0,500,500,0,0,49,0,0,0,0,0,0,21,0,0,0,0,0,0,0,"Mogor - On Script - Attack Closest Player"),
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
# DELETE FROM `db_script_string` WHERE `entry` IN (2000000001,2000000002,2000000003);
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
# DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
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
# DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
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
# DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
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
# DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
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

INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,69347,0,31,3,37496,0,0,'','Spell 69347 targets entry 37496'),
(13,1,69347,1,31,3,37497,0,0,'','Spell 69347 targets entry 37497'),
(13,1,69347,2,31,3,37498,0,0,'','Spell 69347 targets entry 37498'),
(13,1,69347,3,31,3,37584,0,0,'','Spell 69347 targets entry 37584'),
(13,1,69347,4,31,3,37587,0,0,'','Spell 69347 targets entry 37587'),
(13,1,69347,5,31,3,37588,0,0,'','Spell 69347 targets entry 37588');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,70512,3,31,3,37584,0,0,'','Spell 70512 targets entry 37584'),
(13,1,70512,4,31,3,37587,0,0,'','Spell 70512 targets entry 37587'),
(13,1,70512,5,31,3,37588,0,0,'','Spell 70512 targets entry 37588');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,70130,0,31,3,37496,0,0,'','Spell 70130 targets entry 37496'),
(13,1,70130,1,31,3,37497,0,0,'','Spell 70130 targets entry 37497'),
(13,1,70130,2,31,3,37498,0,0,'','Spell 70130 targets entry 37498');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry`=36494;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(36494,0,0, 'Tiny creatures under feet, you bring Garfrost something good to eat!',14,0,100,0,0,0, 'Forgemaster Garfrost'),
(36494,1,0, 'Axe too weak. Garfrost make better and CRUSH YOU.',14,0,100,0,0,0, 'Forgemaster Garfrost'),
(36494,2,0, 'Garfrost tired of puny mortals. Now your bones will freeze!',14,0,100,0,0,0, 'Forgemaster Garfrost'),
(36494,3,0, 'Garfrost hope giant underpants clean. Save boss great shame. For later.',14,0,100,0,0,0, 'Forgemaster Garfrost'),
(36494,4,0, 'Will save for snack. For later.',12,0,100,0,0,0, 'Forgemaster Garfrost'),
(36494,4,1, 'That one maybe not so good to eat now. Stupid Garfrost! BAD! BAD!',12,0,100,0,0,0, 'Forgemaster Garfrost'),
(36494,5,0, '%s hurls a massive saronite boulder at you!',16,0,100,0,0,0, 'Forgemaster Garfrost'),
(36494,6,0, '%s casts |cFF00AACCDeep Freeze|r at $n.',41,0,100,0,0,0, 'Forgemaster Garfrost');
-- Remove old script text
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1658006 AND -1658001;
-- NPC talk text insert for Sara
DELETE FROM `creature_text` WHERE `entry`=33134;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(33134,0,0, 'Help me! Please get them off me!',14,0,100,0,0,15771, 'Sara YELL_PREFIGHT'),
(33134,0,1, 'What do you want from me? Leave me alone!',14,0,100,0,0,15772, 'Sara YELL_PREFIGHT'),
(33134,1,0, 'Yes! YES! Show them no mercy! Give no pause to your attacks!',14,0,100,0,0,15773, 'Sara YELL_COMBAT_PHASE_1'),
(33134,1,1, 'Let hatred and rage guide your blows!',14,0,100,0,0,15774, 'Sara YELL_COMBAT_PHASE_1'),
(33134,1,2, 'The time to strike at the head of the beast will soon be upon us! Focus your anger and hatred on his minions!',14,0,100,457,0,15775, 'Sara YELL_COMBAT_PHASE_1'),
(33134,2,0, 'Suffocate upon your own hate!',14,0,100,0,0,15776, 'Sara YELL_COMBAT_PHASE_2'),
(33134,2,1, 'Tremble, mortals, before the coming of the end!',14,0,100,0,0,15777, 'Sara YELL_COMBAT_PHASE_2'),
(33134,3,0, 'Powerless to act...',14,0,100,0,0,15778, 'Sara YELL_SLAY'),
(33134,3,1, 'Could they have been saved?',14,0,100,0,0,15779, 'YELL SAY_SLAY');
-- remove script text
DELETE FROM script_texts WHERE entry BETWEEN -1603319 AND -1603310;
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry`=9816;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(9816,0,0, '%s begins to regain its strength!',16,0,100,0,0,0, 'Pyroguard Emberseer'),
(9816,1,0, '%s is nearly at full strength!',16,0,100,0,0,0, 'Pyroguard Emberseer'),
(9816,2,0, '%s regains its power and breaks free of its bonds!',16,0,100,0,0,0, 'Pyroguard Emberseer'),
(9816,3,0, 'Ha! Ha! Ha! Thank you for freeing me, fools. Now let me repay you by charring the flesh from your bones.',14,0,100,0,0,0, 'Pyroguard Emberseer');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,52264,0,0,29,0,28653,5,0,0,97,"","Creature conditions for spell 52264 (Deliver stolen horse)");
DELETE FROM `spell_proc_event` WHERE `entry` = 70656;
DELETE FROM `spell_proc_event` WHERE `entry` = 63611;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(63611,0,0,0,0,0,51154,0,0,0,0);
-- Fix Quest 9962,9967,9970,9972,9973
UPDATE `smart_scripts` SET `target_type`=16 WHERE `entryorguid`=18398 AND `id`=1; -- Brokentoe
UPDATE `smart_scripts` SET `target_type`=16 WHERE `entryorguid`=18399 AND `id`=4; -- Murkblood Twin
UPDATE `smart_scripts` SET `target_type`=16 WHERE `entryorguid`=18400 AND `id`=5; -- Rokdar the Sundered Lord
UPDATE `smart_scripts` SET `target_type`=16 WHERE `entryorguid`=18401 AND `id`=3; -- Skra'gath
UPDATE `smart_scripts` SET `id`=5,`link`=6,`target_type`=16 WHERE `entryorguid`=18402 AND `action_type`=15; -- Warmaul Champion
UPDATE `smart_scripts` SET `id`=6 WHERE `entryorguid`=18402 AND `action_type`=45; -- Warmaul Champion
UPDATE `conditions` SET `SourceGroup`=1 WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=0 AND `SourceEntry`=52264 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=29 AND `ConditionTarget`=0 AND `ConditionValue1`=28653 AND `ConditionValue2`=5 AND `ConditionValue3`=0;
UPDATE `conditions` SET
    `SourceGroup` = 1,
    `SourceId` = 0
WHERE 
    `SourceTypeOrReferenceId` = 13 AND
    `SourceEntry` = 52264 AND
    `ConditionTypeOrReference` = 29 AND
    `ConditionValue1` = 28653 AND
    `ConditionValue2` = 5;
DELETE FROM `spell_bonus_data` WHERE `entry`=633; 
INSERT INTO `spell_bonus_data` (`entry`,`comments`) VALUES (633,'Paladin - Lay on Hands'); 
UPDATE `spell_proc_event` SET `procFlags` = 332116 WHERE `entry` = 63611;
-- Aura for Chicken Escapee (thx Discovered)
DELETE FROM `creature_template_addon` WHERE `entry`=28161;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(28161,0,0,0,0,'50734'); -- Chicken Escapee - Frenzyheart Chicken: Invisibility
-- Elder Harkek SAI
SET @ENTRY := 28138;
SET @SPELL_SEE_INVIS_CHICKEN := 50735;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,12532,0,0,0,85,@SPELL_SEE_INVIS_CHICKEN,2,0,0,0,0,7,0,0,0,0,0,0,0,"Elder Harkek - On Quest Accept - Invoker Cast Frenzyheart Chicken: See Invisibility"),
(@ENTRY,0,1,0,19,0,100,0,12702,0,0,0,85,@SPELL_SEE_INVIS_CHICKEN,2,0,0,0,0,7,0,0,0,0,0,0,0,"Elder Harkek - On Quest Accept - Invoker Cast Frenzyheart Chicken: See Invisibility"),
(@ENTRY,0,2,0,20,0,100,0,12532,0,0,0,28,@SPELL_SEE_INVIS_CHICKEN,0,0,0,0,0,7,0,0,0,0,0,0,0,"Elder Harkek - On Quest Complete - Remove Aura Frenzyheart Chicken: See Invisibility"),
(@ENTRY,0,3,0,20,0,100,0,12702,0,0,0,28,@SPELL_SEE_INVIS_CHICKEN,0,0,0,0,0,7,0,0,0,0,0,0,0,"Elder Harkek - On Quest Complete - Remove Aura Frenzyheart Chicken: See Invisibility");
-- Chicken Escapee SAI
SET @ENTRY := 28161;
SET @SPELL_NET_CHICKEN := 51959;
SET @SPELL_INVIS_CHICKEN := 50734;
SET @SPELL_SCARED_CHICKEN := 51846;
SET @SPELL_CREATE_QUESTITEM := 51037;
UPDATE `creature` SET `MovementType`=0,`spawndist`=0,`spawntimesecs`=5 WHERE `id`=@ENTRY;
UPDATE `creature_template` SET `AIName`='SmartAI',`npcflag`=1 WHERE `entry`=@ENTRY;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,@SPELL_NET_CHICKEN,0,0,0,28,@SPELL_SCARED_CHICKEN,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chicken Escapee - On Spellhit - Remove Aura Scared Chicken"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,41,4000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chicken Escapee - On Spellhit - Forced Despawn"),
(@ENTRY,0,2,3,64,0,100,0,0,0,0,0,85,@SPELL_CREATE_QUESTITEM,2,0,0,0,0,7,0,0,0,0,0,0,0,"Chicken Escapee - On Gossip Hello - Invoker Cast Capture Chicken Escapee"), -- Triggered because of cast-time
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chicken Escapee - On Gossip Hello - Close Gossip"),
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chicken Escapee - On Gossip Hello - Set Npcflag None"),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,28,@SPELL_SCARED_CHICKEN,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chicken Escapee - On Gossip Hello - Remove Aura Scared Chicken"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chicken Escapee - On Gossip Hello - Forced Despawn"),
(@ENTRY,0,7,8,25,0,100,0,0,0,0,0,11,@SPELL_INVIS_CHICKEN,1,0,0,0,0,1,0,0,0,0,0,0,0,"Chicken Escapee - On Reset - Cast Frenzyheart Chicken: Invisibility"), -- Just in case
(@ENTRY,0,8,0,61,0,100,0,0,0,0,0,11,@SPELL_SCARED_CHICKEN,0,0,0,0,0,1,0,0,0,0,0,0,0,"Chicken Escapee - On Reset - Cast Scared Chicken");
-- Model data
UPDATE `creature_model_info` SET `bounding_radius`=1.003375,`combat_reach`=4.3125,`gender`=1 WHERE `modelid`=29249; -- Aponi Brightmane
-- Addon data
DELETE FROM `creature_template_addon` WHERE `entry`=34526;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(34526,0,1,256,0,NULL); -- Aponi Brightmane
DELETE FROM `creature_template_addon` WHERE `entry`=26452;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(26452,0,0,0,1,383,'');
-- Eye of the Lich King SAI
SET @ENTRY := 36913; -- NPC entry
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,6,0,0,1000,1000,66,0,0,0,0,0,0,21,150,0,0,0,0,0,0, 'Eye of the Lich King - OOC - face closest player');
-- Correction for Obsidian Nullifier EAI
UPDATE `creature_ai_scripts` SET
    `action1_param1` = 23
WHERE `id` = 1531201;

-- Correction for Wildspawn Felsworn and Wildspawn Hellcaller SAI
UPDATE `smart_scripts` SET
    `event_phase_mask` = 2,
    `action_type` = 22,
    `action_param1` = 1,
    `target_type` = 1
WHERE 
    (`entryorguid` = 11457 AND
    `source_type` = 0 AND
    `id` = 10 AND
    `link` = 0) OR
    (`entryorguid` = 11455 AND
    `source_type` = 0 AND
    `id` = 11 AND
    `link` = 0);
-- Fire Shield from 2.0.12 dbc
DELETE FROM `spell_dbc` WHERE `Id`=13377;
INSERT INTO `spell_dbc` (`Id`, `Dispel`, `Mechanic`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `AttributesEx6`, `AttributesEx7`, `Stances`, `StancesNot`, `Targets`, `CastingTimeIndex`, `AuraInterruptFlags`, `ProcFlags`, `ProcChance`, `ProcCharges`, `MaxLevel`, `BaseLevel`, `SpellLevel`, `DurationIndex`, `RangeIndex`, `StackAmount`, `EquippedItemClass`, `EquippedItemSubClassMask`, `EquippedItemInventoryTypeMask`, `Effect1`, `Effect2`, `Effect3`, `EffectDieSides1`, `EffectDieSides2`, `EffectDieSides3`, `EffectRealPointsPerLevel1`, `EffectRealPointsPerLevel2`, `EffectRealPointsPerLevel3`, `EffectBasePoints1`, `EffectBasePoints2`, `EffectBasePoints3`, `EffectMechanic1`, `EffectMechanic2`, `EffectMechanic3`, `EffectImplicitTargetA1`, `EffectImplicitTargetA2`, `EffectImplicitTargetA3`, `EffectImplicitTargetB1`, `EffectImplicitTargetB2`, `EffectImplicitTargetB3`, `EffectRadiusIndex1`, `EffectRadiusIndex2`, `EffectRadiusIndex3`, `EffectApplyAuraName1`, `EffectApplyAuraName2`, `EffectApplyAuraName3`, `EffectAmplitude1`, `EffectAmplitude2`, `EffectAmplitude3`, `EffectMultipleValue1`, `EffectMultipleValue2`, `EffectMultipleValue3`, `EffectMiscValue1`, `EffectMiscValue2`, `EffectMiscValue3`, `EffectMiscValueB1`, `EffectMiscValueB2`, `EffectMiscValueB3`, `EffectTriggerSpell1`, `EffectTriggerSpell2`, `EffectTriggerSpell3`, `EffectSpellClassMaskA1`, `EffectSpellClassMaskA2`, `EffectSpellClassMaskA3`, `EffectSpellClassMaskB1`, `EffectSpellClassMaskB2`, `EffectSpellClassMaskB3`, `EffectSpellClassMaskC1`, `EffectSpellClassMaskC2`, `EffectSpellClassMaskC3`, `MaxTargetLevel`, `SpellFamilyName`, `SpellFamilyFlags1`, `SpellFamilyFlags2`, `SpellFamilyFlags3`, `MaxAffectedTargets`, `DmgClass`, `PreventionType`, `DmgMultiplier1`, `DmgMultiplier2`, `DmgMultiplier3`, `AreaGroupId`, `SchoolMask`, `Comment`) VALUES 
(13377, 1, 0, 2512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 101, 0, 0, 40, 40, 21, 1, 0, -1, -1, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 23, 0, 0, 3000, 0, 0, '0', '0', '0', 0, 0, 0, 0, 0, 0, 13376, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 2, 'Fire Shield');
-- Training dummies
UPDATE `creature_template` SET
    `flags_extra`=0x40000, /* NO_SKILLGAIN */
    `mechanic_immune_mask`=0x20|0x4000 /* GRIP|BLEED */ /* two of the templates already had bleed immunity, is that correct? */
WHERE `ScriptName`='npc_training_dummy';
-- Training dummies
UPDATE `creature_template` SET
    `mechanic_immune_mask` = `mechanic_immune_mask` &~ 0x4000 /* BLEED */
WHERE `ScriptName`='npc_training_dummy';
-- Blackhand Dreadweaver <Blackhand Legion> SAI
SET @ENTRY   := 9817;  -- NPC entry
SET @SPELL1  := 12739; -- Shadow Bolt
SET @SPELL2  := 7068;  -- Veil of Shadow
SET @SPELL3  := 12380; -- Shadow Channeling
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM creature_ai_scripts WHERE creature_id=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,2,0,0,0,0,58,1,@SPELL1,3600,6300,25,30,1,0,0,0,0,0,0,0, 'Blackhand Dreadweaver - On Reset - Load caster template Cast Shadow Bolt'),
(@ENTRY,0,1,0,25,0,100,0,0,0,0,0,11,@SPELL3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Dreadweaver - On Reset - Aura Shadow Channeling'),
(@ENTRY,0,2,3,4,0,100,2,0,0,0,0,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Blackhand Dreadweaver - On Aggro - Cast Shadow Bolt'),
(@ENTRY,0,3,0,61,0,100,2,0,0,0,0,39,10,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Dreadweaver - On Aggro - Call for help'),
(@ENTRY,0,4,0,0,0,100,2,9400,21400,22000,28800,11,@SPELL2,3,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Dreadweaver - Combat - Cast Veil of Shadow'),
(@ENTRY,0,5,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Dreadweaver - HP@15% - Flee for help'),
(@ENTRY,0,6,7,1,0,100,2,0,8000,12000,14000,92,0,0,1,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Dreadweaver - OOC - interupt channeling'),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Dreadweaver - OOC - set phase 1'),
(@ENTRY,0,8,0,1,1,100,2,0,0,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Dreadweaver - OOC - emote (phase 1)'),
(@ENTRY,0,9,10,1,1,100,2,4000,4000,4000,4000,11,@SPELL3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Dreadweaver - OOC - Aura Shadow Channeling (phase 1)'),
(@ENTRY,0,10,0,61,1,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Dreadweaver - OOC - set phase 0 (phase 1)');

-- Blackhand Summoner <Blackhand Legion> SAI
SET @ENTRY   := 9818;  -- NPC entry
SET @SPELL1  := 12466; -- Fireball
SET @SPELL2  := 15532; -- Frost Nova
SET @SPELL3  := 15792; -- Summon Blackhand Veteran
SET @SPELL4  := 15794; -- Summon Blackhand Dreadweaver
SET @SPELL5  := 12380; -- Shadow Channeling
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM creature_ai_scripts WHERE creature_id=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,2,0,0,0,0,58,1,@SPELL1,3600,6300,25,30,1,0,0,0,0,0,0,0, 'Blackhand Summoner - On Reset - Load caster template Cast Fireball'),
(@ENTRY,0,1,0,25,0,100,0,0,0,0,0,11,@SPELL5,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Summoner - On Reset - Aura Shadow Channeling'),
(@ENTRY,0,2,3,4,0,100,2,0,0,0,0,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Blackhand Summoner - On Aggro - Cast Shadow Bolt'),
(@ENTRY,0,3,0,61,0,100,2,0,0,0,0,39,10,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Summoner - On Aggro - Call for help'),
(@ENTRY,0,4,0,0,0,100,2,11400,11400,12700,16700,11,@SPELL2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Summoner - Combat - Cast Frost Nova'),
(@ENTRY,0,5,6,0,0,100,3,30000,35000,0,0,11,@SPELL3,1,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Summoner - Combat - Cast Summon Blackhand Veteran'),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Summoner - Combat - say 0'),
(@ENTRY,0,7,8,0,0,100,3,40000,45000,0,0,11,@SPELL4,1,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Summoner - Combat - Cast Summon Blackhand Dreadweaver'),
(@ENTRY,0,8,0,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Summoner - Combat - say 1'),
(@ENTRY,0,9,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Summoner - HP@15% - Flee for help'),
(@ENTRY,0,10,0,1,0,100,2,0,8000,12000,14000,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Summoner - OOC - emote');
-- NPC talk text insert
DELETE FROM `creature_text` WHERE `entry`=9818;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(9818,0,0,'%s begins to summon in a Blackhand Veteran!',16,0,100,0,0,0,'Blackhand Summoner'),
(9818,1,0,'%s begins to summon in a Blackhand Dreadweaver!',16,0,100,0,0,0,'Blackhand Summoner');

-- Blackhand Veteran <Blackhand Legion> SAI
SET @ENTRY   := 9819;  -- NPC entry
SET @SPELL1  := 15749; -- Shield Charge
SET @SPELL2  := 14516; -- Strike
SET @SPELL3  := 11972; -- Shield Bash
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM creature_ai_scripts WHERE creature_id=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,2,0,0,0,0,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Blackhand Veteran - On Aggro - Cast Shield Charge'),
(@ENTRY,0,1,0,61,0,100,2,0,0,0,0,39,10,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Veteran - On Aggro - Call for help'),
(@ENTRY,0,2,0,0,0,100,2,7800,15800,13800,22900,11,@SPELL2,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Blackhand Veteran - Combat - Cast Veil of Shadow'),
(@ENTRY,0,3,0,0,0,100,2,10000,20000,6000,12000,11,@SPELL3,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Blackhand Veteran - Combat - Cast Veil of Shadow'),
(@ENTRY,0,4,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Veteran - HP@15% - Flee for help'),
(@ENTRY,0,5,0,1,0,100,2,0,8000,12000,14000,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Veteran - OOC - emote');

-- Rage Talon Dragonspawn SAI
SET @ENTRY   := 9096;  -- NPC entry 
SET @SPELL1  := 15580; -- Strike
SET @SPELL2  := 12021; -- Fixate
SET @SPELL3  := 15572; -- Sunder Armor
SET @SPELL4  := 3391; -- Thrash
SET @SPELL5  := 8269; -- Frenzy
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM creature_ai_scripts WHERE creature_id=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,4000,13200,6600,14400,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Rage Talon Dragonspawn - Combat - Cast Strike'),
(@ENTRY,0,1,0,0,0,100,2,7700,17100,20300,34200,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Rage Talon Dragonspawn - Combat - Cast Fixate'),
(@ENTRY,0,2,0,0,0,100,2,1400,12300,7100,11700,11,@SPELL3,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Rage Talon Dragonspawn - Combat - Cast Sunder Armor'),
(@ENTRY,0,3,0,0,0,100,2,8200,17100,5600,18100,11,@SPELL4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Rage Talon Dragonspawn - Combat - Cast Thrash'),
(@ENTRY,0,4,5,2,0,100,2,0,30,120000,120000,11,@SPELL5,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Rage Talon Dragonspawn - HP@30% - Cast Frenzy'),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Summoner - HP@30% - say 0');
-- NPC talk text insert
DELETE FROM `creature_text` WHERE `entry`=9096;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(9096,0,0,'%s goes into a frenzy!',16,0,100,0,0,0,'Rage Talon Dragonspawn');

 -- Scarshield Legionnaire <Scarshield Legion> SAI
SET @ENTRY   := 9097;  -- NPC entry
SET @SPELL1  := 15496; -- Cleave
SET @SPELL2  := 11972; -- Shield Bash
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM creature_ai_scripts WHERE creature_id=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,2,0,0,0,0,39,10,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Scarshield Legionnaire - On Aggro - Call for help'),
(@ENTRY,0,1,0,0,0,100,2,7800,11500,8000,22100,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Scarshield Legionnaire -  Combat - Cast Cleave'),
(@ENTRY,0,2,0,0,0,100,2,4000,10000,14000,20000,11,@SPELL2,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Scarshield Legionnaire -  Combat - Cast Shield Bash');

-- Scarshield Acolyte <Scarshield Legion> SAI
SET @ENTRY   := 9045;  -- NPC entry
SET @SPELL1  := 14032; -- Shadow Word: Pain
SET @SPELL2  := 12039; -- Heal
SET @SPELL3  := 8362;  -- Renew
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM creature_ai_scripts WHERE creature_id=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,2,0,0,0,0,39,10,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Scarshield Acolyte - On Aggro - Call for help'),
(@ENTRY,0,1,0,0,0,100,2,7700,15700,21900,33500,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Scarshield Acolyte - Combat - Cast Shadow Word: Pain'),
(@ENTRY,0,2,0,2,0,100,3,0,75,0,0,11,@SPELL2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Scarshield Acolyte -  HP@75% - Cast Heal'),
(@ENTRY,0,3,0,14,0,100,2,35,8,5000,6000,11,@SPELL3,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Scarshield Acolyte -  Friendly hp@35 - Cast Renew on friendly unit');

-- Scarshield Spellbinder <Scarshield Legion> SAI
SET @ENTRY   := 9098;  -- NPC entry
SET @SPELL1  := 13748; -- Arcane Bolt
SET @SPELL2  := 15123; -- Resist Fire
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM creature_ai_scripts WHERE creature_id=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,2,0,0,0,0,58,1,@SPELL1,1100,3000,30,30,1,0,0,0,0,0,0,0, 'Scarshield Spellbinder - On Reset - Load caster template Cast Arcane Bolt'),
(@ENTRY,0,1,0,4,0,100,2,0,0,0,0,39,10,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Scarshield Spellbinder - On Aggro - Call for help'),
(@ENTRY,0,2,0,16,0,100,2,@SPELL2,30,3000,6000,11,@SPELL2,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Blackhand Summoner - Combat - Cast Resist Fire');

-- Blackhand Incarcerator SAI
SET @ENTRY   := 10316; -- NPC entry
SET @SPELL1  := 15281; -- Encage Emberseer
SET @SPELL2  := 12039; -- Heal
SET @SPELL3  := 8362;  -- Renew
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM creature_ai_scripts WHERE creature_id=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,3,1000,1000,1000,1000,11,@SPELL1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Incarcerator - OOC -  Cast Encage Emberseer'),
(@ENTRY,0,1,2,38,0,100,2,0,1,0,0,92,0,@SPELL1,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Incarcerator - On data set -  Stop Casting Encage Emberseer'),
(@ENTRY,0,2,4,61,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Incarcerator - On data set -  Remove unit flags'),
(@ENTRY,0,3,4,4,0,100,2,0,0,0,0,9,0,0,0,0,0,0,15,175244,100,0,0,0,0,0, 'Blackhand Incarcerator - On aggro -  close emberseer in door'),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,9,0,0,0,0,0,0,15,175705,100,0,0,0,0,0, 'Blackhand Incarcerator - On aggro -  close doors'),
(@ENTRY,0,5,0,0,0,100,2,7800,15800,13800,22900,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Blackhand Incarcerator - Combat - Cast Strike'),
(@ENTRY,0,6,0,0,0,100,2,10000,20000,6000,12000,11,@SPELL3,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Blackhand Incarcerator - Combat - Cast Encage'),
(@ENTRY,0,7,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Incarcerator - HP@15% - Flee for help'),
(@ENTRY,0,8,0,6,0,100,0,0,0,0,0,41,10000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Blackhand Incarcerator - On death - Despawn after 10 sec');
-- Reconstructed Wyrm SAI
SET @ENTRY  := 27693;
SET @SPELL1 := 49386; -- Not in dbc
SET @SPELL2 := 49343; -- Frost Breath Strafe
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,11,0,100,0,0,0,0,0,11,@SPELL2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reconstructed Wyrm - On spawn - cast aura'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,53,0,@ENTRY,0,0,0,0,1,0,0,0,0,0,0,0,'Reconstructed Wyrm - On spawn - Load Path');
-- waypoints for Reconstructed Wyrm
DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY); 
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4685.845,1130.759,150.1177, 'Reconstructed Wyrm'),
(@ENTRY,2,4686.284,1131.658,150.1177, 'Reconstructed Wyrm'),
(@ENTRY,3,4688.699,1166.089,161.2737, 'Reconstructed Wyrm'),
(@ENTRY,4,4702.308,1212.668,161.2737, 'Reconstructed Wyrm'),
(@ENTRY,5,4733.535,1260.209,169.6348, 'Reconstructed Wyrm'),
(@ENTRY,6,4751.818,1293.699,175.9404, 'Reconstructed Wyrm'),
(@ENTRY,7,4794.479,1345.154,199.5372, 'Reconstructed Wyrm'),
(@ENTRY,8,4812.264,1373.523,219.8613, 'Reconstructed Wyrm');
-- [SAI] NPC Attunement To Dalaran Kill Credit Bunny 27135
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=27135;
DELETE FROM `smart_scripts` WHERE `entryorguid`=27135 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`)
VALUES
(27135,0,0,0,8,0,100,1,48021,1,0,0,33,27135,0,0,0,0,0,7,0,0,0,0,0,0,0, 'On spellhit - give kill credit - Attunement to Dalaran Kill Credit Bunny');
-- Tukemuth
DELETE FROM `smart_scripts` WHERE `entryorguid`=32400;
INSERT INTO `smart_scripts` VALUES 
(32400,0,0,0,9,0,100,0,0,5,9000,13000,11,50410,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Tukemuth - Cast Tusk Strike'),
(32400,0,1,0,0,0,100,0,9000,17000,15000,22000,11,57066,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Tukemuth - Cast Trample');
UPDATE `creature_template` SET faction_A=7,faction_H=7,mindmg=2926.0,maxdmg=3542.0,spell1=50410,spell2=57066,attackpower=3384,dmg_multiplier=1.0,AIName= 'SmartAI',mechanic_immune_mask=2147483647 where entry=32400;

-- Fumblub Gearwind
DELETE FROM `smart_scripts` WHERE `entryorguid`=32358;
INSERT INTO `smart_scripts` VALUES 
(32358,0,0,0,0,0,100,0,4000,6000,12000,15000,11,60906,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Fumblub Gearwind - Cast Machine Gun');
UPDATE `creature_template` SET faction_A=14,faction_H=14,mindmg=2792,maxdmg=3376,spell1=60906,attackpower=3384,dmg_multiplier=1.0,AIName= 'SmartAI',mechanic_immune_mask=2147483647,type_flags=2048,InhabitType=4 where entry=32358;
UPDATE `creature_addon` SET mount=22719,bytes1=33554432 where guid=151938;

-- Old Crystalbark
DELETE FROM `smart_scripts` WHERE `entryorguid`=32357;
INSERT INTO `smart_scripts` VALUES
(32357,0,0,0,0,0,100,0,3700,16200,19200,28000,11,50506,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Old Crystalbark - Cast Mark of Detonation'),
(32357,0,1,0,0,0,100,0,1625,8100,9600,14000,11,60903,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Old Crystalbark - Cast Arcane Breath');
UPDATE `creature_template` SET faction_A=14,faction_H=14,mindmg=3231.0,maxdmg=3309.0,spell1=60903,spell2=50506,attackpower=3214,dmg_multiplier=1.0,AIName= 'SmartAI',mechanic_immune_mask=2147483647 where entry=32357;

-- Terror Spinner - Tameable
DELETE FROM `smart_scripts` WHERE `entryorguid`=32475;
INSERT INTO `smart_scripts` VALUES
(32475,0,0,0,0,0,100,0,4000,6000,12000,15000,11,36839,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Terror Spinner - Cast Impairing Poison'),
(32475,0,1,0,0,0,100,0,1625,8100,9600,14000,11,28428,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Terror Spinner - Cast Instant Poison');
UPDATE `creature_template` SET faction_A=14,faction_H=14,mindmg=3625.0,maxdmg=4301.0,spell1=32475,spell2=28428,attackpower=3963,dmg_multiplier=1.0,AIName= 'SmartAI',mechanic_immune_mask=66624,name= 'Terror Spinner' where entry=32475;

-- Hildana Deathstealer
DELETE FROM `smart_scripts` WHERE `entryorguid`=32495;
INSERT INTO `smart_scripts` VALUES
(32495,0,0,0,0,0,100,1,0,0,0,0,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Hildana Deathstealer - Enter phase 1'),
(32495,0,1,2,0,1,100,0,3000,6000,4000,6000,11,60991,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Hildana Deathstealer - Cast Lash'),
(32495,0,2,0,61,1,100,0,0,0,0,0,22,2,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Hildana Deathstealer - Enter phase 2'),
(32495,0,3,0,0,2,100,0,3000,5000,9000,11000,11,57547,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Hildana Deathstealer - Cast Touch of the Valkyr'),
(32495,0,4,0,0,2,100,0,12000,13000,13000,15000,22,1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Hildana Deathstealer - timer back to phase 1');
UPDATE `creature_template` SET faction_A=14,faction_H=14,mindmg=4715,maxdmg=5474,attackpower=5094,dmg_multiplier=1.0,AIName= 'SmartAI',mechanic_immune_mask=2147483647 where entry=32495;

-- Syreian the Bonecarver
UPDATE `creature_template` SET faction_A=14,faction_H=14,mindmg=2926,maxdmg=3542,spell1=38952,spell2=47168,spell3=50092,attackpower=3234,dmg_multiplier=1.0,mechanic_immune_mask=2147483647 where entry=32438;

-- Icehorn - Tameable
DELETE FROM `smart_scripts` WHERE `entryorguid`=32361;
INSERT INTO `smart_scripts` VALUES
(32361,0,0,0,0,0,100,0,4500,6750,6750,9750,11,57468,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Icehorn - Cast Romp');
UPDATE `creature_template` SET type_flags= '1',faction_A=14,faction_H=14,mindmg=2792,maxdmg=3376,spell1=57468,attackpower=3084,dmg_multiplier=1.0,AIName= 'SmartAI',mechanic_immune_mask=66624 where entry=32361;

-- King Ping
DELETE FROM `smart_scripts` WHERE `entryorguid`=32398;
INSERT INTO `smart_scripts` VALUES
(32398,0,0,0,0,0,100,0,1600,8000,12400,13000,11,61115,0,0,0,0,0,2,0,0,0,0,0,0,0, 'King Ping - Cast Belly Flop'),
(32398,0,1,0,0,0,100,0,800,2600,4200,6800,11,50169,0,0,0,0,0,2,0,0,0,0,0,0,0, 'King Ping - Cast Flipper Thwack');
UPDATE `creature_template` SET faction_A=14,faction_H=14,mindmg=2792,maxdmg=3376,spell1=61115,spell2=50169,attackpower=3234,dmg_multiplier=1.0,AIName= 'SmartAI',mechanic_immune_mask=2147483647 WHERE entry=32398;

-- High Thane Jorfus
DELETE FROM `smart_scripts` WHERE `entryorguid`=32501;
INSERT INTO `smart_scripts` VALUES
(32501,0,0,0,0,0,100,0,1600,3200,6400,12800,11,60950,0,0,0,0,0,2,0,0,0,0,0,0,0, 'High Thane Jorfus - Cast Blood Plague'),
(32501,0,1,0,0,0,100,2,10000,20000,10000,20000,11,60945,0,0,0,0,0,2,0,0,0,0,0,0,0, 'High Thane Jorfus - Cast Blood Strike'),
(32501,0,2,0,0,0,100,0,8000,13000,16000,21000,11,60953,1,0,0,0,0,5,0,0,0,0,0,0,0, 'High Thane Jorfus - Cast Death and Decaye'),
(32501,0,3,0,0,0,100,4,1000,1400,8500,20500,11,60949,0,0,0,0,0,5,0,0,0,0,0,0,0, 'High Thane Jorfus - Cast Death Coil'),
(32501,0,4,0,0,0,100,2,5000,9000,15000,22000,11,60951,0,0,0,0,0,2,0,0,0,0,0,0,0, 'High Thane Jorfus - Cast Frost Strike');
UPDATE `creature_template` set faction_A=14,faction_H=14,mindmg=4894,maxdmg=5649,spell1=60950,spell2=60945,spell3=60953,spell4=60949,spell5=60951,attackpower=5271,dmg_multiplier=1.0,AIName= 'SmartAI',mechanic_immune_mask=2147483647 WHERE entry=32501;

-- Perobas the Bloodthirster
DELETE FROM `smart_scripts` WHERE `entryorguid`=32377;
INSERT INTO `smart_scripts` VALUES
(32377,0,0,0,0,0,100,0,5000,8000,12000,15000,11,50046,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Perobas the Bloodthirster - Cast Gnaw Bone'),
(32377,0,1,0,2,0,100,0,0,50,10000,13000,11,50271,1,0,0,0,0,1,0,0,0,0,0,0,0, 'Perobas the Bloodthirster - Cast Killing Rage');
UPDATE `creature_template` set faction_A=14,faction_H=14,mindmg=2792,maxdmg=3376,spell1=50046,spell2=52071,attackpower=3084,dmg_multiplier=1.0,AIName= 'SmartAI',mechanic_immune_mask=66624 where entry=32377;

-- Aotona - Tameable
UPDATE `creature` SET curhealth=15952  where id=32481;
UPDATE `creature_template` SET exp=2,armor_mod=1.0,minlevel=75,maxlevel=75,faction_A=14,faction_H=14,mindmg=3376,maxdmg=4034,spell1=49865,spell2=51144,attackpower=3705,dmg_multiplier=1.0,mechanic_immune_mask=66624 where entry=32481;

--  Griegen
DELETE FROM `smart_scripts` WHERE `entryorguid`=32471;
INSERT INTO `smart_scripts` VALUES
(32471,0,0,0,0,0,100,0,5000,8000,9000,12000,11,51334,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Griegen - Cast Smash');
UPDATE `creature` set curhealth=15952  where id=32471;
UPDATE `creature_template` set exp=2,armor_mod=1.0,minlevel=75,maxlevel=75,faction_A=14,faction_H=14,mindmg=3376,maxdmg=4034,spell1=51334,attackpower=3705,dmg_multiplier=1.0,AIName= 'SmartAI',mechanic_immune_mask=2147483647 where entry=32471;

-- Seething Hate
UPDATE `creature_template` SET mindmg=2926,maxdmg=3542,attackpower=3234,dmg_multiplier=1.0,mechanic_immune_mask=66624 WHERE entry=32429;

-- Vigdis the War Maiden
DELETE FROM `creature_template_addon` WHERE entry=32386;
INSERT INTO `creature_template_addon` VALUES
(32386,0,28040,0,0,0,NULL);
UPDATE `creature` SET spawndist=20.0,MovementType=1 WHERE id=32386;
UPDATE `creature_template` SET faction_A=14,faction_H=14,mindmg=2792,maxdmg=3376,attackpower=3084,dmg_multiplier=1.0,mechanic_immune_mask=2147483647,InhabitType=1 where entry=32386;

-- King Krush - Tameable
UPDATE `creature_template` SET faction_A=14,faction_H=14,mechanic_immune_mask=66624 WHERE entry=32485;

-- Scarlet Highlord Daion
UPDATE `creature_template` SET faction_A=14,faction_H=14,mindmg=2926,maxdmg=3542,attackpower=3234,dmg_multiplier=1.0,mechanic_immune_mask=66624 WHERE entry=32417;

-- Crazed Indu'le Survivor
UPDATE `creature_template` SET mindmg=2926,maxdmg=3542,attackpower=3234,dmg_multiplier=1.0,mechanic_immune_mask=66624 WHERE entry=32409;

-- Grocklar
UPDATE `creature_template` SET mindmg=3137,maxdmg=3777,attackpower=3457,dmg_multiplier=1.0,mechanic_immune_mask=66624 WHERE entry=32422;

-- Loque'nahak - Tameable
UPDATE `creature_template` SET type_flags= '1',mechanic_immune_mask=66624 WHERE entry=32422;

-- Zuldrak Sentinel
DELETE FROM `smart_scripts` WHERE `entryorguid`=32447;
INSERT INTO `smart_scripts` VALUES 
(32447,0,0,0,0,0,100,0,0,5,9000,13000,11,55196,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Zuldrak Sentinel - Cast Stomp'),
(32447,0,1,0,0,0,100,0,15000,20000,21000,35000,11,54565,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Zuldrak Sentinel - Cast Whammy');
UPDATE `creature_template` SET mindmg= '3905',maxdmg= '4600',attackpower= '4252',dmg_multiplier= '1.0',mechanic_immune_mask= '66624',spell1= '54565',spell2= '55196',AIName= 'SmartAI' WHERE entry= '32447';
-- Fix recent DB errors (credits to Vincent-Michael)
DELETE FROM `creature_addon` WHERE `guid` = 2593;
DELETE FROM `creature_template_addon` WHERE `entry` = 2676;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(2676,0,0,0,4097,0,NULL);
-- Mount for Highlord Tirion Fordring in Argent Vanguard after "the last line of defense"
DELETE FROM `creature_template_addon` WHERE `entry`=30677;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(30677,0,2325,0,0,0,NULL);

# Fix
UPDATE `gameobject_template` SET `data3` = 0 WHERE `entry` = 38;
UPDATE `game_event` SET `start_time` = '2012-07-01 00:01:00' WHERE `evententry` = 5;
UPDATE `game_event` SET `start_time` = '2012-08-05 00:01:00' WHERE `evententry` = 3;
UPDATE `game_event` SET `end_time` = '2010-12-31 22:00:00' WHERE `evententry` = 6;
UPDATE `game_event` SET `start_time` = '2013-01-22 08:00:00' WHERE `evententry` = 7;
UPDATE `game_event` SET `start_time` = '2013-02-05 00:01:00' WHERE `evententry` = 8;
UPDATE `game_event` SET `start_time` = '2013-04-08 00:01:00' WHERE `evententry` = 9;
UPDATE `game_event` SET `start_time` = '2013-04-29 00:01:00' WHERE `evententry` = 10;

# NeatElves
UPDATE creature_template SET unit_flags=unit_flags|768, npcflag=npcflag&~2 WHERE entry=15608;

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 9546;
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES ('185881', '32506', '0.01', '0', '1', '1'), ('185877', '32506', '0.01', '0', '1', '1');
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(104944, 185878, 530, 1, 1, -5413.37, 502.89, 50.3503, 3.53388, 0, 0, 0.980825, -0.194888, 900, 100, 1),
(104945, 185878, 530, 1, 1, -5401.75, 620.436, 87.8733, 4.99471, 0, 0, 0.600589, -0.799558, 900, 100, 1),
(104946, 185878, 530, 1, 1, -5395.88, -96.0399, 70.6927, 1.25856, 0, 0, 0.588563, 0.808451, 900, 100, 1),
(104947, 185878, 530, 1, 1, -5370.7, 332.931, -23.9374, 0.367152, 0, 0, 0.182547, 0.983197, 900, 100, 1),
(104948, 185878, 530, 1, 1, -5294.94, 385.327, 51.1458, 2.74692, 0, 0, 0.980592, 0.196058, 900, 100, 1),
(104949, 185878, 530, 1, 1, -5290.96, 526.961, 36.1121, 2.26153, 0, 0, 0.904738, 0.425968, 900, 100, 1),
(104950, 185878, 530, 1, 1, -5259.96, 300.686, 72.6904, 6.19873, 0, 0, 0.0422151, -0.999109, 900, 100, 1),
(104951, 185878, 530, 1, 1, -5259.24, 38.3811, 49.7569, 5.60182, 0, 0, 0.334131, -0.942527, 900, 100, 1),
(104952, 185878, 530, 1, 1, -5250.18, 494.885, 49.2206, 1.40545, 0, 0, 0.646299, 0.763084, 900, 100, 1),
(104953, 185878, 530, 1, 1, -5247.33, 241.345, 99.5143, 5.1895, 0, 0, 0.519993, -0.854171, 900, 100, 1),
(104954, 185878, 530, 1, 1, -5232.68, 150.809, 85.4377, 1.97328, 0, 0, 0.834178, 0.551496, 900, 100, 1),
(104955, 185878, 530, 1, 1, -5227.9, 796.571, 172.153, 0.0388566, 0, 0, 0.0194271, 0.999811, 900, 100, 1),
(104956, 185878, 530, 1, 1, -5225.91, -100.738, 57.4938, 4.48262, 0, 0, 0.783503, -0.621388, 900, 100, 1),
(104957, 185878, 530, 1, 1, -5213.92, 351.263, 97.1322, 4.40411, 0, 0, 0.807285, -0.590161, 900, 100, 1),
(104958, 185878, 530, 1, 1, -5194.49, 206.798, 74.1543, 1.4942, 0, 0, 0.679514, 0.733663, 900, 100, 1),
(104959, 185878, 530, 1, 1, -5191.52, 127.259, 72.6518, 1.23894, 0, 0, 0.580604, 0.814186, 900, 100, 1),
(104960, 185878, 530, 1, 1, -5180.2, 375.065, 72.1615, 5.90422, 0, 0, 0.188351, -0.982102, 900, 100, 1),
(104961, 185878, 530, 1, 1, -5176.76, -14.9165, 77.7322, 0.740202, 0, 0, 0.36171, 0.932291, 900, 100, 1),
(104962, 185878, 530, 1, 1, -5159.69, 78.8867, 80.6268, 1.02688, 0, 0, 0.491177, 0.87106, 900, 100, 1),
(104963, 185878, 530, 1, 1, -5158.5, 412.726, 79.3425, 5.53116, 0, 0, 0.367215, -0.930136, 900, 100, 1),
(104964, 185878, 530, 1, 1, -5146.31, 166.942, 148.673, 4.23916, 0, 0, 0.85316, -0.52165, 900, 100, 1),
(104965, 185878, 530, 1, 1, -5141.72, 500.874, 82.7841, 0.588631, 0, 0, 0.290085, 0.957001, 900, 100, 1),
(104966, 185878, 530, 1, 1, -5138.87, 136.34, 129.84, 4.6515, 0, 0, 0.728303, -0.685255, 900, 100, 1),
(104967, 185878, 530, 1, 1, -5138.62, 917.87, 35.3379, 2.00628, 0, 0, 0.843163, 0.537657, 900, 100, 1),
(104968, 185878, 530, 1, 1, -5130.37, 748.809, 68.2889, 4.97901, 0, 0, 0.606847, -0.794819, 900, 100, 1),
(104969, 185878, 530, 1, 1, -5118.49, 98.2888, 129.198, 4.82822, 0, 0, 0.664992, -0.746851, 900, 100, 1),
(104970, 185878, 530, 1, 1, -5118.02, 359.032, 188.428, 4.79288, 0, 0, 0.678084, -0.734984, 900, 100, 1),
(104971, 185878, 530, 1, 1, -5110.49, 254.215, 149.77, 5.29946, 0, 0, 0.472269, -0.881455, 900, 100, 1),
(104972, 185878, 530, 1, 1, -5109.6, 699.635, 82.6144, 1.35205, 0, 0, 0.625697, 0.780066, 900, 100, 1),
(104973, 185878, 530, 1, 1, -5109, 499.983, 84.3125, 5.24997, 0, 0, 0.493933, -0.8695, 900, 100, 1),
(104974, 185878, 530, 1, 1, -5106.02, 196.631, 135.391, 1.21931, 0, 0, 0.572585, 0.819846, 900, 100, 1),
(104975, 185878, 530, 1, 1, -5094.4, -103.216, 68.4281, 1.62769, 0, 0, 0.726933, 0.686708, 900, 100, 1),
(104976, 185878, 530, 1, 1, -5082.57, 396.26, 207.414, 3.70118, 0, 0, 0.961112, -0.276157, 900, 100, 1),
(104977, 185878, 530, 1, 1, -5064.47, 177.739, 125.745, 0.830534, 0, 0, 0.403434, 0.915009, 900, 100, 1),
(104978, 185878, 530, 1, 1, -5064.46, 18.1924, 79.939, 3.10032, 0, 0, 0.999787, 0.0206348, 900, 100, 1),
(104979, 185878, 530, 1, 1, -5063.76, 803.302, 52.5334, 2.53643, 0, 0, 0.95457, 0.297985, 900, 100, 1),
(104980, 185878, 530, 1, 1, -5063.03, 278.639, 174.863, 0.551726, 0, 0, 0.272377, 0.962191, 900, 100, 1),
(104981, 185878, 530, 1, 1, -5062.53, 127.324, 162.467, 1.30178, 0, 0, 0.605895, 0.795545, 900, 100, 1),
(104982, 185878, 530, 1, 1, -5057.59, 588.585, 89.4865, 0.655397, 0, 0, 0.321865, 0.946786, 900, 100, 1),
(104983, 185878, 530, 1, 1, -5045.81, 363.624, 170.645, 6.1045, 0, 0, 0.0892239, -0.996012, 900, 100, 1),
(104984, 185878, 530, 1, 1, -5037.57, 632.943, 89.1723, 5.22485, 0, 0, 0.504815, -0.863228, 900, 100, 1),
(104985, 185878, 530, 1, 1, -5029.17, 246.955, 96.4423, 5.40549, 0, 0, 0.424897, -0.905242, 900, 100, 1),
(104986, 185878, 530, 1, 1, -5026.64, 454.626, 86.4524, 4.70649, 0, 0, 0.709189, -0.705018, 900, 100, 1),
(104987, 185878, 530, 1, 1, -5020.17, 119.821, 77.4466, 2.09503, 0, 0, 0.866184, 0.499725, 900, 100, 1),
(104988, 185878, 530, 1, 1, -5005.56, 550.779, 89.4748, 1.47065, 0, 0, 0.670828, 0.741613, 900, 100, 1),
(104989, 185878, 530, 1, 1, -5002.06, 494.201, 86.1354, 1.02298, 0, 0, 0.489477, 0.872016, 900, 100, 1),
(104990, 185878, 530, 1, 1, -4999, 445.744, 87.9224, 2.05185, 0, 0, 0.855194, 0.518308, 900, 100, 1),
(104991, 185878, 530, 1, 1, -4996.1, 170.092, 81.9368, 5.49581, 0, 0, 0.383597, -0.923501, 900, 100, 1),
(104992, 185878, 530, 1, 1, -4988.7, 226.831, 80.763, 3.32026, 0, 0, 0.996012, -0.0892149, 900, 100, 1),
(104993, 185878, 530, 1, 1, -4982.54, 324.642, 83.6776, 3.92894, 0, 0, 0.923506, -0.383584, 900, 100, 1),
(104994, 185878, 530, 1, 1, -4973.74, 797.697, 55.7351, 4.92011, 0, 0, 0.629988, -0.776605, 900, 100, 1),
(104995, 185878, 530, 1, 1, -4968.93, 600.838, 79.4459, 4.30908, 0, 0, 0.834405, -0.551152, 900, 100, 1),
(104996, 185878, 530, 1, 1, -4968.51, 75.4443, 69.5985, 0.642053, 0, 0, 0.315541, 0.948912, 900, 100, 1),
(104997, 185878, 530, 1, 1, -4954.18, 370.533, 84.1992, 3.85434, 0, 0, 0.937168, -0.348878, 900, 100, 1),
(104998, 185878, 530, 1, 1, -4940.75, 401.365, 84.2221, 0.488903, 0, 0, 0.242024, 0.97027, 900, 100, 1),
(104999, 185878, 530, 1, 1, -4930.81, 138.949, 53.6837, 1.88298, 0, 0, 0.808436, 0.588584, 900, 100, 1),
(105000, 185878, 530, 1, 1, -4929.65, 316.246, 134.089, 2.62911, 0, 0, 0.967349, 0.253446, 900, 100, 1),
(105001, 185878, 530, 1, 1, -4925.43, -8.52092, 56.052, 5.27197, 0, 0, 0.484339, -0.87488, 900, 100, 1),
(105002, 185878, 530, 1, 1, -4920.99, 205.371, 62.4706, 2.76263, 0, 0, 0.982102, 0.18835, 900, 100, 1),
(105003, 185878, 530, 1, 1, -4916.29, 712.739, 66.21, 1.23267, 0, 0, 0.578048, 0.816002, 900, 100, 1),
(105004, 185878, 530, 1, 1, -4911.38, 588.623, 58.0783, 2.97782, 0, 0, 0.996649, 0.0817949, 900, 100, 1),
(105005, 185878, 530, 1, 1, -4895.8, 195.274, 52.0633, 4.45909, 0, 0, 0.790759, -0.612128, 900, 100, 1),
(105006, 185878, 530, 1, 1, -4888.35, 413.436, 66.1353, 2.72729, 0, 0, 0.978621, 0.205673, 900, 100, 1),
(105007, 185878, 530, 1, 1, -4870.81, 559.978, 49.1191, 5.00808, 0, 0, 0.595231, -0.803555, 900, 100, 1),
(105008, 185878, 530, 1, 1, -4870.62, 480.736, 65.7166, 3.34304, 0, 0, 0.994932, -0.100553, 900, 100, 1),
(105009, 185878, 530, 1, 1, -4850.34, 946.364, -28.0504, 1.04025, 0, 0, 0.496989, 0.867757, 900, 100, 1),
(105010, 185878, 530, 1, 1, -4843.82, 437.207, 56.9693, 1.84685, 0, 0, 0.797672, 0.603092, 900, 100, 1),
(105011, 185878, 530, 1, 1, -4310.21, 274.086, 128.542, 0.119741, 0, 0, 0.0598347, 0.998208, 900, 100, 1),
(105012, 185878, 530, 1, 1, -4231.3, 580.719, 37.4166, 3.71687, 0, 0, 0.958916, -0.283689, 900, 100, 1),
(105013, 185878, 530, 1, 1, -4187.49, 268.491, 122.763, 5.84137, 0, 0, 0.219115, -0.975699, 900, 100, 1),
(105014, 185878, 530, 1, 1, -4181.68, 434.904, 31.6365, 1.68268, 0, 0, 0.745537, 0.666464, 900, 100, 1),
(105015, 185878, 530, 1, 1, -4109.57, 601.786, 3.69305, 0.912995, 0, 0, 0.440807, 0.897602, 900, 100, 1),
(105016, 185878, 530, 1, 1, -4090.21, 453.875, 30.4954, 2.46808, 0, 0, 0.943831, 0.330427, 900, 100, 1);
DELETE FROM `creature` WHERE `id` = 21707;
DELETE FROM `creature` WHERE `id` = 21428;
DELETE FROM `creature` WHERE `id` = 21706;
DELETE FROM `creature` WHERE `id` = 21708;
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (8666,10950);
UPDATE `creature_template` SET `mechanic_immune_mask` = 7668197 WHERE `entry` = 22960;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='40' WHERE `item`=30810;
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (8666,10901);
UPDATE `creature_template` SET `mechanic_immune_mask` = 1114593 WHERE `entry` = 23028;
UPDATE `creature_template` SET `flags_extra` = 64 WHERE `entry` IN (28218,28220,28242,28212,28103,28208);
UPDATE `creature` SET `MovementType`='0' WHERE `guid`=28803;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='20',`maxcount`='1' WHERE `item`=5113;
DELETE FROM `creature` WHERE `id` = 24476;
DELETE FROM `npc_vendor` WHERE (`entry`=18960) AND (`item`=25848);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (18960, 25848, 0, 0, 0);
DELETE FROM `npc_vendor` WHERE (`entry`=19004) AND (`item`=25848);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (19004, 25848, 0, 0, 0);
UPDATE creature_template SET unit_flags=unit_flags|33816576 WHERE entry=17954;
UPDATE gameobject_template SET flags=flags|34 WHERE entry=183049;
UPDATE gameobject_template SET flags=flags|48 WHERE entry IN (184125,184126);
delete from spell_target_position where id in (720, 1121);
insert into spell_target_position values
(720,531,-8043.01,1254.21,-84.19,0),
(1121,531,-8022.68,1150.08,-89.33,0);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (9200,12500);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (9201,12502);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (9297,12606);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (9295,12607);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (9296,12608);
DELETE FROM  `gossip_menu_option` WHERE `menu_id` in (9199,9200,9297);
DELETE FROM `creature` WHERE `id` = 22362;
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES ('42016', '3939', '11013', '1', '0', '0', '0', '2', '1'), ('42016', '3939', '11013', '0', '0', '0', '0', '2', '1');
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES ('46302', '4080', '0', '0', '0', '0', '0', '2', '1'), ('46302', '4131', '0', '0', '0', '0', '0', '2', '1');
UPDATE creature_template SET faction_A = '1741', faction_H = '1741' WHERE entry = '25174';
UPDATE creature SET position_x = '12858.286133', position_y = '-7050.052246', position_z = '18.902540', orientation = '5.703012' WHERE guid = '129082';
DELETE FROM `creature` WHERE `id` = 24815;
DELETE FROM creature WHERE guid=100531;
DELETE FROM creature_addon WHERE guid=100531;
DELETE FROM creature WHERE guid=100530;
DELETE FROM creature_addon WHERE guid=100530;
DELETE FROM creature WHERE guid=100518;
DELETE FROM creature_addon WHERE guid=100518;
DELETE FROM creature WHERE guid=100528;
DELETE FROM creature_addon WHERE guid=100528;
UPDATE creature_template SET faction_A = '1960', faction_H = '1960' WHERE entry = '24967';
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES ('46302', '4080', '0', '0', '0', '0', '0', '2', '1'), ('46302', '4131', '0', '0', '0', '0', '0', '2', '1');
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
(128144,37512,530,1,1,0,339,12807.8,-7088.31,7.50413,5.51888,5,0,0,10479,0,0),
(128145,37512,530,1,1,0,339,12805.8,-7090.79,7.50184,5.53066,5,0,0,10479,0,0),
(128146,37512,530,1,1,0,339,12802.1,-7085.79,5.80169,5.50709,5,0,0,10479,0,0),
(128147,37512,530,1,1,0,339,12792.4,-7112.89,5.41684,3.78786,5,0,0,10479,0,0),
(128148,37512,530,1,1,0,339,12796.3,-7117.59,5.41724,3.8554,5,0,0,10479,0,0),
(128149,37512,530,1,1,0,339,12792.1,-6984.81,18.6976,2.21549,5,0,0,10479,0,0),
(128216,37512,530,1,1,0,339,12799.6,-6976.99,18.6976,2.25948,5,0,0,10479,0,0),
(128225,24994,530,1,1,0,0,12800.5,-6997.36,18.6306,1.29501,5,0,0,69860,0,0),
(128259,24994,530,1,1,0,0,12811.9,-6987.28,18.6312,3.49962,5,0,0,69860,0,0),
(128260,25142,530,1,1,0,199,12796.7,-6999.96,47.3198,4.03762,5,0,0,6986,0,0),
(128261,25142,530,1,1,0,199,12794.5,-6979.47,47.52,2.21707,5,0,0,6986,0,0),
(128262,25142,530,1,1,0,199,12801.3,-6980.19,47.5803,0.613286,5,0,0,6986,0,0),
(128263,25142,530,1,1,0,199,12795,-6988.04,47.5888,3.79807,5,0,0,6542,0,0),
(128264,25142,530,1,1,0,199,12850.2,-7041.43,47.7625,5.55422,5,0,0,6542,0,0),
(128265,25142,530,1,1,0,199,12850.3,-7035.65,47.8291,0.868534,5,0,0,6986,0,0),
(128266,25142,530,1,1,0,199,12842.7,-7040.82,47.8365,3.9308,5,0,0,6986,0,0),
(128267,25142,530,1,1,0,199,12850.2,-7064.49,3.28172,5.13089,5,0,0,6986,0,0),
(128268,25142,530,1,1,0,199,12873.9,-7043.64,3.2935,5.69952,5,0,0,6542,0,0),
(128269,25142,530,1,1,0,199,12881,-7028.05,3.27038,6.02782,5,0,0,6986,0,0),
(128270,25142,530,1,1,0,199,12882.9,-7012.35,3.08184,0.244148,5,0,0,6986,0,0),
(128271,24994,530,1,1,0,0,12837.6,-7014.02,71.5299,2.78964,5,0,0,69860,0,0),
(128272,24994,530,1,1,0,0,12814.3,-7013.03,71.5392,0.134991,5,0,0,69860,0,0),
(128273,25142,530,1,1,0,199,12844.4,-7029.01,71.3385,0.389456,5,0,0,6542,0,0),
(128305,25142,530,1,1,0,199,12837.5,-7034.01,71.3662,3.92767,5,0,0,6542,0,0),
(128306,25142,530,1,1,0,199,12813,-7023.21,71.5023,3.55696,5,0,0,6986,0,0),
(128995,25142,530,1,1,0,199,12824.7,-7030.2,71.4917,4.63846,5,0,0,6986,0,0),
(128996,25142,530,1,1,0,199,12846.1,-7016.44,71.2072,6.07024,5,0,0,6986,0,0),
(128999,25142,530,1,1,0,199,12844.5,-7001.84,71.2073,0.599942,5,0,0,6542,0,0),
(129000,25142,530,1,1,0,199,12816.2,-6996.33,71.1676,2.09534,5,0,0,6542,0,0),
(129081,25142,530,1,1,0,336,12836.2,-7048.81,19.0953,3.8405,5,0,0,6986,0,0),
(129082,25142,530,1,1,0,336,12858.2,-7051.09,18.9152,5.61471,5,0,0,6986,0,0),
(129083,25142,530,1,1,0,336,12849.9,-7049.4,18.923,4.03999,5,0,0,6986,0,0),
(129084,25142,530,1,1,0,336,12857,-7042,18.9508,0.7853,5,0,0,6986,0,0),
(129085,25142,530,1,1,0,336,12832.7,-7100.9,5.10339,0.600742,5,0,0,6986,0,0),
(129086,25142,530,1,1,0,336,12847.1,-7116.2,6.06832,0.612523,5,0,0,6986,0,0);
UPDATE creature SET position_x = '12833.437500', position_y = '-7004.896484', position_z = '71.532654', orientation = '4.135809' WHERE guid = '52375';
REPLACE INTO `creature_addon` (`guid`, `mount`, `auras`) VALUES ('78648', '20359', NULL);
# INSERT IGNORE INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES ('45368', '530', '12793.6455', '-6894.34', '30.897', '5.301'), ('45371', '530', '12780.543', '-6876.923', '22.787', '5.386');
UPDATE creature_template SET MovementType=0 WHERE entry IN (17838,17879,17880,21104,17839,21697,21698,18553,17835,21818,17892,18994,18995,17881,21862,18625);
UPDATE creature_template SET MovementType=0 WHERE entry IN (20738,20745,22171,22172,21712,22167,22164,22169,20741,22166,22168,20737);
UPDATE creature_template SET InhabitType=InhabitType|4 WHERE entry=17838;
UPDATE creature_template SET faction_A=168, faction_H=168 WHERE entry IN (21697,21698,21712,22167);
UPDATE creature_template SET unit_flags=unit_flags|768, npcflag=npcflag&~2 WHERE entry=15608;
UPDATE creature_template SET unit_flags=unit_flags|33536 WHERE entry=17023;
UPDATE creature_template SET unit_flags=unit_flags|33554688 WHERE entry IN (21862,18625,17838,18553,18555);
REPLACE INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,MovementType) VALUES
(127070, 21862, 269, 3, 1, 0, 0, -2025.52, 7119.707, 22.74707, 3.071779, 7200, 0, 0, 5589, 0, 0),
(129135, 18625, 269, 3, 1, 0, 0, -2025.422, 7119.652, 22.74706, 6.161012, 7200, 0, 0, 5589, 0, 0),
(129136, 18625, 269, 3, 1, 0, 0, -2024.31, 7127.75, 22.65419, 0.4712389, 7200, 0, 0, 5589, 0, 0),
(129157, 18625, 269, 3, 1, 0, 0, -2033.517, 7110.752, 22.85045, 2.635447, 7200, 0, 0, 5589, 0, 0),
(91346, 15608, 269, 3, 1, 0, 0, -2025.295, 7119.58, 22.74709, 3.001966, 300, 0, 0, 6070400, 0, 0);
DELETE FROM creature_template_addon WHERE entry IN (15608,21862,18553,18555);
INSERT INTO creature_template_addon (entry,auras) VALUES
(15608,'31635 31556'),
(21862,'32570'),
(18553,'32563'),
(18555,'32566');
REPLACE INTO gossip_menu (entry, text_id) VALUES (8662, 11093);
UPDATE `creature_template` SET `ScriptName`='' WHERE `entry`=23141;
UPDATE `creature_template` SET `gossip_menu_id`='9051' WHERE `entry`=24937;
REPLACE INTO gossip_menu (entry, text_id) VALUES (9051, 12239);
DELETE FROM `spell_area` WHERE `spell` = 42016;
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES
(40214, 3759, 11013, 0, 0, 0, 0, 2, 1),
(40214, 3939, 11013, 0, 0, 0, 0, 2, 1),
(40214, 3965, 11013, 0, 0, 0, 0, 2, 1),
(40214, 3966, 11013, 0, 0, 0, 0, 2, 1);
REPLACE INTO gossip_menu (entry, text_id) VALUES (6506, 10565);
REPLACE INTO gossip_menu (entry, text_id) VALUES (6478, 10571);
delete from creature where id=19220;
UPDATE creature_template SET MovementType=0 WHERE entry IN (19220,19168,20990,19510,20988,20059,19735);
UPDATE creature_template SET MovementType=0 WHERE entry IN (21537,21539,21523,21522,21540,21541,21542);
DELETE FROM `creature` WHERE `id` = 2638;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-20' WHERE `item`=34500;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`=35232 AND `item`=24669;
DELETE FROM `item_loot_template` WHERE `entry` = 35232 AND `item` = 29434;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(20586, 188164, 571, 1, 1, 2850.95, 4360.08, 2.86494, 3.0123, 0, 0, 0.997911, 0.0646013, 300, 100, 1),
(44615, 188164, 571, 1, 1, 2861.54, 4319.45, 1.57662, 2.80809, 0, 0, 0.986129, 0.16598, 300, 100, 1),
(44616, 188164, 571, 1, 1, 2878.02, 4869.76, -2.43621, -1.76278, 0, 0, -0.771624, 0.636079, 300, 100, 1),
(44617, 188164, 571, 1, 1, 2879.1, 4905.58, 2.53965, -2.68781, 0, 0, -0.97437, 0.22495, 300, 100, 1),
(44618, 188164, 571, 1, 1, 2890.17, 4936.33, 1.87172, -1.93731, 0, 0, -0.824125, 0.566409, 300, 100, 1),
(44619, 188164, 571, 1, 1, 2904.35, 4343.52, 3.8419, 5.66694, 0, 0, 0.30327, -0.952905, 300, 100, 1),
(44620, 188164, 571, 1, 1, 2913.26, 4930.27, 2.56173, -2.82743, 0, 0, -0.987688, 0.156436, 300, 100, 1),
(44621, 188164, 571, 1, 1, 2916.97, 4348.23, 3.43156, 2.4311, 0, 0, 0.937561, 0.347821, 300, 100, 1),
(44622, 188164, 571, 1, 1, 2918.71, 4889.01, 2.5603, 0.90757, 0, 0, 0.438371, 0.898794, 300, 100, 1),
(44623, 188164, 571, 1, 1, 2923.61, 4830.15, 0.39622, -0.191985, 0, 0, -0.0958451, 0.995396, 300, 100, 1),
(20587, 188164, 571, 1, 1, 2929.54, 4821.67, -1.11707, 2.28638, 0, 0, 0.909961, 0.414694, 300, 100, 1),
(10984, 188164, 571, 1, 1, 2969.29, 4851.23, 0.408302, 1.74533, 0, 0, 0.766045, 0.642787, 300, 100, 1),
(10982, 188164, 571, 1, 1, 2970.12, 4832.7, 0.397131, 0.168013, 0, 0, 0.0839077, 0.996474, 300, 100, 1),
(10981, 188164, 571, 1, 1, 2985.65, 4617.58, -4.80682, -1.67551, 0, 0, -0.743143, 0.669133, 300, 100, 1),
(10979, 188164, 571, 1, 1, 2988.11, 4615.75, 0.396222, -1.67551, 0, 0, -0.743144, 0.669131, 300, 100, 1),
(10978, 188164, 571, 1, 1, 2991.87, 4628.22, 0.39622, -0.610864, 0, 0, -0.300705, 0.953717, 300, 100, 1),
(10976, 188164, 571, 1, 1, 3000.35, 4847.27, 0.397131, 3.71409, 0, 0, 0.95931, -0.282356, 300, 100, 1),
(10974, 188164, 571, 1, 1, 3021.48, 4658.09, 0.396221, -2.46091, 0, 0, -0.942641, 0.333809, 300, 100, 1),
(10973, 188164, 571, 1, 1, 3022.77, 4882.04, 0.396479, 1.98622, 0, 0, 0.837728, 0.546087, 300, 100, 1),
(10972, 188164, 571, 1, 1, 3024.14, 4664.19, -5.18239, -2.46091, 0, 0, -0.942641, 0.333809, 300, 100, 1),
(10971, 188164, 571, 1, 1, 3027.96, 4724.95, 0.39621, -0.052359, 0, 0, -0.0261765, 0.999657, 300, 100, 1),
(10970, 188164, 571, 1, 1, 3028.04, 4697.86, 0.396387, 5.91434, 0, 0, 0.183379, -0.983042, 300, 100, 1),
(10969, 188164, 571, 1, 1, 3035.66, 4777.6, 0.396206, -2.40855, 0, 0, -0.93358, 0.358368, 300, 100, 1),
(10968, 188164, 571, 1, 1, 3051.93, 4808.58, 2.03703, 0.820303, 0, 0, 0.398748, 0.91706, 300, 100, 1),
(10967, 188164, 571, 1, 1, 3056.26, 4769.32, 1.67914, 2.54818, 0, 0, 0.956305, 0.292372, 300, 100, 1),
(10966, 188164, 571, 1, 1, 3058.02, 4826.49, 1.37582, 1.85005, 0, 0, 0.798636, 0.601815, 300, 100, 1),
(10964, 188164, 571, 1, 1, 3060.99, 4765.1, 1.13404, -1.74533, 0, 0, -0.766044, 0.642789, 300, 100, 1),
(10963, 188164, 571, 1, 1, 3075.67, 4824.07, 1.22049, 1.88495, 0, 0, 0.809015, 0.587788, 300, 100, 1),
(10962, 188164, 571, 1, 1, 3083.98, 4848.85, 3.17761, 0.575957, 0, 0, 0.284015, 0.95882, 300, 100, 1),
(10958, 188164, 571, 1, 1, 3091.62, 4835.64, 1.77486, 4.63695, 0, 0, 0.733269, -0.679938, 300, 100, 1),
(10956, 188164, 571, 1, 1, 3091.62, 4835.64, 1.77486, 4.63695, 0, 0, 0.733269, -0.679938, 300, 100, 1),
(10951, 188164, 571, 1, 1, 3092.69, 4880.6, 0.396219, -1.79769, 0, 0, -0.782608, 0.622515, 300, 100, 1),
(10948, 188164, 571, 1, 1, 3093.4, 4881.64, -5.18705, -2.58308, 0, 0, -0.961261, 0.275641, 300, 100, 1),
(10946, 188164, 571, 1, 1, 3094.19, 4792.84, 1.99428, 1.27409, 0, 0, 0.594823, 0.803857, 300, 100, 1),
(10943, 188164, 571, 1, 1, 3099.82, 4804.06, 1.22049, 1.309, 0, 0, 0.608763, 0.793352, 300, 100, 1),
(10940, 188164, 571, 1, 1, 3109.01, 4778.86, 6.53474, -3.07177, 0, 0, -0.999391, 0.0349061, 300, 100, 1),
(10939, 188164, 571, 1, 1, 3122.12, 4826.62, 1.44228, 0.471238, 0, 0, 0.233445, 0.97237, 300, 100, 1),
(10932, 188164, 571, 1, 1, 3123.7, 4742.73, 7.44305, 3.07177, 0, 0, 0.999391, 0.0349061, 300, 100, 1),
(10930, 188164, 571, 1, 1, 3133.73, 4752.5, 8.12196, -0.314158, 0, 0, -0.156434, 0.987688, 300, 100, 1);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE `item`=34248;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 11513;
DELETE FROM `creature_questrelation` WHERE `quest` = 11513;
UPDATE `gossip_menu_option` SET `option_text`='Place 35 Apexis Shards near the dragon egg to crack it open.' WHERE `menu_id`=8685 AND `id`=0;
UPDATE `gossip_menu_option` SET `option_text`='Place 35 Apexis Shards near the dragon egg to crack it open.' WHERE `menu_id`=8690 AND `id`=0;
UPDATE `gossip_menu_option` SET `option_text`='Place 35 Apexis Shards near the dragon egg to crack it open.' WHERE `menu_id`=8691 AND `id`=0;
DELETE FROM `gameobject` WHERE `id` = 187875;
DELETE FROM `gameobject` WHERE `id` = 187850;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='100' WHERE `item`=32569;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100' WHERE `item`=32569;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='30',`maxcount`='1' WHERE `ChanceOrQuestChance`<'100' AND `item`=32569;
DELETE FROM `creature_loot_template` WHERE `item` in (32576,32670,32671,32672,32673,32674,32675,32676,32677,32678,32679);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(19973, 32576, 5, 0, -32576, 1),
(20557, 32576, 5, 0, -32576, 1),
(22175, 32576, 5, 0, -32576, 1),
(22180, 32576, 5, 0, -32576, 1),
(22181, 32576, 5, 0, -32576, 1),
(22182, 32576, 5, 0, -32576, 1),
(22195, 32576, 5, 0, -32576, 1),
(22204, 32576, 5, 0, -32576, 1),
(22241, 32576, 5, 0, -32576, 1),
(22242, 32576, 5, 0, -32576, 1),
(22243, 32576, 5, 0, -32576, 1),
(22244, 32576, 5, 0, -32576, 1),
(22254, 32576, 5, 0, -32576, 1),
(22275, 32576, 5, 0, -32576, 1),
(22281, 32576, 5, 0, -32576, 1),
(22291, 32576, 5, 0, -32576, 1),
(22298, 32576, 5, 0, -32576, 1),
(22304, 32576, 5, 0, -32576, 1),
(23061, 32576, 5, 0, -32576, 1),
(23154, 32576, 5, 0, -32576, 1),
(23174, 32576, 5, 0, -32576, 1),
(23230, 32576, 5, 0, -32576, 1),
(23261, 32576, 5, 0, -32576, 1),
(23281, 32576, 5, 0, -32576, 1),
(23282, 32576, 5, 0, -32576, 1),
(23333, 32576, 5, 0, -32576, 1),
(23353, 32576, 5, 0, -32576, 1),
(23354, 32576, 5, 0, -32576, 1),
(23355, 32576, 5, 0, -32576, 1),
(23385, 32576, 5, 0, -32576, 1),
(23386, 32576, 5, 0, -32576, 1),
(23390, 32576, 5, 0, -32576, 1),
(23391, 32576, 5, 0, -32576, 1),
(24917, 32576, 5, 0, -32576, 1);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('32576', '32576', '0', '1', '1', '1'),
('32576', '32670', '5', '1', '1', '1'),
('32576', '32671', '5', '1', '1', '1'),
('32576', '32672', '5', '1', '1', '1'),
('32576', '32673', '5', '1', '1', '1'),
('32576', '32674', '5', '1', '1', '1'),
('32576', '32675', '2', '1', '1', '1'),
('32576', '32676', '2', '1', '1', '1'),
('32576', '32677', '5', '1', '1', '1'),
('32576', '32678', '5', '1', '1', '1'),
('32576', '32679', '5', '1', '1', '1');
UPDATE `quest_template` SET `RequestItemsText`='In my dreams, I can sometimes hear the doomed moans of my brethren! Please, good $Gsir:madam;, free them from the bonds and quiet their cries.' WHERE `id`=289;
UPDATE `quest_template` SET `OfferRewardText`='Ah, you wish to petition me for a test of valor. Splendid.$B$BThere are many tasks throughout the city and surrounding lands that hold much challenge, and they could use a $Gman:woman; with your skills.$B$BThis test should not be taken lightly, $N. This, like many things along our path, could take our lives. The Church always wishes to bolster its ranks, but it understands the sacrifices needed to ensure the paladins serving it are worthy.$B$BAre you prepared?' WHERE `id`=1649;
UPDATE `quest_template` SET `RequestItemsText`='How goes your mission, $C.' WHERE `id`=323;
DELETE FROM `page_text` WHERE `entry` = 877;
DELETE FROM `creature` WHERE `guid` = 61704;
REPLACE INTO `creature_template_addon` (`entry`, `auras`) VALUES ('24917', '44855');
UPDATE `creature` SET `id`='21196' WHERE `guid`=77860;
UPDATE `creature` SET `id`='20795' WHERE `guid`=92448;
UPDATE creature SET position_x = '-2629.419678', position_y = '1365.326782', position_z = '33.796543', orientation = '3.270391' WHERE guid = '63282';
UPDATE creature SET position_x = '-2667.588623', position_y = '1347.309814', position_z = '34.445335', orientation = '3.423544' WHERE guid = '63901';
UPDATE `creature` SET `spawndist`='8', `curhealth`='6761', `curmana`='0', `MovementType`='1' WHERE `guid`=77860;
UPDATE `creature` SET `spawndist`='0', `curhealth`='6803', `curmana`='2991', `MovementType`='0' WHERE `guid`=92448;
UPDATE creature SET position_x = '-2593.266602', position_y = '1383.786743', position_z = '44.274952', orientation = '3.778532' WHERE guid = '92448';
DELETE FROM creature WHERE guid=124435;
DELETE FROM creature_addon WHERE guid=124435;
DELETE FROM creature WHERE guid=124384;
DELETE FROM creature_addon WHERE guid=124384;
DELETE FROM creature WHERE guid=124676;
DELETE FROM creature_addon WHERE guid=124676;
DELETE FROM creature WHERE guid=124675;
DELETE FROM creature_addon WHERE guid=124675;
DELETE FROM creature WHERE guid=124329;
DELETE FROM creature_addon WHERE guid=124329;
DELETE FROM creature WHERE guid=124328;
DELETE FROM creature_addon WHERE guid=124328;
DELETE FROM creature WHERE guid=124677;
DELETE FROM creature_addon WHERE guid=124677;
DELETE FROM creature WHERE guid=124678;
DELETE FROM creature_addon WHERE guid=124678;
DELETE FROM creature WHERE guid=111487;
DELETE FROM creature_addon WHERE guid=111487;
DELETE FROM creature WHERE guid=111491;
DELETE FROM creature_addon WHERE guid=111491;
DELETE FROM creature WHERE guid=111490;
DELETE FROM creature_addon WHERE guid=111490;
DELETE FROM creature WHERE guid=111488;
DELETE FROM creature_addon WHERE guid=111488;
DELETE FROM creature WHERE guid=111493;
DELETE FROM creature_addon WHERE guid=111493;
DELETE FROM creature WHERE guid=111489;
DELETE FROM creature_addon WHERE guid=111489;
REPLACE INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES ('2000000683', '%s becomes energized with arcane magic.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
DELETE FROM `creature` WHERE `id` = 25047;
UPDATE creature_template SET AIName='EventAI' WHERE entry=38508;
DELETE FROM creature_ai_scripts WHERE creature_id=38508;
INSERT INTO creature_ai_scripts VALUES 
('3850801','38508','11','0','100','30','0','0','0','0','21','0','0','0','20','0','0','0','0','0','0','0','Blood Beast - Set Combat movement and auto attack false on Spawn'),
('3850802','38508','0','0','100','30','3000','3000','0','0','20','1','0','0','21','1','0','0','38','0','0','0','Blood Beast - Set Combat movement and auto attack true and set in combat with zone');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=100 WHERE `item` in (22545,22561,22560);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 183395;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 183396;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 183397;
UPDATE `gameobject_template` SET `data1`='183394' WHERE `entry`=183395;
UPDATE `gameobject_template` SET `data1`='183394' WHERE `entry`=183396;
UPDATE `gameobject_template` SET `data1`='183394' WHERE `entry`=183397;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 185169 AND `item` = 29434;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 185168 AND `item` = 30592;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 185169 AND `item` = 30592;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='10' WHERE `entry`=18436 AND `item`=30594;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='10' WHERE `entry`=18433 AND `item`=30594;
UPDATE `gameobject_loot_template` SET `item`='30592', `ChanceOrQuestChance`='10', `mincountOrRef`='-30592' WHERE `entry`=185169 AND `item`=30594;
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(30592, 30592, 0, 1, 1, 1),
(30592, 30593, 0, 1, 1, 1),
(30592, 30594, 0, 1, 1, 1);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (4862,5940);
UPDATE `creature_template` SET `InhabitType` = 3 WHERE `entry` = 31070;
UPDATE `creature_template` SET `npcflag` = 0, `speed_walk` = 7.2, `speed_run` = 4.28571, `InhabitType` = 3 WHERE `entry` = 29709;
UPDATE `gameobject_template` SET `data1`='184740' WHERE `entry`=184741;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 184741;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE `entry` = 184740;
UPDATE `gameobject_template` SET `data1`='164658' WHERE `entry`=164778;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 164778;
UPDATE `gameobject_template` SET `data1`='164659' WHERE `entry`=164779;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 164779;
UPDATE `gameobject_template` SET `data1`='164660' WHERE `entry`=164780;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 164780;
UPDATE `gameobject_template` SET `data1`='164661' WHERE `entry`=164781;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 164781;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 10598 AND `id` = 1;
DELETE FROM `page_text` WHERE `entry`=3562;
INSERT INTO `page_text` (`entry`, `text`, `next_page`) VALUES
(3562, 'The tiny gnome peered over the railing into the secluded Dalaran courtyard.$B$B"The view from the balcony is amazing.  You have to come see!"$B$BArmor legplates creaked as Marcus walked over, taking in a deep breath as he absently scratched his scruffy chin.$B$B"The Hero''s Welcome is no slouch.  And there''s something in the room that might interest you."$B$BTavi bounded into the room, pausing only a moment before jumping onto the massive bed.  She turned to gaze at Marcus with her huge saucer-like eyes, narrowing them playfully and replacing her glowing smile with a diabolical grin.', 3563);
UPDATE `quest_template` SET `RequiredRaces`='690' WHERE `id` in (10623,10663,12423);
UPDATE `quest_template` SET `RequiredRaces`='1101' WHERE `id` in (10621,10662,11185,11237,8829);
UPDATE `quest_template` SET `PrevQuestId`='10626' WHERE `id`=10662;
UPDATE `quest_template` SET `PrevQuestId`='10664', `ExclusiveGroup`='-10665' WHERE `id` in (10665,10666);
UPDATE `quest_template` SET `PrevQuestId`='10665', `ExclusiveGroup`='-10667' WHERE `id` in (10667,10670);
UPDATE `quest_template` SET `PrevQuestId`='10667' WHERE `id`=10676;
UPDATE `gameobject` SET `position_x`=-3420.991,`position_y`=1373.175,`position_z`=257.5233,`orientation`=3.141593 WHERE `id`=185032;
UPDATE `quest_template` SET `PrevQuestId`='0' WHERE `id`=10679;
DELETE FROM `item_loot_template` WHERE `entry` = 34595 AND `item` = 27498;
DELETE FROM `item_loot_template` WHERE `entry` = 34594 AND `item` = 27498;
DELETE FROM `item_loot_template` WHERE `entry` = 34593 AND `item` = 27498;
DELETE FROM `item_loot_template` WHERE `entry` = 34592 AND `item` = 27498;
DELETE FROM `item_loot_template` WHERE `entry` = 34587 AND `item` = 27498;
DELETE FROM `item_loot_template` WHERE `entry` = 34585 AND `item` = 27498;
DELETE FROM `item_loot_template` WHERE `entry` = 34584 AND `item` = 27498;
DELETE FROM `item_loot_template` WHERE `entry` = 34583 AND `item` = 27498;
DELETE FROM `item_loot_template` WHERE `entry` = 27511 AND `item` = 27498;
DELETE FROM `item_loot_template` WHERE `entry` = 33926 AND `item` = 27498;
DELETE FROM `item_loot_template` WHERE `entry` = 28499 AND `item` = 27498;
DELETE FROM `item_loot_template` WHERE `entry` = 20601 AND `item` = 10305;
DELETE FROM `item_loot_template` WHERE `entry` = 20603 AND `item` = 10305;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`=20601 AND `item`=27498;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`=20603 AND `item`=27498;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='1' WHERE `entry`=33926 AND `item`=33457;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`=27511 AND `item`=33457;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`=34583 AND `item`=33457;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`=34587 AND `item`=33457;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`=34584 AND `item`=33457;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`=34585 AND `item`=33457;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`=34592 AND `item`=22829;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`=34592 AND `item`=22832;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`=34592 AND `item`=27860;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`=34592 AND `item`=33457;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`=34592 AND `item`=27855;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`=34593 AND `item`=22829;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`=34593 AND `item`=22832;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`=34593 AND `item`=27860;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`=34593 AND `item`=33457;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`=34594 AND `item`=22829;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`=34594 AND `item`=22832;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`=34594 AND `item`=33457;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`=34595 AND `item`=22829;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`=34595 AND `item`=22832;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`=34595 AND `item`=27855;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`=34595 AND `item`=27860;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`=34595 AND `item`=33457;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1', `maxcount` = '3' WHERE `entry` in (34592,34593,34594,34595) AND `item` in (28104,32062);
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '2', `maxcount` = '2' WHERE `entry` in (34592,34593,34594,34595) AND `item` in (22823,22824,22827,22830,22831,22833,22834,22835,22840,32067,32068);
UPDATE creature_loot_template SET ChanceOrQuestChance=ABS(ChanceOrQuestChance) WHERE item in (23984);
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
(602,4841,1,1,1,0,0,-3949.688,-3471.041,29.15445,4.288023,360,0,0,1902,0,0);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-100' WHERE `item`=5945;
UPDATE `creature_template_addon` SET `auras`='49343' WHERE `entry`=27693;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(104346, 32630, 571, 1, 1, 0, 0, 6913.31, -1725.26, 954.792, 0.723418, 28800, 0, 0, 18900, 0, 0);
DELETE FROM `item_loot_template` WHERE `item` = 954;
DELETE FROM `creature_loot_template` WHERE `item` = 954;
DELETE FROM `reference_loot_template` WHERE `entry` = 954;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='0.5' WHERE `item` in (4419);
DELETE FROM `item_loot_template` WHERE `entry` = 21511 AND `item` = 1477;
DELETE FROM `item_loot_template` WHERE `entry` = 21510 AND `item` = 1477;
DELETE FROM `item_loot_template` WHERE `entry` = 9540 AND `item` = 1477;
DELETE FROM `item_loot_template` WHERE `entry` = 6827 AND `item` = 1477;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 4297 AND `item` = 1477;
UPDATE `item_loot_template`SET`ChanceOrQuestChance`='100' WHERE `entry`=6307 AND `item`=1477;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 2560 AND `item` = 1477;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 4096 AND `item` = 1477;
DELETE FROM `creature_loot_template` WHERE `item` = 1477;
DELETE FROM `item_loot_template` WHERE `entry` = 6307 AND `item` = 6304;
DELETE FROM `item_loot_template` WHERE `entry` = 6307 AND `item` = 6305;
DELETE FROM `item_loot_template` WHERE `entry` = 6307 AND `item` = 6306;
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(1477, 6304, 0, 1, 1, 1),
(1477, 6305, 0, 1, 1, 1),
(1477, 6306, 0, 1, 1, 1);
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 7396 AND `item` = 4419;
DELETE FROM `item_loot_template` WHERE `entry` = 15699 AND `item` = 4419;
DELETE FROM `item_loot_template` WHERE `entry` = 9540 AND `item` = 4419;
DELETE FROM `item_loot_template` WHERE `entry` = 8484 AND `item` = 4419;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100' WHERE `entry`=9540 AND `item`=10305;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 153123 AND `item` = 4419;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='35', `groupid`='1' WHERE `entry`=2560 AND `item`=4098;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1' WHERE `entry`=2560 AND `item`=4100;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1' WHERE `entry`=2560 AND `item`=4101;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1' WHERE `entry`=2560 AND `item`=4102;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='10' WHERE `entry`=2560 AND `item`=4419;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='1' WHERE `entry`=2560 AND `item`=7975;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='25' WHERE `entry`=8484 AND `item`=3928;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='25' WHERE `entry`=8484 AND `item`=6149;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='5' WHERE `entry`=8484 AND `item`=10305;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='10' WHERE `entry`=15699 AND `item`=10305;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1' WHERE `entry`=15699 AND `item`=8932;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1' WHERE `entry`=15699 AND `item`=8950;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1' WHERE `entry`=15699 AND `item`=8952;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1' WHERE `entry`=15699 AND `item`=8953;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='50' WHERE `entry`=15699 AND `item`=13443;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='50' WHERE `entry`=15699 AND `item`=13446;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='15' WHERE `entry`=15699 AND `item`=15564;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='80' WHERE `entry`=15699 AND `item`=8766;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 176224 AND `item` = 10305;
UPDATE `gameobject` SET `spawntimesecs`='120' WHERE `id`=153123;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE `entry` = 153123 AND `item` = 1645;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE `entry` = 153123 AND `item` = 3927;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE `entry` = 153123 AND `item` = 4599;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE `entry` = 153123 AND `item` = 4601;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE `entry` = 153123 AND `item` = 4602;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE `entry` = 153123 AND `item` = 4608;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='5' WHERE `entry`=153123 AND `item`=3928;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='5' WHERE `entry`=153123 AND `item`=6149;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='1' WHERE `entry`=153123 AND `item`=10305;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='-20' WHERE `entry`=153123 AND `item`=10715;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='-20' WHERE `entry`=153123 AND `item`=10717;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='-20' WHERE `entry`=153123 AND `item`=10718;
UPDATE`gameobject_loot_template`  SET `ChanceOrQuestChance`='-20' WHERE `entry`=153123 AND `item`=10722;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='1', `mincountOrRef`='-3914' WHERE `item`=3914;
DELETE FROM `item_loot_template` WHERE `entry` = 5758 AND `item` = 4500;
DELETE FROM `item_loot_template` WHERE `entry` = 5759 AND `item` = 4500;
DELETE FROM `item_loot_template` WHERE `entry` = 10752 AND `item` = 4500;
DELETE FROM `item_loot_template` WHERE `entry` = 19296 AND `item` = 4500;
DELETE FROM `item_loot_template` WHERE `entry` = 19425 AND `item` = 804;
DELETE FROM `item_loot_template` WHERE `entry` = 19425 AND `item` = 1725;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='0.2' WHERE `item` in (3914,1725,4500);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 2850 AND `item` = 1725;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 2852 AND `item` = 1725;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 2855 AND `item` = 1725;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 2857 AND `item` = 1725;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 4149 AND `item` = 1725;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 74448 AND `item` = 1725;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 75299 AND `item` = 1725;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 105581 AND `item` = 1725;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 153451 AND `item` = 1725;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 153453 AND `item` = 1725;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 153454 AND `item` = 1725;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 153462 AND `item` = 1725;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 181804 AND `item` = 1725;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='1', `mincountOrRef`='-3914' WHERE `item`=3914;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='1', `mincountOrRef`='-3914',`item`=3914 WHERE `item`=1725;
UPDATE `npc_vendor` SET `maxcount`='2' WHERE `entry`=14847 AND `item`=2290;
UPDATE `npc_vendor` SET `maxcount`='3' WHERE `entry`=14847 AND `item`=3012;
UPDATE `npc_vendor` SET `maxcount`='2' WHERE `entry`=14847 AND `item`=4425;
UPDATE `npc_vendor` SET `maxcount`='3' WHERE `entry`=14847 AND `item`=954;
UPDATE `npc_vendor` SET `maxcount`='3' WHERE `entry`=14847 AND `item`=1181;
UPDATE `npc_vendor` SET `maxcount`='3' WHERE `entry`=14847 AND `item`=3013;
UPDATE `npc_vendor` SET `maxcount`='2' WHERE `entry`=14847 AND `item`=2289;
UPDATE `npc_vendor` SET `maxcount`='2' WHERE `entry`=14847 AND `item`=4421;
DELETE FROM `npc_vendor` WHERE `entry` = 24780 AND `item` = 27498;
DELETE FROM `npc_vendor` WHERE `entry` = 24780 AND `item` = 27499;
DELETE FROM `npc_vendor` WHERE `entry` = 24780 AND `item` = 27503;
UPDATE `creature_template` SET `equipment_id` = 2323 WHERE `entry` = 37205;
INSERT INTO `creature_equip_template` VALUES ('2323', '49767', '0', '0');

# Herurg
UPDATE `creature_template` SET `equipment_id` = 853 WHERE `entry` = 34980;

# NeatElves
UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE `guid`=62584;
UPDATE `creature` SET `curmana`='200' WHERE `guid` in (62389,62584);
UPDATE `creature_template` SET `MovementType`=0 WHERE `entry`=32630;
UPDATE `creature_template` SET `flags_extra`=64 WHERE `entry` IN (30544,30407);
UPDATE `creature_template` SET `faction_H`=2068,`faction_A`=2068 WHERE `entry` IN (30830,30831,30829);
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `id`=13044;
UPDATE `quest_template` SET `RequiredClasses`=1502 WHERE `id`=13104;
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=36794;
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=21033;
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=21659;
UPDATE `creature_template` SET `unit_flags`='32768', `pickpocketloot`='0' WHERE `entry`=24960;
UPDATE `creature_template` SET `lootid`='24960', `pickpocketloot`='0' WHERE `entry`=24966;
UPDATE `creature_template` SET `unit_flags`='33587200', `flags_extra`='2' WHERE `entry`=25047;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` in (24960,24966);
DELETE FROM `creature_loot_template` WHERE `entry` = 24966;
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(5940, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

# Conditions
REPLACE INTO `conditions` VALUES ('13', '1', '72202', '0', '0', '31', '0', '3', '37813', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '72260', '0', '0', '31', '0', '3', '37813', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '72278', '0', '0', '31', '0', '3', '37813', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '72279', '0', '0', '31', '0', '3', '37813', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '72280', '0', '0', '31', '0', '3', '37813', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '3', '72771', '0', '0', '31', '0', '3', '38508', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9546', '1', '0', '0', '9', '0', '11332', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9546', '2', '0', '0', '9', '0', '12297', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8662', '0', '0', '0', '28', '0', '11108', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7675', '9369', '0', '0', '8', '0', '10107', '0', '0', '0', '0', '', 'Show different gossip if player has rewarded quest 10107');
REPLACE INTO `conditions` VALUES ('14', '7675', '9369', '0', '1', '8', '0', '10108', '0', '0', '0', '0', '', 'Show different gossip if player has rewarded quest 10108');
REPLACE INTO `gossip_menu_option` VALUES ('9546', '0', '2', 'Where would you like to fly to?.', '4', '8192', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9546', '1', '0', 'Greer, I need a gryphon to ride and some bombs to drop on New agamand!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9546', '2', '0', 'I need to get to Wintergarde Keep fast!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9199', '0', '0', 'Who are you?', '1', '1', '9200', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9199', '1', '0', 'What brings you to the Sunwell?', '1', '1', '9297', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9200', '0', '0', 'What can we do to assist you?', '1', '1', '9201', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9297', '0', '0', 'You\'re not alone here?', '1', '1', '9295', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9297', '1', '0', 'What would Kil\'jaeden want with a mortal woman?', '1', '1', '9296', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('8662', '0', '0', 'Have gone!', '1', '1', '0', '0', '0', '0', null);
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=10598;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=8 AND SourceGroup=24960;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=8 AND SourceGroup=24966;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=32400);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=27135);
DELETE FROM `db_script_string` WHERE entry= 2000000463;
DELETE FROM `db_script_string` WHERE entry= 2000000683;
DELETE FROM `db_script_string` WHERE entry= 2000000770;
DELETE FROM `db_script_string` WHERE entry= 2000000771;
DELETE FROM `db_script_string` WHERE entry= 2000000772;
DELETE FROM `db_script_string` WHERE entry= 2000000773;
DELETE FROM `db_script_string` WHERE entry= 2000000774;
DELETE FROM `db_script_string` WHERE entry= 2000000775;
DELETE FROM `db_script_string` WHERE entry= 2000000776;
DELETE FROM `db_script_string` WHERE entry= 2000000777;
DELETE FROM `db_script_string` WHERE entry= 2000000778;
DELETE FROM `db_script_string` WHERE entry= 2000000779;
DELETE FROM `db_script_string` WHERE entry= 2000000780;
DELETE FROM `db_script_string` WHERE entry= 2000000781;
DELETE FROM `db_script_string` WHERE entry= 2000000782;
DELETE FROM `db_script_string` WHERE entry= 2000000783;
DELETE FROM `db_script_string` WHERE entry= 2000000784;
DELETE FROM `db_script_string` WHERE entry= 2000000785;
DELETE FROM `db_script_string` WHERE entry= 2000000786;
DELETE FROM `db_script_string` WHERE entry= 2000000787;
DELETE FROM smart_scripts WHERE entryorguid = (-124678);
DELETE FROM smart_scripts WHERE entryorguid = (-124677);
DELETE FROM smart_scripts WHERE entryorguid = (-124676);
DELETE FROM smart_scripts WHERE entryorguid = (-124675);
DELETE FROM smart_scripts WHERE entryorguid = (-124435);
DELETE FROM smart_scripts WHERE entryorguid = (-124384);
DELETE FROM smart_scripts WHERE entryorguid = (-124329);
DELETE FROM smart_scripts WHERE entryorguid = (-124328);
DELETE FROM smart_scripts WHERE entryorguid = (-111493);
DELETE FROM smart_scripts WHERE entryorguid = (-111491);
DELETE FROM smart_scripts WHERE entryorguid = (-111490);
DELETE FROM smart_scripts WHERE entryorguid = (-111489);
DELETE FROM smart_scripts WHERE entryorguid = (-111488);
DELETE FROM smart_scripts WHERE entryorguid = (-111487);
DELETE FROM linked_respawn WHERE guid=92336;
DELETE FROM linked_respawn WHERE linkedGuid=92336;
DELETE FROM linked_respawn WHERE guid=100518;
DELETE FROM linked_respawn WHERE linkedGuid=100518;
DELETE FROM linked_respawn WHERE guid=100528;
DELETE FROM linked_respawn WHERE linkedGuid=100528;
DELETE FROM linked_respawn WHERE guid=100530;
DELETE FROM linked_respawn WHERE linkedGuid=100530;
DELETE FROM linked_respawn WHERE guid=100531;
DELETE FROM linked_respawn WHERE linkedGuid=100531;


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

UPDATE version SET `cache_id`= '622';
UPDATE version SET `db_version`= 'YTDB_0.14.5_R622_TC_R15847_TDBAI_335_RuDB_R50';
