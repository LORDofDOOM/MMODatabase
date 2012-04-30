DELETE FROM `spell_bonus_data` WHERE `entry` IN (52042,5672);
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(5672,0.0827,-1,-1,-1, 'Shaman - Healing Stream Totem Rank 1');
DELETE FROM `creature_text` WHERE `entry`=28012;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(28012,0,0,'The trickster Mage-Lord Urom protects the third ring. He will appear alone and defenseless, but do not be fooled by appearences! Urom is a powerful conjurer who commands a menagerie of Phantasmal creatures. Seek him out above.',12,0,0,0,0,0,''),
(28012,1,1,'Your greatest challenge lies ahead. Ley-Guardian Eregos is a Blue dragon of immense power. You will find him flying above the uppermost ring.',12,0,0,0,0,0,'');
UPDATE `creature_template` SET `ScriptName`='npc_image_belgaristrasz' WHERE `entry`=28012;
DELETE FROM `trinity_string` WHERE `entry` IN(19,20); # unused entries
INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES
(19,'Update time diff: %u.'),
(20,'Time left until shutdown/restart: %s');
UPDATE `gameobject_template` SET `scriptName` = 'go_ethereal_teleport_pad' WHERE `entry` = 184073; -- Update Ethereal Teleport Pad scriptname
-- Greater Fire Elemental script
UPDATE `creature_template` SET `ScriptName`='npc_fire_elemental' WHERE `entry`=15438;
-- Greater Earth Elemental script
UPDATE `creature_template` SET `ScriptName`='npc_earth_elemental' WHERE `entry`=15352;
-- Bounus coef for Greater Fire Elemental spells
DELETE FROM `spell_bonus_data` WHERE `entry` IN (13376,57984);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`,`ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(13376,0.032,-1,-1,-1,'Greater Fire Elemental - Fire Shield'),
(57984,0.4289,-1,-1,-1,'Greater Fire Elemental - Fire Blast');
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_gen_luck_of_the_draw';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(72221,'spell_gen_luck_of_the_draw');
DELETE FROM `trinity_string` WHERE `entry`=5031;
INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES
(5031, 'AIName: %s ScriptName: %s');
UPDATE spell_dbc SET EffectImplicitTargetA1 = 22, EffectImplicitTargetB1 = 7 WHERE Id = 58630;
-- Scriptname for the cages
UPDATE `gameobject_template` SET `ScriptName`='go_veil_skith_cage' WHERE `entry` IN (185202,185203,185204,185205);
-- Texts for Captive Child
DELETE FROM `creature_text` WHERE `entry`=22314;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(22314,0,0,"Woot!",12,0,100,0,0,0,"Captive Child"),
(22314,0,1,"I think those weird bird guys were going to eat us. Gross!",12,0,100,0,0,0,"Captive Child"),
(22314,0,2,"Yay! We're free!",12,0,100,0,0,0,"Captive Child"),
(22314,0,3,"Gross!",12,0,100,0,0,0,"Captive Child");
UPDATE `spell_proc_event` SET `SpellFamilyMask0` = 0 WHERE `entry` IN (5952,51679);
DELETE FROM `areatrigger_scripts` WHERE `entry`=4752;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(4752,'at_nats_landing');
UPDATE `gameobject_template` SET `ScriptName`='go_demon_portal' WHERE `entry` IN (177243,177365,177369,177397,177398,177399,177400,177366,177367,177368);
UPDATE `gameobject_template` SET `ScriptName`='go_captain_tyralius_prison' WHERE `entry`=184588;
UPDATE `quest_template` SET `RequiredSpellCast1`=0 WHERE `id`=10422;
DELETE FROM `creature_text` WHERE `entry`=20787;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(20787,0,0,"You've saved me, fleshling! Ameer will hear of this noble act.",12,0,100,0,0,0,"Captain Tyralius");
UPDATE `item_template` SET `ScriptName`='' WHERE `entry`=23654;
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_q9452_cast_net';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(29866,'spell_q9452_cast_net');
DELETE FROM `areatrigger_scripts` WHERE `ScriptName`='at_bring_your_orphan_to';
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(3551,'at_bring_your_orphan_to'),
(3549,'at_bring_your_orphan_to'),
(3547,'at_bring_your_orphan_to'),
(3546,'at_bring_your_orphan_to'),
(3552,'at_bring_your_orphan_to'),
(3548,'at_bring_your_orphan_to'),
(4356,'at_bring_your_orphan_to');
-- Areatrigger scriptname for Brewfest
DELETE FROM `areatrigger_scripts` WHERE `entry` IN (4829,4820);
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(4829,'at_brewfest'), -- Durotar
(4820,'at_brewfest'); -- Dun Morogh
UPDATE `gameobject_template` SET `AIName`='',`ScriptName`='go_thunderspike' WHERE `entry`=184729;
