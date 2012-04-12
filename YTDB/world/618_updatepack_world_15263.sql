# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 617_FIX_15146 618_FIX_15263 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('618_FIX_15263');

# TC
-- SAI for Unrestrained Dragonhawk
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=25236;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=25236 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25236,0,0,1,62,0,100,0,9143,0,0,0,11,45353,0,0,0,0,0,7,0,0,0,0,0,0,0,'Unrestrained Dragonhawk - On Gossip option select - cast "Quest - Sunwell Daily - Ship Bombing Run Return" on player'),
(25236,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Unrestrained Dragonhawk - On Gossip option select - Close Gossip');

-- SmartAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=25059 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25059,0,0,2,62,0,100,0,9062,0,0,0,11,45071,0,0,0,0,0,7,0,0,0,0,0,0,0,'Ayren Cloudbreaker - On Gossip option select - Cast "Quest - Sunwell Daily - Dead Scar Bombing Run" on player'),
(25059,0,1,2,62,0,100,0,9062,1,0,0,11,45113,0,0,0,0,0,7,0,0,0,0,0,0,0,'Ayren Cloudbreaker - On Gossip option select - Cast "Quest - Sunwell Daily - Ship Bombing Run" on player'),
(25059,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Ayren Cloudbreaker - On Gossip option select - Close Gossip');

-- Spell scripts from sniff
DELETE FROM `spell_scripts` WHERE `id`=45071;
INSERT INTO `spell_scripts` (`id`,`effIndex`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(45071,2,0,16,12318,1,0,0,0,0,0); -- Play sound

-- Flame Sphere should not be visible to players(only their visual)
UPDATE `creature_template` SET `flags_extra`=128 WHERE `entry` IN (30106,31686,31687);

-- Beam Visual
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=60342;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,60342,0,0,31,0,3,29308,0,0,0,'','Beam Visual target Prince Taldaram');

-- script texts for Prince Taldaram
DELETE FROM `creature_text` WHERE `entry`=29308;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(29308,0,0,'The hum of magic energy in the air diminishes...',16,0,100,0,0,0,'prince taldaram SAY_1'),
(29308,1,0,'Intruders! Who trespasses in the Old Kingdom?',14,0,100,0,0,0,'prince taldaram SAY_WARNING'),
(29308,2,0,'I will feast on your remains.',14,0,100,0,0,14360,'prince taldaram SAY_AGGRO'),
(29308,3,0,'',14,10,100,0,0,14365,'prince taldaram SAY_SLAY_0'),
(29308,3,1,'I will drink no blood before it''s time.',14,0,100,0,0,14366,'prince taldaram SAY_SLAY_1'),
(29308,3,2,'One final embrace.',14,0,100,0,0,14367,'prince taldaram SAY_SLAY_2'),
(29308,4,0,'Still I hunger. Still... I... thirst.',14,0,100,0,0,14368,'prince taldaram SAY_DEATH'),
(29308,5,0,'So... appetizing.',14,0,100,0,0,14363,'prince taldaram SAY_FEED1'),
(29308,5,1,'Fresh, warm blood. It has been too long.',14,0,100,0,0,14364,'prince taldaram SAY_FEED2'),
(29308,6,0,'Your heartbeat is... music to my ears.',14,0,100,0,0,14361,'prince taldaram SAY_VANISH1'),
(29308,6,1,'I am nowhere... I am everywhere. I am the watcher, unseen.',14,0,100,0,0,14362,'prince taldaram SAY_VANISH2');

-- cleanup
DELETE FROM `script_texts` WHERE `npc_entry`=29308;

-- darkmoon faerie resync, again
UPDATE `game_event` SET `start_time`='2012-04-01 00:01:00' WHERE `eventEntry`=5;
UPDATE `game_event` SET `start_time`='2012-05-06 00:01:00' WHERE `eventEntry`=3;
UPDATE `game_event` SET `start_time`='2012-06-03 00:01:00' WHERE `eventEntry`=4;

UPDATE `creature_template` SET `HoverHeight`=10.8, `VehicleId`=232 WHERE `entry`=30393;
UPDATE `creature_template` SET `HoverHeight`=10.8, `VehicleId`=237 WHERE `entry`=30461;
UPDATE `creature_template` SET `HoverHeight`=10 WHERE `entry`=27530;
UPDATE `creature_template` SET `HoverHeight`=10 WHERE `entry`=26277;
UPDATE `creature_template` SET `HoverHeight`=10 WHERE `entry`=26276;
UPDATE `creature_template` SET `HoverHeight`=1.2 WHERE `entry`=31070;
UPDATE `creature_template` SET `HoverHeight`=12 WHERE `entry`=37126;
UPDATE `creature_template` SET `HoverHeight`=15 WHERE `entry`=27608;
UPDATE `creature_template` SET `HoverHeight`=15 WHERE `entry`=27608;
UPDATE `creature_template` SET `HoverHeight`=1.6 WHERE `entry`=38392;
UPDATE `creature_template` SET `HoverHeight`=2.25 WHERE `entry`=30272;
UPDATE `creature_template` SET `HoverHeight`=2.58, `Scale`=1.72 WHERE `entry`=26607;
UPDATE `creature_template` SET `HoverHeight`=25 WHERE `entry`=37755;
UPDATE `creature_template` SET `HoverHeight`=26 WHERE `entry`=29790;
UPDATE `creature_template` SET `HoverHeight`=2.7 WHERE `entry`=25451;
UPDATE `creature_template` SET `HoverHeight`=2 WHERE `entry`=29048;
UPDATE `creature_template` SET `HoverHeight`=2, `VehicleId`=234 WHERE `entry`=30228;
UPDATE `creature_template` SET `HoverHeight`=2 WHERE `entry`=25445;
UPDATE `creature_template` SET `HoverHeight`=2 WHERE `entry`=26761;
UPDATE `creature_template` SET `HoverHeight`=2 WHERE `entry`=26761;
UPDATE `creature_template` SET `HoverHeight`=2 WHERE `entry`=25721;
UPDATE `creature_template` SET `HoverHeight`=35 WHERE `entry`=27789;
UPDATE `creature_template` SET `HoverHeight`=3 WHERE `entry`=34567;
UPDATE `creature_template` SET `HoverHeight`=3 WHERE `entry`=26668;
UPDATE `creature_template` SET `HoverHeight`=3, `VehicleId`=390 WHERE `entry`=34120;
UPDATE `creature_template` SET `HoverHeight`=3, `VehicleId`=108 WHERE `entry`=24083;
UPDATE `creature_template` SET `HoverHeight`=3, `VehicleId`=270 WHERE `entry`=31137;
UPDATE `creature_template` SET `HoverHeight`=4 WHERE `entry`=24272;
UPDATE `creature_template` SET `HoverHeight`=4 WHERE `entry`=37098;
UPDATE `creature_template` SET `HoverHeight`=4 WHERE `entry`=28534;
UPDATE `creature_template` SET `HoverHeight`=4 WHERE `entry`=28511;
UPDATE `creature_template` SET `HoverHeight`=5.85 WHERE `entry`=26736;
UPDATE `creature_template` SET `HoverHeight`=5.85 WHERE `entry`=26736;
UPDATE `creature_template` SET `HoverHeight`=5.85 WHERE `entry`=32534;
UPDATE `creature_template` SET `HoverHeight`=5, `VehicleId`=348 WHERE `entry`=33214;
UPDATE `creature_template` SET `HoverHeight`=5 WHERE `entry`=27693;
UPDATE `creature_template` SET `HoverHeight`=5 WHERE `entry`=34203;
UPDATE `creature_template` SET `HoverHeight`=6.25 WHERE `entry`=40083;
UPDATE `creature_template` SET `HoverHeight`=6.25 WHERE `entry`=40100;
UPDATE `creature_template` SET `HoverHeight`=6 WHERE `entry`=34496;
UPDATE `creature_template` SET `HoverHeight`=6 WHERE `entry`=34496;
UPDATE `creature_template` SET `HoverHeight`=6 WHERE `entry`=34497;
UPDATE `creature_template` SET `HoverHeight`=7.5 WHERE `entry`=26933;
UPDATE `creature_template` SET `HoverHeight`=8.4, `VehicleId`=232 WHERE `entry`=30420;
UPDATE `creature_template` SET `HoverHeight`=8 WHERE `entry`=33186;
UPDATE `creature_template` SET `HoverHeight`=9 WHERE `entry`=26933;
UPDATE `creature_template` SET `HoverHeight`=9  WHERE `entry`=37528;
UPDATE `creature_template` SET `HoverHeight`=9  WHERE `entry`=37230;
UPDATE `creature_template` SET `HoverHeight`=9, `VehicleId`=375 WHERE `entry`=33687;
UPDATE `creature_template` SET `HoverHeight`=9, `VehicleId`=535 WHERE `entry`=36661;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=10.8, `VehicleId`=232 WHERE `entry`=30393;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=10 WHERE `entry`=27608;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=10 WHERE `entry`=27608;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=15 WHERE `entry`=32630;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=1.6 WHERE `entry`=38391;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=2.25, `VehicleId`=247 WHERE `entry`=30564;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=2.25 WHERE `entry`=30272;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=2 WHERE `entry`=25721;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=2 WHERE `entry`=29570;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=2 WHERE `entry`=26761;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=3.12, `Scale`=2.08 WHERE `entry`=26607;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=3 WHERE `entry`=26668;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=3, `VehicleId`=108 WHERE `entry`=24083;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=4 WHERE `entry`=37098;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=4  WHERE `entry`=30945;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=5.85 WHERE `entry`=26736;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=5.85 WHERE `entry`=26736;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=5, `VehicleId`=276 WHERE `entry`=31432;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=6 WHERE `entry`=30501;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=7.5 WHERE `entry`=26933;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=8.4, `VehicleId`=232 WHERE `entry`=30420;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=9 WHERE `entry`=26933;

DELETE FROM `spell_script_names` WHERE `spell_id` IN (34477, 35079);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(34477,'spell_hun_misdirection'), 
(35079,'spell_hun_misdirection_proc');

-- Hunter Volley
UPDATE `spell_bonus_data` SET `ap_bonus`=0.0837 WHERE `entry`=42243;

# Urban
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 21262, 0, 0, 8, 8063, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Paragons of Power: The Madcap''s Bracers is rewarded'),
(15, 21262, 0, 0, 26, 19836, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Zandalar Madcap''s Bracers'),
(15, 21262, 0, 1, 8, 8072, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Paragons of Power: The Madcap''s Mantle is rewarded'),
(15, 21262, 0, 1, 26, 19835, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Zandalar Madcap''s Mantle'),
(15, 21262, 0, 2, 8, 8073, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Paragons of Power: The Madcap''s Tunic is rewarded'),
(15, 21262, 0, 2, 26, 19834, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Zandalar Madcap''s Tunic'),
(15, 21262, 0, 3, 8, 8144, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Zandalarian Shadow Mastery Talisman is rewarded'),
(15, 21262, 0, 3, 26, 19617, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Zandalarian Shadow Mastery Talisman'),
(15, 21262, 0, 4, 8, 8141, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Zandalarian Shadow Talisman is rewarded'),
(15, 21262, 0, 4, 26, 19614, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Zandalarian Shadow Talisman'),
(15, 21262, 0, 5, 8, 8142, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Zandalarian Shadow Talisman is rewarded'),
(15, 21262, 0, 5, 26, 19615, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Zandalarian Shadow Talisman'),
(15, 21262, 0, 6, 8, 8143, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Zandalarian Shadow Talisman is rewarded'),
(15, 21262, 0, 6, 26, 19616, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Zandalarian Shadow Talisman'),
(15, 21262, 1, 0, 8, 8066, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Paragons of Power: The Predator''s Belt is rewarded'),
(15, 21262, 1, 0, 26, 19832, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Zandalar Predator''s Belt'),
(15, 21262, 1, 1, 8, 8062, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Paragons of Power: The Predator''s Bracers is rewarded'),
(15, 21262, 1, 1, 26, 19833, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Zandalar Predator''s Bracers'),
(15, 21262, 1, 2, 8, 8067, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Paragons of Power: The Predator''s Mantle is rewarded'),
(15, 21262, 1, 2, 26, 19831, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Zandalar Predator''s Mantle'),
(15, 21262, 1, 3, 8, 8148, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Maelstrom''s Wrath is rewarded'),
(15, 21262, 1, 3, 26, 19621, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Maelstrom''s Wrath'),
(15, 21262, 1, 4, 8, 8145, 0, 0, 0, '', 'Only allow gossip option to be visible if quest The Maelstrom''s Tendril is rewarded'),
(15, 21262, 1, 4, 26, 19618, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Maelstrom''s Tendril'),
(15, 21262, 1, 5, 8, 8146, 0, 0, 0, '', 'Only allow gossip option to be visible if quest The Maelstrom''s Tendril is rewarded'),
(15, 21262, 1, 5, 26, 19619, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Maelstrom''s Tendril'),
(15, 21262, 1, 6, 8, 8147, 0, 0, 0, '', 'Only allow gossip option to be visible if quest The Maelstrom''s Tendril is rewarded'),
(15, 21262, 1, 6, 26, 19620, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Maelstrom''s Tendril');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 6321, 0, 0, 8, 8053, 0, 0, 0, '', 'Only allow main gossip to be visible if quest Paragons of Power: The Freethinker''s Armguards is rewarded'),
(15, 6321, 0, 0, 26, 19827, 0, 0, 0, '', 'Only allow main gossip to be visible if player does not have item Zandalar Freethinker''s Armguards'),
(15, 6321, 0, 1, 8, 8054, 0, 0, 0, '', 'Only allow main gossip to be visible if quest Paragons of Power: The Freethinker''s Belt is rewarded'),
(15, 6321, 0, 1, 26, 19826, 0, 0, 0, '', 'Only allow main gossip to be visible if player does not have item Zandalar Freethinker''s Belt'),
(15, 6321, 0, 2, 8, 8055, 0, 0, 0, '', 'Only allow main gossip to be visible if quest Paragons of Power: The Freethinker''s Breastplate is rewarded'),
(15, 6321, 0, 2, 26, 19825, 0, 0, 0, '', 'Only allow main gossip to be visible if player does not have item Zandalar Freethinker''s Breastplate'),
(15, 6321, 0, 3, 8, 8048, 0, 0, 0, '', 'Only allow main gossip to be visible if quest The Hero''s Brand is rewarded'),
(15, 6321, 0, 3, 26, 19588, 0, 0, 0, '', 'Only allow main gossip to be visible if player does not have item Hero''s Brand'),
(15, 6321, 0, 4, 8, 8045, 0, 0, 0, '', 'Only allow main gossip to be visible if quest The Heathen''s Brand is rewarded'),
(15, 6321, 0, 4, 26, 19579, 0, 0, 0, '', 'Only allow main gossip to be visible if player does not have item Heathen''s Brand'),
(15, 6321, 0, 5, 8, 8046, 0, 0, 0, '', 'Only allow main gossip to be visible if quest The Heathen''s Brand is rewarded'),
(15, 6321, 0, 5, 26, 19585, 0, 0, 0, '', 'Only allow main gossip to be visible if player does not have item Heathen''s Brand'),
(15, 6321, 0, 6, 8, 8047, 0, 0, 0, '', 'Only allow main gossip to be visible if quest The Heathen''s Brand is rewarded'),
(15, 6321, 0, 6, 26, 19586, 0, 0, 0, '', 'Only allow main gossip to be visible if player does not have item Heathen''s Brand'),
(15, 6321, 1, 0, 8, 8058, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Paragons of Power: The Vindicator''s Armguards is rewarded'),
(15, 6321, 1, 0, 26, 19824, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Zandalar Vindicator''s Armguards'),
(15, 6321, 1, 1, 8, 8078, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Paragons of Power: The Vindicator''s Belt is rewarded'),
(15, 6321, 1, 1, 26, 19823, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Zandalar Vindicator''s Belt'),
(15, 6321, 1, 2, 8, 8079, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Paragons of Power: The Vindicator''s Breastplate is rewarded'),
(15, 6321, 1, 2, 26, 19822, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Zandalar Vindicator''s Breastplate'),
(15, 6321, 1, 3, 8, 8044, 0, 0, 0, '', 'Only allow gossip option to be visible if quest The Rage of Mugamba is rewarded'),
(15, 6321, 1, 3, 26, 19577, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Rage of Mugamba'),
(15, 6321, 1, 4, 8, 8041, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Strength of Mount Mugamba is rewarded'),
(15, 6321, 1, 4, 26, 19574, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Strength of Mugamba'),
(15, 6321, 1, 5, 8, 8042, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Strength of Mount Mugamba is rewarded'),
(15, 6321, 1, 5, 26, 19575, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Strength of Mugamba'),
(15, 6321, 1, 6, 8, 8043, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Strength of Mount Mugamba is rewarded'),
(15, 6321, 1, 6, 26, 19576, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Strength of Mugamba');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 6341, 0, 0, 8, 8074, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Paragons of Power: The Augur''s Belt is rewarded'),
(15, 6341, 0, 0, 26, 19829, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Zandalar Augur''s Belt'),
(15, 6341, 0, 1, 8, 8056, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Paragons of Power: The Augur''s Bracers is rewarded'),
(15, 6341, 0, 1, 26, 19830, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Zandalar Augur''s Bracers'),
(15, 6341, 0, 2, 8, 8075, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Paragons of Power: The Augur''s Hauberk is rewarded'),
(15, 6341, 0, 2, 26, 19828, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Zandalar Augur''s Hauberk'),
(15, 6341, 0, 3, 8, 8119, 0, 0, 0, '', 'Only allow gossip option to be visible if quest The Unmarred Vision of Voodress is rewarded'),
(15, 6341, 0, 3, 26, 19609, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Unmarred Vision of Voodress'),
(15, 6341, 0, 4, 8, 8116, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Vision of Voodress is rewarded'),
(15, 6341, 0, 4, 26, 19606, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Vision of Voodress'),
(15, 6341, 0, 5, 8, 8117, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Vision of Voodress is rewarded'),
(15, 6341, 0, 5, 26, 19607, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Vision of Voodress'),
(15, 6341, 0, 6, 8, 8118, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Vision of Voodress is rewarded'),
(15, 6341, 0, 6, 26, 19608, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Vision of Voodress'),
(15, 6341, 1, 0, 8, 8064, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Paragons of Power: The Haruspex''s Belt is rewarded'),
(15, 6341, 1, 0, 26, 19839, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Zandalar Haruspex''s Belt'),
(15, 6341, 1, 1, 8, 8057, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Paragons of Power: The Haruspex''s Bracers is rewarded'),
(15, 6341, 1, 1, 26, 19840, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Zandalar Haruspex''s Bracers'),
(15, 6341, 1, 2, 8, 8065, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Paragons of Power: The Haruspex''s Tunic is rewarded'),
(15, 6341, 1, 2, 26, 19838, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Zandalar Haruspex''s Tunic'),
(15, 6341, 1, 3, 8, 8113, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Pristine Enchanted South Seas Kelp is rewarded'),
(15, 6341, 1, 3, 26, 19613, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Pristine Enchanted South Seas Kelp'),
(15, 6341, 1, 4, 8, 8110, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Enchanted South Seas Kelp is rewarded'),
(15, 6341, 1, 4, 26, 19610, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Enchanted South Seas Kelp'),
(15, 6341, 1, 5, 8, 8111, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Enchanted South Seas Kelp is rewarded'),
(15, 6341, 1, 5, 26, 19611, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Enchanted South Seas Kelp'),
(15, 6341, 1, 6, 8, 8112, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Enchanted South Seas Kelp is rewarded');

# Chaosua
UPDATE `npc_spellclick_spells` SET `cast_flags`='3' WHERE (`npc_entry`='33498') AND (`spell_id`='63126');

# NeatElves
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 50199;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 50199;
UPDATE `creature_ai_texts` SET `content_loc1`=NULL WHERE `content_loc1`=0;
UPDATE `creature_ai_texts` SET `content_loc2`=NULL WHERE `content_loc2`=0;
UPDATE `creature_ai_texts` SET `content_loc3`=NULL WHERE `content_loc3`=0;
UPDATE `creature_ai_texts` SET `content_loc4`=NULL WHERE `content_loc4`=0;
UPDATE `creature_ai_texts` SET `content_loc5`=NULL WHERE `content_loc5`=0;
UPDATE `creature_ai_texts` SET `content_loc6`=NULL WHERE `content_loc6`=0;
UPDATE `creature_ai_texts` SET `content_loc7`=NULL WHERE `content_loc7`=0;
UPDATE `creature_ai_texts` SET `content_loc8`=NULL WHERE `content_loc8`='';
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 6492;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 8458;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 7497;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 50281;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 50205;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 50199;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 50199;
DELETE FROM `creature` WHERE `id` = 10375;
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`) VALUES
(175590, 6, 1287, 'TEMP Spire Spider Egg Trap', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16453, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `gameobject_template` SET `data1`='175606' WHERE `entry`=175588;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 175588;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(7624, 175606, 229, 1, 1, -149.988, -479.758, 11.4346, 5.75152, 0, 0, 0.262713, -0.964874, 180, 100, 1),
(7626, 175606, 229, 1, 1, -147.127, -573.279, 9.68858, 1.09883, 0, 0, 0.522188, 0.85283, 180, 100, 1),
(7628, 175606, 229, 1, 1, -133.857, -528.361, 6.52964, 3.80609, 0, 0, 0.945311, -0.32617, 180, 100, 1),
(7631, 175606, 229, 1, 1, -100.743, -511.431, -14.6166, 2.41437, 0, 0, 0.934619, 0.355652, 180, 100, 1),
(7634, 175606, 229, 1, 1, -100.845, -520.899, 10.7155, 3.18327, 0, 0, 0.999783, -0.0208372, 180, 100, 1),
(7637, 175606, 229, 1, 1, -135.376, -448.095, 20.01, 4.51609, 0, 0, 0.772994, -0.634413, 180, 100, 1),
(7639, 175606, 229, 1, 1, -96.4562, -397.447, 36.7437, 4.22549, 0, 0, 0.856705, -0.515806, 180, 100, 1),
(7642, 175588, 229, 1, 1, -135.543, -528.703, 6.53392, 0.660128, 0, 0, 0.324104, 0.946022, 180, 100, 1),
(7644, 175588, 229, 1, 1, -139.313, -527.232, 6.43271, 0.798332, 0, 0, 0.38865, 0.921385, 180, 100, 1),
(7645, 175588, 229, 1, 1, -152.326, -547.679, 8.4167, 4.22659, 0, 0, 0.856421, -0.516278, 180, 100, 1),
(7648, 175588, 229, 1, 1, -103.921, -572.89, 9.6253, 1.67797, 0, 0, 0.743965, 0.668218, 180, 100, 1),
(7651, 175590, 229, 1, 1, -149.988, -479.758, 11.4346, 5.75152, 0, 0, 0.262713, -0.964874, 180, 100, 1),
(7660, 175590, 229, 1, 1, -147.127, -573.279, 9.68858, 1.09883, 0, 0, 0.522188, 0.85283, 180, 100, 1),
(7662, 175590, 229, 1, 1, -133.857, -528.361, 6.52964, 3.80609, 0, 0, 0.945311, -0.32617, 180, 100, 1),
(7666, 175590, 229, 1, 1, -100.743, -511.431, -14.6166, 2.41437, 0, 0, 0.934619, 0.355652, 180, 100, 1),
(7667, 175590, 229, 1, 1, -100.845, -520.899, 10.7155, 3.18327, 0, 0, 0.999783, -0.0208372, 180, 100, 1),
(7669, 175590, 229, 1, 1, -135.376, -448.095, 20.01, 4.51609, 0, 0, 0.772994, -0.634413, 180, 100, 1),
(7673, 175590, 229, 1, 1, -96.4562, -397.447, 36.7437, 4.22549, 0, 0, 0.856705, -0.515806, 180, 100, 1),
(7677, 175590, 229, 1, 1, -135.543, -528.703, 6.53392, 0.660128, 0, 0, 0.324104, 0.946022, 180, 100, 1),
(7679, 175590, 229, 1, 1, -139.313, -527.232, 6.43271, 0.798332, 0, 0, 0.38865, 0.921385, 180, 100, 1),
(7685, 175590, 229, 1, 1, -152.326, -547.679, 8.4167, 4.22659, 0, 0, 0.856421, -0.516278, 180, 100, 1),
(7686, 175590, 229, 1, 1, -103.921, -572.89, 9.6253, 1.67797, 0, 0, 0.743965, 0.668218, 180, 100, 1);
UPDATE `gameobject` SET `spawntimesecs`='180' WHERE `id` in (175606,175588);
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('14196', '1', 'Spire Spider Egg 1+2'),
('14197', '1', 'Spire Spider Egg 1+2'),
('14198', '1', 'Spire Spider Egg 1+2'),
('14199', '1', 'Spire Spider Egg 1+2'),
('14200', '1', 'Spire Spider Egg 1+2'),
('14201', '1', 'Spire Spider Egg 1+2'),
('14202', '1', 'Spire Spider Egg 1+2'),
('14203', '1', 'Spire Spider Egg 1+2'),
('14204', '1', 'Spire Spider Egg 1+2'),
('14205', '1', 'Spire Spider Egg 1+2'),
('14206', '1', 'Spire Spider Egg 1+2');
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
('7624', '14196', '0', 'Spire Spider Egg 1'), ('22521', '14196', '0', 'Spire Spider Egg 2'),
('7626', '14197', '0', 'Spire Spider Egg 1'), ('22520', '14197', '0', 'Spire Spider Egg 2'),
('7628', '14198', '0', 'Spire Spider Egg 1'), ('22519', '14198', '0', 'Spire Spider Egg 2'),
('7631', '14199', '0', 'Spire Spider Egg 1'), ('22518', '14199', '0', 'Spire Spider Egg 2'),
('7634', '14200', '0', 'Spire Spider Egg 1'), ('22517', '14200', '0', 'Spire Spider Egg 2'),
('7637', '14201', '0', 'Spire Spider Egg 1'), ('22516', '14201', '0', 'Spire Spider Egg 2'),
('7639', '14202', '0', 'Spire Spider Egg 1'), ('22515', '14202', '0', 'Spire Spider Egg 2'),
('71556', '14203', '0', 'Spire Spider Egg 1'), ('7642', '14204', '0', 'Spire Spider Egg 2'),
('71557', '14204', '0', 'Spire Spider Egg 1'), ('7644', '14204', '0', 'Spire Spider Egg 2'),
('71558', '14205', '0', 'Spire Spider Egg 1'), ('7645', '14205', '0', 'Spire Spider Egg 2'),
('71559', '14206', '0', 'Spire Spider Egg 1'), ('7648', '14206', '0', 'Spire Spider Egg 2');
UPDATE `creature_template` SET `AIName`='' WHERE `entry`=10556;
DELETE FROM `creature_ai_scripts` WHERE `id` = 1055601;
DELETE FROM `creature_ai_scripts` WHERE `id` = 1055602;
DELETE FROM `creature_ai_scripts` WHERE `id` = 1055651;
UPDATE `gameobject_template` SET `data0`=43 WHERE `entry`=179533;
UPDATE `gameobject_template` SET `data0`=43 WHERE `entry`=179526;
UPDATE `gameobject_template` SET `data0`=43 WHERE `entry`=179532;
UPDATE `gameobject_template` SET `data1`=0 WHERE `entry`=179533;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 179533;
UPDATE `gameobject_template` SET `data1`=0 WHERE `entry`=179526;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 179526;
UPDATE `gameobject_template` SET `data1`=0 WHERE `entry`=179532;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 179532;
#
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`) VALUES
(179527, 6, 1287, 'TEMP Warpwood Pod Trap', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22800, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(179530, 6, 1287, 'TEMP Warpwood Pod Trap', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22800, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(179531, 6, 1287, 'TEMP Warpwood Pod Trap', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22800, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
#
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(104631, 179530, 429, 1, 1, -27.0036, -404.283, -58.614, 0.226892, 0, 0, 0.113203, 0.993572, 600, 255, 1),
(104632, 179530, 429, 1, 1, -131.851, -319.414, -56.7906, 0.244346, 0, 0, 0.121869, 0.992546, 600, 255, 1),
(104633, 179530, 429, 1, 1, -22.3061, -349.882, -4.07224, -2.02458, 0, 0, -0.848047, 0.529921, 600, 255, 1),
(104634, 179530, 429, 1, 1, -156.299, -321.1, -4.14717, 1.25664, 0, 0, 0.587786, 0.809016, 600, 255, 1),
(104635, 179530, 429, 1, 1, 31.0736, -681.584, -25.1616, 0, 0, 0, 0, 1, 600, 255, 1),
(104636, 179530, 429, 1, 1, 36.7152, -467.008, -4.24876, 1.58825, 0, 0, 0.713251, 0.700909, 600, 255, 1),
(104637, 179530, 429, 1, 1, -10.2151, -349.267, -53.8632, 2.05949, 0, 0, 0.857167, 0.515038, 600, 255, 1),
(104638, 179530, 429, 1, 1, -51.4662, -358.168, -4.13823, 1.81514, 0, 0, 0.78801, 0.615662, 600, 255, 1),
(104639, 179530, 429, 1, 1, 21.9326, -409.795, -58.6142, 0, 0, 0, 0, 1, 600, 255, 1),
(104640, 179530, 429, 1, 1, 117.148, -408.461, -3.27357, 2.32129, 0, 0, 0.91706, 0.398748, 600, 255, 1),
(104641, 179530, 429, 1, 1, 102.549, -246.011, -56.3647, 0.785397, 0, 0, 0.382683, 0.92388, 600, 255, 1),
(104642, 179530, 429, 1, 1, 263.393, -568.436, -111.976, -2.67035, 0, 0, -0.972369, 0.233447, 600, 255, 1),
(104643, 179530, 429, 1, 1, 477.125, 307.609, 2.85288, 1.74533, 0, 0, 0.766045, 0.642787, 600, 255, 1),
(104644, 179530, 429, 1, 1, 423.649, -94.0369, -3.88739, -0.453785, 0, 0, -0.224951, 0.97437, 600, 255, 1),
(104645, 179530, 429, 1, 1, 4.90084, -450.306, -58.6294, 0, 0, 0, 0, 1, 600, 255, 1),
(104646, 179530, 429, 1, 1, 71.7209, -409.745, -4.21656, 3.12412, 0, 0, 0.999962, 0.00873622, 600, 255, 1),
(104647, 179530, 429, 1, 1, -27.7882, -388.435, -4.22943, 1.39626, 0, 0, 0.642786, 0.766046, 600, 255, 1),
(104648, 179530, 429, 1, 1, -42.6484, -341.5, -52.6547, 0.244346, 0, 0, 0.121869, 0.992546, 600, 255, 1),
(104649, 179530, 429, 1, 1, 34.9096, -365.079, -4.14052, 0.314158, 0, 0, 0.156434, 0.987688, 600, 255, 1),
(104650, 179530, 429, 1, 1, -114.736, -199.653, -4.1244, 0, 0, 0, 0, 1, 600, 255, 1),
(104651, 179530, 429, 1, 1, 101.961, -247.727, -4.01977, 2.84488, 0, 0, 0.989015, 0.147813, 600, 255, 1),
(104652, 179530, 429, 1, 1, 126.702, -248.335, -4.14639, -2.72271, 0, 0, -0.978147, 0.207914, 600, 255, 1),
(104653, 179530, 429, 1, 1, 66.2358, -633.758, -25.163, 3.05433, 0, 0, 0.999048, 0.0436193, 600, 255, 1),
(104654, 179530, 429, 1, 1, -6.16094, -433.403, -4.22212, 0, 0, 0, 0, 1, 600, 255, 1),
(104655, 179530, 429, 1, 1, 2.64945, -210.379, -52.3845, -0.95993, 0, 0, -0.461748, 0.887011, 600, 255, 1),
(104656, 179530, 429, 1, 1, -168.655, -271.912, -4.12082, -0.750491, 0, 0, -0.366501, 0.930418, 600, 255, 1),
(104657, 179530, 429, 1, 1, 55.8777, -438.434, -58.5981, -0.855211, 0, 0, -0.414693, 0.909961, 600, 255, 1),
(104658, 179530, 429, 1, 1, 59.0393, -760.028, -25.0955, -1.23918, 0, 0, -0.580703, 0.814116, 600, 255, 1),
(104659, 179530, 429, 1, 1, 71.7946, -437.261, -58.5956, 0.872664, 0, 0, 0.422618, 0.906308, 600, 255, 1),
(104660, 179530, 429, 1, 1, -28.3324, -385.063, -58.6181, 1.95477, 0, 0, 0.829038, 0.559192, 600, 255, 1),
(104661, 179530, 429, 1, 1, 47.8125, -334.275, -52.0553, -0.506145, 0, 0, -0.25038, 0.968148, 600, 255, 1),
(104662, 179530, 429, 1, 1, 353.105, -447.005, -90.0577, 0, 0, 0, 0, 1, 600, 255, 1),
(104663, 179530, 429, 1, 1, 509.725, 523.927, -25.4027, -2.80997, 0, 0, -0.986285, 0.165053, 600, 255, 1),
(104664, 179530, 429, 1, 1, 456.691, -47.364, -3.88702, -1.76278, 0, 0, -0.771624, 0.636079, 600, 255, 1),
(104665, 179530, 429, 1, 1, 34.5069, -391.211, -58.6112, -2.16421, 0, 0, -0.882948, 0.469471, 600, 255, 1),
(104666, 179530, 429, 1, 1, -12.3063, -396.872, -4.22113, -0.593412, 0, 0, -0.292372, 0.956305, 600, 255, 1),
(104667, 179530, 429, 1, 1, 127.199, -272.801, -4.14639, -1.93732, 0, 0, -0.824127, 0.566404, 600, 255, 1),
(104668, 179530, 429, 1, 1, -94.2365, -406.708, -58.6073, 0, 0, 0, 0, 1, 600, 255, 1),
(104669, 179530, 429, 1, 1, -112.021, -258.887, -56.2501, 0, 0, 0, 0, 1, 600, 255, 1),
(104670, 179530, 429, 1, 1, 134.767, -262.46, -4.14639, -0.488691, 0, 0, -0.241921, 0.970296, 600, 255, 1),
(104671, 179530, 429, 1, 1, -148.661, -210.009, -4.1514, 0.418879, 0, 0, 0.207912, 0.978148, 600, 255, 1),
(104672, 179530, 429, 1, 1, 32.7576, -775.236, -25.1416, -1.309, 0, 0, -0.608763, 0.793352, 600, 255, 1),
(104673, 179530, 429, 1, 1, -109.888, -404.549, -4.21786, -2.07694, 0, 0, -0.861629, 0.507539, 600, 255, 1),
(104674, 179530, 429, 1, 1, -61.5861, -306.311, -55.7067, 2.33874, 0, 0, 0.920505, 0.390732, 600, 255, 1),
(104675, 179530, 429, 1, 1, -7.83484, -199.983, -4.12879, -0.453785, 0, 0, -0.224951, 0.97437, 600, 255, 1),
(104676, 179530, 429, 1, 1, 64.8074, -400.448, -58.6044, -0.628317, 0, 0, -0.309016, 0.951057, 600, 255, 1),
(104677, 179530, 429, 1, 1, 44.9141, -626.477, -25.1061, -2.47837, 0, 0, -0.945519, 0.325567, 600, 255, 1),
(104678, 179530, 429, 1, 1, 66.1826, -315.416, -54.2518, 0, 0, 0, 0, 1, 600, 255, 1),
(104679, 179530, 429, 1, 1, 242.178, -420.788, -119.962, -0.069812, 0, 0, -0.0348988, 0.999391, 600, 255, 1),
(104680, 179530, 429, 1, 1, 490.501, 551.961, -25.381, -0.418879, 0, 0, -0.207912, 0.978148, 600, 255, 1),
(104681, 179530, 429, 1, 1, 468.448, 258.01, 6.34532, 1.02974, 0, 0, 0.492422, 0.870357, 600, 255, 1),
(104682, 179530, 429, 1, 1, -5.54965, -393.198, -58.6137, -0.209439, 0, 0, -0.104528, 0.994522, 600, 255, 1),
(104683, 179530, 429, 1, 1, -124.622, -234.072, -55.1133, -0.314158, 0, 0, -0.156434, 0.987688, 600, 255, 1),
(104684, 179530, 429, 1, 1, 119.36, -336.64, -4.14986, -1.44862, 0, 0, -0.662619, 0.748957, 600, 255, 1),
(104685, 179530, 429, 1, 1, -75.923, -358.893, -4.14481, 2.87979, 0, 0, 0.991445, 0.130528, 600, 255, 1),
(104686, 179530, 429, 1, 1, 41.8712, -744.931, -25.1339, 0.104719, 0, 0, 0.0523356, 0.99863, 600, 255, 1),
(104687, 179530, 429, 1, 1, 36.7851, -402.629, -4.21849, -2.49582, 0, 0, -0.948323, 0.317306, 600, 255, 1),
(104688, 179530, 429, 1, 1, -14.44, -309.911, -52.1458, 0, 0, 0, 0, 1, 600, 255, 1),
(104689, 179530, 429, 1, 1, 126.758, -296.278, -4.14639, -1.95477, 0, 0, -0.829037, 0.559194, 600, 255, 1),
(104690, 179530, 429, 1, 1, -32.8264, -463.171, -58.6176, 0.488691, 0, 0, 0.241921, 0.970296, 600, 255, 1),
(104691, 179530, 429, 1, 1, 17.3334, -704.192, -12.6426, -2.19912, 0, 0, -0.891008, 0.453988, 600, 255, 1),
(104692, 179530, 429, 1, 1, 50.4484, -241.885, -53.2931, 1.8675, 0, 0, 0.803856, 0.594824, 600, 255, 1),
(104693, 179530, 429, 1, 1, 189.484, -482.115, -100.601, 1.93731, 0, 0, 0.824125, 0.566409, 600, 255, 1),
(104694, 179530, 429, 1, 1, 423.59, 262.49, 11.1475, 0, 0, 0, 0, 1, 600, 255, 1),
(104695, 179530, 429, 1, 1, 475.207, -104.252, -3.88595, -1.32645, 0, 0, -0.615661, 0.788011, 600, 255, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(104436, 179527, 429, 1, 1, -27.0036, -404.283, -58.614, 0.226892, 0, 0, 0.113203, 0.993572, 600, 255, 1),
(104437, 179527, 429, 1, 1, -131.851, -319.414, -56.7906, 0.244346, 0, 0, 0.121869, 0.992546, 600, 255, 1),
(104438, 179527, 429, 1, 1, -22.3061, -349.882, -4.07224, -2.02458, 0, 0, -0.848047, 0.529921, 600, 255, 1),
(104439, 179527, 429, 1, 1, -156.299, -321.1, -4.14717, 1.25664, 0, 0, 0.587786, 0.809016, 600, 255, 1),
(104440, 179527, 429, 1, 1, 31.0736, -681.584, -25.1616, 0, 0, 0, 0, 1, 600, 255, 1),
(104441, 179527, 429, 1, 1, 36.7152, -467.008, -4.24876, 1.58825, 0, 0, 0.713251, 0.700909, 600, 255, 1),
(104442, 179527, 429, 1, 1, -10.2151, -349.267, -53.8632, 2.05949, 0, 0, 0.857167, 0.515038, 600, 255, 1),
(104443, 179527, 429, 1, 1, -51.4662, -358.168, -4.13823, 1.81514, 0, 0, 0.78801, 0.615662, 600, 255, 1),
(104444, 179527, 429, 1, 1, 21.9326, -409.795, -58.6142, 0, 0, 0, 0, 1, 600, 255, 1),
(104445, 179527, 429, 1, 1, 117.148, -408.461, -3.27357, 2.32129, 0, 0, 0.91706, 0.398748, 600, 255, 1),
(104446, 179527, 429, 1, 1, 102.549, -246.011, -56.3647, 0.785397, 0, 0, 0.382683, 0.92388, 600, 255, 1),
(104447, 179527, 429, 1, 1, 263.393, -568.436, -111.976, -2.67035, 0, 0, -0.972369, 0.233447, 600, 255, 1),
(104448, 179527, 429, 1, 1, 477.125, 307.609, 2.85288, 1.74533, 0, 0, 0.766045, 0.642787, 600, 255, 1),
(104449, 179527, 429, 1, 1, 423.649, -94.0369, -3.88739, -0.453785, 0, 0, -0.224951, 0.97437, 600, 255, 1),
(104450, 179527, 429, 1, 1, 4.90084, -450.306, -58.6294, 0, 0, 0, 0, 1, 600, 255, 1),
(104451, 179527, 429, 1, 1, 71.7209, -409.745, -4.21656, 3.12412, 0, 0, 0.999962, 0.00873622, 600, 255, 1),
(104452, 179527, 429, 1, 1, -27.7882, -388.435, -4.22943, 1.39626, 0, 0, 0.642786, 0.766046, 600, 255, 1),
(104453, 179527, 429, 1, 1, -42.6484, -341.5, -52.6547, 0.244346, 0, 0, 0.121869, 0.992546, 600, 255, 1),
(104454, 179527, 429, 1, 1, 34.9096, -365.079, -4.14052, 0.314158, 0, 0, 0.156434, 0.987688, 600, 255, 1),
(104455, 179527, 429, 1, 1, -114.736, -199.653, -4.1244, 0, 0, 0, 0, 1, 600, 255, 1),
(104456, 179527, 429, 1, 1, 101.961, -247.727, -4.01977, 2.84488, 0, 0, 0.989015, 0.147813, 600, 255, 1),
(104457, 179527, 429, 1, 1, 126.702, -248.335, -4.14639, -2.72271, 0, 0, -0.978147, 0.207914, 600, 255, 1),
(104458, 179527, 429, 1, 1, 66.2358, -633.758, -25.163, 3.05433, 0, 0, 0.999048, 0.0436193, 600, 255, 1),
(104459, 179527, 429, 1, 1, -6.16094, -433.403, -4.22212, 0, 0, 0, 0, 1, 600, 255, 1),
(104460, 179527, 429, 1, 1, 2.64945, -210.379, -52.3845, -0.95993, 0, 0, -0.461748, 0.887011, 600, 255, 1),
(104461, 179527, 429, 1, 1, -168.655, -271.912, -4.12082, -0.750491, 0, 0, -0.366501, 0.930418, 600, 255, 1),
(104462, 179527, 429, 1, 1, 55.8777, -438.434, -58.5981, -0.855211, 0, 0, -0.414693, 0.909961, 600, 255, 1),
(104463, 179527, 429, 1, 1, 59.0393, -760.028, -25.0955, -1.23918, 0, 0, -0.580703, 0.814116, 600, 255, 1),
(104464, 179527, 429, 1, 1, 71.7946, -437.261, -58.5956, 0.872664, 0, 0, 0.422618, 0.906308, 600, 255, 1),
(104465, 179527, 429, 1, 1, -28.3324, -385.063, -58.6181, 1.95477, 0, 0, 0.829038, 0.559192, 600, 255, 1),
(104466, 179527, 429, 1, 1, 47.8125, -334.275, -52.0553, -0.506145, 0, 0, -0.25038, 0.968148, 600, 255, 1),
(104467, 179527, 429, 1, 1, 353.105, -447.005, -90.0577, 0, 0, 0, 0, 1, 600, 255, 1),
(104468, 179527, 429, 1, 1, 509.725, 523.927, -25.4027, -2.80997, 0, 0, -0.986285, 0.165053, 600, 255, 1),
(104469, 179527, 429, 1, 1, 456.691, -47.364, -3.88702, -1.76278, 0, 0, -0.771624, 0.636079, 600, 255, 1),
(104470, 179527, 429, 1, 1, 34.5069, -391.211, -58.6112, -2.16421, 0, 0, -0.882948, 0.469471, 600, 255, 1),
(104471, 179527, 429, 1, 1, -12.3063, -396.872, -4.22113, -0.593412, 0, 0, -0.292372, 0.956305, 600, 255, 1),
(104472, 179527, 429, 1, 1, 127.199, -272.801, -4.14639, -1.93732, 0, 0, -0.824127, 0.566404, 600, 255, 1),
(104473, 179527, 429, 1, 1, -94.2365, -406.708, -58.6073, 0, 0, 0, 0, 1, 600, 255, 1),
(104474, 179527, 429, 1, 1, -112.021, -258.887, -56.2501, 0, 0, 0, 0, 1, 600, 255, 1),
(104475, 179527, 429, 1, 1, 134.767, -262.46, -4.14639, -0.488691, 0, 0, -0.241921, 0.970296, 600, 255, 1),
(104476, 179527, 429, 1, 1, -148.661, -210.009, -4.1514, 0.418879, 0, 0, 0.207912, 0.978148, 600, 255, 1),
(104477, 179527, 429, 1, 1, 32.7576, -775.236, -25.1416, -1.309, 0, 0, -0.608763, 0.793352, 600, 255, 1),
(104478, 179527, 429, 1, 1, -109.888, -404.549, -4.21786, -2.07694, 0, 0, -0.861629, 0.507539, 600, 255, 1),
(104479, 179527, 429, 1, 1, -61.5861, -306.311, -55.7067, 2.33874, 0, 0, 0.920505, 0.390732, 600, 255, 1),
(104480, 179527, 429, 1, 1, -7.83484, -199.983, -4.12879, -0.453785, 0, 0, -0.224951, 0.97437, 600, 255, 1),
(104481, 179527, 429, 1, 1, 64.8074, -400.448, -58.6044, -0.628317, 0, 0, -0.309016, 0.951057, 600, 255, 1),
(104482, 179527, 429, 1, 1, 44.9141, -626.477, -25.1061, -2.47837, 0, 0, -0.945519, 0.325567, 600, 255, 1),
(104483, 179527, 429, 1, 1, 66.1826, -315.416, -54.2518, 0, 0, 0, 0, 1, 600, 255, 1),
(104484, 179527, 429, 1, 1, 242.178, -420.788, -119.962, -0.069812, 0, 0, -0.0348988, 0.999391, 600, 255, 1),
(104485, 179527, 429, 1, 1, 490.501, 551.961, -25.381, -0.418879, 0, 0, -0.207912, 0.978148, 600, 255, 1),
(104486, 179527, 429, 1, 1, 468.448, 258.01, 6.34532, 1.02974, 0, 0, 0.492422, 0.870357, 600, 255, 1),
(104487, 179527, 429, 1, 1, -5.54965, -393.198, -58.6137, -0.209439, 0, 0, -0.104528, 0.994522, 600, 255, 1),
(104488, 179527, 429, 1, 1, -124.622, -234.072, -55.1133, -0.314158, 0, 0, -0.156434, 0.987688, 600, 255, 1),
(104489, 179527, 429, 1, 1, 119.36, -336.64, -4.14986, -1.44862, 0, 0, -0.662619, 0.748957, 600, 255, 1),
(104490, 179527, 429, 1, 1, -75.923, -358.893, -4.14481, 2.87979, 0, 0, 0.991445, 0.130528, 600, 255, 1),
(104491, 179527, 429, 1, 1, 41.8712, -744.931, -25.1339, 0.104719, 0, 0, 0.0523356, 0.99863, 600, 255, 1),
(104492, 179527, 429, 1, 1, 36.7851, -402.629, -4.21849, -2.49582, 0, 0, -0.948323, 0.317306, 600, 255, 1),
(104493, 179527, 429, 1, 1, -14.44, -309.911, -52.1458, 0, 0, 0, 0, 1, 600, 255, 1),
(104494, 179527, 429, 1, 1, 126.758, -296.278, -4.14639, -1.95477, 0, 0, -0.829037, 0.559194, 600, 255, 1),
(104495, 179527, 429, 1, 1, -32.8264, -463.171, -58.6176, 0.488691, 0, 0, 0.241921, 0.970296, 600, 255, 1),
(104496, 179527, 429, 1, 1, 17.3334, -704.192, -12.6426, -2.19912, 0, 0, -0.891008, 0.453988, 600, 255, 1),
(104497, 179527, 429, 1, 1, 50.4484, -241.885, -53.2931, 1.8675, 0, 0, 0.803856, 0.594824, 600, 255, 1),
(104498, 179527, 429, 1, 1, 189.484, -482.115, -100.601, 1.93731, 0, 0, 0.824125, 0.566409, 600, 255, 1),
(104499, 179527, 429, 1, 1, 423.59, 262.49, 11.1475, 0, 0, 0, 0, 1, 600, 255, 1),
(104500, 179527, 429, 1, 1, 475.207, -104.252, -3.88595, -1.32645, 0, 0, -0.615661, 0.788011, 600, 255, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(104761, 179531, 429, 1, 1, -27.0036, -404.283, -58.614, 0.226892, 0, 0, 0.113203, 0.993572, 600, 255, 1),
(104762, 179531, 429, 1, 1, -131.851, -319.414, -56.7906, 0.244346, 0, 0, 0.121869, 0.992546, 600, 255, 1),
(104763, 179531, 429, 1, 1, -22.3061, -349.882, -4.07224, -2.02458, 0, 0, -0.848047, 0.529921, 600, 255, 1),
(104764, 179531, 429, 1, 1, -156.299, -321.1, -4.14717, 1.25664, 0, 0, 0.587786, 0.809016, 600, 255, 1),
(104765, 179531, 429, 1, 1, 31.0736, -681.584, -25.1616, 0, 0, 0, 0, 1, 600, 255, 1),
(104766, 179531, 429, 1, 1, 36.7152, -467.008, -4.24876, 1.58825, 0, 0, 0.713251, 0.700909, 600, 255, 1),
(104767, 179531, 429, 1, 1, -10.2151, -349.267, -53.8632, 2.05949, 0, 0, 0.857167, 0.515038, 600, 255, 1),
(104768, 179531, 429, 1, 1, -51.4662, -358.168, -4.13823, 1.81514, 0, 0, 0.78801, 0.615662, 600, 255, 1),
(104769, 179531, 429, 1, 1, 21.9326, -409.795, -58.6142, 0, 0, 0, 0, 1, 600, 255, 1),
(104770, 179531, 429, 1, 1, 117.148, -408.461, -3.27357, 2.32129, 0, 0, 0.91706, 0.398748, 600, 255, 1),
(104771, 179531, 429, 1, 1, 102.549, -246.011, -56.3647, 0.785397, 0, 0, 0.382683, 0.92388, 600, 255, 1),
(104772, 179531, 429, 1, 1, 263.393, -568.436, -111.976, -2.67035, 0, 0, -0.972369, 0.233447, 600, 255, 1),
(104773, 179531, 429, 1, 1, 477.125, 307.609, 2.85288, 1.74533, 0, 0, 0.766045, 0.642787, 600, 255, 1),
(104774, 179531, 429, 1, 1, 423.649, -94.0369, -3.88739, -0.453785, 0, 0, -0.224951, 0.97437, 600, 255, 1),
(104775, 179531, 429, 1, 1, 4.90084, -450.306, -58.6294, 0, 0, 0, 0, 1, 600, 255, 1),
(104776, 179531, 429, 1, 1, 71.7209, -409.745, -4.21656, 3.12412, 0, 0, 0.999962, 0.00873622, 600, 255, 1),
(104777, 179531, 429, 1, 1, -27.7882, -388.435, -4.22943, 1.39626, 0, 0, 0.642786, 0.766046, 600, 255, 1),
(104778, 179531, 429, 1, 1, -42.6484, -341.5, -52.6547, 0.244346, 0, 0, 0.121869, 0.992546, 600, 255, 1),
(104779, 179531, 429, 1, 1, 34.9096, -365.079, -4.14052, 0.314158, 0, 0, 0.156434, 0.987688, 600, 255, 1),
(104780, 179531, 429, 1, 1, -114.736, -199.653, -4.1244, 0, 0, 0, 0, 1, 600, 255, 1),
(104781, 179531, 429, 1, 1, 101.961, -247.727, -4.01977, 2.84488, 0, 0, 0.989015, 0.147813, 600, 255, 1),
(104782, 179531, 429, 1, 1, 126.702, -248.335, -4.14639, -2.72271, 0, 0, -0.978147, 0.207914, 600, 255, 1),
(104783, 179531, 429, 1, 1, 66.2358, -633.758, -25.163, 3.05433, 0, 0, 0.999048, 0.0436193, 600, 255, 1),
(104784, 179531, 429, 1, 1, -6.16094, -433.403, -4.22212, 0, 0, 0, 0, 1, 600, 255, 1),
(104785, 179531, 429, 1, 1, 2.64945, -210.379, -52.3845, -0.95993, 0, 0, -0.461748, 0.887011, 600, 255, 1),
(104786, 179531, 429, 1, 1, -168.655, -271.912, -4.12082, -0.750491, 0, 0, -0.366501, 0.930418, 600, 255, 1),
(104787, 179531, 429, 1, 1, 55.8777, -438.434, -58.5981, -0.855211, 0, 0, -0.414693, 0.909961, 600, 255, 1),
(104788, 179531, 429, 1, 1, 59.0393, -760.028, -25.0955, -1.23918, 0, 0, -0.580703, 0.814116, 600, 255, 1),
(104789, 179531, 429, 1, 1, 71.7946, -437.261, -58.5956, 0.872664, 0, 0, 0.422618, 0.906308, 600, 255, 1),
(104790, 179531, 429, 1, 1, -28.3324, -385.063, -58.6181, 1.95477, 0, 0, 0.829038, 0.559192, 600, 255, 1),
(104791, 179531, 429, 1, 1, 47.8125, -334.275, -52.0553, -0.506145, 0, 0, -0.25038, 0.968148, 600, 255, 1),
(104792, 179531, 429, 1, 1, 353.105, -447.005, -90.0577, 0, 0, 0, 0, 1, 600, 255, 1),
(104793, 179531, 429, 1, 1, 509.725, 523.927, -25.4027, -2.80997, 0, 0, -0.986285, 0.165053, 600, 255, 1),
(104794, 179531, 429, 1, 1, 456.691, -47.364, -3.88702, -1.76278, 0, 0, -0.771624, 0.636079, 600, 255, 1),
(104795, 179531, 429, 1, 1, 34.5069, -391.211, -58.6112, -2.16421, 0, 0, -0.882948, 0.469471, 600, 255, 1),
(104796, 179531, 429, 1, 1, -12.3063, -396.872, -4.22113, -0.593412, 0, 0, -0.292372, 0.956305, 600, 255, 1),
(104797, 179531, 429, 1, 1, 127.199, -272.801, -4.14639, -1.93732, 0, 0, -0.824127, 0.566404, 600, 255, 1),
(104798, 179531, 429, 1, 1, -94.2365, -406.708, -58.6073, 0, 0, 0, 0, 1, 600, 255, 1),
(104799, 179531, 429, 1, 1, -112.021, -258.887, -56.2501, 0, 0, 0, 0, 1, 600, 255, 1),
(104800, 179531, 429, 1, 1, 134.767, -262.46, -4.14639, -0.488691, 0, 0, -0.241921, 0.970296, 600, 255, 1),
(104801, 179531, 429, 1, 1, -148.661, -210.009, -4.1514, 0.418879, 0, 0, 0.207912, 0.978148, 600, 255, 1),
(104802, 179531, 429, 1, 1, 32.7576, -775.236, -25.1416, -1.309, 0, 0, -0.608763, 0.793352, 600, 255, 1),
(104803, 179531, 429, 1, 1, -109.888, -404.549, -4.21786, -2.07694, 0, 0, -0.861629, 0.507539, 600, 255, 1),
(104804, 179531, 429, 1, 1, -61.5861, -306.311, -55.7067, 2.33874, 0, 0, 0.920505, 0.390732, 600, 255, 1),
(104805, 179531, 429, 1, 1, -7.83484, -199.983, -4.12879, -0.453785, 0, 0, -0.224951, 0.97437, 600, 255, 1),
(104806, 179531, 429, 1, 1, 64.8074, -400.448, -58.6044, -0.628317, 0, 0, -0.309016, 0.951057, 600, 255, 1),
(104807, 179531, 429, 1, 1, 44.9141, -626.477, -25.1061, -2.47837, 0, 0, -0.945519, 0.325567, 600, 255, 1),
(104808, 179531, 429, 1, 1, 66.1826, -315.416, -54.2518, 0, 0, 0, 0, 1, 600, 255, 1),
(104809, 179531, 429, 1, 1, 242.178, -420.788, -119.962, -0.069812, 0, 0, -0.0348988, 0.999391, 600, 255, 1),
(104810, 179531, 429, 1, 1, 490.501, 551.961, -25.381, -0.418879, 0, 0, -0.207912, 0.978148, 600, 255, 1),
(104811, 179531, 429, 1, 1, 468.448, 258.01, 6.34532, 1.02974, 0, 0, 0.492422, 0.870357, 600, 255, 1),
(104812, 179531, 429, 1, 1, -5.54965, -393.198, -58.6137, -0.209439, 0, 0, -0.104528, 0.994522, 600, 255, 1),
(104813, 179531, 429, 1, 1, -124.622, -234.072, -55.1133, -0.314158, 0, 0, -0.156434, 0.987688, 600, 255, 1),
(104814, 179531, 429, 1, 1, 119.36, -336.64, -4.14986, -1.44862, 0, 0, -0.662619, 0.748957, 600, 255, 1),
(104815, 179531, 429, 1, 1, -75.923, -358.893, -4.14481, 2.87979, 0, 0, 0.991445, 0.130528, 600, 255, 1),
(104816, 179531, 429, 1, 1, 41.8712, -744.931, -25.1339, 0.104719, 0, 0, 0.0523356, 0.99863, 600, 255, 1),
(104817, 179531, 429, 1, 1, 36.7851, -402.629, -4.21849, -2.49582, 0, 0, -0.948323, 0.317306, 600, 255, 1),
(104818, 179531, 429, 1, 1, -14.44, -309.911, -52.1458, 0, 0, 0, 0, 1, 600, 255, 1),
(104819, 179531, 429, 1, 1, 126.758, -296.278, -4.14639, -1.95477, 0, 0, -0.829037, 0.559194, 600, 255, 1),
(104820, 179531, 429, 1, 1, -32.8264, -463.171, -58.6176, 0.488691, 0, 0, 0.241921, 0.970296, 600, 255, 1),
(104821, 179531, 429, 1, 1, 17.3334, -704.192, -12.6426, -2.19912, 0, 0, -0.891008, 0.453988, 600, 255, 1),
(104822, 179531, 429, 1, 1, 50.4484, -241.885, -53.2931, 1.8675, 0, 0, 0.803856, 0.594824, 600, 255, 1),
(104823, 179531, 429, 1, 1, 189.484, -482.115, -100.601, 1.93731, 0, 0, 0.824125, 0.566409, 600, 255, 1),
(104824, 179531, 429, 1, 1, 423.59, 262.49, 11.1475, 0, 0, 0, 0, 1, 600, 255, 1),
(104825, 179531, 429, 1, 1, 475.207, -104.252, -3.88595, -1.32645, 0, 0, -0.615661, 0.788011, 600, 255, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(48760, 179526, 429, 1, 1, -27.0036, -404.283, -58.614, 0.226892, 0, 0, 0.113203, 0.993572, 600, 255, 1),
(48761, 179526, 429, 1, 1, -131.851, -319.414, -56.7906, 0.244346, 0, 0, 0.121869, 0.992546, 600, 255, 1),
(48762, 179526, 429, 1, 1, -22.3061, -349.882, -4.07224, -2.02458, 0, 0, -0.848047, 0.529921, 600, 255, 1),
(48763, 179526, 429, 1, 1, -156.299, -321.1, -4.14717, 1.25664, 0, 0, 0.587786, 0.809016, 600, 255, 1),
(48764, 179526, 429, 1, 1, 31.0736, -681.584, -25.1616, 0, 0, 0, 0, 1, 600, 255, 1),
(48765, 179526, 429, 1, 1, 36.7152, -467.008, -4.24876, 1.58825, 0, 0, 0.713251, 0.700909, 600, 255, 1),
(48766, 179526, 429, 1, 1, -10.2151, -349.267, -53.8632, 2.05949, 0, 0, 0.857167, 0.515038, 600, 255, 1),
(48767, 179526, 429, 1, 1, -51.4662, -358.168, -4.13823, 1.81514, 0, 0, 0.78801, 0.615662, 600, 255, 1),
(48768, 179526, 429, 1, 1, 21.9326, -409.795, -58.6142, 0, 0, 0, 0, 1, 600, 255, 1),
(48769, 179526, 429, 1, 1, 117.148, -408.461, -3.27357, 2.32129, 0, 0, 0.91706, 0.398748, 600, 255, 1),
(48770, 179526, 429, 1, 1, 102.549, -246.011, -56.3647, 0.785397, 0, 0, 0.382683, 0.92388, 600, 255, 1),
(48771, 179526, 429, 1, 1, 263.393, -568.436, -111.976, -2.67035, 0, 0, -0.972369, 0.233447, 600, 255, 1),
(48772, 179526, 429, 1, 1, 477.125, 307.609, 2.85288, 1.74533, 0, 0, 0.766045, 0.642787, 600, 255, 1),
(48773, 179526, 429, 1, 1, 423.649, -94.0369, -3.88739, -0.453785, 0, 0, -0.224951, 0.97437, 600, 255, 1),
(48774, 179526, 429, 1, 1, 4.90084, -450.306, -58.6294, 0, 0, 0, 0, 1, 600, 255, 1),
(48775, 179526, 429, 1, 1, 71.7209, -409.745, -4.21656, 3.12412, 0, 0, 0.999962, 0.00873622, 600, 255, 1),
(48776, 179526, 429, 1, 1, -27.7882, -388.435, -4.22943, 1.39626, 0, 0, 0.642786, 0.766046, 600, 255, 1),
(48777, 179526, 429, 1, 1, -42.6484, -341.5, -52.6547, 0.244346, 0, 0, 0.121869, 0.992546, 600, 255, 1),
(48778, 179526, 429, 1, 1, 34.9096, -365.079, -4.14052, 0.314158, 0, 0, 0.156434, 0.987688, 600, 255, 1),
(48779, 179526, 429, 1, 1, -114.736, -199.653, -4.1244, 0, 0, 0, 0, 1, 600, 255, 1),
(48780, 179526, 429, 1, 1, 101.961, -247.727, -4.01977, 2.84488, 0, 0, 0.989015, 0.147813, 600, 255, 1),
(48781, 179526, 429, 1, 1, 126.702, -248.335, -4.14639, -2.72271, 0, 0, -0.978147, 0.207914, 600, 255, 1),
(48782, 179526, 429, 1, 1, 66.2358, -633.758, -25.163, 3.05433, 0, 0, 0.999048, 0.0436193, 600, 255, 1),
(48783, 179526, 429, 1, 1, -6.16094, -433.403, -4.22212, 0, 0, 0, 0, 1, 600, 255, 1),
(48784, 179526, 429, 1, 1, 2.64945, -210.379, -52.3845, -0.95993, 0, 0, -0.461748, 0.887011, 600, 255, 1),
(48785, 179526, 429, 1, 1, -168.655, -271.912, -4.12082, -0.750491, 0, 0, -0.366501, 0.930418, 600, 255, 1),
(48786, 179526, 429, 1, 1, 55.8777, -438.434, -58.5981, -0.855211, 0, 0, -0.414693, 0.909961, 600, 255, 1),
(48787, 179526, 429, 1, 1, 59.0393, -760.028, -25.0955, -1.23918, 0, 0, -0.580703, 0.814116, 600, 255, 1),
(48788, 179526, 429, 1, 1, 71.7946, -437.261, -58.5956, 0.872664, 0, 0, 0.422618, 0.906308, 600, 255, 1),
(48789, 179526, 429, 1, 1, -28.3324, -385.063, -58.6181, 1.95477, 0, 0, 0.829038, 0.559192, 600, 255, 1),
(48790, 179526, 429, 1, 1, 47.8125, -334.275, -52.0553, -0.506145, 0, 0, -0.25038, 0.968148, 600, 255, 1),
(48791, 179526, 429, 1, 1, 353.105, -447.005, -90.0577, 0, 0, 0, 0, 1, 600, 255, 1),
(48792, 179526, 429, 1, 1, 509.725, 523.927, -25.4027, -2.80997, 0, 0, -0.986285, 0.165053, 600, 255, 1),
(48793, 179526, 429, 1, 1, 456.691, -47.364, -3.88702, -1.76278, 0, 0, -0.771624, 0.636079, 600, 255, 1),
(48794, 179526, 429, 1, 1, 34.5069, -391.211, -58.6112, -2.16421, 0, 0, -0.882948, 0.469471, 600, 255, 1),
(48795, 179526, 429, 1, 1, -12.3063, -396.872, -4.22113, -0.593412, 0, 0, -0.292372, 0.956305, 600, 255, 1),
(48796, 179526, 429, 1, 1, 127.199, -272.801, -4.14639, -1.93732, 0, 0, -0.824127, 0.566404, 600, 255, 1),
(48797, 179526, 429, 1, 1, -94.2365, -406.708, -58.6073, 0, 0, 0, 0, 1, 600, 255, 1),
(48798, 179526, 429, 1, 1, -112.021, -258.887, -56.2501, 0, 0, 0, 0, 1, 600, 255, 1),
(48799, 179526, 429, 1, 1, 134.767, -262.46, -4.14639, -0.488691, 0, 0, -0.241921, 0.970296, 600, 255, 1),
(48800, 179526, 429, 1, 1, -148.661, -210.009, -4.1514, 0.418879, 0, 0, 0.207912, 0.978148, 600, 255, 1),
(48801, 179526, 429, 1, 1, 32.7576, -775.236, -25.1416, -1.309, 0, 0, -0.608763, 0.793352, 600, 255, 1),
(48802, 179526, 429, 1, 1, -109.888, -404.549, -4.21786, -2.07694, 0, 0, -0.861629, 0.507539, 600, 255, 1),
(48803, 179526, 429, 1, 1, -61.5861, -306.311, -55.7067, 2.33874, 0, 0, 0.920505, 0.390732, 600, 255, 1),
(48804, 179526, 429, 1, 1, -7.83484, -199.983, -4.12879, -0.453785, 0, 0, -0.224951, 0.97437, 600, 255, 1),
(48805, 179526, 429, 1, 1, 64.8074, -400.448, -58.6044, -0.628317, 0, 0, -0.309016, 0.951057, 600, 255, 1),
(48806, 179526, 429, 1, 1, 44.9141, -626.477, -25.1061, -2.47837, 0, 0, -0.945519, 0.325567, 600, 255, 1),
(48807, 179526, 429, 1, 1, 66.1826, -315.416, -54.2518, 0, 0, 0, 0, 1, 600, 255, 1),
(48808, 179526, 429, 1, 1, 242.178, -420.788, -119.962, -0.069812, 0, 0, -0.0348988, 0.999391, 600, 255, 1),
(48809, 179526, 429, 1, 1, 490.501, 551.961, -25.381, -0.418879, 0, 0, -0.207912, 0.978148, 600, 255, 1),
(48810, 179526, 429, 1, 1, 468.448, 258.01, 6.34532, 1.02974, 0, 0, 0.492422, 0.870357, 600, 255, 1),
(48811, 179526, 429, 1, 1, -5.54965, -393.198, -58.6137, -0.209439, 0, 0, -0.104528, 0.994522, 600, 255, 1),
(48812, 179526, 429, 1, 1, -124.622, -234.072, -55.1133, -0.314158, 0, 0, -0.156434, 0.987688, 600, 255, 1),
(48813, 179526, 429, 1, 1, 119.36, -336.64, -4.14986, -1.44862, 0, 0, -0.662619, 0.748957, 600, 255, 1),
(48814, 179526, 429, 1, 1, -75.923, -358.893, -4.14481, 2.87979, 0, 0, 0.991445, 0.130528, 600, 255, 1),
(48815, 179526, 429, 1, 1, 41.8712, -744.931, -25.1339, 0.104719, 0, 0, 0.0523356, 0.99863, 600, 255, 1),
(7688, 179526, 429, 1, 1, 36.7851, -402.629, -4.21849, -2.49582, 0, 0, -0.948323, 0.317306, 600, 255, 1),
(7689, 179526, 429, 1, 1, -14.44, -309.911, -52.1458, 0, 0, 0, 0, 1, 600, 255, 1),
(7692, 179526, 429, 1, 1, 126.758, -296.278, -4.14639, -1.95477, 0, 0, -0.829037, 0.559194, 600, 255, 1),
(7694, 179526, 429, 1, 1, -32.8264, -463.171, -58.6176, 0.488691, 0, 0, 0.241921, 0.970296, 600, 255, 1),
(7695, 179526, 429, 1, 1, 17.3334, -704.192, -12.6426, -2.19912, 0, 0, -0.891008, 0.453988, 600, 255, 1),
(7698, 179526, 429, 1, 1, 50.4484, -241.885, -53.2931, 1.8675, 0, 0, 0.803856, 0.594824, 600, 255, 1),
(7699, 179526, 429, 1, 1, 189.484, -482.115, -100.601, 1.93731, 0, 0, 0.824125, 0.566409, 600, 255, 1),
(7700, 179526, 429, 1, 1, 423.59, 262.49, 11.1475, 0, 0, 0, 0, 1, 600, 255, 1),
(7704, 179526, 429, 1, 1, 475.207, -104.252, -3.88595, -1.32645, 0, 0, -0.615661, 0.788011, 600, 255, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(104501, 179528, 429, 1, 1, -27.0036, -404.283, -58.614, 0.226892, 0, 0, 0.113203, 0.993572, 600, 255, 1),
(104502, 179528, 429, 1, 1, -131.851, -319.414, -56.7906, 0.244346, 0, 0, 0.121869, 0.992546, 600, 255, 1),
(104503, 179528, 429, 1, 1, -22.3061, -349.882, -4.07224, -2.02458, 0, 0, -0.848047, 0.529921, 600, 255, 1),
(104504, 179528, 429, 1, 1, -156.299, -321.1, -4.14717, 1.25664, 0, 0, 0.587786, 0.809016, 600, 255, 1),
(104505, 179528, 429, 1, 1, 31.0736, -681.584, -25.1616, 0, 0, 0, 0, 1, 600, 255, 1),
(104506, 179528, 429, 1, 1, 36.7152, -467.008, -4.24876, 1.58825, 0, 0, 0.713251, 0.700909, 600, 255, 1),
(104507, 179528, 429, 1, 1, -10.2151, -349.267, -53.8632, 2.05949, 0, 0, 0.857167, 0.515038, 600, 255, 1),
(104508, 179528, 429, 1, 1, -51.4662, -358.168, -4.13823, 1.81514, 0, 0, 0.78801, 0.615662, 600, 255, 1),
(104509, 179528, 429, 1, 1, 21.9326, -409.795, -58.6142, 0, 0, 0, 0, 1, 600, 255, 1),
(104510, 179528, 429, 1, 1, 117.148, -408.461, -3.27357, 2.32129, 0, 0, 0.91706, 0.398748, 600, 255, 1),
(104511, 179528, 429, 1, 1, 102.549, -246.011, -56.3647, 0.785397, 0, 0, 0.382683, 0.92388, 600, 255, 1),
(104512, 179528, 429, 1, 1, 263.393, -568.436, -111.976, -2.67035, 0, 0, -0.972369, 0.233447, 600, 255, 1),
(104513, 179528, 429, 1, 1, 477.125, 307.609, 2.85288, 1.74533, 0, 0, 0.766045, 0.642787, 600, 255, 1),
(104514, 179528, 429, 1, 1, 423.649, -94.0369, -3.88739, -0.453785, 0, 0, -0.224951, 0.97437, 600, 255, 1),
(104515, 179528, 429, 1, 1, 4.90084, -450.306, -58.6294, 0, 0, 0, 0, 1, 600, 255, 1),
(104516, 179528, 429, 1, 1, 71.7209, -409.745, -4.21656, 3.12412, 0, 0, 0.999962, 0.00873622, 600, 255, 1),
(104517, 179528, 429, 1, 1, -27.7882, -388.435, -4.22943, 1.39626, 0, 0, 0.642786, 0.766046, 600, 255, 1),
(104518, 179528, 429, 1, 1, -42.6484, -341.5, -52.6547, 0.244346, 0, 0, 0.121869, 0.992546, 600, 255, 1),
(104519, 179528, 429, 1, 1, 34.9096, -365.079, -4.14052, 0.314158, 0, 0, 0.156434, 0.987688, 600, 255, 1),
(104520, 179528, 429, 1, 1, -114.736, -199.653, -4.1244, 0, 0, 0, 0, 1, 600, 255, 1),
(104521, 179528, 429, 1, 1, 101.961, -247.727, -4.01977, 2.84488, 0, 0, 0.989015, 0.147813, 600, 255, 1),
(104522, 179528, 429, 1, 1, 126.702, -248.335, -4.14639, -2.72271, 0, 0, -0.978147, 0.207914, 600, 255, 1),
(104523, 179528, 429, 1, 1, 66.2358, -633.758, -25.163, 3.05433, 0, 0, 0.999048, 0.0436193, 600, 255, 1),
(104524, 179528, 429, 1, 1, -6.16094, -433.403, -4.22212, 0, 0, 0, 0, 1, 600, 255, 1),
(104525, 179528, 429, 1, 1, 2.64945, -210.379, -52.3845, -0.95993, 0, 0, -0.461748, 0.887011, 600, 255, 1),
(104526, 179528, 429, 1, 1, -168.655, -271.912, -4.12082, -0.750491, 0, 0, -0.366501, 0.930418, 600, 255, 1),
(104527, 179528, 429, 1, 1, 55.8777, -438.434, -58.5981, -0.855211, 0, 0, -0.414693, 0.909961, 600, 255, 1),
(104528, 179528, 429, 1, 1, 59.0393, -760.028, -25.0955, -1.23918, 0, 0, -0.580703, 0.814116, 600, 255, 1),
(104529, 179528, 429, 1, 1, 71.7946, -437.261, -58.5956, 0.872664, 0, 0, 0.422618, 0.906308, 600, 255, 1),
(104530, 179528, 429, 1, 1, -28.3324, -385.063, -58.6181, 1.95477, 0, 0, 0.829038, 0.559192, 600, 255, 1),
(104531, 179528, 429, 1, 1, 47.8125, -334.275, -52.0553, -0.506145, 0, 0, -0.25038, 0.968148, 600, 255, 1),
(104532, 179528, 429, 1, 1, 353.105, -447.005, -90.0577, 0, 0, 0, 0, 1, 600, 255, 1),
(104533, 179528, 429, 1, 1, 509.725, 523.927, -25.4027, -2.80997, 0, 0, -0.986285, 0.165053, 600, 255, 1),
(104534, 179528, 429, 1, 1, 456.691, -47.364, -3.88702, -1.76278, 0, 0, -0.771624, 0.636079, 600, 255, 1),
(104535, 179528, 429, 1, 1, 34.5069, -391.211, -58.6112, -2.16421, 0, 0, -0.882948, 0.469471, 600, 255, 1),
(104536, 179528, 429, 1, 1, -12.3063, -396.872, -4.22113, -0.593412, 0, 0, -0.292372, 0.956305, 600, 255, 1),
(104537, 179528, 429, 1, 1, 127.199, -272.801, -4.14639, -1.93732, 0, 0, -0.824127, 0.566404, 600, 255, 1),
(104538, 179528, 429, 1, 1, -94.2365, -406.708, -58.6073, 0, 0, 0, 0, 1, 600, 255, 1),
(104539, 179528, 429, 1, 1, -112.021, -258.887, -56.2501, 0, 0, 0, 0, 1, 600, 255, 1),
(104540, 179528, 429, 1, 1, 134.767, -262.46, -4.14639, -0.488691, 0, 0, -0.241921, 0.970296, 600, 255, 1),
(104541, 179528, 429, 1, 1, -148.661, -210.009, -4.1514, 0.418879, 0, 0, 0.207912, 0.978148, 600, 255, 1),
(104542, 179528, 429, 1, 1, 32.7576, -775.236, -25.1416, -1.309, 0, 0, -0.608763, 0.793352, 600, 255, 1),
(104543, 179528, 429, 1, 1, -109.888, -404.549, -4.21786, -2.07694, 0, 0, -0.861629, 0.507539, 600, 255, 1),
(104544, 179528, 429, 1, 1, -61.5861, -306.311, -55.7067, 2.33874, 0, 0, 0.920505, 0.390732, 600, 255, 1),
(104545, 179528, 429, 1, 1, -7.83484, -199.983, -4.12879, -0.453785, 0, 0, -0.224951, 0.97437, 600, 255, 1),
(104546, 179528, 429, 1, 1, 64.8074, -400.448, -58.6044, -0.628317, 0, 0, -0.309016, 0.951057, 600, 255, 1),
(104547, 179528, 429, 1, 1, 44.9141, -626.477, -25.1061, -2.47837, 0, 0, -0.945519, 0.325567, 600, 255, 1),
(104548, 179528, 429, 1, 1, 66.1826, -315.416, -54.2518, 0, 0, 0, 0, 1, 600, 255, 1),
(104549, 179528, 429, 1, 1, 242.178, -420.788, -119.962, -0.069812, 0, 0, -0.0348988, 0.999391, 600, 255, 1),
(104550, 179528, 429, 1, 1, 490.501, 551.961, -25.381, -0.418879, 0, 0, -0.207912, 0.978148, 600, 255, 1),
(104551, 179528, 429, 1, 1, 468.448, 258.01, 6.34532, 1.02974, 0, 0, 0.492422, 0.870357, 600, 255, 1),
(104552, 179528, 429, 1, 1, -5.54965, -393.198, -58.6137, -0.209439, 0, 0, -0.104528, 0.994522, 600, 255, 1),
(104553, 179528, 429, 1, 1, -124.622, -234.072, -55.1133, -0.314158, 0, 0, -0.156434, 0.987688, 600, 255, 1),
(104554, 179528, 429, 1, 1, 119.36, -336.64, -4.14986, -1.44862, 0, 0, -0.662619, 0.748957, 600, 255, 1),
(104555, 179528, 429, 1, 1, -75.923, -358.893, -4.14481, 2.87979, 0, 0, 0.991445, 0.130528, 600, 255, 1),
(104556, 179528, 429, 1, 1, 41.8712, -744.931, -25.1339, 0.104719, 0, 0, 0.0523356, 0.99863, 600, 255, 1),
(104557, 179528, 429, 1, 1, 36.7851, -402.629, -4.21849, -2.49582, 0, 0, -0.948323, 0.317306, 600, 255, 1),
(104558, 179528, 429, 1, 1, -14.44, -309.911, -52.1458, 0, 0, 0, 0, 1, 600, 255, 1),
(104559, 179528, 429, 1, 1, 126.758, -296.278, -4.14639, -1.95477, 0, 0, -0.829037, 0.559194, 600, 255, 1),
(104560, 179528, 429, 1, 1, -32.8264, -463.171, -58.6176, 0.488691, 0, 0, 0.241921, 0.970296, 600, 255, 1),
(104561, 179528, 429, 1, 1, 17.3334, -704.192, -12.6426, -2.19912, 0, 0, -0.891008, 0.453988, 600, 255, 1),
(104562, 179528, 429, 1, 1, 50.4484, -241.885, -53.2931, 1.8675, 0, 0, 0.803856, 0.594824, 600, 255, 1),
(104563, 179528, 429, 1, 1, 189.484, -482.115, -100.601, 1.93731, 0, 0, 0.824125, 0.566409, 600, 255, 1),
(104564, 179528, 429, 1, 1, 423.59, 262.49, 11.1475, 0, 0, 0, 0, 1, 600, 255, 1),
(104565, 179528, 429, 1, 1, 475.207, -104.252, -3.88595, -1.32645, 0, 0, -0.615661, 0.788011, 600, 255, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(104566, 179532, 429, 1, 1, -27.0036, -404.283, -58.614, 0.226892, 0, 0, 0.113203, 0.993572, 600, 255, 1),
(104567, 179532, 429, 1, 1, -131.851, -319.414, -56.7906, 0.244346, 0, 0, 0.121869, 0.992546, 600, 255, 1),
(104568, 179532, 429, 1, 1, -22.3061, -349.882, -4.07224, -2.02458, 0, 0, -0.848047, 0.529921, 600, 255, 1),
(104569, 179532, 429, 1, 1, -156.299, -321.1, -4.14717, 1.25664, 0, 0, 0.587786, 0.809016, 600, 255, 1),
(104570, 179532, 429, 1, 1, 31.0736, -681.584, -25.1616, 0, 0, 0, 0, 1, 600, 255, 1),
(104571, 179532, 429, 1, 1, 36.7152, -467.008, -4.24876, 1.58825, 0, 0, 0.713251, 0.700909, 600, 255, 1),
(104572, 179532, 429, 1, 1, -10.2151, -349.267, -53.8632, 2.05949, 0, 0, 0.857167, 0.515038, 600, 255, 1),
(104573, 179532, 429, 1, 1, -51.4662, -358.168, -4.13823, 1.81514, 0, 0, 0.78801, 0.615662, 600, 255, 1),
(104574, 179532, 429, 1, 1, 21.9326, -409.795, -58.6142, 0, 0, 0, 0, 1, 600, 255, 1),
(104575, 179532, 429, 1, 1, 117.148, -408.461, -3.27357, 2.32129, 0, 0, 0.91706, 0.398748, 600, 255, 1),
(104576, 179532, 429, 1, 1, 102.549, -246.011, -56.3647, 0.785397, 0, 0, 0.382683, 0.92388, 600, 255, 1),
(104577, 179532, 429, 1, 1, 263.393, -568.436, -111.976, -2.67035, 0, 0, -0.972369, 0.233447, 600, 255, 1),
(104578, 179532, 429, 1, 1, 477.125, 307.609, 2.85288, 1.74533, 0, 0, 0.766045, 0.642787, 600, 255, 1),
(104579, 179532, 429, 1, 1, 423.649, -94.0369, -3.88739, -0.453785, 0, 0, -0.224951, 0.97437, 600, 255, 1),
(104580, 179532, 429, 1, 1, 4.90084, -450.306, -58.6294, 0, 0, 0, 0, 1, 600, 255, 1),
(104581, 179532, 429, 1, 1, 71.7209, -409.745, -4.21656, 3.12412, 0, 0, 0.999962, 0.00873622, 600, 255, 1),
(104582, 179532, 429, 1, 1, -27.7882, -388.435, -4.22943, 1.39626, 0, 0, 0.642786, 0.766046, 600, 255, 1),
(104583, 179532, 429, 1, 1, -42.6484, -341.5, -52.6547, 0.244346, 0, 0, 0.121869, 0.992546, 600, 255, 1),
(104584, 179532, 429, 1, 1, 34.9096, -365.079, -4.14052, 0.314158, 0, 0, 0.156434, 0.987688, 600, 255, 1),
(104585, 179532, 429, 1, 1, -114.736, -199.653, -4.1244, 0, 0, 0, 0, 1, 600, 255, 1),
(104586, 179532, 429, 1, 1, 101.961, -247.727, -4.01977, 2.84488, 0, 0, 0.989015, 0.147813, 600, 255, 1),
(104587, 179532, 429, 1, 1, 126.702, -248.335, -4.14639, -2.72271, 0, 0, -0.978147, 0.207914, 600, 255, 1),
(104588, 179532, 429, 1, 1, 66.2358, -633.758, -25.163, 3.05433, 0, 0, 0.999048, 0.0436193, 600, 255, 1),
(104589, 179532, 429, 1, 1, -6.16094, -433.403, -4.22212, 0, 0, 0, 0, 1, 600, 255, 1),
(104590, 179532, 429, 1, 1, 2.64945, -210.379, -52.3845, -0.95993, 0, 0, -0.461748, 0.887011, 600, 255, 1),
(104591, 179532, 429, 1, 1, -168.655, -271.912, -4.12082, -0.750491, 0, 0, -0.366501, 0.930418, 600, 255, 1),
(104592, 179532, 429, 1, 1, 55.8777, -438.434, -58.5981, -0.855211, 0, 0, -0.414693, 0.909961, 600, 255, 1),
(104593, 179532, 429, 1, 1, 59.0393, -760.028, -25.0955, -1.23918, 0, 0, -0.580703, 0.814116, 600, 255, 1),
(104594, 179532, 429, 1, 1, 71.7946, -437.261, -58.5956, 0.872664, 0, 0, 0.422618, 0.906308, 600, 255, 1),
(104595, 179532, 429, 1, 1, -28.3324, -385.063, -58.6181, 1.95477, 0, 0, 0.829038, 0.559192, 600, 255, 1),
(104596, 179532, 429, 1, 1, 47.8125, -334.275, -52.0553, -0.506145, 0, 0, -0.25038, 0.968148, 600, 255, 1),
(104597, 179532, 429, 1, 1, 353.105, -447.005, -90.0577, 0, 0, 0, 0, 1, 600, 255, 1),
(104598, 179532, 429, 1, 1, 509.725, 523.927, -25.4027, -2.80997, 0, 0, -0.986285, 0.165053, 600, 255, 1),
(104599, 179532, 429, 1, 1, 456.691, -47.364, -3.88702, -1.76278, 0, 0, -0.771624, 0.636079, 600, 255, 1),
(104600, 179532, 429, 1, 1, 34.5069, -391.211, -58.6112, -2.16421, 0, 0, -0.882948, 0.469471, 600, 255, 1),
(104601, 179532, 429, 1, 1, -12.3063, -396.872, -4.22113, -0.593412, 0, 0, -0.292372, 0.956305, 600, 255, 1),
(104602, 179532, 429, 1, 1, 127.199, -272.801, -4.14639, -1.93732, 0, 0, -0.824127, 0.566404, 600, 255, 1),
(104603, 179532, 429, 1, 1, -94.2365, -406.708, -58.6073, 0, 0, 0, 0, 1, 600, 255, 1),
(104604, 179532, 429, 1, 1, -112.021, -258.887, -56.2501, 0, 0, 0, 0, 1, 600, 255, 1),
(104605, 179532, 429, 1, 1, 134.767, -262.46, -4.14639, -0.488691, 0, 0, -0.241921, 0.970296, 600, 255, 1),
(104606, 179532, 429, 1, 1, -148.661, -210.009, -4.1514, 0.418879, 0, 0, 0.207912, 0.978148, 600, 255, 1),
(104607, 179532, 429, 1, 1, 32.7576, -775.236, -25.1416, -1.309, 0, 0, -0.608763, 0.793352, 600, 255, 1),
(104608, 179532, 429, 1, 1, -109.888, -404.549, -4.21786, -2.07694, 0, 0, -0.861629, 0.507539, 600, 255, 1),
(104609, 179532, 429, 1, 1, -61.5861, -306.311, -55.7067, 2.33874, 0, 0, 0.920505, 0.390732, 600, 255, 1),
(104610, 179532, 429, 1, 1, -7.83484, -199.983, -4.12879, -0.453785, 0, 0, -0.224951, 0.97437, 600, 255, 1),
(104611, 179532, 429, 1, 1, 64.8074, -400.448, -58.6044, -0.628317, 0, 0, -0.309016, 0.951057, 600, 255, 1),
(104612, 179532, 429, 1, 1, 44.9141, -626.477, -25.1061, -2.47837, 0, 0, -0.945519, 0.325567, 600, 255, 1),
(104613, 179532, 429, 1, 1, 66.1826, -315.416, -54.2518, 0, 0, 0, 0, 1, 600, 255, 1),
(104614, 179532, 429, 1, 1, 242.178, -420.788, -119.962, -0.069812, 0, 0, -0.0348988, 0.999391, 600, 255, 1),
(104615, 179532, 429, 1, 1, 490.501, 551.961, -25.381, -0.418879, 0, 0, -0.207912, 0.978148, 600, 255, 1),
(104616, 179532, 429, 1, 1, 468.448, 258.01, 6.34532, 1.02974, 0, 0, 0.492422, 0.870357, 600, 255, 1),
(104617, 179532, 429, 1, 1, -5.54965, -393.198, -58.6137, -0.209439, 0, 0, -0.104528, 0.994522, 600, 255, 1),
(104618, 179532, 429, 1, 1, -124.622, -234.072, -55.1133, -0.314158, 0, 0, -0.156434, 0.987688, 600, 255, 1),
(104619, 179532, 429, 1, 1, 119.36, -336.64, -4.14986, -1.44862, 0, 0, -0.662619, 0.748957, 600, 255, 1),
(104620, 179532, 429, 1, 1, -75.923, -358.893, -4.14481, 2.87979, 0, 0, 0.991445, 0.130528, 600, 255, 1),
(104621, 179532, 429, 1, 1, 41.8712, -744.931, -25.1339, 0.104719, 0, 0, 0.0523356, 0.99863, 600, 255, 1),
(104622, 179532, 429, 1, 1, 36.7851, -402.629, -4.21849, -2.49582, 0, 0, -0.948323, 0.317306, 600, 255, 1),
(104623, 179532, 429, 1, 1, -14.44, -309.911, -52.1458, 0, 0, 0, 0, 1, 600, 255, 1),
(104624, 179532, 429, 1, 1, 126.758, -296.278, -4.14639, -1.95477, 0, 0, -0.829037, 0.559194, 600, 255, 1),
(104625, 179532, 429, 1, 1, -32.8264, -463.171, -58.6176, 0.488691, 0, 0, 0.241921, 0.970296, 600, 255, 1),
(104626, 179532, 429, 1, 1, 17.3334, -704.192, -12.6426, -2.19912, 0, 0, -0.891008, 0.453988, 600, 255, 1),
(104627, 179532, 429, 1, 1, 50.4484, -241.885, -53.2931, 1.8675, 0, 0, 0.803856, 0.594824, 600, 255, 1),
(104628, 179532, 429, 1, 1, 189.484, -482.115, -100.601, 1.93731, 0, 0, 0.824125, 0.566409, 600, 255, 1),
(104629, 179532, 429, 1, 1, 423.59, 262.49, 11.1475, 0, 0, 0, 0, 1, 600, 255, 1),
(104630, 179532, 429, 1, 1, 475.207, -104.252, -3.88595, -1.32645, 0, 0, -0.615661, 0.788011, 600, 255, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(104696, 179533, 429, 1, 1, -27.0036, -404.283, -58.614, 0.226892, 0, 0, 0.113203, 0.993572, 600, 255, 1),
(104697, 179533, 429, 1, 1, -131.851, -319.414, -56.7906, 0.244346, 0, 0, 0.121869, 0.992546, 600, 255, 1),
(104698, 179533, 429, 1, 1, -22.3061, -349.882, -4.07224, -2.02458, 0, 0, -0.848047, 0.529921, 600, 255, 1),
(104699, 179533, 429, 1, 1, -156.299, -321.1, -4.14717, 1.25664, 0, 0, 0.587786, 0.809016, 600, 255, 1),
(104700, 179533, 429, 1, 1, 31.0736, -681.584, -25.1616, 0, 0, 0, 0, 1, 600, 255, 1),
(104701, 179533, 429, 1, 1, 36.7152, -467.008, -4.24876, 1.58825, 0, 0, 0.713251, 0.700909, 600, 255, 1),
(104702, 179533, 429, 1, 1, -10.2151, -349.267, -53.8632, 2.05949, 0, 0, 0.857167, 0.515038, 600, 255, 1),
(104703, 179533, 429, 1, 1, -51.4662, -358.168, -4.13823, 1.81514, 0, 0, 0.78801, 0.615662, 600, 255, 1),
(104704, 179533, 429, 1, 1, 21.9326, -409.795, -58.6142, 0, 0, 0, 0, 1, 600, 255, 1),
(104705, 179533, 429, 1, 1, 117.148, -408.461, -3.27357, 2.32129, 0, 0, 0.91706, 0.398748, 600, 255, 1),
(104706, 179533, 429, 1, 1, 102.549, -246.011, -56.3647, 0.785397, 0, 0, 0.382683, 0.92388, 600, 255, 1),
(104707, 179533, 429, 1, 1, 263.393, -568.436, -111.976, -2.67035, 0, 0, -0.972369, 0.233447, 600, 255, 1),
(104708, 179533, 429, 1, 1, 477.125, 307.609, 2.85288, 1.74533, 0, 0, 0.766045, 0.642787, 600, 255, 1),
(104709, 179533, 429, 1, 1, 423.649, -94.0369, -3.88739, -0.453785, 0, 0, -0.224951, 0.97437, 600, 255, 1),
(104710, 179533, 429, 1, 1, 4.90084, -450.306, -58.6294, 0, 0, 0, 0, 1, 600, 255, 1),
(104711, 179533, 429, 1, 1, 71.7209, -409.745, -4.21656, 3.12412, 0, 0, 0.999962, 0.00873622, 600, 255, 1),
(104712, 179533, 429, 1, 1, -27.7882, -388.435, -4.22943, 1.39626, 0, 0, 0.642786, 0.766046, 600, 255, 1),
(104713, 179533, 429, 1, 1, -42.6484, -341.5, -52.6547, 0.244346, 0, 0, 0.121869, 0.992546, 600, 255, 1),
(104714, 179533, 429, 1, 1, 34.9096, -365.079, -4.14052, 0.314158, 0, 0, 0.156434, 0.987688, 600, 255, 1),
(104715, 179533, 429, 1, 1, -114.736, -199.653, -4.1244, 0, 0, 0, 0, 1, 600, 255, 1),
(104716, 179533, 429, 1, 1, 101.961, -247.727, -4.01977, 2.84488, 0, 0, 0.989015, 0.147813, 600, 255, 1),
(104717, 179533, 429, 1, 1, 126.702, -248.335, -4.14639, -2.72271, 0, 0, -0.978147, 0.207914, 600, 255, 1),
(104718, 179533, 429, 1, 1, 66.2358, -633.758, -25.163, 3.05433, 0, 0, 0.999048, 0.0436193, 600, 255, 1),
(104719, 179533, 429, 1, 1, -6.16094, -433.403, -4.22212, 0, 0, 0, 0, 1, 600, 255, 1),
(104720, 179533, 429, 1, 1, 2.64945, -210.379, -52.3845, -0.95993, 0, 0, -0.461748, 0.887011, 600, 255, 1),
(104721, 179533, 429, 1, 1, -168.655, -271.912, -4.12082, -0.750491, 0, 0, -0.366501, 0.930418, 600, 255, 1),
(104722, 179533, 429, 1, 1, 55.8777, -438.434, -58.5981, -0.855211, 0, 0, -0.414693, 0.909961, 600, 255, 1),
(104723, 179533, 429, 1, 1, 59.0393, -760.028, -25.0955, -1.23918, 0, 0, -0.580703, 0.814116, 600, 255, 1),
(104724, 179533, 429, 1, 1, 71.7946, -437.261, -58.5956, 0.872664, 0, 0, 0.422618, 0.906308, 600, 255, 1),
(104725, 179533, 429, 1, 1, -28.3324, -385.063, -58.6181, 1.95477, 0, 0, 0.829038, 0.559192, 600, 255, 1),
(104726, 179533, 429, 1, 1, 47.8125, -334.275, -52.0553, -0.506145, 0, 0, -0.25038, 0.968148, 600, 255, 1),
(104727, 179533, 429, 1, 1, 353.105, -447.005, -90.0577, 0, 0, 0, 0, 1, 600, 255, 1),
(104728, 179533, 429, 1, 1, 509.725, 523.927, -25.4027, -2.80997, 0, 0, -0.986285, 0.165053, 600, 255, 1),
(104729, 179533, 429, 1, 1, 456.691, -47.364, -3.88702, -1.76278, 0, 0, -0.771624, 0.636079, 600, 255, 1),
(104730, 179533, 429, 1, 1, 34.5069, -391.211, -58.6112, -2.16421, 0, 0, -0.882948, 0.469471, 600, 255, 1),
(104731, 179533, 429, 1, 1, -12.3063, -396.872, -4.22113, -0.593412, 0, 0, -0.292372, 0.956305, 600, 255, 1),
(104732, 179533, 429, 1, 1, 127.199, -272.801, -4.14639, -1.93732, 0, 0, -0.824127, 0.566404, 600, 255, 1),
(104733, 179533, 429, 1, 1, -94.2365, -406.708, -58.6073, 0, 0, 0, 0, 1, 600, 255, 1),
(104734, 179533, 429, 1, 1, -112.021, -258.887, -56.2501, 0, 0, 0, 0, 1, 600, 255, 1),
(104735, 179533, 429, 1, 1, 134.767, -262.46, -4.14639, -0.488691, 0, 0, -0.241921, 0.970296, 600, 255, 1),
(104736, 179533, 429, 1, 1, -148.661, -210.009, -4.1514, 0.418879, 0, 0, 0.207912, 0.978148, 600, 255, 1),
(104737, 179533, 429, 1, 1, 32.7576, -775.236, -25.1416, -1.309, 0, 0, -0.608763, 0.793352, 600, 255, 1),
(104738, 179533, 429, 1, 1, -109.888, -404.549, -4.21786, -2.07694, 0, 0, -0.861629, 0.507539, 600, 255, 1),
(104739, 179533, 429, 1, 1, -61.5861, -306.311, -55.7067, 2.33874, 0, 0, 0.920505, 0.390732, 600, 255, 1),
(104740, 179533, 429, 1, 1, -7.83484, -199.983, -4.12879, -0.453785, 0, 0, -0.224951, 0.97437, 600, 255, 1),
(104741, 179533, 429, 1, 1, 64.8074, -400.448, -58.6044, -0.628317, 0, 0, -0.309016, 0.951057, 600, 255, 1),
(104742, 179533, 429, 1, 1, 44.9141, -626.477, -25.1061, -2.47837, 0, 0, -0.945519, 0.325567, 600, 255, 1),
(104743, 179533, 429, 1, 1, 66.1826, -315.416, -54.2518, 0, 0, 0, 0, 1, 600, 255, 1),
(104744, 179533, 429, 1, 1, 242.178, -420.788, -119.962, -0.069812, 0, 0, -0.0348988, 0.999391, 600, 255, 1),
(104745, 179533, 429, 1, 1, 490.501, 551.961, -25.381, -0.418879, 0, 0, -0.207912, 0.978148, 600, 255, 1),
(104746, 179533, 429, 1, 1, 468.448, 258.01, 6.34532, 1.02974, 0, 0, 0.492422, 0.870357, 600, 255, 1),
(104747, 179533, 429, 1, 1, -5.54965, -393.198, -58.6137, -0.209439, 0, 0, -0.104528, 0.994522, 600, 255, 1),
(104748, 179533, 429, 1, 1, -124.622, -234.072, -55.1133, -0.314158, 0, 0, -0.156434, 0.987688, 600, 255, 1),
(104749, 179533, 429, 1, 1, 119.36, -336.64, -4.14986, -1.44862, 0, 0, -0.662619, 0.748957, 600, 255, 1),
(104750, 179533, 429, 1, 1, -75.923, -358.893, -4.14481, 2.87979, 0, 0, 0.991445, 0.130528, 600, 255, 1),
(104751, 179533, 429, 1, 1, 41.8712, -744.931, -25.1339, 0.104719, 0, 0, 0.0523356, 0.99863, 600, 255, 1),
(104752, 179533, 429, 1, 1, 36.7851, -402.629, -4.21849, -2.49582, 0, 0, -0.948323, 0.317306, 600, 255, 1),
(104753, 179533, 429, 1, 1, -14.44, -309.911, -52.1458, 0, 0, 0, 0, 1, 600, 255, 1),
(104754, 179533, 429, 1, 1, 126.758, -296.278, -4.14639, -1.95477, 0, 0, -0.829037, 0.559194, 600, 255, 1),
(104755, 179533, 429, 1, 1, -32.8264, -463.171, -58.6176, 0.488691, 0, 0, 0.241921, 0.970296, 600, 255, 1),
(104756, 179533, 429, 1, 1, 17.3334, -704.192, -12.6426, -2.19912, 0, 0, -0.891008, 0.453988, 600, 255, 1),
(104757, 179533, 429, 1, 1, 50.4484, -241.885, -53.2931, 1.8675, 0, 0, 0.803856, 0.594824, 600, 255, 1),
(104758, 179533, 429, 1, 1, 189.484, -482.115, -100.601, 1.93731, 0, 0, 0.824125, 0.566409, 600, 255, 1),
(104759, 179533, 429, 1, 1, 423.59, 262.49, 11.1475, 0, 0, 0, 0, 1, 600, 255, 1),
(104760, 179533, 429, 1, 1, 475.207, -104.252, -3.88595, -1.32645, 0, 0, -0.615661, 0.788011, 600, 255, 1);
#
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(104721, 14207, 0, 'Warpwood Pod 1'),(104591, 14207, 0, 'Warpwood Pod 2'),(104526, 14207, 0, 'Warpwood Pod 3'),(48785, 14207, 0, 'Warpwood Pod 4'),
(104699, 14208, 0, 'Warpwood Pod 1'),(104504, 14208, 0, 'Warpwood Pod 2'),(104569, 14208, 0, 'Warpwood Pod 3'),(48763, 14208, 0, 'Warpwood Pod 4'),
(104736, 14209, 0, 'Warpwood Pod 1'),(104541, 14209, 0, 'Warpwood Pod 2'),(104606, 14209, 0, 'Warpwood Pod 3'),(48800, 14209, 0, 'Warpwood Pod 4'),
(104697, 14210, 0, 'Warpwood Pod 1'),(104567, 14210, 0, 'Warpwood Pod 2'),(48761, 14210, 0, 'Warpwood Pod 3'),(104502, 14210, 0, 'Warpwood Pod 4'),
(48812, 14211, 0, 'Warpwood Pod 1'),(104748, 14211, 0, 'Warpwood Pod 2'),(104553, 14211, 0, 'Warpwood Pod 3'),(104618, 14211, 0, 'Warpwood Pod 4'),
(104585, 14212, 0, 'Warpwood Pod 1'),(48779, 14212, 0, 'Warpwood Pod 2'),(104715, 14212, 0, 'Warpwood Pod 3'),(104520, 14212, 0, 'Warpwood Pod 4'),
(104734, 14213, 0, 'Warpwood Pod 1'),(48798, 14213, 0, 'Warpwood Pod 2'),(104539, 14213, 0, 'Warpwood Pod 3'),(104604, 14213, 0, 'Warpwood Pod 4'),
(48802, 14214, 0, 'Warpwood Pod 1'),(104738, 14214, 0, 'Warpwood Pod 2'),(104543, 14214, 0, 'Warpwood Pod 3'),(104608, 14214, 0, 'Warpwood Pod 4'),
(48797, 14215, 0, 'Warpwood Pod 1'),(104538, 14215, 0, 'Warpwood Pod 2'),(104603, 14215, 0, 'Warpwood Pod 3'),(104733, 14215, 0, 'Warpwood Pod 4'),
(104750, 14216, 0, 'Warpwood Pod 1'),(104620, 14216, 0, 'Warpwood Pod 2'),(104555, 14216, 0, 'Warpwood Pod 3'),(48814, 14216, 0, 'Warpwood Pod 4'),
(104739, 14217, 0, 'Warpwood Pod 1'),(48803, 14217, 0, 'Warpwood Pod 2'),(104609, 14217, 0, 'Warpwood Pod 3'),(104544, 14217, 0, 'Warpwood Pod 4'),
(104573, 14218, 0, 'Warpwood Pod 1'),(104703, 14218, 0, 'Warpwood Pod 2'),(48767, 14218, 0, 'Warpwood Pod 3'),(104508, 14218, 0, 'Warpwood Pod 4'),
(104583, 14219, 0, 'Warpwood Pod 1'),(104713, 14219, 0, 'Warpwood Pod 2'),(104518, 14219, 0, 'Warpwood Pod 3'),(48777, 14219, 0, 'Warpwood Pod 4'),
(104625, 14220, 0, 'Warpwood Pod 1'),(104755, 14220, 0, 'Warpwood Pod 2'),(104560, 14220, 0, 'Warpwood Pod 3'),(7694, 14220, 0, 'Warpwood Pod 4'),
(104595, 14221, 0, 'Warpwood Pod 1'),(48789, 14221, 0, 'Warpwood Pod 2'),(104530, 14221, 0, 'Warpwood Pod 3'),(104725, 14221, 0, 'Warpwood Pod 4'),
(48776, 14222, 0, 'Warpwood Pod 1'),(104517, 14222, 0, 'Warpwood Pod 2'),(104712, 14222, 0, 'Warpwood Pod 3'),(104582, 14222, 0, 'Warpwood Pod 4'),
(104696, 14223, 0, 'Warpwood Pod 1'),(48760, 14223, 0, 'Warpwood Pod 2'),(104566, 14223, 0, 'Warpwood Pod 3'),(104501, 14223, 0, 'Warpwood Pod 4'),
(104503, 14224, 0, 'Warpwood Pod 1'),(48762, 14224, 0, 'Warpwood Pod 2'),(104698, 14224, 0, 'Warpwood Pod 3'),(104568, 14224, 0, 'Warpwood Pod 4'),
(104623, 14225, 0, 'Warpwood Pod 1'),(7689, 14225, 0, 'Warpwood Pod 2'),(104753, 14225, 0, 'Warpwood Pod 3'),(104558, 14225, 0, 'Warpwood Pod 4'),
(48795, 14226, 0, 'Warpwood Pod 1'),(104731, 14226, 0, 'Warpwood Pod 2'),(104536, 14226, 0, 'Warpwood Pod 3'),(104601, 14226, 0, 'Warpwood Pod 4'),
(48766, 14227, 0, 'Warpwood Pod 1'),(104702, 14227, 0, 'Warpwood Pod 2'),(104572, 14227, 0, 'Warpwood Pod 3'),(104507, 14227, 0, 'Warpwood Pod 4'),
(104545, 14228, 0, 'Warpwood Pod 1'),(48804, 14228, 0, 'Warpwood Pod 2'),(104610, 14228, 0, 'Warpwood Pod 3'),(104740, 14228, 0, 'Warpwood Pod 4'),
(104719, 14229, 0, 'Warpwood Pod 1'),(48783, 14229, 0, 'Warpwood Pod 2'),(104524, 14229, 0, 'Warpwood Pod 3'),(104589, 14229, 0, 'Warpwood Pod 4'),
(48811, 14230, 0, 'Warpwood Pod 1'),(104747, 14230, 0, 'Warpwood Pod 2'),(104617, 14230, 0, 'Warpwood Pod 3'),(104552, 14230, 0, 'Warpwood Pod 4'),
(48784, 14231, 0, 'Warpwood Pod 1'),(104720, 14231, 0, 'Warpwood Pod 2'),(104525, 14231, 0, 'Warpwood Pod 3'),(104590, 14231, 0, 'Warpwood Pod 4'),
(104580, 14232, 0, 'Warpwood Pod 1'),(48774, 14232, 0, 'Warpwood Pod 2'),(104710, 14232, 0, 'Warpwood Pod 3'),(104515, 14232, 0, 'Warpwood Pod 4'),
(104626, 14233, 0, 'Warpwood Pod 1'),(104561, 14233, 0, 'Warpwood Pod 2'),(104756, 14233, 0, 'Warpwood Pod 3'),(7695, 14233, 0, 'Warpwood Pod 4'),
(48768, 14234, 0, 'Warpwood Pod 1'),(104509, 14234, 0, 'Warpwood Pod 2'),(104574, 14234, 0, 'Warpwood Pod 3'),(104704, 14234, 0, 'Warpwood Pod 4'),
(104505, 14235, 0, 'Warpwood Pod 1'),(104570, 14235, 0, 'Warpwood Pod 2'),(48764, 14235, 0, 'Warpwood Pod 3'),(104700, 14235, 0, 'Warpwood Pod 4'),
(104737, 14236, 0, 'Warpwood Pod 1'),(104607, 14236, 0, 'Warpwood Pod 2'),(48801, 14236, 0, 'Warpwood Pod 3'),(104542, 14236, 0, 'Warpwood Pod 4'),
(48794, 14237, 0, 'Warpwood Pod 1'),(104535, 14237, 0, 'Warpwood Pod 2'),(104730, 14237, 0, 'Warpwood Pod 3'),(104600, 14237, 0, 'Warpwood Pod 4'),
(48778, 14238, 0, 'Warpwood Pod 1'),(104519, 14238, 0, 'Warpwood Pod 2'),(104584, 14238, 0, 'Warpwood Pod 3'),(104714, 14238, 0, 'Warpwood Pod 4'),
(48765, 14239, 0, 'Warpwood Pod 1'),(104571, 14239, 0, 'Warpwood Pod 2'),(104701, 14239, 0, 'Warpwood Pod 3'),(104506, 14239, 0, 'Warpwood Pod 4'),
(104622, 14240, 0, 'Warpwood Pod 1'),(104752, 14240, 0, 'Warpwood Pod 2'),(104557, 14240, 0, 'Warpwood Pod 3'),(7688, 14240, 0, 'Warpwood Pod 4'),
(48815, 14241, 0, 'Warpwood Pod 1'),(104621, 14241, 0, 'Warpwood Pod 2'),(104556, 14241, 0, 'Warpwood Pod 3'),(104751, 14241, 0, 'Warpwood Pod 4'),
(48806, 14242, 0, 'Warpwood Pod 1'),(104742, 14242, 0, 'Warpwood Pod 2'),(104612, 14242, 0, 'Warpwood Pod 3'),(104547, 14242, 0, 'Warpwood Pod 4'),
(104531, 14243, 0, 'Warpwood Pod 1'),(104726, 14243, 0, 'Warpwood Pod 2'),(48790, 14243, 0, 'Warpwood Pod 3'),(104596, 14243, 0, 'Warpwood Pod 4'),
(104757, 14244, 0, 'Warpwood Pod 1'),(7698, 14244, 0, 'Warpwood Pod 2'),(104627, 14244, 0, 'Warpwood Pod 3'),(104562, 14244, 0, 'Warpwood Pod 4'),
(104722, 14245, 0, 'Warpwood Pod 1'),(104592, 14245, 0, 'Warpwood Pod 2'),(104527, 14245, 0, 'Warpwood Pod 3'),(48786, 14245, 0, 'Warpwood Pod 4'),
(104723, 14246, 0, 'Warpwood Pod 1'),(104593, 14246, 0, 'Warpwood Pod 2'),(48787, 14246, 0, 'Warpwood Pod 3'),(104528, 14246, 0, 'Warpwood Pod 4'),
(104611, 14247, 0, 'Warpwood Pod 1'),(104741, 14247, 0, 'Warpwood Pod 2'),(104546, 14247, 0, 'Warpwood Pod 3'),(48805, 14247, 0, 'Warpwood Pod 4'),
(104613, 14248, 0, 'Warpwood Pod 1'),(104548, 14248, 0, 'Warpwood Pod 2'),(48807, 14248, 0, 'Warpwood Pod 3'),(104743, 14248, 0, 'Warpwood Pod 4'),
(48782, 14249, 0, 'Warpwood Pod 1'),(104588, 14249, 0, 'Warpwood Pod 2'),(104523, 14249, 0, 'Warpwood Pod 3'),(104718, 14249, 0, 'Warpwood Pod 4'),
(104581, 14250, 0, 'Warpwood Pod 1'),(104711, 14250, 0, 'Warpwood Pod 2'),(104516, 14250, 0, 'Warpwood Pod 3'),(48775, 14250, 0, 'Warpwood Pod 4'),
(104594, 14251, 0, 'Warpwood Pod 1'),(104529, 14251, 0, 'Warpwood Pod 2'),(48788, 14251, 0, 'Warpwood Pod 3'),(104724, 14251, 0, 'Warpwood Pod 4'),
(104521, 14252, 0, 'Warpwood Pod 1'),(48780, 14252, 0, 'Warpwood Pod 2'),(104586, 14252, 0, 'Warpwood Pod 3'),(104716, 14252, 0, 'Warpwood Pod 4'),
(104706, 14253, 0, 'Warpwood Pod 1'),(104576, 14253, 0, 'Warpwood Pod 2'),(104511, 14253, 0, 'Warpwood Pod 3'),(48770, 14253, 0, 'Warpwood Pod 4'),
(104510, 14254, 0, 'Warpwood Pod 1'),(104705, 14254, 0, 'Warpwood Pod 2'),(48769, 14254, 0, 'Warpwood Pod 3'),(104575, 14254, 0, 'Warpwood Pod 4'),
(104554, 14255, 0, 'Warpwood Pod 1'),(104619, 14255, 0, 'Warpwood Pod 2'),(104749, 14255, 0, 'Warpwood Pod 3'),(48813, 14255, 0, 'Warpwood Pod 4'),
(48781, 14256, 0, 'Warpwood Pod 1'),(104717, 14256, 0, 'Warpwood Pod 2'),(104522, 14256, 0, 'Warpwood Pod 3'),(104587, 14256, 0, 'Warpwood Pod 4'),
(104559, 14257, 0, 'Warpwood Pod 1'),(7692, 14257, 0, 'Warpwood Pod 2'),(104624, 14257, 0, 'Warpwood Pod 3'),(104754, 14257, 0, 'Warpwood Pod 4'),
(104602, 14258, 0, 'Warpwood Pod 1'),(104732, 14258, 0, 'Warpwood Pod 2'),(104537, 14258, 0, 'Warpwood Pod 3'),(48796, 14258, 0, 'Warpwood Pod 4'),
(104540, 14259, 0, 'Warpwood Pod 1'),(104735, 14259, 0, 'Warpwood Pod 2'),(48799, 14259, 0, 'Warpwood Pod 3'),(104605, 14259, 0, 'Warpwood Pod 4'),
(104563, 14260, 0, 'Warpwood Pod 1'),(7699, 14260, 0, 'Warpwood Pod 2'),(104758, 14260, 0, 'Warpwood Pod 3'),(104628, 14260, 0, 'Warpwood Pod 4'),
(48808, 14261, 0, 'Warpwood Pod 1'),(104744, 14261, 0, 'Warpwood Pod 2'),(104549, 14261, 0, 'Warpwood Pod 3'),(104614, 14261, 0, 'Warpwood Pod 4'),
(104707, 14262, 0, 'Warpwood Pod 1'),(104512, 14262, 0, 'Warpwood Pod 2'),(104577, 14262, 0, 'Warpwood Pod 3'),(48771, 14262, 0, 'Warpwood Pod 4'),
(104727, 14263, 0, 'Warpwood Pod 1'),(104532, 14263, 0, 'Warpwood Pod 2'),(104597, 14263, 0, 'Warpwood Pod 3'),(48791, 14263, 0, 'Warpwood Pod 4'),
(104759, 14264, 0, 'Warpwood Pod 1'),(104629, 14264, 0, 'Warpwood Pod 2'),(104564, 14264, 0, 'Warpwood Pod 3'),(7700, 14264, 0, 'Warpwood Pod 4'),
(104579, 14265, 0, 'Warpwood Pod 1'),(104709, 14265, 0, 'Warpwood Pod 2'),(104514, 14265, 0, 'Warpwood Pod 3'),(48773, 14265, 0, 'Warpwood Pod 4'),
(48793, 14266, 0, 'Warpwood Pod 1'),(104534, 14266, 0, 'Warpwood Pod 2'),(104599, 14266, 0, 'Warpwood Pod 3'),(104729, 14266, 0, 'Warpwood Pod 4'),
(104746, 14267, 0, 'Warpwood Pod 1'),(48810, 14267, 0, 'Warpwood Pod 2'),(104616, 14267, 0, 'Warpwood Pod 3'),(104551, 14267, 0, 'Warpwood Pod 4'),
(104565, 14268, 0, 'Warpwood Pod 1'),(104760, 14268, 0, 'Warpwood Pod 2'),(104630, 14268, 0, 'Warpwood Pod 3'),(7704, 14268, 0, 'Warpwood Pod 4'),
(104708, 14269, 0, 'Warpwood Pod 1'),(48772, 14269, 0, 'Warpwood Pod 2'),(104578, 14269, 0, 'Warpwood Pod 3'),(104513, 14269, 0, 'Warpwood Pod 4'),
(48809, 14270, 0, 'Warpwood Pod 1'),(104550, 14270, 0, 'Warpwood Pod 2'),(104745, 14270, 0, 'Warpwood Pod 3'),(104615, 14270, 0, 'Warpwood Pod 4'),
(104533, 14271, 0, 'Warpwood Pod 1'),(48792, 14271, 0, 'Warpwood Pod 2'),(104598, 14271, 0, 'Warpwood Pod 3'),(104728, 14271, 0, 'Warpwood Pod 4');
#
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(14207,1,'Warpwood Pod 1+2+3+4'),
(14208,1,'Warpwood Pod 1+2+3+4'),
(14209,1,'Warpwood Pod 1+2+3+4'),
(14210,1,'Warpwood Pod 1+2+3+4'),
(14211,1,'Warpwood Pod 1+2+3+4'),
(14212,1,'Warpwood Pod 1+2+3+4'),
(14213,1,'Warpwood Pod 1+2+3+4'),
(14214,1,'Warpwood Pod 1+2+3+4'),
(14215,1,'Warpwood Pod 1+2+3+4'),
(14216,1,'Warpwood Pod 1+2+3+4'),
(14217,1,'Warpwood Pod 1+2+3+4'),
(14218,1,'Warpwood Pod 1+2+3+4'),
(14219,1,'Warpwood Pod 1+2+3+4'),
(14220,1,'Warpwood Pod 1+2+3+4'),
(14221,1,'Warpwood Pod 1+2+3+4'),
(14222,1,'Warpwood Pod 1+2+3+4'),
(14223,1,'Warpwood Pod 1+2+3+4'),
(14224,1,'Warpwood Pod 1+2+3+4'),
(14225,1,'Warpwood Pod 1+2+3+4'),
(14226,1,'Warpwood Pod 1+2+3+4'),
(14227,1,'Warpwood Pod 1+2+3+4'),
(14228,1,'Warpwood Pod 1+2+3+4'),
(14229,1,'Warpwood Pod 1+2+3+4'),
(14230,1,'Warpwood Pod 1+2+3+4'),
(14231,1,'Warpwood Pod 1+2+3+4'),
(14232,1,'Warpwood Pod 1+2+3+4'),
(14233,1,'Warpwood Pod 1+2+3+4'),
(14234,1,'Warpwood Pod 1+2+3+4'),
(14235,1,'Warpwood Pod 1+2+3+4'),
(14236,1,'Warpwood Pod 1+2+3+4'),
(14237,1,'Warpwood Pod 1+2+3+4'),
(14238,1,'Warpwood Pod 1+2+3+4'),
(14239,1,'Warpwood Pod 1+2+3+4'),
(14240,1,'Warpwood Pod 1+2+3+4'),
(14241,1,'Warpwood Pod 1+2+3+4'),
(14242,1,'Warpwood Pod 1+2+3+4'),
(14243,1,'Warpwood Pod 1+2+3+4'),
(14244,1,'Warpwood Pod 1+2+3+4'),
(14245,1,'Warpwood Pod 1+2+3+4'),
(14246,1,'Warpwood Pod 1+2+3+4'),
(14247,1,'Warpwood Pod 1+2+3+4'),
(14248,1,'Warpwood Pod 1+2+3+4'),
(14249,1,'Warpwood Pod 1+2+3+4'),
(14250,1,'Warpwood Pod 1+2+3+4'),
(14251,1,'Warpwood Pod 1+2+3+4'),
(14252,1,'Warpwood Pod 1+2+3+4'),
(14253,1,'Warpwood Pod 1+2+3+4'),
(14254,1,'Warpwood Pod 1+2+3+4'),
(14255,1,'Warpwood Pod 1+2+3+4'),
(14256,1,'Warpwood Pod 1+2+3+4'),
(14257,1,'Warpwood Pod 1+2+3+4'),
(14258,1,'Warpwood Pod 1+2+3+4'),
(14259,1,'Warpwood Pod 1+2+3+4'),
(14260,1,'Warpwood Pod 1+2+3+4'),
(14261,1,'Warpwood Pod 1+2+3+4'),
(14262,1,'Warpwood Pod 1+2+3+4'),
(14263,1,'Warpwood Pod 1+2+3+4'),
(14264,1,'Warpwood Pod 1+2+3+4'),
(14265,1,'Warpwood Pod 1+2+3+4'),
(14266,1,'Warpwood Pod 1+2+3+4'),
(14267,1,'Warpwood Pod 1+2+3+4'),
(14268,1,'Warpwood Pod 1+2+3+4'),
(14269,1,'Warpwood Pod 1+2+3+4'),
(14270,1,'Warpwood Pod 1+2+3+4'),
(14271,1,'Warpwood Pod 1+2+3+4'),
(14272,25,'Warpwood Pod 1+2+3+4 Master');
REPLACE INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES
(14207,14272,0,'Warpwood Pod 1+2+3+4'),
(14208,14272,0,'Warpwood Pod 1+2+3+4'),
(14209,14272,0,'Warpwood Pod 1+2+3+4'),
(14210,14272,0,'Warpwood Pod 1+2+3+4'),
(14211,14272,0,'Warpwood Pod 1+2+3+4'),
(14212,14272,0,'Warpwood Pod 1+2+3+4'),
(14213,14272,0,'Warpwood Pod 1+2+3+4'),
(14214,14272,0,'Warpwood Pod 1+2+3+4'),
(14215,14272,0,'Warpwood Pod 1+2+3+4'),
(14216,14272,0,'Warpwood Pod 1+2+3+4'),
(14217,14272,0,'Warpwood Pod 1+2+3+4'),
(14218,14272,0,'Warpwood Pod 1+2+3+4'),
(14219,14272,0,'Warpwood Pod 1+2+3+4'),
(14220,14272,0,'Warpwood Pod 1+2+3+4'),
(14221,14272,0,'Warpwood Pod 1+2+3+4'),
(14222,14272,0,'Warpwood Pod 1+2+3+4'),
(14223,14272,0,'Warpwood Pod 1+2+3+4'),
(14224,14272,0,'Warpwood Pod 1+2+3+4'),
(14225,14272,0,'Warpwood Pod 1+2+3+4'),
(14226,14272,0,'Warpwood Pod 1+2+3+4'),
(14227,14272,0,'Warpwood Pod 1+2+3+4'),
(14228,14272,0,'Warpwood Pod 1+2+3+4'),
(14229,14272,0,'Warpwood Pod 1+2+3+4'),
(14230,14272,0,'Warpwood Pod 1+2+3+4'),
(14231,14272,0,'Warpwood Pod 1+2+3+4'),
(14232,14272,0,'Warpwood Pod 1+2+3+4'),
(14233,14272,0,'Warpwood Pod 1+2+3+4'),
(14234,14272,0,'Warpwood Pod 1+2+3+4'),
(14235,14272,0,'Warpwood Pod 1+2+3+4'),
(14236,14272,0,'Warpwood Pod 1+2+3+4'),
(14237,14272,0,'Warpwood Pod 1+2+3+4'),
(14238,14272,0,'Warpwood Pod 1+2+3+4'),
(14239,14272,0,'Warpwood Pod 1+2+3+4'),
(14240,14272,0,'Warpwood Pod 1+2+3+4'),
(14241,14272,0,'Warpwood Pod 1+2+3+4'),
(14242,14272,0,'Warpwood Pod 1+2+3+4'),
(14243,14272,0,'Warpwood Pod 1+2+3+4'),
(14244,14272,0,'Warpwood Pod 1+2+3+4'),
(14245,14272,0,'Warpwood Pod 1+2+3+4'),
(14246,14272,0,'Warpwood Pod 1+2+3+4'),
(14247,14272,0,'Warpwood Pod 1+2+3+4'),
(14248,14272,0,'Warpwood Pod 1+2+3+4'),
(14249,14272,0,'Warpwood Pod 1+2+3+4'),
(14250,14272,0,'Warpwood Pod 1+2+3+4'),
(14251,14272,0,'Warpwood Pod 1+2+3+4'),
(14252,14272,0,'Warpwood Pod 1+2+3+4'),
(14253,14272,0,'Warpwood Pod 1+2+3+4'),
(14254,14272,0,'Warpwood Pod 1+2+3+4'),
(14255,14272,0,'Warpwood Pod 1+2+3+4'),
(14256,14272,0,'Warpwood Pod 1+2+3+4'),
(14257,14272,0,'Warpwood Pod 1+2+3+4'),
(14258,14272,0,'Warpwood Pod 1+2+3+4'),
(14259,14272,0,'Warpwood Pod 1+2+3+4'),
(14260,14272,0,'Warpwood Pod 1+2+3+4'),
(14261,14272,0,'Warpwood Pod 1+2+3+4'),
(14262,14272,0,'Warpwood Pod 1+2+3+4'),
(14263,14272,0,'Warpwood Pod 1+2+3+4'),
(14264,14272,0,'Warpwood Pod 1+2+3+4'),
(14265,14272,0,'Warpwood Pod 1+2+3+4'),
(14266,14272,0,'Warpwood Pod 1+2+3+4'),
(14267,14272,0,'Warpwood Pod 1+2+3+4'),
(14268,14272,0,'Warpwood Pod 1+2+3+4'),
(14269,14272,0,'Warpwood Pod 1+2+3+4'),
(14270,14272,0,'Warpwood Pod 1+2+3+4'),
(14271,14272,0,'Warpwood Pod 1+2+3+4');
DELETE FROM `gameobject` WHERE `id` = 184980;
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`) VALUES
(184981, 6, 1287, 'TEMP Felhound Poo Trap', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37695, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1' WHERE `entry`=184980 AND `item`=5369;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1' WHERE `entry`=184980 AND `item`=6456;
DELETE FROM `creature_loot_template` WHERE `entry` = 21627;
UPDATE `creature_template` SET `lootid`='0' WHERE `entry`=21627;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE `entry`=19792 AND `item`=31316;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 178584;
UPDATE `gameobject_template` SET `data1`='0' WHERE `entry`=178584;
# лут снимем, там все равно не банка маны, а этот 17534 предмет должен лежать, а его у нас нет.)))
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`) VALUES
(178644, 6, 1287, 'TEMP Ryson''s All Seeing Eye Trap', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21546, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `guid` = 22531;
REPLACE INTO `creature_template_addon` (`entry`, `auras`) VALUES ('7785', '11087');
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1' WHERE `entry`=128308 AND `item`=9332;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1' WHERE `entry`=128308 AND `item`=9333;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1' WHERE `entry`=128308 AND `item`=9334;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1' WHERE `entry`=128308 AND `item`=9335;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1' WHERE `entry`=128308 AND `item`=9336;
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`) VALUES
(128972, 6, 1287, 'TEMP Shallow Grave Trap', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10247, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `id` in (7286,7276);
DELETE FROM `creature_loot_template` WHERE `item` in (9332,9333,9334,9335,9336);
UPDATE `gameobject_template` SET `data1`='128308' WHERE `entry`=128403;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 128403;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='1' WHERE `item`=8623;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `entry` = 128308 AND `item` = 1645;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 128308 AND `item` = 3928;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '15', `maxcount` = '5' WHERE `entry` = 128308 AND `item` = 4306;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '30', `maxcount` = '5' WHERE `entry` = 128308 AND `item` = 4338;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `entry` = 128308 AND `item` = 4599;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 128308 AND `item` = 6149;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 128308 AND `item` = 4419;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(104826, 128972, 209, 1, 1, 1832.72, 1032.39, 9.45168, 0.575959, 0, 0, 0.284016, 0.95882, 600, 100, 1),
(104827, 128972, 209, 1, 1, 1836.74, 1028.08, 9.2729, 2.275, 0, 0, 0.907587, 0.419865, 600, 100, 1),
(104828, 128972, 209, 1, 1, 1839.18, 1036.88, 9.35239, -1.67552, 0, 0, -0.743146, 0.669129, 600, 100, 1),
(104829, 128972, 209, 1, 1, 1839.42, 1023.49, 9.56256, 2.98451, 0, 0, 0.996917, 0.0784606, 600, 100, 1),
(104830, 128972, 209, 1, 1, 1839.44, 1045.26, 9.55093, 4.28484, 0, 0, 0.841024, -0.540998, 600, 100, 1),
(104831, 128972, 209, 1, 1, 1840.49, 1034.35, 9.00595, 1.05764, 0, 0, 0.504515, 0.863403, 600, 100, 1),
(104832, 128972, 209, 1, 1, 1841.08, 1045.54, 9.21622, 3.05433, 0, 0, 0.999048, 0.0436174, 600, 100, 1),
(104833, 128972, 209, 1, 1, 1841.82, 1027.76, 9.15097, 0.959931, 0, 0, 0.461749, 0.887011, 600, 100, 1),
(104834, 128972, 209, 1, 1, 1843.19, 1041.16, 8.87679, -0.401426, 0, 0, -0.199368, 0.979925, 600, 100, 1),
(104835, 128972, 209, 1, 1, 1843.37, 1028.02, 9.11219, 5.70327, 0, 0, 0.285912, -0.958256, 600, 100, 1),
(104836, 128972, 209, 1, 1, 1844.18, 1044.92, 8.91256, 1.26262, 0, 0, 0.590203, 0.807255, 600, 100, 1),
(104837, 128972, 209, 1, 1, 1845.51, 1021.77, 9.07264, 6.01036, 0, 0, 0.13599, -0.99071, 600, 100, 1),
(104838, 128972, 209, 1, 1, 1845.54, 1024.12, 9.07972, 0.977384, 0, 0, 0.469471, 0.882948, 600, 100, 1),
(104839, 128972, 209, 1, 1, 1845.96, 1047.25, 8.87679, -0.453786, 0, 0, -0.224951, 0.97437, 600, 100, 1),
(104840, 128972, 209, 1, 1, 1852.41, 1024.78, 8.87679, -2.49582, 0, 0, -0.948324, 0.317305, 600, 100, 1),
(104841, 128972, 209, 1, 1, 1853.9, 1023.69, 8.87707, 3.02349, 0, 0, 0.998257, 0.059017, 600, 100, 1),
(104842, 128972, 209, 1, 1, 1858.7, 1053.75, 8.87679, -2.74017, 0, 0, -0.979925, 0.199366, 600, 100, 1),
(104843, 128972, 209, 1, 1, 1861.12, 1019.39, 8.87679, -1.18682, 0, 0, -0.559191, 0.829039, 600, 100, 1),
(104844, 128972, 209, 1, 1, 1862.12, 1050.76, 9.05665, -2.3911, 0, 0, -0.930417, 0.366502, 600, 100, 1),
(104845, 128972, 209, 1, 1, 1862.46, 1053.91, 9.71641, 5.77003, 0, 0, 0.253772, -0.967264, 600, 100, 1),
(104846, 128972, 209, 1, 1, 1863.22, 1018.34, 8.87702, 5.61844, 0, 0, 0.326287, -0.945271, 600, 100, 1),
(104847, 128972, 209, 1, 1, 1865.03, 1012.49, 8.8768, 1.0472, 0, 0, 0.500001, 0.866025, 600, 100, 1),
(104848, 128972, 209, 1, 1, 1865.38, 1012.47, 8.87704, 5.40353, 0, 0, 0.425783, -0.904825, 600, 100, 1),
(104849, 128972, 209, 1, 1, 1865.58, 1048.21, 8.92811, 5.55719, 0, 0, 0.355078, -0.934837, 600, 100, 1),
(104850, 128972, 209, 1, 1, 1866.21, 987.673, 8.9228, 0.921279, 0, 0, 0.444521, 0.895768, 600, 100, 1),
(104851, 128972, 209, 1, 1, 1866.24, 1008.4, 8.87679, 0.663225, 0, 0, 0.325568, 0.945519, 600, 100, 1),
(104852, 128972, 209, 1, 1, 1867.74, 1041.84, 8.8768, -0.436333, 0, 0, -0.21644, 0.976296, 600, 100, 1),
(104853, 128972, 209, 1, 1, 1870.87, 994.528, 8.8824, 1.03752, 0, 0, 0.495804, 0.868435, 600, 100, 1),
(104854, 128972, 209, 1, 1, 1871.08, 1046.76, 9.03374, -2.16421, 0, 0, -0.882948, 0.469471, 600, 100, 1),
(104855, 128972, 209, 1, 1, 1871.3, 1008.32, 8.87679, 1.0821, 0, 0, 0.515036, 0.857168, 600, 100, 1),
(104856, 128972, 209, 1, 1, 1871.86, 994.256, 8.8819, 0.506145, 0, 0, 0.25038, 0.968148, 600, 100, 1),
(104857, 128972, 209, 1, 1, 1872.88, 1046.54, 9.22299, 5.73811, 0, 0, 0.269176, -0.963091, 600, 100, 1),
(104858, 128972, 209, 1, 1, 1873.3, 1004.08, 8.87704, 5.30929, 0, 0, 0.467931, -0.883765, 600, 100, 1),
(104859, 128972, 209, 1, 1, 1873.84, 1010.16, 8.8768, 2.18391, 0, 0, 0.887529, 0.460751, 600, 100, 1),
(104860, 128972, 209, 1, 1, 1875.85, 1044.26, 9.07804, 0.855211, 0, 0, 0.414693, 0.909961, 600, 100, 1),
(104861, 128972, 209, 1, 1, 1876.44, 972.207, 9.91169, 2.84489, 0, 0, 0.989016, 0.147808, 600, 100, 1),
(104862, 128972, 209, 1, 1, 1877.1, 972.773, 9.79669, 2.49835, 0, 0, 0.948724, 0.316105, 600, 100, 1),
(104863, 128972, 209, 1, 1, 1878.21, 1038.99, 8.87685, 2.75568, 0, 0, 0.981442, 0.191761, 600, 100, 1),
(104864, 128972, 209, 1, 1, 1879.89, 974.651, 8.87679, 1.0472, 0, 0, 0.500001, 0.866025, 600, 100, 1),
(104865, 128972, 209, 1, 1, 1881.34, 1044.6, 9.56279, 5.7127, 0, 0, 0.28139, -0.959593, 600, 100, 1),
(104866, 128972, 209, 1, 1, 1881.46, 1041.43, 8.87679, -2.19912, 0, 0, -0.891008, 0.453988, 600, 100, 1),
(104867, 128972, 209, 1, 1, 1881.93, 978.37, 8.87687, 0.0777447, 0, 0, 0.0388626, 0.999245, 600, 100, 1),
(104868, 128972, 209, 1, 1, 1881.99, 1034.68, 8.87679, -0.453786, 0, 0, -0.224951, 0.97437, 600, 100, 1),
(104869, 128972, 209, 1, 1, 1882.7, 971.825, 8.87679, 0.994838, 0, 0, 0.477159, 0.878817, 600, 100, 1),
(104870, 128972, 209, 1, 1, 1884.48, 1037.21, 8.87704, 5.87399, 0, 0, 0.203173, -0.979143, 600, 100, 1),
(104871, 128972, 209, 1, 1, 1885.28, 972.624, 8.87682, 4.27571, 0, 0, 0.843485, -0.537153, 600, 100, 1),
(104872, 128972, 209, 1, 1, 1887.41, 984.385, 8.87682, 6.01929, 0, 0, 0.131565, -0.991308, 600, 100, 1),
(104873, 128972, 209, 1, 1, 1887.46, 967.143, 8.98506, -0.314159, 0, 0, -0.156434, 0.987688, 600, 100, 1),
(104874, 128972, 209, 1, 1, 1887.94, 1029.08, 9.14775, 0.855211, 0, 0, 0.414693, 0.909961, 600, 100, 1),
(104875, 128972, 209, 1, 1, 1888.36, 1037, 8.92103, -1.98968, 0, 0, -0.838672, 0.544637, 600, 100, 1),
(104876, 128972, 209, 1, 1, 1890.12, 989.759, 8.87679, 2.70526, 0, 0, 0.976296, 0.21644, 600, 100, 1),
(104877, 128972, 209, 1, 1, 1890.26, 993.856, 8.87682, 6.27847, 0, 0, 0.00235763, -0.999997, 600, 100, 1),
(104878, 128972, 209, 1, 1, 1890.31, 966.168, 9.16208, 1.14354, 0, 0, 0.541121, 0.840945, 600, 100, 1),
(104879, 128972, 209, 1, 1, 1891.14, 988.616, 8.8768, 6.17923, 0, 0, 0.0519541, -0.998649, 600, 100, 1),
(104880, 128972, 209, 1, 1, 1891.6, 1023.06, 9.37117, 2.79253, 0, 0, 0.984808, 0.173647, 600, 100, 1),
(104881, 128972, 209, 1, 1, 1892.24, 974.687, 8.94385, 2.44702, 0, 0, 0.9403, 0.340347, 600, 100, 1),
(104882, 128972, 209, 1, 1, 1892.57, 1006.37, 9.06781, -2.1293, 0, 0, -0.874619, 0.48481, 600, 100, 1),
(104883, 128972, 209, 1, 1, 1894.39, 977.006, 8.92631, -0.279253, 0, 0, -0.139173, 0.990268, 600, 100, 1),
(104884, 128972, 209, 1, 1, 1896.07, 980.49, 8.90335, 1.18674, 0, 0, 0.559158, 0.829061, 600, 100, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(104885, 128308, 209, 1, 1, 1832.72, 1032.39, 9.45168, 0.575959, 0, 0, 0.284016, 0.95882, 43200, 100, 1),
(104886, 128403, 209, 1, 1, 1836.74, 1028.08, 9.2729, 2.275, 0, 0, 0.907587, 0.419865, 43200, 100, 1),
(104887, 128308, 209, 1, 1, 1839.18, 1036.88, 9.35239, -1.67552, 0, 0, -0.743146, 0.669129, 43200, 100, 1),
(104888, 128308, 209, 1, 1, 1839.42, 1023.49, 9.56256, 2.98451, 0, 0, 0.996917, 0.0784606, 43200, 100, 1),
(104889, 128403, 209, 1, 1, 1839.44, 1045.26, 9.55093, 4.28484, 0, 0, 0.841024, -0.540998, 43200, 100, 1),
(104890, 128403, 209, 1, 1, 1840.49, 1034.35, 9.00595, 1.05764, 0, 0, 0.504515, 0.863403, 43200, 100, 1),
(104891, 128308, 209, 1, 1, 1841.08, 1045.54, 9.21622, 3.05433, 0, 0, 0.999048, 0.0436174, 43200, 100, 1),
(104892, 128308, 209, 1, 1, 1841.82, 1027.76, 9.15097, 0.959931, 0, 0, 0.461749, 0.887011, 43200, 100, 1),
(104893, 128308, 209, 1, 1, 1843.19, 1041.16, 8.87679, -0.401426, 0, 0, -0.199368, 0.979925, 43200, 100, 1),
(104894, 128403, 209, 1, 1, 1843.37, 1028.02, 9.11219, 5.70327, 0, 0, 0.285912, -0.958256, 43200, 100, 1),
(104895, 128403, 209, 1, 1, 1844.18, 1044.92, 8.91256, 1.26262, 0, 0, 0.590203, 0.807255, 43200, 100, 1),
(104896, 128403, 209, 1, 1, 1845.51, 1021.77, 9.07264, 6.01036, 0, 0, 0.13599, -0.99071, 43200, 100, 1),
(104897, 128308, 209, 1, 1, 1845.54, 1024.12, 9.07972, 0.977384, 0, 0, 0.469471, 0.882948, 43200, 100, 1),
(104898, 128308, 209, 1, 1, 1845.96, 1047.25, 8.87679, -0.453786, 0, 0, -0.224951, 0.97437, 43200, 100, 1),
(104899, 128308, 209, 1, 1, 1852.41, 1024.78, 8.87679, -2.49582, 0, 0, -0.948324, 0.317305, 43200, 100, 1),
(104900, 128403, 209, 1, 1, 1853.9, 1023.69, 8.87707, 3.02349, 0, 0, 0.998257, 0.059017, 43200, 100, 1),
(104901, 128308, 209, 1, 1, 1858.7, 1053.75, 8.87679, -2.74017, 0, 0, -0.979925, 0.199366, 43200, 100, 1),
(104902, 128308, 209, 1, 1, 1861.12, 1019.39, 8.87679, -1.18682, 0, 0, -0.559191, 0.829039, 43200, 100, 1),
(104903, 128308, 209, 1, 1, 1862.12, 1050.76, 9.05665, -2.3911, 0, 0, -0.930417, 0.366502, 43200, 100, 1),
(104904, 128403, 209, 1, 1, 1862.46, 1053.91, 9.71641, 5.77003, 0, 0, 0.253772, -0.967264, 43200, 100, 1),
(104905, 128403, 209, 1, 1, 1863.22, 1018.34, 8.87702, 5.61844, 0, 0, 0.326287, -0.945271, 43200, 100, 1),
(104906, 128308, 209, 1, 1, 1865.03, 1012.49, 8.8768, 1.0472, 0, 0, 0.500001, 0.866025, 43200, 100, 1),
(104907, 128403, 209, 1, 1, 1865.38, 1012.47, 8.87704, 5.40353, 0, 0, 0.425783, -0.904825, 43200, 100, 1),
(104908, 128403, 209, 1, 1, 1865.58, 1048.21, 8.92811, 5.55719, 0, 0, 0.355078, -0.934837, 43200, 100, 1),
(104909, 128403, 209, 1, 1, 1866.21, 987.673, 8.9228, 0.921279, 0, 0, 0.444521, 0.895768, 43200, 100, 1),
(104910, 128308, 209, 1, 1, 1866.24, 1008.4, 8.87679, 0.663225, 0, 0, 0.325568, 0.945519, 43200, 100, 1),
(104911, 128308, 209, 1, 1, 1867.74, 1041.84, 8.8768, -0.436333, 0, 0, -0.21644, 0.976296, 43200, 100, 1),
(104912, 128403, 209, 1, 1, 1870.87, 994.528, 8.8824, 1.03752, 0, 0, 0.495804, 0.868435, 43200, 100, 1),
(104913, 128308, 209, 1, 1, 1871.08, 1046.76, 9.03374, -2.16421, 0, 0, -0.882948, 0.469471, 43200, 100, 1),
(104914, 128308, 209, 1, 1, 1871.3, 1008.32, 8.87679, 1.0821, 0, 0, 0.515036, 0.857168, 43200, 100, 1),
(104915, 128308, 209, 1, 1, 1871.86, 994.256, 8.8819, 0.506145, 0, 0, 0.25038, 0.968148, 43200, 100, 1),
(104916, 128403, 209, 1, 1, 1872.88, 1046.54, 9.22299, 5.73811, 0, 0, 0.269176, -0.963091, 43200, 100, 1),
(104917, 128403, 209, 1, 1, 1873.3, 1004.08, 8.87704, 5.30929, 0, 0, 0.467931, -0.883765, 43200, 100, 1),
(104918, 128403, 209, 1, 1, 1873.84, 1010.16, 8.8768, 2.18391, 0, 0, 0.887529, 0.460751, 43200, 100, 1),
(104919, 128308, 209, 1, 1, 1875.85, 1044.26, 9.07804, 0.855211, 0, 0, 0.414693, 0.909961, 43200, 100, 1),
(104920, 128308, 209, 1, 1, 1876.44, 972.207, 9.91169, 2.84489, 0, 0, 0.989016, 0.147808, 43200, 100, 1),
(104921, 128403, 209, 1, 1, 1877.1, 972.773, 9.79669, 2.49835, 0, 0, 0.948724, 0.316105, 43200, 100, 1),
(104922, 128403, 209, 1, 1, 1878.21, 1038.99, 8.87685, 2.75568, 0, 0, 0.981442, 0.191761, 43200, 100, 1),
(104923, 128308, 209, 1, 1, 1879.89, 974.651, 8.87679, 1.0472, 0, 0, 0.500001, 0.866025, 43200, 100, 1),
(104924, 128403, 209, 1, 1, 1881.34, 1044.6, 9.56279, 5.7127, 0, 0, 0.28139, -0.959593, 43200, 100, 1),
(104925, 128308, 209, 1, 1, 1881.46, 1041.43, 8.87679, -2.19912, 0, 0, -0.891008, 0.453988, 43200, 100, 1),
(104926, 128403, 209, 1, 1, 1881.93, 978.37, 8.87687, 0.0777447, 0, 0, 0.0388626, 0.999245, 43200, 100, 1),
(104927, 128308, 209, 1, 1, 1881.99, 1034.68, 8.87679, -0.453786, 0, 0, -0.224951, 0.97437, 43200, 100, 1),
(104928, 128308, 209, 1, 1, 1882.7, 971.825, 8.87679, 0.994838, 0, 0, 0.477159, 0.878817, 43200, 100, 1),
(104929, 128403, 209, 1, 1, 1884.48, 1037.21, 8.87704, 5.87399, 0, 0, 0.203173, -0.979143, 43200, 100, 1),
(104930, 128403, 209, 1, 1, 1885.28, 972.624, 8.87682, 4.27571, 0, 0, 0.843485, -0.537153, 43200, 100, 1),
(104931, 128403, 209, 1, 1, 1887.41, 984.385, 8.87682, 6.01929, 0, 0, 0.131565, -0.991308, 43200, 100, 1),
(104932, 128308, 209, 1, 1, 1887.46, 967.143, 8.98506, -0.314159, 0, 0, -0.156434, 0.987688, 43200, 100, 1),
(104933, 128308, 209, 1, 1, 1887.94, 1029.08, 9.14775, 0.855211, 0, 0, 0.414693, 0.909961, 43200, 100, 1),
(104934, 128308, 209, 1, 1, 1888.36, 1037, 8.92103, -1.98968, 0, 0, -0.838672, 0.544637, 43200, 100, 1),
(104935, 128308, 209, 1, 1, 1890.12, 989.759, 8.87679, 2.70526, 0, 0, 0.976296, 0.21644, 43200, 100, 1),
(104936, 128403, 209, 1, 1, 1890.26, 993.856, 8.87682, 6.27847, 0, 0, 0.00235763, -0.999997, 43200, 100, 1),
(104937, 128403, 209, 1, 1, 1890.31, 966.168, 9.16208, 1.14354, 0, 0, 0.541121, 0.840945, 43200, 100, 1),
(104938, 128403, 209, 1, 1, 1891.14, 988.616, 8.8768, 6.17923, 0, 0, 0.0519541, -0.998649, 43200, 100, 1),
(104939, 128308, 209, 1, 1, 1891.6, 1023.06, 9.37117, 2.79253, 0, 0, 0.984808, 0.173647, 43200, 100, 1),
(104940, 128403, 209, 1, 1, 1892.24, 974.687, 8.94385, 2.44702, 0, 0, 0.9403, 0.340347, 43200, 100, 1),
(104941, 128308, 209, 1, 1, 1892.57, 1006.37, 9.06781, -2.1293, 0, 0, -0.874619, 0.48481, 43200, 100, 1),
(104942, 128308, 209, 1, 1, 1894.39, 977.006, 8.92631, -0.279253, 0, 0, -0.139173, 0.990268, 43200, 100, 1),
(104943, 128403, 209, 1, 1, 1896.07, 980.49, 8.90335, 1.18674, 0, 0, 0.559158, 0.829061, 43200, 100, 1);
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(104885,14273,0,'Shallow Grave 1'),(69280,14273,0,'Shallow Grave 2'),
(19296,14274,0,'Shallow Grave 1'),(104886,14274,0,'Shallow Grave 2'),
(104887,14275,0,'Shallow Grave 1'),(69275,14275,0,'Shallow Grave 2'),
(104888,14276,0,'Shallow Grave 1'),(69288,14276,0,'Shallow Grave 2'),
(104889,14277,0,'Shallow Grave 1'),(19299,14277,0,'Shallow Grave 2'),
(19298,14278,0,'Shallow Grave 1'),(104890,14278,0,'Shallow Grave 2'),
(104891,14279,0,'Shallow Grave 1'),(69279,14279,0,'Shallow Grave 2'),
(69276,14280,0,'Shallow Grave 1'),(104892,14280,0,'Shallow Grave 2'),
(104893,14281,0,'Shallow Grave 1'),(69277,14281,0,'Shallow Grave 2'),
(104894,14282,0,'Shallow Grave 1'),(19297,14282,0,'Shallow Grave 2'),
(19300,14283,0,'Shallow Grave 1'),(104895,14283,0,'Shallow Grave 2'),
(19294,14284,0,'Shallow Grave 1'),(104896,14284,0,'Shallow Grave 2'),
(69274,14285,0,'Shallow Grave 1'),(104897,14285,0,'Shallow Grave 2'),
(104898,14286,0,'Shallow Grave 1'),(69266,14286,0,'Shallow Grave 2'),
(104899,14287,0,'Shallow Grave 1'),(69278,14287,0,'Shallow Grave 2'),
(19295,14288,0,'Shallow Grave 1'),(104900,14288,0,'Shallow Grave 2'),
(69265,14289,0,'Shallow Grave 1'),(104901,14289,0,'Shallow Grave 2'),
(104902,14290,0,'Shallow Grave 1'),(69287,14290,0,'Shallow Grave 2'),
(104903,14291,0,'Shallow Grave 1'),(69264,14291,0,'Shallow Grave 2'),
(19292,14292,0,'Shallow Grave 1'),(104904,14292,0,'Shallow Grave 2'),
(104905,14293,0,'Shallow Grave 1'),(19293,14293,0,'Shallow Grave 2'),
(104906,14294,0,'Shallow Grave 1'),(69285,14294,0,'Shallow Grave 2'),
(104907,14295,0,'Shallow Grave 1'),(19276,14295,0,'Shallow Grave 2'),
(19291,14296,0,'Shallow Grave 1'),(104908,14296,0,'Shallow Grave 2'),
(19265,14297,0,'Shallow Grave 1'),(104909,14297,0,'Shallow Grave 2'),
(104910,14298,0,'Shallow Grave 1'),(69286,14298,0,'Shallow Grave 2'),
(104911,14299,0,'Shallow Grave 1'),(69272,14299,0,'Shallow Grave 2'),
(19266,14300,0,'Shallow Grave 1'),(104912,14300,0,'Shallow Grave 2'),
(69262,14301,0,'Shallow Grave 1'),(104913,14301,0,'Shallow Grave 2'),
(69281,14302,0,'Shallow Grave 1'),(104914,14302,0,'Shallow Grave 2'),
(69282,14303,0,'Shallow Grave 1'),(104915,14303,0,'Shallow Grave 2'),
(19277,14304,0,'Shallow Grave 1'),(104916,14304,0,'Shallow Grave 2'),
(19275,14305,0,'Shallow Grave 1'),(104917,14305,0,'Shallow Grave 2'),
(19288,14306,0,'Shallow Grave 1'),(104918,14306,0,'Shallow Grave 2'),
(69261,14307,0,'Shallow Grave 1'),(104919,14307,0,'Shallow Grave 2'),
(104920,14308,0,'Shallow Grave 1'),(69290,14308,0,'Shallow Grave 2'),
(19267,14309,0,'Shallow Grave 1'),(104921,14309,0,'Shallow Grave 2'),
(19290,14310,0,'Shallow Grave 1'),(104922,14310,0,'Shallow Grave 2'),
(69291,14311,0,'Shallow Grave 1'),(104923,14311,0,'Shallow Grave 2'),
(104924,14312,0,'Shallow Grave 1'),(19289,14312,0,'Shallow Grave 2'),
(104925,14313,0,'Shallow Grave 1'),(69263,14313,0,'Shallow Grave 2'),
(104926,14314,0,'Shallow Grave 1'),(19278,14314,0,'Shallow Grave 2'),
(104927,14315,0,'Shallow Grave 1'),(69268,14315,0,'Shallow Grave 2'),
(104928,14316,0,'Shallow Grave 1'),(69289,14316,0,'Shallow Grave 2'),
(104929,14317,0,'Shallow Grave 1'),(19274,14317,0,'Shallow Grave 2'),
(104930,14318,0,'Shallow Grave 1'),(19271,14318,0,'Shallow Grave 2'),
(19273,14319,0,'Shallow Grave 1'),(104931,14319,0,'Shallow Grave 2'),
(69292,14320,0,'Shallow Grave 1'),(104932,14320,0,'Shallow Grave 2'),
(69271,14321,0,'Shallow Grave 1'),(104933,14321,0,'Shallow Grave 2'),
(104934,14322,0,'Shallow Grave 1'),(69269,14322,0,'Shallow Grave 2'),
(69284,14323,0,'Shallow Grave 1'),(104935,14323,0,'Shallow Grave 2'),
(104936,14324,0,'Shallow Grave 1'),(19272,14324,0,'Shallow Grave 2'),
(104937,14325,0,'Shallow Grave 1'),(19269,14325,0,'Shallow Grave 2'),
(19287,14326,0,'Shallow Grave 1'),(104938,14326,0,'Shallow Grave 2'),
(69267,14327,0,'Shallow Grave 1'),(104939,14327,0,'Shallow Grave 2'),
(19285,14328,0,'Shallow Grave 1'),(104940,14328,0,'Shallow Grave 2'),
(69270,14329,0,'Shallow Grave 1'),(104941,14329,0,'Shallow Grave 2'),
(69283,14330,0,'Shallow Grave 1'),(104942,14330,0,'Shallow Grave 2'),
(19268,14331,0,'Shallow Grave 1'),(104943,14331,0,'Shallow Grave 2');
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(14273,1,'Shallow Grave 1+2'),
(14274,1,'Shallow Grave 1+2'),
(14275,1,'Shallow Grave 1+2'),
(14276,1,'Shallow Grave 1+2'),
(14277,1,'Shallow Grave 1+2'),
(14278,1,'Shallow Grave 1+2'),
(14279,1,'Shallow Grave 1+2'),
(14280,1,'Shallow Grave 1+2'),
(14281,1,'Shallow Grave 1+2'),
(14282,1,'Shallow Grave 1+2'),
(14283,1,'Shallow Grave 1+2'),
(14284,1,'Shallow Grave 1+2'),
(14285,1,'Shallow Grave 1+2'),
(14286,1,'Shallow Grave 1+2'),
(14287,1,'Shallow Grave 1+2'),
(14288,1,'Shallow Grave 1+2'),
(14289,1,'Shallow Grave 1+2'),
(14290,1,'Shallow Grave 1+2'),
(14291,1,'Shallow Grave 1+2'),
(14292,1,'Shallow Grave 1+2'),
(14293,1,'Shallow Grave 1+2'),
(14294,1,'Shallow Grave 1+2'),
(14295,1,'Shallow Grave 1+2'),
(14296,1,'Shallow Grave 1+2'),
(14297,1,'Shallow Grave 1+2'),
(14298,1,'Shallow Grave 1+2'),
(14299,1,'Shallow Grave 1+2'),
(14300,1,'Shallow Grave 1+2'),
(14301,1,'Shallow Grave 1+2'),
(14302,1,'Shallow Grave 1+2'),
(14303,1,'Shallow Grave 1+2'),
(14304,1,'Shallow Grave 1+2'),
(14305,1,'Shallow Grave 1+2'),
(14306,1,'Shallow Grave 1+2'),
(14307,1,'Shallow Grave 1+2'),
(14308,1,'Shallow Grave 1+2'),
(14309,1,'Shallow Grave 1+2'),
(14310,1,'Shallow Grave 1+2'),
(14311,1,'Shallow Grave 1+2'),
(14312,1,'Shallow Grave 1+2'),
(14313,1,'Shallow Grave 1+2'),
(14314,1,'Shallow Grave 1+2'),
(14315,1,'Shallow Grave 1+2'),
(14316,1,'Shallow Grave 1+2'),
(14317,1,'Shallow Grave 1+2'),
(14318,1,'Shallow Grave 1+2'),
(14319,1,'Shallow Grave 1+2'),
(14320,1,'Shallow Grave 1+2'),
(14321,1,'Shallow Grave 1+2'),
(14322,1,'Shallow Grave 1+2'),
(14323,1,'Shallow Grave 1+2'),
(14324,1,'Shallow Grave 1+2'),
(14325,1,'Shallow Grave 1+2'),
(14326,1,'Shallow Grave 1+2'),
(14327,1,'Shallow Grave 1+2'),
(14328,1,'Shallow Grave 1+2'),
(14329,1,'Shallow Grave 1+2'),
(14330,1,'Shallow Grave 1+2'),
(14331,1,'Shallow Grave 1+2'),
(14332,20,'Shallow Grave 1+2 Master');
REPLACE INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES
(14273,14332,0,'Shallow Grave 1+2'),
(14274,14332,0,'Shallow Grave 1+2'),
(14275,14332,0,'Shallow Grave 1+2'),
(14276,14332,0,'Shallow Grave 1+2'),
(14277,14332,0,'Shallow Grave 1+2'),
(14278,14332,0,'Shallow Grave 1+2'),
(14279,14332,0,'Shallow Grave 1+2'),
(14280,14332,0,'Shallow Grave 1+2'),
(14281,14332,0,'Shallow Grave 1+2'),
(14282,14332,0,'Shallow Grave 1+2'),
(14283,14332,0,'Shallow Grave 1+2'),
(14284,14332,0,'Shallow Grave 1+2'),
(14285,14332,0,'Shallow Grave 1+2'),
(14286,14332,0,'Shallow Grave 1+2'),
(14287,14332,0,'Shallow Grave 1+2'),
(14288,14332,0,'Shallow Grave 1+2'),
(14289,14332,0,'Shallow Grave 1+2'),
(14290,14332,0,'Shallow Grave 1+2'),
(14291,14332,0,'Shallow Grave 1+2'),
(14292,14332,0,'Shallow Grave 1+2'),
(14293,14332,0,'Shallow Grave 1+2'),
(14294,14332,0,'Shallow Grave 1+2'),
(14295,14332,0,'Shallow Grave 1+2'),
(14296,14332,0,'Shallow Grave 1+2'),
(14297,14332,0,'Shallow Grave 1+2'),
(14298,14332,0,'Shallow Grave 1+2'),
(14299,14332,0,'Shallow Grave 1+2'),
(14300,14332,0,'Shallow Grave 1+2'),
(14301,14332,0,'Shallow Grave 1+2'),
(14302,14332,0,'Shallow Grave 1+2'),
(14303,14332,0,'Shallow Grave 1+2'),
(14304,14332,0,'Shallow Grave 1+2'),
(14305,14332,0,'Shallow Grave 1+2'),
(14306,14332,0,'Shallow Grave 1+2'),
(14307,14332,0,'Shallow Grave 1+2'),
(14308,14332,0,'Shallow Grave 1+2'),
(14309,14332,0,'Shallow Grave 1+2'),
(14310,14332,0,'Shallow Grave 1+2'),
(14311,14332,0,'Shallow Grave 1+2'),
(14312,14332,0,'Shallow Grave 1+2'),
(14313,14332,0,'Shallow Grave 1+2'),
(14314,14332,0,'Shallow Grave 1+2'),
(14315,14332,0,'Shallow Grave 1+2'),
(14316,14332,0,'Shallow Grave 1+2'),
(14317,14332,0,'Shallow Grave 1+2'),
(14318,14332,0,'Shallow Grave 1+2'),
(14319,14332,0,'Shallow Grave 1+2'),
(14320,14332,0,'Shallow Grave 1+2'),
(14321,14332,0,'Shallow Grave 1+2'),
(14322,14332,0,'Shallow Grave 1+2'),
(14323,14332,0,'Shallow Grave 1+2'),
(14324,14332,0,'Shallow Grave 1+2'),
(14325,14332,0,'Shallow Grave 1+2'),
(14326,14332,0,'Shallow Grave 1+2'),
(14327,14332,0,'Shallow Grave 1+2'),
(14328,14332,0,'Shallow Grave 1+2'),
(14329,14332,0,'Shallow Grave 1+2'),
(14330,14332,0,'Shallow Grave 1+2'),
(14331,14332,0,'Shallow Grave 1+2');
UPDATE `gameobject_template` SET `data1`='0' WHERE `entry` in (181833,181837,181839,181843,181841);
UPDATE `gameobject_template` SET `data1`='0' WHERE `entry`=184847;
UPDATE `gameobject_template` SET `data1`='181768' WHERE `entry`=181846;
UPDATE `gameobject_template` SET `data1`='181768' WHERE `entry`=181848;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 181846;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 181848;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1' WHERE `entry`=181768 AND `item`=23857;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='0',`groupid`='1' WHERE `entry`=181768 AND `item`=23862;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='0',`groupid`='1' WHERE `entry`=181768 AND `item`=23864;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='0',`groupid`='1' WHERE `entry`=181768 AND `item`=23865;
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`) VALUES
(181833, 6, 1287, 'TEMP Sealed Tome Trap', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30762, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(181837, 6, 1287, 'TEMP Sealed Tome Trap', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30763, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(181839, 6, 1287, 'TEMP Sealed Tome Trap', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30764, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(181841, 6, 1287, 'TEMP Sealed Tome Trap', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30765, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(181843, 6, 1287, 'TEMP Sealed Tome Trap', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30766, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `gameobject` SET `id`='176151',`spawntimesecs`='120' WHERE `guid`=12609;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(7709, 176150, 0, 1, 1, 1444.82, -1503, 72.337, 1.693, 0, 0, 0.748966, 0.662609, 120, 100, 1),
(7710, 176150, 0, 1, 1, 1384.89, -1453.23, 56.969, 0.279, 0, 0, 0.139048, 0.990286, 120, 100, 1),
(7713, 176150, 0, 1, 1, 1382.42, -1449.85, 56.969, 1.64061, 0, 0, 0.731354, 0.681998, 120, 100, 1),
(7714, 176150, 0, 1, 1, 1360.85, -1458.26, 56.969, 0.645772, 0, 0, 0.317305, 0.948324, 120, 100, 1),
(7717, 176150, 0, 1, 1, 1374.15, -1448.33, 56.969, 1.69297, 0, 0, 0.748956, 0.66262, 120, 100, 1),
(7720, 176150, 0, 1, 1, 1393.88, -1457.68, 58.3282, 2.33874, 0, 0, 0.920505, 0.390732, 120, 100, 1),
(7724, 176150, 0, 1, 1, 1360.83, -1448.93, 56.969, 1.95477, 0, 0, 0.829038, 0.559192, 120, 100, 1),
(7726, 176150, 0, 1, 1, 1394.99, -1450.47, 58.3282, 0.855211, 0, 0, 0.414693, 0.909961, 120, 100, 1),
(7730, 176150, 0, 1, 1, 1356.51, -1452.11, 57.8184, -0.296706, 0, 0, -0.147809, 0.989016, 120, 100, 1),
(7732, 176150, 0, 1, 1, 1385.29, -1455.31, 56.9689, 0.017453, 0, 0, 0.00872639, 0.999962, 120, 100, 1),
(7733, 176150, 0, 1, 1, 1380.05, -1457.83, 56.9689, 1.71042, 0, 0, 0.754709, 0.65606, 120, 100, 1);
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(7709,14333,10,'Musty Tome 1'),(5420,14333,0,'Musty Tome 2'),
(7710,14334,10,'Musty Tome 1'),(12609,14334,0,'Musty Tome 2'),
(7713,14335,10,'Musty Tome 1'),(25837,14335,0,'Musty Tome 2'),
(7714,14336,10,'Musty Tome 1'),(25838,14336,0,'Musty Tome 2'),
(7717,14337,10,'Musty Tome 1'),(25839,14337,0,'Musty Tome 2'),
(7720,14338,10,'Musty Tome 1'),(25840,14338,0,'Musty Tome 2'),
(7724,14339,10,'Musty Tome 1'),(25841,14339,0,'Musty Tome 2'),
(7726,14340,10,'Musty Tome 1'),(25842,14340,0,'Musty Tome 2'),
(7730,14341,10,'Musty Tome 1'),(25843,14341,0,'Musty Tome 2'),
(7732,14342,10,'Musty Tome 1'),(25844,14342,0,'Musty Tome 2'),
(7733,14343,10,'Musty Tome 1'),(25845,14343,0,'Musty Tome 2');
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(14333,1,'Musty Tome 1+2'),
(14334,1,'Musty Tome 1+2'),
(14335,1,'Musty Tome 1+2'),
(14336,1,'Musty Tome 1+2'),
(14337,1,'Musty Tome 1+2'),
(14338,1,'Musty Tome 1+2'),
(14339,1,'Musty Tome 1+2'),
(14340,1,'Musty Tome 1+2'),
(14341,1,'Musty Tome 1+2'),
(14342,1,'Musty Tome 1+2'),
(14343,1,'Musty Tome 1+2');
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='100' WHERE `item`=15696;
UPDATE `gameobject_template` SET `flags`='4' WHERE `entry`=176150;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(42293, 176152, 0, 1, 1, 1444.82, -1503, 72.337, 1.693, 0, 0, 0.748966, 0.662609, 120, 100, 1),
(42186, 176152, 0, 1, 1, 1384.89, -1453.23, 56.969, 0.279, 0, 0, 0.139048, 0.990286, 120, 100, 1),
(42171, 176152, 0, 1, 1, 1382.42, -1449.85, 56.969, 1.64061, 0, 0, 0.731354, 0.681998, 120, 100, 1),
(42504, 176152, 0, 1, 1, 1360.85, -1458.26, 56.969, 0.645772, 0, 0, 0.317305, 0.948324, 120, 100, 1),
(42372, 176152, 0, 1, 1, 1374.15, -1448.33, 56.969, 1.69297, 0, 0, 0.748956, 0.66262, 120, 100, 1),
(48545, 176152, 0, 1, 1, 1393.88, -1457.68, 58.3282, 2.33874, 0, 0, 0.920505, 0.390732, 120, 100, 1),
(48664, 176152, 0, 1, 1, 1360.83, -1448.93, 56.969, 1.95477, 0, 0, 0.829038, 0.559192, 120, 100, 1),
(57794, 176152, 0, 1, 1, 1394.99, -1450.47, 58.3282, 0.855211, 0, 0, 0.414693, 0.909961, 120, 100, 1),
(57899, 176152, 0, 1, 1, 1356.51, -1452.11, 57.8184, -0.296706, 0, 0, -0.147809, 0.989016, 120, 100, 1),
(7734, 176152, 0, 1, 1, 1385.29, -1455.31, 56.9689, 0.017453, 0, 0, 0.00872639, 0.999962, 120, 100, 1),
(7735, 176152, 0, 1, 1, 1380.05, -1457.83, 56.9689, 1.71042, 0, 0, 0.754709, 0.65606, 120, 100, 1);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE `item`=17684;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE `item`=17684;
DELETE FROM `gossip_menu` WHERE `entry` = 50162;
DELETE FROM `gossip_menu` WHERE `entry` = 50163;
UPDATE `creature_template` SET `gossip_menu_id`='0', `npcflag`='0', `ScriptName`='' WHERE `entry`=26075;
UPDATE `creature_template` SET `gossip_menu_id`='0', `npcflag`='0', `ScriptName`='' WHERE `entry`=26307;
UPDATE creature_template SET gossip_menu_id = 8912 WHERE entry = 24208;
UPDATE gossip_menu SET entry = 8912 WHERE entry = 50253;
UPDATE gossip_menu_option SET menu_id = 8912 WHERE menu_id = 50253;
UPDATE locales_gossip_menu_option SET menu_id = 8912 WHERE menu_id = 50253;
UPDATE creature_template SET gossip_menu_id = 8267 WHERE entry = 20395;
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES ('8267', '10290');
UPDATE creature_template SET gossip_menu_id = 8257 WHERE entry = 20120;
UPDATE gossip_menu SET entry = 8257 WHERE entry = 50339;
UPDATE gossip_menu_option SET menu_id = 8257 WHERE menu_id = 50339;
UPDATE locales_gossip_menu_option SET menu_id = 8257 WHERE menu_id = 50339;
UPDATE `gossip_menu` SET `text_id`='10278' WHERE `entry`=8257 AND `text_id`=9979;
UPDATE creature_template SET gossip_menu_id = 6472 WHERE entry = 907;
UPDATE gossip_menu SET entry = 6472 WHERE entry = 50335;
UPDATE gossip_menu_option SET menu_id = 6472 WHERE menu_id = 50335;
UPDATE locales_gossip_menu_option SET menu_id = 6472 WHERE menu_id = 50335;
UPDATE creature_template SET gossip_menu_id = 6474 WHERE entry = 12198;
UPDATE gossip_menu SET entry = 6474 WHERE entry = 50334;
UPDATE gossip_menu_option SET menu_id = 6474 WHERE menu_id = 50334;
UPDATE locales_gossip_menu_option SET menu_id = 6474 WHERE menu_id = 50334;
UPDATE creature_template SET gossip_menu_id = 6470 WHERE entry = 15006;
UPDATE gossip_menu SET entry = 6470 WHERE entry = 50336;
UPDATE gossip_menu_option SET menu_id = 6470 WHERE menu_id = 50336;
UPDATE locales_gossip_menu_option SET menu_id = 6470 WHERE menu_id = 50336;
UPDATE `gossip_menu` SET `text_id`='7663' WHERE `entry`=6470 AND `text_id`=7664;
UPDATE creature_template SET gossip_menu_id = 6473 WHERE entry = 15008;
UPDATE gossip_menu SET entry = 6473 WHERE entry = 50337;
UPDATE gossip_menu_option SET menu_id = 6473 WHERE menu_id = 50337;
UPDATE locales_gossip_menu_option SET menu_id = 6473 WHERE menu_id = 50337;
UPDATE creature_template SET gossip_menu_id = 8265 WHERE entry = 20273;
UPDATE gossip_menu SET entry = 8265 WHERE entry = 50341;
UPDATE gossip_menu_option SET menu_id = 8265 WHERE menu_id = 50341;
UPDATE locales_gossip_menu_option SET menu_id = 8265 WHERE menu_id = 50341;
UPDATE creature_template SET gossip_menu_id = 8262 WHERE entry = 20274;
UPDATE gossip_menu SET entry = 8262 WHERE entry = 50344;
UPDATE gossip_menu_option SET menu_id = 8262 WHERE menu_id = 50344;
UPDATE locales_gossip_menu_option SET menu_id = 8262 WHERE menu_id = 50344;
UPDATE `gossip_menu` SET `text_id`='10284' WHERE `entry`=8262 AND `text_id`=10276;
UPDATE `gossip_menu` SET `text_id`='7642' WHERE `entry`=6475 AND `text_id`=7699;
UPDATE `gossip_menu` SET `text_id`='7642' WHERE `entry`=6474 AND `text_id`=7699;
UPDATE `gossip_menu` SET `text_id`='7678' WHERE `entry`=6478 AND `text_id`=7642;
UPDATE `gossip_menu` SET `text_id`='7642' WHERE `entry`=8255 AND `text_id`=7699;
UPDATE `gossip_menu` SET `text_id`='7642' WHERE `entry`=6470 AND `text_id`=7699;
REPLACE INTO `creature_template_addon` (`entry`, `auras`) VALUES ('35379', '66157'), ('35380', '66157'), ('35349', '68652'), ('35350', '68652');
UPDATE creature_template SET faction_A = 1802, faction_H = 1802, unit_flags = unit_flags | 0x2 | 0x02000000 WHERE entry IN (35379, 36349);
UPDATE creature_template SET faction_A = 1801, faction_H = 1801, unit_flags = unit_flags | 0x2 | 0x02000000 WHERE entry IN (35380, 36350);
UPDATE creature_template SET gossip_menu_id = 8266 WHERE entry = 20339;
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES ('8266', '10288');
DELETE FROM `npc_trainer` WHERE `entry` = 2485 AND `spell` = 3562;
DELETE FROM `npc_trainer` WHERE `entry` = 2485 AND `spell` = 3565;
UPDATE `gossip_menu_option` SET `option_text`='Please teach me.' WHERE `menu_id` in (4821,4823,4825,4827,8268,8433,9578,9777);
UPDATE `gossip_menu_option` SET `id`='0' WHERE `menu_id`=4821 AND `id`=1;
UPDATE `gossip_menu_option` SET `id`='0' WHERE `menu_id`=4825 AND `id`=1;
UPDATE `gossip_menu_option` SET `id`='0' WHERE `menu_id`=4827 AND `id`=1;
UPDATE `gossip_menu_option` SET `id`='0' WHERE `menu_id`=8433 AND `id`=1;
UPDATE `gossip_menu_option` SET `id`='0' WHERE `menu_id`=9581 AND `id`=1;
UPDATE `gossip_menu_option` SET `id`='0' WHERE `menu_id`=9777 AND `id`=1;
UPDATE `locales_gossip_menu_option` SET `id`='0' WHERE `menu_id`=4821 AND `id`=1;
UPDATE `locales_gossip_menu_option` SET `id`='0' WHERE `menu_id`=4825 AND `id`=1;
UPDATE `locales_gossip_menu_option` SET `id`='0' WHERE `menu_id`=4827 AND `id`=1;
UPDATE `locales_gossip_menu_option` SET `id`='0' WHERE `menu_id`=8433 AND `id`=1;
UPDATE `locales_gossip_menu_option` SET `id`='0' WHERE `menu_id`=9581 AND `id`=1;
UPDATE `locales_gossip_menu_option` SET `id`='0' WHERE `menu_id`=9777 AND `id`=1;
UPDATE `gossip_menu` SET `text_id`='10291' WHERE `entry`=8433 AND `text_id`=5879;
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (9581,12932);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (12517,4837);
UPDATE `creature_template` SET `gossip_menu_id`='12517' WHERE `entry`=23566;
UPDATE `gossip_menu` SET `text_id`='12927' WHERE `entry`=9578 AND `text_id`=5875;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='10' WHERE `item` in (19943,12804,8152);
DELETE FROM `pickpocketing_loot_template` WHERE `item` = 8152;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 4085;
UPDATE `gossip_menu_option` SET `id`='0' WHERE `menu_id`=4085 AND `id`=1;
UPDATE `gossip_menu_option` SET `option_text`='Yes, in Augustus. I would like to do business.' WHERE `menu_id`=4085 AND `id`=0;
DELETE FROM db_script_string WHERE entry=2000000761;
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE `id`=23620;
UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE `guid` in (125313,125314);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`) VALUES
(128076, 2110, 1, 1, 1, 0, 0, -4069.02, -4521.24, 6.38387, 5.26387, 300, 0, 0, 1, 0),
(128077, 2110, 1, 1, 1, 0, 0, -4082.02, -4519.49, 6.38396, 4.16196, 300, 0, 0, 1, 0),
(128086, 23620, 1, 1, 1, 0, 0, -4081.17, -4537.29, 6.38117, 4.7675, 300, 0, 0, 1220, 0);
UPDATE `quest_template` SET `CompleteScript`='11128' WHERE `id`=11128;
REPLACE INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000761, 'With just a little creative editing, these are much more useful...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000762, 'It would be a shame to let these leaflets go to waste, wouldn''t it?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
DELETE FROM quest_end_scripts WHERE id=11128;
INSERT INTO quest_end_scripts (id, delay, command, datalong, datalong2, dataint, x, y, z, o) VALUES 
(11128,1,0,0,0,2000000761,0,0,0,0),
(11128,0,29,3,23566,10,0,0,0,0),
(11128,3,1,69,0,0,0,0,0,0),
(11128,8,1,0,0,0,0,0,0,0),
(11128,9,29,3,23566,10,0,0,0,0),
(11128,7,0,0,0,2000000762,0,0,0,0);  
UPDATE `creature_template` SET `lootid`='0', `pickpocketloot`='0' WHERE `entry`=4979;
DELETE FROM `creature_loot_template` WHERE `entry` = 4979;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 4979;

# Fix
-- ToC missing trigger spawns
SET @GUID            := 142814;
SET @NPC_TRIGGER1    := 34704; -- Val'kyr Twins Bullet Stalker Dark
SET @NPC_TRIGGER2    := 34720; -- Val'kyr Twins Bullet Stalker Light
UPDATE `creature_template` SET `flags_extra`=128 WHERE `entry` IN (@NPC_TRIGGER1,@NPC_TRIGGER2);
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID+0 AND @GUID+61;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`) VALUES
(@GUID+0,@NPC_TRIGGER1,649,15,1,0,0,619.771,143.71,395.244,4.60767,7200,0,0,1,0),
(@GUID+1,@NPC_TRIGGER1,649,15,1,0,0,515.352,115.349,395.288,4.60767,7200,0,0,1,0),
(@GUID+2,@NPC_TRIGGER1,649,15,1,0,0,605.514,103.863,395.29,4.60767,7200,0,0,1,0),
(@GUID+3,@NPC_TRIGGER1,649,15,1,0,0,615.137,156.997,395.28,4.60767,7200,0,0,1,0),
(@GUID+4,@NPC_TRIGGER1,649,15,1,0,0,539.179,184.132,395.282,4.60767,7200,0,0,1,0),
(@GUID+5,@NPC_TRIGGER1,649,15,1,0,0,547.76,184.634,395.289,2.93215,7200,0,0,1,0),
(@GUID+6,@NPC_TRIGGER1,649,15,1,0,0,549.764,86.4444,395.266,4.60767,7200,0,0,1,0),
(@GUID+7,@NPC_TRIGGER1,649,15,1,0,0,511.417,127.158,395.266,4.60767,7200,0,0,1,0),
(@GUID+8,@NPC_TRIGGER1,649,15,1,0,0,597.38,183.672,395.28,4.60767,7200,0,0,1,0),
(@GUID+9,@NPC_TRIGGER1,649,15,1,0,0,573.578,187.665,395.492,4.60767,7200,0,0,1,0),
(@GUID+10,@NPC_TRIGGER1,649,15,1,0,0,620.465,134.66,395.233,4.60767,7200,0,0,1,0),
(@GUID+11,@NPC_TRIGGER1,649,15,1,0,0,560.484,187.743,395.959,2.93215,7200,0,0,1,0),
(@GUID+12,@NPC_TRIGGER1,649,15,1,0,0,577.299,186.854,395.289,4.60767,7200,0,0,1,0),
(@GUID+13,@NPC_TRIGGER1,649,15,1,0,0,563.467,81.9323,395.288,4.60767,7200,0,0,1,0),
(@GUID+14,@NPC_TRIGGER1,649,15,1,0,0,534.748,92.6424,395.289,4.60767,7200,0,0,1,0),
(@GUID+15,@NPC_TRIGGER1,649,15,1,0,0,518.503,170.649,395.289,4.60767,7200,0,0,1,0),
(@GUID+16,@NPC_TRIGGER1,649,15,1,0,0,514.566,159.918,395.287,4.60767,7200,0,0,1,0),
(@GUID+17,@NPC_TRIGGER1,649,15,1,0,0,568.049,187.67,395.563,4.60767,7200,0,0,1,0),
(@GUID+18,@NPC_TRIGGER1,649,15,1,0,0,522.955,102.127,395.29,4.60767,7200,0,0,1,0),
(@GUID+19,@NPC_TRIGGER1,649,15,1,0,0,611.656,114.281,395.288,4.60767,7200,0,0,1,0),
(@GUID+20,@NPC_TRIGGER1,649,15,1,0,0,616.432,126.418,395.264,4.60767,7200,0,0,1,0),
(@GUID+21,@NPC_TRIGGER1,649,15,1,0,0,526.833,181.783,395.285,4.60767,7200,0,0,1,0),
(@GUID+22,@NPC_TRIGGER1,649,15,1,0,0,578.722,87.4444,395.272,4.60767,7200,0,0,1,0),
(@GUID+23,@NPC_TRIGGER1,649,15,1,0,0,509.743,149.005,395.253,4.60767,7200,0,0,1,0),
(@GUID+24,@NPC_TRIGGER1,649,15,1,0,0,592.736,93.6667,395.289,4.60767,7200,0,0,1,0),
(@GUID+25,@NPC_TRIGGER1,649,15,1,0,0,506.038,139.517,395.288,4.60767,7200,0,0,1,0),
(@GUID+26,@NPC_TRIGGER1,649,15,1,0,0,608.116,171.731,395.289,4.60767,7200,0,0,1,0),
(@GUID+27,@NPC_TRIGGER1,649,15,1,0,0,586.344,184.078,395.283,4.60767,7200,0,0,1,0),
(@GUID+28,@NPC_TRIGGER1,649,15,1,0,0,554.818,187.568,395.288,2.93215,7200,0,0,1,0),
(@GUID+29,@NPC_TRIGGER2,649,15,1,0,0,557.743,187.729,395.915,0,7200,0,0,1,0),
(@GUID+30,@NPC_TRIGGER2,649,15,1,0,0,544.094,184.648,395.286,0,7200,0,0,1,0),
(@GUID+31,@NPC_TRIGGER2,649,15,1,0,0,551.328,187.646,395.596,0,7200,0,0,1,0),
(@GUID+32,@NPC_TRIGGER2,649,15,1,0,0,615.137,150.818,395.269,0,7200,0,0,1,0),
(@GUID+33,@NPC_TRIGGER2,649,15,1,0,0,571.158,187.691,395.629,0,7200,0,0,1,0),
(@GUID+34,@NPC_TRIGGER2,649,15,1,0,0,606.686,106.731,395.289,0,7200,0,0,1,0),
(@GUID+35,@NPC_TRIGGER2,649,15,1,0,0,612.118,118.844,395.287,0,7200,0,0,1,0),
(@GUID+36,@NPC_TRIGGER2,649,15,1,0,0,546.057,88.7691,395.284,0,7200,0,0,1,0),
(@GUID+37,@NPC_TRIGGER2,649,15,1,0,0,517.722,169.069,395.289,0,7200,0,0,1,0),
(@GUID+38,@NPC_TRIGGER2,649,15,1,0,0,507.181,142.285,395.255,0,7200,0,0,1,0),
(@GUID+39,@NPC_TRIGGER2,649,15,1,0,0,515.399,159.75,395.287,0,7200,0,0,1,0),
(@GUID+40,@NPC_TRIGGER2,649,15,1,0,0,592.151,183.8,395.279,0,7200,0,0,1,0),
(@GUID+41,@NPC_TRIGGER2,649,15,1,0,0,510.759,127.333,395.263,0,7200,0,0,1,0),
(@GUID+42,@NPC_TRIGGER2,649,15,1,0,0,524.257,178.134,395.29,0,7200,0,0,1,0),
(@GUID+43,@NPC_TRIGGER2,649,15,1,0,0,570.779,86.2986,395.253,0,7200,0,0,1,0),
(@GUID+44,@NPC_TRIGGER2,649,15,1,0,0,588.675,93.0938,395.289,0,7200,0,0,1,0),
(@GUID+45,@NPC_TRIGGER2,649,15,1,0,0,603.528,175.476,395.289,0,7200,0,0,1,0),
(@GUID+46,@NPC_TRIGGER2,649,15,1,0,0,509.639,133.26,395.247,0,7200,0,0,1,0),
(@GUID+47,@NPC_TRIGGER2,649,15,1,0,0,618.965,139.174,395.288,0,7200,0,0,1,0),
(@GUID+48,@NPC_TRIGGER2,649,15,1,0,0,514.785,118.731,395.287,0,7200,0,0,1,0),
(@GUID+49,@NPC_TRIGGER2,649,15,1,0,0,581.243,184.062,395.287,0,7200,0,0,1,0),
(@GUID+50,@NPC_TRIGGER2,649,15,1,0,0,577.757,184.436,395.289,0,7200,0,0,1,0),
(@GUID+51,@NPC_TRIGGER2,649,15,1,0,0,580.486,89.691,395.287,0,7200,0,0,1,0),
(@GUID+52,@NPC_TRIGGER2,649,15,1,0,0,511.132,151.156,395.264,0,7200,0,0,1,0),
(@GUID+53,@NPC_TRIGGER2,649,15,1,0,0,615.401,130.816,395.263,0,7200,0,0,1,0),
(@GUID+54,@NPC_TRIGGER2,649,15,1,0,0,599.307,98.8003,395.29,0,7200,0,0,1,0),
(@GUID+55,@NPC_TRIGGER2,649,15,1,0,0,520.212,108.429,395.289,0,7200,0,0,1,0),
(@GUID+56,@NPC_TRIGGER2,649,15,1,0,0,610.983,164.696,395.288,0,7200,0,0,1,0),
(@GUID+57,@NPC_TRIGGER2,649,15,1,0,0,526.337,99.5556,395.29,0,7200,0,0,1,0),
(@GUID+58,@NPC_TRIGGER2,649,15,1,0,0,563.997,187.644,395.489,0,7200,0,0,1,0),
(@GUID+59,@NPC_TRIGGER2,649,15,1,0,0,555.695,86.0208,395.253,0,7200,0,0,1,0),
(@GUID+60,@NPC_TRIGGER2,649,15,1,0,0,535.924,184.207,395.279,0,7200,0,0,1,0),
(@GUID+61,@NPC_TRIGGER2,649,15,1,0,0,538.024,92.441,395.289,0,7200,0,0,1,0);

# Conditions
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '802', '0', '0', '31', '0', '3', '15316', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '802', '0', '1', '31', '0', '3', '15317', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '804', '0', '0', '31', '0', '3', '15316', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '804', '0', '1', '31', '0', '3', '15317', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '3730', '0', '0', '31', '0', '3', '15263', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '5249', '0', '0', '31', '0', '3', '28659', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '5432', '0', '0', '31', '0', '3', '31892', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '6955', '0', '0', '31', '0', '3', '4946', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '6967', '0', '0', '31', '0', '3', '28028', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '6967', '0', '1', '31', '0', '3', '28029', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '7022', '0', '0', '31', '0', '3', '4945', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '7035', '0', '0', '31', '0', '3', '4251', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '7036', '0', '0', '31', '0', '3', '4252', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '7277', '0', '0', '31', '0', '3', '5409', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '7393', '0', '0', '31', '0', '3', '15275', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '7393', '0', '1', '31', '0', '3', '15276', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '7728', '0', '0', '31', '0', '5', '92015', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '8202', '0', '0', '31', '0', '5', '63674', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '8202', '0', '1', '31', '0', '5', '100028', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '8202', '0', '2', '31', '0', '5', '100035', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '8202', '0', '3', '31', '0', '5', '101748', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '8202', '0', '4', '31', '0', '5', '101749', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '8202', '0', '5', '31', '0', '5', '101750', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '8202', '0', '6', '31', '0', '5', '101751', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '8283', '0', '0', '31', '0', '3', '4781', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '8593', '0', '0', '31', '0', '3', '6172', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '8593', '0', '1', '31', '0', '3', '6177', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '8593', '0', '2', '31', '0', '3', '17542', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '8596', '0', '0', '31', '0', '3', '6173', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '8674', '0', '0', '31', '0', '5', '92015', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '6', '8712', '0', '0', '31', '0', '5', '92388', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '8898', '0', '0', '31', '0', '5', '63674', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '8898', '0', '1', '31', '0', '5', '100028', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '8898', '0', '2', '31', '0', '5', '100035', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '8898', '0', '3', '31', '0', '5', '101748', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '8898', '0', '4', '31', '0', '5', '101749', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '8898', '0', '5', '31', '0', '5', '101750', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '8898', '0', '6', '31', '0', '5', '101751', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '8899', '0', '0', '31', '0', '5', '63674', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '8899', '0', '1', '31', '0', '5', '100028', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '8899', '0', '2', '31', '0', '5', '100035', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '8899', '0', '3', '31', '0', '5', '101748', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '8899', '0', '4', '31', '0', '5', '101749', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '8899', '0', '5', '31', '0', '5', '101750', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '8899', '0', '6', '31', '0', '5', '101751', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '5', '8913', '0', '0', '31', '0', '3', '1200', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '9002', '0', '0', '31', '0', '3', '1051', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '9012', '0', '0', '31', '0', '3', '6492', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '9082', '0', '0', '31', '0', '3', '6492', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '9095', '0', '0', '31', '0', '3', '6492', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '9221', '0', '0', '31', '0', '5', '37097', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '9222', '0', '0', '31', '0', '5', '105576', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '9232', '0', '0', '31', '0', '3', '3976', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '9257', '0', '0', '31', '0', '3', '3977', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '9455', '0', '0', '31', '0', '3', '2163', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '9455', '0', '1', '31', '0', '3', '2164', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '9457', '0', '0', '31', '0', '3', '3701', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '9712', '0', '0', '31', '0', '3', '2726', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '9976', '0', '0', '31', '0', '3', '7167', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '9976', '0', '1', '31', '0', '3', '8391', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '10113', '0', '0', '31', '0', '3', '7233', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '10137', '0', '0', '31', '0', '3', '7233', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '10259', '0', '0', '31', '0', '3', '7077', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '10259', '0', '1', '31', '0', '3', '7309', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '10260', '0', '0', '31', '0', '3', '2748', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '10345', '0', '0', '31', '0', '3', '25', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '10345', '0', '1', '31', '0', '3', '2678', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '10348', '0', '0', '31', '0', '3', '6225', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '10348', '0', '1', '31', '0', '3', '6226', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '10348', '0', '2', '31', '0', '3', '6227', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '10732', '0', '0', '31', '0', '3', '25', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '10732', '0', '1', '31', '0', '3', '2678', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '10747', '0', '0', '31', '0', '3', '7271', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '10860', '0', '0', '31', '0', '3', '7732', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '11195', '0', '0', '31', '0', '5', '141832', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '11195', '0', '1', '31', '0', '5', '146084', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '11402', '0', '0', '31', '0', '3', '7774', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '11513', '0', '0', '31', '0', '3', '6213', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '11513', '0', '1', '31', '0', '3', '6329', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '11637', '0', '0', '31', '0', '3', '6218', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '11637', '0', '1', '31', '0', '3', '6219', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '11637', '0', '2', '31', '0', '3', '6220', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '11757', '0', '0', '31', '0', '5', '144064', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '11792', '0', '0', '31', '0', '5', '144070', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '11893', '0', '0', '31', '0', '3', '8156', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '12134', '0', '0', '31', '0', '3', '5256', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '12134', '0', '1', '31', '0', '3', '5259', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '12134', '0', '2', '31', '0', '3', '5270', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '12134', '0', '3', '31', '0', '3', '5271', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '12134', '0', '4', '31', '0', '3', '5273', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '12139', '0', '0', '31', '0', '3', '5270', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '12151', '0', '0', '31', '0', '3', '5273', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '12347', '0', '0', '31', '0', '3', '8442', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '12512', '0', '0', '31', '0', '5', '149047', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '12613', '0', '0', '31', '0', '3', '5843', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '12623', '0', '0', '31', '0', '3', '8443', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '12699', '0', '0', '31', '0', '3', '5307', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '12699', '0', '1', '31', '0', '3', '5308', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '12709', '0', '0', '31', '0', '3', '6218', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '12709', '0', '1', '31', '0', '3', '6219', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '12709', '0', '2', '31', '0', '3', '6220', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '12774', '0', '0', '31', '0', '3', '8662', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '12938', '0', '0', '31', '0', '3', '7664', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '12938', '0', '1', '31', '0', '3', '7668', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '13461', '0', '0', '31', '0', '3', '7664', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '13488', '0', '0', '31', '0', '3', '7033', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '13488', '0', '1', '31', '0', '3', '7034', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '13488', '0', '2', '31', '0', '3', '7035', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '13489', '0', '0', '31', '0', '3', '9178', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '13727', '0', '0', '31', '0', '5', '162024', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '13951', '0', '0', '31', '0', '3', '2520', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '13982', '0', '0', '31', '0', '3', '9016', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '14250', '0', '0', '31', '0', '3', '9520', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '14806', '0', '0', '31', '0', '3', '9157', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '14813', '0', '0', '31', '0', '3', '14878', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '14928', '0', '0', '31', '0', '3', '9503', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '15281', '0', '0', '31', '0', '3', '9816', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '15591', '0', '0', '31', '0', '3', '9999', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '15658', '0', '0', '31', '0', '3', '8929', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '15746', '0', '0', '31', '0', '5', '175124', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '15958', '0', '0', '31', '0', '5', '175124', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '15998', '0', '0', '31', '0', '3', '10221', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '16007', '0', '0', '31', '0', '3', '7047', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '16007', '0', '1', '31', '0', '3', '7048', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '16032', '0', '0', '31', '0', '3', '6557', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '16053', '0', '0', '31', '0', '5', '175321', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '16053', '0', '1', '31', '0', '3', '10321', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '16337', '0', '0', '31', '0', '3', '10339', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '16337', '0', '1', '31', '0', '3', '10429', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '16378', '0', '0', '31', '0', '5', '148503', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '16378', '0', '1', '31', '0', '3', '10541', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '16381', '0', '0', '31', '0', '3', '10411', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '16447', '0', '0', '31', '0', '5', '175621', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '16452', '0', '0', '31', '0', '3', '10601', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '16452', '0', '1', '31', '0', '3', '10602', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '16556', '0', '0', '31', '0', '5', '175124', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '16613', '0', '0', '31', '0', '5', '175795', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '16629', '0', '0', '31', '0', '3', '1852', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '16637', '0', '0', '31', '0', '3', '10447', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17016', '0', '0', '31', '0', '5', '176094', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17016', '0', '1', '31', '0', '5', '176095', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17016', '0', '2', '31', '0', '5', '176096', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17016', '0', '3', '31', '0', '5', '176097', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17016', '0', '4', '31', '0', '5', '300030', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '17048', '0', '0', '31', '0', '3', '10899', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '17166', '0', '0', '31', '0', '3', '7583', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '17166', '0', '1', '31', '0', '3', '10977', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '17166', '0', '2', '31', '0', '3', '10978', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '17166', '0', '3', '31', '0', '3', '17116', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '17166', '0', '4', '31', '0', '3', '17240', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '17166', '0', '5', '31', '0', '3', '17440', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '17179', '0', '0', '31', '0', '3', '10508', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '17190', '0', '0', '31', '0', '3', '10508', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '17279', '0', '0', '31', '0', '3', '10997', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '17471', '0', '0', '31', '0', '3', '11197', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '17536', '0', '0', '31', '0', '3', '11218', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '17616', '0', '0', '31', '0', '3', '10469', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '17616', '0', '1', '31', '0', '3', '10477', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '17618', '0', '0', '31', '0', '3', '11258', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '17618', '0', '1', '31', '0', '3', '11582', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '17698', '0', '0', '31', '0', '3', '11197', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '0', '31', '0', '5', '176513', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '1', '31', '0', '5', '176514', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '2', '31', '0', '5', '176515', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '3', '31', '0', '5', '176809', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '4', '31', '0', '5', '176810', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '5', '31', '0', '5', '176811', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '6', '31', '0', '5', '176812', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '7', '31', '0', '5', '176813', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '8', '31', '0', '5', '176814', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '9', '31', '0', '5', '176815', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '10', '31', '0', '5', '176816', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '11', '31', '0', '5', '176817', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '12', '31', '0', '5', '176818', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '13', '31', '0', '5', '176819', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '14', '31', '0', '5', '176820', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '15', '31', '0', '5', '176821', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '16', '31', '0', '5', '176822', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '17', '31', '0', '5', '176823', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '18', '31', '0', '5', '176824', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '19', '31', '0', '5', '176825', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '20', '31', '0', '5', '176826', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '21', '31', '0', '5', '176827', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '22', '31', '0', '5', '176828', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '23', '31', '0', '5', '176829', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '24', '31', '0', '5', '176830', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '25', '31', '0', '5', '176831', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '26', '31', '0', '5', '176832', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '27', '31', '0', '5', '176833', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '28', '31', '0', '5', '176834', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '29', '31', '0', '5', '176835', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '30', '31', '0', '5', '176836', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '31', '31', '0', '5', '176837', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '32', '31', '0', '5', '176838', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '33', '31', '0', '5', '176839', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '34', '31', '0', '5', '176840', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '35', '31', '0', '5', '176841', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '36', '31', '0', '5', '176842', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '37', '31', '0', '5', '176908', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '38', '31', '0', '5', '176909', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '39', '31', '0', '5', '176910', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '40', '31', '0', '5', '176911', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '41', '31', '0', '5', '176912', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '42', '31', '0', '5', '176913', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '43', '31', '0', '5', '176914', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '44', '31', '0', '5', '176915', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '45', '31', '0', '5', '176916', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '46', '31', '0', '5', '176917', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '47', '31', '0', '5', '176918', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '48', '31', '0', '5', '176919', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '49', '31', '0', '5', '176920', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '50', '31', '0', '5', '176921', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '17731', '0', '51', '31', '0', '5', '176922', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '17748', '0', '0', '31', '0', '3', '10556', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '0', '31', '0', '5', '176513', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '1', '31', '0', '5', '176514', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '2', '31', '0', '5', '176515', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '3', '31', '0', '5', '176809', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '4', '31', '0', '5', '176810', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '5', '31', '0', '5', '176811', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '6', '31', '0', '5', '176812', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '7', '31', '0', '5', '176813', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '8', '31', '0', '5', '176814', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '9', '31', '0', '5', '176815', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '10', '31', '0', '5', '176816', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '11', '31', '0', '5', '176817', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '12', '31', '0', '5', '176818', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '13', '31', '0', '5', '176819', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '14', '31', '0', '5', '176820', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '15', '31', '0', '5', '176821', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '16', '31', '0', '5', '176822', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '17', '31', '0', '5', '176823', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '18', '31', '0', '5', '176824', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '19', '31', '0', '5', '176825', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '20', '31', '0', '5', '176826', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '21', '31', '0', '5', '176827', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '22', '31', '0', '5', '176828', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '23', '31', '0', '5', '176829', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '24', '31', '0', '5', '176830', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '25', '31', '0', '5', '176831', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '26', '31', '0', '5', '176832', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '27', '31', '0', '5', '176833', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '28', '31', '0', '5', '176834', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '29', '31', '0', '5', '176835', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '30', '31', '0', '5', '176836', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '31', '31', '0', '5', '176837', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '32', '31', '0', '5', '176838', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '33', '31', '0', '5', '176839', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '34', '31', '0', '5', '176840', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '35', '31', '0', '5', '176841', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '36', '31', '0', '5', '176842', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '37', '31', '0', '5', '176908', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '38', '31', '0', '5', '176909', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '39', '31', '0', '5', '176910', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '40', '31', '0', '5', '176911', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '41', '31', '0', '5', '176912', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '42', '31', '0', '5', '176913', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '43', '31', '0', '5', '176914', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '44', '31', '0', '5', '176915', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '45', '31', '0', '5', '176916', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '46', '31', '0', '5', '176917', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '47', '31', '0', '5', '176918', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '48', '31', '0', '5', '176919', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '49', '31', '0', '5', '176920', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '50', '31', '0', '5', '176921', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '18431', '0', '51', '31', '0', '5', '176922', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '18666', '0', '0', '31', '0', '3', '10937', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '18969', '0', '0', '31', '0', '3', '12126', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '19032', '0', '0', '31', '0', '3', '12202', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '5', '19250', '0', '0', '31', '0', '3', '12247', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '19749', '0', '0', '31', '0', '3', '12352', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '19773', '0', '0', '31', '0', '3', '12018', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '5', '19832', '0', '0', '31', '0', '3', '12435', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '19873', '0', '0', '31', '0', '5', '177807', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '19952', '0', '0', '31', '0', '3', '11502', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '20553', '0', '0', '31', '0', '3', '11672', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '20619', '0', '0', '31', '0', '3', '11663', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '20619', '0', '1', '31', '0', '3', '11664', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '21014', '0', '0', '31', '0', '5', '186949', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '21075', '0', '0', '31', '0', '3', '11663', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '21075', '0', '1', '31', '0', '3', '11664', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '21086', '0', '0', '31', '0', '3', '11663', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '21086', '0', '1', '31', '0', '3', '11664', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '21556', '0', '0', '31', '0', '3', '13378', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '21566', '0', '0', '31', '0', '3', '13416', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '5', '21794', '0', '0', '31', '0', '3', '10981', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '5', '21866', '0', '0', '31', '0', '3', '10990', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '21885', '0', '0', '31', '0', '5', '178905', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '21885', '0', '1', '31', '0', '5', '300048', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '22096', '0', '0', '31', '0', '3', '30186', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '22096', '0', '1', '31', '0', '3', '30194', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '22096', '0', '2', '31', '0', '3', '30195', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '22096', '0', '3', '31', '0', '3', '30196', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '22393', '0', '0', '31', '0', '3', '14081', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '22710', '0', '0', '31', '0', '3', '14349', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '22860', '0', '0', '31', '0', '3', '14325', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '22906', '0', '0', '31', '0', '3', '10184', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '23014', '0', '0', '31', '0', '3', '12435', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '23015', '0', '0', '31', '0', '3', '12396', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '23019', '0', '0', '31', '0', '3', '12396', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '23168', '0', '0', '31', '0', '3', '14020', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '23394', '0', '0', '31', '0', '3', '14601', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '23415', '0', '0', '31', '0', '3', '11583', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '23642', '0', '0', '31', '0', '3', '13020', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '24062', '0', '0', '31', '0', '3', '15010', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '24083', '0', '0', '31', '0', '5', '179985', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '24172', '0', '0', '31', '0', '3', '11347', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '24172', '0', '1', '31', '0', '3', '11348', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '24217', '0', '0', '31', '0', '3', '15069', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '24311', '0', '0', '31', '0', '3', '11380', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '24311', '0', '1', '31', '0', '3', '26734', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '24311', '0', '2', '31', '0', '3', '26800', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '24311', '0', '3', '31', '0', '3', '26802', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '24322', '0', '0', '31', '0', '3', '14834', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '24323', '0', '0', '31', '0', '3', '14834', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '24721', '0', '0', '31', '0', '3', '15335', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '24721', '0', '1', '31', '0', '3', '15370', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '24721', '0', '2', '31', '0', '3', '15514', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '24731', '0', '0', '31', '0', '5', '180452', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '24731', '0', '1', '31', '0', '3', '15218', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '24804', '0', '0', '31', '0', '3', '14888', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '24973', '0', '0', '31', '0', '5', '300054', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '25177', '0', '0', '31', '0', '3', '15339', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '25178', '0', '0', '31', '0', '3', '15339', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '25180', '0', '0', '31', '0', '3', '15339', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '25181', '0', '0', '31', '0', '3', '15339', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '25183', '0', '0', '31', '0', '3', '15339', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '25745', '0', '0', '31', '0', '3', '30945', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '25790', '0', '0', '31', '0', '3', '15544', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '25896', '0', '0', '31', '0', '3', '15299', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '26235', '0', '0', '31', '0', '3', '15727', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26286', '0', '0', '31', '0', '5', '180771', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26286', '0', '1', '31', '0', '5', '180850', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26286', '0', '2', '31', '0', '5', '180868', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26291', '0', '0', '31', '0', '5', '180771', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26291', '0', '1', '31', '0', '5', '180850', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26291', '0', '2', '31', '0', '5', '180868', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26292', '0', '0', '31', '0', '5', '180771', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26292', '0', '1', '31', '0', '5', '180850', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26292', '0', '2', '31', '0', '5', '180868', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26293', '0', '0', '31', '0', '5', '180771', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26293', '0', '1', '31', '0', '5', '180850', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26293', '0', '2', '31', '0', '5', '180868', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26294', '0', '0', '31', '0', '5', '180771', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26294', '0', '1', '31', '0', '5', '180850', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26294', '0', '2', '31', '0', '5', '180868', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26295', '0', '0', '31', '0', '5', '180771', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26295', '0', '1', '31', '0', '5', '180850', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26295', '0', '2', '31', '0', '5', '180868', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26304', '0', '0', '31', '0', '5', '180772', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26304', '0', '1', '31', '0', '5', '180859', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26304', '0', '2', '31', '0', '5', '180869', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26325', '0', '0', '31', '0', '5', '180772', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26325', '0', '1', '31', '0', '5', '180859', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26325', '0', '2', '31', '0', '5', '180869', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26326', '0', '0', '31', '0', '5', '180772', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26326', '0', '1', '31', '0', '5', '180859', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26326', '0', '2', '31', '0', '5', '180869', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26327', '0', '0', '31', '0', '5', '180772', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26327', '0', '1', '31', '0', '5', '180859', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26327', '0', '2', '31', '0', '5', '180869', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26328', '0', '0', '31', '0', '5', '180772', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26328', '0', '1', '31', '0', '5', '180859', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26328', '0', '2', '31', '0', '5', '180869', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26329', '0', '0', '31', '0', '5', '180772', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26329', '0', '1', '31', '0', '5', '180859', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26329', '0', '2', '31', '0', '5', '180869', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26333', '0', '0', '31', '0', '5', '180771', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26333', '0', '1', '31', '0', '5', '180850', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26333', '0', '2', '31', '0', '5', '180868', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26334', '0', '0', '31', '0', '5', '180771', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26334', '0', '1', '31', '0', '5', '180850', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26334', '0', '2', '31', '0', '5', '180868', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26335', '0', '0', '31', '0', '5', '180771', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26335', '0', '1', '31', '0', '5', '180850', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26335', '0', '2', '31', '0', '5', '180868', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26336', '0', '0', '31', '0', '5', '180771', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26336', '0', '1', '31', '0', '5', '180850', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26336', '0', '2', '31', '0', '5', '180868', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26337', '0', '0', '31', '0', '5', '180771', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26337', '0', '1', '31', '0', '5', '180850', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26337', '0', '2', '31', '0', '5', '180868', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26338', '0', '0', '31', '0', '5', '180771', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26338', '0', '1', '31', '0', '5', '180850', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26338', '0', '2', '31', '0', '5', '180868', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '26344', '0', '0', '31', '0', '3', '15879', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '26345', '0', '0', '31', '0', '3', '15880', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '26346', '0', '0', '31', '0', '3', '15881', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '26347', '0', '0', '31', '0', '3', '15882', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '26348', '0', '0', '31', '0', '3', '15884', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '26349', '0', '0', '31', '0', '3', '15883', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '26351', '0', '0', '31', '0', '3', '15885', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '26352', '0', '0', '31', '0', '3', '15886', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '26353', '0', '0', '31', '0', '3', '15887', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '26354', '0', '0', '31', '0', '3', '15888', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '26355', '0', '0', '31', '0', '3', '15889', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '26356', '0', '0', '31', '0', '3', '15890', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26488', '0', '0', '31', '0', '5', '180772', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26488', '0', '1', '31', '0', '5', '180859', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26488', '0', '2', '31', '0', '5', '180869', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26490', '0', '0', '31', '0', '5', '180772', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26490', '0', '1', '31', '0', '5', '180859', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26490', '0', '2', '31', '0', '5', '180869', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26516', '0', '0', '31', '0', '5', '180772', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26516', '0', '1', '31', '0', '5', '180859', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26516', '0', '2', '31', '0', '5', '180869', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26517', '0', '0', '31', '0', '5', '180772', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26517', '0', '1', '31', '0', '5', '180859', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26517', '0', '2', '31', '0', '5', '180869', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26518', '0', '0', '31', '0', '5', '180772', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26518', '0', '1', '31', '0', '5', '180859', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26518', '0', '2', '31', '0', '5', '180869', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26519', '0', '0', '31', '0', '5', '180772', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26519', '0', '1', '31', '0', '5', '180859', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26519', '0', '2', '31', '0', '5', '180869', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26521', '0', '0', '31', '0', '5', '180772', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26521', '0', '1', '31', '0', '5', '180859', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '26521', '0', '2', '31', '0', '5', '180869', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '26560', '0', '0', '31', '0', '3', '29542', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '26608', '0', '0', '31', '0', '3', '15667', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '27184', '0', '0', '31', '0', '3', '16044', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '27190', '0', '0', '31', '0', '3', '16045', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '27191', '0', '0', '31', '0', '3', '16046', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '27201', '0', '0', '31', '0', '3', '16047', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '27202', '0', '0', '31', '0', '3', '16048', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '27203', '0', '0', '31', '0', '3', '16044', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '27203', '0', '1', '31', '0', '3', '16045', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '27203', '0', '2', '31', '0', '3', '16046', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '27203', '0', '3', '31', '0', '3', '16047', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '27203', '0', '4', '31', '0', '3', '16048', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '27517', '0', '0', '31', '0', '3', '16079', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '27892', '0', '0', '31', '0', '3', '16137', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '27893', '0', '0', '31', '0', '3', '16137', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '27928', '0', '0', '31', '0', '3', '16137', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '27929', '0', '0', '31', '0', '3', '16137', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '27935', '0', '0', '31', '0', '3', '16137', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '27936', '0', '0', '31', '0', '3', '28668', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '28096', '0', '0', '31', '0', '3', '15929', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '28111', '0', '0', '31', '0', '3', '15930', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '28159', '0', '0', '31', '0', '3', '15928', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '28392', '0', '0', '31', '0', '3', '16420', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '28697', '0', '0', '31', '0', '3', '3976', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '28731', '0', '0', '31', '0', '3', '10415', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '28732', '0', '0', '31', '0', '3', '15953', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '28806', '0', '0', '31', '0', '5', '181288', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '28806', '0', '1', '31', '0', '3', '16592', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '28861', '0', '0', '31', '0', '3', '16592', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29070', '0', '0', '31', '0', '3', '29769', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29070', '0', '1', '31', '0', '3', '29770', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29070', '0', '2', '31', '0', '3', '29840', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29072', '0', '0', '31', '0', '3', '29881', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29120', '0', '0', '31', '0', '3', '16899', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29121', '0', '0', '31', '0', '3', '16897', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29122', '0', '0', '31', '0', '3', '16898', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29172', '0', '0', '31', '0', '5', '181605', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29339', '0', '0', '31', '0', '3', '15547', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29339', '0', '1', '31', '0', '3', '15548', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29340', '0', '0', '31', '0', '3', '15547', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29340', '0', '1', '31', '0', '3', '15548', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29437', '0', '0', '31', '0', '5', '181288', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29456', '0', '0', '31', '0', '3', '17059', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29456', '0', '1', '31', '0', '3', '17060', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29457', '0', '0', '31', '0', '3', '17059', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29457', '0', '1', '31', '0', '3', '17060', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29459', '0', '0', '31', '0', '3', '17059', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29459', '0', '1', '31', '0', '3', '17060', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29531', '0', '0', '31', '0', '5', '181605', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29612', '0', '0', '31', '0', '3', '16468', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29769', '0', '0', '31', '0', '3', '16151', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '29831', '0', '0', '31', '0', '5', '181288', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '29866', '0', '0', '31', '0', '5', '181616', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29962', '0', '0', '31', '0', '3', '16524', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29967', '0', '0', '31', '0', '3', '16524', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29970', '0', '0', '31', '0', '3', '17161', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29989', '0', '0', '31', '0', '3', '17178', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '30065', '0', '0', '31', '0', '3', '15688', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '30098', '0', '0', '31', '0', '5', '1323', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '30166', '0', '0', '31', '0', '3', '17257', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '30207', '0', '0', '31', '0', '3', '17257', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '30221', '0', '0', '31', '0', '3', '620', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '30232', '0', '0', '31', '0', '3', '15691', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '30410', '0', '0', '31', '0', '3', '17257', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '30425', '0', '0', '31', '0', '3', '17367', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '30425', '0', '1', '31', '0', '3', '17368', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '30425', '0', '2', '31', '0', '3', '17369', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '30427', '0', '0', '31', '0', '3', '17378', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '30427', '0', '1', '31', '0', '3', '17407', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '30427', '0', '2', '31', '0', '3', '17408', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '30427', '0', '3', '31', '0', '3', '24222', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '30427', '0', '4', '31', '0', '3', '24879', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '30427', '0', '5', '31', '0', '3', '32522', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '30427', '0', '6', '31', '0', '3', '32544', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '30460', '0', '0', '31', '0', '3', '17404', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '30462', '0', '0', '31', '0', '3', '17404', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '30659', '0', '0', '31', '0', '3', '17281', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '30735', '0', '0', '31', '0', '3', '17083', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '30745', '0', '0', '31', '0', '3', '17083', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '30834', '0', '0', '31', '0', '3', '17646', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '30875', '0', '0', '31', '0', '3', '17326', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '30876', '0', '0', '31', '0', '3', '17326', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '30951', '0', '0', '31', '0', '3', '17533', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '30988', '0', '0', '31', '0', '3', '17701', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31225', '0', '0', '31', '0', '3', '17768', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31324', '0', '0', '31', '0', '3', '17845', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31326', '0', '0', '31', '0', '3', '15608', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31326', '0', '1', '31', '0', '3', '21818', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '31333', '0', '0', '31', '0', '3', '17664', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31411', '0', '0', '31', '0', '3', '17889', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31412', '0', '0', '31', '0', '3', '17889', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31413', '0', '0', '31', '0', '3', '17889', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31414', '0', '0', '31', '0', '3', '17889', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31474', '0', '0', '31', '0', '3', '28028', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31474', '0', '1', '31', '0', '3', '28029', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31515', '0', '0', '31', '0', '3', '17947', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31532', '0', '0', '31', '0', '3', '17796', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31537', '0', '0', '31', '0', '3', '17895', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '31538', '0', '0', '31', '0', '3', '17895', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '31543', '0', '0', '31', '0', '3', '17798', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31611', '0', '0', '31', '0', '3', '17979', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '31617', '0', '0', '31', '0', '3', '17899', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '31624', '0', '0', '31', '0', '3', '17899', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '31625', '0', '0', '31', '0', '3', '17899', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31727', '0', '0', '31', '0', '3', '17536', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31736', '0', '0', '31', '0', '3', '17998', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31736', '0', '1', '31', '0', '3', '17999', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31736', '0', '2', '31', '0', '3', '18000', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31736', '0', '3', '31', '0', '3', '18002', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31749', '0', '0', '31', '0', '3', '9239', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31749', '0', '1', '31', '0', '3', '9265', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31749', '0', '2', '31', '0', '3', '9266', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31749', '0', '3', '31', '0', '3', '9268', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31749', '0', '4', '31', '0', '3', '9269', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31749', '0', '5', '31', '0', '3', '11350', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31749', '0', '6', '31', '0', '3', '11352', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31749', '0', '7', '31', '0', '3', '11388', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31749', '0', '8', '31', '0', '3', '14825', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31749', '0', '9', '31', '0', '3', '14882', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31749', '0', '10', '31', '0', '3', '18077', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31749', '0', '11', '31', '0', '3', '18079', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31749', '0', '12', '31', '0', '3', '18080', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31749', '0', '13', '31', '0', '3', '19948', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31749', '0', '14', '31', '0', '3', '19957', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31749', '0', '15', '31', '0', '3', '19991', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31749', '0', '16', '31', '0', '3', '19992', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31749', '0', '17', '31', '0', '3', '20115', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31749', '0', '18', '31', '0', '3', '21238', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31749', '0', '19', '31', '0', '3', '26704', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31749', '0', '20', '31', '0', '3', '27008', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31749', '0', '21', '31', '0', '3', '27554', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31749', '0', '22', '31', '0', '3', '27555', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31902', '0', '0', '31', '0', '3', '19656', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '31927', '0', '0', '31', '0', '3', '18110', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '31927', '0', '1', '31', '0', '3', '18142', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '31927', '0', '2', '31', '0', '3', '18143', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '31927', '0', '3', '31', '0', '3', '18144', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32042', '0', '0', '31', '0', '3', '18161', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32042', '0', '1', '31', '0', '3', '18162', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32045', '0', '0', '31', '0', '3', '17968', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32051', '0', '0', '31', '0', '3', '17968', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32052', '0', '0', '31', '0', '3', '17968', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '32067', '0', '0', '31', '0', '3', '30250', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '32067', '0', '1', '31', '0', '3', '30432', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '32067', '0', '2', '31', '0', '3', '30471', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32111', '0', '0', '31', '0', '3', '17968', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32127', '0', '0', '31', '0', '3', '18066', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32146', '0', '0', '31', '0', '3', '18240', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32163', '0', '0', '31', '0', '3', '18247', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32164', '0', '0', '31', '0', '3', '18246', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '32205', '0', '0', '31', '0', '3', '18305', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '32205', '0', '1', '31', '0', '3', '18306', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '32205', '0', '2', '31', '0', '3', '18307', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32260', '0', '0', '31', '0', '3', '17208', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32260', '0', '1', '31', '0', '3', '17305', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32301', '0', '0', '31', '0', '3', '18371', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '32307', '0', '0', '31', '0', '3', '17146', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '32307', '0', '1', '31', '0', '3', '17147', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '32307', '0', '2', '31', '0', '3', '17148', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '32314', '0', '0', '31', '0', '3', '17138', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '32314', '0', '1', '31', '0', '3', '18064', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32373', '0', '0', '31', '0', '3', '18437', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32396', '0', '0', '31', '0', '3', '18358', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32560', '0', '0', '31', '0', '3', '17893', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32573', '0', '0', '31', '0', '3', '18560', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32622', '0', '0', '31', '0', '3', '17545', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32623', '0', '0', '31', '0', '3', '18660', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32838', '0', '0', '31', '0', '3', '16899', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32890', '0', '0', '31', '0', '3', '18764', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32930', '0', '0', '31', '0', '3', '18493', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32930', '0', '1', '31', '0', '3', '18495', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32930', '0', '2', '31', '0', '3', '18778', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32953', '0', '0', '31', '0', '3', '17544', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32958', '0', '0', '31', '0', '3', '18793', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32979', '0', '0', '31', '0', '3', '18818', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32979', '0', '1', '31', '0', '3', '19009', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32979', '0', '2', '31', '0', '3', '21236', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '32979', '0', '3', '31', '0', '3', '21237', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33067', '0', '0', '31', '0', '5', '183122', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33067', '0', '1', '31', '0', '5', '185122', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33067', '0', '2', '31', '0', '3', '18849', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33067', '0', '3', '31', '0', '3', '19008', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '33111', '0', '0', '31', '0', '3', '17400', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '33111', '0', '1', '31', '0', '3', '18894', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33329', '0', '0', '31', '0', '3', '18632', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33329', '0', '1', '31', '0', '3', '18634', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33329', '0', '2', '31', '0', '3', '18638', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33329', '0', '3', '31', '0', '3', '18639', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33332', '0', '0', '31', '0', '3', '18632', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33332', '0', '1', '31', '0', '3', '18634', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33332', '0', '2', '31', '0', '3', '18638', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33336', '0', '0', '31', '0', '3', '17876', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33336', '0', '1', '31', '0', '3', '18887', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33337', '0', '0', '31', '0', '3', '17876', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33337', '0', '1', '31', '0', '3', '18887', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33423', '0', '0', '31', '0', '3', '19139', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33424', '0', '0', '31', '0', '3', '19139', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33425', '0', '0', '31', '0', '3', '19139', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33531', '0', '0', '31', '0', '3', '19067', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33531', '0', '1', '31', '0', '3', '19212', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33532', '0', '0', '31', '0', '3', '19210', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33532', '0', '1', '31', '0', '3', '19211', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33644', '0', '0', '31', '0', '3', '19276', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33644', '0', '1', '31', '0', '3', '19277', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33644', '0', '2', '31', '0', '3', '19278', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33644', '0', '3', '31', '0', '3', '19279', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33644', '0', '4', '31', '0', '3', '19326', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33644', '0', '5', '31', '0', '3', '19328', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33644', '0', '6', '31', '0', '3', '19329', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33655', '0', '0', '31', '0', '3', '19291', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33655', '0', '1', '31', '0', '3', '19292', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33669', '0', '0', '31', '0', '3', '16938', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '33670', '0', '0', '31', '0', '3', '19263', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33742', '0', '0', '31', '0', '3', '17400', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33742', '0', '1', '31', '0', '3', '18894', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33742', '0', '2', '31', '0', '3', '19276', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33742', '0', '3', '31', '0', '3', '19277', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33742', '0', '4', '31', '0', '3', '19278', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33742', '0', '5', '31', '0', '3', '19279', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33742', '0', '6', '31', '0', '3', '19326', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33742', '0', '7', '31', '0', '3', '19328', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33742', '0', '8', '31', '0', '3', '19329', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33744', '0', '0', '31', '0', '3', '19291', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33744', '0', '1', '31', '0', '3', '19292', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '33783', '0', '0', '31', '0', '3', '18732', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33796', '0', '0', '31', '0', '3', '19727', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33805', '0', '0', '31', '0', '3', '19384', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33805', '0', '1', '31', '0', '3', '19387', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33806', '0', '0', '31', '0', '3', '19384', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33806', '0', '1', '31', '0', '3', '19388', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33822', '0', '0', '31', '0', '3', '19394', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33838', '0', '0', '31', '0', '3', '5202', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33918', '0', '0', '31', '0', '3', '18855', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33918', '0', '1', '31', '0', '3', '19421', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33918', '0', '2', '31', '0', '3', '20134', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33918', '0', '3', '31', '0', '3', '20139', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '33924', '0', '0', '31', '0', '3', '19424', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '34062', '0', '0', '31', '0', '3', '19484', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '34063', '0', '0', '31', '0', '3', '18688', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '34119', '0', '0', '31', '0', '3', '19502', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '34187', '0', '0', '31', '0', '3', '19511', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '34200', '0', '0', '31', '0', '3', '19511', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '34221', '0', '0', '31', '0', '3', '19505', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '34221', '0', '1', '31', '0', '3', '19555', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '34239', '0', '0', '31', '0', '3', '19599', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '34254', '0', '0', '31', '0', '3', '19557', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '34254', '0', '1', '31', '0', '3', '19608', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '34254', '0', '2', '31', '0', '3', '19920', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '34254', '0', '3', '31', '0', '3', '19958', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '34254', '0', '4', '31', '0', '3', '19962', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '34254', '0', '5', '31', '0', '3', '19964', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '34254', '0', '6', '31', '0', '3', '19969', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '34350', '0', '0', '31', '0', '3', '19554', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '34367', '0', '0', '31', '0', '3', '19421', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '34387', '0', '0', '31', '0', '5', '184289', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '34387', '0', '1', '31', '0', '5', '184290', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '34387', '0', '2', '31', '0', '5', '184414', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '34387', '0', '3', '31', '0', '5', '184415', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '34397', '0', '0', '31', '0', '3', '20139', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '5', '34630', '0', '0', '31', '0', '3', '19849', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '34646', '0', '0', '31', '0', '3', '19866', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '34646', '0', '1', '31', '0', '3', '19867', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '34646', '0', '2', '31', '0', '3', '19868', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '34662', '0', '0', '31', '0', '3', '17827', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '34742', '0', '0', '31', '0', '3', '19949', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '34874', '0', '0', '31', '0', '3', '17990', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35016', '0', '0', '31', '0', '3', '20209', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35016', '0', '1', '31', '0', '3', '20417', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35016', '0', '2', '31', '0', '3', '20418', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35063', '0', '0', '31', '0', '3', '20251', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35097', '0', '0', '31', '0', '3', '20251', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35113', '0', '0', '31', '0', '3', '20333', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35113', '0', '1', '31', '0', '3', '20336', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35113', '0', '2', '31', '0', '3', '20337', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35113', '0', '3', '31', '0', '3', '20338', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35137', '0', '0', '31', '0', '3', '19995', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35137', '0', '1', '31', '0', '3', '19996', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35137', '0', '2', '31', '0', '3', '19997', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35137', '0', '3', '31', '0', '3', '19998', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35137', '0', '4', '31', '0', '3', '20396', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35155', '0', '0', '31', '0', '3', '20391', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35160', '0', '0', '31', '0', '3', '20391', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35162', '0', '0', '31', '0', '3', '20346', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35162', '0', '1', '31', '0', '3', '20347', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35162', '0', '2', '31', '0', '3', '20348', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35162', '0', '3', '31', '0', '3', '20349', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35162', '0', '4', '31', '0', '3', '20391', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35170', '0', '0', '31', '0', '3', '20391', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35176', '0', '0', '31', '0', '3', '20440', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35190', '0', '0', '31', '0', '3', '19796', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35190', '0', '1', '31', '0', '3', '20431', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35190', '0', '2', '31', '0', '3', '22017', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '35246', '0', '0', '31', '0', '3', '20473', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '35246', '0', '1', '31', '0', '3', '20475', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '35246', '0', '2', '31', '0', '3', '20476', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35282', '0', '0', '31', '0', '3', '20243', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35282', '0', '1', '31', '0', '3', '18733', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '35289', '0', '0', '31', '0', '3', '22963', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35372', '0', '0', '31', '0', '3', '20561', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35413', '0', '0', '31', '0', '5', '184454', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35413', '0', '1', '31', '0', '3', '20781', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35427', '0', '0', '31', '0', '3', '20668', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35515', '0', '0', '31', '0', '3', '20454', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '35596', '0', '0', '31', '0', '3', '20794', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35598', '0', '0', '31', '0', '3', '20132', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '35599', '0', '0', '31', '0', '3', '20794', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35600', '0', '0', '31', '0', '3', '20132', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '35683', '0', '0', '31', '0', '3', '20769', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35724', '0', '0', '31', '0', '3', '20813', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35724', '0', '1', '31', '0', '3', '20814', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35724', '0', '2', '31', '0', '3', '20815', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35724', '0', '3', '31', '0', '3', '20816', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '35734', '0', '0', '31', '0', '5', '184403', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '35734', '0', '1', '31', '0', '5', '184534', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '35734', '0', '2', '31', '0', '5', '184552', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '35734', '0', '3', '31', '0', '3', '20899', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35746', '0', '0', '31', '0', '3', '20780', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35746', '0', '1', '31', '0', '3', '20922', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '35754', '0', '0', '31', '0', '3', '10638', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '35754', '0', '1', '31', '0', '3', '22443', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '35754', '0', '2', '31', '0', '3', '26867', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '35754', '0', '3', '31', '0', '3', '27202', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '35754', '0', '4', '31', '0', '3', '29801', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35756', '0', '0', '31', '0', '3', '15930', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35756', '0', '1', '31', '0', '3', '27202', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35771', '0', '0', '31', '0', '3', '20610', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35771', '0', '1', '31', '0', '3', '20777', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35772', '0', '0', '31', '0', '3', '20774', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35772', '0', '1', '31', '0', '3', '20983', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35782', '0', '0', '31', '0', '3', '20809', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '36174', '0', '0', '31', '0', '3', '20885', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '36325', '0', '0', '31', '0', '3', '21182', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '36325', '0', '1', '31', '0', '3', '22401', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '36325', '0', '2', '31', '0', '3', '22402', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '36325', '0', '3', '31', '0', '3', '22403', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '36374', '0', '0', '31', '0', '3', '21182', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '36374', '0', '1', '31', '0', '3', '22401', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '36374', '0', '2', '31', '0', '3', '22402', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '36374', '0', '3', '31', '0', '3', '22403', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '36378', '0', '0', '31', '0', '3', '15929', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '36378', '0', '1', '31', '0', '3', '26795', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '36378', '0', '2', '31', '0', '3', '26797', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '36384', '0', '0', '31', '0', '3', '21211', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '36456', '0', '0', '31', '0', '3', '21254', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '36460', '0', '0', '31', '0', '5', '183805', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '36460', '0', '1', '31', '0', '5', '183806', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '36460', '0', '2', '31', '0', '5', '183807', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '36460', '0', '3', '31', '0', '5', '183808', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '36546', '0', '0', '31', '0', '5', '184715', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '36802', '0', '0', '31', '0', '3', '18504', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '36803', '0', '0', '31', '0', '3', '18504', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '36804', '0', '0', '31', '0', '3', '21404', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '36852', '0', '0', '31', '0', '3', '21440', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '36854', '0', '0', '31', '0', '3', '21437', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '36854', '0', '1', '31', '0', '3', '28066', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '36854', '0', '2', '31', '0', '3', '29849', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '36854', '0', '3', '31', '0', '3', '31779', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '36856', '0', '0', '31', '0', '3', '21436', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '36857', '0', '0', '31', '0', '3', '21438', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '36858', '0', '0', '31', '0', '3', '21439', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '36871', '0', '0', '31', '0', '3', '32201', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '36884', '0', '0', '31', '0', '3', '32201', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '36896', '0', '0', '31', '0', '3', '21445', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '36904', '0', '0', '31', '0', '5', '21511', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '36953', '0', '0', '31', '0', '3', '32201', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37017', '0', '0', '31', '0', '3', '15687', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37017', '0', '1', '31', '0', '3', '23689', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37032', '0', '0', '31', '0', '3', '32201', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37033', '0', '0', '31', '0', '3', '32201', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37034', '0', '0', '31', '0', '3', '32201', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37051', '0', '0', '31', '0', '3', '16524', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37052', '0', '0', '31', '0', '3', '16524', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37053', '0', '0', '31', '0', '3', '16524', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37055', '0', '0', '31', '0', '3', '21404', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37055', '0', '1', '31', '0', '3', '21512', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37071', '0', '0', '31', '0', '3', '21424', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37071', '0', '1', '31', '0', '3', '21638', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '37076', '0', '0', '31', '0', '3', '17798', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '5', '37204', '0', '0', '31', '0', '3', '21709', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37226', '0', '0', '31', '0', '3', '21638', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37285', '0', '0', '31', '0', '3', '21211', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37285', '0', '1', '31', '0', '3', '21735', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37465', '0', '0', '31', '0', '3', '17469', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37465', '0', '1', '31', '0', '3', '21747', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37465', '0', '2', '31', '0', '3', '21748', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37465', '0', '3', '31', '0', '3', '21750', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37469', '0', '0', '31', '0', '3', '17211', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37469', '0', '1', '31', '0', '3', '21664', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37469', '0', '2', '31', '0', '3', '21682', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37469', '0', '3', '31', '0', '3', '21683', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37469', '0', '4', '31', '0', '3', '29457', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '37489', '0', '0', '31', '0', '3', '21419', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37573', '0', '0', '31', '0', '5', '184867', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37573', '0', '1', '31', '0', '3', '20021', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37573', '0', '2', '31', '0', '3', '21817', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37573', '0', '3', '31', '0', '3', '21820', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37573', '0', '4', '31', '0', '3', '21821', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37573', '0', '5', '31', '0', '3', '21823', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37626', '0', '0', '31', '0', '3', '15689', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37645', '0', '0', '31', '0', '3', '21417', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37689', '0', '0', '31', '0', '3', '21847', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37748', '0', '0', '31', '0', '3', '21867', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37755', '0', '0', '31', '0', '3', '21846', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37755', '0', '1', '31', '0', '3', '21859', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37775', '0', '0', '31', '0', '3', '17211', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37775', '0', '1', '31', '0', '3', '21664', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37775', '0', '2', '31', '0', '3', '21684', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37784', '0', '0', '31', '0', '3', '21867', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37842', '0', '0', '31', '0', '3', '21869', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37842', '0', '1', '31', '0', '3', '21870', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37843', '0', '0', '31', '0', '3', '21899', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37848', '0', '0', '31', '0', '3', '21870', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37853', '0', '0', '31', '0', '3', '15608', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37868', '0', '0', '31', '0', '3', '21909', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37893', '0', '0', '31', '0', '3', '21909', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37895', '0', '0', '31', '0', '3', '21909', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37936', '0', '0', '31', '0', '3', '17796', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37984', '0', '0', '31', '0', '5', '185032', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37984', '0', '1', '31', '0', '3', '21939', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '37984', '0', '2', '31', '0', '3', '21940', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38003', '0', '0', '31', '0', '3', '21949', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38014', '0', '0', '31', '0', '3', '21902', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38014', '0', '1', '31', '0', '3', '21963', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38020', '0', '0', '31', '0', '3', '21949', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '38044', '0', '0', '31', '0', '3', '21212', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '38046', '0', '0', '31', '0', '3', '17963', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38112', '0', '0', '31', '0', '3', '21212', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38121', '0', '0', '31', '0', '3', '21949', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38123', '0', '0', '31', '0', '3', '21949', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38126', '0', '0', '31', '0', '3', '21949', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38128', '0', '0', '31', '0', '3', '21949', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38130', '0', '0', '31', '0', '3', '21949', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '38173', '0', '0', '31', '0', '3', '22160', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '38173', '0', '1', '31', '0', '3', '22384', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38202', '0', '0', '31', '0', '3', '18733', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38250', '0', '0', '31', '0', '5', '185125', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38360', '0', '0', '31', '0', '3', '20216', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '38439', '0', '0', '31', '0', '3', '21648', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '38439', '0', '1', '31', '0', '3', '22131', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38444', '0', '0', '31', '0', '3', '17008', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '38449', '0', '0', '31', '0', '3', '21214', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38451', '0', '0', '31', '0', '3', '21964', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38452', '0', '0', '31', '0', '3', '21965', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38455', '0', '0', '31', '0', '3', '21966', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38469', '0', '0', '31', '0', '3', '22137', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38469', '0', '1', '31', '0', '3', '22139', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38482', '0', '0', '31', '0', '5', '184750', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '38484', '0', '0', '31', '0', '3', '21246', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38508', '0', '0', '31', '0', '3', '16871', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38508', '0', '1', '31', '0', '3', '16873', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38508', '0', '2', '31', '0', '3', '16907', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38508', '0', '3', '31', '0', '3', '17269', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38508', '0', '4', '31', '0', '3', '17270', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38508', '0', '5', '31', '0', '3', '17478', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38508', '0', '6', '31', '0', '3', '19422', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38508', '0', '7', '31', '0', '3', '19424', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38530', '0', '0', '31', '0', '3', '19440', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38530', '0', '1', '31', '0', '3', '22177', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38629', '0', '0', '31', '0', '5', '185214', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38722', '0', '0', '31', '0', '3', '21506', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '5', '38729', '0', '0', '31', '0', '5', '185191', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38736', '0', '0', '31', '0', '3', '22288', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38738', '0', '0', '31', '0', '5', '185193', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38738', '0', '1', '31', '0', '5', '185195', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38738', '0', '2', '31', '0', '5', '185196', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38738', '0', '3', '31', '0', '5', '185197', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38738', '0', '4', '31', '0', '5', '185198', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38738', '0', '5', '31', '0', '3', '22422', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38762', '0', '0', '31', '0', '3', '21722', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '38782', '0', '0', '31', '0', '3', '19747', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '38782', '0', '1', '31', '0', '3', '22423', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '38920', '0', '0', '31', '0', '5', '300118', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38966', '0', '0', '31', '0', '3', '22293', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38966', '0', '1', '31', '0', '3', '22358', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38968', '0', '0', '31', '0', '3', '18733', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39010', '0', '0', '31', '0', '3', '19264', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39011', '0', '0', '31', '0', '3', '20885', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39043', '0', '0', '31', '0', '3', '22377', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39094', '0', '0', '31', '0', '5', '184738', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39094', '0', '1', '31', '0', '3', '22395', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39124', '0', '0', '31', '0', '5', '184738', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39124', '0', '1', '31', '0', '3', '22395', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39126', '0', '0', '31', '0', '3', '19557', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39140', '0', '0', '31', '0', '3', '22418', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39141', '0', '0', '31', '0', '3', '17968', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39189', '0', '0', '31', '0', '3', '21846', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39189', '0', '1', '31', '0', '3', '21859', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39190', '0', '0', '31', '0', '3', '28667', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39190', '0', '1', '31', '0', '3', '28668', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39219', '0', '0', '31', '0', '3', '22443', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39219', '0', '1', '31', '0', '3', '22471', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39219', '0', '2', '31', '0', '3', '22472', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39219', '0', '3', '31', '0', '3', '22503', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39219', '0', '4', '31', '0', '3', '22504', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39221', '0', '0', '31', '0', '3', '22471', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39221', '0', '1', '31', '0', '3', '22472', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '39246', '0', '0', '31', '0', '3', '22105', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39248', '0', '0', '31', '0', '3', '22105', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39350', '0', '0', '31', '0', '3', '22519', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39352', '0', '0', '31', '0', '3', '22519', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39355', '0', '0', '31', '0', '3', '22519', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39357', '0', '0', '31', '0', '3', '22519', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39359', '0', '0', '31', '0', '3', '22519', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39360', '0', '0', '31', '0', '3', '22519', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39361', '0', '0', '31', '0', '3', '22519', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '39364', '0', '0', '31', '0', '3', '18732', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39601', '0', '0', '31', '0', '3', '22916', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39635', '0', '0', '31', '0', '3', '22996', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '39844', '0', '0', '31', '0', '3', '22991', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39849', '0', '0', '31', '0', '3', '22996', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39873', '0', '0', '31', '0', '3', '22917', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39915', '0', '0', '31', '0', '3', '18528', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39974', '0', '0', '31', '0', '5', '300127', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39978', '0', '0', '31', '0', '3', '21851', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39978', '0', '1', '31', '0', '3', '23057', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39993', '0', '0', '31', '0', '3', '23382', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '40076', '0', '0', '31', '0', '3', '22884', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40085', '0', '0', '31', '0', '3', '22885', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40085', '0', '1', '31', '0', '3', '28346', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40085', '0', '2', '31', '0', '3', '30829', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40085', '0', '3', '31', '0', '3', '30830', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40085', '0', '4', '31', '0', '3', '30831', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40094', '0', '0', '31', '0', '3', '22953', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '40105', '0', '0', '31', '0', '3', '22883', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40106', '0', '0', '31', '0', '3', '22883', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40156', '0', '0', '31', '0', '3', '23094', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40160', '0', '0', '31', '0', '3', '23119', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40187', '0', '0', '31', '0', '3', '23094', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40189', '0', '0', '31', '0', '3', '23094', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40190', '0', '0', '31', '0', '3', '23094', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '40268', '0', '0', '31', '0', '3', '23109', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40309', '0', '0', '31', '0', '3', '23055', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '40328', '0', '0', '31', '0', '5', '300127', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '40328', '0', '1', '31', '0', '3', '23037', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40359', '0', '0', '31', '0', '3', '23382', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '40401', '0', '0', '31', '0', '3', '22841', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '40447', '0', '0', '31', '0', '3', '22841', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40454', '0', '0', '31', '0', '3', '22181', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '40468', '0', '0', '31', '0', '3', '22252', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40520', '0', '0', '31', '0', '3', '22841', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40547', '0', '0', '31', '0', '3', '22911', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '40603', '0', '0', '31', '0', '3', '22948', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40607', '0', '0', '31', '0', '3', '22841', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '40632', '0', '0', '31', '0', '5', '185913', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '40640', '0', '0', '31', '0', '5', '185913', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '40642', '0', '0', '31', '0', '5', '185913', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '40644', '0', '0', '31', '0', '5', '185913', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40693', '0', '0', '31', '0', '3', '23197', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40825', '0', '0', '31', '0', '3', '20557', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40825', '0', '1', '31', '0', '3', '22195', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40825', '0', '2', '31', '0', '3', '22291', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40828', '0', '0', '31', '0', '3', '23322', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40828', '0', '1', '31', '0', '3', '23327', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40830', '0', '0', '31', '0', '3', '20557', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40830', '0', '1', '31', '0', '3', '22195', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40830', '0', '2', '31', '0', '3', '22291', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40874', '0', '0', '31', '0', '3', '22841', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '6', '40902', '0', '0', '31', '0', '3', '22841', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '6', '40902', '0', '1', '31', '0', '3', '23191', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '6', '40902', '0', '2', '31', '0', '3', '23351', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '40957', '0', '0', '31', '0', '5', '185927', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '40959', '0', '0', '31', '0', '5', '185927', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '40960', '0', '0', '31', '0', '5', '185927', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '40961', '0', '0', '31', '0', '5', '185927', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '40978', '0', '0', '31', '0', '3', '23959', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '41073', '0', '0', '31', '0', '3', '23147', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '41077', '0', '0', '31', '0', '3', '23089', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '41128', '0', '0', '31', '0', '3', '23164', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '41221', '0', '0', '31', '0', '3', '23197', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '41268', '0', '0', '31', '0', '3', '23412', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '41269', '0', '0', '31', '0', '3', '23412', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '41271', '0', '0', '31', '0', '3', '23412', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '41295', '0', '0', '31', '0', '3', '23418', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '41342', '0', '0', '31', '0', '3', '23426', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '41343', '0', '0', '31', '0', '3', '23426', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '41362', '0', '0', '31', '0', '3', '22956', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '41362', '0', '1', '31', '0', '3', '22964', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '41602', '0', '0', '31', '0', '3', '23191', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '41975', '0', '0', '31', '0', '3', '23191', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42219', '0', '0', '31', '0', '3', '23602', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '42220', '0', '0', '31', '0', '3', '23597', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42222', '0', '0', '31', '0', '3', '800', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42222', '0', '1', '31', '0', '3', '23616', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42269', '0', '0', '31', '0', '3', '12997', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42269', '0', '1', '31', '0', '3', '28328', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42269', '0', '2', '31', '0', '3', '29368', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42269', '0', '3', '31', '0', '3', '31892', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42271', '0', '0', '31', '0', '3', '27981', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42271', '0', '1', '31', '0', '3', '31388', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42271', '0', '2', '31', '0', '3', '31892', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42272', '0', '0', '31', '0', '3', '13017', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42272', '0', '1', '31', '0', '3', '27981', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42272', '0', '2', '31', '0', '3', '31388', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42272', '0', '3', '31', '0', '3', '31892', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '42287', '0', '0', '31', '0', '5', '186283', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42289', '0', '0', '31', '0', '5', '186283', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42317', '0', '0', '31', '0', '3', '22844', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42317', '0', '1', '31', '0', '3', '22845', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42317', '0', '2', '31', '0', '3', '22846', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42317', '0', '3', '31', '0', '3', '22847', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42317', '0', '4', '31', '0', '3', '22849', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42317', '0', '5', '31', '0', '3', '23215', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42317', '0', '6', '31', '0', '3', '23216', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42317', '0', '7', '31', '0', '3', '23318', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42317', '0', '8', '31', '0', '3', '23319', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42317', '0', '9', '31', '0', '3', '23374', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42317', '0', '10', '31', '0', '3', '23421', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42317', '0', '11', '31', '0', '3', '23523', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42317', '0', '12', '31', '0', '3', '23524', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42318', '0', '0', '31', '0', '3', '22844', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42318', '0', '1', '31', '0', '3', '22845', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42318', '0', '2', '31', '0', '3', '22846', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42318', '0', '3', '31', '0', '3', '22847', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42318', '0', '4', '31', '0', '3', '22849', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42318', '0', '5', '31', '0', '3', '23215', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42318', '0', '6', '31', '0', '3', '23216', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42318', '0', '7', '31', '0', '3', '23318', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42318', '0', '8', '31', '0', '3', '23319', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42318', '0', '9', '31', '0', '3', '23374', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42318', '0', '10', '31', '0', '3', '23421', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42318', '0', '11', '31', '0', '3', '23523', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42318', '0', '12', '31', '0', '3', '23524', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '42323', '0', '0', '31', '0', '5', '186287', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '42323', '0', '1', '31', '0', '3', '23720', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42356', '0', '0', '31', '0', '5', '5', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42356', '0', '1', '31', '0', '5', '6', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42356', '0', '2', '31', '0', '5', '7', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42356', '0', '3', '31', '0', '3', '23751', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42356', '0', '4', '31', '0', '3', '23752', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42356', '0', '5', '31', '0', '3', '23753', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42391', '0', '0', '31', '0', '5', '300152', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42405', '0', '0', '31', '0', '3', '23775', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42410', '0', '0', '31', '0', '3', '23775', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42415', '0', '0', '31', '0', '3', '22923', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42415', '0', '1', '31', '0', '3', '23378', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '42433', '0', '0', '31', '0', '5', '186335', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42454', '0', '0', '31', '0', '3', '4344', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42454', '0', '1', '31', '0', '3', '4345', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42471', '0', '0', '31', '0', '3', '23817', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42515', '0', '0', '31', '0', '3', '23868', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42517', '0', '0', '31', '0', '3', '23864', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42536', '0', '0', '31', '0', '3', '23685', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42536', '0', '1', '31', '0', '3', '24492', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42542', '0', '0', '31', '0', '3', '23863', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42564', '0', '0', '31', '0', '3', '23921', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42564', '0', '1', '31', '0', '3', '23922', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42564', '0', '2', '31', '0', '3', '23923', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42564', '0', '3', '31', '0', '3', '23924', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42570', '0', '0', '31', '0', '3', '23746', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '42576', '0', '0', '31', '0', '3', '23899', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42577', '0', '0', '31', '0', '3', '24136', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '42578', '0', '0', '31', '0', '3', '23899', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '42578', '0', '1', '31', '0', '3', '23907', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42703', '0', '0', '31', '0', '5', '186403', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42720', '0', '0', '31', '0', '3', '23559', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42734', '0', '0', '31', '0', '3', '4974', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42734', '0', '1', '31', '0', '3', '4979', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '42788', '0', '0', '31', '0', '3', '23943', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42793', '0', '0', '31', '0', '3', '24009', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42793', '0', '1', '31', '0', '3', '24010', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42809', '0', '0', '31', '0', '3', '24023', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42857', '0', '0', '31', '0', '3', '23954', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42881', '0', '0', '31', '0', '3', '23739', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42881', '0', '1', '31', '0', '3', '24086', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42881', '0', '2', '31', '0', '3', '27390', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42881', '0', '3', '31', '0', '3', '29801', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42881', '0', '4', '31', '0', '3', '31397', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42881', '0', '5', '31', '0', '3', '31680', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42882', '0', '0', '31', '0', '3', '23739', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42882', '0', '1', '31', '0', '3', '24088', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42882', '0', '2', '31', '0', '3', '26631', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42882', '0', '3', '31', '0', '3', '27389', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42882', '0', '4', '31', '0', '3', '28145', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42882', '0', '5', '31', '0', '3', '31350', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42882', '0', '6', '31', '0', '3', '31397', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42882', '0', '7', '31', '0', '3', '31657', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42883', '0', '0', '31', '0', '3', '23739', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42883', '0', '1', '31', '0', '3', '24089', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42883', '0', '2', '31', '0', '3', '28145', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42883', '0', '3', '31', '0', '3', '23970', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42884', '0', '0', '31', '0', '3', '23739', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42884', '0', '1', '31', '0', '3', '24090', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42884', '0', '2', '31', '0', '3', '25458', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42968', '0', '0', '31', '0', '5', '186565', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42968', '0', '1', '31', '0', '3', '24077', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '6', '43056', '0', '0', '31', '0', '3', '23883', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '6', '43056', '0', '1', '31', '0', '3', '24041', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43057', '0', '0', '31', '0', '3', '24098', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43057', '0', '1', '31', '0', '3', '24100', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43057', '0', '2', '31', '0', '3', '24102', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43068', '0', '0', '31', '0', '3', '24087', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43068', '0', '1', '31', '0', '3', '24092', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43068', '0', '2', '31', '0', '3', '24093', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43068', '0', '3', '31', '0', '3', '24094', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43069', '0', '0', '31', '0', '3', '23667', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43072', '0', '0', '31', '0', '3', '23667', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43076', '0', '0', '31', '0', '3', '23957', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43076', '0', '1', '31', '0', '3', '23972', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43092', '0', '0', '31', '0', '3', '24119', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43144', '0', '0', '31', '0', '3', '23817', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43209', '0', '0', '31', '0', '3', '24178', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '43233', '0', '0', '31', '0', '3', '24182', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '43233', '0', '1', '31', '0', '3', '24183', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '43233', '0', '2', '31', '0', '3', '24184', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '43233', '0', '3', '31', '0', '3', '24185', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43255', '0', '0', '31', '0', '3', '23746', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43291', '0', '0', '31', '0', '3', '24221', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43386', '0', '0', '31', '0', '3', '24284', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43403', '0', '0', '31', '0', '3', '24290', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43404', '0', '0', '31', '0', '3', '24290', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43515', '0', '0', '31', '0', '3', '23746', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43520', '0', '0', '31', '0', '3', '23746', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43615', '0', '0', '31', '0', '3', '23577', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43647', '0', '0', '31', '0', '3', '24358', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43662', '0', '0', '31', '0', '3', '24468', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43662', '0', '1', '31', '0', '3', '24510', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '43664', '0', '0', '31', '0', '3', '23960', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '43664', '0', '1', '31', '0', '3', '23961', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '43664', '0', '2', '31', '0', '3', '24083', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43685', '0', '0', '31', '0', '3', '24412', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43691', '0', '0', '31', '0', '3', '24412', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '43723', '0', '0', '31', '0', '3', '19973', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43791', '0', '0', '31', '0', '3', '24439', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43865', '0', '0', '31', '0', '3', '23960', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43871', '0', '0', '31', '0', '3', '24461', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43872', '0', '0', '31', '0', '3', '24459', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43878', '0', '0', '31', '0', '3', '24464', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43882', '0', '0', '31', '0', '3', '24464', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '43986', '0', '0', '31', '0', '3', '24538', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '43986', '0', '1', '31', '0', '3', '24646', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '43986', '0', '2', '31', '0', '3', '24647', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43990', '0', '0', '31', '0', '3', '24538', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43990', '0', '1', '31', '0', '3', '24646', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '43990', '0', '2', '31', '0', '3', '24647', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '44132', '0', '0', '31', '0', '3', '24239', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '44213', '0', '0', '31', '0', '3', '24538', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '44213', '0', '1', '31', '0', '3', '24646', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '44213', '0', '2', '31', '0', '3', '24647', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '44214', '0', '0', '31', '0', '3', '24538', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '44214', '0', '1', '31', '0', '3', '24646', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '44214', '0', '2', '31', '0', '3', '24647', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '44229', '0', '0', '31', '0', '3', '23837', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '44250', '0', '0', '31', '0', '3', '24707', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '44270', '0', '0', '31', '0', '3', '24707', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '44313', '0', '0', '31', '0', '3', '26363', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '44313', '0', '1', '31', '0', '3', '28129', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '44320', '0', '0', '31', '0', '3', '24722', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '44321', '0', '0', '31', '0', '3', '24723', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '44355', '0', '0', '31', '0', '3', '24723', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '44362', '0', '0', '31', '0', '3', '24766', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '44367', '0', '0', '31', '0', '3', '26363', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '44367', '0', '1', '31', '0', '3', '27230', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '44367', '0', '2', '31', '0', '3', '28129', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '44374', '0', '0', '31', '0', '3', '24722', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '44422', '0', '0', '31', '0', '5', '190222', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '44458', '0', '0', '31', '0', '3', '24547', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '44550', '0', '0', '31', '0', '3', '24820', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '44562', '0', '0', '31', '0', '3', '24718', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '44574', '0', '0', '31', '0', '3', '27383', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '44610', '0', '0', '31', '0', '3', '24824', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '44807', '0', '0', '31', '0', '3', '24850', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '44807', '0', '1', '31', '0', '3', '24892', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '44844', '0', '0', '31', '0', '3', '25160', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '44864', '0', '0', '31', '0', '3', '24933', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '44864', '0', '1', '31', '0', '3', '24955', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '44872', '0', '0', '31', '0', '3', '25158', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '44883', '0', '0', '31', '0', '3', '24882', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '44884', '0', '0', '31', '0', '3', '25160', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '44885', '0', '0', '31', '0', '3', '25160', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '44939', '0', '0', '31', '0', '3', '24914', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '44969', '0', '0', '31', '0', '3', '24980', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '44981', '0', '0', '31', '0', '3', '24980', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45005', '0', '0', '31', '0', '3', '24981', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45008', '0', '0', '31', '0', '3', '24914', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45013', '0', '0', '31', '0', '3', '24992', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '45030', '0', '0', '31', '0', '3', '25003', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '45030', '0', '1', '31', '0', '3', '25065', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45076', '0', '0', '31', '0', '3', '25458', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45109', '0', '0', '31', '0', '3', '25084', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45115', '0', '0', '31', '0', '3', '25090', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45115', '0', '1', '31', '0', '3', '25091', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45115', '0', '2', '31', '0', '3', '25092', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45119', '0', '0', '31', '0', '5', '187267', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45191', '0', '0', '31', '0', '3', '25154', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45191', '0', '1', '31', '0', '3', '25156', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45191', '0', '2', '31', '0', '3', '25157', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '45201', '0', '0', '31', '0', '3', '24882', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '45203', '0', '0', '31', '0', '3', '24882', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '45222', '0', '0', '31', '0', '5', '187359', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45223', '0', '0', '31', '0', '3', '25192', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '45226', '0', '0', '31', '0', '5', '141832', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45259', '0', '0', '31', '0', '3', '25213', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45264', '0', '0', '31', '0', '3', '23837', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45323', '0', '0', '31', '0', '3', '24887', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45323', '0', '1', '31', '0', '3', '24888', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45323', '0', '2', '31', '0', '3', '24889', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45323', '0', '3', '31', '0', '3', '24890', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45351', '0', '0', '31', '0', '3', '17544', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45351', '0', '1', '31', '0', '3', '17845', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45368', '0', '0', '31', '0', '5', '187428', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45371', '0', '0', '31', '0', '5', '187431', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45388', '0', '0', '31', '0', '3', '25038', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45389', '0', '0', '31', '0', '3', '25265', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45414', '0', '0', '31', '0', '3', '25308', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45414', '0', '1', '31', '0', '3', '25309', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45414', '0', '2', '31', '0', '3', '25310', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '0', '31', '0', '5', '187559', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '1', '31', '0', '5', '187564', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '2', '31', '0', '5', '187914', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '3', '31', '0', '5', '187916', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '4', '31', '0', '5', '187917', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '5', '31', '0', '5', '187919', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '6', '31', '0', '5', '187920', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '7', '31', '0', '5', '187921', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '8', '31', '0', '5', '187922', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '9', '31', '0', '5', '187923', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '10', '31', '0', '5', '187924', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '11', '31', '0', '5', '187925', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '12', '31', '0', '5', '187926', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '13', '31', '0', '5', '187927', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '14', '31', '0', '5', '187928', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '15', '31', '0', '5', '187929', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '16', '31', '0', '5', '187930', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '17', '31', '0', '5', '187931', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '18', '31', '0', '5', '187932', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '19', '31', '0', '5', '187933', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '20', '31', '0', '5', '187934', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '21', '31', '0', '5', '187935', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '22', '31', '0', '5', '187936', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '23', '31', '0', '5', '187937', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '24', '31', '0', '5', '187938', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '25', '31', '0', '5', '187939', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '26', '31', '0', '5', '187940', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '27', '31', '0', '5', '187941', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '28', '31', '0', '5', '187942', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '29', '31', '0', '5', '187943', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '30', '31', '0', '5', '187944', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '31', '31', '0', '5', '187945', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '32', '31', '0', '5', '187946', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '33', '31', '0', '5', '187947', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '34', '31', '0', '5', '187948', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '35', '31', '0', '5', '187949', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '36', '31', '0', '5', '187950', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '37', '31', '0', '5', '187951', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '38', '31', '0', '5', '187952', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '39', '31', '0', '5', '187953', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '40', '31', '0', '5', '187954', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '41', '31', '0', '5', '187955', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '42', '31', '0', '5', '187956', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '43', '31', '0', '5', '187957', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '44', '31', '0', '5', '187958', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '45', '31', '0', '5', '187959', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '46', '31', '0', '5', '187960', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '47', '31', '0', '5', '187961', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '48', '31', '0', '5', '187962', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '49', '31', '0', '5', '187963', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '50', '31', '0', '5', '187964', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '51', '31', '0', '5', '187965', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '52', '31', '0', '5', '187966', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '53', '31', '0', '5', '187967', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '54', '31', '0', '5', '187968', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '55', '31', '0', '5', '187969', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '56', '31', '0', '5', '187970', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '57', '31', '0', '5', '187971', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '58', '31', '0', '5', '187972', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '59', '31', '0', '5', '187973', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '60', '31', '0', '5', '187974', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '61', '31', '0', '5', '187975', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '62', '31', '0', '5', '194032', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '63', '31', '0', '5', '194033', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '64', '31', '0', '5', '194034', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '65', '31', '0', '5', '194035', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '66', '31', '0', '5', '194036', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '67', '31', '0', '5', '194037', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '68', '31', '0', '5', '194038', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '69', '31', '0', '5', '194039', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '70', '31', '0', '5', '194040', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '71', '31', '0', '5', '194042', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '72', '31', '0', '5', '194043', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '73', '31', '0', '5', '194044', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '74', '31', '0', '5', '194045', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '75', '31', '0', '5', '194046', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '76', '31', '0', '5', '194048', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45437', '0', '77', '31', '0', '5', '194049', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45446', '0', '0', '31', '0', '3', '24771', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45448', '0', '0', '31', '0', '3', '24771', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45449', '0', '0', '31', '0', '3', '24771', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45449', '0', '1', '31', '0', '3', '25458', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45465', '0', '0', '31', '0', '3', '24862', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45474', '0', '0', '31', '0', '3', '25342', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45474', '0', '1', '31', '0', '3', '25343', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45536', '0', '0', '31', '0', '3', '25397', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45536', '0', '1', '31', '0', '3', '25398', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45536', '0', '2', '31', '0', '3', '25399', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45583', '0', '0', '31', '0', '3', '25441', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45583', '0', '1', '31', '0', '3', '25442', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45583', '0', '2', '31', '0', '3', '25443', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45594', '0', '0', '31', '0', '3', '25455', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45594', '0', '1', '31', '0', '3', '25456', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45606', '0', '0', '31', '0', '3', '25425', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45607', '0', '0', '31', '0', '3', '25425', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45609', '0', '0', '31', '0', '3', '25466', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45634', '0', '0', '31', '0', '3', '25478', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '45653', '0', '0', '31', '0', '3', '25490', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '45653', '0', '1', '31', '0', '3', '25492', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '45653', '0', '2', '31', '0', '3', '25493', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45655', '0', '0', '31', '0', '3', '25490', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45655', '0', '1', '31', '0', '3', '25492', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45655', '0', '2', '31', '0', '3', '25493', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45656', '0', '0', '31', '0', '3', '25490', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45656', '0', '1', '31', '0', '3', '25492', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45656', '0', '2', '31', '0', '3', '25493', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45666', '0', '0', '31', '0', '3', '30993', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45667', '0', '0', '31', '0', '3', '25243', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45692', '0', '0', '31', '0', '3', '25510', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45692', '0', '1', '31', '0', '3', '25511', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45692', '0', '2', '31', '0', '3', '25512', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45692', '0', '3', '31', '0', '3', '25513', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45714', '0', '0', '31', '0', '3', '25038', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45735', '0', '0', '31', '0', '3', '25474', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45780', '0', '0', '31', '0', '3', '25458', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45780', '0', '1', '31', '0', '3', '25594', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45808', '0', '0', '31', '0', '3', '28401', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45834', '0', '0', '31', '0', '3', '25654', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45835', '0', '0', '31', '0', '3', '25654', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '45839', '0', '0', '31', '0', '3', '25653', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45853', '0', '0', '31', '0', '3', '25664', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45853', '0', '1', '31', '0', '3', '25665', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45853', '0', '2', '31', '0', '3', '25666', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45864', '0', '0', '31', '0', '3', '23837', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45867', '0', '0', '31', '0', '3', '23837', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45941', '0', '0', '31', '0', '3', '25746', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45976', '0', '0', '31', '0', '3', '25770', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '45990', '0', '0', '31', '0', '3', '25781', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46022', '0', '0', '31', '0', '3', '25814', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46034', '0', '0', '31', '0', '3', '25793', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46058', '0', '0', '31', '0', '3', '25758', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46063', '0', '0', '31', '0', '3', '25752', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46066', '0', '0', '31', '0', '3', '25792', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46068', '0', '0', '31', '0', '3', '25753', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '46072', '0', '0', '31', '0', '3', '25791', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46085', '0', '0', '31', '0', '5', '187982', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46085', '0', '1', '31', '0', '5', '187995', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46085', '0', '2', '31', '0', '5', '187996', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46085', '0', '3', '31', '0', '5', '187997', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46085', '0', '4', '31', '0', '5', '187998', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46085', '0', '5', '31', '0', '5', '187999', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46085', '0', '6', '31', '0', '5', '188000', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46085', '0', '7', '31', '0', '5', '188001', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46085', '0', '8', '31', '0', '5', '188002', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46085', '0', '9', '31', '0', '5', '188003', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46085', '0', '10', '31', '0', '5', '188004', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46085', '0', '11', '31', '0', '5', '188005', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46085', '0', '12', '31', '0', '5', '188006', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46085', '0', '13', '31', '0', '5', '188007', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46085', '0', '14', '31', '0', '5', '188008', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46171', '0', '0', '31', '0', '3', '25845', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46171', '0', '1', '31', '0', '3', '25846', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46171', '0', '2', '31', '0', '3', '25847', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46177', '0', '0', '31', '0', '3', '25770', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46178', '0', '0', '31', '0', '3', '25741', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46201', '0', '0', '31', '0', '5', '188022', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46201', '0', '1', '31', '0', '5', '188024', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46201', '0', '2', '31', '0', '5', '188025', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46201', '0', '3', '31', '0', '5', '188026', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46201', '0', '4', '31', '0', '5', '188027', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46201', '0', '5', '31', '0', '5', '188028', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46201', '0', '6', '31', '0', '5', '188029', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46201', '0', '7', '31', '0', '5', '188030', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46201', '0', '8', '31', '0', '5', '188031', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46201', '0', '9', '31', '0', '5', '188032', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46201', '0', '10', '31', '0', '5', '188033', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46201', '0', '11', '31', '0', '5', '188034', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46201', '0', '12', '31', '0', '5', '188035', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46201', '0', '13', '31', '0', '5', '188036', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46201', '0', '14', '31', '0', '5', '188037', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46201', '0', '15', '31', '0', '5', '188038', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46201', '0', '16', '31', '0', '5', '188039', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46201', '0', '17', '31', '0', '5', '188040', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46201', '0', '18', '31', '0', '5', '188041', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46201', '0', '19', '31', '0', '5', '188042', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46201', '0', '20', '31', '0', '5', '188043', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46201', '0', '21', '31', '0', '5', '188044', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46208', '0', '0', '31', '0', '3', '25741', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46281', '0', '0', '31', '0', '3', '25882', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '46350', '0', '0', '31', '0', '3', '25160', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46376', '0', '0', '31', '0', '3', '24601', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46376', '0', '1', '31', '0', '3', '25987', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46399', '0', '0', '31', '0', '3', '25987', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46400', '0', '0', '31', '0', '3', '26043', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46474', '0', '0', '31', '0', '3', '25315', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46475', '0', '0', '31', '0', '3', '25507', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46482', '0', '0', '31', '0', '3', '15928', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46488', '0', '0', '31', '0', '3', '25814', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46521', '0', '0', '31', '0', '3', '26093', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '46574', '0', '0', '31', '0', '3', '26161', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46593', '0', '0', '31', '0', '3', '26120', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46603', '0', '0', '31', '0', '3', '26121', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46637', '0', '0', '31', '0', '3', '28667', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46685', '0', '0', '31', '0', '3', '26173', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46694', '0', '0', '31', '0', '3', '26159', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46694', '0', '1', '31', '0', '3', '26160', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46704', '0', '0', '31', '0', '3', '26117', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46707', '0', '0', '31', '0', '3', '25653', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46747', '0', '0', '31', '0', '3', '25218', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46793', '0', '0', '31', '0', '5', '300185', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46793', '0', '1', '31', '0', '5', '401003', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46793', '0', '2', '31', '0', '3', '26231', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46797', '0', '0', '31', '0', '3', '26248', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46797', '0', '1', '31', '0', '3', '26249', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46809', '0', '0', '31', '0', '3', '26239', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46815', '0', '0', '31', '0', '3', '26264', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46818', '0', '0', '31', '0', '3', '26262', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46820', '0', '0', '31', '0', '3', '26264', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '46852', '0', '0', '31', '0', '5', '181605', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46886', '0', '0', '31', '0', '3', '24769', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46886', '0', '1', '31', '0', '3', '26237', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '46896', '0', '0', '31', '0', '5', '181605', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46900', '0', '0', '31', '0', '3', '26310', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46902', '0', '0', '31', '0', '3', '26310', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46902', '0', '1', '31', '0', '3', '26373', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46903', '0', '0', '31', '0', '5', '194032', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46903', '0', '1', '31', '0', '5', '194033', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46903', '0', '2', '31', '0', '5', '194034', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46903', '0', '3', '31', '0', '5', '194037', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46903', '0', '4', '31', '0', '5', '194039', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46903', '0', '5', '31', '0', '5', '194042', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46903', '0', '6', '31', '0', '5', '194043', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46903', '0', '7', '31', '0', '5', '194046', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46903', '0', '8', '31', '0', '5', '194048', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46936', '0', '0', '31', '0', '5', '179785', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46936', '0', '1', '31', '0', '5', '179830', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46937', '0', '0', '31', '0', '5', '179786', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46963', '0', '0', '31', '0', '3', '26264', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46964', '0', '0', '31', '0', '3', '26391', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47035', '0', '0', '31', '0', '3', '26425', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47035', '0', '1', '31', '0', '3', '26447', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47035', '0', '2', '31', '0', '3', '32663', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47104', '0', '0', '31', '0', '3', '26401', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47110', '0', '0', '31', '0', '3', '26498', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47110', '0', '1', '31', '0', '3', '26559', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47110', '0', '2', '31', '0', '3', '26700', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47110', '0', '3', '31', '0', '3', '26789', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47110', '0', '4', '31', '0', '3', '28015', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '47129', '0', '0', '31', '0', '3', '26258', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '47129', '0', '1', '31', '0', '3', '26355', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '47129', '0', '2', '31', '0', '3', '26534', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47137', '0', '0', '31', '0', '3', '26370', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47170', '0', '0', '31', '0', '3', '26452', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47176', '0', '0', '31', '0', '3', '26570', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47214', '0', '0', '31', '0', '3', '26570', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47254', '0', '0', '31', '0', '3', '26603', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '47328', '0', '0', '31', '0', '3', '26677', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47336', '0', '0', '31', '0', '3', '26712', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47344', '0', '0', '31', '0', '3', '26764', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47374', '0', '0', '31', '0', '3', '26773', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47460', '0', '0', '31', '0', '3', '26817', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47463', '0', '0', '31', '0', '3', '26785', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47469', '0', '0', '31', '0', '3', '26831', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47542', '0', '0', '31', '0', '3', '26855', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47542', '0', '1', '31', '0', '3', '26856', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47542', '0', '2', '31', '0', '3', '26857', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47634', '0', '0', '31', '0', '3', '26887', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47669', '0', '0', '31', '0', '3', '26683', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47669', '0', '1', '31', '0', '3', '26684', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47669', '0', '2', '31', '0', '3', '26685', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47669', '0', '3', '31', '0', '3', '26686', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47670', '0', '0', '31', '0', '3', '26687', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47681', '0', '0', '31', '0', '3', '26811', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47681', '0', '1', '31', '0', '3', '26812', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47711', '0', '0', '31', '0', '3', '26731', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47712', '0', '0', '31', '0', '3', '26731', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47713', '0', '0', '31', '0', '3', '26731', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47747', '0', '0', '31', '0', '3', '26918', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47799', '0', '0', '31', '0', '3', '27017', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47911', '0', '0', '31', '0', '3', '26406', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47935', '0', '0', '31', '0', '3', '27075', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '47959', '0', '0', '31', '0', '3', '30995', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '47978', '0', '0', '31', '0', '5', '188554', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '47978', '0', '1', '31', '0', '3', '27113', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '47978', '0', '2', '31', '0', '3', '27114', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '47978', '0', '3', '31', '0', '3', '27115', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48009', '0', '0', '31', '0', '3', '26736', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48021', '0', '0', '31', '0', '3', '27135', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48115', '0', '0', '31', '0', '3', '27222', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48117', '0', '0', '31', '0', '3', '27223', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48188', '0', '0', '31', '0', '3', '27349', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48213', '0', '0', '31', '0', '3', '26298', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48218', '0', '0', '31', '0', '3', '27263', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48218', '0', '1', '31', '0', '3', '27264', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48218', '0', '2', '31', '0', '3', '27265', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48227', '0', '0', '31', '0', '3', '27219', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48252', '0', '0', '31', '0', '3', '25478', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '48277', '0', '0', '31', '0', '3', '27327', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '48277', '0', '1', '31', '0', '3', '27829', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48293', '0', '0', '31', '0', '3', '27292', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48306', '0', '0', '31', '0', '3', '27303', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48306', '0', '1', '31', '0', '3', '27307', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48306', '0', '2', '31', '0', '3', '27308', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48306', '0', '3', '31', '0', '3', '27309', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48345', '0', '0', '31', '0', '3', '27331', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48363', '0', '0', '31', '0', '3', '27315', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48385', '0', '0', '31', '0', '3', '27339', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48398', '0', '0', '31', '0', '3', '24921', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48399', '0', '0', '31', '0', '3', '24921', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48508', '0', '0', '31', '0', '3', '27369', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48530', '0', '0', '31', '0', '3', '27268', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48597', '0', '0', '31', '0', '3', '26620', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48600', '0', '0', '31', '0', '3', '27292', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48605', '0', '0', '31', '0', '3', '26620', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '48610', '0', '0', '31', '0', '5', '300202', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48620', '0', '0', '31', '0', '3', '27377', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48627', '0', '0', '31', '0', '3', '27402', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48641', '0', '0', '31', '0', '3', '26893', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48685', '0', '0', '31', '0', '3', '27418', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '48738', '0', '0', '31', '0', '3', '27369', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48748', '0', '0', '31', '0', '3', '27356', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48748', '0', '1', '31', '0', '3', '27356', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48790', '0', '0', '31', '0', '3', '27449', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48790', '0', '1', '31', '0', '3', '27450', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48793', '0', '0', '31', '0', '3', '27452', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '48794', '0', '0', '31', '0', '5', '189290', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48799', '0', '0', '31', '0', '3', '27421', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48808', '0', '0', '31', '0', '3', '27465', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48811', '0', '0', '31', '0', '3', '27465', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '48972', '0', '0', '31', '0', '3', '27542', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48974', '0', '0', '31', '0', '3', '26891', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48975', '0', '0', '31', '0', '3', '23033', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49058', '0', '0', '31', '0', '3', '24968', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49062', '0', '0', '31', '0', '3', '27577', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49075', '0', '0', '31', '0', '3', '27570', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49083', '0', '0', '31', '0', '3', '27589', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '49109', '0', '0', '31', '0', '3', '27163', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49125', '0', '0', '31', '0', '3', '27613', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49128', '0', '0', '31', '0', '3', '27620', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49134', '0', '0', '31', '0', '3', '27627', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49135', '0', '0', '31', '0', '3', '27627', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '49197', '0', '0', '31', '0', '3', '26286', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '49197', '0', '1', '31', '0', '3', '27531', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '49197', '0', '2', '31', '0', '3', '27685', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '49197', '0', '3', '31', '0', '3', '27686', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49210', '0', '0', '31', '0', '3', '23777', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49292', '0', '0', '31', '0', '3', '27369', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49319', '0', '0', '31', '0', '3', '26472', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49334', '0', '0', '31', '0', '3', '27530', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49367', '0', '0', '31', '0', '3', '27698', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49370', '0', '0', '31', '0', '3', '27698', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49404', '0', '0', '31', '0', '3', '27701', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49405', '0', '0', '31', '0', '3', '26630', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '49453', '0', '0', '31', '0', '3', '28161', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49515', '0', '0', '31', '0', '3', '23033', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49517', '0', '0', '31', '0', '3', '23033', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49519', '0', '0', '31', '0', '3', '23033', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49524', '0', '0', '31', '0', '3', '23033', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49525', '0', '0', '31', '0', '3', '23033', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49555', '0', '0', '31', '0', '3', '27709', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49555', '0', '1', '31', '0', '3', '27753', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49555', '0', '2', '31', '0', '3', '27754', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49590', '0', '0', '31', '0', '3', '27827', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49625', '0', '0', '31', '0', '3', '24087', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49625', '0', '1', '31', '0', '3', '24092', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49625', '0', '2', '31', '0', '3', '24093', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49625', '0', '3', '31', '0', '3', '24094', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49634', '0', '0', '31', '0', '3', '24087', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49634', '0', '1', '31', '0', '3', '24092', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49634', '0', '2', '31', '0', '3', '24093', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49634', '0', '3', '31', '0', '3', '24094', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49679', '0', '0', '31', '0', '3', '26287', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49683', '0', '0', '31', '0', '3', '26287', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49684', '0', '0', '31', '0', '3', '26287', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49858', '0', '0', '31', '0', '3', '27890', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '49889', '0', '0', '31', '0', '3', '27899', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49899', '0', '0', '31', '0', '3', '27852', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49947', '0', '0', '31', '0', '3', '19871', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '50036', '0', '0', '31', '0', '3', '27641', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '50133', '0', '0', '31', '0', '3', '24464', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '50218', '0', '0', '31', '0', '3', '27959', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '50331', '0', '0', '31', '0', '3', '27992', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '50331', '0', '1', '31', '0', '3', '27993', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '50382', '0', '0', '31', '0', '3', '28008', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '50383', '0', '0', '31', '0', '3', '28008', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '50430', '0', '0', '31', '0', '3', '28005', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '50440', '0', '0', '31', '0', '3', '28015', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '50515', '0', '0', '31', '0', '3', '27829', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '50546', '0', '0', '31', '0', '3', '26773', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '50547', '0', '0', '31', '0', '3', '26831', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '50548', '0', '0', '31', '0', '3', '26887', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '50554', '0', '0', '31', '0', '3', '30475', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '50562', '0', '0', '31', '0', '3', '30475', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '50563', '0', '0', '31', '0', '3', '32821', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '50626', '0', '0', '31', '0', '3', '27972', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '50627', '0', '0', '31', '0', '3', '27972', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '50628', '0', '0', '31', '0', '3', '28009', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '50639', '0', '0', '31', '0', '3', '27972', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '50640', '0', '0', '31', '0', '3', '27972', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '50645', '0', '0', '31', '0', '3', '27972', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '50646', '0', '0', '31', '0', '3', '27972', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '50747', '0', '0', '31', '0', '3', '27981', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '50790', '0', '0', '31', '0', '5', '192163', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '50790', '0', '1', '31', '0', '3', '22515', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '50791', '0', '0', '31', '0', '5', '192163', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '50791', '0', '1', '31', '0', '3', '22515', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '50793', '0', '0', '31', '0', '3', '22515', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '50794', '0', '0', '31', '0', '3', '22515', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '50802', '0', '0', '31', '0', '5', '192164', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '50802', '0', '1', '31', '0', '3', '22515', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '50803', '0', '0', '31', '0', '5', '192164', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '50803', '0', '1', '31', '0', '3', '22515', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '50825', '0', '0', '31', '0', '5', '192163', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '50825', '0', '1', '31', '0', '3', '22515', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '50826', '0', '0', '31', '0', '5', '192164', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '50826', '0', '1', '31', '0', '3', '22515', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51022', '0', '0', '31', '0', '3', '28236', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51024', '0', '0', '31', '0', '3', '28239', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51025', '0', '0', '31', '0', '3', '28240', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51139', '0', '0', '31', '0', '3', '28054', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51139', '0', '1', '31', '0', '3', '32821', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51152', '0', '0', '31', '0', '3', '28260', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51202', '0', '0', '31', '0', '3', '26492', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51247', '0', '0', '31', '0', '3', '28064', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51247', '0', '1', '31', '0', '3', '28304', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51247', '0', '2', '31', '0', '3', '28305', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51276', '0', '0', '31', '0', '3', '28156', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51276', '0', '1', '31', '0', '3', '28260', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51331', '0', '0', '31', '0', '3', '28053', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51332', '0', '0', '31', '0', '3', '28054', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51333', '0', '0', '31', '0', '5', '190550', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51333', '0', '1', '31', '0', '3', '28330', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51343', '0', '0', '31', '0', '3', '28077', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51343', '0', '1', '31', '0', '3', '28095', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51366', '0', '0', '31', '0', '3', '28093', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51368', '0', '0', '31', '0', '3', '22515', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51381', '0', '0', '31', '0', '3', '28352', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51384', '0', '0', '31', '0', '3', '28333', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '51395', '0', '0', '31', '0', '3', '28108', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '51395', '0', '1', '31', '0', '3', '28170', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51396', '0', '0', '31', '0', '3', '28333', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51420', '0', '0', '31', '0', '3', '28362', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '51511', '0', '0', '31', '0', '3', '23837', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51516', '0', '0', '31', '0', '3', '28016', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51516', '0', '1', '31', '0', '3', '28093', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51516', '0', '2', '31', '0', '3', '28391', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51577', '0', '0', '31', '0', '3', '28401', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51579', '0', '0', '31', '0', '3', '28401', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51603', '0', '0', '31', '0', '3', '28416', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51606', '0', '0', '31', '0', '3', '28416', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51607', '0', '0', '31', '0', '3', '28416', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51616', '0', '0', '31', '0', '3', '28442', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '51719', '0', '0', '31', '0', '3', '28473', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '51719', '0', '1', '31', '0', '3', '32742', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '51742', '0', '0', '31', '0', '3', '28467', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '51748', '0', '0', '31', '0', '3', '28467', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51754', '0', '0', '31', '0', '3', '28387', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51767', '0', '0', '31', '0', '3', '28367', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51769', '0', '0', '31', '0', '3', '28367', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51769', '0', '1', '31', '0', '3', '28481', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51769', '0', '2', '31', '0', '3', '28483', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51774', '0', '0', '31', '0', '3', '28070', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '51805', '0', '0', '31', '0', '3', '32665', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51825', '0', '0', '31', '0', '3', '28016', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51825', '0', '1', '31', '0', '3', '28998', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51840', '0', '0', '31', '0', '3', '28466', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51843', '0', '0', '31', '0', '3', '28161', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51858', '0', '0', '31', '0', '3', '28525', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51858', '0', '1', '31', '0', '3', '28542', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51858', '0', '2', '31', '0', '3', '28543', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51858', '0', '3', '31', '0', '3', '28544', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51859', '0', '0', '31', '0', '3', '28525', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51859', '0', '1', '31', '0', '3', '28542', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51859', '0', '2', '31', '0', '3', '28543', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51859', '0', '3', '31', '0', '3', '28544', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51866', '0', '0', '31', '0', '3', '28521', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51870', '0', '0', '31', '0', '3', '28523', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51925', '0', '0', '31', '0', '3', '28541', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51927', '0', '0', '31', '0', '3', '28541', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51931', '0', '0', '31', '0', '3', '28016', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51931', '0', '1', '31', '0', '3', '28535', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51932', '0', '0', '31', '0', '3', '28016', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51932', '0', '1', '31', '0', '3', '28537', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51933', '0', '0', '31', '0', '3', '28016', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51933', '0', '1', '31', '0', '3', '28536', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51942', '0', '0', '31', '0', '3', '28387', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51959', '0', '0', '31', '0', '3', '28161', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '51964', '0', '0', '31', '0', '3', '28416', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52011', '0', '0', '31', '0', '3', '26705', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52011', '0', '1', '31', '0', '3', '27278', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52011', '0', '2', '31', '0', '3', '27279', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52037', '0', '0', '31', '0', '3', '28565', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52059', '0', '0', '31', '0', '3', '28387', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52106', '0', '0', '31', '0', '3', '26712', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52140', '0', '0', '31', '0', '3', '25458', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52151', '0', '0', '31', '0', '3', '28639', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52170', '0', '0', '31', '0', '3', '28113', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52227', '0', '0', '31', '0', '3', '28739', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52238', '0', '0', '31', '0', '3', '28823', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52242', '0', '0', '31', '0', '3', '28724', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52242', '0', '1', '31', '0', '3', '28747', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52247', '0', '0', '31', '0', '5', '190716', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52247', '0', '1', '31', '0', '5', '190939', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52247', '0', '2', '31', '0', '5', '190940', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52254', '0', '0', '31', '0', '3', '28170', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52257', '0', '0', '31', '0', '3', '28170', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52264', '0', '0', '31', '0', '3', '28653', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52322', '0', '0', '31', '0', '3', '28778', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52369', '0', '0', '31', '0', '3', '28780', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52369', '0', '1', '31', '0', '3', '28789', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52371', '0', '0', '31', '0', '3', '28789', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52381', '0', '0', '31', '0', '3', '28671', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52387', '0', '0', '31', '0', '3', '28695', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52414', '0', '0', '31', '0', '3', '28821', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52438', '0', '0', '31', '0', '3', '22515', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52449', '0', '0', '31', '0', '3', '22515', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52458', '0', '0', '31', '0', '3', '26795', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '52480', '0', '0', '31', '0', '3', '27733', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52512', '0', '0', '31', '0', '3', '38028', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52585', '0', '0', '31', '0', '3', '28857', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52632', '0', '0', '31', '0', '3', '28892', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52654', '0', '0', '31', '0', '3', '28587', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52681', '0', '0', '31', '0', '3', '28931', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '52683', '0', '0', '31', '0', '3', '28892', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '52685', '0', '0', '31', '0', '3', '28893', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52686', '0', '0', '31', '0', '3', '28931', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52725', '0', '0', '31', '0', '3', '28857', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52726', '0', '0', '31', '0', '3', '28857', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52727', '0', '0', '31', '0', '3', '28857', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52728', '0', '0', '31', '0', '3', '28857', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52729', '0', '0', '31', '0', '3', '28857', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52730', '0', '0', '31', '0', '3', '28857', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52731', '0', '0', '31', '0', '3', '28857', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52774', '0', '0', '31', '0', '3', '28578', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52774', '0', '1', '31', '0', '3', '28579', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52774', '0', '2', '31', '0', '3', '28580', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52774', '0', '3', '31', '0', '3', '28581', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52774', '0', '4', '31', '0', '3', '28582', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52774', '0', '5', '31', '0', '3', '28586', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52774', '0', '6', '31', '0', '3', '28835', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52774', '0', '7', '31', '0', '3', '28836', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52774', '0', '8', '31', '0', '3', '28837', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52774', '0', '9', '31', '0', '3', '28920', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52774', '0', '10', '31', '0', '3', '29240', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52791', '0', '0', '31', '0', '3', '28408', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52793', '0', '0', '31', '0', '3', '28408', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52805', '0', '0', '31', '0', '3', '28936', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '52812', '0', '0', '31', '0', '3', '27377', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52833', '0', '0', '31', '0', '3', '28952', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52834', '0', '0', '31', '0', '3', '28952', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52837', '0', '0', '31', '0', '3', '28952', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52838', '0', '0', '31', '0', '3', '28952', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52850', '0', '0', '31', '0', '3', '26764', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52850', '0', '1', '31', '0', '3', '26822', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52884', '0', '0', '31', '0', '3', '28952', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52908', '0', '0', '31', '0', '3', '28123', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52930', '0', '0', '31', '0', '3', '28380', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52956', '0', '0', '31', '0', '5', '300221', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52981', '0', '0', '31', '0', '3', '28086', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52981', '0', '1', '31', '0', '3', '28096', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52981', '0', '2', '31', '0', '3', '28109', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52981', '0', '3', '31', '0', '3', '28110', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52990', '0', '0', '31', '0', '3', '28406', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '53020', '0', '0', '31', '0', '5', '191136', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '53029', '0', '0', '31', '0', '3', '29028', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '53038', '0', '0', '31', '0', '3', '29056', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '53038', '0', '1', '31', '0', '3', '29057', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '53038', '0', '2', '31', '0', '3', '29058', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '53038', '0', '3', '31', '0', '3', '29069', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '53093', '0', '0', '31', '0', '3', '29082', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '53110', '0', '0', '31', '0', '3', '29102', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '53110', '0', '1', '31', '0', '3', '29103', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '53466', '0', '0', '31', '0', '3', '29192', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '53605', '0', '0', '31', '0', '3', '29220', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '53677', '0', '0', '31', '0', '3', '29227', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '53679', '0', '0', '31', '0', '3', '29183', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '53680', '0', '0', '31', '0', '3', '29173', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '53683', '0', '0', '31', '0', '3', '29183', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '53685', '0', '0', '31', '0', '3', '29175', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '53694', '0', '0', '31', '0', '3', '29220', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '53701', '0', '0', '31', '0', '3', '29175', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '53705', '0', '0', '31', '0', '3', '29183', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '53706', '0', '0', '31', '0', '3', '29183', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '53778', '0', '0', '31', '0', '3', '29173', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '53798', '0', '0', '31', '0', '3', '28921', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54047', '0', '0', '31', '0', '5', '191440', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54047', '0', '1', '31', '0', '5', '191444', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54047', '0', '2', '31', '0', '5', '191445', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54047', '0', '3', '31', '0', '5', '191665', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54047', '0', '4', '31', '0', '5', '192067', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54047', '0', '5', '31', '0', '5', '192068', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54047', '0', '6', '31', '0', '5', '192069', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54047', '0', '7', '31', '0', '5', '192070', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54047', '0', '8', '31', '0', '5', '192083', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54047', '0', '9', '31', '0', '5', '192084', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54047', '0', '10', '31', '0', '5', '192085', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54047', '0', '11', '31', '0', '5', '192086', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54047', '0', '12', '31', '0', '5', '192087', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54047', '0', '13', '31', '0', '5', '192088', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54047', '0', '14', '31', '0', '5', '192089', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54047', '0', '15', '31', '0', '5', '192116', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54047', '0', '16', '31', '0', '5', '192117', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54047', '0', '17', '31', '0', '5', '192119', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54047', '0', '18', '31', '0', '5', '192850', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54047', '0', '19', '31', '0', '5', '192852', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54047', '0', '20', '31', '0', '5', '192853', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54047', '0', '21', '31', '0', '5', '192854', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54108', '0', '0', '31', '0', '3', '29254', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54112', '0', '0', '31', '0', '3', '30056', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54128', '0', '0', '31', '0', '3', '29255', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54142', '0', '0', '31', '0', '3', '29281', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '54160', '0', '0', '31', '0', '3', '29266', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54209', '0', '0', '31', '0', '3', '28960', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54236', '0', '0', '31', '0', '3', '28998', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54250', '0', '0', '31', '0', '3', '28929', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54250', '0', '1', '31', '0', '3', '28960', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54258', '0', '0', '31', '0', '3', '29326', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54264', '0', '0', '31', '0', '3', '29326', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54265', '0', '0', '31', '0', '3', '29326', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54266', '0', '0', '31', '0', '3', '29326', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54267', '0', '0', '31', '0', '3', '29326', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54269', '0', '0', '31', '0', '3', '29313', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54269', '0', '1', '31', '0', '3', '29321', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '54272', '0', '0', '31', '0', '3', '29328', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54323', '0', '0', '31', '0', '3', '29338', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54423', '0', '0', '31', '0', '3', '29416', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54430', '0', '0', '31', '0', '3', '29424', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54464', '0', '0', '31', '0', '3', '29424', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54510', '0', '0', '31', '0', '3', '29459', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54539', '0', '0', '31', '0', '3', '29458', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54643', '0', '0', '31', '0', '3', '23472', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54878', '0', '0', '31', '0', '3', '29307', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54984', '0', '0', '31', '0', '3', '29692', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54988', '0', '0', '31', '0', '3', '22517', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '54990', '0', '0', '31', '0', '3', '29700', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '54991', '0', '0', '31', '0', '3', '29573', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '55037', '0', '0', '31', '0', '3', '29692', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55063', '0', '0', '31', '0', '3', '27669', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55063', '0', '1', '31', '0', '3', '30475', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '55083', '0', '0', '31', '0', '3', '29700', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55127', '0', '0', '31', '0', '3', '29742', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55134', '0', '0', '31', '0', '3', '29746', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55134', '0', '1', '31', '0', '3', '29752', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55161', '0', '0', '31', '0', '3', '29746', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '55197', '0', '0', '31', '0', '5', '191760', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55223', '0', '0', '31', '0', '3', '29686', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55244', '0', '0', '31', '0', '3', '29708', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55257', '0', '0', '31', '0', '3', '29805', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55287', '0', '0', '31', '0', '3', '24165', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55287', '0', '1', '31', '0', '3', '24166', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55287', '0', '2', '31', '0', '3', '24167', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55287', '0', '3', '31', '0', '3', '26712', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55287', '0', '4', '31', '0', '3', '27111', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55287', '0', '5', '31', '0', '3', '27112', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55287', '0', '6', '31', '0', '3', '29808', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55287', '0', '7', '31', '0', '3', '30220', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55287', '0', '8', '31', '0', '3', '32431', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55406', '0', '0', '31', '0', '3', '28518', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55419', '0', '0', '31', '0', '3', '29647', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '55479', '0', '0', '31', '0', '3', '16803', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55510', '0', '0', '31', '0', '3', '29469', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55510', '0', '1', '31', '0', '3', '30445', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55516', '0', '0', '31', '0', '3', '29887', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55516', '0', '1', '31', '0', '3', '29890', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55516', '0', '2', '31', '0', '3', '29891', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55516', '0', '3', '31', '0', '3', '29892', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55516', '0', '4', '31', '0', '3', '29939', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55524', '0', '0', '31', '0', '3', '23755', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55524', '0', '1', '31', '0', '3', '23771', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55526', '0', '0', '31', '0', '3', '29469', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55526', '0', '1', '31', '0', '3', '30445', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55647', '0', '0', '31', '0', '5', '191840', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '55715', '0', '0', '31', '0', '3', '29984', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55796', '0', '0', '31', '0', '3', '30056', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55801', '0', '0', '31', '0', '3', '26712', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55803', '0', '0', '31', '0', '3', '26712', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55805', '0', '0', '31', '0', '3', '26712', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55811', '0', '0', '31', '0', '3', '29980', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55811', '0', '1', '31', '0', '3', '29981', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55875', '0', '0', '31', '0', '3', '29384', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55881', '0', '0', '31', '0', '3', '30045', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56099', '0', '0', '31', '0', '3', '30169', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56103', '0', '0', '31', '0', '3', '30164', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56114', '0', '0', '31', '0', '3', '30148', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56150', '0', '0', '31', '0', '3', '30385', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56152', '0', '0', '31', '0', '3', '28859', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56189', '0', '0', '31', '0', '3', '29368', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56189', '0', '1', '31', '0', '3', '29801', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56189', '0', '2', '31', '0', '3', '30152', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56227', '0', '0', '31', '0', '3', '30163', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56266', '0', '0', '31', '0', '3', '30090', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56275', '0', '0', '31', '0', '3', '30209', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56275', '0', '1', '31', '0', '3', '30211', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56275', '0', '2', '31', '0', '3', '30212', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56393', '0', '0', '31', '0', '3', '29854', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56393', '0', '1', '31', '0', '3', '30013', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56458', '0', '0', '31', '0', '3', '28586', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56505', '0', '0', '31', '0', '3', '30334', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56523', '0', '0', '31', '0', '3', '30315', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56523', '0', '1', '31', '0', '3', '30316', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56523', '0', '2', '31', '0', '3', '30317', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56523', '0', '3', '31', '0', '3', '30318', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56567', '0', '0', '31', '0', '3', '30121', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56567', '0', '1', '31', '0', '3', '30122', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56621', '0', '0', '31', '0', '3', '30134', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56677', '0', '0', '31', '0', '3', '30399', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56683', '0', '0', '31', '0', '3', '30407', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56688', '0', '0', '31', '0', '3', '30396', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '56694', '0', '0', '31', '0', '3', '30396', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56695', '0', '0', '31', '0', '3', '30396', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56696', '0', '0', '31', '0', '3', '30399', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56696', '0', '1', '31', '0', '3', '33413', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56713', '0', '0', '31', '0', '3', '29310', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56738', '0', '0', '31', '0', '3', '30422', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56763', '0', '0', '31', '0', '3', '30446', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '56764', '0', '0', '31', '0', '3', '30446', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '56765', '0', '0', '31', '0', '3', '30446', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '56790', '0', '0', '31', '0', '3', '30684', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '57068', '0', '0', '31', '0', '3', '30298', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '57071', '0', '0', '31', '0', '3', '30298', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '57072', '0', '0', '31', '0', '3', '30298', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '57682', '0', '0', '31', '0', '3', '30672', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '57806', '0', '0', '31', '0', '3', '30202', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '57835', '0', '0', '31', '0', '3', '30451', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '57852', '0', '0', '31', '0', '5', '192858', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '57853', '0', '0', '31', '0', '5', '192858', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '57853', '0', '1', '31', '0', '3', '30742', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '57853', '0', '2', '31', '0', '3', '30744', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '57853', '0', '3', '31', '0', '3', '30745', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '57853', '0', '4', '31', '0', '3', '30950', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '57885', '0', '0', '31', '0', '3', '23837', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '57980', '0', '0', '31', '0', '3', '30689', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '57983', '0', '0', '31', '0', '3', '30689', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '58036', '0', '0', '31', '0', '3', '30701', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '58040', '0', '0', '31', '0', '3', '30896', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '58103', '0', '0', '31', '0', '3', '29686', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '58108', '0', '0', '31', '0', '3', '30993', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '58185', '0', '0', '31', '0', '3', '15214', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '58185', '0', '1', '31', '0', '3', '30868', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '58515', '0', '0', '31', '0', '3', '31105', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '58542', '0', '0', '31', '0', '3', '30172', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '58593', '0', '0', '31', '0', '3', '30689', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '58641', '0', '0', '31', '0', '3', '31130', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '58658', '0', '0', '31', '0', '3', '31131', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '58672', '0', '0', '31', '0', '3', '31125', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '58766', '0', '0', '31', '0', '3', '28860', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '58825', '0', '0', '31', '0', '3', '27733', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '58836', '0', '0', '31', '0', '3', '31216', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '59008', '0', '0', '31', '0', '3', '31236', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '59125', '0', '0', '31', '0', '3', '31517', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '59189', '0', '0', '31', '0', '3', '30173', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '59189', '0', '1', '31', '0', '3', '31138', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '59375', '0', '0', '31', '0', '3', '31630', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '59386', '0', '0', '31', '0', '3', '23953', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '59449', '0', '0', '31', '0', '3', '31530', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '59465', '0', '0', '31', '0', '3', '30178', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '59474', '0', '0', '31', '0', '3', '29266', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '59528', '0', '0', '31', '0', '3', '28695', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '59554', '0', '0', '31', '0', '3', '31690', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '59595', '0', '0', '31', '0', '3', '26369', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '59694', '0', '0', '31', '0', '3', '23960', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '59694', '0', '1', '31', '0', '3', '23961', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '59694', '0', '2', '31', '0', '3', '24083', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '59790', '0', '0', '31', '0', '3', '31651', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '59807', '0', '0', '31', '0', '3', '27709', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '59807', '0', '1', '31', '0', '3', '27753', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '59807', '0', '2', '31', '0', '3', '27754', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '59925', '0', '0', '31', '0', '3', '31887', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '59951', '0', '0', '31', '0', '3', '31892', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '59952', '0', '0', '31', '0', '3', '31892', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60256', '0', '0', '31', '0', '3', '32242', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60256', '0', '1', '31', '0', '3', '32244', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60256', '0', '2', '31', '0', '3', '32245', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60310', '0', '0', '31', '0', '3', '32266', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60315', '0', '0', '31', '0', '3', '32265', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60316', '0', '0', '31', '0', '3', '32265', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60342', '0', '0', '31', '0', '3', '29308', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60422', '0', '0', '31', '0', '3', '32281', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '60430', '0', '0', '31', '0', '3', '30643', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60528', '0', '0', '31', '0', '3', '32319', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60535', '0', '0', '31', '0', '5', '191449', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60535', '0', '1', '31', '0', '5', '191450', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60535', '0', '2', '31', '0', '5', '191451', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60535', '0', '3', '31', '0', '5', '191452', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60561', '0', '0', '31', '0', '3', '32318', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60561', '0', '1', '31', '0', '3', '32316', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60612', '0', '0', '31', '0', '3', '32328', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60614', '0', '0', '31', '0', '3', '32328', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '60639', '0', '0', '31', '0', '3', '28860', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60829', '0', '0', '31', '0', '3', '32260', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60831', '0', '0', '31', '0', '3', '32318', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60834', '0', '0', '31', '0', '3', '32347', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60836', '0', '0', '31', '0', '3', '32347', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60909', '0', '0', '31', '0', '3', '28714', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60909', '0', '1', '31', '0', '3', '28715', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60909', '0', '2', '31', '0', '3', '28718', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60909', '0', '3', '31', '0', '3', '28721', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60909', '0', '4', '31', '0', '3', '28722', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60909', '0', '5', '31', '0', '3', '28723', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60909', '0', '6', '31', '0', '3', '28725', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60909', '0', '7', '31', '0', '3', '28726', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60909', '0', '8', '31', '0', '3', '28727', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60909', '0', '9', '31', '0', '3', '28728', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60909', '0', '10', '31', '0', '3', '28776', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60909', '0', '11', '31', '0', '3', '28951', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60909', '0', '12', '31', '0', '3', '28989', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60909', '0', '13', '31', '0', '3', '28994', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60909', '0', '14', '31', '0', '3', '28997', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60909', '0', '15', '31', '0', '3', '29478', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60909', '0', '16', '31', '0', '3', '29491', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60909', '0', '17', '31', '0', '3', '29497', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60909', '0', '18', '31', '0', '3', '29523', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60909', '0', '19', '31', '0', '3', '29528', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60909', '0', '20', '31', '0', '3', '29714', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60909', '0', '21', '31', '0', '3', '33027', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '61028', '0', '0', '31', '0', '3', '32448', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '61254', '0', '0', '31', '0', '3', '30449', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '61254', '0', '1', '31', '0', '3', '30451', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '61254', '0', '2', '31', '0', '3', '30452', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '61353', '0', '0', '31', '0', '3', '27047', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '61397', '0', '0', '31', '0', '3', '32606', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '61488', '0', '0', '31', '0', '5', '161460', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '61602', '0', '0', '31', '0', '3', '23033', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '61632', '0', '0', '31', '0', '3', '30449', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '61632', '0', '1', '31', '0', '3', '30451', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '61632', '0', '2', '31', '0', '3', '30452', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '61647', '0', '0', '31', '0', '3', '27047', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '61901', '0', '0', '31', '0', '3', '32867', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '61920', '0', '0', '31', '0', '3', '32857', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '61920', '0', '1', '31', '0', '3', '32867', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '61920', '0', '2', '31', '0', '3', '32927', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '61942', '0', '0', '31', '0', '3', '32867', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '61975', '0', '0', '31', '0', '3', '32867', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '62056', '0', '0', '31', '0', '3', '32934', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '62272', '0', '0', '31', '0', '5', '194151', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '62272', '0', '1', '31', '0', '3', '32318', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '62399', '0', '0', '31', '0', '3', '33113', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '62399', '0', '1', '31', '0', '3', '33139', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '62488', '0', '0', '31', '0', '3', '33121', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '62505', '0', '0', '31', '0', '3', '33186', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '62521', '0', '0', '31', '0', '3', '32906', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '62524', '0', '0', '31', '0', '3', '32906', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '62525', '0', '0', '31', '0', '3', '32906', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '62584', '0', '0', '31', '0', '3', '33202', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '62584', '0', '1', '31', '0', '3', '33203', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '62584', '0', '2', '31', '0', '3', '33215', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '62584', '0', '3', '31', '0', '3', '33906', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '62584', '0', '4', '31', '0', '3', '33916', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '62584', '0', '5', '31', '0', '3', '33918', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '62584', '0', '6', '31', '0', '3', '33919', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '62646', '0', '0', '31', '0', '3', '33186', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '62701', '0', '0', '31', '0', '3', '33200', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '62709', '0', '0', '31', '0', '3', '33844', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '62709', '0', '1', '31', '0', '3', '33845', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '62943', '0', '0', '31', '0', '5', '193963', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '62990', '0', '0', '31', '0', '3', '33308', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '63348', '0', '0', '31', '0', '3', '32930', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '63352', '0', '0', '31', '0', '3', '33632', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '63524', '0', '0', '31', '0', '3', '33233', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '63629', '0', '0', '31', '0', '3', '32930', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '63657', '0', '0', '31', '0', '3', '33233', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '63658', '0', '0', '31', '0', '3', '33233', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '63659', '0', '0', '31', '0', '3', '33233', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '63676', '0', '0', '31', '0', '3', '32930', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '63702', '0', '0', '31', '0', '3', '32930', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '63766', '0', '0', '31', '0', '3', '33661', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '63979', '0', '0', '31', '0', '3', '33909', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '63983', '0', '0', '31', '0', '3', '33661', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '63985', '0', '0', '31', '0', '3', '32934', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '64185', '0', '0', '31', '0', '3', '33202', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '64185', '0', '1', '31', '0', '3', '33203', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '64185', '0', '2', '31', '0', '3', '33215', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '64185', '0', '3', '31', '0', '3', '33906', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '64185', '0', '4', '31', '0', '3', '33916', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '64185', '0', '5', '31', '0', '3', '33918', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '64185', '0', '6', '31', '0', '3', '33919', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '64449', '0', '0', '31', '0', '3', '34096', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '64474', '0', '0', '31', '0', '3', '33118', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '64475', '0', '0', '31', '0', '3', '33118', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '65109', '0', '0', '31', '0', '3', '33121', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '65200', '0', '0', '31', '0', '3', '34320', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '65258', '0', '0', '31', '0', '3', '34320', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '65265', '0', '0', '31', '0', '3', '34320', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '65357', '0', '0', '31', '0', '3', '33532', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '65357', '0', '1', '31', '0', '3', '33533', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '65611', '0', '0', '31', '0', '3', '34520', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '65613', '0', '0', '31', '0', '3', '34520', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '65614', '0', '0', '31', '0', '3', '34520', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '66132', '0', '0', '31', '0', '3', '34496', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '66133', '0', '0', '31', '0', '3', '34497', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '66170', '0', '0', '31', '0', '3', '34564', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '66170', '0', '1', '31', '0', '3', '34660', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '66256', '0', '0', '31', '0', '3', '34810', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '66390', '0', '0', '31', '0', '3', '34852', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '66512', '0', '0', '31', '0', '5', '195308', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '66512', '0', '1', '31', '0', '5', '195309', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '66531', '0', '0', '31', '0', '5', '195214', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '66531', '0', '1', '31', '0', '5', '195310', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '66630', '0', '0', '31', '0', '3', '34984', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '66637', '0', '0', '31', '0', '3', '34984', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '66665', '0', '0', '31', '0', '3', '35015', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '66798', '0', '0', '31', '0', '3', '35005', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '66905', '0', '0', '31', '0', '3', '35119', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '67328', '0', '0', '31', '0', '3', '35015', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '67482', '0', '0', '31', '0', '3', '35451', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '67751', '0', '0', '31', '0', '3', '35590', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '67864', '0', '0', '31', '0', '3', '35651', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '67888', '0', '0', '31', '0', '3', '35458', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '68359', '0', '0', '31', '0', '3', '34320', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '68400', '0', '0', '31', '0', '3', '34496', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '68401', '0', '0', '31', '0', '3', '34497', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '68861', '0', '0', '31', '0', '3', '36497', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '69007', '0', '0', '31', '0', '3', '30298', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '69095', '0', '0', '31', '0', '3', '15214', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '0', '31', '0', '5', '176513', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '1', '31', '0', '5', '176514', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '2', '31', '0', '5', '176515', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '3', '31', '0', '5', '176809', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '4', '31', '0', '5', '176810', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '5', '31', '0', '5', '176811', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '6', '31', '0', '5', '176812', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '7', '31', '0', '5', '176813', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '8', '31', '0', '5', '176814', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '9', '31', '0', '5', '176815', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '10', '31', '0', '5', '176816', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '11', '31', '0', '5', '176817', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '12', '31', '0', '5', '176818', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '13', '31', '0', '5', '176819', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '14', '31', '0', '5', '176820', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '15', '31', '0', '5', '176821', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '16', '31', '0', '5', '176822', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '17', '31', '0', '5', '176823', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '18', '31', '0', '5', '176824', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '19', '31', '0', '5', '176825', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '20', '31', '0', '5', '176826', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '21', '31', '0', '5', '176827', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '22', '31', '0', '5', '176828', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '23', '31', '0', '5', '176829', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '24', '31', '0', '5', '176830', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '25', '31', '0', '5', '176831', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '26', '31', '0', '5', '176832', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '27', '31', '0', '5', '176833', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '28', '31', '0', '5', '176834', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '29', '31', '0', '5', '176835', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '30', '31', '0', '5', '176836', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '31', '31', '0', '5', '176837', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '32', '31', '0', '5', '176838', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '33', '31', '0', '5', '176839', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '34', '31', '0', '5', '176840', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '35', '31', '0', '5', '176841', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '36', '31', '0', '5', '176842', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '37', '31', '0', '5', '176908', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '38', '31', '0', '5', '176909', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '39', '31', '0', '5', '176910', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '40', '31', '0', '5', '176911', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '41', '31', '0', '5', '176912', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '42', '31', '0', '5', '176913', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '43', '31', '0', '5', '176914', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '44', '31', '0', '5', '176915', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '45', '31', '0', '5', '176916', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '46', '31', '0', '5', '176917', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '47', '31', '0', '5', '176918', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '48', '31', '0', '5', '176919', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '49', '31', '0', '5', '176920', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '50', '31', '0', '5', '176921', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '69294', '0', '51', '31', '0', '5', '176922', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '69431', '0', '0', '31', '0', '3', '36848', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '69508', '0', '0', '31', '0', '3', '37986', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '69540', '0', '0', '31', '0', '3', '36897', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '69593', '0', '0', '31', '0', '3', '36944', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '69600', '0', '0', '31', '0', '3', '36945', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '69601', '0', '0', '31', '0', '3', '36946', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '69614', '0', '0', '31', '0', '3', '36947', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '69708', '0', '0', '31', '0', '3', '36954', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '5', '69767', '0', '0', '31', '0', '3', '37014', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '69768', '0', '0', '31', '0', '3', '37014', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '69783', '0', '0', '31', '0', '3', '37013', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '69784', '0', '0', '31', '0', '3', '37014', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '69797', '0', '0', '31', '0', '3', '37013', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '69799', '0', '0', '31', '0', '3', '37013', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '69802', '0', '0', '31', '0', '3', '37013', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '69857', '0', '0', '31', '0', '3', '36954', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '69922', '0', '0', '31', '0', '3', '37094', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '70021', '0', '0', '31', '0', '3', '22515', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '70053', '0', '0', '31', '0', '3', '37122', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '70053', '0', '1', '31', '0', '3', '37123', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '70053', '0', '2', '31', '0', '3', '37124', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '70053', '0', '3', '31', '0', '3', '37125', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '70104', '0', '0', '31', '0', '3', '36957', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '70104', '0', '1', '31', '0', '3', '36960', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '70293', '0', '0', '31', '0', '3', '36934', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '70299', '0', '0', '31', '0', '3', '36934', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '70299', '0', '1', '31', '0', '3', '37664', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '70374', '0', '0', '31', '0', '3', '37540', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '70464', '0', '0', '31', '0', '3', '37496', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '70464', '0', '1', '31', '0', '3', '37497', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '70464', '0', '2', '31', '0', '3', '37498', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '70521', '0', '0', '31', '0', '3', '37572', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '70521', '0', '1', '31', '0', '3', '37575', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '70521', '0', '2', '31', '0', '3', '37576', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '70521', '0', '3', '31', '0', '3', '37580', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '70588', '0', '0', '31', '0', '3', '36789', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '70590', '0', '0', '31', '0', '3', '37826', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '70595', '0', '0', '31', '0', '3', '37832', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '70602', '0', '0', '31', '0', '3', '36789', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '70614', '0', '0', '31', '0', '3', '37878', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '70643', '0', '0', '31', '0', '3', '37894', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '70743', '0', '0', '31', '0', '3', '37878', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '70792', '0', '0', '31', '0', '3', '37893', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '70881', '0', '0', '31', '0', '3', '37986', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '70921', '0', '0', '31', '0', '3', '22515', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '70933', '0', '0', '31', '0', '3', '22515', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '70952', '0', '0', '31', '0', '3', '37970', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '70981', '0', '0', '31', '0', '3', '37972', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '70982', '0', '0', '31', '0', '3', '37973', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '71024', '0', '0', '31', '0', '5', '201716', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '71032', '0', '0', '31', '0', '3', '22515', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '71070', '0', '0', '31', '0', '3', '37970', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '71078', '0', '0', '31', '0', '3', '22515', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '71080', '0', '0', '31', '0', '3', '37972', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '71081', '0', '0', '31', '0', '3', '37973', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '71281', '0', '0', '31', '0', '3', '36764', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '71281', '0', '1', '31', '0', '3', '36765', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '71281', '0', '2', '31', '0', '3', '36766', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '71281', '0', '3', '31', '0', '3', '36767', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '71281', '0', '4', '31', '0', '3', '36770', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '71281', '0', '5', '31', '0', '3', '36771', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '71281', '0', '6', '31', '0', '3', '36772', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '71281', '0', '7', '31', '0', '3', '36773', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '71306', '0', '0', '31', '0', '3', '38125', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '71412', '0', '0', '31', '0', '3', '37824', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '71415', '0', '0', '31', '0', '3', '37824', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '71599', '0', '0', '31', '0', '3', '38035', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '71621', '0', '0', '31', '0', '3', '38308', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '71621', '0', '1', '31', '0', '3', '38309', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '71704', '0', '0', '31', '0', '3', '38308', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '71704', '0', '1', '31', '0', '3', '38309', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '71948', '0', '0', '31', '0', '3', '37950', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '72034', '0', '0', '31', '0', '3', '38439', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '72034', '0', '1', '31', '0', '3', '38461', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '72096', '0', '0', '31', '0', '3', '38439', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '72096', '0', '1', '31', '0', '3', '38461', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '72099', '0', '0', '31', '0', '3', '36934', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '74182', '0', '0', '31', '0', '3', '39707', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '74903', '0', '0', '31', '0', '3', '40187', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '76092', '0', '0', '31', '0', '5', '193963', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '12134', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '12134', '0', '1', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '12134', '0', '2', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '12134', '0', '3', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '12134', '0', '4', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '12699', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '12699', '0', '1', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '13982', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '16053', '0', '1', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '17048', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '22906', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29070', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29070', '0', '1', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '29070', '0', '2', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '30988', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '31537', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '35282', '0', '1', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '38202', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39010', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '39248', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '42883', '0', '3', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46022', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46034', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46058', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46063', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46066', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46068', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '46488', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48597', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48605', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48748', '0', '1', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '48974', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49555', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49555', '0', '1', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '49555', '0', '2', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52981', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52981', '0', '1', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52981', '0', '2', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '52981', '0', '3', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '55063', '0', '1', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '57806', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '60561', '0', '1', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '70053', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '70053', '0', '1', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '70053', '0', '2', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '70053', '0', '3', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '26560', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '2', '43723', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '32307', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '32307', '0', '1', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '32307', '0', '2', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '32314', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '32314', '0', '1', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '45030', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '3', '45030', '0', '1', '36', '0', '0', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '4', '39246', '0', '0', '36', '0', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `gossip_menu` VALUES ('4822', '5875');
REPLACE INTO `gossip_menu` VALUES ('4822', '5876');
REPLACE INTO `gossip_menu` VALUES ('4825', '5881');
REPLACE INTO `gossip_menu` VALUES ('4826', '5884');
REPLACE INTO `gossip_menu` VALUES ('4827', '5886');
REPLACE INTO `gossip_menu` VALUES ('9581', '12933');
REPLACE INTO `gossip_menu_option` VALUES ('9510', '1', '0', 'Where is Senior Scrivener Barriga being held?', '1', '1', '9521', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9510', '2', '0', 'Did you see where they took Sanitation Engineer Burke?', '1', '1', '9525', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9510', '3', '0', 'Any idea where they\'re keeping Deathguard Schneider?', '1', '1', '9526', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9508', '1', '0', 'Can you tell me where they have Chancellor Amai caged?', '1', '1', '9527', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9508', '2', '0', 'Did you see where they took Sanitation Engineer Burke?', '1', '1', '9525', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9508', '3', '0', 'Any idea where they\'re keeping Deathguard Schneider?', '1', '1', '9526', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9507', '1', '0', 'Can you tell me where they have Chancellor Amai caged?', '1', '1', '9527', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9507', '2', '0', 'Where is Senior Scrivener Barriga being held?', '1', '1', '9521', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9507', '3', '0', 'Did you see where they took Sanitation Engineer Burke?', '1', '1', '9525', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9586', '1', '0', 'Yes, please!', '1', '1', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9680', '0', '0', 'We do only what is best for Lordaeron, Your Highness.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9681', '0', '0', 'Lead us, Prince Arthas.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('11874', '0', '0', 'Follow me, Your Highness.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('8769', '0', '0', 'Cronk, tell me of a charged Crystal midst.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('8762', '0', '0', 'Your propaganda won\'t work on me. Spout your treasonous filth elsewhere, traitor!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('8775', '0', '0', 'You gave the crew disguises?', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('8851', '0', '0', 'That you\'re not a stupid guy. Maybe read these pamphlets in his spare time, think?', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `conditions` VALUES ('14', '4825', '5881', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4826', '5884', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4822', '5876', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4827', '5886', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9581', '12933', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9510', '1', '0', '0', '9', '0', '12245', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9510', '2', '0', '0', '9', '0', '12245', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9510', '3', '0', '0', '9', '0', '12245', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9508', '1', '0', '0', '9', '0', '12245', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9508', '2', '0', '0', '9', '0', '12245', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9508', '3', '0', '0', '9', '0', '12245', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9507', '1', '0', '0', '9', '0', '12245', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9507', '2', '0', '0', '9', '0', '12245', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9507', '3', '0', '0', '9', '0', '12245', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8762', '0', '0', '0', '9', '0', '11126', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8775', '0', '0', '0', '9', '0', '11166', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8851', '0', '0', '0', '9', '0', '11133', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8851', '0', '0', '0', '2', '0', '33015', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7675', '9369', '0', '0', '8', '0', '10107', '0', '0', '0', '0', '', 'Show different gossip if player has rewarded quest 10107');
REPLACE INTO `conditions` VALUES ('14', '7675', '9369', '0', '1', '8', '0', '10108', '0', '0', '0', '0', '', 'Show different gossip if player has rewarded quest 10108');
UPDATE conditions SET SourceGroup=8912 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50253;
UPDATE conditions SET SourceGroup=8912 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50253;
UPDATE conditions SET SourceGroup=8262 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50344;
UPDATE conditions SET SourceGroup=8262 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50344;
UPDATE conditions SET SourceGroup=8265 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50341;
UPDATE conditions SET SourceGroup=8265 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50341;
UPDATE conditions SET SourceGroup=8257 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50339;
UPDATE conditions SET SourceGroup=8257 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50339;
UPDATE conditions SET SourceGroup=6473 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50337;
UPDATE conditions SET SourceGroup=6473 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50337;
UPDATE conditions SET SourceGroup=6470 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50336;
UPDATE conditions SET SourceGroup=6470 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50336;
UPDATE conditions SET SourceGroup=6472 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50335;
UPDATE conditions SET SourceGroup=6472 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50335;
UPDATE conditions SET SourceGroup=6474 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50334;
UPDATE conditions SET SourceGroup=6474 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50334;
UPDATE conditions SET SourceEntry=0 WHERE SourceEntry=1 AND SourceTypeOrReferenceId=15 AND SourceGroup=9581;
UPDATE conditions SET SourceEntry=0 WHERE SourceEntry=1 AND SourceTypeOrReferenceId=15 AND SourceGroup=9777;
UPDATE conditions SET SourceEntry=0 WHERE SourceEntry=1 AND SourceTypeOrReferenceId=15 AND SourceGroup=8433;
UPDATE conditions SET SourceEntry=0 WHERE SourceEntry=1 AND SourceTypeOrReferenceId=15 AND SourceGroup=4825;
UPDATE conditions SET SourceEntry=0 WHERE SourceEntry=1 AND SourceTypeOrReferenceId=15 AND SourceGroup=4827;
UPDATE conditions SET SourceEntry=0 WHERE SourceEntry=1 AND SourceTypeOrReferenceId=15 AND SourceGroup=4821;
UPDATE conditions SET SourceEntry=10284 WHERE SourceEntry=10276 AND SourceTypeOrReferenceId=14 AND SourceGroup=8262;
UPDATE conditions SET SourceEntry=10278 WHERE SourceEntry=9979 AND SourceTypeOrReferenceId=14 AND SourceGroup=8257;
UPDATE conditions SET SourceEntry=7663 WHERE SourceEntry=7664 AND SourceTypeOrReferenceId=14 AND SourceGroup=6470;


# NeatElves
UPDATE `gossip_menu_option` SET `option_id`='18', `action_menu_id`='0' WHERE `menu_id`=10371 AND `id`=0;

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
UPDATE `gossip_menu_option` SET `action_menu_id`=0 WHERE `action_menu_id`=1;

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
# DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
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

UPDATE version SET `cache_id`= '618';
UPDATE version SET `db_version`= 'YTDB_0.14.4_R618_TC_R15263_TDBAI_335.0.3_RuDB_R47';
