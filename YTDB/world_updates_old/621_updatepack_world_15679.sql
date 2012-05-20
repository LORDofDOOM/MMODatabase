# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 620_FIX_15588 621_FIX_15679 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('621_FIX_15679');

# SignFinder
DELETE FROM `playercreateinfo_spell` WHERE `Spell`=75445;
INSERT INTO `playercreateinfo_spell` VALUES (0, 9, 75445, 'Demonic Immolate');
DELETE FROM `player_factionchange_items` WHERE `alliance_id`= 44235 OR `horde_id`= 44234;
INSERT INTO `player_factionchange_items` (`race_A`, `alliance_id`, `commentA`, `race_H`, `horde_id`, `commentH`) VALUES
(0, 44235, 'Reins of the Traveler\'s Tundra Mammoth', 0, 44234, 'Reins of the Traveler\'s Tundra Mammoth');
DELETE FROM `player_factionchange_spells` WHERE `alliance_id` = 61425 OR `horde_id` = 61447;
INSERT INTO `player_factionchange_spells` (`alliance_id`, `horde_id`) VALUES (61425, 61447);

# TC
DELETE FROM `spell_group` WHERE `id` IN (1117,1118);
INSERT INTO `spell_group` (`id`,`spell_id`) VALUES
(1117,25898),
(1117,25899),
(1118,20911),
(1118,20217);
DELETE FROM `spell_group_stack_rules` WHERE `group_id` in (1117,1118);
INSERT INTO `spell_group_stack_rules` (`group_id`,`stack_rule`) VALUES
(1117,3),
(1118,3);
UPDATE `smart_scripts` SET `source_type` = 0, `id` = 1 WHERE `entryorguid` = 25814 AND `source_type` = 1 AND `id` = 0;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`Comment`) VALUES
(13,3,72771,31,3,38508,'Deathbringer Saurfang - Scent of Blood on Blood Beast');
UPDATE `creature_template` SET `flags_extra` = 128 WHERE `entry` = 20562;
# DELETE FROM `creature_questrelation` WHERE `id` IN (14305,14444,22817,22818,33532,33533,34365); 
DELETE FROM `game_event_creature_quest` WHERE `eventEntry`=10;
INSERT INTO `game_event_creature_quest` (`eventEntry`,`id`,`quest`) VALUES
-- Alliance
(10,14450,1468), -- Orphan Matron Nightingale - Children's Week
(10,14305,1479), -- Human Orphan - The Bough of the Eternals
(10,14305,1558), -- Human Orphan - The Stonewrought Dam
(10,14305,1687), -- Human Orphan - Spooky Lighthouse
(10,14305,558), -- Human Orphan - Jaina's Autograph
(10,14305,4822), -- Human Orphan - You Scream, I Scream...
-- Horde 
(10,14451,172), -- Orphan Matron Battlewail - Children's Week
(10,14444,910), -- Orcish Orphan - Down at the Docks
(10,14444,911), -- Orcish Orphan - Gateway to the Frontier
(10,14444,1800), -- Orcish Orphan - Lordaeron Throne Room
(10,14444,915), -- Orcish Orphan - You Scream, I Scream...
(10,14444,925), -- Orcish Orphan - Cairne's Hoofprint
(10,14444,5502), -- Orcish Orphan - A Warden of the Horde
-- Outlands: Blood Elfs
(10,22819,10942), -- Orphan Matron Mercy - Children's Week
(10,22817,10945), -- Blood Elf Orphan - Hch'uu and the Mushroom People
(10,22817,10951), -- Blood Elf Orphan - A Trip to the Dark Portal
(10,22817,10953), -- Blood Elf Orphan - Visit the Throne of the Elements
(10,22817,11975), -- Blood Elf Orphan - Now, When I Grow Up...
(10,22817,10963), -- Blood Elf Orphan - Time to Visit the Caverns
(10,22817,10967), -- Blood Elf Orphan - Back to the Orphanage
-- Outlands: Draenei
(10,22819,10943), -- Orphan Matron Mercy - Children's Week
(10,22818,10950), -- Draenei Orphan - Auchindoun and the Ring of Observance
(10,22818,10952), -- Draenei Orphan - A Trip to the Dark Portal
(10,22818,10954), -- Draenei Orphan - Jheel is at Aeris Landing!
(10,22818,10956), -- Draenei Orphan - The Seat of the Naaru
(10,22818,10962), -- Draenei Orphan - Time to Visit the Caverns
(10,22818,10966), -- Draenei Orphan - Back to the Orphanage
-- Northrend: Wolvar
(10,34365,13927), -- Orphan Matron Aria - Little Orphan Kekek Of The Wolvar
(10,33532,13930), -- Wolvar Orphan - Home Of The Bear-Men
(10,33532,13934), -- Wolvar Orphan - The Bronze Dragonshrine
(10,33532,13951), -- Wolvar Orphan - Playmates!
(10,33532,13955), -- Wolvar Orphan - The Dragon Queen
(10,33532,13957), -- Wolvar Orphan - The Mighty Hemet Nesingwary
(10,33532,13960), -- Wolvar Orphan - Back To The Orphanage
-- Northrend: Oracles
(10,34365,13926), -- Orphan Matron Aria - Little Orphan Roo Of The Oracles
(10,33533,13929), -- Oracle Orphan - The Biggest Tree Ever!
(10,33533,13933), -- Oracle Orphan - The Bronze Dragonshrine
(10,33533,13937), -- Oracle Orphan - A Trip To The Wonderworks
(10,33533,13950), -- Oracle Orphan - Playmates!
(10,33533,13954), -- Oracle Orphan - The Dragon Queen
(10,33533,13956), -- Oracle Orphan - Meeting a Great One
(10,33533,13959); -- Oracle Orphan - Back To The Orphanage
-- Speech by Martik Tor'seldoi, Thrallmar
SET @ENTRY := 16577;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,30000,50000,360000,360000,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Martik Tor''seldoi - OOC - Load script every 6 min ooc'),
(@ENTRY,0,1,0,25,0,100,0,0,0,0,0,11,18100,32,0,0,0,0,1,0,0,0,0,0,0,0, 'Martik Tor''seldoi - Reset - Cast Frost Armor'),
(@ENTRY*100,9,0,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Martik Tor''seldoi Say text 0'),
(@ENTRY*100,9,1,0,0,0,100,0,3000,3000,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Martik Tor''seldoi emote'),
(@ENTRY*100,9,2,0,0,0,100,0,3000,3000,0,0,5,6,0,0,0,0,0,1,0,0,0,0,0,0,0,'Martik Tor''seldoi emote'),
(@ENTRY*100,9,3,0,0,0,100,0,3000,3000,0,0,1,0,0,0,0,0,0,10,57487,16578,0,0,0,0,0,'Blood Elf Pilgrim Say text 0'),
(@ENTRY*100,9,4,0,0,0,100,0,3000,3000,0,0,5,6,0,0,0,0,0,10,57487,16578,0,0,0,0,0,'Blood Elf Pilgrim emote'),
(@ENTRY*100,9,5,0,0,0,100,0,3000,3000,0,0,66,0,0,0,0,0,0,10,57487,16578,0,0,0,0,0,'Martik Tor''seldoi turn to'),
(@ENTRY*100,9,6,0,0,0,100,0,1000,1000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Martik Tor''seldoi Say text 1'),
(@ENTRY*100,9,7,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,10,57487,16578,0,0,0,0,0,'Blood Elf Pilgrim Say text 1'),
(@ENTRY*100,9,8,0,0,0,100,0,3000,3000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Martik Tor''seldoi Say text 2'),
(@ENTRY*100,9,9,0,0,0,100,0,3000,3000,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Martik Tor''seldoi emote'),
(@ENTRY*100,9,10,0,0,0,100,0,3000,3000,0,0,5,273,0,0,0,0,0,1,0,0,0,0,0,0,0,'Martik Tor''seldoi emote'),
(@ENTRY*100,9,11,0,0,0,100,0,3000,3000,0,0,1,2,0,0,0,0,0,10,57487,16578,0,0,0,0,0,'Blood Elf Pilgrim Say text 2'),
(@ENTRY*100,9,12,0,0,0,100,0,1000,1000,0,0,5,15,0,0,0,0,0,9,16578,0,20,0,0,0,0,'Blood Elf Pilgrim emote'),
(@ENTRY*100,9,13,0,0,0,100,0,3000,3000,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Martik Tor''seldoi turn to');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry` IN (16577,16578);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(16577,0,0, 'Brothers and sisters, I have been to the promised land. I have tasted in the sublim energy. I have felt bliss - bliss so engrossing and all encompassing that I was left wondering if I had stumbled upon the dreams of gods.!',12,0,100,5,0,0, 'Martik Tor''seldoi'),
(16577,1,0, 'In paradise, you merely reach out and take from the Nether.',12,0,100,1,0,0, 'Martik Tor''seldoi'),
(16577,2,0, 'From the very air! Tendrils of arcane energy light up the obsidian sky as plumes of raw magic rise up from fissures in the land. Kneel and drink from the fissure as you do from a stream or well. Pluck a tendril from the heavens as if it were an apple hanging from a branch.',12,0,100,5,0,0, 'Martik Tor''seldoi'),
(16578,0,0, 'Tell us more, Martik. What is it? What does it feel like?',12,0,100,1,0,0, 'Blood Elf Pilgrim'),
(16578,1,0, 'But how?',12,0,100,6,0,0, 'Blood Elf Pilgrim'),
(16578,2,0, '%s smiles/gasps.',16,0,100,0,0,0, 'Blood Elf Pilgrim');
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=36551;
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=36967;
DELETE FROM `creature_template_addon` WHERE `entry`=36967;
INSERT INTO `creature_template_addon` (`entry`,`bytes2`,`auras`) VALUES (36967,1, '69663 69658');
UPDATE `creature_addon` SET `auras`='69144' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=36666);
-- Spiteful Apparition SAI
SET @ENTRY   := 36551; -- NPC entry
SET @SPELL1  := 41253; -- Greater Invisibility
SET @SPELL2  := 68895; -- Spite (Normal)
SET @SPELL3  := 70212; -- Spite (Heroic)
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,6,0,0,0,0,11,@SPELL1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Spiteful Apparition - On Reset - Cast Greater Invisibility'),
(@ENTRY,0,1,0,10,0,100,6,0,10,3000,4000,28,@SPELL1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Spiteful Apparition - OOC range - Remove Greater Invisibility'),
(@ENTRY,0,2,0,0,0,100,2,7000,9000,7000,9000,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Spiteful Apparition - Combat - Cast Spite "Normal"'),
(@ENTRY,0,3,0,0,0,100,4,7000,9000,7000,9000,11,@SPELL3,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Spiteful Apparition - Combat - Cast Spite "Heroic"');

-- Soulguard Reaper SAI
SET @ENTRY   := 36499; -- NPC entry
SET @SPELL1  := 68797; -- Soulguard Channel
SET @SPELL2  := 69058; -- Shadow Lance
SET @SPELL3  := 69060; -- Frost Nova (Normal)
SET @SPELL4  := 70209; -- Frost Nova (Heroic)
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,7,0,0,0,0,11,@SPELL1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Reaper - OOC - Cast Soulguard Channel'),
(@ENTRY,0,1,0,0,0,100,6,5000,6000,7000,9000,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Soulguard Reaper - Combat - Cast Shadow Lance'),
(@ENTRY,0,2,0,0,0,100,2,7000,9000,8000,10000,11,@SPELL3,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Soulguard Reaper - Combat - Cast Frost Nova "Normal"'),
(@ENTRY,0,3,0,0,0,100,4,7000,9000,8000,10000,11,@SPELL4,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Soulguard Reaper - Combat - Cast Frost Nova "Heroic"'),
(@ENTRY,0,4,0,4,0,100,6,0,0,0,0,39,30,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Reaper - Aggro - Call for help');

-- Soulguard Beam Focus Target
SET @ENTRY   := 36508; -- NPC entry
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (-115965,-115966);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-115965,0,0,0,1,0,100,6,1000,1000,5000,5000,45,0,1,0,0,0,0,19,36620,60,0,0,0,0,0, 'Soulguard Beam Focus Target - OOC - Set data on Soulguard Adept'),
(-115966,0,0,0,1,0,100,6,1000,1000,5000,5000,45,0,1,0,0,0,0,19,36620,60,0,0,0,0,0, 'Soulguard Beam Focus Target - OOC - Set data on Soulguard Adept'),
(-115966,0,1,0,1,0,100,6,1000,1000,5000,5000,45,0,1,0,0,0,0,19,36564,60,0,0,0,0,0, 'Soulguard Beam Focus Target - OOC - Set data on Soulguard Bonecaster');

-- Spectral Warden SAI
SET @ENTRY   := 36666; -- NPC entry
SET @SPELL1  := 69633; -- Veil of Shadow
SET @SPELL2  := 69148; -- Wail of Souls (Normal)
SET @SPELL3  := 70210; -- Wail of Souls (Heroic)
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,5000,6000,9000,10000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Spectral Warden - Combat - Cast Veil of Shadow'),
(@ENTRY,0,1,0,0,0,100,2,9000,11000,5000,6000,11,@SPELL1,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Spectral Warden - Combat - Cast Wail of Souls'),
(@ENTRY,0,2,0,0,0,100,4,9000,11000,5000,6000,11,@SPELL2,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Spectral Warden - Combat - Cast Wail of Souls');

-- Soulguard Watchman SAI
SET @ENTRY   := 36478; -- NPC entry
SET @SPELL1  := 69056; -- Shroud of Runes
SET @SPELL2  := 69053; -- Unholy Rage
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,50,6,0,10000,16000,20000,11,@SPELL1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Watchman - Combat - Cast Shroud of Runes'),
(@ENTRY,0,1,2,0,0,100,6,8000,16000,32000,40000,11,@SPELL2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Watchman - Combat - Cast Unholy Rage'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Watchman - Combat - Say 0'),
(@ENTRY,0,3,0,4,0,100,6,0,0,0,0,39,20,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Watchman - Aggro - Call for help');
-- NPC talk text insert
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s goes into a frenzy!',16,0,100,0,0,0, 'Soulguard Watchman');

-- Soul Horror SAI
SET @ENTRY   := 36522; -- NPC entry
SET @SPELL1  := 69088; -- Soul Strike (Normal)
SET @SPELL2  := 70211; -- Soul Strike (Heroic)
SET @SPELL3  := 69107; -- Killing Spree Invis Aura
SET @SPELL4  := 69106; -- Killing Spree Aura
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,5000,6000,5000,6000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Soul Horror - Combat - Cast Soul Strike'),
(@ENTRY,0,1,0,0,0,100,4,5000,6000,5000,6000,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Soul Horror - Combat - Cast Soul Strike'),
(@ENTRY,0,4,0,4,0,100,6,0,0,0,0,39,35,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soul Horror - Aggro - Call for help');

-- Soulguard Animator SAI
SET @ENTRY   := 36516; -- NPC entry
SET @SPELL1  := 68834; -- Soulguard Channel Beam02
SET @SPELL2  := 69562; -- Raise Dead
SET @SPELL3  := 69131; -- Soul Sickness
SET @SPELL4  := 69128; -- Soul Siphon
SET @SPELL5  := 69068; -- Shadow Bolt (Normal)
SET @SPELL6  := 70208; -- Shadow Bolt (Heroic)
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,7,1000,1000,1000,1000,11,@SPELL1,0,0,0,0,0,9,36522,1,15,0,0,0,0, 'Soulguard Animator - OOC - Cast Soulguard Channel Beam02'),
(@ENTRY,0,1,0,0,1,100,6,20000,25000,20000,25000,11,@SPELL2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Animator - Combat - Cast Raise Dead'),
(@ENTRY,0,2,0,0,0,100,6,7000,9000,9000,11000,11,@SPELL3,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Soulguard Animator - Combat - Cast Soul Sickness'),
(@ENTRY,0,3,0,0,0,100,6,9000,11000,7000,9000,11,@SPELL4,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Soulguard Animator - Combat - Cast Soul Siphon'),
(@ENTRY,0,4,0,0,0,100,2,4000,5000,3500,4500,11,@SPELL5,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Soulguard Animator - Combat - Cast Shadow Bolt "Normal"'),
(@ENTRY,0,5,0,0,0,100,4,4000,5000,3500,4500,11,@SPELL6,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Soulguard Animator - Combat - Cast Shadow Bolt "Heroic"'),
(@ENTRY,0,6,7,4,0,100,6,0,0,0,0,39,35,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Animator - Aggro - Call for help'),
(@ENTRY,0,7,0,61,0,100,6,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Animator - Aggro - Set phase 1'),
(@ENTRY,0,8,9,38,0,100,7,0,2,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Animator - Data set 2 - Set data'),
(@ENTRY,0,9,0,61,0,100,6,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Animator - Data set 2 - Set phase 2'),
(@ENTRY,0,10,11,38,0,100,7,0,3,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Animator - Data set 3 - Set data'),
(@ENTRY,0,11,0,61,0,100,6,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Animator - Data set 3 - Set phase 1');

-- Soulguard Adept SAI
SET @ENTRY   := 36620; -- NPC entry
SET @SPELL1  := 68834; -- Soulguard Channel Beam02
SET @SPELL2  := 69562; -- Raise Dead
SET @SPELL3  := 69068; -- Shadow Bolt (Normal)
SET @SPELL4  := 70208; -- Shadow Bolt (Heroic)
SET @SPELL5  := 69066; -- Drain Life (Normal)
SET @SPELL6  := 70213; -- Drain Life (Heroic)
SET @SPELL7  := 69564; -- Shadow Mend (Normal)
SET @SPELL8  := 70205; -- Shadow Mend (Heroic)
SET @SPELL9  := 68797; -- Soulguard Channel
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,7,1000,1000,1000,1000,11,@SPELL1,0,0,0,0,0,9,36522,1,15,0,0,0,0, 'Soulguard Adept - OOC - Cast Soulguard Channel Beam02'),
(@ENTRY,0,1,0,0,4,100,6,20000,25000,20000,25000,11,@SPELL2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Adept - Combat - Cast Raise Dead'),
(@ENTRY,0,2,0,0,0,100,2,7000,8000,3500,4500,11,@SPELL3,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Soulguard Adept - Combat - Cast Shadow Bolt "Normal"'),
(@ENTRY,0,3,0,0,0,100,4,7000,8000,3500,4500,11,@SPELL4,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Soulguard Adept - Combat - Cast Shadow Bolt "Heroic"'),
(@ENTRY,0,4,0,0,0,100,2,6000,7000,8000,10000,11,@SPELL5,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Soulguard Adept - Combat - Cast Drain Life "Normal"'),
(@ENTRY,0,5,0,0,0,100,4,6000,7000,8000,10000,11,@SPELL6,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Soulguard Adept - Combat - Cast Drain Life "Heroic"'),
(@ENTRY,0,6,0,0,0,100,2,30000,35000,18000,22000,11,@SPELL7,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Soulguard Adept - Combat - Cast Shadow Mend "Normal"'),
(@ENTRY,0,7,0,0,0,100,4,30000,35000,18000,22000,11,@SPELL8,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Soulguard Adept - Combat - Cast Shadow Mend "Heroic"'),
(@ENTRY,0,8,0,25,0,100,6,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Adept - On Reset - Set phase 1'),
(@ENTRY,0,9,0,38,1,100,6,0,1,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Adept - On dataset 0 1 - Set phase 2'),
(@ENTRY,0,10,0,1,2,100,7,0,0,0,0,11,@SPELL9,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Adept - OOC - Cast Soulguard Channel'),
(@ENTRY,0,11,12,4,0,100,6,0,0,0,0,39,35,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Adept - Aggro - Call for help'),
(@ENTRY,0,12,0,61,0,100,6,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Adept - Aggro - Set phase 3'),
(@ENTRY,0,13,14,38,0,100,7,0,2,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Adept - Data set 2 - Set data'),
(@ENTRY,0,14,0,61,0,100,6,0,0,0,0,22,4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Adept - Data set 2 - Set phase 4'),
(@ENTRY,0,15,16,38,0,100,7,0,3,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Adept - Data set 3 - Set data'),
(@ENTRY,0,16,0,61,0,100,6,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Adept - Data set 3 - Set phase 3');

-- Soulguard Bonecaster SAI
SET @ENTRY   := 36564; -- NPC entry
SET @SPELL1  := 68834; -- Soulguard Channel Beam02
SET @SPELL2  := 69562; -- Raise Dead
SET @SPELL3  := 69080; -- Bone Volley (Normal)
SET @SPELL4  := 70206; -- Bone Volley (Heroic)
SET @SPELL5  := 69069; -- Shield of Bones (Normal)
SET @SPELL6  := 70207; -- Shield of Bones (Heroic)
SET @SPELL7  := 68797; -- Soulguard Channel
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,7,1000,1000,1000,1000,11,@SPELL1,0,0,0,0,0,9,36522,1,15,0,0,0,0, 'Soulguard Bonecaster - OOC - Cast Soulguard Channel Beam02'),
(@ENTRY,0,1,0,0,4,100,6,20000,25000,20000,25000,11,@SPELL2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Bonecaster - Combat - Cast Raise Dead'),
(@ENTRY,0,2,0,0,0,100,2,5000,7000,6000,8000,11,@SPELL3,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Soulguard Bonecaster - Combat - Cast Bone Volley "Normal"'),
(@ENTRY,0,3,0,0,0,100,4,5000,7000,6000,8000,11,@SPELL4,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Soulguard Bonecaster - Combat - Cast Bone Volley "Heroic"'),
(@ENTRY,0,4,0,0,0,100,2,5000,7000,7000,9000,11,@SPELL5,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Soulguard Bonecaster - Combat - Cast Shield of Bones "Normal"'),
(@ENTRY,0,5,0,0,0,100,4,5000,7000,7000,9000,11,@SPELL6,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Soulguard Bonecaster - Combat - Cast Shield of Bones "Heroic"'),
(@ENTRY,0,6,0,25,0,100,6,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Bonecaster - On Reset - Set phase 1'),
(@ENTRY,0,7,0,38,1,100,6,0,1,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Bonecaster - On dataset 0 1 - Set phase 2'),
(@ENTRY,0,8,0,1,2,100,7,0,0,0,0,11,@SPELL7,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Bonecaster - OOC - Cast Soulguard Channel'),
(@ENTRY,0,9,10,4,0,100,6,0,0,0,0,39,35,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Bonecaster - Aggro - Call for help'),
(@ENTRY,0,10,0,61,0,100,6,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Bonecaster - Aggro - Set phase 3'),
(@ENTRY,0,11,12,38,0,100,7,0,2,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Bonecaster - Data set 2 - Set data'),
(@ENTRY,0,12,0,61,0,100,6,0,0,0,0,22,4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Bonecaster - Data set 2 - Set phase 4'),
(@ENTRY,0,13,14,38,0,100,7,0,3,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Bonecaster - Data set 3 - Set data'),
(@ENTRY,0,14,0,61,0,100,6,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Bonecaster - Data set 3 - Set phase 3');

-- Ghoul Minion SAI
SET @ENTRY   := 36916; -- NPC entry
SET @SPELL1  := 69088; -- Soul Strike (Normal)
SET @SPELL2  := 70211; -- Soul Strike (Heroic)
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,6,0,0,0,0,45,0,2,0,0,0,0,23,0,0,0,0,0,0,0, 'Ghoul Minion - Just Summoned - Set Data Summoner'),
(@ENTRY,0,1,0,61,0,100,6,0,0,0,0,89,5,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ghoul Minion - Just Summoned - Set Random Movement'),
(@ENTRY,0,2,0,0,0,100,6,115000,115000,115000,115000,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ghoul Minion - combat - die after 2 min'),
(@ENTRY,0,3,0,1,0,100,6,15000,15000,15000,15000,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ghoul Minion - OOC - die after 15 sec'),
(@ENTRY,0,4,5,6,0,100,6,15000,15000,15000,15000,45,0,3,0,0,0,0,23,0,0,0,0,0,0,0, 'Ghoul Minion - on Death - Set data summoner'),
(@ENTRY,0,5,0,61,0,100,6,15000,15000,15000,15000,41,3000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ghoul Minion - on Death - despawn after 3 sec');

-- Wrathbone Laborer SAI
SET @ENTRY   := 36830; -- NPC entry
SET @SPELL1  := 70302; -- Blinding Dirt
SET @SPELL2  := 70278; -- Puncture Wound (Normal)
SET @SPELL3  := 70279; -- Puncture Wound (Heroic)
SET @SPELL4  := 69572; -- Shovelled! (Normal)
SET @SPELL5  := 70280; -- Shovelled! (Heroic)
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~256,`AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,7000,8000,10000,11000,11,@SPELL1,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Wrathbone Laborer - Combat - Cast Blinding Dirt'),
(@ENTRY,0,1,0,0,0,100,2,8000,9000,9000,10000,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Wrathbone Laborer - Combat - Cast Puncture Wound (Normal)'),
(@ENTRY,0,2,0,0,0,100,4,8000,9000,9000,10000,11,@SPELL3,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Wrathbone Laborer - Combat - Cast Puncture Wound (Heroic)'),
(@ENTRY,0,3,0,0,0,100,2,5000,6000,7000,8000,11,@SPELL4,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Wrathbone Laborer - Combat - Cast Shovelled! (Normal)'),
(@ENTRY,0,4,0,0,0,100,4,5000,6000,7000,8000,11,@SPELL5,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Wrathbone Laborer - Combat - Cast Shovelled! (Heroic)'),
(@ENTRY,0,5,0,1,0,100,6,1000,3000,3000,3000,5,38,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Wrathbone Laborer - OOC - emote');

UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=36913;

-- Fix skillup on some target dummys
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|262144 WHERE `entry` IN (31144,2674,2673);
-- Wrathbone Laborer SAI
SET @ENTRY   := 36830; -- NPC entry
SET @SPELL1  := 70302; -- Blinding Dirt
SET @SPELL2  := 70278; -- Puncture Wound
SET @SPELL3  := 69572; -- Shovelled!
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~256,`AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,7000,8000,10000,11000,11,@SPELL1,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Wrathbone Laborer - Combat - Cast Blinding Dirt'),
(@ENTRY,0,1,0,0,0,100,6,8000,9000,9000,10000,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Wrathbone Laborer - Combat - Cast Puncture Wound (Normal)'),
(@ENTRY,0,2,0,0,0,100,6,5000,6000,7000,8000,11,@SPELL3,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Wrathbone Laborer - Combat - Cast Shovelled! (Normal)'),
(@ENTRY,0,3,0,1,0,100,6,1000,3000,3000,3000,5,38,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Wrathbone Laborer - OOC - emote');

-- Ymirjar Skycaller SAI addition
SET @ENTRY   := 31260; -- NPC entry
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY AND `id`=2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,2,0,25,0,100,6,0,0,0,0,11,46598,0,0,0,0,0,19,36891,20,0,0,0,0,0, 'Ymirjar Skycaller - Reset - Cast Ride Vehicle Hardcoded');

-- Wrathbone Laborer SAI
SET @ENTRY   := -98271; -- NPC entry
SET @SPELL1  := 70302; -- Blinding Dirt
SET @SPELL2  := 70278; -- Puncture Wound
SET @SPELL3  := 69572; -- Shovelled!
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,7000,8000,10000,11000,11,@SPELL1,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Wrathbone Laborer - Combat - Cast Blinding Dirt'),
(@ENTRY,0,1,0,0,0,100,6,8000,9000,9000,10000,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Wrathbone Laborer - Combat - Cast Puncture Wound (Normal)'),
(@ENTRY,0,2,0,0,0,100,6,5000,6000,7000,8000,11,@SPELL3,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Wrathbone Laborer - Combat - Cast Shovelled! (Normal)');

-- Wrathbone Laborer pathing
SET @NPC := 98271;
SET @PATH := @NPC;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=584.4202,`position_y`=188.9149,`position_z`=509.6726 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@NPC,@PATH,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,584.4202,188.9149,509.6726,0,0,0,100,0),
(@PATH,2,583.6736,193.9653,509.7404,3000,0,48,100,0),
(@PATH,3,583.6736,193.9653,509.7404,3000,0,48,100,0),
(@PATH,4,583.6736,193.9653,509.7404,3000,0,48,100,0),
(@PATH,5,583.6736,193.9653,509.7404,3000,0,48,100,0),
(@PATH,6,594.0781,190.2622,508.8613,0,0,0,100,0),
(@PATH,7,604.9809,191.5451,507.6583,0,0,0,100,0),
(@PATH,8,617.8438,191.3455,507.5206,0,0,0,100,0),
(@PATH,9,633.1597,186.8281,508.6275,3000,0,48,100,0),
(@PATH,10,633.1597,186.8281,508.6275,3000,0,48,100,0),
(@PATH,11,624.3472,190.9705,507.7706,0,0,0,100,0),
(@PATH,12,613.3229,189.9236,507.3956,0,0,0,100,0),
(@PATH,13,604.5156,189.651,507.3956,0,0,0,100,0),
(@PATH,14,593.9844,187.4479,508.9778,0,0,0,100,0),
(@PATH,15,584.4202,188.9149,509.6726,0,0,0,100,0);
DELETE FROM `waypoint_scripts` WHERE `id`=48;
INSERT INTO `waypoint_scripts` (`id`,`delay`,`command`,`datalong`,`guid`) VALUES
(48,0,1,38,1109);

-- Add Overlord Drakuru riders to Stonespine Gargoyle
UPDATE creature_template SET InhabitType=4,`flags_extra`=`flags_extra`|128 WHERE entry=28717;
DELETE FROM `creature` WHERE `id`=28717 AND `map`=658;
DELETE FROM `vehicle_template_accessory` WHERE `entry`=36896;
INSERT INTO `vehicle_template_accessory` (`entry`,`accessory_entry`,`seat_id`,`minion`,`description`,`summontype`,`summontimer`) VALUES
(36896,28717,1,0, 'Overlord Drakuru on Stonespine Gargoyle',6,30000);

-- [Q] Arelion's Mistress
-- Viera Sunwhisper SAI
-- Twinkle SAI
SET @ENTRY_VIERA := 17226;
SET @ENTRY_TWINKLE := 17230;
SET @QUEST_PLEASURES := 9483;
SET @SPELL_RETRIBUTION := 30077;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@ENTRY_VIERA,@ENTRY_TWINKLE);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY_VIERA,@ENTRY_TWINKLE,@ENTRY_VIERA*100,@ENTRY_VIERA*100+1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY_VIERA,0,0,0,20,0,100,0,@QUEST_PLEASURES,0,0,0,80,@ENTRY_VIERA*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Viera Sunwhisper - On Quest Finish - Run Script'),
(@ENTRY_VIERA*100,9,0,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Viera Sunwhisper - On Script - Remove Quest Flag"),
(@ENTRY_VIERA*100,9,1,0,0,0,100,0,2000,2000,0,0,53,0,@ENTRY_VIERA,0,0,0,0,1,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Start WP 1'),
(@ENTRY_VIERA*100,9,2,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Say Line 0'),
(@ENTRY_VIERA*100,9,3,0,0,0,100,0,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Stand Up'),
(@ENTRY_VIERA*100,9,4,0,0,0,100,0,6500,6500,0,0,45,0,1,0,0,0,0,10,61963,@ENTRY_TWINKLE,0,0,0,0,0,'Viera Sunwhisper - On Script - Set Data 0 1 Twinkle'),
(@ENTRY_VIERA,0,1,2,40,0,100,0,10,@ENTRY_VIERA,0,0,66,0,0,0,0,0,0,11,@ENTRY_TWINKLE,15,0,0,0,0,0,'Viera Sunwhisper - On WP 10 - Face Twinkle'),
(@ENTRY_VIERA,0,2,0,61,0,100,0,0,0,0,0,54,1000000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Viera Sunwhisper - On WP 10 - Pause WP'),

(@ENTRY_TWINKLE,0,0,0,38,0,100,0,0,1,0,0,53,1,@ENTRY_TWINKLE,0,0,0,0,1,0,0,0,0,0,0,0,'Twinkle - On Data 0 1 Set - Start WP 1 (run)'),
(@ENTRY_TWINKLE,0,1,0,40,0,100,0,13,@ENTRY_TWINKLE,0,0,54,1000000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Twinkle - On WP 13 - Pause WP'),
(@ENTRY_TWINKLE,0,2,0,38,0,100,0,1,2,0,0,53,1,@ENTRY_TWINKLE*10,0,0,0,0,1,0,0,0,0,0,0,0,'Twinkle - On Data Set 1 2 - Start WP 2 (run)'),
(@ENTRY_TWINKLE,0,3,0,40,0,100,0,4,@ENTRY_TWINKLE*10,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Viera Sunwhisper - On WP 4 (2) - Force Despawn'),

(@ENTRY_VIERA,0,3,0,8,0,100,0,@SPELL_RETRIBUTION,0,0,0,80,@ENTRY_VIERA*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Viera Sunwhisper - On Spellhit - Run Second Script'),
(@ENTRY_VIERA*100+1,9,0,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Say Line 1'),
(@ENTRY_VIERA*100+1,9,1,0,0,0,100,0,0,0,0,0,33,@ENTRY_VIERA,0,0,0,0,0,7,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Quest Credit'),
(@ENTRY_VIERA*100+1,9,2,0,0,0,100,0,3000,3000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Say Line 2'),
(@ENTRY_VIERA*100+1,9,3,0,0,0,100,0,5000,5000,0,0,1,0,0,0,0,0,0,9,@ENTRY_TWINKLE,0,25,0,0,0,0,'Twinkle - On Script - Say Line 0'),
(@ENTRY_VIERA*100+1,9,4,0,0,0,100,0,2000,2000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Say Line 3'),
(@ENTRY_VIERA*100+1,9,5,0,0,0,100,0,0,0,0,0,45,1,2,0,0,0,0,10,61963,@ENTRY_TWINKLE,0,0,0,0,0,'Viera Sunwhisper - On Script - Set Data 1 2 Twinkle'),
(@ENTRY_VIERA*100+1,9,6,0,0,0,100,0,0,0,0,0,53,1,@ENTRY_VIERA*10,0,0,0,0,1,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Start WP 2 (run)'),
(@ENTRY_VIERA,0,4,0,40,0,100,0,4,@ENTRY_VIERA*10,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Viera Sunwhisper - On WP 4 (2) - Force Despawn');

-- Waypoints for Viera Sunwhisper
DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY_VIERA,@ENTRY_VIERA*10);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY_VIERA,1,-653.739197,4145.138184,64.200729,'Viera Sunwhisper'),
(@ENTRY_VIERA,2,-658.875732,4147.715332,64.168304,'Viera Sunwhisper'),
(@ENTRY_VIERA,3,-681.465088,4147.636230,64.118073,'Viera Sunwhisper'),
(@ENTRY_VIERA,4,-686.400696,4161.865234,59.707859,'Viera Sunwhisper'),
(@ENTRY_VIERA,5,-695.956909,4179.237305,57.618931,'Viera Sunwhisper'),
(@ENTRY_VIERA,6,-699.832153,4189.959473,57.503750,'Viera Sunwhisper'),
(@ENTRY_VIERA,7,-708.518616,4184.436035,55.275894,'Viera Sunwhisper'),
(@ENTRY_VIERA,8,-716.137268,4178.130371,52.637508,'Viera Sunwhisper'),
(@ENTRY_VIERA,9,-719.865295,4174.992676,51.554867,'Viera Sunwhisper'),
(@ENTRY_VIERA,10,-720.839417,4162.232422,50.805923,'Viera Sunwhisper'),

(@ENTRY_VIERA*10,1,-722.323486,4147.936523,50.337898,'Viera Sunwhisper'),
(@ENTRY_VIERA*10,2,-726.639343,4125.156250,48.479683,'Viera Sunwhisper'),
(@ENTRY_VIERA*10,3,-727.648315,4109.684082,47.528461,'Viera Sunwhisper'),
(@ENTRY_VIERA*10,4,-727.874329,4093.438721,46.446579,'Viera Sunwhisper');

-- Waypoints for Twinkle
DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY_TWINKLE,@ENTRY_TWINKLE*10);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY_TWINKLE,1,-605.445190,4165.205078,64.081802,'Twinkle'),
(@ENTRY_TWINKLE,2,-619.293335,4161.776855,63.217815,'Twinkle'),
(@ENTRY_TWINKLE,3,-629.536560,4153.708984,64.067123,'Twinkle'),
(@ENTRY_TWINKLE,4,-644.773438,4151.062988,64.174675,'Twinkle'),
(@ENTRY_TWINKLE,5,-658.875732,4147.715332,64.168304,'Twinkle'),
(@ENTRY_TWINKLE,6,-681.465088,4147.636230,64.118073,'Twinkle'),
(@ENTRY_TWINKLE,7,-686.400696,4161.865234,59.707859,'Twinkle'),
(@ENTRY_TWINKLE,8,-695.956909,4179.237305,57.618931,'Twinkle'),
(@ENTRY_TWINKLE,9,-699.832153,4189.959473,57.503750,'Twinkle'),
(@ENTRY_TWINKLE,10,-708.518616,4184.436035,55.275894,'Twinkle'),
(@ENTRY_TWINKLE,11,-716.137268,4178.130371,52.637508,'Twinkle'),
(@ENTRY_TWINKLE,12,-719.865295,4174.992676,51.554867,'Twinkle'),
(@ENTRY_TWINKLE,13,-720.636292,4166.637695,50.815567,'Twinkle'),

(@ENTRY_TWINKLE*10,1,-722.323486,4147.936523,50.337898,'Twinkle'),
(@ENTRY_TWINKLE*10,2,-726.639343,4125.156250,48.479683,'Twinkle'),
(@ENTRY_TWINKLE*10,3,-727.648315,4109.684082,47.528461,'Twinkle'),
(@ENTRY_TWINKLE*10,4,-727.874329,4093.438721,46.446579,'Twinkle');

-- Texts
DELETE FROM `creature_text` WHERE `entry` IN (@ENTRY_VIERA,@ENTRY_TWINKLE);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY_VIERA,0,0,"Ok, let's go. I know just the perfect spot!",12,0,100,0,0,0,'Viera Sunwhisper'),
(@ENTRY_VIERA,1,0,"I can't wait to try this wine!",12,0,100,0,0,0,'Viera Sunwhisper'),
(@ENTRY_VIERA,2,0,"What... is happening... to me? Get this cat away from me!",12,0,100,0,0,0,'Viera Sunwhisper'),
(@ENTRY_VIERA,3,0,"%s scurries away, attempting to flee from Twinkle",16,0,100,0,0,0,'Viera Sunwhisper'),
(@ENTRY_TWINKLE,0,0,"%s looks at Viera Sunwhisper with very hungry eyes",16,0,100,0,0,0,'Twinkle');

-- Fixup for Quest Quest:The Path to the Citadel "Alliance and Horde"
-- Horde Slave SAI
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry` IN (36770,36771,36772,36773);
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (36770,36771,36772,36773);
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (3677000);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(36770,0,0,0,11,0,100,6,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horde Slave - On Reset - Emotestate'),
(36771,0,0,0,11,0,100,6,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horde Slave - On Reset - Emotestate'),
(36772,0,0,0,11,0,100,6,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horde Slave - On Reset - Emotestate'),
(36773,0,0,0,11,0,100,6,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horde Slave - On Reset - Emotestate'),
(36770,0,1,0,8,0,100,7,71281,0,0,0,80,3677000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horde Slave - On Spellhit - Run Script'),
(36771,0,1,0,8,0,100,7,71281,0,0,0,80,3677000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horde Slave - On Spellhit - Run Script'),
(36772,0,1,0,8,0,100,7,71281,0,0,0,80,3677000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horde Slave - On Spellhit - Run Script'),
(36773,0,1,0,8,0,100,7,71281,0,0,0,80,3677000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horde Slave - On Spellhit - Run Script'),
-- Script
(3677000,9,0,0,0,0,100,0,500,500,500,500,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Horde Slave - Script - Turnto envoker'),
(3677000,9,1,0,0,0,100,0,500,500,500,500,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horde Slave - Script - say text'),
(3677000,9,2,0,0,0,100,0,100,100,100,100,18,512,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horde Slave - Script - set unitflag'),
(3677000,9,3,0,0,0,100,0,100,100,100,100,2,250,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horde Slave - Script - set faction'),
(3677000,9,4,0,0,0,100,0,100,100,100,100,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horde Slave - Script - set Emotestate'),
(3677000,9,5,0,0,0,100,0,100,100,100,100,33,36770,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Horde Slave - Script - give quest credit'),
(3677000,9,6,0,0,0,100,0,100,100,100,100,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horde Slave - Script - set run on'),
(3677000,9,7,0,0,0,100,0,500,500,500,500,69,1,0,0,0,0,0,19,23837,70,0,0,0,0,0, 'Horde Slave - Script - move to closest trigger'),
(3677000,9,8,0,0,0,100,0,8000,8000,8000,8000,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horde Slave - Script - despawn');

-- Alliance Slave SAI
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry` IN (36764,36765,36766,36767);
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (36764,36765,36766,36767);
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (3676400);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(36764,0,0,0,11,0,100,6,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alliance Slave - On Reset - Emotestate'),
(36765,0,0,0,11,0,100,6,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alliance Slave - On Reset - Emotestate'),
(36766,0,0,0,11,0,100,6,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alliance Slave - On Reset - Emotestate'),
(36767,0,0,0,11,0,100,6,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alliance Slave - On Reset - Emotestate'),
(36764,0,1,0,8,0,100,7,71281,0,0,0,80,3676400,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alliance Slave - On Spellhit - Run Script'),
(36765,0,1,0,8,0,100,7,71281,0,0,0,80,3676400,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alliance Slave - On Spellhit - Run Script'),
(36766,0,1,0,8,0,100,7,71281,0,0,0,80,3676400,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alliance Slave - On Spellhit - Run Script'),
(36767,0,1,0,8,0,100,7,71281,0,0,0,80,3676400,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alliance Slave - On Spellhit - Run Script'),
-- Script
(3676400,9,0,0,0,0,100,0,500,500,500,500,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Alliance Slave - Script - Turnto envoker'),
(3676400,9,1,0,0,0,100,0,500,500,500,500,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alliance Slave - Script - say text'),
(3676400,9,2,0,0,0,100,0,100,100,100,100,18,512,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alliance Slave - Script - set unitflag'),
(3676400,9,3,0,0,0,100,0,100,100,100,100,2,250,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alliance Slave - Script - set faction'),
(3676400,9,4,0,0,0,100,0,100,100,100,100,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alliance Slave - Script - set Emotestate'),
(3676400,9,5,0,0,0,100,0,100,100,100,100,33,36764,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Alliance Slave - Script - give quest credit'),
(3676400,9,6,0,0,0,100,0,100,100,100,100,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alliance Slave - Script - set run on'),
(3676400,9,7,0,0,0,100,0,500,500,500,500,69,1,0,0,0,0,0,19,23837,70,0,0,0,0,0, 'Alliance Slave - Script - move to closest trigger'),
(3676400,9,8,0,0,0,100,0,8000,8000,8000,8000,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alliance Slave - Script - despawn');

-- Ball and chain SAI
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry` IN (201969);
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid` IN (201969);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(201969,1,0,0,64,0,100,6,0,0,0,0,85,71281,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Ball and chain - On Gossip Hello - Envoker cast on self');

INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,71281,0,31,3,36770,0,0,'','Spell 71281 targets entry 36770'),
(13,1,71281,1,31,3,36771,0,0,'','Spell 71281 targets entry 36771'),
(13,1,71281,2,31,3,36772,0,0,'','Spell 71281 targets entry 36772'),
(13,1,71281,3,31,3,36773,0,0,'','Spell 71281 targets entry 36773'),
(13,1,71281,4,31,3,36764,0,0,'','Spell 71281 targets entry 36764'),
(13,1,71281,5,31,3,36765,0,0,'','Spell 71281 targets entry 36765'),
(13,1,71281,6,31,3,36766,0,0,'','Spell 71281 targets entry 36766'),
(13,1,71281,7,31,3,36767,0,0,'','Spell 71281 targets entry 36767');

-- Creature text from sniff
DELETE FROM `creature_text` WHERE `entry` IN (36770,36771,36772,36773,36764,36765,36766,36767);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
-- Alliance Slaves
(36764,0,0, 'You''re a beautiful sight... you have no idea.',12,0,100,0,0,0, 'Alliance Slave'),
(36764,0,1, '%s lets his mining pick drag on the ground as she approaches, clearly exhausted.',16,0,100,0,0,0, 'Alliance Slave'),
(36764,0,2, 'Have my babies.',12,0,100,0,0,0, 'Alliance Slave'),
(36764,0,3, 'If by life or death I can repay you, I will.',12,0,100,0,0,0, 'Alliance Slave'),
(36764,0,4, 'I''m going to return to the front of the quarry. Kill a few extra for me.',12,0,100,0,0,0, 'Alliance Slave'),
(36765,0,0, 'You''re a beautiful sight... you have no idea.',12,0,100,0,0,0, 'Alliance Slave'),
(36765,0,1, '%s lets his mining pick drag on the ground as she approaches, clearly exhausted.',16,0,100,0,0,0, 'Alliance Slave'),
(36765,0,2, 'Have my babies.',12,0,100,0,0,0, 'Alliance Slave'),
(36765,0,3, 'If by life or death I can repay you, I will.',12,0,100,0,0,0, 'Alliance Slave'),
(36765,0,4, 'I''m going to return to the front of the quarry. Kill a few extra for me.',12,0,100,0,0,0, 'Alliance Slave'),
(36766,0,0, 'You''re a beautiful sight... you have no idea.',12,0,100,0,0,0, 'Alliance Slave'),
(36766,0,1, '%s lets his mining pick drag on the ground as she approaches, clearly exhausted.',16,0,100,0,0,0, 'Alliance Slave'),
(36766,0,2, 'Have my babies.',12,0,100,0,0,0, 'Alliance Slave'),
(36766,0,3, 'If by life or death I can repay you, I will.',12,0,100,0,0,0, 'Alliance Slave'),
(36766,0,4, 'I''m going to return to the front of the quarry. Kill a few extra for me.',12,0,100,0,0,0, 'Alliance Slave'),
(36767,0,0, 'You''re a beautiful sight... you have no idea.',12,0,100,0,0,0, 'Alliance Slave'),
(36767,0,1, '%s lets his mining pick drag on the ground as she approaches, clearly exhausted.',16,0,100,0,0,0, 'Alliance Slave'),
(36767,0,2, 'Have my babies.',12,0,100,0,0,0, 'Alliance Slave'),
(36767,0,3, 'If by life or death I can repay you, I will.',12,0,100,0,0,0, 'Alliance Slave'),
(36767,0,4, 'I''m going to return to the front of the quarry. Kill a few extra for me.',12,0,100,0,0,0, 'Alliance Slave'),
-- Horde Slaves
(36770,0,0, 'You''re a beautiful sight... you have no idea.',12,0,100,0,0,0, 'Horde Slave'),
(36770,0,1, '%s lets his mining pick drag on the ground as she approaches, clearly exhausted.',16,0,100,0,0,0, 'Horde Slave'),
(36770,0,2, 'Have my babies.',12,0,100,0,0,0, 'Horde Slave'),
(36770,0,3, 'If by life or death I can repay you, I will.',12,0,100,0,0,0, 'Horde Slave'),
(36770,0,4, 'I''m going to return to the front of the quarry. Kill a few extra for me.',12,0,100,0,0,0, 'Horde Slave'),
(36771,0,0, 'You''re a beautiful sight... you have no idea.',12,0,100,0,0,0, 'Horde Slave'),
(36771,0,1, '%s lets his mining pick drag on the ground as she approaches, clearly exhausted.',16,0,100,0,0,0, 'Horde Slave'),
(36771,0,2, 'Have my babies.',12,0,100,0,0,0, 'Horde Slave'),
(36771,0,3, 'If by life or death I can repay you, I will.',12,0,100,0,0,0, 'Horde Slave'),
(36771,0,4, 'I''m going to return to the front of the quarry. Kill a few extra for me.',12,0,100,0,0,0, 'Horde Slave'),
(36772,0,0, 'You''re a beautiful sight... you have no idea.',12,0,100,0,0,0, 'Horde Slave'),
(36772,0,1, '%s lets his mining pick drag on the ground as she approaches, clearly exhausted.',16,0,100,0,0,0, 'Horde Slave'),
(36772,0,2, 'Have my babies.',12,0,100,0,0,0, 'Horde Slave'),
(36772,0,3, 'If by life or death I can repay you, I will.',12,0,100,0,0,0, 'Horde Slave'),
(36772,0,4, 'I''m going to return to the front of the quarry. Kill a few extra for me.',12,0,100,0,0,0, 'Horde Slave'),
(36773,0,0, 'You''re a beautiful sight... you have no idea.',12,0,100,0,0,0, 'Horde Slave'),
(36773,0,1, '%s lets his mining pick drag on the ground as she approaches, clearly exhausted.',16,0,100,0,0,0, 'Horde Slave'),
(36773,0,2, 'Have my babies.',12,0,100,0,0,0, 'Horde Slave'),
(36773,0,3, 'If by life or death I can repay you, I will.',12,0,100,0,0,0, 'Horde Slave'),
(36773,0,4, 'I''m going to return to the front of the quarry. Kill a few extra for me.',12,0,100,0,0,0, 'Horde Slave');

-- Put Rimefang in the air and make him fly
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=36661;

-- Deathwhisper Necrolyte SAI
SET @ENTRY   := 36788; -- NPC entry
SET @SPELL1  := 69577; -- Shadow Bolt
SET @SPELL2  := 69578; -- Conversion Beam
SET @SPELL3  := 45104; -- Shadow Channelling
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,100,100,3000,3000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Deathwhisper Necrolyte - Combat - Cast Shadow Bolt'),
(@ENTRY,0,1,0,0,0,100,6,9000,9000,24000,24000,11,@SPELL2,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Deathwhisper Necrolyte - Combat - Cast Conversion Beam');

-- [Q] See You on the Other Side

-- Gan'jo SAI
SET @ENTRY := 26924;
SET @QUEST := 12121;
SET @GOSSIP := 10220;
SET @SPELL_RESURRECT := 61613;
UPDATE `creature_template` SET `npcflag`=3,`AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,11,@SPELL_RESURRECT,1,0,0,0,0,7,0,0,0,0,0,0,0,"Gan'jo - On Gossip Select - Cast Ganjo Resurrection"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gan'jo - On Gossip Select - Close Gossip");

-- Essence of Warlord Jin'arrak SAI
SET @ENTRY := 26902;
SET @SPELL_DIE_EFFECT := 61611;
SET @SPELL_CAMERA_SHAKE := 47533;
UPDATE `creature_template` SET `AIName`='SmartAI',`flags_extra`=128 WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100) AND `source_type` IN (0,9);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Essence of Warlord Jin'arrak - On Just Summoned - Run Script"),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,85,@SPELL_CAMERA_SHAKE,0,0,0,0,0,7,0,0,0,0,0,0,0,"Essence of Warlord Jin'arrak - On Script - Invoker Cast Camera Shake - Small"),
(@ENTRY*100,9,1,0,0,0,100,0,4000,4000,0,0,33,@ENTRY,0,0,0,0,0,7,0,0,0,0,0,0,0,"Essence of Warlord Jin'arrak - On Script - Killed Monster Credit"),
(@ENTRY*100,9,2,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Essence of Warlord Jin'arrak - On Script - Monster Whisper Line 0"),
(@ENTRY*100,9,3,0,0,0,100,0,0,0,0,0,85,@SPELL_CAMERA_SHAKE,0,0,0,0,0,7,0,0,0,0,0,0,0,"Essence of Warlord Jin'arrak - On Script - Invoker Cast Camera Shake - Small"),
(@ENTRY*100,9,4,0,0,0,100,0,3000,3000,0,0,85,@SPELL_DIE_EFFECT,0,0,0,0,0,7,0,0,0,0,0,0,0,"Essence of Warlord Jin'arrak - On Script - Invoker Cast On The Other Side");

-- Essence of Warlord Jin'arrak text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES 
(@ENTRY,0,0,"How dare you summon me without an offering!",42,0,0,0,0,0,"Essence of Warlord Jin'arrak");

-- Ganjo's Resurrection removes On The Other Side
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=@SPELL_RESURRECT;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(@SPELL_RESURRECT,-@SPELL_DIE_EFFECT,1,"Ganjo's Resurrection removes On The Other Side");

-- [Q] Leave Nothing to Chance
-- Wintergarde Mine Bomb SAI
SET @ENTRY := 27435;
SET @SPELL_EXPLOSION := 48742;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,1,0,100,1,14000,14000,0,0,11,@SPELL_EXPLOSION,2,0,0,0,0,1,0,0,0,0,0,0,0,"Wintergarde Mine Bomb - Out of Combat - Cast Wintergarde Mine Explosion"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,41,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wintergarde Mine Bomb - On Wintergarde Mine Explosion Cast - Forced Despawn");

-- Spellscriptname
DELETE FROM `spell_script_names` WHERE `spell_id`=@SPELL_EXPLOSION;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(@SPELL_EXPLOSION,'spell_q12277_wintergarde_mine_explosion');

-- The conditions will make it works exactly like it should. Thanks a lot Josh.
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,@SPELL_EXPLOSION,0,31,3,27437,0,0,'',"Wintergarde Mine Explosion - Lower Wintergarde Mine Shaft"), -- Effect 0 - SPELL_EFFECT_DUMMY
(13,1,@SPELL_EXPLOSION,1,31,3,27436,0,0,'',"Wintergarde Mine Explosion - Upper Wintergarde Mine Shaft"), -- Effect 0 - SPELL_EFFECT_DUMMY
(13,2,@SPELL_EXPLOSION,0,31,4,0,0,0,'',"Wintergarde Mine Explosion - Targets Players"),                          -- Effect 1 - SPELL_EFFECT_KNOCK_BACK
(13,4,@SPELL_EXPLOSION,0,31,5,188712,0,0,'',"Wintergarde Mine Explosion - Wintergarde Mine Cave In (2)");    -- Effect 2 - SPELL_EFFECT_ACTIVATE_OBJECT

-- Fix proc for Death's Verdict/Choice (author: kandera) closes #6041
UPDATE `spell_proc_event` SET `procFlags` = 0, `procEx` = `procEx`|262144 WHERE `entry` in (67702, 67771);

-- Limit Bloodgem Shard use to Netherstorm Cristal Target author: nelegalno closes #4165
DELETE FROM `conditions` WHERE (`SourceEntry`=34367 AND `SourceTypeOrReferenceId`=17 AND `ConditionTypeOrReference`=29);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,34367,0,29,19421,15,0,64,'','Limit Bloodgem Shard use to Netherstorm Cristal Target');

-- Disgusting Oozeling aura author: gecko32 closes #6197
UPDATE `creature_template_addon` SET `auras`='25163' WHERE `entry`=15429;
-- Mr. Chilly
-- Add aura chilly for Periodic slide
DELETE FROM `creature_template_addon` WHERE `entry`=29726;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(29726, 0, 0, 0, 0, 0, '61811');

-- fixes ashen band of destruction proc author: kandera
DELETE FROM `spell_proc_event` WHERE `entry` = 72417;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(72417,0,0,0,0,0,327680,0,0,0,60);

-- Spawn Disturbed Glacial Revenant
DELETE FROM `creature` WHERE `guid`=199965;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`, `position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(199965,36874,658,2,1,0,0,1053.894,-93.05556,632.8575,4.223697,86400,0,0,1,0,0,0,0,0);
DELETE FROM `creature_addon` WHERE `guid`=201998;
INSERT INTO `creature_addon` (`guid`,`bytes2`) VALUES
(199965,1);

-- Disturbed Glacial Revenant SAI
SET @ENTRY := 36874; -- NPC entry
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,4,0,0,12000,15000,11,55216,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Disturbed Glacial Revenant - Combat - Cast Avalanche');

# NeatElves
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='10' WHERE `entry`=44943 AND `item`=42225;
UPDATE `item_loot_template` SET `maxcount`='3' WHERE `entry`=49294;
DELETE FROM `item_loot_template` WHERE `entry` = 52006 AND `item` = 36922;
DELETE FROM `item_loot_template` WHERE `entry` = 52006 AND `item` = 36925;
DELETE FROM `item_loot_template` WHERE `entry` = 52006 AND `item` = 36928;
DELETE FROM `item_loot_template` WHERE `entry` = 52006 AND `item` = 36931;
DELETE FROM `item_loot_template` WHERE `entry` = 52006 AND `item` = 36934;
UPDATE `item_loot_template`SET`groupid`='0', `mincountOrRef`='-36919' WHERE `entry`=52006 AND `item`=36919;
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(36919, 36919, 0, 1, 1, 1),
(36919, 36922, 0, 1, 1, 1),
(36919, 36925, 0, 1, 1, 1),
(36919, 36928, 0, 1, 1, 1),
(36919, 36931, 0, 1, 1, 1),
(36919, 36934, 0, 1, 1, 1);
DELETE FROM `item_loot_template` WHERE `entry` = 44943 AND `item` = 36922;
DELETE FROM `item_loot_template` WHERE `entry` = 44943 AND `item` = 36925;
DELETE FROM `item_loot_template` WHERE `entry` = 44943 AND `item` = 36928;
DELETE FROM `item_loot_template` WHERE `entry` = 44943 AND `item` = 36931;
DELETE FROM `item_loot_template` WHERE `entry` = 44943 AND `item` = 36934;
UPDATE `item_loot_template` SET `groupid`='0', `mincountOrRef`='-36919' WHERE `entry`=44943 AND `item`=36919;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='5' WHERE `entry`=44943 AND `item`=36919;
REPLACE INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(44943, 0, 70, 0, -36918, 1),
(44943, 0, 40, 0, -36918, 1),
(44943, 0, 15, 0, -36918, 1);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 181248;
UPDATE `gameobject_template` SET `data1`='181248' WHERE `entry`=181248;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 103713 AND `item` = 22634;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 103711 AND `item` = 22634;
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(181248, 818, 5, 0, -818, 1),
(181248, 2770, 100, 0, 1, 5),
(181248, 2835, 25, 0, 1, 4),
(181248, 22634, -50, 0, 1, 4);
UPDATE `gameobject` SET `id`='181248' WHERE `id`=103713;
UPDATE `gameobject` SET `id`='181249' WHERE `id`=103711;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 181249;
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(181249, 774, 5, 0, -774, 1),
(181249, 2771, 100, 0, 1, 5),
(181249, 2836, 25, 0, 1, 4),
(181249, 22634, -50, 0, 1, 4);
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(103711, 11513, 20, 0, 1, 3);
UPDATE `gameobject` SET `id`='103711' WHERE `guid`=81987;
UPDATE `gameobject` SET `id`='103711' WHERE `guid`=82338;
UPDATE `gameobject` SET `id`='103711' WHERE `guid`=82710;
UPDATE `gameobject` SET `id`='103711' WHERE `guid`=82731;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 9062;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 9143;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 9062;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 9143;
# UPDATE `gossip_menu` SET `cond_2`='9' WHERE `entry`=7675 AND `text_id`=9369;
UPDATE `gossip_menu_option` SET `id`='0' WHERE `menu_id`=8513 AND `id`=1;
UPDATE `locales_gossip_menu_option` SET `id`='0' WHERE `menu_id`=8513 AND `id`=1;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 4362 AND `id` = 1;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 4362 AND `id` = 1;
UPDATE `gossip_menu_option` SET `id`='0' WHERE `menu_id` in (597,900,980,1012,1042,1043,1120,1141,1142,1423,1467,1468,1701,1970,2404,2562,2685,2742,2747,2750,2761,2781,2782) AND `id`=1;
UPDATE `locales_gossip_menu_option` SET `id`='0' WHERE `menu_id` in (597,900,980,1012,1042,1043,1120,1141,1142,1423,1467,1468,1701,1970,2404,2562,2685,2742,2747,2750,2761,2781,2782) AND `id`=1;
UPDATE `gossip_menu_option` SET `id`='0' WHERE `menu_id` in (4118,7892,8671,9480,3624,4018,7931,9010,10174,10421,50010,4144,4341,7148,9924,9986,3181,4241,7893,8301,9715,3310,3625,4019,7935,8254,9501,10422,50011,5667,7713,7966,8494,9456,9687,9987,11361,4158,4354,7187,9485,9548,10226,50304,4020,9895,10423,50012,5851,7153,8064,9772,9988,6658,6855,7898,8863,50305,5739,9165,9668,10424,4148,4345,8718,9046,9584,10627,3201,7219,8002,8085,9253,50306,4022,4305,9900,10425,8719,3202,4358,4762,7921,11032,50307,7579,7947,8622,8918,9677,9750,10426,50413,3067,8382,9537,2783,3203,4359,6864,7922,8553,9495,10036,50308,4137,4183,7769,8623,8934,9831,3070,4151,4207,8383,9061,9474,4270,4781,6866,7923,9130,10417,6824,7771,10943,4349,5221,9542,50260,4128,7842,7925,8879,9131,10418,4140,5750,7772,9761,4115,7724,8661,10122,4016,7926,9132,10419,4187,4325,7494,10191,4116,4155,4742,5263,6848,8392,8982,10123,3622,4130,7927,8886,9892,10281,10420,4143,4944) AND `id`=1;
UPDATE `locales_gossip_menu_option` SET `id`='0' WHERE `menu_id` in (4118,7892,8671,9480,3624,4018,7931,9010,10174,10421,50010,4144,4341,7148,9924,9986,3181,4241,7893,8301,9715,3310,3625,4019,7935,8254,9501,10422,50011,5667,7713,7966,8494,9456,9687,9987,11361,4158,4354,7187,9485,9548,10226,50304,4020,9895,10423,50012,5851,7153,8064,9772,9988,6658,6855,7898,8863,50305,5739,9165,9668,10424,4148,4345,8718,9046,9584,10627,3201,7219,8002,8085,9253,50306,4022,4305,9900,10425,8719,3202,4358,4762,7921,11032,50307,7579,7947,8622,8918,9677,9750,10426,50413,3067,8382,9537,2783,3203,4359,6864,7922,8553,9495,10036,50308,4137,4183,7769,8623,8934,9831,3070,4151,4207,8383,9061,9474,4270,4781,6866,7923,9130,10417,6824,7771,10943,4349,5221,9542,50260,4128,7842,7925,8879,9131,10418,4140,5750,7772,9761,4115,7724,8661,10122,4016,7926,9132,10419,4187,4325,7494,10191,4116,4155,4742,5263,6848,8392,8982,10123,3622,4130,7927,8886,9892,10281,10420,4143,4944) AND `id`=1;
UPDATE `gossip_menu_option` SET `id`='0' WHERE `menu_id` in (2061,6381,4324,6563,10280,5849,5848,8959) AND `id`=2;
UPDATE `locales_gossip_menu_option` SET `id`='0' WHERE `menu_id` in (2061,6381,4324,6563,10280,5849,5848,8959) AND `id`=2;
DELETE FROM `creature` WHERE `id` = 31263;
DELETE FROM `creature` WHERE `id` = 33867;
UPDATE `creature_template_addon` SET `auras`='34429' WHERE `entry`=19668;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 10343 AND `id` = 1;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 10343 AND `id` = 2;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 10343 AND `id` = 3;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 10343 AND `id` = 4;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 10343 AND `id` = 5;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 10343 AND `id` = 6;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 10343 AND `id` = 7;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 10343 AND `id` = 8;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 10343 AND `id` = 9;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 9709 AND `id` = 2;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 9709 AND `id` = 3;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 9709 AND `id` = 4;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 9709 AND `id` = 5;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 9709 AND `id` = 6;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 9709 AND `id` = 7;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 10343;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 9709;
DELETE FROM `fishing_loot_template` WHERE `item` = 13755;
DELETE FROM `reference_loot_template` WHERE `entry` = 13755;
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(17, 13755, 100, 0, 1, 1),
(17, 13756, 100, 0, 1, 1),
(18, 13755, 100, 0, 1, 1),
(18, 13756, 100, 0, 1, 1),
(19, 13755, 100, 0, 1, 1),
(19, 13756, 100, 0, 1, 1),
(20, 13755, 100, 0, 1, 1),
(20, 13756, 100, 0, 1, 1);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(2, 17, 9, 1, -17, 1),
(3, 18, 15, 1, -18, 1),
(4, 19, 11, 1, -19, 1),
(5, 20, 9, 1, -20, 1),
(6, 17, 13, 1, -17, 1),
(7, 18, 30, 1, -18, 1),
(8, 19, 16, 1, -19, 1);
UPDATE creature_template SET gossip_menu_id = 10602 WHERE entry in (34949,35021,35020,34951,35019,35017,35022);
UPDATE creature_template SET gossip_menu_id = 10601 WHERE entry in (35027,35023,35026);
DELETE FROM `gossip_menu` WHERE `entry` = 50377;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 50377;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 50377;
DELETE FROM `gossip_menu` WHERE `entry` = 50379;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 50379;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 50379;
DELETE FROM `gossip_menu` WHERE `entry` = 50380;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 50380;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 50380;
DELETE FROM `gossip_menu` WHERE `entry` = 50376;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 50376;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 50376;
DELETE FROM `gossip_menu` WHERE `entry` = 50372;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 50372;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 50372;
DELETE FROM `gossip_menu` WHERE `entry` = 50374;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 50374;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 50374;
DELETE FROM `gossip_menu` WHERE `entry` = 50375;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 50375;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 50375;
DELETE FROM `gossip_menu` WHERE `entry` = 50378;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 50378;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 50378;

# Kirix
UPDATE creature SET position_x = '-6037.669922', position_y = '-2959.058838', position_z = '402.573181', orientation = '5.332037' WHERE guid = '7867';
UPDATE creature SET position_x = '-6050.623047', position_y = '-2937.743652', position_z = '402.929474', orientation = '4.817592' WHERE guid = '7859';
UPDATE creature SET position_x = '-6184.365234', position_y = '-2984.905029', position_z = '388.274689', orientation = '3.788659' WHERE guid = '7766';
UPDATE creature SET position_x = '-6047.715820', position_y = '-3011.367432', position_z = '402.053009', orientation = '0.584218' WHERE guid = '7860';
UPDATE creature SET position_x = '-5993.541504', position_y = '-2997.441406', position_z = '392.833252', orientation = '2.516302' WHERE guid = '7869';
UPDATE creature SET position_x = '-6017.721680', position_y = '-2985.712402', position_z = '400.419525', orientation = '2.708724' WHERE guid = '7864';
UPDATE creature SET position_x = '-5946.514648', position_y = '-3005.238770', position_z = '382.619965', orientation = '1.153635' WHERE guid = '7894';
UPDATE creature SET position_x = '-4896.010254', position_y = '-3447.461670', position_z = '305.734833', orientation = '2.325460' WHERE guid = '9403';
UPDATE creature SET position_x = '-4939.564941', position_y = '-3488.221436', position_z = '306.176422', orientation = '1.579329' WHERE guid = '9371';
UPDATE creature SET position_x = '-4964.276855', position_y = '-3449.603760', position_z = '308.733002', orientation = '0.935302' WHERE guid = '9384';
UPDATE creature SET position_x = '-4928.158203', position_y = '-3418.841553', position_z = '304.274750', orientation = '0.856764' WHERE guid = '9393';
UPDATE creature SET position_x = '-6084.568359', position_y = '-2939.628174', position_z = '399.920441', orientation = '4.548135' WHERE guid = '7934';
UPDATE creature SET position_x = '-6098.974609', position_y = '-2972.728271', position_z = '401.857208', orientation = '4.167217' WHERE guid = '7857';
UPDATE creature SET position_x = '-5983.377441', position_y = '-2965.060791', position_z = '387.481171', orientation = '5.977562' WHERE guid = '7888';
UPDATE creature SET position_x = '-5942.905762', position_y = '-2986.661377', position_z = '389.409210', orientation = '1.905272' WHERE guid = '7902';
UPDATE creature SET position_x = '-5959.783691', position_y = '-3007.608887', position_z = '387.729034', orientation = '0.242575' WHERE guid = '7894';
UPDATE creature SET id=1163 where guid=7888;
UPDATE creature SET id=1166 where guid=7902;
UPDATE creature SET id=1163 where guid=7894;
UPDATE creature SET id=1164 where guid=7807;
UPDATE creature SET id=1197 where guid=7817;
UPDATE creature SET id=1162 where guid=8023;
UPDATE creature SET id=1162 where guid=7977;
UPDATE creature SET id=1166 where guid=7860;
-- дозаселяем чего где не хватает
INSERT IGNORE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
-- Головоломы:
(131960,1163,0,1,1,0,17,-5940.18,-2845.68,373.935,5.33983,600,5,0,273,0,1),
(133615,1163,0,1,1,0,17,-5988.56,-2844.92,385.351,0.894468,600,5,0,273,0,1),
(134943,1163,0,1,1,0,17,-6085.82,-2771.04,413.983,5.47333,600,5,0,273,0,1),
(135212,1163,0,1,1,0,17,-6037.28,-2821.11,411.211,1.97439,600,5,0,300,0,1),
(135214,1163,0,1,1,0,17,-6085.67,-2876.65,414.748,3.75332,600,5,0,273,0,1),
(135225,1163,0,1,1,0,17,-6095.06,-2963.3,418.801,4.63296,600,5,0,300,0,1),
(135227,1163,0,1,1,0,17,-6068.73,-3010.69,406.453,1.24239,600,5,0,300,0,1),
(135276,1163,0,1,1,0,17,-5984.02,-2765.22,400.259,3.54753,600,5,0,273,0,1),
-- Ясновидцы:
(135277,1166,0,1,1,0,19,-6078.18,-2990.75,413.19,6.13934,600,5,0,276,295,1),
(135278,1166,0,1,1,0,19,-6117.25,-2927.26,419.383,0.91094,600,5,0,253,264,1),
(135279,1166,0,1,1,0,19,-6055.5,-2855.17,413.777,2.76841,600,5,0,253,264,1),
(135280,1166,0,1,1,0,19,-6092.84,-2805.09,414.955,0.46719,600,5,0,253,264,1),
(135281,1166,0,1,1,0,19,-6060.58,-2752.08,417.888,4.23711,600,5,0,253,264,1),
(135282,1166,0,1,1,0,19,-6015,-2765.06,410.225,4.41775,600,5,0,276,295,1),
(135283,1166,0,1,1,0,19,-6061.05,-2792.99,408.415,6.08437,600,5,0,253,264,1),
-- Шаманы
(135285,1197,0,1,1,0,9,-6146.94,-2892.12,403.925,5.26361,600,5,0,325,357,1),
(135286,1197,0,1,1,0,9,-6162.43,-2921.19,405.388,1.55967,600,5,0,301,326,1),
(135287,1197,0,1,1,0,9,-6220.82,-2925.58,402.61,5.91235,600,5,0,325,357,1),
(135288,1197,0,1,1,0,9,-6167.42,-2958.31,386.954,4.05096,600,5,0,325,357,1),
(135289,1197,0,1,1,0,9,-6124.66,-3020.23,395.561,0.669804,600,5,0,301,326,1),
(135290,1197,0,1,1,0,9,-6142.77,-2946.94,396.823,4.85205,600,5,0,325,357,1),
-- Костегрызы
(135291,1164,0,1,1,0,17,-6135.28,-2967.86,398.342,0.449882,600,5,0,356,0,1),
(135292,1164,0,1,1,0,17,-6119.01,-2951.7,398.414,3.87423,600,5,0,356,0,1),
(135293,1164,0,1,1,0,17,-6112.34,-2997.46,399.329,4.57714,600,5,0,328,0,1),
(135294,1164,0,1,1,0,17,-6163.37,-3025.61,390.988,3.24589,600,5,0,328,0,1),
(135295,1164,0,1,1,0,17,-6158.98,-2998,389.285,2.13457,600,5,0,356,0,1),
(135296,1164,0,1,1,0,17,-6164.72,-2900.54,405.409,0.269248,600,5,0,328,0,1),
(135297,1164,0,1,1,0,17,-6195.5,-2929.13,402.152,3.04957,600,5,0,356,0,1),
(135298,1164,0,1,1,0,17,-6225.94,-2959.14,400.745,1.38844,600,5,0,356,0,1);
DELETE FROM gameobject WHERE guid = '18916';
INSERT INTO gameobject VALUES (18916, 104575, 0, 1,1,-4976.97, -3501.05, 304.889, 3.39355, 0, 0, 0.992075, -0.125648, 300, 255, 1);
UPDATE `creature` SET `id`='1178' WHERE `guid`='9445';
UPDATE `creature` SET `id`='1178' WHERE `guid`='9474';
UPDATE `creature` SET `id`='1178' WHERE `guid`='9207';
-- Дозаселение огров в Лок Модан
INSERT IGNORE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
(135299,1178,0,1,1,0,17,-4993.44,-4007.92,300.771,6.1542,600,0,0,417,0,0),
(135300,1178,0,1,1,0,17,-4935.35,-3953.08,299.555,1.29259,600,0,0,417,0,0),
(135301,1179,0,1,1,0,23,-4973.04,-3920.06,306.161,0.840992,600,5,0,404,0,1),
(135302,1179,0,1,1,0,23,-4938.89,-3895.08,306.686,5.25493,600,5,0,377,0,1),
(135303,1179,0,1,1,0,23,-4866.01,-3937.67,303.918,0.361888,600,5,0,404,0,1),
(135306,1179,0,1,1,0,23,-4948.83,-3991.92,296.885,3.62993,600,5,0,377,0,1),
(135307,1178,0,1,1,0,17,-5031.59,-4004.98,304.267,4.75306,600,0,0,417,0,0),
(135308,1178,0,1,1,0,17,-4910.04,-4012.88,300.687,1.14022,600,0,0,449,0,0),
(135309,1179,0,1,1,0,23,-4906.71,-3944.52,300.381,1.17949,600,5,0,404,0,1),
(135310,1179,0,1,1,0,23,-4898.51,-3842.31,303.474,4.5842,600,5,0,404,0,1),
(135311,1178,0,1,1,0,17,-4867.94,-3838.55,302.144,4.53315,600,0,0,417,0,0),
(135312,1179,0,1,1,0,23,-4999.28,-3886.42,309.421,6.00577,600,5,0,404,0,1),
(135313,1178,0,1,1,0,17,-5041.7,-3879.13,316.14,3.16342,600,0,0,449,0,0),
(135314,1178,0,1,1,0,17,-5085.16,-3886.45,327.203,6.06153,600,0,0,417,0,0),
(135315,1179,0,1,1,0,23,-5072.53,-3872.76,321.628,2.86104,600,5,0,404,0,1),
(135316,1180,0,1,1,0,60,-4965.86,-3887.4,308.8,6.26788,600,5,0,484,0,1),
(135317,1180,0,1,1,0,60,-5016.74,-4036.22,300.639,3.59596,600,5,0,449,0,1),
(135318,1180,0,1,1,0,60,-5075.21,-4110.79,314.44,4.19287,600,5,0,449,0,1),
(135319,1180,0,1,1,0,60,-5104.54,-4062.89,316.708,2.09742,600,5,0,449,0,1),
(135320,1179,0,1,1,0,23,-5101.96,-4027.17,319.022,4.94843,600,5,0,377,0,1),
(135321,1178,0,1,1,0,17,-5077.83,-4070.82,310.656,5.25866,600,0,0,449,0,0),
(135324,1178,0,1,1,0,17,-4887.08,-3762.11,312.782,5.45108,600,0,0,417,0,0),
(135325,1179,0,1,1,0,23,-4842.2,-3773.2,310.508,6.07861,600,5,0,377,0,1),
(135326,1179,0,1,1,0,23,-5041.06,-4085.31,305.074,3.098,600,5,0,377,0,1),
(135328,1179,0,1,1,0,23,-5058.65,-4059.21,308.755,0.828195,600,5,0,377,0,1);

# NeatElves
DELETE FROM `gossip_menu` WHERE `entry` = 50033;
UPDATE `gossip_menu_option` SET `action_menu_id`='9197' WHERE `menu_id`=7394 AND `id`=0;
UPDATE gossip_menu_option SET menu_id = 9197 WHERE menu_id = 50033;
UPDATE locales_gossip_menu_option SET menu_id = 9197 WHERE menu_id = 50033;
UPDATE `gossip_menu_option` SET `action_menu_id`='9197' WHERE `option_text` LIKE 'What''s unusual about me you can suggest?';
DELETE FROM `gossip_menu` WHERE `entry` = 50034;
UPDATE gossip_menu_option SET menu_id = 9192 WHERE menu_id = 50034;
UPDATE locales_gossip_menu_option SET menu_id = 9192 WHERE menu_id = 50034;
UPDATE gossip_menu SET entry = 9194 WHERE entry = 50035;
UPDATE gossip_menu_option SET menu_id = 9194 WHERE menu_id = 50035;
UPDATE locales_gossip_menu_option SET menu_id = 9194 WHERE menu_id = 50035;
UPDATE gossip_menu SET entry = 9195 WHERE entry = 50036;
UPDATE gossip_menu_option SET menu_id = 9195 WHERE menu_id = 50036;
UPDATE locales_gossip_menu_option SET menu_id = 9195 WHERE menu_id = 50036;
UPDATE gossip_menu SET entry = 9196 WHERE entry = 50037;
UPDATE gossip_menu_option SET menu_id = 9196 WHERE menu_id = 50037;
UPDATE locales_gossip_menu_option SET menu_id = 9196 WHERE menu_id = 50037;
UPDATE gossip_menu SET entry = 9191 WHERE entry = 50038;
UPDATE gossip_menu_option SET menu_id = 9191 WHERE menu_id = 50038;
UPDATE locales_gossip_menu_option SET menu_id = 9191 WHERE menu_id = 50038;
UPDATE gossip_menu SET entry = 9629 WHERE entry = 50039;
UPDATE gossip_menu_option SET menu_id = 9629 WHERE menu_id = 50039;
UPDATE locales_gossip_menu_option SET menu_id = 9629 WHERE menu_id = 50039;
UPDATE gossip_menu SET entry = 9682 WHERE entry = 50040;
UPDATE gossip_menu_option SET menu_id = 9682 WHERE menu_id = 50040;
UPDATE locales_gossip_menu_option SET menu_id = 9682 WHERE menu_id = 50040;
UPDATE gossip_menu SET entry = 10330 WHERE entry = 50041;
UPDATE gossip_menu_option SET menu_id = 10330 WHERE menu_id = 50041;
UPDATE locales_gossip_menu_option SET menu_id = 10330 WHERE menu_id = 50041;
UPDATE gossip_menu SET entry = 10533 WHERE entry = 50042;
UPDATE gossip_menu_option SET menu_id = 10533 WHERE menu_id = 50042;
UPDATE locales_gossip_menu_option SET menu_id = 10533 WHERE menu_id = 50042;
UPDATE gossip_menu SET entry = 10810 WHERE entry = 50043;
UPDATE gossip_menu_option SET menu_id = 10810 WHERE menu_id = 50043;
UPDATE locales_gossip_menu_option SET menu_id = 10810 WHERE menu_id = 50043;
UPDATE gossip_menu SET entry = 9193 WHERE entry = 50044;
UPDATE gossip_menu_option SET menu_id = 9193 WHERE menu_id = 50044;
UPDATE locales_gossip_menu_option SET menu_id = 9193 WHERE menu_id = 50044;
UPDATE `gossip_menu_option` SET `action_menu_id` = '9192' WHERE `menu_id` = 9197 AND `id` = 0;
UPDATE `gossip_menu_option` SET `action_menu_id` = '9194' WHERE `menu_id` = 9197 AND `id` = 1;
UPDATE `gossip_menu_option` SET `action_menu_id` = '9195' WHERE `menu_id` = 9197 AND `id` = 2;
UPDATE `gossip_menu_option` SET `action_menu_id` = '9196' WHERE `menu_id` = 9197 AND `id` = 3;
UPDATE `gossip_menu_option` SET `action_menu_id` = '9191' WHERE `menu_id` = 9197 AND `id` = 4;
UPDATE `gossip_menu_option` SET `action_menu_id` = '9629' WHERE `menu_id` = 9197 AND `id` = 5;
UPDATE `gossip_menu_option` SET `action_menu_id` = '9682' WHERE `menu_id` = 9197 AND `id` = 6;
UPDATE `gossip_menu_option` SET `action_menu_id` = '10330' WHERE `menu_id` = 9197 AND `id` = 7;
UPDATE `gossip_menu_option` SET `action_menu_id` = '10533' WHERE `menu_id` = 9197 AND `id` = 8;
UPDATE `gossip_menu_option` SET `action_menu_id` = '10810' WHERE `menu_id` = 9197 AND `id` = 9;
UPDATE `gossip_menu_option` SET `action_menu_id` = '9193' WHERE `menu_id` = 9197 AND `id` = 10;
UPDATE creature_template SET gossip_menu_id =7371 WHERE entry = 17119;
UPDATE gossip_menu SET entry = 7371 WHERE entry = 50410;
UPDATE gossip_menu_option SET menu_id = 7371 WHERE menu_id = 50410;
UPDATE locales_gossip_menu_option SET menu_id = 7371 WHERE menu_id = 50410;
UPDATE `creature` SET `MovementType`='0' WHERE `guid`=28803;
DELETE FROM `item_loot_template` WHERE `entry` in (25419,25422,25423,25424,34119) AND `item` in (23077,23079,23107,23112,23117);
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100', `groupid`='0', `mincountOrRef`='-21929' WHERE `entry` in (25419,25422,25423,25424,34119) AND `item`=21929;
UPDATE `item_loot_template` SET `maxcount`='1' WHERE `entry`=34119 AND `item`=21929;
UPDATE `creature` SET `position_x`=-544.874, `position_y`=-696.9735, `position_z`=30.29507 WHERE `guid`=79170;
UPDATE `item_loot_template` SET `groupid`='0' WHERE `entry`=46007;
DELETE FROM `item_loot_template` WHERE `entry` = 23022;
DELETE FROM `reference_loot_template` WHERE `entry` in (17,18,19,20);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(17, 13755, 100, 0, 1, 1),
(17, 13756, 100, 0, 1, 1),
(18, 13755, 100, 0, 1, 1),
(18, 13756, 100, 0, 1, 1),
(19, 13755, 100, 0, 1, 1),
(19, 13756, 100, 0, 1, 1),
(20, 13755, 100, 0, 1, 1),
(20, 13756, 100, 0, 1, 1);
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='25', `groupid`='1' WHERE `entry`=19021 AND `item`=2592;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='10', `groupid`='1' WHERE `entry`=19021 AND `item`=4306;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='5', `groupid`='1' WHERE `entry`=19021 AND `item`=6712;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1' WHERE `entry`=19021 AND `item`=16747;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1' WHERE `entry`=19021 AND `item`=16748;
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES ('19021', '5519', '-100', '0', '1', '1');

# Kirix
DELETE FROM gameobject WHERE guid = '55567';
DELETE FROM game_event_gameobject WHERE guid = '55567';
UPDATE `gameobject` SET `id`='104565' WHERE `guid`='3755';

# NeatElves
UPDATE `gameobject_template` SET `data1`='0' WHERE `entry`=104565;
UPDATE `gameobject_template` SET `data1`='0' WHERE `entry`=104566;
DELETE FROM `gameobject_loot_template` WHERE `entry` in (104565,104566);
UPDATE `gameobject` SET `id`='104574' WHERE `guid`=55568;
UPDATE `gameobject` SET `id`='104569' WHERE `guid`=3755;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='40' WHERE `item`=30809;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='33' WHERE `item` in (25802,25744);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-100' WHERE `item`=46859;
UPDATE `gossip_menu_option` SET `action_menu_id`='10373' WHERE `menu_id`=10371 AND `id`=0;
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (4463,5674);
UPDATE `creature_template` SET `gossip_menu_id`=9792 WHERE `entry`=29194;
UPDATE `creature_template` SET `gossip_menu_id`=9793 WHERE `entry`=29195;
UPDATE `creature_template` SET `gossip_menu_id`=9794 WHERE `entry`=29196;
DELETE FROM event_scripts WHERE id=23438;
INSERT INTO event_scripts VALUES 
(23438,9,12,72531,0,0,0,0,0,0),
(23438,1,11,72539,0,0,0,0,0,0),
(23438,0,27,4,0,201616,10,0,0,0);
DELETE FROM event_scripts WHERE id=23426;
INSERT INTO event_scripts VALUES
(23426,9,12,72530,0,0,0,0,0,0),
(23426,1,11,72538,0,0,0,0,0,0),
(23426,0,27,4,0,201615,10,0,0,0);
DELETE FROM `creature` WHERE `id` = 32190;
REPLACE INTO `creature_template_addon` (`entry`, `auras`) VALUES
(32190, '60464');
UPDATE `gossip_menu` SET `text_id`='12524' WHERE `entry`=9276 AND `text_id`=68;
UPDATE `gossip_menu` SET `text_id`='12524' WHERE `entry`=9273 AND `text_id`=68;
UPDATE `gossip_menu` SET `text_id`='12524' WHERE `entry`=9274 AND `text_id`=68;
UPDATE `gossip_menu` SET `text_id`='12524' WHERE `entry`=9275 AND `text_id`=68;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE `item`=25604;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-20' WHERE `item`=37013;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-40' WHERE `item`=40641;
UPDATE `creature_template` SET `faction_A`='10', `faction_H`='10' WHERE `entry`=5644;
UPDATE `gameobject_template` SET `data2`='0' WHERE `entry`=188596;
# DELETE FROM `event_scripts` WHERE `id` in (188596);
UPDATE `gameobject_template` SET `data2` = '0' WHERE `entry` =176581;
# DELETE FROM `event_scripts` WHERE `id` = 176581;
UPDATE `gameobject_template` SET `data2` = '0' WHERE `entry` =182024;
# DELETE FROM `event_scripts` WHERE `id` = 182024;
UPDATE creature_template SET flags_extra = flags_extra | 64 WHERE entry in (17830);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-30' WHERE `item`=9275;
DELETE FROM `creature` WHERE `id` in (7899,7901,7902);
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES ('42016', '3759', '11013', '1', '0', '0', '0', '2', '1'), ('42016', '3759', '11013', '0', '0', '0', '0', '2', '1');
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES ('42016', '3965', '11013', '1', '0', '0', '0', '2', '1'), ('42016', '3965', '11013', '0', '0', '0', '0', '2', '1');
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES ('42016', '3966', '11013', '1', '0', '0', '0', '2', '1'), ('42016', '3966', '11013', '0', '0', '0', '0', '2', '1');
DELETE FROM `creature` WHERE `id` in (7899,7901,7902);
UPDATE `gameobject_template` SET `data2` = '0' WHERE `entry` =142189;
# DELETE FROM `event_scripts` WHERE `id` = 142189;
DELETE FROM `creature_template_addon` WHERE `entry`=36967;
INSERT INTO `creature_template_addon` (`entry`,`auras`) VALUES (36967, '69663 69658');
UPDATE `creature_template` SET `npcflag`='2' WHERE `entry`=1078;
UPDATE `creature_template` SET `npcflag`='0' WHERE `entry`=2881;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-30' WHERE `item`=29822;
UPDATE `creature_template` SET `RegenHealth`='0' WHERE `entry`=20899;
DELETE FROM `creature_loot_template` WHERE `item` = 31504;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 8648 AND `id` = 0;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 8648 AND `id` = 2;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 8648 AND `id` = 3;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 8648 AND `id` = 0;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 8648 AND `id` = 2;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 8648 AND `id` = 3;
UPDATE `creature_template` SET `npcflag`='129' WHERE `entry`=23143;
UPDATE `creature_template` SET `faction_A`='62', `faction_H`='62' WHERE `entry`=23143;
UPDATE `creature_template` SET `faction_A`='62', `faction_H`='62' WHERE `entry`=23148;
UPDATE `creature_template` SET `spell1`='0' WHERE `entry`=20907;
UPDATE `gossip_menu_option` SET `option_text`='I''m ready to fly! Take me to the dragon!' WHERE `menu_id`=8229 AND `id`=0;
REPLACE INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(7766,176213,0,1,1,1705.87439,-4690.138,48.9742165,-3.08918333,0,0,-0.9996567,0.02620165,600,100,1),
(7771,176213,0,1,1,1846.79382,-3825.265,135.5159,1.83259487,0,0,0.7933531,0.6087617,600,100,1),
(7772,176213,0,1,1,1748.16333,-4453.13525,74.26272,-2.0594883,0,0,0,0,600,100,1),
(7774,176213,0,1,1,2159.835,-2442.754,62.0804,-0.4886912,0,0,-0.2419214,0.9702958,600,100,1),
(7762,176213,0,1,1,1342.56,-1382.57,47.4207,2.775069,0,0,0.9832544,0.182238,600,100,1);
DELETE FROM gameobject WHERE guid = '15922';
INSERT INTO gameobject VALUES ( 15922, 176213, 0, 1,1,1550.84, -1588.93, 64.7935, 4.57797, 0, 0, 0.752999, -0.658022, 600, 100, 1);
DELETE FROM gameobject WHERE guid = '7742';
INSERT INTO gameobject VALUES ( 7742, 176213, 0, 1,1,1512.56, -1470.46, 60.7589, 4.01013, 0, 0, 0.907177, -0.420749,600, 100, 1);
DELETE FROM gameobject WHERE guid = '7741';
INSERT INTO gameobject VALUES ( 7741, 176213, 0, 1,1,1509.77, -1391.97, 65.4078, 3.72975, 0, 0, 0.95707, -0.289857, 600, 100, 1);
DELETE FROM gameobject WHERE guid = '83';
INSERT INTO gameobject VALUES ( 83, 176213, 0, 1,1,1370.41, -1468.01, 56.067, 0.427146, 0, 0, 0.211953, 0.97728, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7775, 176213, 0, 1,1,1841.09, -1816.88, 60.9563, 3.16583, 0, 0, 0.999927, -0.0121196, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7777, 176213, 0, 1,1,1858.09, -1219.27, 60.6204, 2.46525, 0, 0, 0.943363, 0.331762, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7778, 176213, 0, 1,1,1742.59, -1162.52, 59.5493, 2.96869, 0, 0, 0.996266, 0.0863425, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7783, 176213, 0, 1,1,1743.79, -1394.19, 68.8329, 4.46881, 0, 0, 0.787776, -0.615962, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7784, 176213, 0, 1,1,1155.55, -2409.15, 60.9005, 3.90568, 0, 0, 0.927905, -0.372815, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7786, 176213, 0, 1,1,1151.44, -2549.15, 60.0338, 2.40634, 0, 0, 0.933182, 0.359403, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7787, 176213, 0, 1,1,1718.26, -2266.83, 58.7787, 3.8122, 0, 0, 0.944311, -0.329055, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7788, 176213, 0, 1,1,1553.47, -3216.61, 78.7427, 0.666682, 0, 0, 0.327202, 0.944955, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7790, 176213, 0, 1,1,1836.97, -3250.82, 118.316, 3.50904, 0, 0, 0.98317, -0.182692, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7791, 176213, 0, 1,1,2047.2, -2819.94, 73.8743, 1.2683, 0, 0, 0.592494, 0.805575, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7792, 176213, 0, 1,1,1632.41, -4963.24, 82.4437, 3.36925, 0, 0, 0.993529, -0.113581, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7793, 176213, 0, 1,1,1677.69, -4875.3, 85.0371, 5.50317, 0, 0, 0.380196, -0.924906, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7795, 176213, 0, 1,1,1965.56, -4900.35, 82.2303, 1.2628, 0, 0, 0.590277, 0.8072, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7796, 176213, 0, 1,1,2167.71, -5301.92, 94.072, 5.98855, 0, 0, 0.146784, -0.989169, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7797, 176213, 0, 1,1,2464.83, -4994.12, 61.153, 4.74212, 0, 0, 0.696516, -0.717541, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7798, 176213, 0, 1,1,2464.2, -4801.97, 76.5713, 1.79923, 0, 0, 0.783088, 0.62191, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7799, 176213, 0, 1,1,2624.55, -4176.84, 80.6057, 6.104, 0, 0, 0.0894745, -0.995989, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7801, 176213, 0, 1,1,2009.29, -4140.26, 13.4622, 3.3983, 0, 0, 0.991774, -0.128001, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7802, 176213, 0, 1,1,2770.67, -3702.41, 104.461, 5.06649, 0, 0, 0.571514, -0.820592, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7803, 176213, 0, 1,1,2471.64, -3761, 178.266, 0.467974, 0, 0, 0.231858, 0.97275, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7806, 176214, 0, 1,1,1841.09, -1816.88, 60.9563, 3.16583, 0, 0, 0.999927, -0.0121196, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7809, 176214, 0, 1,1,1858.09, -1219.27, 60.6204, 2.46525, 0, 0, 0.943363, 0.331762, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7810, 176214, 0, 1,1,1742.59, -1162.52, 59.5493, 2.96869, 0, 0, 0.996266, 0.0863425, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7811, 176214, 0, 1,1,1743.79, -1394.19, 68.8329, 4.46881, 0, 0, 0.787776, -0.615962, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7812, 176214, 0, 1,1,1155.55, -2409.15, 60.9005, 3.90568, 0, 0, 0.927905, -0.372815, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7815, 176214, 0, 1,1,1151.44, -2549.15, 60.0338, 2.40634, 0, 0, 0.933182, 0.359403, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7816, 176214, 0, 1,1,1718.26, -2266.83, 58.7787, 3.8122, 0, 0, 0.944311, -0.329055, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7817, 176214, 0, 1,1,1553.47, -3216.61, 78.7427, 0.666682, 0, 0, 0.327202, 0.944955, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7820, 176214, 0, 1,1,1836.97, -3250.82, 118.316, 3.50904, 0, 0, 0.98317, -0.182692, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7821, 176214, 0, 1,1,2047.2, -2819.94, 73.8743, 1.2683, 0, 0, 0.592494, 0.805575, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7822, 176214, 0, 1,1,1632.41, -4963.24, 82.4437, 3.36925, 0, 0, 0.993529, -0.113581, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7825, 176214, 0, 1,1,1677.69, -4875.3, 85.0371, 5.50317, 0, 0, 0.380196, -0.924906, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7827, 176214, 0, 1,1,1965.56, -4900.35, 82.2303, 1.2628, 0, 0, 0.590277, 0.8072, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7830, 176214, 0, 1,1,2167.71, -5301.92, 94.072, 5.98855, 0, 0, 0.146784, -0.989169, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7832, 176214, 0, 1,1,2464.83, -4994.12, 61.153, 4.74212, 0, 0, 0.696516, -0.717541, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7837, 176214, 0, 1,1,2464.2, -4801.97, 76.5713, 1.79923, 0, 0, 0.783088, 0.62191, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7838, 176214, 0, 1,1,2624.55, -4176.84, 80.6057, 6.104, 0, 0, 0.0894745, -0.995989, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7840, 176214, 0, 1,1,2009.29, -4140.26, 13.4622, 3.3983, 0, 0, 0.991774, -0.128001, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7841, 176214, 0, 1,1,2770.67, -3702.41, 104.461, 5.06649, 0, 0, 0.571514, -0.820592, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7845, 176214, 0, 1,1,2471.64, -3761, 178.266, 0.467974, 0, 0, 0.231858, 0.97275, 600, 100, 1);
REPLACE INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(7842,176214,0,1,1,1705.87439,-4690.138,48.9742165,-3.08918333,0,0,-0.9996567,0.02620165,600,100,1),
(7848,176214,0,1,1,1846.79382,-3825.265,135.5159,1.83259487,0,0,0.7933531,0.6087617,600,100,1),
(7849,176214,0,1,1,1748.16333,-4453.13525,74.26272,-2.0594883,0,0,0,0,600,100,1),
(7850,176214,0,1,1,2159.835,-2442.754,62.0804,-0.4886912,0,0,-0.2419214,0.9702958,600,100,1),
(7851,176214,0,1,1,1342.56,-1382.57,47.4207,2.775069,0,0,0.9832544,0.182238,600,100,1);
REPLACE INTO gameobject VALUES ( 16517, 176214, 0, 1,1,1550.84, -1588.93, 64.7935, 4.57797, 0, 0, 0.752999, -0.658022, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 7598, 176214, 0, 1,1,1512.56, -1470.46, 60.7589, 4.01013, 0, 0, 0.907177, -0.420749,600, 100, 1);
REPLACE INTO gameobject VALUES ( 456, 176214, 0, 1,1,1509.77, -1391.97, 65.4078, 3.72975, 0, 0, 0.95707, -0.289857, 600, 100, 1);
REPLACE INTO gameobject VALUES ( 13934, 176214, 0, 1,1,1370.41, -1468.01, 56.067, 0.427146, 0, 0, 0.211953, 0.97728, 600, 100, 1);
UPDATE `quest_template` SET `PrevQuestId`='12014', `NextQuestId`='12183', `NextQuestIdChain`='12183' WHERE `id`=12180;
REPLACE INTO gossip_menu (entry, text_id) VALUES (8652, 10863);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='35' WHERE `item`=32427;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='1' WHERE `item`=32506;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='10' WHERE `item`=22574;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(5695, 185915, 530, 1, 1, -4244.83, 325.004, 134.417, 0.139625, 0, 0, 0.0697558, 0.997564, 3600, 100, 1),
(5696, 185915, 530, 1, 1, -4221.47, 370.147, 136.232, 2.11185, 0, 0, 0.870356, 0.492423, 3600, 100, 1),
(5697, 185915, 530, 1, 1, -5103.11, 707.979, 85.0428, 0.279252, 0, 0, 0.139173, 0.990268, 3600, 100, 1),
(7852, 185600, 530, 1, 1, -4244.83, 325.004, 134.417, 0.139625, 0, 0, 0.0697558, 0.997564, 3600, 100, 1),
(7859, 185600, 530, 1, 1, -4221.47, 370.147, 136.232, 2.11185, 0, 0, 0.870356, 0.492423, 3600, 100, 1),
(7860, 185600, 530, 1, 1, -5103.11, 707.979, 85.0428, 0.279252, 0, 0, 0.139173, 0.990268, 3600, 100, 1);
UPDATE `quest_template` SET `ExclusiveGroup`='11016' WHERE `id` in (11016,11017,11018);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(70206, 185878, 530, 1, 1, -5066.14, 45.9606, 80.9811, 3.45679, 0, 0, 0.987607, -0.156947, 900, 100, 1),
(70207, 185878, 530, 1, 1, -4999.06, 102.164, 75.3547, 1.26553, 0, 0, 0.591377, 0.806395, 900, 100, 1),
(70208, 185878, 530, 1, 1, -5003.95, 51.3866, 77.4446, 2.36116, 0, 0, 0.924827, 0.380388, 900, 100, 1),
(11146, 185878, 530, 1, 1, -4926.52, 84.2173, 51.6009, 3.83378, 0, 0, 0.940705, -0.339226, 900, 100, 1),
(11134, 185878, 530, 1, 1, -5218.06, 5.59332, 66.226, 1.77368, 0, 0, 0.775079, 0.631864, 900, 100, 1),
(11127, 185878, 530, 1, 1, -5213.78, -60.6762, 66.4112, 2.22921, 0, 0, 0.897737, 0.440532, 900, 100, 1),
(11126, 185878, 530, 1, 1, -5050.32, -106.001, 60.286, 3.78823, 0, 0, 0.948186, -0.317715, 900, 100, 1),
(11122, 185878, 530, 1, 1, -4820.17, 960.012, -21.0533, 0.835149, 0, 0, 0.405545, 0.914075, 900, 100, 1),
(11121, 185878, 530, 1, 1, -4889.61, 654.594, 72.0604, 0.811587, 0, 0, 0.394748, 0.918789, 900, 100, 1),
(11120, 185878, 530, 1, 1, -4978.21, 712.682, 82.7179, 5.58289, 0, 0, 0.343037, -0.939322, 900, 100, 1),
(11115, 185878, 530, 1, 1, -5263.47, 555.169, 45.9338, 0.30892, 0, 0, 0.153847, 0.988095, 900, 100, 1),
(11112, 185878, 530, 1, 1, -5129.61, 496.002, 82.9527, 0.218608, 0, 0, 0.109086, 0.994032, 900, 100, 1),
(11110, 185878, 530, 1, 1, -5082.65, 326.771, 170.051, 4.05921, 0, 0, 0.896581, -0.44288, 900, 100, 1),
(11104, 185878, 530, 1, 1, -5082.89, 799.741, 57.689, 3.45838, 0, 0, 0.987482, -0.157732, 900, 100, 1),
(11102, 185878, 530, 1, 1, -5115.72, 790.672, 54.2394, 3.4898, 0, 0, 0.984882, -0.173225, 900, 100, 1),
(11099, 185878, 530, 1, 1, -5143.73, 928.562, 37.8911, 1.25927, 0, 0, 0.58885, 0.808242, 900, 100, 1),
(11088, 185878, 530, 1, 1, -5199.47, 827.182, 184.646, 1.65981, 0, 0, 0.737867, 0.674946, 900, 100, 1),
(11087, 185878, 530, 1, 1, -5241.14, 757.836, 44.2914, 6.01092, 0, 0, 0.135713, -0.990748, 900, 100, 1),
(11086, 185878, 530, 1, 1, -5282.26, 700.973, 36.9991, 4.55401, 0, 0, 0.760828, -0.648954, 900, 100, 1),
(11084, 185878, 530, 1, 1, -5191.54, 681.475, 70.0289, 4.84854, 0, 0, 0.65737, -0.753568, 900, 100, 1),
(11083, 185878, 530, 1, 1, -5164.52, 708.548, 73.1309, 1.00402, 0, 0, 0.481189, 0.876617, 900, 100, 1),
(11082, 185878, 530, 1, 1, -5428.53, 639.938, 90.4687, 3.28953, 0, 0, 0.997266, -0.0739013, 900, 100, 1),
(11081, 185878, 530, 1, 1, -5429.85, 485.816, 50.9283, 5.05667, 0, 0, 0.575534, -0.817778, 900, 100, 1),
(11079, 185878, 530, 1, 1, -4996.74, -18.2048, 73.7508, 0.295556, 0, 0, 0.147241, 0.989101, 900, 100, 1),
(11076, 185878, 530, 1, 1, -5019.34, -62.6962, 67.5271, 4.59719, 0, 0, 0.746641, -0.665228, 900, 100, 1),
(11075, 185878, 530, 1, 1, -5117.46, -134.618, 54.0545, 3.54083, 0, 0, 0.980142, -0.198296, 900, 100, 1),
(11071, 185878, 530, 1, 1, -5160.26, -115.775, 67.8856, 2.28812, 0, 0, 0.910321, 0.413902, 900, 100, 1),
(11069, 185878, 530, 1, 1, -5192.76, 84.3865, 69.6296, 0.937229, 0, 0, 0.451651, 0.892195, 900, 100, 1),
(11068, 185878, 530, 1, 1, -5153.48, 53.9752, 76.8829, 5.42186, 0, 0, 0.417473, -0.908689, 900, 100, 1),
(11066, 185878, 530, 1, 1, -5124.66, 119.751, 130.305, 4.41263, 0, 0, 0.804764, -0.593595, 900, 100, 1),
(11065, 185878, 530, 1, 1, -5045.74, 218.255, 108.159, 0.996142, 0, 0, 0.477732, 0.878506, 900, 100, 1),
(11064, 185878, 530, 1, 1, -4996.77, 288.555, 82.2007, 3.30129, 0, 0, 0.996814, -0.0797639, 900, 100, 1),
(11061, 185878, 530, 1, 1, -5299.23, 148.581, 52.3352, 0.426729, 0, 0, 0.211749, 0.977324, 900, 100, 1),
(11059, 185878, 530, 1, 1, -5307.86, 300.618, 62.3829, 0.854771, 0, 0, 0.414493, 0.910053, 900, 100, 1),
(11057, 185878, 530, 1, 1, -5273.07, 466.53, 51.0239, 1.73049, 0, 0, 0.761254, 0.648454, 900, 100, 1),
(11056, 185878, 530, 1, 1, -5225.46, 596.086, 58.6147, 0.894041, 0, 0, 0.432281, 0.901739, 900, 100, 1),
(11054, 185878, 530, 1, 1, -5205.11, 535.166, 69.5879, 5.81849, 0, 0, 0.230263, -0.973128, 900, 100, 1),
(11052, 185878, 530, 1, 1, -5193.75, 477.471, 75.0211, 5.7321, 0, 0, 0.272069, -0.962278, 900, 100, 1),
(11051, 185878, 530, 1, 1, -5197.17, 419.867, 74.1994, 4.54223, 0, 0, 0.764637, -0.644461, 900, 100, 1),
(11050, 185878, 530, 1, 1, -5208.03, 267.065, 70.832, 2.70833, 0, 0, 0.976627, 0.214941, 900, 100, 1),
(11049, 185878, 530, 1, 1, -5241.12, 81.6035, 61.2198, 5.94807, 0, 0, 0.166775, -0.985995, 900, 100, 1),
(11048, 185878, 530, 1, 1, -5004.6, 195.502, 80.4996, 2.07607, 0, 0, 0.861408, 0.507914, 900, 100, 1),
(11047, 185878, 530, 1, 1, -4886.04, 231.625, 52.0484, 0.147917, 0, 0, 0.0738911, 0.997266, 900, 100, 1),
(11044, 185878, 530, 1, 1, -5097.27, 260.965, 152.027, 2.41379, 0, 0, 0.934515, 0.355923, 900, 100, 1),
(11043, 185878, 530, 1, 1, -5209.91, 173.706, 70.4376, 3.82358, 0, 0, 0.942423, -0.334424, 900, 100, 1),
(11041, 185878, 530, 1, 1, -5345.43, 204.537, 51.1034, 3.11279, 0, 0, 0.999896, 0.0144008, 900, 100, 1),
(11040, 185878, 530, 1, 1, -5329.77, 241.182, 55.8722, 0.905822, 0, 0, 0.437585, 0.899177, 900, 100, 1),
(11036, 185878, 530, 1, 1, -5300.49, 339.305, 62.0425, 1.21998, 0, 0, 0.572859, 0.819654, 900, 100, 1),
(11035, 185878, 530, 1, 1, -5267.06, 396.631, 58.429, 1.05897, 0, 0, 0.505089, 0.863067, 900, 100, 1),
(11033, 185878, 530, 1, 1, -5053.98, 521.69, 87.3391, 1.07077, 0, 0, 0.510172, 0.860072, 900, 100, 1),
(11027, 185878, 530, 1, 1, -5010.87, 491.739, 86.7144, 5.51612, 0, 0, 0.374199, -0.927348, 900, 100, 1),
(11026, 185878, 530, 1, 1, -4986.17, 441.078, 87.3075, 5.16662, 0, 0, 0.52973, -0.848166, 900, 100, 1),
(11024, 185878, 530, 1, 1, -4960.76, 396.683, 85.0164, 1.38493, 0, 0, 0.638436, 0.769675, 900, 100, 1),
(11023, 185878, 530, 1, 1, -4903.02, 384.643, 77.0586, 2.8065, 0, 0, 0.985997, 0.166764, 900, 100, 1),
(11018, 185878, 530, 1, 1, -4846.45, 378.751, 59.9805, 6.25047, 0, 0, 0.0163568, -0.999866, 900, 100, 1),
(11016, 185878, 530, 1, 1, -4853.06, 469.134, 63.2213, 1.85224, 0, 0, 0.799294, 0.60094, 900, 100, 1),
(11014, 185878, 530, 1, 1, -4856.17, 566.468, 49.0277, 1.86009, 0, 0, 0.801647, 0.597798, 900, 100, 1),
(11013, 185878, 530, 1, 1, -4987.88, 835.023, 34.1998, 1.8169, 0, 0, 0.788552, 0.614969, 900, 100, 1),
(11012, 185878, 530, 1, 1, -5032.66, 819.854, 49.7111, 4.38908, 0, 0, 0.811698, -0.584078, 900, 100, 1),
(11011, 185878, 530, 1, 1, -4923.45, 562.983, 62.1658, 4.2909, 0, 0, 0.839381, -0.543544, 900, 100, 1),
(11010, 185878, 530, 1, 1, -4945.67, 603.303, 72.6498, 1.60484, 0, 0, 0.71904, 0.694969, 900, 100, 1),
(11009, 185878, 530, 1, 1, -4859.73, 675.446, 58.7135, 0.615237, 0, 0, 0.30279, 0.953057, 900, 100, 1),
(11007, 185878, 530, 1, 1, -4783.98, 862.703, 96.4684, 1.80904, 0, 0, 0.786129, 0.618063, 900, 100, 1),
(11005, 185878, 530, 1, 1, -4912.83, 773.527, 55.5938, 3.95319, 0, 0, 0.918787, -0.394753, 900, 100, 1),
(11004, 185878, 530, 1, 1, -4119.33, 551.08, 17.718, 4.24063, 0, 0, 0.852776, -0.522277, 900, 100, 1),
(11002, 185878, 530, 1, 1, -4164.36, 515.045, 26.7514, 3.19447, 0, 0, 0.999651, -0.0264356, 900, 100, 1),
(11000, 185878, 530, 1, 1, -4203.78, 456.32, 30.5664, 6.11615, 0, 0, 0.0834206, -0.996514, 900, 100, 1),
(10999, 185878, 530, 1, 1, -4877.31, 139.799, 36.5957, 0.959225, 0, 0, 0.461435, 0.887174, 900, 100, 1),
(10996, 185878, 530, 1, 1, -4147.78, 460.533, 31.3569, 0.720467, 0, 0, 0.352493, 0.935815, 900, 100, 1),
(10995, 185878, 530, 1, 1, -4111.95, 480.848, 31.7668, 3.01383, 0, 0, 0.99796, 0.0638379, 900, 100, 1),
(10992, 185878, 530, 1, 1, -4098.6, 380.958, 30.5432, 4.41577, 0, 0, 0.803831, -0.594858, 900, 100, 1),
(10990, 185878, 530, 1, 1, -4199.64, 277.275, 124.143, 5.14618, 0, 0, 0.538371, -0.842708, 900, 100, 1),
(10986, 185878, 530, 1, 1, -4254.68, 271.732, 122.544, 2.69181, 0, 0, 0.974818, 0.223, 900, 100, 1),
(10985, 185878, 530, 1, 1, -4729.09, 144.411, 79.9421, 5.87582, 0, 0, 0.202277, -0.979328, 900, 100, 1);
UPDATE `creature_template` SET `RegenHealth` = 0 WHERE `entry` = 29803;
UPDATE `creature_template` SET `RegenHealth` = 0 WHERE `entry` = 29747;
UPDATE `creature_template` SET `RegenHealth` = 0 WHERE `entry` = 29790;
UPDATE `creature_template` SET `mingold`=1600000,`maxgold`=1800000 WHERE `entry` IN (33113,34003);
UPDATE `creature_template` SET `mingold`=1100000,`maxgold`=1300000 WHERE `entry` IN (33118,33190);
UPDATE `creature_template` SET `mingold`=280000,`maxgold`=360000 WHERE `entry` IN (33186,33724);
UPDATE `creature_template` SET `mingold`=670000,`maxgold`=750000 WHERE `entry` IN (33293,33885);
UPDATE `creature_template` SET `mingold`=1680000,`maxgold`=1900000 WHERE `entry` IN (32857,33694);
UPDATE `creature_template` SET `mingold`=1680000,`maxgold`=1900000 WHERE `entry` IN (32927,33692);
UPDATE `creature_template` SET `mingold`=1680000,`maxgold`=1900000 WHERE `entry` IN (32867,33693);
UPDATE `creature_template` SET `mingold`=1220000,`maxgold`=1500000 WHERE `entry` IN (33515,34175);
UPDATE `creature_template` SET `mingold`=1650000,`maxgold`=1950000 WHERE `entry` IN (33271,33449);
UPDATE `creature_template` SET `mingold`=2020000,`maxgold`=2220000 WHERE `entry` IN (33288,33955);
UPDATE `creature_template` SET `mingold`=850000,`maxgold`=950000 WHERE `entry` IN (34797,35447,35448,35449);
UPDATE `creature_template` SET `mingold`=550000,`maxgold`=650000 WHERE `entry` IN (34780,35216,35268,35269);
UPDATE `creature_template` SET `mingold`=650000,`maxgold`=700000 WHERE `entry` IN (34497,35350,35351,35352,34496,35347,35348,35359);
UPDATE `creature_template` SET `mingold`=500000,`maxgold`=600000 WHERE `entry` IN (34564,34566,35615,35616);
REPLACE INTO `achievement_criteria_data` VALUES (6651,5,58818,0,'');
REPLACE INTO `achievement_criteria_data` VALUES (6651,16,201,0,'');
REPLACE INTO `achievement_criteria_data` VALUES (6652,5,58818,0,'');
REPLACE INTO `achievement_criteria_data` VALUES (6652,16,201,0,'');
REPLACE INTO `achievement_criteria_data` VALUES (6653,5,58818,0,'');
REPLACE INTO `achievement_criteria_data` VALUES (6653,16,201,0,'');
REPLACE INTO `achievement_criteria_data` VALUES (6654,5,58818,0,'');
REPLACE INTO `achievement_criteria_data` VALUES (6654,16,201,0,'');
REPLACE INTO `achievement_criteria_data` VALUES (6655,5,58818,0,'');
REPLACE INTO `achievement_criteria_data` VALUES (6655,16,201,0,'');
REPLACE INTO `achievement_criteria_data` VALUES (6656,5,58818,0,'');
REPLACE INTO `achievement_criteria_data` VALUES (6656,16,201,0,'');
REPLACE INTO `achievement_criteria_data` VALUES (6657,5,58818,0,'');
REPLACE INTO `achievement_criteria_data` VALUES (6657,16,201,0,'');
UPDATE `gameobject_template` SET `type`='3', `displayId`='4135', `name`='Sealed Tome', `data0`='43', `data3`='1', `data4`='0', `data7`='181831' WHERE `entry`=181833;
UPDATE `gameobject_template` SET `type`='3', `displayId`='417', `name`='Sealed Tome', `data0`='43', `data3`='1', `data4`='0', `data7`='181838' WHERE `entry`=181837;
UPDATE `gameobject_template` SET `type`='3', `displayId`='338', `name`='Sealed Tome', `data0`='43', `data2`='100', `data3`='0', `data4`='0', `data7`='181840' WHERE `entry`=181839;
UPDATE `gameobject_template` SET `type`='3', `displayId`='3731', `name`='Sealed Tome', `data0`='43', `data3`='1', `data4`='0', `data7`='181842' WHERE `entry`=181841;
UPDATE `gameobject_template` SET `type`='3', `displayId`='430', `name`='Sealed Tome', `data0`='43', `data3`='1', `data4`='0', `data7`='181844' WHERE `entry`=181843;
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`) VALUES
(181831, 6, 1287, 'TEMP Sealed Tome Trap', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30762, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(181838, 6, 1287, 'TEMP Sealed Tome Trap', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30763, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(181840, 6, 1287, 'TEMP Sealed Tome Trap', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30764, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(181842, 6, 1287, 'TEMP Sealed Tome Trap', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30765, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(181844, 6, 1287, 'TEMP Sealed Tome Trap', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30766, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE `gameobject_template` SET `size`='1' WHERE `entry`=270;
UPDATE `gameobject_template` SET `questItem1`='0' WHERE `entry`=184793;
UPDATE `gameobject_template` SET `questItem4`='0' WHERE `questItem4`=30527;
# type 5 in WDB
UPDATE `gameobject_template` SET `type`='6' WHERE `entry`=188187;
UPDATE `gameobject_template` SET `type`='0' WHERE `entry`=164729;
#
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1' WHERE `entry`=11937 AND `item`=4553;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='60', `groupid`='1' WHERE `entry`=11937 AND `item`=4784;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='10', `groupid`='1' WHERE `entry`=11937 AND `item`=4552;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='30' WHERE `entry`=11937 AND `item`=7912;
UPDATE `gameobject_template` SET `data1`='184810' WHERE `entry`=184811;
UPDATE `gameobject_template` SET `data1`='184810' WHERE `entry`=184812;
UPDATE `gameobject_template` SET `data1`='184810' WHERE `entry`=184813;
UPDATE `gameobject_template` SET `data1`='184810' WHERE `entry`=184814;
UPDATE `gameobject_template` SET `data1`='184810' WHERE `entry`=184815;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 184814;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 184810;
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(184810, 30524, -100, 0, 1, 1),(184810, 30525, -100, 0, 1, 1),(184810, 30526, -100, 0, 1, 1);
UPDATE `item_template` SET `Flags`='0' WHERE `entry` in (30503,23614,34868,37020,40970,41843,37200,42782);
UPDATE `gameobject_template` SET `data5`='0', `data6`='0' WHERE `entry`=141832;
UPDATE `gameobject_template` SET `data5`='0' WHERE `entry`=175124;
UPDATE `gameobject_template` SET `data9`='0', `data10`='0' WHERE `entry`=175706;
UPDATE `gameobject_template` SET `data0`='0', `data1`='0' WHERE `entry`=176304;
UPDATE `gameobject_template` SET `data0`='0', `data1`='0' WHERE `entry`=176307;
UPDATE `gameobject_template` SET `data0`='0', `data1`='0' WHERE `entry`=176308;
UPDATE `gameobject_template` SET `data0`='0', `data1`='0' WHERE `entry`=176309;
UPDATE `gameobject_template` SET `data16`='0' WHERE `entry`=180418;
UPDATE `gameobject_template` SET `data6`='0' WHERE `entry`=185547;
UPDATE `gameobject_template` SET `data5`='0', `data6`='0' WHERE `entry`=188133;
UPDATE `gameobject_template` SET `data5`='0' WHERE `entry`=188187;
UPDATE `gameobject_template` SET `data5`='0', `data6`='0' WHERE `entry`=189313;
UPDATE `gameobject_template` SET `data5`='0', `data6`='0' WHERE `entry`=190334;
UPDATE `gameobject_template` SET `data5`='0', `data6`='0' WHERE `entry`=190335;
UPDATE `gameobject_template` SET `data5`='0', `data6`='0' WHERE `entry`=190590;
UPDATE `gameobject_template` SET `data6`='0' WHERE `entry`=201969;
UPDATE `gameobject_template` SET `data0`='0', `data1`='0' WHERE `entry`=177726;
UPDATE `gameobject_template` SET `data0`='0' WHERE `entry`=179526;
UPDATE `gameobject_template` SET `data0`='0' WHERE `entry`=179532;
UPDATE `gameobject_template` SET `data0`='0' WHERE `entry`=179533;
UPDATE `gameobject_template` SET `data2`='0' WHERE `entry`=177243;
UPDATE `gameobject_template` SET `faction`='0' WHERE `entry`=177243;
UPDATE `gameobject_template` SET `data0`='93' WHERE `entry` in (290,1594,13949,21145,21146,21147,21148,36738,83763,103600,103628,103664,105169,105170,105171,105172,125477,126158,160836,160845,161495,164690,165554,165738,165739,166863,175165,175166,175264,175965,175966,176206,176207,176360,176325,176327,176360,177747,177964,179024,179025,179828,192824);
UPDATE `gameobject_template` SET `data0`='259' WHERE `entry` in (1723,2084,11713,11714,102985,164958,176189,177750,184691,188345,192556,192827,194213);
UPDATE `gameobject_template` SET `data0`='1713' WHERE `entry` in (2714);
UPDATE `gameobject_template` SET `data0`='57' WHERE `entry` in (2884,3694,19595,19602,19603,20725,20726,153472,153473,176944,181627,181645,182063,182541,184607);
UPDATE `gameobject_template` SET `data0`='97' WHERE `entry` in (20691);
UPDATE `gameobject_template` SET `data0`='1785' WHERE `entry` in (195036);
UPDATE `gameobject_template` SET `data0`='1818' WHERE `entry` in (193905,193967,194158,194159);
UPDATE `gameobject_template` SET `data0`='60' WHERE `entry` in (75297);
UPDATE `gameobject_template` SET `data0`='3' WHERE `entry` in (180248);
UPDATE `gameobject_template` SET `data0`='1690' WHERE `entry` in (182031,182050,182256,182542,182584,182797,182798,182799,182936,182937,182938,182940,182941,183767,183813,183814,183935,184031,184726,184727,184728,184744,185033,185562,185567,185569,185574,185577,186886,186912,187689,187981,188120,190459,190461,190462,190463,190464,190465,190466,190467,190468,190469,190470,190471,190472,190473,190474,190476,190477,190478,190479,190480,190481,190482,190500,190558,190578,190612,190613,190614,191180,191181,191182,191209,191210,188434,188518,188525,188530,188600,188601,188658,188659,188671,188675,188676,188677,188702,188703,188705,189293,190717,190718,190719,191530,191531,191532,191533,191534,191535,191536,191537,191567,191568,191770,191773,191843,192243,192676,192693,192773,193403,193404,193405,193406);
UPDATE `gameobject_template` SET `data0`='1691' WHERE `entry` in (184466,185541,184115,186266,186272,186273,186301,186329,186390,186450,186591,186619,186632,186684,186885,186950,186954,186955,187022,187023,187026,187027,187032,187033,187238,187381,187670,187671,187677,187683,188140,188262,188263,188351,188359,190394,190447,190453,190454,190455,190623,190624,190625,190937,190938,190947,191084,191179,188441,188442,188461,188499,188501,188502,188503,188670,189976,189983,189992,190208,190533,190534,190541,190542,190543,190552,190560,190561,190562,190563,190643,190660,190696,190702,190720,190778,191458,191519,191576,191708,191814,191815,192058,192081,192082,192127,192171,192172,192187,192188,192189,192190,192191,192192,192536,192788,192826,192941,192942,192943,192944,192945,193059,193091,193092,193199,193200,193201,193560,193561,193943,193944,193945,193946,193997,194238,194340,194341,194423,194424,195022,195037,195274,195344,201367,201384,201794,201937);
UPDATE `gameobject_template` SET `data0`='1635' WHERE `entry` in (186633,186634,186938,190354,191092,191780,191781,191782,191783,193196,193197);
UPDATE `gameobject_template` SET `data0`='1634' WHERE `entry` in (181366,187892,188192,188260,190586,191349,188462,192908,192909,193426,193603,193996,194126,194200,194201,194307,194308,194312,194313,194314,194324,194327,194331,194789,194821,194822,194957,194958,195046,195047,195323,195324,195374,195375,195631,195633,195635,195709,195710);
UPDATE `gameobject_template` SET `data0`='1649' WHERE `entry` in (185877);
#2061 not in 335
UPDATE `gameobject_template` SET `data0`='4' WHERE `entry` in (126337,126338,126339,126340,126341,126342,126345,151951,191300);
#
UPDATE `gameobject_template` SET `data0`='43' WHERE `entry` in (147557,148499,178084,178085,182053);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 177726;
UPDATE `gameobject_template` SET `data3`='16474' WHERE `entry`=175124;
UPDATE `gameobject_template` SET `data3`='0' WHERE `entry`=188187;
UPDATE `gameobject` SET `id`='177365' WHERE `guid`=6734;
UPDATE `gameobject` SET `id`='177366' WHERE `guid`=7581;
UPDATE `gameobject` SET `id`='177367' WHERE `guid`=9390;
UPDATE `gameobject` SET `id`='177397' WHERE `guid`=10356;
UPDATE `gameobject` SET `id`='177398' WHERE `guid`=15887;
UPDATE `gameobject` SET `id`='177399' WHERE `guid`=16548;
UPDATE `gameobject` SET `id`='177400' WHERE `guid`=16970;
DELETE FROM spell_scripts WHERE id=26374;
INSERT INTO spell_scripts (id, command, datalong) VALUES
(26374, 15, 26636);
Delete from creature_template_addon where entry=14517;
UPDATE creature_template SET InhabitType=InhabitType|4 WHERE entry IN (14517,14750,14965,11368);
DELETE FROM `creature` WHERE `guid` = 47928;
UPDATE `gameobject_template` SET `data1`='0' WHERE `entry` in (123331,123332,123333,176248,178244,178245,178246,182583,184796);
DELETE FROM `gameobject_loot_template` WHERE `entry` in (123331,123333,176248,178244,178245,182583,184796);
UPDATE `gameobject_template` SET `castBarCaption`='Burning' WHERE `entry` in (3189,3190,3192);
UPDATE `gameobject_template` SET `castBarCaption`='Using' WHERE `entry`=185234;
UPDATE `gameobject_template` SET `castBarCaption`='' WHERE `entry`=192259;

# partizanes
# INSERT IGNORE INTO `spell_scripts` (id,delay,command,datalong) VALUES ( '45102','0','15','45123');
INSERT IGNORE INTO `spell_scripts` (id,delay,command,datalong) VALUES ( '64142','0','15','63384');

# NeatElves
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-1' WHERE `item`=38642;
DELETE FROM `creature` WHERE `id` = 15041;
DELETE FROM `event_scripts` WHERE `id` = 8436;
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(8436, 3, 10, 14514, 3000000, 0, 145.4, 184.14, 94.31, 4.19),
(8436, 3, 10, 14514, 3000000, 0, 150.32, 172.59, 93.7, 3.12),
(8436, 20, 10, 14518, 3000000, 0, 144.35, 159.2, 93.07, 2.36),
(8436, 60, 10, 14513, 3000000, 0, 145.4, 184.14, 94.31, 4.19),
(8436, 60, 10, 14513, 3000000, 0, 150.32, 172.59, 93.7, 3.12),
(8436, 80, 10, 14520, 3000000, 0, 144.35, 159.2, 93.07, 2.36),
(8436, 120, 10, 14512, 3000000, 0, 145.4, 184.14, 94.31, 4.19),
(8436, 120, 10, 14512, 3000000, 0, 150.32, 172.59, 93.7, 3.12),
(8436, 140, 10, 14519, 3000000, 0, 144.35, 159.2, 93.07, 2.36),
(8436, 200, 10, 14511, 3000000, 0, 145.4, 184.14, 94.31, 4.19),
(8436, 200, 10, 14511, 3000000, 0, 150.32, 172.59, 93.7, 3.12),
(8436, 200, 10, 14511, 3000000, 0, 144.35, 159.2, 93.07, 2.36),
(8436, 230, 10, 14521, 3000000, 0, 144.35, 159.2, 93.07, 2.36),
(8436, 300, 10, 14516, 9000000, 0, 135.46, 155.2, 92.21, 2.49);
UPDATE `quest_end_scripts` SET `command`='9', `datalong`='6877', `datalong2`='5' WHERE `id`=970 AND `delay`=4 AND `command`=6877;
UPDATE `creature` SET `spawndist`='20', `MovementType`='1' WHERE `id`=23689;
UPDATE `creature` SET `spawndist`='20', `MovementType`='1' WHERE `id`=23680;
REPLACE INTO `creature_addon` (`guid`, `emote`) VALUES
(96602, 233);
DELETE FROM gameobject WHERE guid = '44392';
INSERT INTO gameobject VALUES ( 44392, 186679, 571, 1,1,944.508, -4463.98, 151.739, 5.12841, 0, 0, 0.545837, -0.837891, 180, 100, 1);
UPDATE creature SET position_x = '794.985840', position_y = '-4084.816650', position_z = '204.799347', orientation = '4.997269' WHERE guid = '116720';
UPDATE `creature_template` SET `lootid`='0' WHERE `entry`=32273;
UPDATE `creature_template` SET `lootid`='32273' WHERE `entry`=32313;
DELETE FROM `creature_loot_template` WHERE `entry` = 32313;
UPDATE `quest_template` SET `RequiredSkillId` = 0, `RequiredSkillPoints` = 0 WHERE `Id` = 384;
DELETE FROM `creature_template_addon` WHERE `entry`=29726;
INSERT INTO `creature_template_addon` (`entry`,`auras`) VALUES (29726,'61811');
UPDATE `quest_template` SET `PrevQuestId`='10551' WHERE `id`=10587;
UPDATE `quest_template` SET `PrevQuestId`='10552' WHERE `id`=10687;
UPDATE `db_script_string` SET `content_default`='About, the spirit of a tiger, $N appeals to you! Have put on us the force and help us to find answers to our questions!' WHERE `entry`=2000001239;

# Fix
DELETE FROM `spell_target_position` WHERE `id` IN (68081);
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(68081, 571, 5857.252, 516.8015, 599.82, 2.987);
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(10231, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

# Conditions
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=10343;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=9709;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=8648;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=9143;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=9062;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=8513;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=4362;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50410;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50380;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50379;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50378;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50377;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50376;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50375;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50374;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50372;
REPLACE INTO `conditions` VALUES ('4', '103711', '11513', '0', '0', '2', '0', '11511', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '23974', '0', '0', '31', '0', '3', '14758', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '21', '518', '0', '0', '8', '0', '1094', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7675', '9369', '0', '0', '8', '0', '10107', '0', '0', '0', '0', '', 'Show different gossip if player has rewarded quest 10107');
REPLACE INTO `conditions` VALUES ('15', '9062', '0', '0', '0', '9', '0', '11542', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9062', '1', '0', '0', '9', '0', '11533', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9143', '0', '0', '0', '28', '0', '11542', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '0', '0', '0', '9', '0', '13725', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9709', '0', '0', '0', '9', '0', '12630', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9709', '1', '0', '0', '9', '0', '12648', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6543', '0', '0', '0', '1', '0', '24746', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6543', '1', '0', '0', '1', '0', '24746', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6543', '2', '0', '0', '1', '0', '24746', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6543', '3', '0', '0', '1', '0', '24746', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6543', '4', '0', '0', '1', '0', '24746', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9792', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9792', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9793', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9793', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9794', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9794', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9062', '0', '0', '0', '9', '0', '11543', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9062', '1', '0', '0', '9', '0', '11532', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9143', '0', '0', '0', '28', '0', '11543', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '0', '0', '0', '1', '0', '62853', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9709', '0', '0', '0', '1', '0', '61438', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9709', '1', '0', '0', '2', '0', '38699', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6543', '0', '0', '0', '1', '0', '24782', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6543', '1', '0', '0', '1', '0', '24782', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6543', '2', '0', '0', '1', '0', '24782', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6543', '3', '0', '0', '1', '0', '24782', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6543', '4', '0', '0', '1', '0', '24782', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9792', '1', '0', '0', '15', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9792', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9793', '1', '0', '0', '15', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9793', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9794', '1', '0', '0', '15', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9794', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '0', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6543', '0', '0', '0', '1', '0', '24748', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6543', '1', '0', '0', '2', '0', '20447', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6543', '2', '0', '0', '2', '0', '20449', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6543', '3', '0', '0', '2', '0', '20448', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6543', '4', '0', '0', '2', '0', '20450', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9792', '2', '0', '0', '15', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9793', '2', '0', '0', '15', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9794', '2', '0', '0', '15', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7675', '9369', '0', '1', '8', '0', '10108', '0', '0', '0', '0', '', 'Show different gossip if player has rewarded quest 10108');
REPLACE INTO `gossip_menu` VALUES ('21', '518');
REPLACE INTO `gossip_menu` VALUES ('7675', '9369');
REPLACE INTO `gossip_menu` VALUES ('8229', '10231');
REPLACE INTO `gossip_menu_option` VALUES ('9062', '0', '0', 'I need to intercept the Dawnblade reinforcements.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9062', '1', '0', 'Speaking of action... I was ordered to take an attack from the air.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9143', '0', '0', '<Fly to the Dragonhawk in Sun\'s Reach.>', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10343', '0', '0', 'I am ready to fight!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9709', '0', '0', 'I\'ve lost Nass...', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9709', '1', '0', 'I\'ve lost my ensorcelled choker!', '1', '1', '9797', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6543', '0', '0', 'The day of the judgement has come, fiend! I challenge you to battle!', '1', '1', '1', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('6543', '1', '0', 'Prince Skaldrenox! I hold your signet! Heed my call!', '1', '1', '1', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('6543', '2', '0', 'Baron Kazum! I hold your signet! Heed my call!', '1', '1', '1', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('6543', '3', '0', 'High Marshal Whirlaxis! I hold your signet! Heed my call!', '1', '1', '1', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('6543', '4', '0', 'Lord Skwol! I hold your signet! Heed my call!', '1', '1', '1', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('4463', '0', '11', 'Yes. I do.', '16', '16', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9792', '0', '3', 'I seek training, Amal\'thazad.', '5', '16', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9792', '1', '0', 'I wish to unlearn my talents.', '1', '1', '4463', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9792', '2', '0', 'I wish to know about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9793', '0', '3', 'I seek training, Lady Alistra.', '5', '16', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9793', '1', '0', 'I wish to unlearn my talents.', '1', '1', '4463', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9793', '2', '0', 'I wish to know about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9794', '0', '3', 'I seek training, Lord Thorval.', '5', '16', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9794', '1', '0', 'I wish to unlearn my talents.', '1', '1', '4463', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9794', '2', '0', 'I wish to know about Dual Talent Specialization.', '1', '1', '10371', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('8229', '0', '0', 'Fly me to Ultris', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('8207', '0', '0', 'I need a new phase disruptor, professor.', '1', '1', '1', '0', '0', '0', null);
UPDATE `quest_template` SET `ZoneOrSort` = 1 WHERE `Id` = 384;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=3 AND SourceGroup=1222 AND SourceEntry=13755;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=3 AND SourceGroup=3140 AND SourceEntry=13755;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=10 AND SourceEntry=13755;
DELETE FROM `event_scripts` WHERE `id` in (18762,182024,188596);
DELETE FROM `db_script_string` WHERE entry=2000005191;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=26902);
DELETE FROM conditions WHERE SourceTypeOrReferenceId=4 AND SourceGroup=181249;
UPDATE `conditions` SET `SourceEntry`='0' WHERE `SourceGroup` in (597,900,980,1012,1042,1043,1120,1141,1142,1423,1467,1468,1701,1970,2404,2562,2685,2742,2747,2750,2761,2781,2782) AND `SourceEntry`=1 AND SourceTypeOrReferenceId=15;
UPDATE `conditions` SET `SourceEntry`='0' WHERE `SourceGroup` in (4118,7892,8671,9480,3624,4018,7931,9010,10174,10421,50010,4144,4341,7148,9924,9986,3181,4241,7893,8301,9715,3310,3625,4019,7935,8254,9501,10422,50011,5667,7713,7966,8494,9456,9687,9987,11361,4158,4354,7187,9485,9548,10226,50304,4020,9895,10423,50012,5851,7153,8064,9772,9988,6658,6855,7898,8863,50305,5739,9165,9668,10424,4148,4345,8718,9046,9584,10627,3201,7219,8002,8085,9253,50306,4022,4305,9900,10425,8719,3202,4358,4762,7921,11032,50307,7579,7947,8622,8918,9677,9750,10426,50413,3067,8382,9537,2783,3203,4359,6864,7922,8553,9495,10036,50308,4137,4183,7769,8623,8934,9831,3070,4151,4207,8383,9061,9474,4270,4781,6866,7923,9130,10417,6824,7771,10943,4349,5221,9542,50260,4128,7842,7925,8879,9131,10418,4140,5750,7772,9761,4115,7724,8661,10122,4016,7926,9132,10419,4187,4325,7494,10191,4116,4155,4742,5263,6848,8392,8982,10123,3622,4130,7927,8886,9892,10281,10420,4143,4944) AND `SourceEntry`=1 AND SourceTypeOrReferenceId=15;
UPDATE `conditions` SET `SourceEntry`='0' WHERE `SourceGroup` in (2061,6381,4324,6563,10280,5849,5848,8959) AND `SourceEntry`=2 AND SourceTypeOrReferenceId=15;
DELETE FROM `db_script_string` WHERE entry=2000000582;
DELETE FROM `db_script_string` WHERE entry=2000000583;
DELETE FROM `db_script_string` WHERE entry=2000000584;
DELETE FROM `db_script_string` WHERE entry=2000000585;
DELETE FROM `db_script_string` WHERE entry=2000000586;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=3 AND SourceEntry=13755;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50380;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50379;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50378;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50377;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50376;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50375;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50374;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50372;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=10 AND SourceGroup=13755;


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

UPDATE version SET `cache_id`= '621';
UPDATE version SET `db_version`= 'YTDB_0.14.5_R621_TC_R15679_TDBAI_335_RuDB_R49';
