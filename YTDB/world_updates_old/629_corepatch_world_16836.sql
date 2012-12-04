# RENAME TABLE `ip2nationcountries` TO `ip2nationCountries`;
              
-- CREATURE_TEMPLATE
-- Trash
UPDATE `creature_template` SET `speed_walk`=1.1 WHERE `entry`=17624;
UPDATE `creature_template` SET `AIName`='' WHERE `entry`=17398;
-- Broggok
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|256|512|2 WHERE `entry` IN(17380,18601);
-- GAMEOBJECT_TEMPLATE
UPDATE `gameobject_template` SET `ScriptName`='go_broggok_lever' WHERE `entry`=181982;
-- CREATURE_MODEL_INFO
-- Old modelid_other_gender 12471. Need to do this because modelid in creature uses creature_model_info, too... so it would still bug.
UPDATE `creature_model_info` SET `modelid_other_gender`=0 WHERE `modelid`=16332;
-- Revert a previous bad fix
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=17398;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN  (-85712,-85717,-85719,-85724) AND `source_type`=0;
DELETE FROM `gameobject_scripts` WHERE `id`=150441;
ALTER TABLE `creature_template` ADD `unit_flags2` int(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `unit_flags`;
DELETE FROM `spell_script_names` WHERE `spell_id` IN (41054, 63418, 69893, 45205, 69896, 57594);
INSERT INTO `spell_script_names` VALUES
(41054, "spell_gen_clone_weapon_aura"),
(63418, "spell_gen_clone_weapon_aura"),
(69893, "spell_gen_clone_weapon_aura"),
(45205, "spell_gen_clone_weapon_aura"),
(69896, "spell_gen_clone_weapon_aura"),
(57594, "spell_gen_clone_weapon_aura");
DELETE FROM `command` WHERE `name`='explorecheat';
DELETE FROM `command` WHERE `name`='taxicheat';
DELETE FROM `command` WHERE `name`='waterwalk';

DELETE FROM `command` WHERE `name`='cheat' OR `name` LIKE 'cheat%';
INSERT INTO `command` (`name`, `security`, `help`) VALUES 
('cheat',           2, 'Syntax: .cheat $subcommand\r\nType .cheat to see the list of possible subcommands or .help cheat $subcommand to see info on subcommands'),
('cheat god',       2, 'Syntax: .cheat god [on/off]\r\nEnables or disables your character''s ability to take damage.'),
('cheat casttime',  2, 'Syntax: .cheat casttime [on/off]\r\nEnables or disables your character''s spell cast times.'),
('cheat cooldown',  2, 'Syntax: .cheat cooldown [on/off]\r\nEnables or disables your character''s spell cooldowns.'),
('cheat power',     2, 'Syntax: .cheat power [on/off]\r\nEnables or disables your character''s spell cost (e.g mana).'),
('cheat waterwalk', 2, 'Syntax: .cheat waterwalk on/off\r\nSet on/off waterwalk state for selected player or self if no player selected.'),
('cheat explore',   2, 'Syntax: .cheat explore #flag\r\nReveal or hide all maps for the selected player. If no player is selected, hide or reveal maps to you.\r\nUse a #flag of value 1 to reveal, use a #flag value of 0 to hide all maps.'),
('cheat taxi',      2, 'Syntax: .cheat taxi on/off\r\nTemporary grant access or remove to all taxi routes for the selected character.\r\n If no character is selected, hide or reveal all routes to you.Visited taxi nodes sill accessible after removing access.');

-- Defending Your Title (13423)
-- Taking on All Challengers (12971)

SET @NPC_CHALLENGER      := 30012; -- Victorious Challenger
SET @QUEST1              := 12971;
SET @QUEST2              := 13423;
SET @GOSSIP_MENUID       := 9865;
SET @SPELL_SUNDER        := 11971; -- Sunder Armor
SET @SPELL_REND          := 11977; -- Rend

UPDATE `creature_template` SET `faction_A`=2109,`faction_H`=2109,`unit_flags`=0x8000,`npcflag`=0x1,`gossip_menu_id`=@GOSSIP_MENUID,`AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@NPC_CHALLENGER;

DELETE FROM `creature_template_addon` WHERE `entry`=@NPC_CHALLENGER;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`auras`) VALUES
(@NPC_CHALLENGER,0,0x0,0x1,'');

DELETE FROM `creature_text` WHERE `entry`=@NPC_CHALLENGER;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@NPC_CHALLENGER,0,0,'You will not defeat me!',12,0,100,0,0,0,'Victorious Challenger'),
(@NPC_CHALLENGER,0,1,'You''re not worthy of Thorim!',12,0,100,0,0,0,'Victorious Challenger'),
(@NPC_CHALLENGER,0,2,'Good luck...  You''ll need it!',12,0,100,0,0,0,'Victorious Challenger'),
(@NPC_CHALLENGER,0,3,'May the best win!',12,0,100,0,0,0,'Victorious Challenger');
DELETE FROM `smart_scripts` WHERE (`source_type`=0 AND `entryorguid`=@NPC_CHALLENGER) OR (`source_type`=9 AND `entryorguid`=@NPC_CHALLENGER*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC_CHALLENGER,0,0,0,25,0,100,0,0,0,0,0,2,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Victorious Challenger - On Reset - Set Default Faction'),
(@NPC_CHALLENGER,0,1,2,62,0,100,0,@GOSSIP_MENUID,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Victorious Challenger - On Gossip - Close Gossip'),
(@NPC_CHALLENGER,0,2,0,61,0,100,0,0,0,0,0,80,@NPC_CHALLENGER*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Victorious Challenger - On Gossip - Run Timed Script'),
(@NPC_CHALLENGER,0,3,0,9,0,100,0,0,5,5000,10000,11,@SPELL_SUNDER,0,0,0,0,0,2,0,0,0,0,0,0,0,'Victorious Challenger - On Range - Cast Sunder Armor'),
(@NPC_CHALLENGER,0,4,0,0,0,100,0,10000,15000,15000,20000,11,@SPELL_REND,0,0,0,0,0,2,0,0,0,0,0,0,0,'Victorious Challenger - IC - Cast Rend'),
(@NPC_CHALLENGER*100,9,0,0,0,0,100,0,1000,1000,1000,1000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Victorious Challenger - Timed - Talk'),
(@NPC_CHALLENGER*100,9,1,0,0,0,100,0,3000,3000,3000,3000,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,'Victorious Challenger - Timed - Set Faction Hostile'),
(@NPC_CHALLENGER*100,9,2,0,0,0,100,0,0,0,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Victorious Challenger - Timed - Attack Invoker');

-- Unlocking zuluhed chains
DELETE FROM `spell_script_names` WHERE `spell_id`=38790;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(38790, 'spell_unlocking_zuluheds_chains');
-- Lok'lira the Crone
SET @ENTRY := 29975;
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,9910,0,0,0,33,30467,0,0,0,0,0,7,0,0,0,0,0,0,0,'Loklira - gossip select 4 - The Hyldsmeet Kill credit'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Loklira - gossip select 4 - Close gossip');
-- Thorim
SET @THORIM :=29445;
UPDATE `creature` SET `modelid`=0 WHERE `id`=@THORIM;
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@THORIM;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@THORIM AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@THORIM,0,0,0,62,0,100,0,9926,0,0,0,33,30514,0,0,0,0,0,7,0,0,0,0,0,0,0,'Thorim - gossip select  - give quest credit');

-- Cold Hearted (12856)

SET @NPC_CAPTIVE_DRAKE        := 29708; -- Captive Proto-Drake
SET @NPC_FREED_DRAKE          := 29709; -- Freed Proto-Drake
SET @NPC_PRISONER             := 29639; -- Brunnhildar Prisoner
SET @NPC_LIBERATED            := 29734; -- Liberated Brunnhildar

SET @SPELL_SUM_FREE_DRAKE     := 55028; -- Summon Freed Proto-Drake
SET @SPELL_ICE_SHARD          := 55046; -- Ice Shard (Rank 3)
SET @SPELL_FREE_PRISONER      := 55048; -- Free Brunnhildar Prisoner
SET @AURA_IMPRISONMENT        := 54894; -- Icy Imprisonment


UPDATE `creature_template` SET `speed_walk`=1,`speed_run`=1.14286,`spell1`=@SPELL_ICE_SHARD,`HoverHeight`=4,`unit_flags`=0x1000008,`InhabitType`=4,`ScriptName`='npc_freed_protodrake' WHERE `entry`=@NPC_FREED_DRAKE;
UPDATE `creature_template` SET `unit_flags`=33554432,`AIName`='SmartAI' WHERE `entry`=@NPC_LIBERATED;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=@NPC_CAPTIVE_DRAKE;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`,`user_type`) VALUES
(@NPC_CAPTIVE_DRAKE,@SPELL_SUM_FREE_DRAKE,1,0);

DELETE FROM `creature_template_addon` WHERE `entry`=@NPC_FREED_DRAKE;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`auras`) VALUES
(@NPC_FREED_DRAKE,0,0x3000000,0x1,'55034 61183');

DELETE FROM `creature_text` WHERE `entry`=@NPC_FREED_DRAKE;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@NPC_FREED_DRAKE,0,0,'Return to Brunnhildar Village!',42,0,100,0,0,0,'Freed Proto-Drake'),
(@NPC_FREED_DRAKE,0,1,'The proto-drake smells freedom and flies homeward!',41,0,100,0,0,0,'Freed Proto-Drake');

DELETE FROM `spell_scripts` WHERE `id`=@SPELL_FREE_PRISONER;
INSERT INTO `spell_scripts` (`id`,`effIndex`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(@SPELL_FREE_PRISONER,0,0,14,@AURA_IMPRISONMENT,0,0,0,0,0,0);

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@NPC_LIBERATED;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC_LIBERATED,0,0,0,54,0,100,0,0,0,0,0,41,30000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Liberated Brunnhildar - On Spawn - Despawn in 30 seconds');

SET @Spell := 28715; -- Flamecap Fire
DELETE FROM `spell_bonus_data` WHERE `entry`=@Spell;
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(@Spell,0,0,0,0, 'Flamecap Fire');
UPDATE `creature_template` SET `unit_flags2`=`unit_flags2`|0x800; -- UNIT_FLAG2_REGENERATE_POWER
DELETE FROM spell_script_names WHERE spell_id = -755;
INSERT IGNORE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(-755, 'spell_warl_health_funnel');
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (10304,10313);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(10304,5,62320,0,''),
(10304,12,0,0,''),
(10313,5,62320,0,''),
(10313,12,1,0,'');
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry` IN (32930,33909); -- Kologarn
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (3368, 3369, 3370, 12578, 7623, 3371);
INSERT INTO `achievement_criteria_data`(`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(3368,2,0,0,''),
(3369,2,0,0,''),
(3370,2,0,0,''),
(12578,2,0,0,''),
(7623,2,0,0,''),
(3371,2,0,0,'');
DELETE FROM `command` WHERE `name` = 'start';
DELETE FROM `command` WHERE `name` = 'unstuck';
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('unstuck', 0, 'Syntax: .unstuck $playername [inn/graveyard/startzone]\n\nTeleports specified player to specified location. Default location is player\'s current hearth location.');
DELETE FROM `trinity_string` WHERE `entry`=63; -- Existing entry 63 is not present in Language.h. It's safe to remove it.
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES
(63, 'You can''t do that right now.');
-- Gift of the Naaru
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_gen_gift_of_naaru';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(28880,'spell_gen_gift_of_naaru'), -- SPELLFAMILY_WARRIOR
(59542,'spell_gen_gift_of_naaru'), -- SPELLFAMILY_PALADIN
(59543,'spell_gen_gift_of_naaru'), -- SPELLFAMILY_HUNTER
(59544,'spell_gen_gift_of_naaru'), -- SPELLFAMILY_PRIEST
(59545,'spell_gen_gift_of_naaru'), -- SPELLFAMILY_DEATHKNIGHT
(59547,'spell_gen_gift_of_naaru'), -- SPELLFAMILY_SHAMAN
(59548,'spell_gen_gift_of_naaru'); -- SPELLFAMILY_MAGE
DELETE FROM `spell_bonus_data` WHERE `entry` IN (28880,59542,59543,59544,59545,59547,59548);
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(28880,0,0,0,0,'Warrior - Gift of the Naaru'),
(59542,0,0,0,0,'Paladin - Gift of the Naaru'),
(59543,0,0,0,0,'Hunter - Gift of the Naaru'),
(59544,0,0,0,0,'Priest - Gift of the Naaru'),
(59545,0,0,0,0,'Deathknight - Gift of the Naaru'),
(59547,0,0,0,0,'Shaman - Gift of the Naaru'),
(59548,0,0,0,0,'Mage - Gift of the Naaru');
UPDATE `quest_template` SET `OfferRewardText`='Excellent, $N. You''ve saved me a lot of work!$b$bBut don''t think that I''m not grateful!' WHERE `Id`=6571;
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|256 WHERE `entry` IN (36897, 38138); -- Little Ooze
-- Cast Armistice in front of the pavillions as well
DELETE FROM `spell_area` WHERE `spell`=64373 AND `area` IN (4676, 4677);
INSERT INTO `spell_area` (`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES
(64373,4676,0,0,0,0,0,2,1), -- Sunreaver Pavillion
(64373,4677,0,0,0,0,0,2,1); -- SIlver Covenant Pavillion
UPDATE `quest_template` SET `SpecialFlags` = 0, `RequiredSpellCast1` = 0 WHERE `ID` = 10256;
DELETE FROM `event_scripts` WHERE id=12857;
INSERT INTO `event_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(12857,0,10,19938,3000000,0,2248.43,2227.97,138.56,2.48121),
(12857,1,8,19938,1,0,0,0,0,0);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry`=20243;
DELETE FROM `smart_scripts` WHERE `entryorguid`=20243 AND `id`=0 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(20243,0,0,0,8,0,100,0,256,0,0,0,19,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Scrapped Fel Reaver - On Spellhit - Remove - OOC Not attackable - flags");
UPDATE `creature_model_info` SET `modelid_other_gender`=4264 WHERE `modelid`=4261; -- Female orc grunt
UPDATE `creature_model_info` SET `modelid_other_gender`=4263 WHERE `modelid`=4262; -- Female tauren
UPDATE `creature_model_info` SET `modelid_other_gender`=4262 WHERE `modelid`=4263; -- Male tauren
UPDATE `creature_model_info` SET `modelid_other_gender`=4261 WHERE `modelid`=4264; -- Male orc grunt
-- ToCr orbs

SET @NPC_ORB1  := 34606; -- Frost Sphere
SET @NPC_ORB2  := 34649; -- Frost Sphere

UPDATE `creature_template` SET `speed_walk`=1.2,`speed_run`=1.42,`InhabitType`=7 WHERE `entry` IN (@NPC_ORB1,@NPC_ORB2);

DELETE FROM `creature_template_addon` WHERE `entry` IN (@NPC_ORB1,@NPC_ORB2);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`auras`) VALUES
(@NPC_ORB1,0,0x3000000,0x1,''),
(@NPC_ORB2,0,0x3000000,0x1,'');
ALTER TABLE `item_template` CHANGE unk0 SoundOverrideSubclass tinyint(3) NOT NULL DEFAULT '-1';
-- Add support for quest ID: 11008 - "Fires Over Skettis" based on Warpten fix and Nelegalno/shlomi1515 updates
-- Also add support for achievement - http://www.wowhead.com/achievement=1275/bombs-away
SET @TRIGGER :=  22991;
SET @EGG :=     185549;
SET @SKYBLAST := 39844;
SET @SUMMEGG :=  39843;
-- Adds SAI support for Monstrous Kaliri Egg Trigger and the GO
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@TRIGGER;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@TRIGGER AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@TRIGGER*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@TRIGGER,0,0,0,25,0,100,0,0,0,0,0,11,@SUMMEGG,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Monstrous Kaliri Egg Trigger - On spawn/reset - Summon Monstrous Kaliri Egg (object wild)'),
(@TRIGGER,0,1,2,8,0,100,0,@SKYBLAST,0,0,0,33,@TRIGGER,0,0,0,0,0,16,0,0,0,0,0,0,0, 'Monstrous Kaliri Egg Trigger - On Skyguard Blasting Charge hit - Give kill credit to invoker party'),
(@TRIGGER,0,2,3,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,20,@EGG,1,0,0,0,0,0, 'Monstrous Kaliri Egg Trigger - Linked with previous event - Despawn'),
(@TRIGGER,0,3,0,61,0,100,0,0,0,0,0,80,@TRIGGER*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Monstrous Kaliri Egg Trigger - Linked with previous event - Start script 0'),
(@TRIGGER*100,9,0,0,0,0,100,0,44000,44000,0,0,11,@SUMMEGG,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Monstrous Kaliri Egg Trigger /On actionlist/ - Action 0 - Cast Summon Monstrous Kaliri Egg');
-- Add SAI for Cannonball Stack
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=@EGG;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=@EGG;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@EGG,1,0,0,38,0,100,0,0,1,0,0,70,45,0,0,0,0,0,1,0,0,0,0,0,0,0,' Monstrous Kaliri Egg - On data set 0 1 - Respawn object /make it reappear after 45 secs/');
-- Quest support for http://www.wowhead.com/quest=11010 "Bombing Run", http://www.wowhead.com/quest=11102 "Bombing Run" /druid/ and http://www.wowhead.com/quest=11023 "Bomb Them Again!"
-- Achievement support for http://www.wowhead.com/achievement=1282 and http://www.wowhead.com/achievement=1276,
-- Based on Warpten Script
SET @SKYGUARD_BOMB       := 32456;
SET @Run_Dummy           := 23118;
SET @Explosion_Bunny     := 23119;
SET @Flak_Cannon         := 23076;
SET @Flak_Cannon2        := 23082;
SET @Fel_Cannon_Dummy    := 23077;
SET @RUN_MARK            := 40196;
SET @THROW_BOMB          := 40160;
SET @EXPLOSION_VISUAL    := 40162;
SET @See_Invisibility    := 40195;
SET @Invisibility        := 40194;
SET @CANNONBALL_STACK   := 185861;
-- Add class requirements for druid version of "Bombing Run"
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `Id`=11102;
-- Add SAI support for Bombing Run Target Dummy
UPDATE `creature_template` SET `AIName`='SmartAI',`flags_extra`=`flags_extra`|128 WHERE `entry`=@Run_Dummy;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@Run_Dummy;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Run_Dummy;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@Run_Dummy*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Run_Dummy,0,0,1,8,0,100,0,@THROW_BOMB,0,1000,1000,33,@Run_Dummy,0,0,0,0,0,16,0,0,0,0,0,0,0, 'Run Target Dummy - On spell Throw Bomb hit - Give kill credit to invoker party'),
(@Run_Dummy,0,1,2,61,0,100,0,0,0,0,0,28,@RUN_MARK,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Run Target Dummy - Linked with previous event - Remove auras from hunter mark'),
(@Run_Dummy,0,2,3,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,20,@CANNONBALL_STACK,3,0,0,0,0,0, 'Run Target Dummy - Linked with previous event - Data set 0 1 on Cannonball Stack'),
(@Run_Dummy,0,3,4,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,@Explosion_Bunny,3,0,0,0,0,0, 'Run Target Dummy - Linked with previous event - Data set 0 1 on Explosion Bunny'),
(@Run_Dummy,0,4,0,61,0,100,0,0,0,0,0,80,@Run_Dummy*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Run Target Dummy - Linked with previous event - Start script 0'),
(@Run_Dummy*100,9,0,0,0,0,100,0,29000,29000,0,0,11,@RUN_MARK,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Run Target Dummy - Action 0 - Cast run mark on self');
-- Add SAI for Cannonball Stack
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=@CANNONBALL_STACK;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=@CANNONBALL_STACK;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@CANNONBALL_STACK,1,0,0,38,0,100,0,0,1,0,0,70,30,0,0,0,0,0,1,0,0,0,0,0,0,0,' Cannonball Stack - On data set 0 1 - Respawn object /make it reappear after 30 secs/');
-- Add SAI support for Bombing Run Fel Cannon Dummy
UPDATE `creature_template` SET `AIName`='SmartAI',`unit_flags`=4,`flags_extra`=`flags_extra`|128 WHERE `entry`=@Fel_Cannon_Dummy;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Fel_Cannon_Dummy;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Fel_Cannon_Dummy,0,0,0,8,0,100,0,40110,0,4350,5000,11,40119,0,0,0,0,0,19,@Flak_Cannon,5,0,0,0,0,0, 'Fel Cannon Dummy - On spell hit by Cannon trigger - Cast Aggro Burst on Flak Cannon');
-- Add SAI support for Bombing Run Flak Cannon
UPDATE `creature_template` SET `AIName`='SmartAI',`unit_flags`=`unit_flags`|4|256|131072,`flags_extra`=`flags_extra`|2 WHERE `entry`=@Flak_Cannon;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Flak_Cannon;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Flak_Cannon,0,0,0,25,0,100,0,0,0,0,0,11,40111,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Flak Cannon - On reset - Cast The Aggro Bunnies'),
(@Flak_Cannon,0,1,2,8,0,100,0,41598,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Flak Cannon - On hit by Bolt Pair - Set orientation to invoker'),
(@Flak_Cannon,0,2,0,61,0,100,0,0,0,0,0,11,40109,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Flak Cannon - Linked with previous event - Cast spell The Bolt');
-- Add SAI support for Bombing Run Flak Cannon 2 /target bunny/
UPDATE `creature_template` SET `AIName`='SmartAI',`flags_extra`=`flags_extra`|128,`InhabitType`=4 WHERE `entry`=@Flak_Cannon2;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Flak_Cannon2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Flak_Cannon2,0,0,0,54,0,100,0,0,0,0,0,11,41598,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Flak Cannon 2 - On just summoned - Cast The Bolt Pair on invoker'),
(@Flak_Cannon2,0,1,2,8,0,100,0,40109,0,0,0,11,40075,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Flak Cannon 2 - On spell hit Cannon Bolt - Cast on self Fel Flak Fire'),
(@Flak_Cannon2,0,2,0,61,0,100,0,0,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Flak Cannon 2 - Linked with previous event - Despawn in 5 sec');
-- Add SAI support for Explosion Bunny
UPDATE `creature_template` SET `AIName`='SmartAI',`flags_extra`=`flags_extra`|128,`unit_flags`=0 WHERE `entry`=@Explosion_Bunny;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Explosion_Bunny;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Explosion_Bunny,0,0,0,38,0,100,0,0,1,0,0,11,@EXPLOSION_VISUAL,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Explosion Bunny - On data set 0 1 - Cast Explosion Visual on self');
-- Add conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (@THROW_BOMB,40110,40112,40075);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry` IN (@THROW_BOMB,40200,41598,40111);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=@Fel_Cannon_Dummy;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`Comment`) VALUES
(17,0,@THROW_BOMB,0,29,0,@Run_Dummy,35,0,0,0,'Throw Bomb requires Run Target Dummy within 35y'),
(13,1,@THROW_BOMB,0,31,0,3,@Run_Dummy,0,0,0,'Throw Bomb implicit effect 0 can hit only Run Target Dummy'),
(13,1,@THROW_BOMB,0,1,0,@RUN_MARK,0,0,0,0,'Throw Bomb can hit only targets under the aura of 40196'),
(17,0,40200,0,9,0,11010,0,0,1,0,'To cast remove see invisibility player must not be on quest 11010'),
(17,0,40200,0,9,0,11102,0,0,1,0,'To cast remove see invisibility player must not be on quest 11102'),
(17,0,40200,0,9,0,11023,0,0,1,0,'To cast remove see invisibility player must not be on quest 11023'),
(13,1,40110,0,31,0,3,23077,0,0,0,'Cannon Trigger implicit targets can be only Fel Cannon Dummies'),
(13,1,40110,0,35,0,1,65,2,0,0,'Cannon Trigger implicit hit can happen only on targets under 65 yards range'),
(17,0,40111,0,29,0,@Fel_Cannon_Dummy,10,0,1,0,'The Aggro Bunnies caster should not be around Fel Cannon Dummies to cast'),
(13,1,40112,0,31,0,4,0,0,0,0,'Bombing Run Dummy aggro check can hit players'),
(13,3,40075,0,31,0,4,0,0,0,0,'Fel Flak Fire effect 2 can hit only players'),
(22,1,@Fel_Cannon_Dummy,0,1,1,40119,0,0,1,0,'Fel Cannon Dummy event 0 will happen only if target is missing aura from aggro burst');
-- Insert addon data
DELETE FROM `creature_template_addon` WHERE `entry` IN (@Run_Dummy,@Explosion_Bunny,@Fel_Cannon_Dummy);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@Run_Dummy,0,0,0,0,'40196 40194 40195'), -- Mark, See Invisibility, Invisibility
(@Explosion_Bunny,0,0,0,0,'40194 40195'), -- See Invisibility, Invisibility
(@Fel_Cannon_Dummy,0,0,0,0,'40113'); -- The Aggro Check Aura
-- Remove achievement from disabled
DELETE FROM `disables` WHERE `sourceType`=4 AND `entry`=3923;
-- Add missing spell from dbc
DELETE FROM `spell_dbc` WHERE `Id`=40200;
INSERT INTO `spell_dbc` (`Id`,`Dispel`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`AttributesEx6`,`AttributesEx7`,`Stances`,`StancesNot`,`Targets`,`CastingTimeIndex`,`AuraInterruptFlags`,`ProcFlags`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`RangeIndex`,`StackAmount`,`EquippedItemClass`,`EquippedItemSubClassMask`,`EquippedItemInventoryTypeMask`,`Effect1`,`Effect2`,`Effect3`,`EffectDieSides1`,`EffectDieSides2`,`EffectDieSides3`,`EffectRealPointsPerLevel1`,`EffectRealPointsPerLevel2`,`EffectRealPointsPerLevel3`,`EffectBasePoints1`,`EffectBasePoints2`,`EffectBasePoints3`,`EffectMechanic1`,`EffectMechanic2`,`EffectMechanic3`,`EffectImplicitTargetA1`,`EffectImplicitTargetA2`,`EffectImplicitTargetA3`,`EffectImplicitTargetB1`,`EffectImplicitTargetB2`,`EffectImplicitTargetB3`,`EffectRadiusIndex1`,`EffectRadiusIndex2`,`EffectRadiusIndex3`,`EffectApplyAuraName1`,`EffectApplyAuraName2`,`EffectApplyAuraName3`,`EffectAmplitude1`,`EffectAmplitude2`,`EffectAmplitude3`,`EffectMultipleValue1`,`EffectMultipleValue2`,`EffectMultipleValue3`,`EffectMiscValue1`,`EffectMiscValue2`,`EffectMiscValue3`,`EffectMiscValueB1`,`EffectMiscValueB2`,`EffectMiscValueB3`,`EffectTriggerSpell1`,`EffectTriggerSpell2`,`EffectTriggerSpell3`,`EffectSpellClassMaskA1`,`EffectSpellClassMaskA2`,`EffectSpellClassMaskA3`,`EffectSpellClassMaskB1`,`EffectSpellClassMaskB2`,`EffectSpellClassMaskB3`,`EffectSpellClassMaskC1`,`EffectSpellClassMaskC2`,`EffectSpellClassMaskC3`,`MaxTargetLevel`,`SpellFamilyName`,`SpellFamilyFlags1`,`SpellFamilyFlags2`,`SpellFamilyFlags3`,`MaxAffectedTargets`,`DmgClass`,`PreventionType`,`DmgMultiplier1`,`DmgMultiplier2`,`DmgMultiplier3`,`AreaGroupId`,`SchoolMask`,`Comment`) VALUES
(40200,0,0,256,0,0,0,0,0,0,0,0,0,0,1,0,0,101,0,0,0,0,26,1,0,-1,0,0,164,0,0,0,0,0,0,0,0,0,0,0,0,0,0,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,40195,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,'Bombing Run: See Invisibility Aura Remover');
-- Spell area - Check to cast remove aura /against see invisibility aura/, if having it and not on quest
DELETE FROM `spell_area` WHERE `spell`=40200;
INSERT INTO `spell_area` (`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES
(40200,3522,0,0,0,@See_Invisibility,0,2,1);
-- Add spell script name for Fires Over Skettis and Bombing Run quests
DELETE FROM `spell_script_names` WHERE `spell_id`=40113;
DELETE FROM `spell_script_names` WHERE `spell_id`=40160;
DELETE FROM `spell_script_names` WHERE `spell_id`=39844;
DELETE FROM `spell_script_names` WHERE `spell_id`=40056;
DELETE FROM `spell_script_names` WHERE `spell_id`=40112;
DELETE FROM `spell_script_names` WHERE `spell_id`=40119;
INSERT INTO `spell_script_names` VALUES
(39844,'spell_q11010_q11102_q11023_q11008_check_fly_mount'),
(40160,'spell_q11010_q11102_q11023_q11008_check_fly_mount'),
(40113,'spell_q11010_q11102_q11023_aggro_check_aura'),
(40056,'spell_q11010_q11102_q11023_choose_loc'),
(40112,'spell_q11010_q11102_q11023_aggro_check'),
(40119,'spell_q11010_q11102_q11023_aggro_burst');
DELETE FROM `spell_target_position` WHERE `id` IN (60323,60324,60325,60326,60327,60328,60329,60330,60331,60332,60333,60334,60335);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(60323,0,-5506.339,-704.348,392.686,0.595), -- Steelgrills Depot
(60324,0,-9470.760,3.909,49.794,4.802), -- Lions Pride Inn, Goldshire
(60325,1,-3721.306,-4411.906,25.247,0.831), -- Theramore isle, Dustwallow Marsh
(60326,0,286.314,-2184.086,122.612,2.271), -- Aerie Peak, The Hinterlands
(60327,1,6395.708,433.256,33.260,0.566), -- Auberdine, Darkshore
(60328,0,-14412.923,692.017,22.248,1.231), -- Boote Bay
(60329,1,-7135.717,-3787.769,8.799,5.992), -- Tanaris, Gadgetzan
(60330,0,-10336.138,-2934.057,116.723,4.523), -- Swamp of Sorrows, Z coord is intended
(60331,0,-10446.900,-3261.909,20.179,5.875), -- Stonard, Swamp of Sorrows
(60332,0,-103.988,-902.795,55.534,5.924), -- Tarren Mill, Hillsbrad Foothils
(60333,0,1804.836,196.322,70.399,1.572), -- Undercity
(60334,1,-1060.266,23.137,141.455,5.967), -- Thunder Bluff
(60335,1,-506.224,-2590.084,113.150,2.445); -- Barrens, The Crossroads
DELETE FROM `command` WHERE `name` = 'cheat status';
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('cheat status', 2, 'Syntax: .cheat status \n\nShows the cheats you currently have enabled.');
DELETE FROM `trinity_string` WHERE `entry` BETWEEN 357 AND 362;
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES
(357, 'Cheat Command Status:'),
(358, 'Godmode: %s.'),
(359, 'Casttime: %s.'),
(360, 'Cooldown: %s.'),
(361, 'Power: %s.'),
(362, 'Waterwalk: %s.');
UPDATE `smart_scripts` SET `event_param1` = 35282, `action_param1` = 256, `comment` = 'Scrapped Fel Reaver - On Spellhit - Remove - OOC Not attackable - flags'  WHERE `entryorguid` = 20243;
DELETE FROM `achievement_criteria_data` WHERE `type`=11 and `criteria_id` IN (7323,7324,7325);
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES
(7323,11,0,0,'achievement_ruby_void'),
(7324,11,0,0,'achievement_emerald_void'),
(7325,11,0,0,'achievement_amber_void');
DELETE FROM `creature_template_addon` WHERE `entry`=28670; -- Frostbrood Vanquisher
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES 
(28670,0,0,0x3000000,0x1,0,'53112');
-- Add support for quest ID: 11008 - "Fires Over Skettis" Warpten fix and Nelegalno/shlomi1515 updates
-- Also add support for achievement - http://www.wowhead.com/achievement=1275/bombs-away
-- Fix previous SQL what is not changed is not included
SET @TRIGGER := 22991;
SET @EGG := 185549;
SET @SKYBLAST := 39844;
SET @SUMMEGG := 39843;
-- Adds SAI support for Monstrous Kaliri Egg Trigger and the GO
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@TRIGGER;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@TRIGGER AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@TRIGGER*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@TRIGGER,0,0,0,25,0,100,0,0,0,0,0,11,@SUMMEGG,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Monstrous Kaliri Egg Trigger - On spawn/reset - Summon Monstrous Kaliri Egg (object wild)'),
(@TRIGGER,0,1,2,8,0,100,0,@SKYBLAST,0,0,0,33,@TRIGGER,0,0,0,0,0,16,0,0,0,0,0,0,0, 'Monstrous Kaliri Egg Trigger - On Skyguard Blasting Charge hit - Give kill credit to invoker party'),
(@TRIGGER,0,2,0,61,0,100,0,0,0,0,0,80,@TRIGGER*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Monstrous Kaliri Egg Trigger - Linked with previous event - Start script 0'),
(@TRIGGER*100,9,0,0,0,0,100,0,44000,44000,0,0,11,@SUMMEGG,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Monstrous Kaliri Egg Trigger /On actionlist/ - Action 0 - Cast Summon Monstrous Kaliri Egg');
-- Add conditions (thanks to Vincent-Michael for adding and Shauren for noticing my failure miss)
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=@SKYBLAST;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,@SKYBLAST,0,0,31,0,3,22991,0,0,0,'','Skyguard Blasting Charge can hit only Monstrous Kaliri Egg Trigger'),
(13,2,@SKYBLAST,0,0,31,0,5,185549,0,0,0,'','Skyguard Blasting can hit only Monstrous Kaliri Egg');
-- Remove SAI for Cannonball Stack
UPDATE `gameobject_template` SET `AIName`='' WHERE `entry`=@EGG;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@EGG AND `source_type`=1;
DELETE FROM spell_script_names WHERE scriptName="spell_dru_savage_roar";
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES
(52610, 'spell_dru_savage_roar');
DELETE FROM spell_bonus_data WHERE entry IN (33778,33763);
INSERT INTO spell_bonus_data (entry, direct_bonus, dot_bonus, ap_bonus, ap_dot_bonus, comments) VALUES
(33778, 0, 0, 0, 0, 'Druid - Lifebloom final heal'),
(33763, 0.516, 0.0952, 0, 0, 'Druid - Lifebloom HoT(rank 1)');
DELETE FROM `spell_bonus_data` WHERE `entry` = 61840;
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`, `dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(61840, 0, 0, 0, 0, 'No bonus for Righteous Vengance DoT');
DELETE FROM `spell_proc_event` WHERE `entry` IN (48492,48494,48495);
DELETE FROM `spell_script_names` WHERE `spell_id` IN(-5217, -5229);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(-5217, "spell_dru_tiger_s_fury"),
(-5229, "spell_dru_enrage");
UPDATE `script_texts` SET `sound`=5802 WHERE `npc_entry`=4832 AND `entry`='-1048002';
UPDATE `creature_template` SET `unit_flags2`=0 WHERE `entry`=33109; -- Salvaged Demolisher
UPDATE `creature_template` SET `unit_flags2`=2049 WHERE `entry`=33063; -- Wrecked Siege Engine
UPDATE `creature_template` SET `unit_flags2`=1 WHERE `entry`=33059; -- Wrecked Demolisher
UPDATE `creature_template` SET `unit_flags2`=0 WHERE `entry`=33167; -- Salvaged Demolisher Mechanic Seat
-- Razorscale
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry` IN (33186,33724);
DELETE FROM `creature_template_addon` WHERE `entry` IN (33186,33724);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(33186, 0, 0x3000000, 0x1, ''),
(33724, 0, 0x3000000, 0x1, '');
-- Edit the required spell credit markers for Dwarfageddon (10/25 player) achievements
UPDATE `spell_dbc` SET `attributes`=0x00800100,`DmgMultiplier1`=0, `DmgMultiplier2`=0, `DmgMultiplier3`=0,`RangeIndex`=12 WHERE `ID`=65387; -- (SPELL_ATTR0_HIDE_IN_COMBAT_LOG, SPELL_ATTR0_CASTABLE_WHILE_DEAD)
-- Edit SAI support for Dwarfageddon (10 and 25 player) achievement /required changes since attribute castable_while_dead is not working/
SET @Defender := 33236;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Defender AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Defender,0,0,0,25,0,100,0,0,0,0,0,42,0,1,0,0,0,0,1,0,0,0,0,0,0,0,'Steelforged Defender - On reset - Set Invincibility for 1%'),
(@Defender,0,1,2,2,0,100,0,1,1,0,0,11,65387,0,0,0,0,0,1,0,0,0,0,0,0,0,'Steelforged Defender - Health Percentage (1%) - Cast spell for achievement credit'),
(@Defender,0,2,0,61,0,100,0,0,0,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Steelforged Defender - Linked with previous event - Die'),
(@Defender,0,3,0,0,0,100,0,0,2500,9000,12000,11,62845,0,0,0,0,0,2,0,0,0,0,0,0,0,'Steelforged Defender - IC - Hamstring'),
(@Defender,0,4,0,0,0,100,0,0,2600,13000,14000,11,50370,0,0,0,0,0,2,0,0,0,0,0,0,0,'Steelforged Defender - IC - Cast Sunder armor'),
(@Defender,0,5,0,0,0,100,0,500,4000,4500,9000,11,57780,0,0,0,0,0,2,0,0,0,0,0,0,0,'Steelforged Defender - IC - Cast Lightening Bolt');
-- Add conditions to prevent lag and for the sake of logic
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (65387);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,65387,0,1,31,0,4,0,0,0,0,'','Steelforged Defender kill credit for achievement can hit only players');
-- Keleseth
UPDATE `creature_template` SET `mechanic_immune_mask`=617289692 WHERE `entry` IN(23953,30748);
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=28419;
-- Dragonflayer runecaster
UPDATE `creature_template` SET `ScriptName`='',`AIName`='SmartAI' WHERE `entry`=23960;
UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask`|1  WHERE `entry` IN(23954,31673,23980,31674);
-- Throw axe dummy
UPDATE `creature_template` SET `unit_flags`=2|131072|33554432, `flags_extra`=`flags_extra`|2, `equipment_id`=720 WHERE `entry` IN(23997,31835);
-- Throw axe target
UPDATE `creature_template` SET `unit_flags`=2|4|256|512, `faction_A`=35, `faction_H`=35, `flags_extra`=`flags_extra`|128 WHERE `entry`=23996;
-- Dragonflayer runecaster
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=23960;
DELETE FROM `smart_scripts` WHERE `entryorguid`=23960 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `target_type`, `target_param2`, `comment`) VALUES 
(23960,1,0,2,5000,7000,14000,17000,11,42740,11,30,'Dragonflayer Runecaster - In combat - Cast Njords Rune of Protection'),
(23960,2,0,4,5000,7000,14000,17000,11,59616,11,30,'Dragonflayer Runecaster - In combat - Cast Njords Rune of Protection'),
(23960,3,0,2,1000,2000,15000,18000,11,54965, 1, 0,'Dragonflayer Runecaster - In combat - Cast Bolthorns Rune of Flame'),
(23960,4,0,4,1000,2000,15000,18000,11,59617, 1, 0,'Dragonflayer Runecaster - In combat - Cast Bolthorns Rune of Flame');

-- Frenzied geist
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=28419;
DELETE FROM `smart_scripts` WHERE `entryorguid`=28419 AND `source_type`=0;
INSERT INTO `smart_scripts`(`entryorguid`,`event_type`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`target_type`,`comment`) VALUES
(28419,0,5000,5000,30000,30000,11,40414,5,'Frenzied geist - In combat - Cast Fixate');

-- Difficulty data for spells used in utgarde keep
DELETE FROM `spelldifficulty_dbc` WHERE `id` IN(42669,42708,42750,42723,42729,43667,42702) OR `spellid0` IN(42669,42708,42750,42723,42729,43667,42702);
INSERT INTO `spelldifficulty_dbc`(`id`,`spellid0`,`spellid1`) VALUES
(42669,42669,59706), -- Smash
(42708,42708,59708), -- Staggering Roar
(42750,42750,59719), -- Throw Axe
(42723,42723,59709), -- Dark Smash
(42729,42729,59734), -- Dreadful Roar
(43667,43667,59389), -- Shadow Bolt
(42702,42702,59397); -- Decrepify

-- Ticking Time Bomb, Fixate
DELETE FROM `spell_script_names` WHERE `spell_id` IN(59686,40414);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(59686,'spell_ticking_time_bomb'),
(40414,'spell_fixate');

-- Quest: I was a lot of things
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_shadowmoon_tuber_node',`flags_extra`=`flags_extra`|128 WHERE `entry`=21347;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=36652;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`Comment`) VALUES 
(13,1,36652,31,3,21347,'Tuber Whistle targets Shadowmoon Valley Tuber Node');
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=21195;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=21195;
DELETE FROM `smart_scripts` WHERE `entryorguid`=21195 AND `source_type`=0;
INSERT INTO `smart_scripts`(`entryorguid`,`id`,`link`,`event_type`,`event_param2`,`action_type`,`action_param1`,`action_param2`,`target_type`,`target_param1`,`target_param2`,`comment`) VALUES
(21195,1,0,34,1,24,0,0, 1,    0,0, 'Domesticated Felboar - Movementinform - Evade (Required for core script npc_shadowmoon_tuber_node)'),
(21195,2,0,34,1,45,1,1,11,21347,5, 'Domesticated Felboar - Movementinform - Set data (Required for core script npc_shadowmoon_tuber_node)');
DELETE FROM `spell_script_names` WHERE `spell_id`=6940;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(6940, 'spell_pal_hand_of_sacrifice');
DELETE FROM `spell_script_names` WHERE `spell_id`=64205;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(64205, 'spell_pal_divine_sacrifice');
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (6668,6669,6670) AND `id`=0;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`) VALUES
-- source: https://github.com/TrinityCore/TrinityCore/issues/6653#issuecomment-6956847 ( thanks frostmourne ) + http://thottbot.com/item=21107#comments:id=885246 + http://thottbot.com/item=21106#comments:id=1159575
(6668,0,0,'<Take this book for the good of Azeroth!>',1,1,0,0,0,0,NULL),
(6669,0,0,'<Take this book for the good of Azeroth!>',1,1,0,0,0,0,NULL),
(6670,0,0,'<Take this book for the good of Azeroth!>',1,1,0,0,0,0,NULL);
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry` IN (180665,180666,180667);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (180665,180666,180667) AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(180665,1,0,1,62,0,100,0,6669,0,0,0,56,21107,1,0,0,0,0,7,0,0,0,0,0,0,0,'Draconic for Dummies - take book for quest - The Only Prescription'),
(180665,1,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Draconic for Dummies - close gossip'),
(180666,1,0,1,62,0,100,0,6670,0,0,0,56,21106,1,0,0,0,0,7,0,0,0,0,0,0,0,'Draconic for Dummies - take book for quest - The Only Prescription'),
(180666,1,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Draconic for Dummies - close gossip'),
(180667,1,0,1,62,0,100,0,6668,0,0,0,56,21109,1,0,0,0,0,7,0,0,0,0,0,0,0,'Draconic for Dummies - take book for quest - The Only Prescription'),
(180667,1,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Draconic for Dummies - close gossip');
-- Cloak of shadow should not provide immunity to Flare Closes #7856
DELETE FROM `spell_linked_spell` WHERE  `spell_trigger`=31224 AND `spell_effect`=-1543 AND `type`=2;
-- NPC Spells
UPDATE `creature_template` SET `spell1` = 56746, `spell2` = 56748, `spell3` = 56747, `spell4` = 60540 WHERE `entry` = 30403;
-- Fix Brann's Communicator Closes #5835 author gecko32
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=61122 AND `spell_effect`=55038;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES 
(61122, 55038, 0, 'Contact Brann');
-- Fix Black Bruise proc Scaling author Vincent-Michael Closes #7040
-- Fix Warlock Death Coil SP Coeff. Closes #3584
DELETE FROM `spell_bonus_data` WHERE `entry` IN (6489,71878,71879);
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
# (6489,0.2143,0,0,0,'Spell Power Coeff for Death Coil'),
(71878,0,0,0,0,'Item - Black Bruise: Heroic Necrotic Touch Proc'),
(71879,0,0,0,0,'Item - Black Bruise: Necrotic Touch Proc');

-- Fix proc for Elemental Focus author Warpten Closes #7769
DELETE FROM `spell_proc_event` WHERE `entry`=16164;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(16164, 0x1C, 0x0B, 0x98101417, 0x80043000, 0x00002004, 0x00010000, 0x00000002, 0, 100, 0);
-- Fix quest Gammothra the tormentor author gacko Closes #7770
UPDATE `creature_template` SET `minlevel`=71,`maxlevel`=71,`faction_A`=14,`faction_H`=14 WHERE `entry`=25790;
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=25789;
DELETE FROM `smart_scripts` WHERE `entryorguid`=25789 AND `source_type`=0;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=25789;
INSERT INTO `smart_scripts`(`entryorguid`,`event_type`,`event_param1`,`action_type`,`action_param1`,`target_type`,`comment`) VALUES
(25789,8,46012,36,25790,1,'Gammothra the Tormentor - On spell hit - Update entry to Weakened Gammothra');
-- Fix Plague Siphon ability (74074) in Lich King encounter in instance Icecrown Citadel, may only target LK (36597) author elron103 Closes #7729
DELETE FROM `conditions` WHERE `SourceEntry` = 74074 AND `SourceTypeOrReferenceId` = 13;
INSERT INTO `conditions` (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, ErrorTextId, ScriptName, Comment) VALUES
(13, 1, 74074, 0, 0, 31, 0, 3, 36597, 0, 0, 0, '', 'Plague Siphon may only target The Lich King');
-- Arena Master (18706) loot fix
UPDATE `item_template` SET `flagsCustom`=flagsCustom|2 WHERE `entry`=18706;
-- X Marks... Your Doom! (11166) quest fix by nelegalno Closes #7528
-- For some reason the script doesn't trigger if `flags_extra` = 128 is set
UPDATE `creature_template` SET `unit_flags` = 33554432, `flags_extra` = 0 WHERE `entry` = 23815;

-- Whitebark's Memory (10166) fix despawn timer author nelegalno Closes #7521
-- TODO: Find fix for one-shot kill by high level players
UPDATE `smart_scripts` SET `event_param1`=60000, `event_param2`=60000, `event_param3`=60000, `event_param4`=60000, `comment`="Whitebark's Spirit - after 60sec OOC - despawn" WHERE `entryorguid`=19456 AND `id`=5;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@NPC1,@NPC2,@NPC3);
SET @GOSSIP1 := 6690; -- need confirmation
SET @GOSSIP2 := 6691; -- need confirmation
SET @GOSSIP3 := 6692; -- need confirmation
SET @NPC1 := 15609;
SET @NPC2 := 15610;
SET @NPC3 := 15611;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@NPC1,@NPC2,@NPC3);
-- Scripts
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC1,@NPC2,@NPC3) AND source_type=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC1,0,0,1,62,0,100,0,@GOSSIP1,0,0,0,11,25847,1,0,0,0,0,7,0,0,0,0,0,0,0,"Cenarion Scout Landion - on gossip option select - cast Create Hive'Regal Scout Report"),
(@NPC1,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Cenarion Scout Landion - Link - close gossip"),
(@NPC2,0,0,1,62,0,100,0,@GOSSIP2,0,0,0,11,25843,1,0,0,0,0,7,0,0,0,0,0,0,0,"Cenarion Scout Azenel - on gossip option select - cast Create Hive'Zora Scout Report"),
(@NPC2,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Cenarion Scout Azenel - Link - close gossip"),
(@NPC3,0,0,1,62,0,100,0,@GOSSIP3,0,0,0,11,25845,1,0,0,0,0,7,0,0,0,0,0,0,0,"Cenarion Scout Jalia - on gossip option select - ast Create Hive'Ashi Scout Report"),
(@NPC3,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Cenarion Scout Jalia - Link - close gossip");
