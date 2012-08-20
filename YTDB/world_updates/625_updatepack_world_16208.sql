# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 624_FIX_16126 625_FIX_16208 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('625_FIX_16208');

# TC
DELETE FROM `script_texts` WHERE entry IN (-1534019, -1534020, -1534021, -1534022, -1534023, -1534024, -1534025, -1534026, -1534027, -1534028, -1534029 , -1534030);

-- Anetheron
DELETE FROM `creature_text` WHERE `entry`=17808;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(17808,0,0, 'The clock... is still... ticking.',14,0,100,0,0,10982, 'Anetheron - SAY_ONDEATH'),
(17808,1,0, 'Your hopes are lost!',14,0,100,0,0,10981, 'Anetheron - SAY_ONSLAY1'),
(17808,1,1, 'Scream for me!',14,0,100,0,0,11038, 'Anetheron - SAY_ONSLAY2'),
(17808,1,2, 'Pity, no time for a slow death!',14,0,100,0,0,11039, 'Anetheron - SAY_ONSLAY3'),
(17808,2,0, 'The swarm is eager to feed!',14,0,100,0,0,10979, 'Anetheron - SAY_SWARM1'),
(17808,2,1, 'Pestilence upon you!',14,0,100,0,0,11037, 'Anetheron - SAY_SWARM2'),
(17808,3,0, 'You look tired...',14,0,100,0,0,10978, 'Anetheron - SAY_SLEEP1'),
(17808,3,1, 'Sweet dreams...',14,0,100,0,0,11545, 'Anetheron - SAY_SLEEP2'),
(17808,4,0, 'Let fire rain from above!',14,0,100,0,0,10980, 'Anetheron - SAY_INFERNO1'),
(17808,4,1, 'Earth and sky shall burn!',14,0,100,0,0,11036, 'Anetheron - SAY_INFERNO2'),
(17808,5,0, 'You are defenders of a doomed world! Flee here, and perhaps you will prolong your pathetic lives!',14,0,100,0,0,10977, 'Anetheron - SAY_ONAGGRO');

-- Azgalor
DELETE FROM `creature_text` WHERE `entry`=17842;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(17842,0,0, 'Your time is almost... up',14,0,100,0,0,11002, 'Azgalor - SAY_ONDEATH'),
(17842,1,0, 'Reesh, hokta!',14,0,100,0,0,11001, 'Azgalor - SAY_ONSLAY1'),
(17842,1,1, 'Don''t fight it',14,0,100,0,0,11048, 'Azgalor - SAY_ONSLAY2'),
(17842,1,2, 'No one is going to save you',14,0,100,0,0,11047, 'Azgalor - SAY_ONSLAY3'),
(17842,2,0, 'Just a taste... of what awaits you',14,0,100,0,0,11046, 'Azgalor - SAY_DOOM1'),
(17842,2,1, 'Suffer you despicable insect!',14,0,100,0,0,11000, 'Azgalor - SAY_DOOM2'),
(17842,3,0, 'Abandon all hope! The legion has returned to finish what was begun so many years ago. This time there will be no escape!',14,0,100,0,0,10999, 'Azgalor - SAY_ONAGGRO');

-- Kazrogal
DELETE FROM `creature_text` WHERE `entry`=17888;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(17888,0,0, 'Shaza-Kiel!',14,0,100,0,0,11017, 'Kazrogal - SAY_ONSLAY1'),
(17888,0,1, 'You... are nothing!',14,0,100,0,0,11053, 'Kazrogal - SAY_ONSLAY2'),
(17888,0,2, 'Miserable nuisance!',14,0,100,0,0,11054, 'Kazrogal - SAY_ONSLAY3'),
(17888,1,0, 'Your death will be a painful one.',14,0,100,0,0,11016, 'Kazrogal - SAY_MARK1'),
(17888,1,1, 'You... are marked.',14,0,100,0,0,11052, 'Kazrogal - SAY_MARK2'),
(17888,2,0, 'Cry for mercy! Your meaningless lives will soon be forfeit.',14,0,100,0,0,11015, 'Kazrogal - SAY_ONAGGRO');

-- Rage Winterchill
DELETE FROM `creature_text` WHERE `entry`=17767;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(17767,0,0, 'You have won this battle, but not... the... war',14,0,100,0,0,11026, 'Rage Winterchill - SAY_ONDEATH'),
(17767,1,0, 'All life must perish!',14,0,100,0,0,11025, 'Rage Winterchill - SAY_ONSLAY1'),
(17767,1,1, 'Victory to the Legion!',14,0,100,0,0,11057, 'Rage Winterchill - SAY_ONSLAY2'),
(17767,2,0, 'Crumble and rot!',14,0,100,0,0,11023, 'Rage Winterchill - SAY_DECAY1'),
(17767,2,1, 'Ashes to ashes, dust to dust',14,0,100,0,0,11055, 'Rage Winterchill - SAY_DECAY2'),
(17767,3,0, 'Succumb to the icy chill... of death!',14,0,100,0,0,11024, 'Rage Winterchill - SAY_NOVA1'),
(17767,3,1, 'It will be much colder in your grave',14,0,100,0,0,11058, 'Rage Winterchill - SAY_NOVA2'),
(17767,4,0, 'The Legion''s final conquest has begun! Once again the subjugation of this world is within our grasp. Let none survive!',14,0,100,0,0,11022, 'Rage Winterchill - SAY_ONAGGRO');

-- Archimonde
DELETE FROM `creature_text` WHERE `entry`=17968;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(17968,1,0, 'Your resistance is insignificant.',14,0,100,0,0,10987, 'Archimonde - SAY_AGGRO'),
(17968,2,0, 'This world will burn!',14,0,100,0,0,10990, 'Archimonde - SAY_DOOMFIRE1'),
(17968,2,1, 'Manach sheek-thrish!',14,0,100,0,0,11041, 'Archimonde - SAY_DOOMFIRE2'),
(17968,3,0, 'A-kreesh!',14,0,100,0,0,11041, 'Archimonde - SAY_AIR_BURST1'),
(17968,3,1, 'Away vermin!',14,0,100,0,0,10989, 'Archimonde - SAY_AIR_BURST2'),
(17968,4,0, 'All creation will be devoured!',14,0,100,0,0,11044, 'Archimonde - SAY_SLAY1'),
(17968,4,1, 'Your soul will languish for eternity.',14,0,100,0,0,10991, 'Archimonde - SAY_SLAY12'),
(17968,4,2, 'I am the coming of the end!',14,0,100,0,0,11045, 'Archimonde - SAY_SLAY3'),
(17968,5,0, 'At last it is here. Mourn and lament the passing of all you have ever known and all that would have been! Akmin-kurai!',14,0,100,0,0,10993, 'Archimonde - SAY_ENRAGE'),
(17968,6,0, 'No, it cannot be! Nooo!',14,0,100,0,0,10992, 'Archimonde - SAY_DEATH'),
(17968,7,0, 'You are mine now.',14,0,100,0,0,10988, 'Archimonde - SAY_SOUL_CHARGE1'),
(17968,7,1, 'Bow to my will.',14,0,100,0,0,11042, 'Archimonde - SAY_SOUL_CHARGE2');

DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (7626,7634);
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES
(7626, 11, 0, 0, 'achievement_not_even_a_scratch'),
(7634, 11, 0, 0, 'achievement_not_even_a_scratch');

-- Add SAI for Dark Ritualist <Cult of the Damned> ID: 34734 // timings are taken from other script finds
SET @Ritualist := 34734;
UPDATE `creature_template` SET  `AIName`='SmartAI' WHERE `entry`=@Ritualist;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Ritualist;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Ritualist,0,0,0,0,0,100,0,3000,3000,8000,14000,11,32000,0,0,0,0,0,2,0,0,0,0,0,0,0,'Dark Ritualist - IC - Cast Mind Seer'),
(@Ritualist,0,1,0,0,0,100,0,8000,17300,17300,17300,11,32026,0,0,0,0,0,2,0,0,0,0,0,0,0,'Dark Ritualist - IC - Cast Pain Strike');

-- Fix quest the Air Stands Still ID: 13125 + some lurking around mobs SAIs
-- Set guids:
SET @NPC := 43480; -- Underking Talonox in phase 2, in phase 128->@NPC+1
SET @PATH := @NPC;
-- Salranax the Flesh Render SAI
UPDATE `creature_template` SET  `faction_A`=2068, `faction_H`=2068, `mindmg`=240, `maxdmg`=270, `mechanic_immune_mask`=10685, `scale`=1.2 WHERE `entry`=30829;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=30829;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=30829;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(30829,0,1,0,8,0,100,1,57906,0,0,0,12,30840,4,5000,0,0,0,1,0,0,0,0,0,0,0,'Salranax the Flesh Render - Summons Munch on hit by horn'),
(30829,0,2,0,8,0,100,1,57906,0,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'On spellhit set aggro'),
(30829,0,3,0,4,0,100,1,0,0,0,0,11,18100,1,0,0,0,0,1,0,0,0,0,0,0,0,'On aggro - Frost Armor'),
(30829,0,4,0,0,0,100,0,2000,6000,4000,8000,11,15242,1,0,0,0,0,2,0,0,0,0,0,0,0,'Combat - Cast Fireball'),
(30829,0,5,0,0,0,100,0,15000,20000,15000,20000,11,15244,0,0,0,0,0,0,0,0,0,0,0,0,0,'Combat - Cast Cone of Cold'),
(30829,0,6,0,0,0,100,0,25000,26000,25000,26000,11,15122,1,0,0,0,0,2,0,0,0,0,0,0,0,'Combat - Cast Counterspell'),
(30829,0,7,0,6,0,100,0,0,0,0,0,78,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reset script on death'),
(30829,0,8,0,25,0,100,0,0,0,0,0,28,18100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Remove buff on respawn');
--  Add SAI for Munch + weapon
UPDATE `creature_template` SET `faction_A`=290,`faction_H`=290, `equipment_id`=30840 WHERE`entry`=30840;
DELETE FROM `creature_equip_template` WHERE `entry`=30840;
INSERT INTO `creature_equip_template` VALUES
(30840,44948,0,0);
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=30840;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=30840;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(30840,0,1,0,4,0,100,1,0,0,0,0,12,30850,3,2000,0,0,0,1,0,0,0,0,0,0,0,'Summons portal'),
(30840,0,2,0,4,0,100,1,0,0,0,0,1,1,1000,0,0,0,0,1,0,0,0,0,0,0,0,'Welcome text'),
(30840,0,3,0,4,0,100,1,0,0,0,0,1,2,1000,0,0,0,0,1,0,0,0,0,0,0,0,'Welcome text 2'),
(30840,0,4,0,4,0,100,1,0,0,0,0,12,30851,4,1000,0,0,0,1,0,0,0,0,0,0,0,'Summons Melt'),
(30840,0,5,0,0,0,100,0,4000,6000,19000,20000,11,52372,2,0,0,0,0,0,0,0,0,0,0,0,0,'Combat Use - Icy Touch'),
(30840,0,6,0,0,0,100,0,4000,8000,10000,11000,11,52373,2,0,0,0,0,0,0,0,0,0,0,0,0,'Combat Use - Plague Strike'),
(30840,0,7,0,0,0,100,0,4000,7000,2000,3000,11,52374,0,0,0,0,0,0,0,0,0,0,0,0,0,'Combat Use - Blood Strike'),
(30840,0,8,0,5,0,100,1,0,0,0,0,1,3,1000,0,0,0,0,1,0,0,0,0,0,0,0,'Text 3'),
(30840,0,9,0,5,0,100,1,0,0,0,0,12,30850,2,40000,0,0,0,8,0,0,0,6831.7270020,585.404990,427.168011,0.8,'On out of combat opens portal');
-- Munch's Texts
DELETE FROM `creature_text` WHERE `entry`=30840;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(30840,1,1,'Say hello to my little friend!',12,0,100,0,0,0,'Munch arrival'),
(30840,2,2,'Arise Melt!',12,0,100,0,0,0,'Summon Melts'),
(30840,3,3,'We are done here. I am out.',12,0,100,0,0,0,'Munch oppening portal');
-- Switch Melts into helping faction
UPDATE `creature_template` SET `faction_A`=290, `faction_H`=290 WHERE `entry`=30851;
-- 2/3
-- High Priest Yath'amon SAI
UPDATE `creature_template` SET  `faction_A`=2068, `faction_H`=2068, `mindmg`=240, `maxdmg`=300,`mechanic_immune_mask`=10685, `scale`=1.2 WHERE `entry`=30831; -- Mana_mod /WDB/ should be exactly 40, if want insert it
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=30831;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=30831;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(30831,0,1,0,8,0,100,1,57906,0,0,0,12,30839,4,5000,0,0,0,1,0,0,0,0,0,0,0,'Summons Jayde on hit by horn'),
(30831,0,2,0,8,0,100,1,57906,0,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'On spellhit set aggro'),
(30831,0,3,0,0,0,100,0,2000,3000,6000,8000,11,61705,0,0,0,0,0,2,0,0,0,0,0,0,0,'Combat - Venomous Bite'), -- the spell only targets players as it should
(30831,0,4,0,0,0,100,0,2000,7000,10000,20000,11,4962,0,0,0,0,0,2,0,0,0,0,0,0,0,'Combat - Encasing Webs'),
(30831,0,5,0,0,0,100,0,2000,7000,8000,20000,11,38243,0,0,0,0,0,2,0,0,0,0,0,0,0,'Combat - Mind flay Webs'),
(30831,0,6,0,0,0,100,0,10000,15000,30000,35000,11,34322,0,0,0,0,0,2,0,0,0,0,0,0,0,'Combat - Psychic Scream'),
(30831,0,7,0,6,0,100,0,0,0,0,0,78,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reset script on death');
-- Add SAI for Jayde + weapon
UPDATE `creature_template` SET `faction_A`=290,`faction_H`=290, `mechanic_immune_mask`=20, `equipment_id`=30839,`scale`=1  WHERE `entry`=30839;
DELETE FROM `creature_equip_template` WHERE `entry`=30839;
INSERT INTO `creature_equip_template` VALUES
(30839,44926,0,0);
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=30839;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=30839;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(30839,0,1,0,4,0,100,1,0,0,0,0,12,30852,3,2000,0,0,0,1,0,0,0,0,0,0,0,'Summons portal'),
(30839,0,2,0,4,0,100,1,0,0,0,0,1,1,1000,0,0,0,0,1,0,0,0,0,0,0,0,'Welcome text'),
(30839,0,3,0,0,0,100,0,4000,6000,19000,20000,11,52372,2,0,0,0,0,0,0,0,0,0,0,0,0,'Combat Use - Icy Touch'),
(30839,0,4,0,0,0,100,0,4000,8000,10500,11000,11,52373,2,0,0,0,0,0,0,0,0,0,0,0,0,'Combat Use - Plague Strike'),
(30839,0,5,0,0,0,100,0,4000,7000,2000,2500,11,52374,0,0,0,0,0,0,0,0,0,0,0,0,0,'Combat Use - Blood Strike'),
(30839,0,6,0,5,0,100,1,0,0,0,0,1,2,1000,0,0,0,0,1,0,0,0,0,0,0,0,'Text 2'),
(30839,0,7,0,5,0,100,1,0,0,0,0,12,30852,2,40000,0,0,0,8,0,0,0,6865.674316,414.657349,472.700226,1.185621,'On out of combat opens portal');
-- Jayde Texts
DELETE FROM `creature_text` WHERE `entry`=30839;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(30839,1,1,'Too weak to finish your own battles? Very well then...',12,0,100,0,0,0,'Jayde arrival'),
(30839,2,2,'Anything else you need help with before I go? Right, I thought not...',12,0,100,0,0,0,'Oppens portal and dissapears');
-- 3/3
-- Underking Talonox SAI
UPDATE `creature_template` SET  `exp`=2,`faction_A`=2068,`faction_H`=2068,`InhabitType`=1,`mindmg`=320, `maxdmg`=330, `minlevel`=79, `maxlevel`=79, `mechanic_immune_mask`=10685 WHERE `entry`=30830;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=30830;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=30830;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(30830,0,1,0,8,0,100,1,57906,0,0,0,12,30838,4,5000,0,0,0,1,0,0,0,0,0,0,0,'Summons Mograine on hit by horn'),
(30830,0,2,0,8,0,100,1,57906,0,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'On spellhit set aggro'),
(30830,0,3,0,0,0,100,0,1000,2000,2000,7000,11,60802,1,0,0,0,0,2,0,0,0,0,0,0,0,'Combat - Mandible Crush'),
(30830,0,4,0,0,0,100,0,1500,2000,10000,15000,11,50283,0,0,0,0,0,0,0,2,0,0,0,0,0,'Combat - Blinding Swarm'),
(30830,0,5,0,6,0,100,0,0,0,0,0,78,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reset script on death');
--  Add SAI for Mograine + weapon
UPDATE `creature_template` SET `health_mod`=2401.3,`mana_mod`=1599.9,`unit_class`=2,`flags_extra`=131072, `faction_A`=290,`faction_H`=290, `minlevel`=83, `maxlevel`=83, `mindmg`=340, `maxdmg`=420, `equipment_id`=30838 WHERE`entry`=30838;
DELETE FROM `creature_equip_template` WHERE `entry`=30838;
INSERT INTO `creature_equip_template` VALUES
(30838,39344,39344,0);
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=30838;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=30838;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(30838,0,1,0,4,0,100,1,0,0,0,0,12,30850,3,2000,0,0,0,1,0,0,0,0,0,0,0,'Summons portal'),
(30838,0,2,0,4,0,100,1,0,0,0,0,1,1,1000,0,0,0,0,1,0,0,0,0,0,0,0,'Welcome text'),
(30838,0,3,0,0,0,100,0,4000,6000,19000,20000,11,52372,2,0,0,0,0,0,0,0,0,0,0,0,0,'Combat Use - Icy Touch'),
(30838,0,4,0,0,0,100,0,4000,8000,10000,11000,11,52373,2,0,0,0,0,0,0,0,0,0,0,0,0,'Combat Use - Plague Strike'),
(30838,0,5,0,0,0,100,0,4000,7000,5000,5000,11,49020,0,0,0,0,0,0,0,0,0,0,0,0,0,'Combat Use - Obliterete'),
(30838,0,6,0,5,0,100,1,0,0,0,0,1,2,1000,0,0,0,0,1,0,0,0,0,0,0,0,'Text 2'),
(30838,0,7,0,5,0,100,1,0,0,0,0,12,30841,2,40000,0,0,0,8,0,0,0,7190.895508,633.476440,488.506317,1.014229,'On out of combat opens portal');
-- Mograine Texts
DELETE FROM `creature_text` WHERE `entry`=30838;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(30838,1,1,'You challenge death itself! Come then, "King." Face the might of Mograine!',12,0,100,0,0,0,'Mograine"s arrival'),
(30838,2,1,'I will see you back at the Valley of Echoes. Suffer well, ally.',12,0,100,0,0,0,'Opens portal');
-- Underking pathing for phase 2
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=7169.797363,`position_y`=664.115479,`position_z`=492.375793, `orientation`=1.129528 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7169.797363,664.115479,490.875793,0,0,0,100,0),
(@PATH,2,7196.977051,627.252869,488.591461,0,0,0,100,0),
(@PATH,3,7231.509277,640.110535,484.103490,0,0,0,100,0),
(@PATH,4,7207.646484,677.654114,491.592255,0,0,0,100,0);
-- Underking pathing for phase 128
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=7169.797363,`position_y`=664.115479,`position_z`=492.375793, `orientation`=1.129528 WHERE `guid`=@NPC+1;
DELETE FROM `creature_addon` WHERE `guid`=@NPC+1;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC+1,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,7169.797363,664.115479,490.875793,0,0,0,100,0),
(@PATH,2,7196.977051,627.252869,488.591461,0,0,0,100,0),
(@PATH,3,7231.509277,640.110535,484.103490,0,0,0,100,0),
(@PATH,4,7207.646484,677.654114,491.592255,0,0,0,100,0);
-- 0/0 Thanks to Nay for helping with Gate's data.
-- Add missing data for the teleport spell
DELETE FROM `spell_target_position` WHERE `id`=57897; -- there was none, but just in case
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(57897,571,6383.445801,229.091522,397.031127,1.660376);
-- Add info for Munch's Death Gate spell click
UPDATE `creature_template` SET `unit_flags`=567296,`exp`=2,`speed_run`=1,`minlevel`=80, `maxlevel`=80,`AIName`="SmartAI",`npcflag`=16777216 WHERE `entry`=30850;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=30850;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`,`user_type`) VALUES
(30850,57897,2,1);
-- Addon data for creature 30850 (Death Gate (Munch))
DELETE FROM `creature_template_addon` WHERE `entry`=30850;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(30850,0,0,1,0, NULL); -- Death Gate (Munch)
-- Add info for Jayde's Death Gate spell click
UPDATE `creature_template` SET `exp`=2,`speed_run`=1,`unit_flags`=567296,`minlevel`=80, `maxlevel`=80,`unit_flags`=567296, `speed_run`=1,`AIName`="SmartAI",`npcflag`=16777216 WHERE `entry`=30852;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=30852;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`,`user_type`) VALUES
(30852,57897,2,1);
-- Model data 27346 (creature 30852 (Death Gate (Jayde)))
UPDATE `creature_model_info` SET `bounding_radius`=1.35,`combat_reach`=1.35,`gender`=2 WHERE `modelid`=27346; -- Death Gate (Jayde)
-- Addon data for creature 30852 (Death Gate (Jayde))
DELETE FROM `creature_template_addon` WHERE `entry`=30852;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(30852,0,0,1,0, NULL); -- Death Gate (Jayde)
-- Add info for Mograine's Death Gate spell click
UPDATE `creature_template` SET `unit_flags`=567296,`exp`=2,`speed_run`=1,`minlevel`=80, `maxlevel`=80,`AIName`="SmartAI",`npcflag`=16777216 WHERE `entry`=30841;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=30841;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`,`user_type`) VALUES
(30841,57897,2,1);
-- Addon data for creature 30841 (Death Gate (Mograine))
DELETE FROM `creature_template_addon` WHERE `entry`=30841;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(30841,0,0,1,0, NULL); -- Death Gate (Mograine)
-- Set SAI for Forgotten Depths Priest - ID: 30203
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 30203;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=30203;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(30203,0,1,0,0,0,100,0,2000,7000,10000,15000,11,4962,0,0,0,0,0,2,0,0,0,0,0,0,0,'Combat - Encasing Webs'),
(30203,0,2,0,0,0,100,0,2000,7000,6000,12000,11,32000,0,0,0,0,0,2,0,0,0,0,0,0,0,'Combat - Mind flay Webs');
-- Set SAI for Forgotten Depths Priest - ID: 30543
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 30543;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=30543;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(30543,0,1,0,0,0,100,0,2000,7000,10000,15000,11,4962,0,0,0,0,0,2,0,0,0,0,0,0,0,'Combat - Encasing Webs'),
(30543,0,2,0,0,0,100,0,2000,7000,6000,12000,11,32000,0,0,0,0,0,2,0,0,0,0,0,0,0,'Combat - Mind flay Webs');
-- Set SAI for Forgotten Depths Priest - ID: 31037
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`= 31037;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=31037;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(31037,0,1,0,0,0,100,0,2000,7000,10000,15000,11,4962,0,0,0,0,0,2,0,0,0,0,0,0,0,'Combat - Encasing Webs'),
(31037,0,2,0,0,0,100,0,2000,7000,6000,12000,11,32000,0,0,0,0,0,2,0,0,0,0,0,0,0,'Combat - Mind flay Webs');

UPDATE `item_template` SET `flagsCustom` = `flagsCustom` | 4 WHERE `entry` IN (50226,50231,50274);

# NeatElves
DELETE FROM `creature` WHERE `guid` in (78657,78658,78659,78661,78662,92537);
DELETE FROM `game_event_creature` WHERE `guid` in (78657,78658,78659,78661,78662,92537);
UPDATE `creature_template` SET `mechanic_immune_mask`='4096' WHERE`entry` IN ( 26116, 26178, 26215, 26216, 26204, 26214);
# REPLACE INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
# (2000000797, 'You will not stop the Frost Lord from entering this world, mortal. The Tidehunter''s might will crush that of Ragnaros once and for all, leaving your land a frozen paradise!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(7921, 188048, 1, 1, 1, -451.804, 2428.26, 97.4902, 2.59485, 0, 0, 0.962867, 0.269977, 300, 100, 1),
(7922, 188048, 1, 1, 1, -453.597, 2469.27, 103.641, 2.57365, 0, 0, 0.959951, 0.280169, 300, 100, 1),
(7924, 188048, 1, 1, 1, -484.563, 2418.44, 92.9163, 2.4527, 0, 0, 0.941263, 0.337673, 300, 100, 1),
(7927, 188050, 1, 1, 1, -484.547, 2418.35, 95.04, 4.00074, 0, 0, 0.909143, -0.416485, 300, 100, 1),
(7929, 188130, 1, 1, 1, -484.547, 2418.35, 95.04, 4.00074, 0, 0, 0.909143, -0.416485, 300, 100, 1),
(7930, 188134, 1, 1, 1, -451.48, 2428.39, 99.613, 1.07435, 0, 0, 0.51171, 0.859158, 300, 100, 1),
(7931, 188050, 1, 1, 1, -451.48, 2428.39, 99.613, 1.07435, 0, 0, 0.51171, 0.859158, 300, 100, 1),
(7939, 188050, 1, 1, 1, -453.475, 2469.57, 105.764, 4.27249, 0, 0, 0.844348, -0.535795, 300, 100, 1),
(7943, 188135, 1, 1, 1, -453.475, 2469.57, 105.764, 4.27249, 0, 0, 0.844348, -0.535795, 300, 100, 1),
(7944, 180443, 1, 1, 1, -437.058, 2454.98, 104.379, 1.73173, 0, 0, 0.761657, 0.647981, 300, 100, 1),
(7946, 180443, 1, 1, 1, -444.281, 2483.54, 109.91, 3.45568, 0, 0, 0.987694, -0.1564, 300, 100, 1),
(7947, 180443, 1, 1, 1, -477.613, 2435.51, 99.7521, 3.98112, 0, 0, 0.913186, -0.407543, 300, 100, 1),
(7951, 180443, 1, 1, 1, -466.644, 2378.89, 90.608, 2.71034, 0, 0, 0.976843, 0.213957, 300, 100, 1),
(7958, 188048, 1, 1, 1, 4204.72, 1144.22, 6.98726, 1.21494, 0, 0, 0.570793, 0.821094, 300, 100, 1),
(7961, 188048, 1, 1, 1, 4232.24, 1165.95, 6.63318, 1.15368, 0, 0, 0.54538, 0.838189, 300, 100, 1),
(7963, 188048, 1, 1, 1, 4244.86, 1142.61, 8.55724, 1.32647, 0, 0, 0.615668, 0.788005, 300, 100, 1),
(7964, 188048, 0, 1, 1, -6658.48, -671.881, 233.754, 4.30435, 0, 0, 0.835705, -0.549178, 300, 100, 1),
(7966, 188050, 0, 1, 1, -6658.53, -671.754, 235.877, 2.80896, 0, 0, 0.986201, 0.165551, 300, 100, 1),
(7967, 188146, 0, 1, 1, -6658.53, -671.754, 235.877, 2.80896, 0, 0, 0.986201, 0.165551, 300, 100, 1),
(7968, 188048, 0, 1, 1, -6615.13, -643.068, 233.754, 3.24721, 0, 0, 0.998606, -0.0527844, 300, 100, 1),
(7969, 188050, 0, 1, 1, -6615.01, -642.71, 235.878, 1.81229, 0, 0, 0.787132, 0.616785, 300, 100, 1),
(7979, 188145, 0, 1, 1, -6615.01, -642.71, 235.878, 1.81229, 0, 0, 0.787132, 0.616785, 300, 100, 1),
(7981, 188048, 0, 1, 1, -6657.7, -624.723, 233.754, 4.69784, 0, 0, 0.712232, -0.701944, 300, 100, 1),
(7985, 188050, 0, 1, 1, -6657.92, -624.499, 235.877, 4.24388, 0, 0, 0.851926, -0.523663, 300, 100, 1),
(7986, 188147, 0, 1, 1, -6657.92, -624.499, 235.877, 4.24388, 0, 0, 0.851926, -0.523663, 300, 100, 1),
(7987, 188048, 0, 1, 1, -12127, 928.081, 1.75122, 4.04832, 0, 0, 0.898979, -0.437991, 300, 100, 1),
(7989, 188050, 0, 1, 1, -12127.1, 928.181, 3.87438, 2.17515, 0, 0, 0.885502, 0.464635, 300, 100, 1),
(7990, 188144, 0, 1, 1, -12127.1, 928.181, 3.87438, 2.17515, 0, 0, 0.885502, 0.464635, 300, 100, 1),
(7992, 188048, 0, 1, 1, -12132.9, 828.782, 2.0982, 3.91796, 0, 0, 0.925598, -0.378507, 300, 100, 1),
(7994, 188050, 0, 1, 1, -12133.2, 829.01, 4.22155, 1.43846, 0, 0, 0.658805, 0.752314, 300, 100, 1),
(7995, 188139, 0, 1, 1, -12133.2, 829.01, 4.22155, 1.43846, 0, 0, 0.658805, 0.752314, 300, 100, 1),
(7998, 188048, 0, 1, 1, -12211.7, 845.226, 2.11477, 3.79387, 0, 0, 0.947287, -0.320387, 300, 100, 1),
(8000, 188050, 0, 1, 1, -12211.8, 845.397, 4.23842, 2.02829, 0, 0, 0.84903, 0.528344, 300, 100, 1),
(8003, 188143, 0, 1, 1, -12211.8, 845.397, 4.23842, 2.02829, 0, 0, 0.84903, 0.528344, 300, 100, 1),
(8004, 180443, 0, 1, 1, -12180.9, 861.721, 19.6073, 0.0710864, 0, 0, 0.0355357, 0.999368, 300, 100, 1),
(8011, 180443, 0, 1, 1, -12134.2, 870.977, 17.2041, 2.07542, 0, 0, 0.861243, 0.508194, 300, 100, 1),
(8012, 180443, 0, 1, 1, -12173.4, 919.371, 2.32766, 3.59517, 0, 0, 0.974394, -0.224849, 300, 100, 1),
(8013, 180443, 0, 1, 1, -12122.3, 788.935, 1.36789, 4.679, 0, 0, 0.718811, -0.695205, 300, 100, 1),
(8014, 180443, 0, 1, 1, -6603.1, -660.817, 236.806, 4.0263, 0, 0, 0.903746, -0.42807, 300, 100, 1),
(8015, 180443, 0, 1, 1, -6682.59, -653.133, 238.17, 3.97133, 0, 0, 0.91517, -0.403068, 300, 100, 1),
(8016, 188050, 1, 1, 1, 4232.24, 1165.95, 8.75745, 2.83172, 0, 0, 0.988022, 0.154316, 300, 100, 1),
(8020, 188050, 1, 1, 1, 4204.72, 1144.22, 9.11144, 3.02337, 0, 0, 0.998253, 0.0590794, 300, 100, 1),
(8021, 188050, 1, 1, 1, 4244.86, 1142.61, 10.6813, 5.95997, 0, 0, 0.160906, -0.98697, 300, 100, 1);
#
REPLACE INTO `game_event_gameobject` (`guid`, `evententry`) VALUES
(7921, 1),(7922, 1),(7924, 1),(7927, 1),(7929, 1),(7930, 1),(7931, 1),(7939, 1),(7943, 1),(7944, 1),(7946, 1),
(7947, 1),(7951, 1),(7958, 1),(7961, 1),(7963, 1),(7964, 1),(7966, 1),(7967, 1),(7968, 1),(7969, 1),(7979, 1),
(7981, 1),(7985, 1),(7986, 1),(7987, 1),(7989, 1),(7990, 1),(7992, 1),(7994, 1),(7995, 1),(7998, 1),(8000, 1),
(8003, 1),(8004, 1),(8011, 1),(8012, 1),(8013, 1),(8014, 1),(8015, 1),(8016, 1),(8020, 1),(8021, 1);
DELETE FROM `creature_questrelation` WHERE `quest` = 9388;
DELETE FROM `creature_questrelation` WHERE `quest` = 9389;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9388;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9389;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE `item`=35277;
DELETE FROM `creature` WHERE `guid` = 57697;
#пока так
DELETE FROM `spell_scripts` WHERE `id` = 47129;
INSERT INTO `spell_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`) VALUES ('47129', '5', '10', '25324', '60000');
UPDATE `creature` SET `spawndist`='10', `MovementType`='1' WHERE `id`=24637;
UPDATE `creature_template` SET `InhabitType`='2' WHERE `entry`=24637;
REPLACE INTO gameobject VALUES ( 8024, 188157, 530, 1,1,-356.299, 1127.84, 26.5148, 1.94543, 0, 0, 0.826418, 0.563057, 300, 100, 1);
REPLACE INTO gameobject VALUES ( 8025, 188157, 530, 1,1,-354.33, 1201.45, 25.6395, 5.93682, 0, 0, 0.172319, -0.985041, 300, 100, 1);
REPLACE INTO gameobject VALUES ( 8026, 180443, 530, 1,1,-375.669, 1174.44, 43.199, 4.2867, 0, 0, 0.840521, -0.54178, 300, 100, 1);
REPLACE INTO gameobject VALUES ( 8030, 180443, 530, 1,1,-366.262, 1116.92, 45.1493, 5.01005, 0, 0, 0.594438, -0.804141, 300, 100, 1);
REPLACE INTO gameobject VALUES ( 8035, 188156, 530, 1,1,-354.551, 1199.55, 40.588, 1.3713, 0, 0, 0.633177, 0.774007, 300, 100, 1);
REPLACE INTO gameobject VALUES ( 8037, 188156, 530, 1,1,-355.359, 1128.37, 41.5837, 4.39587, 0, 0, 0.80971, -0.586831, 300, 100, 1);
REPLACE INTO gameobject VALUES ( 8039, 188154, 530, 1,1,-355.359, 1128.37, 41.2813, 0.898492, 0, 0, 0.434287, 0.900775, 300, 100, 1);
REPLACE INTO gameobject VALUES ( 8038, 188153, 530, 1,1,-354.551, 1199.55, 40.588, 1.63284, 0, 0, 0.728699, 0.684834, 300, 100, 1);
REPLACE INTO gameobject VALUES ( 8033, 188157, 530, 1,1,-135.381, 1124.72, 26.5103, 2.93081, 0, 0, 0.93751, 0.347957, 300, 100, 1);
REPLACE INTO gameobject VALUES ( 8034, 188157, 530, 1,1,-138.619, 1193.59, 26.3212, 3.22672, 0, 0, 0.957508, -0.288407, 300, 100, 1);
REPLACE INTO gameobject VALUES ( 8042, 188156, 530, 1,1,-139.306, 1194.42, 40.7894, 2.70491, 0, 0, 0.976259, 0.216609, 300, 100, 1);
REPLACE INTO gameobject VALUES ( 8045, 188156, 530, 1,1,-134.93, 1125.98, 41.0515, 4.9543, 0, 0, 0.616622, -0.787259, 300, 100, 1);
REPLACE INTO gameobject VALUES ( 8049, 188152, 530, 1,1,-134.93, 1125.98, 41.0515, 6.21721, 0, 0, 0.0329815, -0.999456, 300, 100, 1);
REPLACE INTO gameobject VALUES ( 8050, 188151, 530, 1,1,-139.306, 1194.42, 40.3958, 4.36131, 0, 0, 0.819729, -0.572752, 300, 100, 1);
REPLACE INTO `game_event_gameobject` (`guid`, `evententry`) VALUES
(8024, 1),(8025, 1),(8026, 1),(8030, 1),(8035, 1),(8037, 1),(8039, 1),(8038, 1),(8033, 1),(8034, 1),(8042, 1),(8045, 1),(8049, 1),(8050, 1);
DELETE FROM `creature` WHERE `guid` = 52503;
UPDATE `creature_template` SET `gossip_menu_id`=8216 WHERE `entry`=20920;
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (8216, 10211);
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE `id` in (26223,26222,26166);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (9281, 12587);
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9367;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9322;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9323;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9368;
REPLACE INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('32801','13485'),('32802','13486'),('32803','13487'),('32804','13488'),('32805','13489'),('32806','13490'),('32807','13491'),('32808','13492'),('32809','13493'),('32810','13494'),('32811','13495'),('32812','13496'),('32813','13497'),('32814','13498'),('32815','13499'),('32816','13500');
REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES ('32801','13485'),('32802','13486'),('32803','13487'),('32804','13488'),('32805','13489'),('32806','13490'),('32807','13491'),('32808','13492'),('32809','13493'),('32810','13494'),('32811','13495'),('32812','13496'),('32813','13497'),('32814','13498'),('32815','13499'),('32816','13500');
UPDATE `quest_template` SET `RequiredRaces`='1101' WHERE `id` in (13485,13486,13487,13488,13489,13490,13491,13492);
UPDATE `quest_template` SET `RequiredRaces`='690' WHERE `id` in (13493,13494,13495,13496,13497,13498,13499,13500);
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83 WHERE `entry` = 26338;

# WDB
REPLACE INTO `npc_text` SET `ID`=15132,`prob0`=1,`text0_0`='The trolls are acting strangely, $n.  I don''t like it.  I don''t like it one bit.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15139,`prob0`=1,`text0_0`='Oh dear.  Things aren''t looking good for Felix.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15145,`prob0`=1,`text0_0`='How do you do, $c?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=6,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15131,`prob0`=1,`text0_0`='',`text0_1`='What d''ye want, $c?',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15140,`prob0`=1,`text0_0`='When d''ye think we can leave?  I need ta get back to work.',`text0_1`='When d''ye think we can leave?  I need ta get back to work.',`lang0`=0,`em0_0`=0,`em0_1`=6,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=1,`text1_0`='Where are all these troggs coming from?  Were they livin'' underground the whole time?',`text1_1`='Where are all these troggs coming from?  Were they livin'' underground the whole time?',`lang1`=0,`em1_0`=0,`em1_1`=6,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=1,`text2_0`='Might as well make yerself comfortable.  Ironstock''s not lettin'' anybody out until the troggs die down.',`text2_1`='Might as well make yerself comfortable.  Ironstock''s not lettin'' anybody out until the troggs die down.',`lang2`=0,`em2_0`=0,`em2_1`=1,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=1,`text3_0`='Have ye any news from outside?  I hear the trolls have been actin'' up too.',`text3_1`='Have ye any news from outside?  I hear the trolls have been actin'' up too.',`lang3`=0,`em3_0`=0,`em3_1`=1,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=1,`text4_0`='It''s gettin'' awful crowded in here.  I don''t do well in confined spaces.',`text4_1`='It''s gettin'' awful crowded in here.  I don''t do well in confined spaces.',`lang4`=0,`em4_0`=0,`em4_1`=1,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=1,`text5_0`='Ye''d think that, after an earthquake of cataclysmic proportions, the LAST place ye''d want ta be is indoors, wouldn''t ye?',`text5_1`='Ye''d think that, after an earthquake of cataclysmic proportions, the LAST place ye''d want ta be is indoors, wouldn''t ye?',`lang5`=0,`em5_0`=0,`em5_1`=5,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=1,`text6_0`='$N!  I hear you''re Ironstock''s new little whipping $r.  What''s she got ya doin'' now?',`text6_1`='$N!  I hear you''re Ironstock''s new little whipping $r.  What''s she got ya doin'' now?',`lang6`=0,`em6_0`=0,`em6_1`=1,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=1,`text7_0`='I feel like I''ve been cooped up in here forever.  Is it Brewfest yet?',`text7_1`='I feel like I''ve been cooped up in here forever.  Is it Brewfest yet?',`lang7`=0,`em7_0`=0,`em7_1`=5,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15141,`prob0`=1,`text0_0`='My gosh, it''s full of rocks!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=16074,`prob0`=1,`text0_0`='The Catacylsm has created chaos in Dun Morogh. The troggs have come to the surface in numbers we haven''t seen before, driving our traditional enemies, the Frostmane trolls, ever closer to our settlements.$B$BIronforge has dispatched my mountaineer company to help deal with the problems.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=1,`em0_4`=0,`em0_5`=1,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=19017,`prob0`=1,`text0_0`='',`text0_1`='I can show you the aftermath of Deathwing''s destruction at the Maelstrom, if you wish.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;

# NeatElves
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51907, 15388, 509, 1, 1, 0, 0, -9127.978, 1558.54346, 21.6878548, 1.79768908, 3600, 0, 0, 56627, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51876, 15389, 509, 1, 1, 0, 0, -9033.166, 1604.65918, 21.4696712, 3.08923268, 3600, 0, 0, 56627, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51877, 15390, 509, 1, 1, 0, 0, -9087.008, 1530.26331, 21.4696674, 2.146755, 3600, 0, 0, 56627, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51906, 15391, 509, 1, 1, 0, 0, -9007.403, 1556.87366, 21.6038952, 5.51524, 3600, 0, 0, 56627, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51875, 15392, 509, 1, 1, 0, 0, -9041.356, 1512.57971, 21.4748135, 2.338741, 3600, 0, 0, 56627, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135354, 15426, 509, 1, 1, 0, 0, -8680.658, 1585.614, 33.19108, 2.54818058, 120, 0, 0, 1, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51851, 15348, 509, 1, 1, 0, 0, -8824.542, 1629.52283, 20.4460068, 0.6457718, 604800, 0, 0, 333100, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51959, 15476, 509, 1, 1, 0, 0, -8598.208, 1597.07544, 32.03201, 4.97047, 600, 5, 0, 1, 0, 1);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135355, 15476, 509, 1, 1, 0, 0, -8634.296, 1471.59106, 32.2192841, 4.226911, 600, 5, 0, 1, 0, 1);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135356, 15476, 509, 1, 1, 0, 0, -8635.83, 1474.91248, 32.1164627, 2.921182, 600, 5, 0, 1, 0, 1);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (52107, 15320, 509, 1, 1, 0, 0, -9193.527, 1459.77893, 21.5113316, 4.20948029, 3600, 0, 0, 31440, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (52079, 15320, 509, 1, 1, 0, 0, -9224.242, 1384.02368, 21.4696732, 3.19395256, 3600, 0, 0, 31440, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (52068, 15335, 509, 1, 1, 0, 0, -8946.997, 2073.26733, 22.6363182, 6.143318, 3600, 0, 0, 51792, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51958, 15335, 509, 1, 1, 0, 0, -9024.582, 1689.16565, 21.510128, 5.67454243, 3600, 0, 0, 51792, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (52064, 15385, 509, 1, 1, 0, 0, -9108.294, 1584.17126, 21.47101, 5.75958633, 3600, 0, 0, 56627, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51908, 15386, 509, 1, 1, 0, 0, -9085.032, 1622.4032, 21.4696522, 3.36848545, 3600, 0, 0, 56627, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51835, 15341, 509, 1, 1, 0, 0, -9129.72949, 1602.50293, 26.5440731, 5.532694, 604800, 0, 0, 416375, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135357, 15323, 509, 1, 1, 0, 0, -9187.016, 1463.76526, 21.46968, 1.18682384, 6000, 0, 0, 15720, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135358, 15323, 509, 1, 1, 0, 0, -9189.154, 1452.47681, 21.5291882, 2.05948853, 6000, 0, 0, 15720, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135359, 15323, 509, 1, 1, 0, 0, -9227.635, 1391.40747, 21.4067383, 4.16572, 6000, 0, 0, 15720, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135360, 15475, 509, 1, 1, 0, 0, -8569.42, 1477.54761, 32.34401, 2.66484547, 7200, 0, 0, 1, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135361, 15475, 509, 1, 1, 0, 0, -8571.791, 1648.60254, 42.2251053, 3.8358798, 7200, 0, 0, 1, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135362, 15475, 509, 1, 1, 0, 0, -8687.767, 1537.93359, 31.9727974, 2.41163945, 7200, 0, 0, 1, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135363, 15475, 509, 1, 1, 0, 0, -8881.233, 1637.12329, 21.5113277, 1.27784681, 7200, 0, 0, 1, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135364, 15475, 509, 1, 1, 0, 0, -8901.812, 1529.45984, 21.8601, 1.55336034, 7200, 0, 0, 1, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135365, 15475, 509, 1, 1, 0, 0, -8958.887, 1640.424, 29.2099361, 3.39265847, 7200, 0, 0, 1, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135366, 15475, 509, 1, 1, 0, 0, -9022.052, 1472.52283, 32.7164459, 5.152024, 7200, 0, 0, 1, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51842, 15461, 509, 1, 1, 0, 0, -8784.287, 1915.4165, 24.22899, 5.39306736, 3600, 0, 0, 12208, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51850, 15461, 509, 1, 1, 0, 0, -8818.191, 1927.23962, 22.4210758, 5.61996031, 3600, 0, 0, 12208, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51849, 15461, 509, 1, 1, 0, 0, -8895.266, 1789.63525, 21.8069572, 3.214353, 3600, 0, 0, 12208, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51848, 15461, 509, 1, 1, 0, 0, -8900.689, 1727.24963, 24.3461, 4.5553093, 3600, 0, 0, 12208, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51847, 15461, 509, 1, 1, 0, 0, -8914.781, 1743.10486, 21.9953022, 1.43117, 3600, 0, 0, 12208, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51846, 15461, 509, 1, 1, 0, 0, -8930.687, 1760.09753, 21.7612839, 5.89338446, 3600, 0, 0, 12208, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51845, 15461, 509, 1, 1, 0, 0, -8936.55, 1746.027, 21.6290035, 2.12706423, 3600, 0, 0, 12208, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51844, 15461, 509, 1, 1, 0, 0, -9039.103, 1826.128, 22.9692974, 5.04400158, 3600, 0, 0, 12208, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51836, 15462, 509, 1, 1, 0, 0, -8805.239, 1936.149, 21.469677, 3.455752, 3600, 0, 0, 12208, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51837, 15462, 509, 1, 1, 0, 0, -8882.131, 1772.97046, 23.6363335, 0.287054539, 3600, 0, 0, 12208, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51838, 15462, 509, 1, 1, 0, 0, -8890.03, 1741.54529, 21.7629013, 1.51843643, 3600, 0, 0, 12208, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51839, 15462, 509, 1, 1, 0, 0, -8897.077, 1764.5918, 21.5113335, 1.67612767, 3600, 0, 0, 12208, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51840, 15462, 509, 1, 1, 0, 0, -8919.01, 1777.29224, 21.9807854, 3.990632, 3600, 0, 0, 12208, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51841, 15462, 509, 1, 1, 0, 0, -8931.25, 1760.417, 21.8862839, 2.63863468, 3600, 0, 0, 12208, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51843, 15462, 509, 1, 1, 0, 0, -9026.661, 1838.8197, 21.4696159, 4.59021568, 3600, 0, 0, 12208, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124839, 15338, 509, 1, 1, 0, 0, -8790.353, 1982.14624, 21.50979, 1.51484191, 6000, 0, 0, 50300, 12430, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124840, 15338, 509, 1, 1, 0, 0, -8857.879, 1833.7478, 21.5113354, 0.935567, 6000, 0, 0, 50300, 12430, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124841, 15338, 509, 1, 1, 0, 0, -8861.802, 2021.67542, 21.7936668, 3.10613513, 6000, 0, 0, 50300, 12430, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124842, 15338, 509, 1, 1, 0, 0, -8920.27, 1911.372, 21.7708836, 2.567447, 6000, 0, 0, 50300, 12430, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124843, 15338, 509, 1, 1, 0, 0, -9003.377, 1700.74548, 21.7339611, 5.495585, 6000, 0, 0, 50300, 12430, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124844, 15338, 509, 1, 1, 0, 0, -9040.843, 1707.05066, 21.5026283, 5.58163357, 6000, 0, 0, 50300, 12430, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124845, 15338, 509, 1, 1, 0, 0, -9044.094, 1839.80176, 21.51129, 4.052498, 6000, 0, 0, 50300, 12430, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124846, 15343, 509, 1, 1, 0, 0, -8600.617, 1483.54907, 32.8614044, 3.00196624, 6000, 0, 0, 25152, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124847, 15343, 509, 1, 1, 0, 0, -8612.686, 1446.0426, 31.9903412, 3.01941967, 6000, 0, 0, 25152, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124848, 15343, 509, 1, 1, 0, 0, -8620.62, 1484.90356, 31.9008865, 6.05629253, 6000, 0, 0, 25152, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124849, 15343, 509, 1, 1, 0, 0, -8622.461, 1385.46619, 32.0320053, 5.954897, 6000, 0, 0, 25152, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124850, 15343, 509, 1, 1, 0, 0, -8622.624, 1437.4552, 33.1570053, 0.041267205, 6000, 0, 0, 25152, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135367, 15343, 509, 1, 1, 0, 0, -8652.897, 1459.57263, 32.0319366, 5.51511765, 6000, 0, 0, 25152, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (91694, 15324, 509, 1, 1, 0, 0, -8517.444, 1505.66089, 33.3647461, 0.837758064, 3600, 0, 0, 50304, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (91695, 15324, 509, 1, 1, 0, 0, -8531.85449, 1515.68921, 33.2643661, 0.7679449, 3600, 0, 0, 50304, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (91696, 15324, 509, 1, 1, 0, 0, -8693.788, 1565.82275, 31.9903431, 5.358161, 3600, 0, 0, 50304, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (91697, 15324, 509, 1, 1, 0, 0, -8706.14551, 1552.28467, 31.9903431, 5.41052055, 3600, 0, 0, 50304, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (91698, 15324, 509, 1, 1, 0, 0, -9053.818, 1664.35608, 22.9385014, 3.996804, 3600, 0, 0, 50304, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (91699, 15324, 509, 1, 1, 0, 0, -9067.317, 1673.46362, 23.0714951, 4.310963, 3600, 0, 0, 50304, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (91700, 15324, 509, 1, 1, 0, 0, -9148.94, 1510.31958, 21.9923229, 0.942477763, 3600, 0, 0, 50304, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (91701, 15324, 509, 1, 1, 0, 0, -9162.49, 1518.79785, 22.7808952, 0.2268928, 3600, 0, 0, 50304, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124807, 15327, 509, 1, 1, 0, 0, -8544.797, 1474.65723, 31.9903469, 1.51843643, 6000, 0, 0, 50304, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124808, 15327, 509, 1, 1, 0, 0, -8549.29, 1437.00586, 31.9903412, 3.33357882, 6000, 0, 0, 50304, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124809, 15327, 509, 1, 1, 0, 0, -8587.77051, 1604.1969, 31.9538364, 1.54177248, 6000, 0, 0, 50304, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124810, 15327, 509, 1, 1, 0, 0, -8597.936, 1369.12415, 32.0320053, 0.568619967, 6000, 0, 0, 50304, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124811, 15327, 509, 1, 1, 0, 0, -8619.192, 1514.308, 32.13796, 1.71042264, 6000, 0, 0, 50304, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124812, 15327, 509, 1, 1, 0, 0, -8667.241, 1453.61023, 32.0313339, 0.97637707, 6000, 0, 0, 50304, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124813, 15327, 509, 1, 1, 0, 0, -8704.984, 1614.31421, 21.52147, 0.449097872, 6000, 0, 0, 50304, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124814, 15327, 509, 1, 1, 0, 0, -8767.041, 1578.56738, 24.7868786, 5.62535858, 6000, 0, 0, 50304, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124815, 15327, 509, 1, 1, 0, 0, -8789.378, 1598.04419, 21.4997864, 0.05953437, 6000, 0, 0, 50304, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (91702, 15327, 509, 1, 1, 0, 0, -8790.466, 1615.46118, 21.4557762, 4.862016, 6000, 0, 0, 50304, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (91703, 15168, 509, 1, 1, 0, 0, -8532.814, 1467.02734, 31.9923, 6.23082542, 600, 0, 0, 5228, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (126159, 15168, 509, 1, 1, 0, 0, -8566.46, 1399.41907, 31.99033, 3.21140575, 600, 0, 0, 5228, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124799, 15168, 509, 1, 1, 0, 0, -8600.136, 1466.58667, 31.9903336, 2.18166161, 600, 0, 0, 5228, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124800, 15168, 509, 1, 1, 0, 0, -8600.325, 1600.61743, 31.99035, 2.024582, 600, 0, 0, 5228, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124801, 15168, 509, 1, 1, 0, 0, -8665.976, 1566.63147, 31.99035, 2.39110112, 600, 0, 0, 5228, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124802, 15168, 509, 1, 1, 0, 0, -8666.028, 1432.58862, 32.650856, 2.00712872, 600, 0, 0, 5228, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124803, 15168, 509, 1, 1, 0, 0, -8666.481, 1667.62451, 21.50361, 6.23082542, 600, 0, 0, 5228, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124804, 15168, 509, 1, 1, 0, 0, -8666.835, 1499.21179, 32.7247353, 5.253441, 600, 0, 0, 5228, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124805, 15168, 509, 1, 1, 0, 0, -8733.768, 1600.12366, 21.4697151, 3.24631238, 600, 0, 0, 5228, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (124806, 15168, 509, 1, 1, 0, 0, -8848.906, 1845.95837, 21.4696789, 2.05948853, 600, 0, 0, 5228, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51853, 15168, 509, 1, 1, 0, 0, -8917.903, 1547.61389, 21.46967, 0.994837642, 600, 0, 0, 5228, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51855, 15168, 509, 1, 1, 0, 0, -9000.707, 1700.10071, 21.572155, 4.43313646, 600, 0, 0, 5228, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51857, 15168, 509, 1, 1, 0, 0, -9066.019, 1733.48792, 21.5308647, 3.24631238, 600, 0, 0, 5228, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51860, 15325, 509, 1, 1, 0, 0, -8542.542, 1478.01135, 31.99035, 4.066617, 6000, 0, 0, 25152, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51862, 15325, 509, 1, 1, 0, 0, -8545.161, 1437.03333, 31.9903412, 4.485496, 6000, 0, 0, 25152, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51870, 15325, 509, 1, 1, 0, 0, -8547.503, 1476.40784, 31.99035, 1.76278257, 6000, 0, 0, 25152, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51871, 15325, 509, 1, 1, 0, 0, -8551.956, 1439.40491, 31.9903412, 0.436332315, 6000, 0, 0, 25152, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51872, 15325, 509, 1, 1, 0, 0, -8582.967, 1599.10559, 32.03201, 4.683506, 6000, 0, 0, 25152, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51873, 15325, 509, 1, 1, 0, 0, -8592.638, 1388.10535, 32.4094276, 1.5279367, 6000, 0, 0, 25152, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51874, 15325, 509, 1, 1, 0, 0, -8592.861, 1599.39282, 32.03201, 4.68348837, 6000, 0, 0, 25152, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51878, 15325, 509, 1, 1, 0, 0, -8602.438, 1388.502, 32.0320053, 1.54599476, 6000, 0, 0, 25152, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51879, 15325, 509, 1, 1, 0, 0, -8616.94, 1514.72449, 32.1833763, 0.5061455, 6000, 0, 0, 25152, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51880, 15325, 509, 1, 1, 0, 0, -8619.925, 1517.49768, 32.1942825, 4.276057, 6000, 0, 0, 25152, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51881, 15325, 509, 1, 1, 0, 0, -8652.172, 1472.902, 32.00608, 0.7066829, 6000, 0, 0, 25152, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51882, 15325, 509, 1, 1, 0, 0, -8665.912, 1446.73755, 32.0319366, 0.976359665, 6000, 0, 0, 25152, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51883, 15325, 509, 1, 1, 0, 0, -8686.131, 1631.23279, 21.4589176, 0.773305, 6000, 0, 0, 25152, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (51884, 15325, 509, 1, 1, 0, 0, -8718.207, 1592.03784, 21.5113239, 1.21381986, 6000, 0, 0, 25152, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135368, 15325, 509, 1, 1, 0, 0, -8746.42, 1583.2489, 21.5113163, 1.26603, 6000, 0, 0, 25152, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135369, 15325, 509, 1, 1, 0, 0, -8764.292, 1584.62585, 21.93258, 5.240745, 6000, 0, 0, 25152, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135370, 15325, 509, 1, 1, 0, 0, -8767.65, 1610.10815, 21.6571617, 1.43209863, 6000, 0, 0, 25152, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135371, 15325,  509, 1, 1, 0, 0, -8773.97, 1616.39319, 21.4557762, 1.98607814, 6000, 0, 0, 25152, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135372, 15325, 509, 1, 1, 0, 0, -8803.79, 1659.90991, 21.43074, 5.53989029, 6000, 0, 0, 25152, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135373, 15325,  509, 1, 1, 0, 0, -8809.878, 1652.23083, 20.8364429, 5.54377127, 6000, 0, 0, 25152, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135374, 15344, 509, 1, 1, 0, 0, -8991.14551, 1553.998, 21.6539383, 2.77507353, 3600, 0, 0, 12576, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135375, 15344, 509, 1, 1, 0, 0, -9003.747, 1536.15833, 21.4696579, 2.63544726, 3600, 0, 0, 12576, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135376, 15344, 509, 1, 1, 0, 0, -9012.13, 1608.7738, 24.8693237, 3.14159274, 3600, 0, 0, 12576, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135377, 15344, 509, 1, 1, 0, 0, -9014.358, 1597.68347, 21.4696732, 3.03687286, 3600, 0, 0, 12576, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135378, 15344, 509, 1, 1, 0, 0, -9020.146, 1586.73157, 21.4696712, 2.94960642, 3600, 0, 0, 12576, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135379, 15344, 509, 1, 1, 0, 0, -9022.039, 1612.04553, 22.807291, 3.159046, 3600, 0, 0, 12576, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135380, 15344, 509, 1, 1, 0, 0, -9022.71, 1505.87793, 21.5596066, 2.40855432, 3600, 0, 0, 12576, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135381, 15344, 509, 1, 1, 0, 0, -9029.94, 1498.07739, 22.1401443, 2.338741, 3600, 0, 0, 12576, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135382, 15344, 509, 1, 1, 0, 0, -9031.986, 1592.26257, 21.469677, 2.984513, 3600, 0, 0, 12576, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135383, 15344, 509, 1, 1, 0, 0, -9038.44, 1491.03735, 23.2295685, 2.268928, 3600, 0, 0, 12576, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135384, 15344, 509, 1, 1, 0, 0, -9070.706, 1634.37122, 21.481163, 3.49065852, 3600, 0, 0, 12576, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135385, 15344, 509, 1, 1, 0, 0, -9071.044, 1622.144, 21.4696922, 3.33357882, 3600, 0, 0, 12576, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135386, 15344, 509, 1, 1, 0, 0, -9071.757, 1611.27734, 21.4721031, 3.17649913, 3600, 0, 0, 12576, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135387, 15344, 509, 1, 1, 0, 0, -9076.421, 1530.23022, 21.4696655, 2.23402143, 3600, 0, 0, 12576, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135388, 15344, 509, 1, 1, 0, 0, -9078.797, 1622.79907, 21.46967, 3.36848545, 3600, 0, 0, 12576, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135389, 15344, 509, 1, 1, 0, 0, -9083.137, 1524.75928, 21.4696636, 2.146755, 3600, 0, 0, 12576, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135390, 15344, 509, 1, 1, 0, 0, -9091.763, 1519.3667, 21.4696636, 2.05948853, 3600, 0, 0, 12576, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135391, 15344, 509, 1, 1, 0, 0, -9092.34, 1586.273, 21.4696388, 2.687807, 3600, 0, 0, 12576, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135392, 15344, 509, 1, 1, 0, 0, -9097.289, 1578.36, 21.4696426, 2.51327419, 3600, 0, 0, 12576, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135393, 15344, 509, 1, 1, 0, 0, -9102.547, 1569.41711, 21.4757042, 2.32128787, 3600, 0, 0, 12576, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135394, 15344, 509, 1, 1, 0, 0, -9113.942, 1546.056, 21.46964, 1.95476878, 3600, 0, 0, 12576, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135395, 15344, 509, 1, 1, 0, 0, -9132.825, 1539.0968, 21.46964, 1.65806282, 3600, 0, 0, 12576, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135396, 15387, 509, 1, 1, 0, 0, -8994.835, 1542.26868, 21.648632, 2.70526028, 3600, 0, 0, 31440, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135397, 15387, 509, 1, 1, 0, 0, -8998.049, 1560.14709, 22.1308117, 2.80998015, 3600, 0, 0, 31440, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135398, 15387, 509, 1, 1, 0, 0, -9001.262, 1549.051, 22.0208645, 2.72271371, 3600, 0, 0, 31440, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135399, 15387, 509, 1, 1, 0, 0, -9010.698, 1542.4668, 21.4696655, 2.65290046, 3600, 0, 0, 31440, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135400, 15387, 509, 1, 1, 0, 0, -9023.852, 1601.583, 21.4696674, 3.07177949, 3600, 0, 0, 31440, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135401, 15387, 509, 1, 1, 0, 0, -9030.075, 1512.30933, 21.47057, 2.40855432, 3600, 0, 0, 31440, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135402, 15387, 509, 1, 1, 0, 0, -9038.825, 1505.31726, 21.5906277, 2.338741, 3600, 0, 0, 31440, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135403, 15387, 509, 1, 1, 0, 0, -9046.502, 1498.26416, 22.0108013, 2.268928, 3600, 0, 0, 31440, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135404, 15387, 509, 1, 1, 0, 0, -9066.888, 1521.481, 21.46966, 2.25147462, 3600, 0, 0, 31440, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135405, 15387, 509, 1, 1, 0, 0, -9074.003, 1515.23511, 21.469656, 2.16420817, 3600, 0, 0, 31440, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135407, 15387, 509, 1, 1, 0, 0, -9080.052, 1612.09338, 21.4696541, 3.19395256, 3600, 0, 0, 31440, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135408, 15387, 509, 1, 1, 0, 0, -9082.668, 1510.19409, 21.5131187, 2.07694173, 3600, 0, 0, 31440, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135409, 15387, 509, 1, 1, 0, 0, -9098.183, 1589.87793, 21.4699821, 2.70526028, 3600, 0, 0, 31440, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135410, 15387, 509, 1, 1, 0, 0, -9102.671, 1581.55652, 21.470974, 2.49582076, 3600, 0, 0, 31440, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135411, 15387, 509, 1, 1, 0, 0, -9107.887, 1574.311, 21.48627, 2.30383468, 3600, 0, 0, 31440, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135412, 15387, 509, 1, 1, 0, 0, -9117.37, 1553.28259, 21.469635, 1.93731546, 3600, 0, 0, 31440, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135413, 15387, 509, 1, 1, 0, 0, -9123.583, 1541.5531, 21.469635, 1.79768908, 3600, 0, 0, 31440, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135414, 15387, 509, 1, 1, 0, 0, -9125.76, 1549.29321, 21.4696388, 1.78023577, 3600, 0, 0, 31440, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135417, 15505, 509, 1, 1, 0, 0, -8873.628, 1935.47229, 6.68492556, 6.091199, 3600, 0, 0, 9156, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135418, 15505, 509, 1, 1, 0, 0, -8874.46, 1946.84009, 6.47129869, 3.52556515, 3600, 0, 0, 9156, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135419, 15505, 509, 1, 1, 0, 0, -8884.489, 1926.34509, 4.51748753, 1.90240884, 3600, 0, 0, 9156, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135420, 15505, 509, 1, 1, 0, 0, -8884.958, 1936.56885, 5.73546362, 2.70526028, 3600, 0, 0, 9156, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135422, 15505, 509, 1, 1, 0, 0, -8931.279, 1852.24377, 4.11584044, 3.33357882, 3600, 0, 0, 9156, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135423, 15505, 509, 1, 1, 0, 0, -8938.794, 1854.30139, 2.76587915, 5.86430645, 3600, 0, 0, 9156, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135424, 15505, 509, 1, 1, 0, 0, -8939.113, 1846.92542, 2.42880225, 4.86946869, 3600, 0, 0, 9156, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135426, 15505, 509, 1, 1, 0, 0, -8974.198, 1807.2074, 1.86357033, 5.27089453, 3600, 0, 0, 9156, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135427, 15505, 509, 1, 1, 0, 0, -8977.002, 1827.00391, 4.1889143, 3.209181, 3600, 0, 0, 9156, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (135428, 15505, 509, 1, 1, 0, 0, -8981.374, 1815.48633, 4.0864296, 5.16617441, 3600, 0, 0, 9156, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (136237, 15387, 509, 1, 1, 0, 0, -9078.066, 1635.03418, 21.4696655, 3.54301834, 3600, 0, 0, 31440, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (136241, 15387, 509, 1, 1, 0, 0, -9134.138, 1546.722, 21.46964, 1.6406095, 3600, 0, 0, 31440, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (136276, 15505, 509, 1, 1, 0, 0, -8870.833, 1958.93213, 5.84245348, 4.29351, 3600, 0, 0, 9156, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (136628, 15505, 509, 1, 1, 0, 0, -8945.85449, 1863.52844, 3.44333029, 5.846853, 3600, 0, 0, 9156, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (136660, 15505, 509, 1, 1, 0, 0, -8929.834, 1869.06421, 4.98681736, 3.71755123, 3600, 0, 0, 9156, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (136661, 15505, 509, 1, 1, 0, 0, -8988.285, 1823.19714, 6.56204128, 3.46674156, 3600, 0, 0, 9156, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (136676, 15505, 509, 1, 1, 0, 0, -8989.232, 1811.11072, 5.65672636, 5.794493, 3600, 0, 0, 9156, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (136782, 4076, 509, 1, 1, 0, 0, -8765.081, 1635.24609, 21.6761227, 0.110549405, 7200, 0, 0, 8, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (136783, 4076, 509, 1, 1, 0, 0, -8800.748, 1875.79187, 21.7564888, 4.94694662, 7200, 0, 0, 8, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (136784, 4076, 509, 1, 1, 0, 0, -8894.257, 1739.05627, 21.7856236, 4.587065, 7200, 0, 0, 8, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (136785, 4076, 509, 1, 1, 0, 0, -8901.685, 1527.64148, 21.7612019, 1.41995108, 7200, 0, 0, 8, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (136786, 4076, 509, 1, 1, 0, 0, -9005.833, 1625.00562, 31.2194138, 2.53598619, 7200, 0, 0, 8, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES (136787, 4076, 509, 1, 1, 0, 0, -9087.986, 1482.48364, 28.0213737, 6.1459856, 7200, 0, 0, 8, 0, 0);
UPDATE creature_template SET InhabitType=InhabitType|4 WHERE entry=24708;
UPDATE creature_template SET unit_flags=unit_flags&~33554432 WHERE entry=24674;
UPDATE `creature_template_addon` SET auras='34429 28305' WHERE entry=19668;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(35143, 45912, 1, 0, 1, 1),
(34839, 45912, 1, 0, 1, 1),
(34838, 45912, 1, 0, 1, 1),
(34734, 45912, 1, 0, 1, 1),
(34728, 45912, 1, 0, 1, 1),
(34300, 45912, 1, 0, 1, 1),
(34273, 45912, 1, 0, 1, 1),
(34271, 45912, 1, 0, 1, 1),
(34269, 45912, 1, 0, 1, 1),
(34267, 45912, 1, 0, 1, 1),
(34199, 45912, 1, 0, 1, 1),
(34198, 45912, 1, 0, 1, 1),
(34197, 45912, 1, 0, 1, 1),
(34196, 45912, 1, 0, 1, 1),
(34193, 45912, 1, 0, 1, 1),
(34190, 45912, 1, 0, 1, 1),
(34183, 45912, 1, 0, 1, 1),
(34135, 45912, 1, 0, 1, 1),
(34134, 45912, 1, 0, 1, 1),
(34133, 45912, 1, 0, 1, 1),
(34086, 45912, 1, 0, 1, 1),
(34085, 45912, 1, 0, 1, 1),
(34069, 45912, 1, 0, 1, 1),
(34015, 45912, 1, 0, 1, 1),
(33824, 45912, 1, 0, 1, 1),
(33823, 45912, 1, 0, 1, 1),
(33822, 45912, 1, 0, 1, 1),
(33820, 45912, 1, 0, 1, 1),
(33819, 45912, 1, 0, 1, 1),
(33818, 45912, 1, 0, 1, 1),
(33772, 45912, 1, 0, 1, 1),
(33755, 45912, 1, 0, 1, 1),
(33754, 45912, 1, 0, 1, 1),
(33699, 45912, 1, 0, 1, 1),
(33528, 45912, 1, 0, 1, 1),
(33527, 45912, 1, 0, 1, 1),
(33526, 45912, 1, 0, 1, 1),
(33525, 45912, 1, 0, 1, 1),
(33431, 45912, 1, 0, 1, 1),
(33430, 45912, 1, 0, 1, 1),
(33422, 45912, 1, 0, 1, 1),
(33355, 45912, 1, 0, 1, 1),
(33354, 45912, 1, 0, 1, 1),
(32772, 45912, 1, 0, 1, 1),
(32770, 45912, 1, 0, 1, 1),
(32572, 45912, 1, 0, 1, 1),
(32507, 45912, 1, 0, 1, 1),
(32502, 45912, 1, 0, 1, 1),
(32482, 45912, 1, 0, 1, 1),
(32353, 45912, 1, 0, 1, 1),
(32349, 45912, 1, 0, 1, 1),
(32300, 45912, 1, 0, 1, 1),
(32297, 45912, 1, 0, 1, 1),
(32290, 45912, 1, 0, 1, 1),
(32289, 45912, 1, 0, 1, 1),
(32285, 45912, 1, 0, 1, 1),
(32284, 45912, 1, 0, 1, 1),
(32280, 45912, 1, 0, 1, 1),
(32278, 45912, 1, 0, 1, 1),
(32276, 45912, 1, 0, 1, 1),
(32263, 45912, 1, 0, 1, 1),
(32262, 45912, 1, 0, 1, 1),
(32260, 45912, 1, 0, 1, 1),
(32259, 45912, 1, 0, 1, 1),
(32257, 45912, 1, 0, 1, 1),
(32255, 45912, 1, 0, 1, 1),
(32236, 45912, 1, 0, 1, 1),
(32181, 45912, 1, 0, 1, 1),
(32175, 45912, 1, 0, 1, 1),
(32149, 45912, 1, 0, 1, 1),
(31900, 45912, 1, 0, 1, 1),
(31853, 45912, 1, 0, 1, 1),
(31847, 45912, 1, 0, 1, 1),
(31843, 45912, 1, 0, 1, 1),
(31783, 45912, 1, 0, 1, 1),
(31779, 45912, 1, 0, 1, 1),
(31775, 45912, 1, 0, 1, 1),
(31754, 45912, 1, 0, 1, 1),
(31746, 45912, 1, 0, 1, 1),
(31738, 45912, 1, 0, 1, 1),
(31731, 45912, 1, 0, 1, 1),
(31718, 45912, 1, 0, 1, 1),
(31693, 45912, 1, 0, 1, 1),
(31691, 45912, 1, 0, 1, 1),
(31411, 45912, 1, 0, 1, 1),
(31404, 45912, 1, 0, 1, 1),
(31403, 45912, 1, 0, 1, 1),
(31402, 45912, 1, 0, 1, 1),
(31401, 45912, 1, 0, 1, 1),
(31399, 45912, 1, 0, 1, 1),
(31396, 45912, 1, 0, 1, 1),
(31325, 45912, 1, 0, 1, 1),
(31321, 45912, 1, 0, 1, 1),
(31320, 45912, 1, 0, 1, 1),
(31283, 45912, 1, 0, 1, 1),
(31267, 45912, 1, 0, 1, 1),
(31262, 45912, 1, 0, 1, 1),
(31258, 45912, 1, 0, 1, 1),
(31233, 45912, 1, 0, 1, 1),
(31231, 45912, 1, 0, 1, 1),
(31225, 45912, 1, 0, 1, 1),
(31198, 45912, 1, 0, 1, 1),
(31161, 45912, 1, 0, 1, 1),
(31160, 45912, 1, 0, 1, 1),
(31159, 45912, 1, 0, 1, 1),
(31155, 45912, 1, 0, 1, 1),
(31152, 45912, 1, 0, 1, 1),
(31150, 45912, 1, 0, 1, 1),
(31147, 45912, 1, 0, 1, 1),
(31145, 45912, 1, 0, 1, 1),
(31140, 45912, 1, 0, 1, 1),
(31139, 45912, 1, 0, 1, 1),
(31123, 45912, 1, 0, 1, 1),
(31043, 45912, 1, 0, 1, 1),
(31037, 45912, 1, 0, 1, 1),
(31015, 45912, 1, 0, 1, 1),
(30988, 45912, 1, 0, 1, 1),
(30951, 45912, 1, 0, 1, 1),
(30949, 45912, 1, 0, 1, 1),
(30922, 45912, 1, 0, 1, 1),
(30921, 45912, 1, 0, 1, 1),
(30920, 45912, 1, 0, 1, 1),
(30894, 45912, 1, 0, 1, 1),
(30877, 45912, 1, 0, 1, 1),
(30876, 45912, 1, 0, 1, 1),
(30873, 45912, 1, 0, 1, 1),
(30865, 45912, 1, 0, 1, 1),
(30864, 45912, 1, 0, 1, 1),
(30863, 45912, 1, 0, 1, 1),
(30862, 45912, 1, 0, 1, 1),
(30861, 45912, 1, 0, 1, 1),
(30860, 45912, 1, 0, 1, 1),
(30856, 45912, 1, 0, 1, 1),
(30849, 45912, 1, 0, 1, 1),
(30845, 45912, 1, 0, 1, 1),
(30842, 45912, 1, 0, 1, 1),
(30831, 45912, 1, 0, 1, 1),
(30830, 45912, 1, 0, 1, 1),
(30829, 45912, 1, 0, 1, 1),
(30751, 45912, 1, 0, 1, 1),
(30746, 45912, 1, 0, 1, 1),
(30725, 45912, 1, 0, 1, 1),
(30701, 45912, 1, 0, 1, 1),
(30698, 45912, 1, 0, 1, 1),
(30697, 45912, 1, 0, 1, 1),
(30696, 45912, 1, 0, 1, 1),
(30689, 45912, 1, 0, 1, 1),
(30687, 45912, 1, 0, 1, 1),
(30682, 45912, 1, 0, 1, 1),
(30681, 45912, 1, 0, 1, 1),
(30680, 45912, 1, 0, 1, 1),
(30632, 45912, 1, 0, 1, 1),
(30597, 45912, 1, 0, 1, 1),
(30543, 45912, 1, 0, 1, 1),
(30541, 45912, 1, 0, 1, 1),
(30453, 45912, 1, 0, 1, 1),
(30448, 45912, 1, 0, 1, 1),
(30447, 45912, 1, 0, 1, 1),
(30430, 45912, 1, 0, 1, 1),
(30414, 45912, 1, 0, 1, 1),
(30333, 45912, 1, 0, 1, 1),
(30329, 45912, 1, 0, 1, 1),
(30319, 45912, 1, 0, 1, 1),
(30287, 45912, 1, 0, 1, 1),
(30286, 45912, 1, 0, 1, 1),
(30285, 45912, 1, 0, 1, 1),
(30284, 45912, 1, 0, 1, 1),
(30283, 45912, 1, 0, 1, 1),
(30279, 45912, 1, 0, 1, 1),
(30278, 45912, 1, 0, 1, 1),
(30277, 45912, 1, 0, 1, 1),
(30276, 45912, 1, 0, 1, 1),
(30258, 45912, 1, 0, 1, 1),
(30250, 45912, 1, 0, 1, 1),
(30222, 45912, 1, 0, 1, 1),
(30206, 45912, 1, 0, 1, 1),
(30205, 45912, 1, 0, 1, 1),
(30204, 45912, 1, 0, 1, 1),
(30202, 45912, 1, 0, 1, 1),
(30179, 45912, 1, 0, 1, 1),
(30167, 45912, 1, 0, 1, 1),
(30148, 45912, 1, 0, 1, 1),
(30147, 45912, 1, 0, 1, 1),
(30146, 45912, 1, 0, 1, 1),
(30144, 45912, 1, 0, 1, 1),
(30135, 45912, 1, 0, 1, 1),
(30111, 45912, 1, 0, 1, 1),
(30037, 45912, 1, 0, 1, 1),
(29974, 45912, 1, 0, 1, 1),
(29920, 45912, 1, 0, 1, 1),
(29885, 45912, 1, 0, 1, 1),
(29880, 45912, 1, 0, 1, 1),
(29875, 45912, 1, 0, 1, 1),
(29874, 45912, 1, 0, 1, 1),
(29844, 45912, 1, 0, 1, 1),
(29843, 45912, 1, 0, 1, 1),
(29838, 45912, 1, 0, 1, 1),
(29836, 45912, 1, 0, 1, 1),
(29834, 45912, 1, 0, 1, 1),
(29832, 45912, 1, 0, 1, 1),
(29830, 45912, 1, 0, 1, 1),
(29829, 45912, 1, 0, 1, 1),
(29826, 45912, 1, 0, 1, 1),
(29822, 45912, 1, 0, 1, 1),
(29820, 45912, 1, 0, 1, 1),
(29819, 45912, 1, 0, 1, 1),
(29793, 45912, 1, 0, 1, 1),
(29792, 45912, 1, 0, 1, 1),
(29774, 45912, 1, 0, 1, 1),
(29768, 45912, 1, 0, 1, 1),
(29738, 45912, 1, 0, 1, 1),
(29735, 45912, 1, 0, 1, 1),
(29724, 45912, 1, 0, 1, 1),
(29722, 45912, 1, 0, 1, 1),
(29720, 45912, 1, 0, 1, 1),
(29719, 45912, 1, 0, 1, 1),
(29717, 45912, 1, 0, 1, 1),
(29699, 45912, 1, 0, 1, 1),
(29697, 45912, 1, 0, 1, 1),
(29664, 45912, 1, 0, 1, 1),
(29656, 45912, 1, 0, 1, 1),
(29654, 45912, 1, 0, 1, 1),
(29652, 45912, 1, 0, 1, 1),
(29646, 45912, 1, 0, 1, 1),
(29626, 45912, 1, 0, 1, 1),
(29623, 45912, 1, 0, 1, 1),
(29622, 45912, 1, 0, 1, 1),
(29614, 45912, 1, 0, 1, 1),
(29590, 45912, 1, 0, 1, 1),
(29586, 45912, 1, 0, 1, 1),
(29569, 45912, 1, 0, 1, 1),
(29554, 45912, 1, 0, 1, 1),
(29553, 45912, 1, 0, 1, 1),
(29518, 45912, 1, 0, 1, 1),
(29503, 45912, 1, 0, 1, 1),
(29489, 45912, 1, 0, 1, 1),
(29451, 45912, 1, 0, 1, 1),
(29450, 45912, 1, 0, 1, 1),
(29449, 45912, 1, 0, 1, 1),
(29426, 45912, 1, 0, 1, 1),
(29413, 45912, 1, 0, 1, 1),
(29412, 45912, 1, 0, 1, 1),
(29411, 45912, 1, 0, 1, 1),
(29409, 45912, 1, 0, 1, 1),
(29407, 45912, 1, 0, 1, 1),
(29404, 45912, 1, 0, 1, 1),
(29402, 45912, 1, 0, 1, 1),
(29392, 45912, 1, 0, 1, 1),
(29389, 45912, 1, 0, 1, 1),
(29380, 45912, 1, 0, 1, 1),
(29377, 45912, 1, 0, 1, 1),
(29376, 45912, 1, 0, 1, 1),
(29375, 45912, 1, 0, 1, 1),
(29370, 45912, 1, 0, 1, 1),
(29369, 45912, 1, 0, 1, 1),
(29338, 45912, 1, 0, 1, 1),
(29335, 45912, 1, 0, 1, 1),
(29334, 45912, 1, 0, 1, 1),
(29333, 45912, 1, 0, 1, 1),
(29332, 45912, 1, 0, 1, 1),
(29331, 45912, 1, 0, 1, 1),
(29330, 45912, 1, 0, 1, 1),
(29329, 45912, 1, 0, 1, 1),
(29323, 45912, 1, 0, 1, 1),
(29319, 45912, 1, 0, 1, 1),
(29304, 45912, 1, 0, 1, 1),
(29237, 45912, 1, 0, 1, 1),
(29236, 45912, 1, 0, 1, 1),
(29235, 45912, 1, 0, 1, 1),
(29211, 45912, 1, 0, 1, 1),
(29133, 45912, 1, 0, 1, 1),
(29129, 45912, 1, 0, 1, 1),
(29128, 45912, 1, 0, 1, 1),
(29124, 45912, 1, 0, 1, 1),
(29123, 45912, 1, 0, 1, 1),
(29036, 45912, 1, 0, 1, 1),
(28988, 45912, 1, 0, 1, 1),
(28965, 45912, 1, 0, 1, 1),
(28961, 45912, 1, 0, 1, 1),
(28920, 45912, 1, 0, 1, 1),
(28918, 45912, 1, 0, 1, 1),
(28917, 45912, 1, 0, 1, 1),
(28916, 45912, 1, 0, 1, 1),
(28861, 45912, 1, 0, 1, 1),
(28851, 45912, 1, 0, 1, 1),
(28848, 45912, 1, 0, 1, 1),
(28843, 45912, 1, 0, 1, 1),
(28838, 45912, 1, 0, 1, 1),
(28837, 45912, 1, 0, 1, 1),
(28836, 45912, 1, 0, 1, 1),
(28835, 45912, 1, 0, 1, 1),
(28826, 45912, 1, 0, 1, 1),
(28803, 45912, 1, 0, 1, 1),
(28802, 45912, 1, 0, 1, 1),
(28793, 45912, 1, 0, 1, 1),
(28784, 45912, 1, 0, 1, 1),
(28747, 45912, 1, 0, 1, 1),
(28734, 45912, 1, 0, 1, 1),
(28732, 45912, 1, 0, 1, 1),
(28659, 45912, 1, 0, 1, 1),
(28641, 45912, 1, 0, 1, 1),
(28603, 45912, 1, 0, 1, 1),
(28600, 45912, 1, 0, 1, 1),
(28597, 45912, 1, 0, 1, 1),
(28584, 45912, 1, 0, 1, 1),
(28583, 45912, 1, 0, 1, 1),
(28582, 45912, 1, 0, 1, 1),
(28581, 45912, 1, 0, 1, 1),
(28580, 45912, 1, 0, 1, 1),
(28579, 45912, 1, 0, 1, 1),
(28578, 45912, 1, 0, 1, 1),
(28575, 45912, 1, 0, 1, 1),
(28565, 45912, 1, 0, 1, 1),
(28564, 45912, 1, 0, 1, 1),
(28547, 45912, 1, 0, 1, 1),
(28538, 45912, 1, 0, 1, 1),
(28519, 45912, 1, 0, 1, 1),
(28504, 45912, 1, 0, 1, 1),
(28496, 45912, 1, 0, 1, 1),
(28495, 45912, 1, 0, 1, 1),
(28494, 45912, 1, 0, 1, 1),
(28467, 45912, 1, 0, 1, 1),
(28465, 45912, 1, 0, 1, 1),
(28443, 45912, 1, 0, 1, 1),
(28442, 45912, 1, 0, 1, 1),
(28419, 45912, 1, 0, 1, 1),
(28418, 45912, 1, 0, 1, 1),
(28417, 45912, 1, 0, 1, 1),
(28412, 45912, 1, 0, 1, 1),
(28411, 45912, 1, 0, 1, 1),
(28410, 45912, 1, 0, 1, 1),
(28403, 45912, 1, 0, 1, 1),
(28402, 45912, 1, 0, 1, 1),
(28388, 45912, 1, 0, 1, 1),
(28373, 45912, 1, 0, 1, 1),
(28368, 45912, 1, 0, 1, 1),
(28345, 45912, 1, 0, 1, 1),
(28325, 45912, 1, 0, 1, 1),
(28303, 45912, 1, 0, 1, 1),
(28288, 45912, 1, 0, 1, 1),
(28257, 45912, 1, 0, 1, 1),
(28255, 45912, 1, 0, 1, 1),
(28249, 45912, 1, 0, 1, 1),
(28246, 45912, 1, 0, 1, 1),
(28231, 45912, 1, 0, 1, 1),
(28201, 45912, 1, 0, 1, 1),
(28188, 45912, 1, 0, 1, 1),
(28186, 45912, 1, 0, 1, 1),
(28158, 45912, 1, 0, 1, 1),
(28145, 45912, 1, 0, 1, 1),
(28129, 45912, 1, 0, 1, 1),
(28124, 45912, 1, 0, 1, 1),
(28123, 45912, 1, 0, 1, 1),
(28110, 45912, 1, 0, 1, 1),
(28109, 45912, 1, 0, 1, 1),
(28108, 45912, 1, 0, 1, 1),
(28101, 45912, 1, 0, 1, 1),
(28087, 45912, 1, 0, 1, 1),
(28086, 45912, 1, 0, 1, 1),
(28085, 45912, 1, 0, 1, 1),
(28081, 45912, 1, 0, 1, 1),
(28080, 45912, 1, 0, 1, 1),
(28077, 45912, 1, 0, 1, 1),
(28069, 45912, 1, 0, 1, 1),
(28068, 45912, 1, 0, 1, 1),
(28036, 45912, 1, 0, 1, 1),
(28035, 45912, 1, 0, 1, 1),
(28034, 45912, 1, 0, 1, 1),
(28026, 45912, 1, 0, 1, 1),
(28023, 45912, 1, 0, 1, 1),
(28022, 45912, 1, 0, 1, 1),
(28011, 45912, 1, 0, 1, 1),
(28004, 45912, 1, 0, 1, 1),
(28003, 45912, 1, 0, 1, 1),
(27972, 45912, 1, 0, 1, 1),
(27971, 45912, 1, 0, 1, 1),
(27970, 45912, 1, 0, 1, 1),
(27969, 45912, 1, 0, 1, 1),
(27966, 45912, 1, 0, 1, 1),
(27965, 45912, 1, 0, 1, 1),
(27964, 45912, 1, 0, 1, 1),
(27963, 45912, 1, 0, 1, 1),
(27962, 45912, 1, 0, 1, 1),
(27961, 45912, 1, 0, 1, 1),
(27960, 45912, 1, 0, 1, 1),
(27949, 45912, 1, 0, 1, 1),
(27947, 45912, 1, 0, 1, 1),
(27941, 45912, 1, 0, 1, 1),
(27927, 45912, 1, 0, 1, 1),
(27926, 45912, 1, 0, 1, 1),
(27871, 45912, 1, 0, 1, 1),
(27860, 45912, 1, 0, 1, 1),
(27859, 45912, 1, 0, 1, 1),
(27836, 45912, 1, 0, 1, 1),
(27835, 45912, 1, 0, 1, 1),
(27830, 45912, 1, 0, 1, 1),
(27826, 45912, 1, 0, 1, 1),
(27824, 45912, 1, 0, 1, 1),
(27823, 45912, 1, 0, 1, 1),
(27805, 45912, 1, 0, 1, 1),
(27800, 45912, 1, 0, 1, 1),
(27799, 45912, 1, 0, 1, 1),
(27797, 45912, 1, 0, 1, 1),
(27736, 45912, 1, 0, 1, 1),
(27734, 45912, 1, 0, 1, 1),
(27731, 45912, 1, 0, 1, 1),
(27729, 45912, 1, 0, 1, 1),
(27701, 45912, 1, 0, 1, 1),
(27699, 45912, 1, 0, 1, 1),
(27680, 45912, 1, 0, 1, 1),
(27676, 45912, 1, 0, 1, 1),
(27641, 45912, 1, 0, 1, 1),
(27640, 45912, 1, 0, 1, 1),
(27639, 45912, 1, 0, 1, 1),
(27636, 45912, 1, 0, 1, 1),
(27635, 45912, 1, 0, 1, 1),
(27633, 45912, 1, 0, 1, 1),
(27615, 45912, 1, 0, 1, 1),
(27580, 45912, 1, 0, 1, 1),
(27579, 45912, 1, 0, 1, 1),
(27570, 45912, 1, 0, 1, 1),
(27555, 45912, 1, 0, 1, 1),
(27554, 45912, 1, 0, 1, 1),
(27547, 45912, 1, 0, 1, 1),
(27546, 45912, 1, 0, 1, 1),
(27545, 45912, 1, 0, 1, 1),
(27539, 45912, 1, 0, 1, 1),
(27534, 45912, 1, 0, 1, 1),
(27533, 45912, 1, 0, 1, 1),
(27508, 45912, 1, 0, 1, 1),
(27493, 45912, 1, 0, 1, 1),
(27470, 45912, 1, 0, 1, 1),
(27431, 45912, 1, 0, 1, 1),
(27424, 45912, 1, 0, 1, 1),
(27410, 45912, 1, 0, 1, 1),
(27406, 45912, 1, 0, 1, 1),
(27405, 45912, 1, 0, 1, 1),
(27401, 45912, 1, 0, 1, 1),
(27383, 45912, 1, 0, 1, 1),
(27370, 45912, 1, 0, 1, 1),
(27367, 45912, 1, 0, 1, 1),
(27363, 45912, 1, 0, 1, 1),
(27362, 45912, 1, 0, 1, 1),
(27360, 45912, 1, 0, 1, 1),
(27358, 45912, 1, 0, 1, 1),
(27356, 45912, 1, 0, 1, 1),
(27343, 45912, 1, 0, 1, 1),
(27342, 45912, 1, 0, 1, 1),
(27340, 45912, 1, 0, 1, 1),
(27333, 45912, 1, 0, 1, 1),
(27332, 45912, 1, 0, 1, 1),
(27330, 45912, 1, 0, 1, 1),
(27288, 45912, 1, 0, 1, 1),
(27287, 45912, 1, 0, 1, 1),
(27286, 45912, 1, 0, 1, 1),
(27284, 45912, 1, 0, 1, 1),
(27283, 45912, 1, 0, 1, 1),
(27279, 45912, 1, 0, 1, 1),
(27278, 45912, 1, 0, 1, 1),
(27272, 45912, 1, 0, 1, 1),
(27260, 45912, 1, 0, 1, 1),
(27259, 45912, 1, 0, 1, 1),
(27247, 45912, 1, 0, 1, 1),
(27246, 45912, 1, 0, 1, 1),
(27238, 45912, 1, 0, 1, 1),
(27237, 45912, 1, 0, 1, 1),
(27236, 45912, 1, 0, 1, 1),
(27235, 45912, 1, 0, 1, 1),
(27234, 45912, 1, 0, 1, 1),
(27233, 45912, 1, 0, 1, 1),
(27232, 45912, 1, 0, 1, 1),
(27230, 45912, 1, 0, 1, 1),
(27229, 45912, 1, 0, 1, 1),
(27226, 45912, 1, 0, 1, 1),
(27225, 45912, 1, 0, 1, 1),
(27224, 45912, 1, 0, 1, 1),
(27220, 45912, 1, 0, 1, 1),
(27211, 45912, 1, 0, 1, 1),
(27210, 45912, 1, 0, 1, 1),
(27209, 45912, 1, 0, 1, 1),
(27207, 45912, 1, 0, 1, 1),
(27203, 45912, 1, 0, 1, 1),
(27202, 45912, 1, 0, 1, 1),
(27177, 45912, 1, 0, 1, 1),
(27122, 45912, 1, 0, 1, 1),
(27118, 45912, 1, 0, 1, 1),
(27117, 45912, 1, 0, 1, 1),
(27105, 45912, 1, 0, 1, 1),
(27024, 45912, 1, 0, 1, 1),
(27020, 45912, 1, 0, 1, 1),
(27018, 45912, 1, 0, 1, 1),
(27009, 45912, 1, 0, 1, 1),
(27008, 45912, 1, 0, 1, 1),
(27007, 45912, 1, 0, 1, 1),
(27006, 45912, 1, 0, 1, 1),
(27005, 45912, 1, 0, 1, 1),
(27004, 45912, 1, 0, 1, 1),
(26965, 45912, 1, 0, 1, 1),
(26948, 45912, 1, 0, 1, 1),
(26943, 45912, 1, 0, 1, 1),
(26942, 45912, 1, 0, 1, 1),
(26926, 45912, 1, 0, 1, 1),
(26923, 45912, 1, 0, 1, 1),
(26922, 45912, 1, 0, 1, 1),
(26921, 45912, 1, 0, 1, 1),
(26920, 45912, 1, 0, 1, 1),
(26919, 45912, 1, 0, 1, 1),
(26891, 45912, 1, 0, 1, 1),
(26863, 45912, 1, 0, 1, 1),
(26862, 45912, 1, 0, 1, 1),
(26858, 45912, 1, 0, 1, 1),
(26836, 45912, 1, 0, 1, 1),
(26830, 45912, 1, 0, 1, 1),
(26828, 45912, 1, 0, 1, 1),
(26827, 45912, 1, 0, 1, 1),
(26825, 45912, 1, 0, 1, 1),
(26823, 45912, 1, 0, 1, 1),
(26820, 45912, 1, 0, 1, 1),
(26816, 45912, 1, 0, 1, 1),
(26815, 45912, 1, 0, 1, 1),
(26805, 45912, 1, 0, 1, 1),
(26803, 45912, 1, 0, 1, 1),
(26802, 45912, 1, 0, 1, 1),
(26801, 45912, 1, 0, 1, 1),
(26800, 45912, 1, 0, 1, 1),
(26799, 45912, 1, 0, 1, 1),
(26798, 45912, 1, 0, 1, 1),
(26797, 45912, 1, 0, 1, 1),
(26795, 45912, 1, 0, 1, 1),
(26792, 45912, 1, 0, 1, 1),
(26786, 45912, 1, 0, 1, 1),
(26782, 45912, 1, 0, 1, 1),
(26771, 45912, 1, 0, 1, 1),
(26770, 45912, 1, 0, 1, 1),
(26769, 45912, 1, 0, 1, 1),
(26762, 45912, 1, 0, 1, 1),
(26737, 45912, 1, 0, 1, 1),
(26735, 45912, 1, 0, 1, 1),
(26734, 45912, 1, 0, 1, 1),
(26730, 45912, 1, 0, 1, 1),
(26729, 45912, 1, 0, 1, 1),
(26728, 45912, 1, 0, 1, 1),
(26727, 45912, 1, 0, 1, 1),
(26722, 45912, 1, 0, 1, 1),
(26716, 45912, 1, 0, 1, 1),
(26705, 45912, 1, 0, 1, 1),
(26704, 45912, 1, 0, 1, 1),
(26696, 45912, 1, 0, 1, 1),
(26694, 45912, 1, 0, 1, 1),
(26679, 45912, 1, 0, 1, 1),
(26672, 45912, 1, 0, 1, 1),
(26670, 45912, 1, 0, 1, 1),
(26669, 45912, 1, 0, 1, 1),
(26663, 45912, 1, 0, 1, 1),
(26658, 45912, 1, 0, 1, 1),
(26655, 45912, 1, 0, 1, 1),
(26641, 45912, 1, 0, 1, 1),
(26639, 45912, 1, 0, 1, 1),
(26638, 45912, 1, 0, 1, 1),
(26637, 45912, 1, 0, 1, 1),
(26636, 45912, 1, 0, 1, 1),
(26635, 45912, 1, 0, 1, 1),
(26628, 45912, 1, 0, 1, 1),
(26626, 45912, 1, 0, 1, 1),
(26625, 45912, 1, 0, 1, 1),
(26624, 45912, 1, 0, 1, 1),
(26623, 45912, 1, 0, 1, 1),
(26622, 45912, 1, 0, 1, 1),
(26621, 45912, 1, 0, 1, 1),
(26620, 45912, 1, 0, 1, 1),
(26606, 45912, 1, 0, 1, 1),
(26605, 45912, 1, 0, 1, 1),
(26577, 45912, 1, 0, 1, 1),
(26575, 45912, 1, 0, 1, 1),
(26555, 45912, 1, 0, 1, 1),
(26554, 45912, 1, 0, 1, 1),
(26553, 45912, 1, 0, 1, 1),
(26550, 45912, 1, 0, 1, 1),
(26544, 45912, 1, 0, 1, 1),
(26496, 45912, 1, 0, 1, 1),
(26493, 45912, 1, 0, 1, 1),
(26492, 45912, 1, 0, 1, 1),
(26481, 45912, 1, 0, 1, 1),
(26480, 45912, 1, 0, 1, 1),
(26472, 45912, 1, 0, 1, 1),
(26457, 45912, 1, 0, 1, 1),
(26456, 45912, 1, 0, 1, 1),
(26455, 45912, 1, 0, 1, 1),
(26451, 45912, 1, 0, 1, 1),
(26449, 45912, 1, 0, 1, 1),
(26447, 45912, 1, 0, 1, 1),
(26436, 45912, 1, 0, 1, 1),
(26434, 45912, 1, 0, 1, 1),
(26428, 45912, 1, 0, 1, 1),
(26425, 45912, 1, 0, 1, 1),
(26417, 45912, 1, 0, 1, 1),
(26416, 45912, 1, 0, 1, 1),
(26414, 45912, 1, 0, 1, 1),
(26413, 45912, 1, 0, 1, 1),
(26411, 45912, 1, 0, 1, 1),
(26410, 45912, 1, 0, 1, 1),
(26409, 45912, 1, 0, 1, 1),
(26408, 45912, 1, 0, 1, 1),
(26405, 45912, 1, 0, 1, 1),
(26389, 45912, 1, 0, 1, 1),
(26357, 45912, 1, 0, 1, 1),
(26356, 45912, 1, 0, 1, 1),
(26348, 45912, 1, 0, 1, 1),
(26344, 45912, 1, 0, 1, 1),
(26343, 45912, 1, 0, 1, 1),
(26336, 45912, 1, 0, 1, 1),
(26334, 45912, 1, 0, 1, 1),
(26319, 45912, 1, 0, 1, 1),
(26280, 45912, 1, 0, 1, 1),
(26270, 45912, 1, 0, 1, 1),
(26268, 45912, 1, 0, 1, 1),
(26266, 45912, 1, 0, 1, 1),
(26257, 45912, 1, 0, 1, 1),
(26252, 45912, 1, 0, 1, 1),
(26202, 45912, 1, 0, 1, 1),
(26201, 45912, 1, 0, 1, 1),
(26199, 45912, 1, 0, 1, 1),
(26198, 45912, 1, 0, 1, 1),
(26197, 45912, 1, 0, 1, 1),
(26196, 45912, 1, 0, 1, 1),
(26126, 45912, 1, 0, 1, 1),
(26115, 45912, 1, 0, 1, 1),
(26103, 45912, 1, 0, 1, 1),
(26076, 45912, 1, 0, 1, 1),
(26073, 45912, 1, 0, 1, 1),
(25981, 45912, 1, 0, 1, 1),
(25979, 45912, 1, 0, 1, 1),
(25880, 45912, 1, 0, 1, 1),
(25843, 45912, 1, 0, 1, 1),
(25839, 45912, 1, 0, 1, 1),
(25836, 45912, 1, 0, 1, 1),
(25819, 45912, 1, 0, 1, 1),
(25806, 45912, 1, 0, 1, 1),
(25804, 45912, 1, 0, 1, 1),
(25803, 45912, 1, 0, 1, 1),
(25801, 45912, 1, 0, 1, 1),
(25800, 45912, 1, 0, 1, 1),
(25789, 45912, 1, 0, 1, 1),
(25760, 45912, 1, 0, 1, 1),
(25726, 45912, 1, 0, 1, 1),
(25719, 45912, 1, 0, 1, 1),
(25713, 45912, 1, 0, 1, 1),
(25684, 45912, 1, 0, 1, 1),
(25668, 45912, 1, 0, 1, 1),
(25660, 45912, 1, 0, 1, 1),
(25651, 45912, 1, 0, 1, 1),
(25650, 45912, 1, 0, 1, 1),
(25619, 45912, 1, 0, 1, 1),
(25615, 45912, 1, 0, 1, 1),
(25613, 45912, 1, 0, 1, 1),
(25611, 45912, 1, 0, 1, 1),
(25609, 45912, 1, 0, 1, 1),
(25605, 45912, 1, 0, 1, 1),
(25601, 45912, 1, 0, 1, 1),
(25523, 45912, 1, 0, 1, 1),
(25522, 45912, 1, 0, 1, 1),
(25521, 45912, 1, 0, 1, 1),
(25520, 45912, 1, 0, 1, 1),
(25501, 45912, 1, 0, 1, 1),
(25496, 45912, 1, 0, 1, 1),
(25479, 45912, 1, 0, 1, 1),
(25470, 45912, 1, 0, 1, 1),
(25468, 45912, 1, 0, 1, 1),
(25467, 45912, 1, 0, 1, 1),
(25449, 45912, 1, 0, 1, 1),
(25448, 45912, 1, 0, 1, 1),
(25434, 45912, 1, 0, 1, 1),
(25433, 45912, 1, 0, 1, 1),
(25432, 45912, 1, 0, 1, 1),
(25430, 45912, 1, 0, 1, 1),
(25429, 45912, 1, 0, 1, 1),
(25428, 45912, 1, 0, 1, 1),
(25427, 45912, 1, 0, 1, 1),
(25396, 45912, 1, 0, 1, 1),
(25393, 45912, 1, 0, 1, 1),
(25392, 45912, 1, 0, 1, 1),
(25386, 45912, 1, 0, 1, 1),
(25383, 45912, 1, 0, 1, 1),
(25378, 45912, 1, 0, 1, 1),
(25371, 45912, 1, 0, 1, 1),
(25353, 45912, 1, 0, 1, 1),
(25351, 45912, 1, 0, 1, 1),
(25350, 45912, 1, 0, 1, 1),
(25316, 45912, 1, 0, 1, 1),
(25301, 45912, 1, 0, 1, 1),
(25294, 45912, 1, 0, 1, 1),
(25228, 45912, 1, 0, 1, 1),
(25227, 45912, 1, 0, 1, 1),
(25209, 45912, 1, 0, 1, 1),
(25026, 45912, 1, 0, 1, 1),
(24957, 45912, 1, 0, 1, 1),
(24914, 45912, 1, 0, 1, 1),
(24900, 45912, 1, 0, 1, 1),
(24872, 45912, 1, 0, 1, 1),
(24871, 45912, 1, 0, 1, 1),
(24849, 45912, 1, 0, 1, 1),
(24846, 45912, 1, 0, 1, 1),
(24789, 45912, 1, 0, 1, 1),
(24779, 45912, 1, 0, 1, 1),
(24777, 45912, 1, 0, 1, 1),
(24713, 45912, 1, 0, 1, 1),
(24697, 45912, 1, 0, 1, 1),
(24690, 45912, 1, 0, 1, 1),
(24689, 45912, 1, 0, 1, 1),
(24687, 45912, 1, 0, 1, 1),
(24685, 45912, 1, 0, 1, 1),
(24676, 45912, 1, 0, 1, 1),
(24644, 45912, 1, 0, 1, 1),
(24642, 45912, 1, 0, 1, 1),
(24638, 45912, 1, 0, 1, 1),
(24635, 45912, 1, 0, 1, 1),
(24567, 45912, 1, 0, 1, 1),
(24562, 45912, 1, 0, 1, 1),
(24546, 45912, 1, 0, 1, 1),
(24540, 45912, 1, 0, 1, 1),
(24485, 45912, 1, 0, 1, 1),
(24469, 45912, 1, 0, 1, 1),
(24400, 45912, 1, 0, 1, 1),
(24398, 45912, 1, 0, 1, 1),
(24334, 45912, 1, 0, 1, 1),
(24250, 45912, 1, 0, 1, 1),
(24249, 45912, 1, 0, 1, 1),
(24238, 45912, 1, 0, 1, 1),
(24216, 45912, 1, 0, 1, 1),
(24215, 45912, 1, 0, 1, 1),
(24214, 45912, 1, 0, 1, 1),
(24213, 45912, 1, 0, 1, 1),
(24212, 45912, 1, 0, 1, 1),
(24169, 45912, 1, 0, 1, 1),
(24162, 45912, 1, 0, 1, 1),
(24161, 45912, 1, 0, 1, 1),
(24116, 45912, 1, 0, 1, 1),
(24085, 45912, 1, 0, 1, 1),
(24084, 45912, 1, 0, 1, 1),
(24083, 45912, 1, 0, 1, 1),
(24082, 45912, 1, 0, 1, 1),
(24080, 45912, 1, 0, 1, 1),
(24079, 45912, 1, 0, 1, 1),
(24078, 45912, 1, 0, 1, 1),
(24073, 45912, 1, 0, 1, 1),
(24071, 45912, 1, 0, 1, 1),
(24069, 45912, 1, 0, 1, 1),
(24030, 45912, 1, 0, 1, 1),
(24016, 45912, 1, 0, 1, 1),
(24015, 45912, 1, 0, 1, 1),
(24014, 45912, 1, 0, 1, 1),
(24013, 45912, 1, 0, 1, 1),
(23993, 45912, 1, 0, 1, 1),
(23992, 45912, 1, 0, 1, 1),
(23991, 45912, 1, 0, 1, 1),
(23990, 45912, 1, 0, 1, 1),
(23989, 45912, 1, 0, 1, 1),
(23983, 45912, 1, 0, 1, 1),
(23967, 45912, 1, 0, 1, 1),
(23964, 45912, 1, 0, 1, 1),
(23963, 45912, 1, 0, 1, 1),
(23962, 45912, 1, 0, 1, 1),
(23961, 45912, 1, 0, 1, 1),
(23960, 45912, 1, 0, 1, 1),
(23956, 45912, 1, 0, 1, 1),
(23946, 45912, 1, 0, 1, 1),
(23940, 45912, 1, 0, 1, 1),
(23934, 45912, 1, 0, 1, 1),
(23932, 45912, 1, 0, 1, 1),
(23875, 45912, 1, 0, 1, 1),
(23871, 45912, 1, 0, 1, 1),
(23866, 45912, 1, 0, 1, 1),
(23796, 45912, 1, 0, 1, 1),
(23794, 45912, 1, 0, 1, 1),
(23793, 45912, 1, 0, 1, 1),
(23776, 45912, 1, 0, 1, 1),
(23760, 45912, 1, 0, 1, 1),
(23711, 45912, 1, 0, 1, 1),
(23678, 45912, 1, 0, 1, 1),
(23676, 45912, 1, 0, 1, 1),
(23675, 45912, 1, 0, 1, 1),
(23674, 45912, 1, 0, 1, 1),
(23673, 45912, 1, 0, 1, 1),
(23672, 45912, 1, 0, 1, 1),
(23670, 45912, 1, 0, 1, 1),
(23669, 45912, 1, 0, 1, 1),
(23668, 45912, 1, 0, 1, 1),
(23667, 45912, 1, 0, 1, 1),
(23666, 45912, 1, 0, 1, 1),
(23665, 45912, 1, 0, 1, 1),
(23664, 45912, 1, 0, 1, 1),
(23663, 45912, 1, 0, 1, 1),
(23662, 45912, 1, 0, 1, 1),
(23661, 45912, 1, 0, 1, 1),
(23660, 45912, 1, 0, 1, 1),
(23658, 45912, 1, 0, 1, 1),
(23657, 45912, 1, 0, 1, 1),
(23656, 45912, 1, 0, 1, 1),
(23655, 45912, 1, 0, 1, 1),
(23654, 45912, 1, 0, 1, 1),
(23653, 45912, 1, 0, 1, 1),
(23652, 45912, 1, 0, 1, 1),
(23651, 45912, 1, 0, 1, 1),
(23645, 45912, 1, 0, 1, 1),
(23644, 45912, 1, 0, 1, 1),
(23643, 45912, 1, 0, 1, 1),
(36724, 45912, 1, 0, 1, 1),
(36805, 45912, 1, 0, 1, 1),
(36807, 45912, 1, 0, 1, 1),
(36808, 45912, 1, 0, 1, 1),
(36811, 45912, 1, 0, 1, 1),
(36829, 45912, 1, 0, 1, 1),
(37004, 45912, 1, 0, 1, 1),
(37007, 45912, 1, 0, 1, 1),
(37011, 45912, 1, 0, 1, 1),
(37016, 45912, 1, 0, 1, 1),
(37017, 45912, 1, 0, 1, 1),
(37026, 45912, 1, 0, 1, 1),
(37030, 45912, 1, 0, 1, 1),
(37032, 45912, 1, 0, 1, 1),
(37144, 45912, 1, 0, 1, 1),
(37148, 45912, 1, 0, 1, 1),
(37149, 45912, 1, 0, 1, 1),
(37544, 45912, 1, 0, 1, 1),
(37545, 45912, 1, 0, 1, 1),
(37098, 45912, 1, 0, 1, 1),
(38494, 45912, 1, 0, 1, 1),
(40417, 45912, 1, 0, 1, 1);
UPDATE `spell_target_position` SET `target_orientation`='1.677' WHERE `id`=53360;

# Conditions
REPLACE INTO `conditions` VALUES ('1', '35143', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '34839', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '34838', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '34734', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '34728', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '34300', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '34273', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '34271', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '34269', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '34267', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '34199', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '34198', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '34197', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '34196', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '34193', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '34190', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '34183', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '34135', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '34134', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '34133', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '34086', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '34085', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '34069', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '34015', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '33824', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '33823', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '33822', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '33820', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '33819', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '33818', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '33772', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '33755', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '33754', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '33699', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '33528', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '33527', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '33526', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '33525', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '33431', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '33430', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '33422', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '33355', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '33354', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '32772', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '32770', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '32572', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '32507', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '32502', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '32482', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '32353', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '32349', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '32300', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '32297', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '32290', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '32289', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '32285', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '32284', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '32280', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '32278', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '32276', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '32263', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '32262', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '32260', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '32259', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '32257', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '32255', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '32236', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '32181', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '32175', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '32149', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31900', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31853', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31847', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31843', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31783', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31779', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31775', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31754', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31746', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31738', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31731', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31718', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31693', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31691', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31411', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31404', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31403', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31402', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31401', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31399', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31396', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31325', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31321', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31320', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31283', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31267', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31262', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31258', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31233', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31231', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31225', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31198', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31161', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31160', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31159', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31155', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31152', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31150', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31147', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31145', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31140', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31139', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31123', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31043', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31037', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '31015', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30988', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30951', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30949', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30922', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30921', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30920', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30894', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30877', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30876', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30873', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30865', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30864', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30863', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30862', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30861', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30860', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30856', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30849', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30845', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30842', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30831', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30830', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30829', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30751', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30746', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30725', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30701', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30698', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30697', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30696', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30689', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30687', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30682', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30681', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30680', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30632', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30597', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30543', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30541', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30453', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30448', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30447', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30430', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30414', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30333', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30329', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30319', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30287', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30286', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30285', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30284', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30283', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30279', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30278', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30277', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30276', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30258', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30250', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30222', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30206', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30205', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30204', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30202', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30179', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30167', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30148', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30147', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30146', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30144', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30135', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30111', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '30037', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29974', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29920', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29885', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29880', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29875', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29874', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29844', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29843', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29838', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29836', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29834', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29832', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29830', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29829', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29826', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29822', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29820', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29819', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29793', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29792', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29774', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29768', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29738', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29735', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29724', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29722', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29720', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29719', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29717', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29699', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29697', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29664', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29656', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29654', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29652', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29646', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29626', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29623', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29622', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29614', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29590', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29586', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29569', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29554', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29553', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29518', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29503', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29489', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29451', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29450', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29449', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29426', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29413', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29412', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29411', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29409', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29407', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29404', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29402', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29392', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29389', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29380', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29377', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29376', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29375', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29370', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29369', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29338', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29335', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29334', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29333', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29332', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29331', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29330', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29329', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29323', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29319', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29304', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29237', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29236', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29235', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29211', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29133', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29129', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29128', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29124', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29123', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '29036', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28988', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28965', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28961', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28920', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28918', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28917', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28916', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28861', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28851', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28848', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28843', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28838', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28837', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28836', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28835', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28826', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28803', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28802', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28793', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28784', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28747', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28734', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28732', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28659', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28641', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28603', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28600', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28597', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28584', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28583', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28582', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28581', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28580', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28579', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28578', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28575', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28565', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28564', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28547', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28538', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28519', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28504', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28496', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28495', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28494', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28467', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28465', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28443', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28442', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28419', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28418', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28417', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28412', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28411', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28410', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28403', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28402', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28388', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28373', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28368', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28345', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28325', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28303', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28288', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28257', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28255', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28249', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28246', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28231', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28201', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28188', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28186', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28158', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28145', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28129', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28124', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28123', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28110', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28109', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28108', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28101', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28087', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28086', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28085', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28081', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28080', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28077', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28069', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28068', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28036', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28035', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28034', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28026', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28023', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28022', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28011', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28004', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '28003', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27972', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27971', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27970', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27969', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27966', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27965', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27964', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27963', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27962', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27961', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27960', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27949', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27947', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27941', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27927', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27926', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27871', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27860', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27859', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27836', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27835', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27830', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27826', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27824', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27823', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27805', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27800', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27799', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27797', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27736', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27734', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27731', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27729', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27701', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27699', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27680', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27676', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27641', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27640', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27639', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27636', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27635', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27633', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27615', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27580', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27579', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27570', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27555', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27554', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27547', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27546', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27545', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27539', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27534', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27533', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27508', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27493', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27470', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27431', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27424', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27410', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27406', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27405', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27401', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27383', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27370', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27367', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27363', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27362', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27360', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27358', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27356', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27343', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27342', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27340', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27333', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27332', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27330', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27288', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27287', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27286', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27284', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27283', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27279', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27278', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27272', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27260', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27259', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27247', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27246', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27238', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27237', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27236', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27235', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27234', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27233', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27232', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27230', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27229', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27226', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27225', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27224', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27220', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27211', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27210', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27209', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27207', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27203', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27202', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27177', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27122', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27118', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27117', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27105', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27024', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27020', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27018', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27009', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27008', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27007', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27006', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27005', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '27004', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26965', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26948', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26943', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26942', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26926', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26923', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26922', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26921', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26920', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26919', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26891', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26863', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26862', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26858', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26836', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26830', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26828', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26827', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26825', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26823', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26820', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26816', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26815', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26805', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26803', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26802', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26801', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26800', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26799', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26798', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26797', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26795', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26792', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26786', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26782', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26771', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26770', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26769', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26762', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26737', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26735', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26734', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26730', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26729', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26728', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26727', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26722', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26716', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26705', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26704', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26696', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26694', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26679', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26672', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26670', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26669', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26663', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26658', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26655', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26641', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26639', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26638', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26637', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26636', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26635', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26628', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26626', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26625', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26624', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26623', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26622', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26621', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26620', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26606', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26605', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26577', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26575', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26555', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26554', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26553', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26550', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26544', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26496', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26493', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26492', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26481', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26480', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26472', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26457', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26456', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26455', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26451', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26449', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26447', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26436', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26434', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26428', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26425', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26417', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26416', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26414', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26413', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26411', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26410', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26409', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26408', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26405', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26389', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26357', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26356', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26348', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26344', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26343', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26336', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26334', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26319', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26280', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26270', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26268', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26266', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26257', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26252', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26202', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26201', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26199', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26198', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26197', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26196', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26126', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26115', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26103', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26076', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '26073', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25981', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25979', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25880', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25843', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25839', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25836', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25819', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25806', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25804', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25803', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25801', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25800', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25789', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25760', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25726', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25719', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25713', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25684', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25668', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25660', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25651', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25650', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25619', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25615', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25613', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25611', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25609', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25605', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25601', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25523', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25522', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25521', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25520', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25501', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25496', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25479', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25470', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25468', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25467', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25449', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25448', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25434', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25433', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25432', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25430', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25429', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25428', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25427', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25396', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25393', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25392', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25386', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25383', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25378', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25371', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25353', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25351', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25350', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25316', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25301', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25294', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25228', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25227', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25209', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '25026', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24957', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24914', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24900', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24872', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24871', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24849', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24846', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24789', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24779', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24777', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24713', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24697', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24690', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24689', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24687', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24685', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24676', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24644', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24642', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24638', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24635', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24567', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24562', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24546', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24540', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24485', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24469', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24400', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24398', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24334', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24250', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24249', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24238', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24216', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24215', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24214', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24213', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24212', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24169', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24162', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24161', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24116', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24085', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24084', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24083', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24082', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24080', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24079', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24078', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24073', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24071', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24069', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24030', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24016', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24015', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24014', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '24013', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23993', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23992', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23991', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23990', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23989', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23983', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23967', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23964', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23963', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23962', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23961', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23960', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23956', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23946', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23940', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23934', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23932', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23875', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23871', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23866', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23796', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23794', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23793', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23776', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23760', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23711', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23678', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23676', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23675', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23674', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23673', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23672', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23670', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23669', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23668', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23667', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23666', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23665', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23664', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23663', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23662', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23661', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23660', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23658', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23657', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23656', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23655', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23654', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23653', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23652', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23651', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23645', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23644', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23643', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '36724', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '36805', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '36807', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '36808', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '36811', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '36829', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '37004', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '37007', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '37011', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '37016', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '37017', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '37026', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '37030', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '37032', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '37144', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '37148', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '37149', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '37544', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '37545', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '37098', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '38494', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '40417', '45912', '0', '0', '7', '0', '773', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '20358', '0', '0', '31', '0', '3', '1749', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '20465', '0', '0', '31', '0', '3', '12580', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '3', '36450', '0', '0', '31', '0', '3', '20060', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '3', '36450', '0', '1', '31', '0', '3', '20062', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '3', '36450', '0', '2', '31', '0', '3', '20063', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '3', '36450', '0', '3', '31', '0', '3', '20064', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '36709', '0', '0', '31', '0', '3', '19622', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '4', '44233', '0', '0', '31', '0', '5', '188165', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '4', '44233', '0', '1', '31', '0', '5', '188166', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '2', '47129', '0', '0', '31', '0', '5', '187918', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7675', '9369', '0', '0', '8', '0', '10107', '0', '0', '0', '0', '', 'Show different gossip if player has rewarded quest 10107');
REPLACE INTO `conditions` VALUES ('14', '7675', '9369', '0', '1', '8', '0', '10108', '0', '0', '0', '0', '', 'Show different gossip if player has rewarded quest 10108');
REPLACE INTO `gossip_menu_option` VALUES ('9157', '0', '0', 'My totemic beacon was lost - can I get another?', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9213', '0', '0', 'Put your hand on the stone.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9256', '0', '0', 'Put your hand on the stone.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9257', '0', '0', 'Put your hand on the stone.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9273', '0', '0', 'Put your hand on the stone.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9274', '0', '0', 'Put your hand on the stone.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9275', '0', '0', 'Put your hand on the stone.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9276', '0', '0', 'Put your hand on the stone.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9266', '0', '0', 'Put your hand on the stone.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9267', '0', '0', 'Put your hand on the stone.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9268', '0', '0', 'Put your hand on the stone.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9264', '0', '0', 'Put your hand on the stone.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9265', '0', '0', 'Put your hand on the stone.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9258', '0', '0', 'Put your hand on the stone.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9269', '0', '0', 'Put your hand on the stone.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9271', '0', '0', 'Put your hand on the stone.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9272', '0', '0', 'Put your hand on the stone.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9251', '0', '0', 'Put your hand on the stone.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9254', '0', '0', 'Put your hand on the stone.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9255', '0', '0', 'Put your hand on the stone.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9278', '0', '0', 'Talespinner Festival asked me to talk to you.', '1', '1', '9281', '0', '0', '0', null);

# Fix
DELETE FROM `creature_addon` WHERE (`guid`=43481);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=31037);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=30203);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=30543);
UPDATE `creature` SET `spawndist` = 7, `MovementType` = 1 WHERE `guid` = 43481;


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

UPDATE version SET `cache_id`= '625';
UPDATE version SET `db_version`= 'YTDB_0.14.5_R625_TC_R16208_TDBAI_335_RuDB_R52';
