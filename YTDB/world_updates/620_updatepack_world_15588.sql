# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 619_FIX_15434 620_FIX_15588 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('620_FIX_15588');

# TC
REPLACE INTO `conditions` VALUES ('1', '23872', '38280', '0', '0', '14', '0', '12491', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('1', '23872', '38281', '0', '0', '14', '0', '12492', '0', '0', '0', '0', '', null);
UPDATE `creature_template` SET `unit_flags` = 0 WHERE `entry` = 33118;
UPDATE `creature_template` SET `unit_flags` = 0 WHERE `entry` = 33190;

# SignFinder
UPDATE `spelldifficulty_dbc` SET `spellid0`= 61890 WHERE `id`= 3251 AND `spellid1`= 63498;

# TC
-- Update proper modelid for Celestial Steed (31957 is wrong)
UPDATE `creature_template` SET `modelid1`=31958,`modelid2`=0 WHERE `entry`=40625;
-- Druid
UPDATE `spell_bonus_data` SET `direct_bonus`=0,`dot_bonus`=0 WHERE `entry` IN (779,1822,60089);
DELETE FROM `spell_bonus_data` WHERE `entry` IN (1079,9007,22568);
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(1079,0,0,-1,-1, 'Druid - Rip'),
(9007,0,0,-1,-1, 'Druid - Pounce Bleed'),
(22568,0,0,-1,-1, 'Druid - Ferocious Bite');

-- Hunter
UPDATE `spell_bonus_data` SET `direct_bonus`=0,`dot_bonus`=0 WHERE `entry` IN (3044,3674,53352,13812,13797,1978,42243);
UPDATE `spell_bonus_data` SET `ap_dot_bonus`=0.1 WHERE `entry`=13812;
DELETE FROM `spell_bonus_data` WHERE `entry` IN (24131,53353);
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(24131,0,0,-1,-1, 'Hunter - Wyvern Sting (triggered)'),
(53353,0,0,-1,-1, 'Hunter - Chimera Shot (Serpent)');
DELETE FROM `spell_ranks` WHERE `first_spell_id`=24131;
INSERT INTO `spell_ranks` VALUES
(24131,24131,1),
(24131,24134,2),
(24131,24135,3),
(24131,27069,4),
(24131,49009,5),
(24131,49010,6);

-- Rogue
UPDATE `spell_bonus_data` SET `direct_bonus`=0,`dot_bonus`=0 WHERE `entry` IN (2818,2819,11353,11354,25349,26968,27187,57969,57970);

-- Howling blast
UPDATE `spell_bonus_data` SET `ap_bonus`=0.2 WHERE `entry`=49184;
-- Fixes some spell power stacking exploits
DELETE FROM `spell_bonus_data` WHERE `entry` IN (44525,18798,16614,7712,13897);
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(44525,0,0,-1,-1, 'Enchant Weapon - Icebreaker'),
(18798,0,0,-1,-1, 'Item - Freezing Band'),
(16614,0,0,-1,-1, 'Item - Storm Gauntlets'),
(7712,0,0,-1,-1, 'Item - Fiery Retributer | Blazefury Medallion'),
(13897,0,0,-1,-1, 'Enchant Weapon - Fiery Weapon');
-- Update modelid for Invincible (with not bugged animation)
UPDATE `creature_template` SET `modelid1`=31007,`modelid2`=0 WHERE `entry`=38545;

UPDATE `smart_scripts` SET `target_type`=`action_param6` WHERE
(`entryorguid`=369200 AND `source_type`=9 AND `id`=3) OR
(`entryorguid`=369201 AND `source_type`=9 AND `id`=3) OR
(`entryorguid`=3692 AND `source_type`=0 AND `id`=2) OR
(`entryorguid`=3692 AND `source_type`=0 AND `id`=3) OR
(`entryorguid`=3584 AND `source_type`=0 AND `id`=3) OR
(`entryorguid`=3584 AND `source_type`=0 AND `id`=4) OR
(`entryorguid`=954600 AND `source_type`=9 AND `id`=2) OR
(`entryorguid`=954600 AND `source_type`=9 AND `id`=3) OR
(`entryorguid`=7207 AND `source_type`=0 AND `id`=1) OR
(`entryorguid`=7207 AND `source_type`=0 AND `id`=2) OR
(`entryorguid`=911700 AND `source_type`=9 AND `id`=3);

UPDATE `smart_scripts` SET `action_param6`=0 WHERE
(`entryorguid`=369200 AND `source_type`=9 AND `id`=3) OR
(`entryorguid`=369201 AND `source_type`=9 AND `id`=3) OR
(`entryorguid`=3692 AND `source_type`=0 AND `id`=2) OR
(`entryorguid`=3692 AND `source_type`=0 AND `id`=3) OR
(`entryorguid`=3584 AND `source_type`=0 AND `id`=3) OR
(`entryorguid`=3584 AND `source_type`=0 AND `id`=4) OR
(`entryorguid`=954600 AND `source_type`=9 AND `id`=2) OR
(`entryorguid`=954600 AND `source_type`=9 AND `id`=3) OR
(`entryorguid`=7207 AND `source_type`=0 AND `id`=1) OR
(`entryorguid`=7207 AND `source_type`=0 AND `id`=2) OR
(`entryorguid`=911700 AND `source_type`=9 AND `id`=3);

-- Gnomish Playback Device (item 52709) Targeting condition -- by norfik closes #2169
DELETE FROM `conditions` WHERE `SourceEntry`=74222 AND `ConditionValue2` IN (1268, 7955, 6119);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17, 0, 74222, 1, 31, 3, 1268, 0, 63, '', 'Gnomish Playback Device on Ozzie Togglevolt'),
(17, 0, 74222, 2, 31, 3, 7955, 0, 63, '', 'Gnomish Playback Device on Milli Featherwhistle'),
(17, 0, 74222, 3, 31, 3, 6119, 0, 63, '', 'Gnomish Playback Device on Tog Rustsprocket');

-- fix revenge ap coeff -- by ric101 closes #3344
UPDATE `spell_bonus_data` SET `ap_bonus` = 0.310 WHERE `entry` = 6572; 

-- fix life seed sp coeff -- by warpten closes #4162
DELETE FROM `spell_bonus_data` WHERE `entry`=48503;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(48503,0,0,0,0, 'Druid - Living Seed Heal');

-- fix glyph of shadowflame proc only allow on damage. by kandera closes #3530
UPDATE `spell_proc_event` SET `procEx` = procEx|262144 WHERE`entry` = 63310; -- Glyph of shadowflame fix

-- Fix Kor'kron War Rider flying by trista closes #5569
UPDATE `creature_template` SET `inhabittype`=5,`speed_walk`=1, `speed_run`=1 WHERE `entry`=26813;

-- Dark Portal - corrects the entry position and orientation by cdawg closes #5470
UPDATE `areatrigger_teleport` SET `target_position_x`=-248.149292, `target_position_y`=921.874953, `target_position_z`=84.388448, `target_orientation`=1.584155 WHERE `id`=4354;

-- fix procs by warpten closes #4467 for 
-- Needle-Encrusted Scorpion
DELETE FROM `spell_proc_event` WHERE `entry`=71404;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(71404,0,0,0,0,0,0,2,0,0,50);

-- Black Magic
DELETE FROM `spell_proc_event` WHERE `entry`=59630;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(59630,0,0,0,0,0,0,0,0,0,35);

-- fix winterskorn raider not landing by nayd closes #3899
UPDATE `creature_template` SET `InhabitType`=`InhabitType`|1 WHERE `entry`=23665;

UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry` IN (38308,38309,37824); -- Professor Putricide triggers

REPLACE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`Comment`) VALUES
(13,4,71615,31,3,37690,'Putricide - Tear Gas on Slime Puddle'),
(13,1,71618,31,3,37562,'Putricide - Tear Gas on Gas Cloud'),
(13,2,71618,31,3,37697,'Putricide - Tear Gas on Volatile Ooze'),
(13,4,71618,31,3,38159,'Putricide - Tear Gas on Choking Gas Bomb');

-- Blackened Naaru Silver proc cooldown
DELETE FROM `spell_proc_event` WHERE `entry`=45355;
INSERT INTO `spell_proc_event`(`entry`,`schoolmask`,`spellfamilyname`,`spellfamilymask0`,`spellfamilymask1`,`spellfamilymask2`,`procflags`,`procex`,`ppmrate`,`customchance`,`cooldown`) VALUES
(45355,0,0,0,0,0,0,0,0,0,45);

UPDATE `creature_template_addon` SET `auras`='50453' WHERE `entry`=28017;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=28017;
UPDATE `creature_template` SET `ainame` = '' WHERE `entry`=28017;

UPDATE `spell_bonus_data` SET `direct_bonus`=0.8930 WHERE `entry`=51505;
DELETE FROM `spell_proc_event` WHERE `entry`=53601;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(53601, 0, 0, 0x00000000, 0x00000000, 0x00000000, 0, 0, 0, 0, 6);
DELETE FROM `spell_proc_event` WHERE `entry` IN (51486,51485,51483);
UPDATE `npc_spellclick_spells` SET `spell_id`=57053 WHERE `npc_entry`=30066 AND `spell_id`=56678;
UPDATE `creature_template` SET `spell1`=55812 WHERE `entry`=30066;
-- Add condition to the Lovely Charm aura
DELETE FROM conditions WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`= 69511;
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, ElseGroup, ConditionTypeOrReference, ConditionValue1, ConditionValue2, ConditionValue3, ErrorTextId, ScriptName, COMMENT) VALUES
(17,0,69511,0,12,8,0,0,0, '', 'Lovely Charm - Only during event');
UPDATE `creature_model_info` SET `bounding_radius`=0.93,`combat_reach`=9,`gender`=0 WHERE `modelid`=28641; -- Algalon the Observer
UPDATE `creature_model_info` SET `bounding_radius`=0.02,`combat_reach`=0.2,`gender`=2 WHERE `modelid`=29133; -- Azeroth
UPDATE `creature_model_info` SET `bounding_radius`=0.62,`combat_reach`=0,`gender`=2 WHERE `modelid`=28741; -- Living Constellation
UPDATE `creature_model_info` SET `bounding_radius`=1,`combat_reach`=1,`gender`=2 WHERE `modelid`=28988; -- Collapsing Star
UPDATE `creature_model_info` SET `bounding_radius`=1,`combat_reach`=1,`gender`=2 WHERE `modelid`=28460; -- Black Hole
UPDATE `gameobject_template` SET `faction`=114,`flags`=32 WHERE `entry`=194910; -- Doodad_UL_SigilDoor_03
UPDATE `gameobject_template` SET `data0`=579 WHERE `entry`=194628; -- Celestial Planetarium Access
DELETE FROM `creature_template_addon` WHERE `entry` IN (32871,33070,33052,33116,33089,34221,34097,34222,33105);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`auras`) VALUES
(32871,0,0x0000000,0x0,NULL), -- Algalon the Observer
(33070,0,0x0000000,0x0,NULL), -- Algalon the Observer
(33052,0,0x3000000,0x1,NULL), -- Living Constellation
(33116,0,0x3000000,0x1,NULL), -- Living Constellation
(33089,0,0x3000000,0x1,NULL), -- Dark Matter
(34221,0,0x3000000,0x1,NULL), -- Dark Matter
(34097,0,0x3000000,0x1,NULL), -- Unleashed Dark Matter
(34222,0,0x3000000,0x1,NULL), -- Unleashed Dark Matter
(33105,0,0x3000000,0x1,NULL); -- Algalon Stalker Asteroid Target 02
DELETE FROM `creature_text` WHERE `entry` IN (32871,34064);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`sound`,`emote`,`comment`) VALUES
(34064,0,0,'We did it, lads! We got here before Algalon''s arrival. Maybe we can rig the systems to interfere with his analysis--',14,15824,0,'Brann Bronzebeard - SAY_BRANN_ALGALON_INTRO_1'),
(34064,1,0,'I''ll head back to the Archivum and see if I can jam his signal. I might be able to buy us some time while you take care of him.',12,15825,0,'Brann Bronzebeard - SAY_BRANN_ALGALON_INTRO_2'),
(34064,2,0,'I know just the place. Will you be all right?',14,15823,6,'Brann Bronzebeard - SAY_BRANN_ALGALON_OUTRO'),
(32871,0,0,'Translocation complete. Commencing planetary analysis of Azeroth.',12,15405,0,'Algalon the Observer - SAY_ALGALON_INTRO_1'),
(32871,1,0,'Stand back, mortals. I''m not here to fight you.',12,15406,0,'Algalon the Observer - SAY_ALGALON_INTRO_2'),
(32871,2,0,'It is in the universe''s best interest to re-originate this planet should my analysis find systemic corruption. Do not interfere.',12,15407,0,'Algalon the Observer - SAY_ALGALON_INTRO_3'),
(32871,3,0,'Your actions are illogical. All possible results for this encounter have been calculated. The Pantheon will receive the Observer''s message regardless of outcome.',14,15386,0,'Algalon the Observer - SAY_ALGALON_START_TIMER'),
(32871,4,0,'See your world through my eyes: A universe so vast as to be immeasurable - incomprehensible even to your greatest minds.',14,15390,1,'Algalon the Observer - SAY_ALGALON_AGGRO'),
(32871,5,0,'The stars come to my aid!',14,15392,0,'Algalon the Observer - SAY_ALGALON_COLLAPSING_STAR'),
(32871,6,0,'%s begins to Summon Collapsing Stars!',41,0,0,'Algalon the Observer - EMOTE_ALGALON_COLLAPSING_STAR'),
(32871,7,0,'Witness the fury of the cosmos!',14,15396,0,'Algalon the Observer - SAY_ALGALONG_BIG_BANG'),
(32871,8,0,'%s begins to cast Big Bang!',41,0,0,'Algalon the Observer - EMOTE_ALGALON_BIG_BANG'),
(32871,9,0,'You are out of time.',14,15394,0,'Algalon the Observer - SAY_ALGALON_ASCEND'),
(32871,10,0,'%s begins to cast Cosmic Smash!',41,0,0,'Algalon the Observer - EMOTE_ALGALON_COSMIC_SMASH'),
(32871,11,0,'Behold the tools of creation!',14,15397,0,'Algalon the Observer - SAY_ALGALON_PHASE_TWO'),
(32871,12,0,'I have seen worlds bathed in the Makers'' flames, their denizens fading without as much as a whimper. Entire planetary systems born and razed in the time that it takes your mortal hearts to beat once. Yet all throughout, my own heart devoid of emotion... of empathy. I. Have. Felt. Nothing. A million-million lives wasted. Had they all held within them your tenacity? Had they all loved life as you do?',14,15393,1,'Algalon the Observer - SAY_ALGALON_OUTRO_1'),
(32871,13,0,'Perhaps it is your imperfections... that which grants you free will... that allows you to persevere against all cosmically calculated odds. You prevail where the Titan''s own perfect creations have failed.',14,15401,1,'Algalon the Observer - SAY_ALGALON_OUTRO_2'),
(32871,14,0,'I''ve rearranged the reply code - your planet will be spared. I cannot be certain of my own calculations anymore.',14,15402,1,'Algalon the Observer - SAY_ALGALON_OUTRO_3'),
(32871,15,0,'I lack the strength to transmit the signal. You must... hurry... find a place of power... close to the skies.',14,15403,1,'Algalon the Observer - SAY_ALGALON_OUTRO_4'),
(32871,16,0,'Do not worry about my fate, Bronzen. If the signal is not transmitted in time, re-origination will proceed regardless. Save... your world...',14,15404,1,'Algalon the Observer - SAY_ALGALON_OUTRO_5'),
(32871,17,0,'Analysis complete. There is partial corruption in the planet''s life-support systems as well as complete corruption in most of the planet''s defense mechanisms.',12,15398,0,'Algalon the Observer - SAY_ALGALON_DESPAWN_1'),
(32871,18,0,'Begin uplink: Reply Code: ''Omega''. Planetary re-origination requested.',12,15399,0,'Algalon the Observer - SAY_ALGALON_DESPAWN_2'),
(32871,19,0,'Farewell, mortals. Your bravery is admirable, for such flawed creatures.',12,15400,0,'Algalon the Observer - SAY_ALGALON_DESPAWN_3'),
(32871,20,0,'Loss of life unavoidable.',14,15387,0,'Algalon the Observer - SAY_ALGALON_KILL'),
(32871,20,1,'I do what I must.',14,15388,0,'Algalon the Observer - SAY_ALGALON_KILL');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`Comment`) VALUES
(13,1,64996,31,3,34246,'Algalon the Observer - Reorigination on Azeroth'),
(13,1,62266,31,3,33052,'Algalon Stalker - target Living Constellation'),
(13,1,65509,31,3,33052,'Black Hole - target Living Constellation'),
(13,1,62304,31,3,33104,'Cosmic Smash - target trigger'),
(13,1,64597,31,3,33104,'Cosmic Smash - target trigger');
UPDATE `instance_encounters` SET `creditType`=1,`creditEntry`=65184 WHERE `entry` IN (757,771); -- Algalon the Observer
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (10565,10566,10678,9990,9991,10567,10569,10698,10780,10781,10782,10783,10568,10570);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(10565,12,0,0,''), -- Algalon the Observer kills (Ulduar 10 player)
(10566,12,1,0,''), -- Algalon the Observer kills (Ulduar 25 player)
(10678,12,0,0,''), -- Herald of the Titans
(10678,18,0,0,''), -- Herald of the Titans
(9990,12,0,0,''), -- Lich King 10-player bosses killed
(9991,12,1,0,''), -- Lich King 25-player bosses killed
(10567,12,0,0,''), -- Observed (10 player)
(10569,12,1,0,''), -- Observed (25 player)
(10698,12,1,0,''), -- Realm First! Celestial Defender
(10780,12,0,0,''), -- Supermassive (10 player)
(10781,12,0,0,''), -- Supermassive (10 player)
(10782,12,1,0,''), -- Supermassive (25 player)
(10783,12,1,0,''), -- Supermassive (25 player)
(10568,11,0,0,'achievement_he_feeds_on_your_tears'), -- He Feeds On Your Tears (10 player)
(10568,12,0,0,''), -- He Feeds On Your Tears (10 player)
(10570,11,0,0,'achievement_he_feeds_on_your_tears'), -- He Feeds On Your Tears (25 player)
(10570,12,1,0,''); -- He Feeds On Your Tears (25 player)
-- SAI for Tabard Vendor Elizabeth Ross
SET @ROSS := 28776;
SET @GOSSIP := 9832;
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@ROSS;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ROSS AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ROSS, 0, 0, 10, 62, 0, 100, 0, @GOSSIP, 1, 0, 0, 11, 54974, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Elizabeth Ross - On Gossip Select - Cast Spell Create Blood Knight Tabard'),
(@ROSS, 0, 1, 10, 62, 0, 100, 0, @GOSSIP, 2, 0, 0, 11, 54976, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Elizabeth Ross - On Gossip Select - Cast Spell Create Tabard of the Hand'),
(@ROSS, 0, 2, 10, 62, 0, 100, 0, @GOSSIP, 3, 0, 0, 11, 55008, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Elizabeth Ross - On Gossip Select - Cast Spell Create Tabard of the Protector'),
(@ROSS, 0, 3, 10, 62, 0, 100, 0, @GOSSIP, 4, 0, 0, 11, 54977, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Elizabeth Ross - On Gossip Select - Cast Spell Create Green Trophy Tabard of the Illidari'),
(@ROSS, 0, 4, 10, 62, 0, 100, 0, @GOSSIP, 5, 0, 0, 11, 54982, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Elizabeth Ross - On Gossip Select - Cast Spell Create Purple Trophy Tabard of the Illidari'),
(@ROSS, 0, 5, 10, 62, 0, 100, 0, @GOSSIP, 6, 0, 0, 11, 62768, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Elizabeth Ross - On Gossip Select - Cast Spell Create Tabard of Summer Skies'),
(@ROSS, 0, 6, 10, 62, 0, 100, 0, @GOSSIP, 7, 0, 0, 11, 62769, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Elizabeth Ross - On Gossip Select - Cast Spell Create Tabard of Summer Flames'),
(@ROSS, 0, 7, 10, 62, 0, 100, 0, @GOSSIP, 8, 0, 0, 11, 58194, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Elizabeth Ross - On Gossip Select - Cast Spell Create Loremaster''s Colors'),
(@ROSS, 0, 8, 10, 62, 0, 100, 0, @GOSSIP, 9, 0, 0, 11, 58224, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Elizabeth Ross - On Gossip Select - Cast Spell Create Tabard of the Explorer'),
(@ROSS, 0, 9, 10, 62, 0, 100, 0, @GOSSIP, 10, 0, 0, 11, 55006, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Elizabeth Ross - On Gossip Select - Cast Spell Create Tabard of the Achiever'),
(@ROSS, 0, 10, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Elizabeth Ross - On Gossip Select - Close Gossip');
DELETE FROM `gossip_menu_option` WHERE `menu_id`=@GOSSIP AND `id`>0 AND `id`<11;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES 
(@GOSSIP, 1, 0, 'I''ve lost my Blood Knight Tabard.', 1, 1, 0, 0, 0, 0, ''),
(@GOSSIP, 2, 0, 'I''ve lost my Tabard of the Hand.', 1, 1, 0, 0, 0, 0, ''),
(@GOSSIP, 3, 0, 'I''ve lost my Tabard of the Protector.', 1, 1, 0, 0, 0, 0, ''),
(@GOSSIP, 4, 0, 'I''ve lost my Green Trophy Tabard of the Illidari.', 1, 1, 0, 0, 0, 0, ''),
(@GOSSIP, 5, 0, 'I''ve lost my Purple Trophy Tabard of the Illidari.', 1, 1, 0, 0, 0, 0, ''),
(@GOSSIP, 6, 0, 'I''ve lost my Tabard of Summer Skies.', 1, 1, 0, 0, 0, 0, ''),
(@GOSSIP, 7, 0, 'I''ve lost my Tabard of Summer Flames.', 1, 1, 0, 0, 0, 0, ''),
(@GOSSIP, 8, 0, 'I''ve lost my Loremaster''s Colors.', 1, 1, 0, 0, 0, 0, ''),
(@GOSSIP, 9, 0, 'I''ve lost my Tabard of the Explorer.', 1, 1, 0, 0, 0, 0, ''),
(@GOSSIP, 10, 0, 'I''ve lost my Tabard of the Achiever.', 1, 1, 0, 0, 0, 0, '');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,@GOSSIP,1,0,2,25549,1,1,1,0,'','Only show gossip if player doesn''t have Blood Knight Tabard'),
(15,@GOSSIP,1,0,8,9737,0,0,0,0,'','Only show gossip if player already finished quest True Masters of Light'),
(15,@GOSSIP,2,0,2,24344,1,1,1,0,'','Only show gossip if player doesn''t have Tabard of the Hand'),
(15,@GOSSIP,2,0,8,9762,0,0,0,0,'','Only show gossip if player already finished quest The Unwritten Prophecy'),
(15,@GOSSIP,3,0,2,28788,1,1,1,0,'','Only show gossip if player doesn''t have Tabard of the protector'),
(15,@GOSSIP,3,0,8,10259,0,0,0,0,'','Only show gossip if player already finished quest Into the Breach'),
(15,@GOSSIP,4,0,2,31404,1,1,1,0,'','Only show gossip if player doesn''t have Green Trophy Tabard of Illidari'),
(15,@GOSSIP,4,0,2,31405,1,1,1,0,'','Only show gossip if player doesn''t have Purple Trophy Tabard of Illidari'),
(15,@GOSSIP,4,0,2,31408,1,1,1,0,'','Only show gossip if player doesn''t have Offering of the Sha''tar'),
(15,@GOSSIP,4,0,8,10781,0,0,0,0,'','Only show gossip if player already finished quest Battle of the Crimson Watch'),
(15,@GOSSIP,5,0,2,31404,1,1,1,0,'','Only show gossip if player doesn''t have Green Trophy Tabard of Illidari'),
(15,@GOSSIP,5,0,2,31405,1,1,1,0,'','Only show gossip if player doesn''t have Purple Trophy Tabard of Illidari'),
(15,@GOSSIP,5,0,2,31408,1,1,1,0,'','Only show gossip if player doesn''t have Offering of the Sha''tar'),
(15,@GOSSIP,5,0,8,10781,0,0,0,0,'','Only show gossip if player already finished quest Battle of the Crimson Watch'),
(15,@GOSSIP,6,0,2,35279,1,1,1,0,'','Only show gossip if player doesn''t have Tabard of Summer Skies'),
(15,@GOSSIP,6,0,2,35280,1,1,1,0,'','Only show gossip if player doesn''t have Tabard of Summer Flames'),
(15,@GOSSIP,6,0,8,11972,0,0,0,0,'','Only show gossip if player already finished quest Shards of Ahune'),
(15,@GOSSIP,7,0,2,35279,1,1,1,0,'','Only show gossip if player doesn''t have Tabard of Summer Skies'),
(15,@GOSSIP,7,0,2,35280,1,1,1,0,'','Only show gossip if player doesn''t have Tabard of Summer Flames'),
(15,@GOSSIP,7,0,8,11972,0,0,0,0,'','Only show gossip if player already finished quest Shards of Ahune'),
(15,@GOSSIP,8,0,2,43300,1,1,1,0,'','Only show gossip if player doesn''t have Loremaster''s Colors'),
(15,@GOSSIP,8,0,17,1681,0,0,0,0,'','Only show gossip if player have achievement Loremaster (A)'),
(15,@GOSSIP,8,1,2,43300,1,1,1,0,'','Only show gossip if player doesn''t have Loremaster''s Colors'),
(15,@GOSSIP,8,1,17,1682,0,0,0,0,'','Only show gossip if player have achievement Loremaster (H)'),
(15,@GOSSIP,9,0,2,43348,1,1,1,0,'','Only show gossip if player doesn''t have Tabard of the Explorer'),
(15,@GOSSIP,9,0,17,45,0,0,0,0,'','Only show gossip if player have achievement Explore Northrend'),
(15,@GOSSIP,10,0,2,40643,1,1,1,0,'','Only show gossip if player doesn''t have Tabard of the Explorer'),
(15,@GOSSIP,10,0,17,1021,0,0,0,0,'','Only show gossip if player have achievement Twenty-Five Tabards');
UPDATE `creature_template` SET `flags_extra`=0x82,`ModelId1`=1126,`ModelId2`=16925 WHERE `entry` IN (38008,38641,38773,38774); -- Blood Orb Controller
UPDATE `creature_template` SET `flags_extra`=0x80,`ModelId1`=19725,`ModelId2`=31095,`baseattacktime`=2000,`speed_walk`=0.8,`speed_run`=0.28571 WHERE `entry` IN (38454,38775,38776,38777); -- Kinetic Bomb
UPDATE `creature_template` SET `exp`=2,`baseattacktime`=2000,`ModelId1`=19725,`ModelId2`=21342 WHERE `entry`=38458; -- Kinetic Bomb Target
UPDATE `creature_template` SET `baseattacktime`=2000,`speed_walk`=4.4,`ModelId1`=19725,`ModelId2`=26767 WHERE `entry` IN (38332,38451); -- Ball of Flame
UPDATE `creature_template` SET `flags_extra`=0x80 WHERE `entry`=37950; -- Valithria Dreamwalker
UPDATE `creature_template` SET `InhabitType`=4 WHERE `InhabitType`&4 AND `flags_extra`&0x80; -- make flying triggers fly
UPDATE `creature_template` SET `InhabitType`=4,`HoverHeight`=12 WHERE `entry`=37126; -- Sister Svalna
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=37950; -- Valithria Dreamwalker
UPDATE `creature_model_info` SET `bounding_radius`=1,`combat_reach`=0,`gender`=0 WHERE `modelid`=31095; -- Kinetic Bomb
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=1,`gender`=0 WHERE `modelid`=21342; -- Kinetic Bomb Target
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=1,`gender`=0 WHERE `modelid`=26767; -- Ball of Flame
UPDATE `creature_template_addon` SET `bytes1`=50331648,`bytes2`=1,`mount`=0,`emote`=0,`auras`=NULL WHERE `entry`=38454; -- Kinetic Bomb
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,46488,0,1,31,1,3,26817,0,0,0,'',''),
(13,1,46488,0,1,36,1,0,0,0,1,0,'','');
-- Honor Among Thieves proc chance
UPDATE `spell_proc_event` SET `CustomChance`=33 WHERE `entry`=51698; -- Rank 1
UPDATE `spell_proc_event` SET `CustomChance`=66 WHERE `entry`=51700; -- Rank 2
UPDATE `spell_proc_event` SET `CustomChance`=100 WHERE `entry`=51701; -- Rank 3
 -- Rogue T9 2P - Should proc only from Rupture ticks.
DELETE FROM `spell_proc_event` WHERE `entry` IN(67209);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `procFlags`) VALUES 
(67209, 0x01, 8, 0x100000, 0x50000);
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,46485,0,1,31,1,3,26817,0,0,0,'',''),
(13,1,46485,0,1,36,1,0,0,0,1,0,'',''),
(13,1,46488,0,1,31,1,3,26817,0,0,0,'',''),
(13,1,46488,0,1,36,1,0,0,0,1,0,'','');

-- Gnome Soul SAI
SET @ENTRY := 26096;
SET @SPELL_ARCANE_EXPLOSION := 35426;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,33,@ENTRY,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gnome Soul - On Just Summoned - Quest Credit"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,25814,10,1,0,0,0,0,"Gnome Soul - On Just Summoned - Set Data Fizzcrank Mechagnome"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,69,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gnome Soul - On Just Summoned - Move to Summoner"),

(@ENTRY,0,3,4,34,0,100,0,1,0,0,0,11,@SPELL_ARCANE_EXPLOSION,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gnome Soul - Reached Summoner - Cast Arcane Explosion Visual"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gnome Soul - Reached Summoner - Forced Despawn");

-- Fizzcrank Mechagnome SAI
SET @ENTRY := 25814;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,1,1,10000,0,0,0,0,0,0,0,0,0,0,0,0,"Fizzcrank Mechagnome - Chance Say on Aggro"),
(@ENTRY,0,1,0,38,0,100,0,1,1,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fizzcrank Mechagnome - On Data Set - Forced Despawn");

UPDATE `smart_scripts` SET `source_type`=0,`id`=1 WHERE `entryorguid`=24814 AND `source_type`=1 AND `event_type`=38;
UPDATE `conditions` SET `SourceTypeOrReferenceId`=17 WHERE `SourceEntry` IN (46485,46488);
UPDATE `conditions` SET `ElseGroup`=0 WHERE `SourceEntry` IN (46485,46488) AND `ConditionValue1`=26817;

# NeatElves
delete from gameobject_scripts where id=48745; 
insert into gameobject_scripts values
(48745,1,11,48738,0,0,0,0,0,0);
UPDATE creature_template SET unit_flags=unit_flags|33554752, faction_A=40, faction_H=40, MovementType=0 WHERE entry=9816;
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (6490,10572);
UPDATE creature_template SET gossip_menu_id = 6508 WHERE entry = 15102;
UPDATE gossip_menu SET entry = 6508 WHERE entry = 6510;
UPDATE gossip_menu_option SET menu_id = 6508 WHERE menu_id = 6510;
UPDATE locales_gossip_menu_option SET menu_id = 6508 WHERE menu_id = 6510;
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (6508,10566);
UPDATE creature SET position_x = '-964.875854', position_y = '2168.597412', position_z = '15.898816', orientation = '0.893770' WHERE guid = '58942';
DELETE FROM gameobject WHERE guid = '43914';
UPDATE creature SET position_x = '-933.549194', position_y = '2118.698486', position_z = '21.330379', orientation = '0.698224' WHERE guid = '58950';
UPDATE creature SET position_x = '-944.724915', position_y = '2129.702881', position_z = '20.921568', orientation = '1.882605' WHERE guid = '58948';
DELETE FROM `creature` WHERE `id` in (19640,19420);
UPDATE creature SET position_x = '-1065.064697', position_y = '2254.654785', position_z = '24.817873', orientation = '0.869443' WHERE guid = '58943';
UPDATE `creature_template_addon` SET `mount`='9562' WHERE `entry`=19424;
DELETE FROM `creature_addon` WHERE `guid` = 58945;
DELETE FROM `creature_addon` WHERE `guid` = 58984;
DELETE FROM `creature_addon` WHERE `guid` = 58988;
DELETE FROM `creature_addon` WHERE `guid` = 59054;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(58945, 19424, 530, 1, 1, 0, 0, -1183.66, 1999.52, 74.1797, 0.851996, 300, 5, 0, 3984, 2434, 1),
(58984, 19424, 530, 1, 1, 0, 0, -1138.52, 1901.65, 81.3538, 1.28713, 300, 5, 0, 3984, 2434, 1),
(58988, 19424, 530, 1, 1, 0, 0, -1085.62, 1986.82, 68.8359, 1.36594, 300, 5, 0, 3984, 2434, 1),
(59054, 19424, 530, 1, 1, 0, 0, -1099, 1953.35, 76.1699, 3.60316, 300, 5, 0, 3984, 2434, 1),
(56779, 19424, 530, 1, 1, 0, 0, -1141.45, 2039.27, 67.0646, 3.25189, 300, 5, 0, 3984, 2434, 1),
(56780, 19424, 530, 1, 1, 0, 0, -1194.21, 2068.98, 78.3852, 6.17069, 300, 5, 0, 3984, 2434, 1),
(56781, 19424, 530, 1, 1, 0, 0, -1055.12, 2157.29, 34.2195, 4.51174, 300, 5, 0, 3984, 2434, 1),
(56782, 19424, 530, 1, 1, 0, 0, -885.924, 2057.69, 35.7585, 4.6984, 300, 0, 0, 3984, 2434, 0),
(56783, 19424, 530, 1, 1, 0, 0, -868.391, 2063.93, 30.6293, 4.37173, 300, 0, 0, 3984, 2434, 0),
(56784, 19424, 530, 1, 1, 0, 0, -929.326, 2171.63, 12.6575, 5.50607, 300, 5, 0, 3984, 2434, 1),
(56785, 19424, 530, 1, 1, 0, 0, -959.787, 2209.46, 9.9771, 5.75947, 300, 5, 0, 3984, 2434, 1),
(56786, 19424, 530, 1, 1, 0, 0, -1067.51, 2249.84, 24.9013, 2.53951, 300, 5, 0, 3984, 2434, 1);
UPDATE `gameobject_template` SET `faction`='1801' WHERE `entry`=182937;
UPDATE `gameobject_template` SET `faction`='1801' WHERE `entry`=182938;
UPDATE `gameobject_template` SET `faction`='1802' WHERE `entry`=182797;
UPDATE `gameobject_template` SET `faction`='1802' WHERE `entry`=182798;
REPLACE INTO gameobject VALUES ( 38590, 182797, 530, 1,1,-501.851, 2751.65, 60.1238, 5.57401, 0, 0, 0.347203, -0.93779, 120, 100, 1);
REPLACE INTO gameobject VALUES ( 38591, 182797, 530, 1,1,-510.692, 2666.99, 69.9723, 5.56302, 0, 0, 0.352353, -0.935867, 120, 100, 1);
REPLACE INTO gameobject VALUES ( 38592, 182797, 530, 1,1,-373.672, 2321.35, 47.3332, 6.00439, 0, 0, 0.138945, -0.9903, 120, 100, 1);
REPLACE INTO gameobject VALUES ( 38593, 182797, 530, 1,1,-259.081, 2295.62, 59.8792, 3.12434, 0, 0, 0.999963, 0.00862643, 120, 100, 1);
REPLACE INTO gameobject VALUES ( 38594, 182797, 530, 1,1,-497.887, 2568.58, 62.936, 0.296114, 0, 0, 0.147517, 0.98906, 120, 100, 1);
REPLACE INTO gameobject VALUES ( 38595, 182797, 530, 1,1,-378.334, 2812.6, 12.7974, 1.13963, 0, 0, 0.539477, 0.842, 120, 100, 1);
REPLACE INTO gameobject VALUES ( 38596, 182797, 530, 1,1,-424.356, 2894.51, 20.5515, 2.22505, 0, 0, 0.896819, 0.442398, 120, 100, 1);
REPLACE INTO gameobject VALUES ( 38597, 182797, 530, 1,1,-510.551, 2807.47, 53.5466, 4.21761, 0, 0, 0.858731, -0.512427, 120, 100, 1);
DELETE FROM `creature_loot_template` WHERE `item` in (25912,25911,28116);
DELETE FROM `gameobject` WHERE `guid` = 67352;
DELETE FROM `gameobject` WHERE `guid` = 67360;
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('14352', '12', 'Salvageable Metal (A)'), ('14353', '12', 'Salvageable Metal (H)');
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(38597,14352,0,'Salvageable Metal (A)'),(38596,14352,0,'Salvageable Metal (A)'),
(38595,14352,0,'Salvageable Metal (A)'),(38594,14352,0,'Salvageable Metal (A)'),
(38593,14352,0,'Salvageable Metal (A)'),(38592,14352,0,'Salvageable Metal (A)'),
(38591,14352,0,'Salvageable Metal (A)'),(38590,14352,0,'Salvageable Metal (A)'),
(38589,14352,0,'Salvageable Metal (A)'),(38588,14352,0,'Salvageable Metal (A)'),
(38587,14352,0,'Salvageable Metal (A)'),(26089,14352,0,'Salvageable Metal (A)'),
(26090,14352,0,'Salvageable Metal (A)'),(26091,14352,0,'Salvageable Metal (A)'),
(26092,14352,0,'Salvageable Metal (A)'),(26093,14352,0,'Salvageable Metal (A)'),
(26094,14352,0,'Salvageable Metal (A)'),(26095,14352,0,'Salvageable Metal (A)'),
(67210,14352,0,'Salvageable Metal (A)'),(67211,14352,0,'Salvageable Metal (A)'),
(67212,14352,0,'Salvageable Metal (A)'),(67213,14352,0,'Salvageable Metal (A)'),
(67214,14352,0,'Salvageable Metal (A)'),(67215,14352,0,'Salvageable Metal (A)'),
(67216,14352,0,'Salvageable Metal (A)'),(67217,14352,0,'Salvageable Metal (A)'),
(67218,14352,0,'Salvageable Metal (A)'),(67219,14352,0,'Salvageable Metal (A)'),
(67220,14352,0,'Salvageable Metal (A)'),(67221,14352,0,'Salvageable Metal (A)'),
(67340,14353,0,'Salvageable Metal (H)'),(67341,14353,0,'Salvageable Metal (H)'),
(67342,14353,0,'Salvageable Metal (H)'),(67343,14353,0,'Salvageable Metal (H)'),
(67344,14353,0,'Salvageable Metal (H)'),(67345,14353,0,'Salvageable Metal (H)'),
(67346,14353,0,'Salvageable Metal (H)'),(67347,14353,0,'Salvageable Metal (H)'),
(67348,14353,0,'Salvageable Metal (H)'),(67349,14353,0,'Salvageable Metal (H)'),
(67350,14353,0,'Salvageable Metal (H)'),(67351,14353,0,'Salvageable Metal (H)'),
(67353,14353,0,'Salvageable Metal (H)'),(67354,14353,0,'Salvageable Metal (H)'),
(67355,14353,0,'Salvageable Metal (H)'),(67356,14353,0,'Salvageable Metal (H)'),
(67357,14353,0,'Salvageable Metal (H)'),(67358,14353,0,'Salvageable Metal (H)'),
(67359,14353,0,'Salvageable Metal (H)'),(67361,14353,0,'Salvageable Metal (H)'),
(67362,14353,0,'Salvageable Metal (H)'),(67363,14353,0,'Salvageable Metal (H)'),
(67364,14353,0,'Salvageable Metal (H)'),(67365,14353,0,'Salvageable Metal (H)'),
(67366,14353,0,'Salvageable Metal (H)'),(67367,14353,0,'Salvageable Metal (H)'),
(67368,14353,0,'Salvageable Metal (H)'),(67369,14353,0,'Salvageable Metal (H)'),
(67370,14353,0,'Salvageable Metal (H)'),(67371,14353,0,'Salvageable Metal (H)');
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(11185, 182799, 530, 1, 1, -510.359, 2996.66, 8.71516, 0.366519, 0, 0, 0.182235, 0.983255, 120, 100, 1),
(11184, 182799, 530, 1, 1, -521.24, 3002.48, 8.91493, -0.401426, 0, 0, -0.199368, 0.979925, 120, 100, 1),
(11180, 182799, 530, 1, 1, -569.819, 3159.7, 5.28635, 1.3439, 0, 0, 0.622513, 0.782609, 120, 100, 1),
(11178, 182799, 530, 1, 1, -567.026, 3142.5, 4.96915, -0.15708, 0, 0, -0.0784593, 0.996917, 120, 100, 1),
(11177, 182799, 530, 1, 1, -482.287, 2894.43, 32.227, -0.401426, 0, 0, -0.199368, 0.979925, 120, 100, 1),
(11171, 182799, 530, 1, 1, -480.491, 2883.32, 33.7602, 2.09439, 0, 0, 0.866024, 0.500002, 120, 100, 1),
(11168, 182799, 530, 1, 1, -337.233, 2727.48, 24.588, -2.09439, 0, 0, -0.866024, 0.500002, 120, 100, 1),
(11166, 182799, 530, 1, 1, -329.355, 2584.28, 44.6237, 0.977384, 0, 0, 0.469471, 0.882948, 120, 100, 1),
(11159, 182799, 530, 1, 1, -313.287, 2569.88, 42.7629, 2.16421, 0, 0, 0.882948, 0.469471, 120, 100, 1),
(11158, 182799, 530, 1, 1, -290.129, 2454.44, 41.7864, -2.77507, 0, 0, -0.983255, 0.182237, 120, 100, 1),
(11156, 182799, 530, 1, 1, -284.58, 2467.18, 40.8674, 1.78024, 0, 0, 0.777147, 0.629319, 120, 100, 1),
(11153, 182799, 530, 1, 1, -281.613, 2421.47, 45.9092, -0.15708, 0, 0, -0.0784593, 0.996917, 120, 100, 1),
(11151, 182799, 530, 1, 1, -267.9, 2344.21, 53.7737, 1.50098, 0, 0, 0.681997, 0.731355, 120, 100, 1),
(11148, 182799, 530, 1, 1, -262.508, 2362.25, 52.7782, 1.90241, 0, 0, 0.814116, 0.580702, 120, 100, 1),
(67360, 182799, 530, 1, 1, -344.864, 2719.59, 27.2529, 2.58309, 0, 0, 0.961262, 0.275636, 120, 100, 1),
(67352, 182799, 530, 1, 1, -334.662, 2718.28, 26.1553, -0.279253, 0, 0, -0.139173, 0.990268, 120, 100, 1),
(38599, 182799, 530, 1, 1, -347.689, 2738.89, 23.4308, 2.3911, 0, 0, 0.930417, 0.366502, 120, 100, 1),
(38600, 182799, 530, 1, 1, -327.426, 2689.4, 31.377, -0.523599, 0, 0, -0.258819, 0.965926, 120, 100, 1),
(38601, 182799, 530, 1, 1, -359.038, 2320.78, 48.7092, -2.61799, 0, 0, -0.965925, 0.258821, 120, 100, 1),
(38602, 182799, 530, 1, 1, -371.737, 2313.08, 48.5288, -1.90241, 0, 0, -0.814116, 0.580703, 120, 100, 1),
(38603, 182799, 530, 1, 1, -389.82, 2321.79, 46.0775, 1.29154, 0, 0, 0.601814, 0.798637, 120, 100, 1),
(38604, 182799, 530, 1, 1, -285.239, 2245.58, 64.3571, -2.80998, 0, 0, -0.986286, 0.165048, 120, 100, 1),
(38605, 182799, 530, 1, 1, -281.853, 2263.11, 62.341, 2.70526, 0, 0, 0.976296, 0.21644, 120, 100, 1),
(38610, 182799, 530, 1, 1, -514.267, 3009.85, 6.95589, -3.00197, 0, 0, -0.997563, 0.0697661, 120, 100, 1),
(38609, 182799, 530, 1, 1, -548.667, 3138.56, 4.98344, -0.628319, 0, 0, -0.309017, 0.951056, 120, 100, 1),
(38608, 182799, 530, 1, 1, -315.962, 2579.88, 42.4868, 2.02458, 0, 0, 0.848048, 0.52992, 120, 100, 1),
(38607, 182799, 530, 1, 1, -337.613, 2595.08, 44.8937, 1.8675, 0, 0, 0.803856, 0.594824, 120, 100, 1),
(38606, 182799, 530, 1, 1, -344.616, 2538.37, 45.75, -2.47837, 0, 0, -0.945519, 0.325567, 120, 100, 1);
UPDATE `gameobject_template` SET `faction`='1801' WHERE `entry`=182936;
UPDATE `gameobject_template` SET `faction`='1802' WHERE `entry`=182799;
DELETE FROM `gameobject` WHERE `guid` = 67320;
DELETE FROM `gameobject` WHERE `guid` = 67328;
UPDATE `gameobject` SET `position_x`='-111.168', `position_y`='2441.39', `position_z`='51.671', `orientation`='-2.1293', `rotation2`='-0.874619', `rotation3`='0.48481' WHERE `guid`=67327;
UPDATE `gameobject` SET `position_x`='-135.638', `position_y`='2420.43', `position_z`='50.0791', `orientation`='1.23918', `rotation2`='0.580701', `rotation3`='0.814117' WHERE `guid`=67326;
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('14355', '40', 'Zeppelin Debris');
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(3947,14355,0,'Zeppelin Debris'),(3953,14355,0,'Zeppelin Debris'),
(3954,14355,0,'Zeppelin Debris'),(20500,14355,0,'Zeppelin Debris'),
(20501,14355,0,'Zeppelin Debris'),(20502,14355,0,'Zeppelin Debris'),
(20503,14355,0,'Zeppelin Debris'),(20504,14355,0,'Zeppelin Debris'),
(20505,14355,0,'Zeppelin Debris'),(20506,14355,0,'Zeppelin Debris'),
(20507,14355,0,'Zeppelin Debris'),(20521,14355,0,'Zeppelin Debris'),
(20522,14355,0,'Zeppelin Debris'),(20977,14355,0,'Zeppelin Debris'),
(20978,14355,0,'Zeppelin Debris'),(21744,14355,0,'Zeppelin Debris'),
(21745,14355,0,'Zeppelin Debris'),(21746,14355,0,'Zeppelin Debris'),
(21747,14355,0,'Zeppelin Debris'),(21748,14355,0,'Zeppelin Debris'),
(21749,14355,0,'Zeppelin Debris'),(21758,14355,0,'Zeppelin Debris'),
(21759,14355,0,'Zeppelin Debris'),(21761,14355,0,'Zeppelin Debris'),
(21762,14355,0,'Zeppelin Debris'),(21763,14355,0,'Zeppelin Debris'),
(21764,14355,0,'Zeppelin Debris'),(21765,14355,0,'Zeppelin Debris'),
(21766,14355,0,'Zeppelin Debris'),(21767,14355,0,'Zeppelin Debris'),
(21768,14355,0,'Zeppelin Debris'),(21769,14355,0,'Zeppelin Debris'),
(21770,14355,0,'Zeppelin Debris'),(21771,14355,0,'Zeppelin Debris'),
(21772,14355,0,'Zeppelin Debris'),(21773,14355,0,'Zeppelin Debris'),
(21774,14355,0,'Zeppelin Debris'),(21775,14355,0,'Zeppelin Debris'),
(21776,14355,0,'Zeppelin Debris'),(21777,14355,0,'Zeppelin Debris'),
(21778,14355,0,'Zeppelin Debris'),(21779,14355,0,'Zeppelin Debris'),
(21780,14355,0,'Zeppelin Debris'),(21782,14355,0,'Zeppelin Debris'),
(21785,14355,0,'Zeppelin Debris'),(21786,14355,0,'Zeppelin Debris'),
(21787,14355,0,'Zeppelin Debris'),(26133,14355,0,'Zeppelin Debris'),
(26134,14355,0,'Zeppelin Debris'),(26135,14355,0,'Zeppelin Debris'),
(26136,14355,0,'Zeppelin Debris'),(26137,14355,0,'Zeppelin Debris'),
(26138,14355,0,'Zeppelin Debris'),(26139,14355,0,'Zeppelin Debris'),
(26140,14355,0,'Zeppelin Debris'),(26141,14355,0,'Zeppelin Debris'),
(26142,14355,0,'Zeppelin Debris'),(26143,14355,0,'Zeppelin Debris'),
(26144,14355,0,'Zeppelin Debris'),(26145,14355,0,'Zeppelin Debris'),
(26146,14355,0,'Zeppelin Debris'),(26147,14355,0,'Zeppelin Debris'),
(26148,14355,0,'Zeppelin Debris'),(26149,14355,0,'Zeppelin Debris'),
(26150,14355,0,'Zeppelin Debris'),(26151,14355,0,'Zeppelin Debris'),
(26152,14355,0,'Zeppelin Debris'),(26153,14355,0,'Zeppelin Debris');
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('14356', '1', 'Fel Iron Chest');
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(1612,14356,0,'Fel Iron Chest'),(1385,14356,0,'Fel Iron Chest'),(1387,14356,0,'Fel Iron Chest');
DELETE FROM `gameobject` WHERE `guid` = 39248;
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('14357', '2', 'Fel Iron Chest');
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(1390,14357,0,'Fel Iron Chest'),(39247,14357,0,'Fel Iron Chest'),(39246,14357,0,'Fel Iron Chest'),
(39244,14357,0,'Fel Iron Chest'),(39245,14357,0,'Fel Iron Chest'),(39242,14357,0,'Fel Iron Chest'),
(39243,14357,0,'Fel Iron Chest');
DELETE FROM `gameobject` WHERE `guid` = 39389;
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('14358', '3', 'Fel Iron Chest');
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(1386,14358,0,'Fel Iron Chest'),(39384,14358,0,'Fel Iron Chest'),(39383,14358,0,'Fel Iron Chest'),
(39385,14358,0,'Fel Iron Chest'),(39386,14358,0,'Fel Iron Chest'),(1384,14358,0,'Fel Iron Chest'),
(1388,14358,0,'Fel Iron Chest'),(1389,14358,0,'Fel Iron Chest'),(1379,14358,0,'Fel Iron Chest'),
(1678,14358,0,'Fel Iron Chest'),(39392,14358,0,'Fel Iron Chest'),(39387,14358,0,'Fel Iron Chest'),
(1392,14358,0,'Fel Iron Chest'),(39390,14358,0,'Fel Iron Chest'),(1392,14358,0,'Fel Iron Chest'),
(39391,14358,0,'Fel Iron Chest');
DELETE FROM creature WHERE guid=60373;
DELETE FROM creature_addon WHERE guid=60373;
DELETE FROM creature WHERE guid=60292;
DELETE FROM creature_addon WHERE guid=60292;
DELETE FROM creature WHERE guid=60392;
DELETE FROM creature_addon WHERE guid=60392;
DELETE FROM creature WHERE guid=60328;
DELETE FROM creature_addon WHERE guid=60328;
DELETE FROM creature WHERE guid=60327;
DELETE FROM creature_addon WHERE guid=60327;
DELETE FROM creature WHERE guid=60271;
DELETE FROM creature_addon WHERE guid=60271;
DELETE FROM creature WHERE guid=60339;
DELETE FROM creature_addon WHERE guid=60339;
DELETE FROM creature WHERE guid=60289;
DELETE FROM creature_addon WHERE guid=60289;
DELETE FROM creature WHERE guid=60332;
DELETE FROM creature_addon WHERE guid=60332;
DELETE FROM creature WHERE guid=60314;
DELETE FROM creature_addon WHERE guid=60314;
DELETE FROM creature WHERE guid=60303;
DELETE FROM creature_addon WHERE guid=60303;
DELETE FROM creature WHERE guid=60278;
DELETE FROM creature_addon WHERE guid=60278;
DELETE FROM creature WHERE guid=60325;
DELETE FROM creature_addon WHERE guid=60325;
DELETE FROM creature WHERE guid=60326;
DELETE FROM creature_addon WHERE guid=60326;
DELETE FROM creature WHERE guid=60312;
DELETE FROM creature_addon WHERE guid=60312;
DELETE FROM creature WHERE guid=60301;
DELETE FROM creature_addon WHERE guid=60301;
DELETE FROM creature WHERE guid=60293;
DELETE FROM creature_addon WHERE guid=60293;
DELETE FROM creature WHERE guid=60282;
DELETE FROM creature_addon WHERE guid=60282;
DELETE FROM creature WHERE guid=60311;
DELETE FROM creature_addon WHERE guid=60311;
DELETE FROM creature WHERE guid=60330;
DELETE FROM creature_addon WHERE guid=60330;
DELETE FROM creature WHERE guid=60283;
DELETE FROM creature_addon WHERE guid=60283;
DELETE FROM creature WHERE guid=60317;
DELETE FROM creature_addon WHERE guid=60317;
DELETE FROM creature WHERE guid=60333;
DELETE FROM creature_addon WHERE guid=60333;
DELETE FROM creature WHERE guid=60319;
DELETE FROM creature_addon WHERE guid=60319;
DELETE FROM creature WHERE guid=60310;
DELETE FROM creature_addon WHERE guid=60310;
DELETE FROM creature WHERE guid=60298;
DELETE FROM creature_addon WHERE guid=60298;
DELETE FROM creature WHERE guid=60304;
DELETE FROM creature_addon WHERE guid=60304;
DELETE FROM creature WHERE guid=60321;
DELETE FROM creature_addon WHERE guid=60321;
DELETE FROM creature WHERE guid=60306;
DELETE FROM creature_addon WHERE guid=60306;
DELETE FROM creature WHERE guid=60365;
DELETE FROM creature_addon WHERE guid=60365;
DELETE FROM creature WHERE guid=60360;
DELETE FROM creature_addon WHERE guid=60360;
DELETE FROM creature WHERE guid=60338;
DELETE FROM creature_addon WHERE guid=60338;
DELETE FROM creature WHERE guid=60367;
DELETE FROM creature_addon WHERE guid=60367;
DELETE FROM creature WHERE guid=60340;
DELETE FROM creature_addon WHERE guid=60340;
DELETE FROM creature WHERE guid=60295;
DELETE FROM creature_addon WHERE guid=60295;
DELETE FROM creature WHERE guid=60324;
DELETE FROM creature_addon WHERE guid=60324;
DELETE FROM creature WHERE guid=60372;
DELETE FROM creature_addon WHERE guid=60372;
DELETE FROM creature WHERE guid=60343;
DELETE FROM creature_addon WHERE guid=60343;
DELETE FROM creature WHERE guid=60296;
DELETE FROM creature_addon WHERE guid=60296;
DELETE FROM creature WHERE guid=60288;
DELETE FROM creature_addon WHERE guid=60288;
DELETE FROM creature WHERE guid=60305;
DELETE FROM creature_addon WHERE guid=60305;
DELETE FROM creature WHERE guid=60379;
DELETE FROM creature_addon WHERE guid=60379;
DELETE FROM creature WHERE guid=60380;
DELETE FROM creature_addon WHERE guid=60380;
DELETE FROM creature WHERE guid=60344;
DELETE FROM creature_addon WHERE guid=60344;
DELETE FROM creature WHERE guid=60294;
DELETE FROM creature_addon WHERE guid=60294;
DELETE FROM creature WHERE guid=60376;
DELETE FROM creature_addon WHERE guid=60376;
DELETE FROM creature WHERE guid=60357;
DELETE FROM creature_addon WHERE guid=60357;
DELETE FROM creature WHERE guid=60315;
DELETE FROM creature_addon WHERE guid=60315;
DELETE FROM creature WHERE guid=60290;
DELETE FROM creature_addon WHERE guid=60290;
DELETE FROM creature WHERE guid=60347;
DELETE FROM creature_addon WHERE guid=60347;
DELETE FROM creature WHERE guid=60359;
DELETE FROM creature_addon WHERE guid=60359;
DELETE FROM creature WHERE guid=60316;
DELETE FROM creature_addon WHERE guid=60316;
DELETE FROM creature WHERE guid=60356;
DELETE FROM creature_addon WHERE guid=60356;
DELETE FROM creature WHERE guid=60391;
DELETE FROM creature_addon WHERE guid=60391;
DELETE FROM creature WHERE guid=60393;
DELETE FROM creature_addon WHERE guid=60393;
DELETE FROM creature WHERE guid=60275;
DELETE FROM creature_addon WHERE guid=60275;
DELETE FROM creature WHERE guid=60387;
DELETE FROM creature_addon WHERE guid=60387;
DELETE FROM creature WHERE guid=60354;
DELETE FROM creature_addon WHERE guid=60354;
DELETE FROM creature WHERE guid=60274;
DELETE FROM creature_addon WHERE guid=60274;
DELETE FROM creature WHERE guid=60318;
DELETE FROM creature_addon WHERE guid=60318;
DELETE FROM creature WHERE guid=60351;
DELETE FROM creature_addon WHERE guid=60351;
DELETE FROM creature WHERE guid=60276;
DELETE FROM creature_addon WHERE guid=60276;
DELETE FROM creature WHERE guid=60272;
DELETE FROM creature_addon WHERE guid=60272;
DELETE FROM creature WHERE guid=60370;
DELETE FROM creature_addon WHERE guid=60370;
DELETE FROM creature WHERE guid=60273;
DELETE FROM creature_addon WHERE guid=60273;
DELETE FROM creature WHERE guid=60394;
DELETE FROM creature_addon WHERE guid=60394;
DELETE FROM creature WHERE guid=60349;
DELETE FROM creature_addon WHERE guid=60349;
DELETE FROM creature WHERE guid=60385;
DELETE FROM creature_addon WHERE guid=60385;
DELETE FROM creature WHERE guid=60285;
DELETE FROM creature_addon WHERE guid=60285;
DELETE FROM creature WHERE guid=60381;
DELETE FROM creature_addon WHERE guid=60381;
UPDATE creature SET position_x = '3192.407959', position_y = '7104.225098', position_z = '177.355515', orientation = '0.387212' WHERE guid = '60342';
DELETE FROM creature WHERE guid=60277;
DELETE FROM creature_addon WHERE guid=60277;
UPDATE creature SET position_x = '3190.535645', position_y = '7116.161133', position_z = '177.297333', orientation = '0.346385' WHERE guid = '60386';
UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE `guid` in (60386,60342);
UPDATE `creature_template` SET `gossip_menu_id`='348' WHERE `entry`=6741;
UPDATE `creature_template` SET `gossip_menu_id`='342' WHERE `entry`=27066;
UPDATE `creature_template` SET `gossip_menu_id`='342' WHERE `entry`=2352;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 21148 AND `item` = 4594;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 21148 AND `item` = 4538;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 21146 AND `item` = 4538;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='-100' WHERE `entry`=179832 AND `item`=18950;
UPDATE `gameobject_template` SET `data1`='179004' WHERE `entry`=179004;
UPDATE `gameobject_template` SET `data1`='179004' WHERE `entry`=179005;
UPDATE `gameobject_template` SET `data1`='179006' WHERE `entry`=179006;
UPDATE `gameobject_template` SET `data1`='179006' WHERE `entry`=179007;
UPDATE `gameobject_template` SET `data1`='179006' WHERE `entry`=179008;
UPDATE `gameobject_template` SET `data1`='186263' WHERE `entry`=186263;
UPDATE `gameobject_template` SET `data1`='186466' WHERE `entry`=186466;
UPDATE `gameobject_template` SET `data1`='186466' WHERE `entry`=186467;
REPLACE INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`mincountOrRef`,`maxcount`) VALUES 
(179004,17822,-100,1,1),
(186263,33007,-100,1,1),
(186466,33187,-100,1,1),
(179006,17823,-100,1,1);
DELETE FROM `creature` WHERE `guid` = 55499;
DELETE FROM `creature` WHERE `guid` = 55500;
DELETE FROM `creature` WHERE `guid` = 55501;
REPLACE INTO `creature_template_addon` (`entry`, `auras`) VALUES ('28017', '50453');
DELETE FROM `creature_template_addon` WHERE `entry` IN (15438,15352,89);
INSERT INTO `creature_template_addon`(`entry`, `auras`) VALUES (15438,7942),(15352,7941),(89,39007);
UPDATE `game_event` SET `occurence`='432000', `length`='86400' WHERE `evententry`=46;
UPDATE `game_event` SET `occurence`='432000', `length`='86400' WHERE `evententry`=47;
UPDATE `game_event` SET `occurence`='432000', `length`='86400' WHERE `evententry`=48;

# ZuSe
UPDATE `creature_template` SET `mechanic_immune_mask`=617299839 WHERE  `entry`=38297; -- Lady Deathwhisper ICC25hc
UPDATE `creature_template` SET `mechanic_immune_mask`=617299839 WHERE  `entry`=38296; -- Lady Deathwhisper ICC10hc
UPDATE `creature_template` SET `mechanic_immune_mask`=617299839 WHERE  `entry`=38106; -- Lady Deathwhisper ICC25
UPDATE `creature_template` SET `mechanic_immune_mask`=617299839 WHERE  `entry`=36855; -- Lady Deathwhisper ICC10

# NeatElves
UPDATE `game_event` SET `start_time`='2012-11-01 01:00:00' WHERE `evententry`=40;
UPDATE `game_event` SET `start_time`='2012-11-20 01:00:00' WHERE `evententry`=41;
UPDATE `quest_template` SET `RequiredRaces`='1101' WHERE `id`=779;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=1 AND SourceEntry=39651;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-10 WHERE `item`=39651;
delete from spell_target_position where id in (4801,8195,20449);
insert into spell_target_position values
(4801,531,-8340.782227,2083.814453,125.648788,0),
(8195,531,-8341.546875,2118.504639,133.058151,0),
(20449,531,-8318.822266,2058.231201,133.058151,0);
DELETE FROM creature WHERE id=10339;
DELETE FROM creature WHERE id=10162 AND map=229;
UPDATE creature_template SET MovementType=0 WHERE entry IN (10429,10442,10447,10742,10339);
UPDATE `creature_template` SET `dynamicflags`='0' WHERE `entry`=17542;
DELETE FROM `creature_ai_scripts` WHERE `id` = 1754251;
UPDATE `creature_template` SET `AIName`='' WHERE `entry`=17542;
DELETE FROM `creature_template_addon` WHERE `entry` = 6172;
DELETE FROM `creature_template_addon` WHERE `entry` = 6177;
DELETE FROM `creature_template_addon` WHERE `entry` = 17542;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-33 WHERE `item`=21757;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE `entry`=32541;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE `entry`=33229;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE `entry`=33272;
DELETE FROM `creature` WHERE `id` = 9683;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`) VALUES
(128142,33435,571,1,1,0,68,8446.82,750.433,547.293,4.11463,180,0,0,8982,0),
(128143,33434,571,1,1,0,67,8446.25,745.686,547.293,0.116956,180,0,0,8982,0);
DELETE FROM `creature` WHERE `id` = 35061;
DELETE FROM `creature` WHERE `id` = 35071;
DELETE FROM `creature` WHERE `id` = 35060;
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE `entry`=35072;
REPLACE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(3507251, 35072, 0, 0, 100, 1, 5000, 9000, 12000, 15000, 11, 49922, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Angry Kvaldir - Cast Wave Crash');
UPDATE `creature_template` SET `AIName`='EventAI' WHERE `entry`=35072;
UPDATE `quest_template` SET `RequiredMaxRepFaction` = 1106, `RequiredMaxRepValue` = 42000 WHERE `Id` = 13846;
UPDATE `gossip_menu_option` SET `option_icon`='18' WHERE `menu_id`=10318 AND `id`=2;
UPDATE `gossip_menu_option` SET `option_icon`='18' WHERE `menu_id`=10358 AND `id`=2;
REPLACE INTO `mail_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES ('236', '39317', '100', '0', '1', '1');
DELETE FROM `quest_end_scripts` WHERE `id` = 12711;
UPDATE `quest_template` SET `RewardMailTemplateId` = 236, `RewardMailDelay` = 10, `CompleteScript` = 0 WHERE `Id` = 12711;
UPDATE `creature_template` SET `lootid`='0' WHERE `entry`=23928;
DELETE FROM `creature_loot_template` WHERE `entry` = 23928;
DELETE FROM `creature` WHERE `guid` = 126496;
UPDATE `spell_target_position` SET `target_position_x`='-3747.629', `target_position_y`='-4452.959', `target_position_z`='64.971', `target_orientation`='3.75' WHERE `id`=42711;
UPDATE `spell_target_position` SET `target_position_x`='-8453.358', `target_position_y`='348.199', `target_position_z`='120.885', `target_orientation`='5.421' WHERE `id`=42710;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='2', `groupid`='2' WHERE `entry`=33857 AND `item`=33871;
UPDATE `item_loot_template` SET `groupid`='2' WHERE `entry`=33857 AND `item`=33873;
UPDATE `item_loot_template` SET `groupid`='2' WHERE `entry`=33857 AND `item`=33875;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='2', `groupid`='2' WHERE `entry`=33857 AND `item`=33925;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE `entry` = 33857 AND `item` = 1430;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE `entry` = 33857 AND `item` = 2765;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE `entry` = 33857 AND `item` = 4555;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE `entry` = 33857 AND `item` = 5136;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE `entry` = 33857 AND `item` = 5637;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE `entry` = 33857 AND `item` = 5871;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE `entry` = 33857 AND `item` = 7005;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE `entry` = 33857 AND `item` = 33854;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE `entry` = 33857 AND `item` = 33855;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE `entry` = 33857 AND `item` = 33856;
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(27671, 27671, 0, 1, 5, 16),
(27671, 27677, 0, 1, 5, 16),
(27671, 27678, 0, 1, 5, 15),
(27671, 27681, 0, 1, 5, 16),
(27671, 27682, 0, 1, 5, 16),
(27671, 31670, 0, 1, 5, 16),
(27671, 31671, 0, 1, 5, 16);
DELETE FROM `item_loot_template` WHERE `entry` = 33857 AND `item` = 27677;
DELETE FROM `item_loot_template` WHERE `entry` = 33857 AND `item` = 27678;
DELETE FROM `item_loot_template` WHERE `entry` = 33857 AND `item` = 27681;
DELETE FROM `item_loot_template` WHERE `entry` = 33857 AND `item` = 27682;
DELETE FROM `item_loot_template` WHERE `entry` = 33857 AND `item` = 31670;
DELETE FROM `item_loot_template` WHERE `entry` = 33857 AND `item` = 31671;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100', `mincountOrRef`='-27671', `maxcount`='2' WHERE `entry`=33857 AND `item`=27671;
DELETE FROM `item_loot_template` WHERE `entry` = 33857 AND `item` = 33869;
UPDATE `item_loot_template` SET `groupid`='2' WHERE `entry`=33857 AND `item`=34834;
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(27425, 27425, 0, 1, 4, 12),
(27425, 27429, 0, 1, 4, 11),
(27425, 27435, 0, 1, 4, 11),
(27425, 27438, 0, 1, 4, 11),
(27425, 27439, 0, 1, 4, 6);
DELETE FROM `item_loot_template` WHERE `entry` = 33844 AND `item` = 27429;
DELETE FROM `item_loot_template` WHERE `entry` = 33844 AND `item` = 27435;
DELETE FROM `item_loot_template` WHERE `entry` = 33844 AND `item` = 27438;
DELETE FROM `item_loot_template` WHERE `entry` = 33844 AND `item` = 27439;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='70', `mincountOrRef`='-27425', `maxcount`='2' WHERE `entry`=33844 AND `item`=27425;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '10', `groupid` = '2' WHERE `entry` = 33844 AND `item` = 2763;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '10', `groupid` = '2' WHERE `entry` = 33844 AND `item` = 4874;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '10', `groupid` = '2' WHERE `entry` = 33844 AND `item` = 5361;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '10', `groupid` = '2' WHERE `entry` = 33844 AND `item` = 5567;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '10', `groupid` = '2' WHERE `entry` = 33844 AND `item` = 6532;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '10', `groupid` = '2' WHERE `entry` = 33844 AND `item` = 9355;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '10', `groupid` = '2' WHERE `entry` = 33844 AND `item` = 25351;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '10', `groupid` = '2' WHERE `entry` = 33844 AND `item` = 27422;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '10', `groupid` = '2' WHERE `entry` = 33844 AND `item` = 33846;
UPDATE `item_loot_template` SET `groupid`='1' WHERE `entry`=33844 AND `item`=27425;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='15', `groupid`='1' WHERE `entry`=33844 AND `item`=27515;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='15', `groupid`='1' WHERE `entry`=33844 AND `item`=27516;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='7', `groupid`='3' WHERE `entry`=33844 AND `item`=33869;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='7', `groupid`='3' WHERE `entry`=33844 AND `item`=33870;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='2', `groupid`='3' WHERE `entry`=33844 AND `item`=33871;
UPDATE `item_loot_template` SET `groupid`='3' WHERE `entry`=33844 AND `item`=33875;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='2', `groupid`='3' WHERE `entry`=33844 AND `item`=33925;
UPDATE `item_loot_template` SET `groupid`='3' WHERE `entry`=33844 AND `item`=34834;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='10', `groupid`='2' WHERE `entry`=33844 AND `item`=27442;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='1', `groupid`='1' WHERE `entry`=44113 AND `item`=33871;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='1', `groupid`='1' WHERE `entry`=44113 AND `item`=33925;
UPDATE `item_loot_template` SET `groupid`='1' WHERE `entry`=44113 AND `item`=34834;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='2' WHERE `entry`=44113 AND `item`=33871;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='2' WHERE `entry`=44113 AND `item`=33925;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='75' WHERE `entry`=44113 AND `item`=43016;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='20' WHERE `entry`=44113 AND `item`=44114;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='20' WHERE `entry`=44113 AND `item`=44228;
UPDATE `item_loot_template` SET `groupid`='2' WHERE `entry`=35348 AND `item`=33816;
UPDATE `item_loot_template` SET `groupid`='2' WHERE `entry`=35348 AND `item`=33818;
UPDATE `item_loot_template` SET `groupid`='2' WHERE `entry`=35348 AND `item`=35349;
UPDATE `item_loot_template` SET `groupid`='2' WHERE `entry`=35348 AND `item`=35350;
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(22578, 8827, 25, 1, 3, 6),
(22578, 22578, 0, 2, 2, 4),
(22578, 24478, 0, 2, 2, 3),
(22578, 24479, 3, 2, 1, 1),
(22578, 33820, 1, 2, 1, 1),
(22578, 34109, 5, 2, 1, 1),
(22578, 34822, 1.5, 2, 1, 1),
(22578, 34823, 1.5, 2, 1, 1),
(22578, 34824, 1.5, 2, 1, 1),
(22578, 34825, 1.5, 2, 1, 1),
(22578, 34826, 1.5, 2, 1, 1),
(22578, 34827, 1.5, 2, 1, 1),
(22578, 34828, 1.5, 2, 1, 1),
(22578, 34829, 1.5, 2, 1, 1),
(22578, 34831, 1, 2, 1, 1),
(22578, 34834, 0.5, 2, 1, 1),
(22578, 34836, 2, 2, 1, 1),
(22578, 34837, 0.1, 2, 1, 1),
(22578, 34838, 1.5, 2, 1, 1),
(22578, 34839, 0, 2, 1, 1),
(22578, 34840, 0, 2, 1, 1),
(22578, 34841, 0, 2, 2, 4),
(22578, 34843, 0, 2, 1, 1),
(22578, 34859, 0, 2, 1, 1),
(22578, 34860, 0, 2, 1, 1),
(22578, 34861, 75, 1, 3, 6);
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100', `mincountOrRef`='-22578', `maxcount`='2' WHERE `entry`=35348 AND `item`=22578;
DELETE FROM `item_loot_template` WHERE `entry` = 35348 AND `item` = 8827;
DELETE FROM `item_loot_template` WHERE `entry` = 35348 AND `item` = 24478;
DELETE FROM `item_loot_template` WHERE `entry` = 35348 AND `item` = 24479;
DELETE FROM `item_loot_template` WHERE `entry` = 35348 AND `item` = 33820;
DELETE FROM `item_loot_template` WHERE `entry` = 35348 AND `item` = 34822;
DELETE FROM `item_loot_template` WHERE `entry` = 35348 AND `item` = 34823;
DELETE FROM `item_loot_template` WHERE `entry` = 35348 AND `item` = 34824;
DELETE FROM `item_loot_template` WHERE `entry` = 35348 AND `item` = 34825;
DELETE FROM `item_loot_template` WHERE `entry` = 35348 AND `item` = 34826;
DELETE FROM `item_loot_template` WHERE `entry` = 35348 AND `item` = 34827;
DELETE FROM `item_loot_template` WHERE `entry` = 35348 AND `item` = 34828;
DELETE FROM `item_loot_template` WHERE `entry` = 35348 AND `item` = 34829;
DELETE FROM `item_loot_template` WHERE `entry` = 35348 AND `item` = 34831;
DELETE FROM `item_loot_template` WHERE `entry` = 35348 AND `item` = 34834;
DELETE FROM `item_loot_template` WHERE `entry` = 35348 AND `item` = 34836;
DELETE FROM `item_loot_template` WHERE `entry` = 35348 AND `item` = 34837;
DELETE FROM `item_loot_template` WHERE `entry` = 35348 AND `item` = 34838;
DELETE FROM `item_loot_template` WHERE `entry` = 35348 AND `item` = 34839;
DELETE FROM `item_loot_template` WHERE `entry` = 35348 AND `item` = 34840;
DELETE FROM `item_loot_template` WHERE `entry` = 35348 AND `item` = 34841;
DELETE FROM `item_loot_template` WHERE `entry` = 35348 AND `item` = 34843;
DELETE FROM `item_loot_template` WHERE `entry` = 35348 AND `item` = 34859;
DELETE FROM `item_loot_template` WHERE `entry` = 35348 AND `item` = 34860;
DELETE FROM `item_loot_template` WHERE `entry` = 35348 AND `item` = 34861;
DELETE FROM `item_loot_template` WHERE `entry` = 34863 AND `item` = 8827;
DELETE FROM `item_loot_template` WHERE `entry` = 34863 AND `item` = 24478;
DELETE FROM `item_loot_template` WHERE `entry` = 34863 AND `item` = 24479;
DELETE FROM `item_loot_template` WHERE `entry` = 34863 AND `item` = 33820;
DELETE FROM `item_loot_template` WHERE `entry` = 34863 AND `item` = 34109;
DELETE FROM `item_loot_template` WHERE `entry` = 34863 AND `item` = 34822;
DELETE FROM `item_loot_template` WHERE `entry` = 34863 AND `item` = 34823;
DELETE FROM `item_loot_template` WHERE `entry` = 34863 AND `item` = 34824;
DELETE FROM `item_loot_template` WHERE `entry` = 34863 AND `item` = 34825;
DELETE FROM `item_loot_template` WHERE `entry` = 34863 AND `item` = 34826;
DELETE FROM `item_loot_template` WHERE `entry` = 34863 AND `item` = 34827;
DELETE FROM `item_loot_template` WHERE `entry` = 34863 AND `item` = 34828;
DELETE FROM `item_loot_template` WHERE `entry` = 34863 AND `item` = 34829;
DELETE FROM `item_loot_template` WHERE `entry` = 34863 AND `item` = 34831;
DELETE FROM `item_loot_template` WHERE `entry` = 34863 AND `item` = 34834;
DELETE FROM `item_loot_template` WHERE `entry` = 34863 AND `item` = 34836;
DELETE FROM `item_loot_template` WHERE `entry` = 34863 AND `item` = 34837;
DELETE FROM `item_loot_template` WHERE `entry` = 34863 AND `item` = 34838;
DELETE FROM `item_loot_template` WHERE `entry` = 34863 AND `item` = 34839;
DELETE FROM `item_loot_template` WHERE `entry` = 34863 AND `item` = 34840;
DELETE FROM `item_loot_template` WHERE `entry` = 34863 AND `item` = 34841;
DELETE FROM `item_loot_template` WHERE `entry` = 34863 AND `item` = 34843;
DELETE FROM `item_loot_template` WHERE `entry` = 34863 AND `item` = 34859;
DELETE FROM `item_loot_template` WHERE `entry` = 34863 AND `item` = 34860;
DELETE FROM `item_loot_template` WHERE `entry` = 34863 AND `item` = 34861;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='100', `mincountOrRef`='-22578', `maxcount`='2' WHERE `entry`=34863 AND `item`=22578;
UPDATE `reference_loot_template` SET `ChanceOrQuestChance`='0.5' WHERE `entry`=8827 AND `item`=34834;
DELETE FROM `creature_loot_template` WHERE `entry` = 29417 AND `item` = 40639;
UPDATE `reference_loot_template` SET `ChanceOrQuestChance`='33.3' WHERE `entry`=40638 AND `item`=40627;
UPDATE `reference_loot_template` SET `ChanceOrQuestChance`='33.3' WHERE `entry`=40638 AND `item`=40636;
UPDATE `reference_loot_template` SET `ChanceOrQuestChance`='33.4' WHERE `entry`=40638 AND `item`=40639;
UPDATE `creature_template` SET `mingold`='0', `maxgold`='0' WHERE `entry`=10928;
UPDATE `creature_template` SET `flags_extra`='0' WHERE `entry`=12922;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(2495, 176213, 0, 1, 1, 1320.89, -1551, 58.454, -3, 0, 0, -0.997495, 0.0707372, 600, 100, 1),
(11495, 176213, 0, 1, 1, 1364.2, -1610, 57.775, 2.164, 0, 0, 0.882899, 0.469563, 600, 100, 1),
(83, 176213, 0, 1, 1, 1371.33, -1469, 71.237, 1.78, 0, 0, 0.777072, 0.629412, 600, 100, 1),
(12089, 176213, 0, 1, 1, 1386.09, -1286, 59.751, 1.309, 0, 0, 0.608763, 0.793352, 600, 100, 1),
(12371, 176213, 0, 1, 1, 1414.93, -1698, 69.62, -1, 0, 0, -0.479426, 0.877583, 600, 100, 1),
(8186, 176213, 0, 1, 1, 1465.36, -1876, 58.71, 0, 0, 0, 0, 1, 600, 100, 1),
(15922, 176213, 0, 1, 1, 1494.94, -1421, 76.733, -1, 0, 0, -0.479426, 0.877583, 600, 100, 1),
(7741, 176213, 0, 1, 1, 1501.86, -1420, 76.117, 0, 0, 0, 0, 1, 600, 100, 1),
(7742, 176213, 0, 1, 1, 1526.1, -1450, 71.297, 0, 0, 0, 0, 1, 600, 100, 1),
(9818, 176213, 0, 1, 1, 1837.99, -1500, 59.567, -3, 0, 0, -0.997495, 0.0707372, 600, 100, 1),
(40455, 176213, 0, 1, 1, 2144.03, -3241.36, 112.884, -1.74533, 0, 0, -0.766045, 0.642787, 600, 100, 1),
(40453, 176213, 0, 1, 1, 2192.74, -4479.21, 87.66, 3.03687, 0, 0, 0.998629, 0.0523374, 600, 100, 1),
(40452, 176213, 0, 1, 1, 2412.71, -1721.56, 107.006, 2.89725, 0, 0, 0.992546, 0.121868, 600, 100, 1),
(40454, 176213, 0, 1, 1, 2958.04, -3485.06, 146.222, -3.00197, 0, 0, -0.997564, 0.0697546, 600, 100, 1),
(12721, 176213, 0, 1, 1, 3111.7, -3688, 134.567, -3, 0, 0, -0.997495, 0.0707372, 600, 100, 1),
(11765, 176214, 0, 1, 1, 1320.89, -1551, 58.454, -3, 0, 0, -0.997495, 0.0707372, 600, 100, 1),
(8675, 176214, 0, 1, 1, 1364.2, -1610, 57.775, 2.164, 0, 0, 0.882899, 0.469563, 600, 100, 1),
(13934, 176214, 0, 1, 1, 1371.33, -1469, 71.237, 1.78, 0, 0, 0.777072, 0.629412, 600, 100, 1),
(16633, 176214, 0, 1, 1, 1386.09, -1286, 59.751, 1.309, 0, 0, 0.608763, 0.793352, 600, 100, 1),
(16751, 176214, 0, 1, 1, 1414.93, -1698, 69.62, -1, 0, 0, -0.479426, 0.877583, 600, 100, 1),
(14156, 176214, 0, 1, 1, 1465.36, -1876, 58.71, 0, 0, 0, 0, 1, 600, 100, 1),
(7598, 176214, 0, 1, 1, 1494.94, -1421, 76.733, -1, 0, 0, -0.479426, 0.877583, 600, 100, 1),
(456, 176214, 0, 1, 1, 1501.86, -1420, 76.117, 0, 0, 0, 0, 1, 600, 100, 1),
(16517, 176214, 0, 1, 1, 1526.1, -1450, 71.297, 0, 0, 0, 0, 1, 600, 100, 1),
(16829, 176214, 0, 1, 1, 1837.99, -1500, 59.567, -3, 0, 0, -0.997495, 0.0707372, 600, 100, 1),
(7743, 176214, 0, 1, 1, 2144.03, -3241.36, 112.884, -1.74533, 0, 0, -0.766045, 0.642787, 600, 100, 1),
(7744, 176214, 0, 1, 1, 2192.74, -4479.21, 87.66, 3.03687, 0, 0, 0.998629, 0.0523374, 600, 100, 1),
(7746, 176214, 0, 1, 1, 2412.71, -1721.56, 107.006, 2.89725, 0, 0, 0.992546, 0.121868, 600, 100, 1),
(7754, 176214, 0, 1, 1, 2958.04, -3485.06, 146.222, -3.00197, 0, 0, -0.997564, 0.0697546, 600, 100, 1),
(7761, 176214, 0, 1, 1, 3111.7, -3688, 134.567, -3, 0, 0, -0.997495, 0.0707372, 600, 100, 1);

# Fix
REPLACE INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(37655, 1156, 0, 7, 0, 45, 0, 0, 0, 0), -- Decaying colossus
(38031, 1156, 0, 7, 0, 45, 0, 0, 0, 0), -- Deathbound Ward
(38057, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Servant of the throne
(38058, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Nerub'ar Broodkeeper
(38059, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Ancient Skeletal Soldier
(38061, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- The Damned
(38062, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Plague Scientist
(38063, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Vengeful Fleshreaper
(38064, 1156, 0, 7, 0, 150, 0, 0, 0, 0), -- Stinky
(38072, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Deathspeacker Attedent
(38073, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Deathspeacker Disciple
(38074, 1156, 0, 7, 0, 45, 0, 0, 0, 0), -- Deathspeacker High Preist
(38075, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Deathspeacker Servant
(38076, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Deathspeacker Zealot
(38098, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Darkfallen Advisor
(38099, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Darkfallen Archmage
(38100, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Darkfallen Blood Knight
(38101, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Darkfallen Lieutenant
(38102, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Darkfallen Commander
(38103, 1156, 0, 7, 0, 150, 0, 0, 0, 0), -- Precious
(38105, 1156, 0, 7, 0, 2, 0, 0, 0, 0), -- Plagued Zombie
(38108, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Blighted Abomination
(38110, 1156, 0, 7, 0, 30, 0, 0, 0, 0), -- Pustulating Horror
(38126, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Ymirjar Frostbinder
(38130, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Ymirjar Deathbringer
(38131, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Ymirjar Huntress
(38132, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Ymirjar Battle-Maiden
(38133, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Ymirjar Warlord
(38139, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Frostwarden Handler
(38151, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Frostwing Whelp
(38219, 1156, 0, 7, 0, 150, 0, 0, 0, 0), -- Spinestalker
(38220, 1156, 0, 7, 0, 150, 0, 0, 0, 0), -- Rimefang
(38418, 1156, 0, 7, 0, 45, 0, 0, 0, 0), -- Val'kyr Herald
(38445, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Spire Minion
(38446, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Frenzied Abomination
(38479, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Darkfallen Tactician
(38480, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Darkfallen Noble
(38481, 1156, 0, 7, 0, 15, 0, 0, 0, 0); -- Spire Gargoyle
INSERT IGNORE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`MovementType`) VALUES
(131132,33086,603,3,1,1627.400,-339.4133,417.4044,1.378810,7200,0,0), -- Algalon Stalker
(131133,33086,603,3,1,1622.681,-344.2576,417.3955,1.378810,7200,0,0), -- Algalon Stalker
(131134,33086,603,3,1,1629.984,-271.4798,417.4045,4.782202,7200,0,0), -- Algalon Stalker
(131135,33086,603,3,1,1630.005,-345.5189,417.3955,1.378810,7200,0,0), -- Algalon Stalker
(131136,33089,603,3,16,1622.451,-321.1563,417.6188,4.677482,7200,20,1), -- Dark Matter
(131137,33089,603,3,16,1649.438,-319.8127,418.3941,1.082104,7200,20,1), -- Dark Matter
(131138,33089,603,3,16,1615.060,-291.6816,417.7796,3.490659,7200,20,1), -- Dark Matter
(131139,33089,603,3,16,1647.005,-288.6790,417.3955,3.490659,7200,20,1), -- Dark Matter
(131140,33089,603,3,16,1622.451,-321.1563,417.6188,4.677482,7200,20,1), -- Dark Matter
(131141,33089,603,3,16,1649.438,-319.8127,418.3941,1.082104,7200,20,1), -- Dark Matter
(131142,33089,603,3,16,1615.060,-291.6816,417.7796,3.490659,7200,20,1), -- Dark Matter
(131257,33089,603,3,16,1647.005,-288.6790,417.3955,3.490659,7200,20,1); -- Dark Matter
INSERT IGNORE INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(12007,194911,603,3,17,1632.024,-182.9211,408.4224,3.141593,0,0,8.742278E-08,1, 604800,100,1);
REPLACE INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (44943, 36918, 100, 0, -36918, 1);

# WDB
REPLACE INTO `npc_text` SET `ID`=7178,`prob0`=1,`text0_0`='The Lord of Blackrock hangs from the arches!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15394,`prob0`=1,`text0_0`='I''m not here on vacation, pal. Noggenfogger sent me down here with a mission: Find out how to turn a profit on these silithid, or wipe ''em clean.$B$BIf a $r like you wants to do some favors for the Steamwheedle Cartel, I could use a hand.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15466,`prob0`=1,`text0_0`='So, you wanna find de fabled swords of de Sandfury, eh?$B$BYa be ready ta kill for Sul''thraze? Spill de blood across de sands? In search of treasure, of power?$B$BIf ya are...welcome to de desert, mon.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15540,`prob0`=1,`text0_0`='',`text0_1`='The Bilgewater Cartel will be in business here by the end of the day, mark my words.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15556,`prob0`=1,`text0_0`='',`text0_1`='This was going to be a walk in the park until that airhead over there came out of nowhere with an army of gnomes.$B$BGallywix will have my head if we let these creepy runts one-up us here.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15559,`prob0`=1,`text0_0`='This is the truth of it! Fighting leads to killing, and killing leads to warring. And that was nearly the end of all our customers!$B$BNow, when men get to fighting, it happens here. And it finishes here! For maximum viewing potential!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15561,`prob0`=1,`text0_0`='I''ve heard about this Nesingwary guy, out of Stranglethorn Vale, hunting all sorts of beasts for sport.$B$BFor SPORT. What a complete idiot, right? Think of all the profit he''s letting rot in the field!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15842,`prob0`=1,`text0_0`='',`text0_1`='The Cataclysm has destroyed Thousand Needles, $c. Will you help us in our greatest time of need?',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15848,`prob0`=1,`text0_0`='How could the Grimtotem do this to us in our greatest time of need?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=15,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15874,`prob0`=1,`text0_0`='Fizzle, Pozzik, Jinky... they all think that they saved us. But it was me! I built the ship!$B$BIt should be called, Razzeric''s Speedbarge!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15890,`prob0`=1,`text0_0`='We wouldn''t be in this mess if it weren''t for the gnomes!$B$BIt''s a well-known fact that they were the ones that caused the Cataclysm with all of their world-enlarging devices, and other such nonsense!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=274,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15892,`prob0`=1,`text0_0`='It''s all I can do to keep this ship from tearing itself apart and I still have to deal with puffed up baffoons like Fizzle here!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15899,`prob0`=1,`text0_0`='Listen, $N, I hate being indebted to anyone. So can you make sure to keep this on the down-low, just between the two of us?$B$BI''d hate for my creditors to find out.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=6,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15911,`prob0`=1,`text0_0`='You gotta help me! My poor, poor Chelsea...',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15914,`prob0`=1,`text0_0`='You''re going to put out the fires and stop those pirates from boarding us, right?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=25,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15920,`prob0`=1,`text0_0`='We may be surrounded by all sorts of nasties here, but at least we''re out over the open water.$B$BThat won''t protect us from whatever it was that I saw fly over last night, though. It was big... I mean, really big!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15932,`prob0`=1,`text0_0`='',`text0_1`='Hi there, $g handsome : gorgeous;. Welcome to the Speedbarge Bar.$B$BWhat''ll it be?',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15981,`prob0`=1,`text0_0`='You''ve got to save me here, $c! He''s gone mad... mad I telll you! His inability to stop the flooding of Thousand Needles has caused him to go completely bonkers!$B$BHe blames me for everything, including the Cataclysm. He probably thinks that I''m Deathwing in disguise, or something!$B$BHelp!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=16001,`prob0`=1,`text0_0`='I don''t know what I''m doing here. I have no experience as a contract negotiatior.$B$BI used to serve drinks for a living, but Daisy put me out of business. Time for a new career, I guess.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=17197,`prob0`=1,`text0_0`='',`text0_1`='I am well aware that the demonic presence in this forest can be considered the fault of my kind.$B$BI am also not the first Highborne to attempt to make amends for this, and I thank the Emerald Circle for being pragmatic enough to allow my help.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=17213,`prob0`=1,`text0_0`='$N, you gonna save us from those pirates, or what?!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=6,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=17221,`prob0`=1,`text0_0`='Time to expand my ice cream empire.$B$BTigule and Foror are going down!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=17667,`prob0`=1,`text0_0`='I''d love nothing more than to take down Naz''jar and her minions, but someone''s got to cover your back...',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=17993,`prob0`=1,`text0_0`='My heart is heavy with the burden of this war. I lead my people to their deaths. But if we cannot stand against Ragnaros now, how will we withstand Neltharion?$B$BWe must fight with everything we have, or witness the destruction of our world.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=18025,`prob0`=2,`text0_0`='',`text0_1`='In the nature of all things is the will to survive.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=2,`text1_0`='',`text1_1`='What is war, but the preservation of life? Just as the seed struggles to push out of the soil, so do we fight for our own existence.',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=1,`text2_0`='',`text2_1`='Hello there! You''re really growing on me.',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=1,`text3_0`='',`text3_1`='Will we win this war? Only thyme will tell.',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=1,`text4_0`='',`text4_1`='It''s sweltering down here. Did someone tell them to turnip the heat?',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=1,`text5_0`='',`text5_1`='I like you! Weed make anise pear.',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=1,`text6_0`='',`text6_1`='Some people say I''m corny, but I think I''m rather sage.',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=1,`text7_0`='',`text7_1`='Oh, it''s you again! Do you think we''ll be able to mustard up the forces we need?',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=18041,`prob0`=1,`text0_0`='',`text0_1`='Glad you could make it, $N.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=1,`text1_0`='',`text1_1`='Welcome to the Molten Flow, $N.',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=1,`text2_0`='',`text2_1`='The flamewakers up ahead mean business. Be careful in there.',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=3,`text3_0`='',`text3_1`='I fear there may be a lost druid in the back of the cave, $N. Be on the lookout.',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=18142,`prob0`=1,`text0_0`='Never have I seen such a barren wasteland.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=18144,`prob0`=1,`text0_0`='We gave up much to attain this foothold, and we must continue fighting to keep it. Although our defenses are weak, continued efforts to push forward will help us recruit stronger allies in the future.$B$BThe time for courage is now, champion.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=18157,`prob0`=1,`text0_0`='It is difficult to say. His injuries are grievous. Even though he is a powerful druid, it will take time and patience to restore him back to full health.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=18203,`prob0`=1,`text0_0`='We''ve delayed long enough. Let us take the battle to this servant of Ragnaros immediately.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=18247,`prob0`=1,`text0_0`='',`text0_1`='Legends of the great white stag have persisted in my culture for as long as we tauren can remember. Malorne likely stood guard over the primal forests at the very dawn of the world. He was an ancient spirit, the very embodiment of nature''s power and purity!$B$BLong ago, the greatest tauren hunters would track the white stag when the moon was full. To catch even a glimpse of his shimmering hide through the trees was said to bring great fortune to the tribe for a generation.$B$BDid you know that Malorne was the consort of the moon goddess?',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=5,`em0_4`=0,`em0_5`=6,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=18248,`prob0`=1,`text0_0`='',`text0_1`='Yes, Malorne was consort to the moon goddess herself, the one the night elves call "Elune." From their union was born Cenarius, the patron god of all druids and one of the most powerful creatures ever to walk upon Azeroth.$B$BBut listen to me, I ramble on.$B$BMalorne is an incredible force of nature, but he only interacts with the mortal races in times of dire trouble. Have you heard about his deeds during the War of the Ancients? ',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=274,`em0_4`=0,`em0_5`=6,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=18249,`prob0`=1,`text0_0`='Fight well, soldier. I need you to stay alive out there.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=18250,`prob0`=1,`text0_0`='They are tokens of respect, purchased only with blood on the battlefield. Earning enough of these marks will be critical if we plan on winning this war.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=18251,`prob0`=1,`text0_0`='To stand a chance in this battle against Ragnaros, we must gather allies who will gladly brave the scorched plains of the Firelands. And before we can recruit such allies to our cause - be they druid, soldier, or simple provisioner - we will need to give them reason to join us.$b$bCarrying even a handful of these marks signifies you as a hero of our cause. Gather them in the hundreds... and you will lead armies.$b$bAre you beginning to see the plan yet?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=18252,`prob0`=1,`text0_0`='',`text0_1`='Back behind me, where you first came in, there is a large thermal vent, blowing hot air up and out of this place. Stand on top of the vent, and then... jump! The momentum from your leap should be enough to propel you up to the top.$b$bOh, one more thing - based on some reports I''m hearing from fellow druids, make sure you watch your head on the way out.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=18253,`prob0`=1,`text0_0`='',`text0_1`='Of course. By the way: you''ll find several smaller vents which behave the same way, deeper in the cavern. With time, you may learn to use them to travel more efficiently within the cavern - or simply as a way to torment those gutless flamewakers.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=18258,`prob0`=1,`text0_0`='',`text0_1`='Not much, I''m afraid. I''m no druid, I''m here to lead troops. Seems odd to me that Malfurion tried to plant a tree in the middle of a warzone, but... like I said, I''m no druid.$b$bHowever, I can tell you this. NOTHING makes those fire elementals angrier than the idea of a big, leafy tree growing right in the middle of their homeland. If nothing else, when this tree grows to its full size, it will be a beacon of hope for our forces... and a thorn in the side of our enemy.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=18259,`prob0`=1,`text0_0`='',`text0_1`='Ten thousand years ago, when the demons of the Burning Legion invaded Azeroth, the ancients fought side-by-side with the mortal races. Many of the ancients met their end by the Legion''s hand. Cenarius would''ve been killed as well, were it not for the actions of his father, Malorne.$B$BThe mighty stag leapt into battle, his hooves crashing down on demon skulls and his antlers piercing their fiery flesh.$B$BThen Archimonde the Defiler took to the field of battle. After a fierce fight, he seized Malorne by his antlers and... and snapped the ancient''s neck.$B$BBut as long as there''s life in the world, can a force of nature like Malorne ever truly die?',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=274,`em0_4`=0,`em0_5`=6,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=18276,`prob0`=1,`text0_0`='We are building a permanent outpost here in the Firelands, $N. Even if Ragnaros is defeated, another may someday take his place. We cannot allow what happened in the Burning Steppes and Mount Hyjal to threaten our world again.$B$BTo that end, we will grow the "Sentinel Tree." A tree with roots in Azeroth, but a protective canopy growing here in this terrible realm. Under its shelter, we will permanently station a group of druids to maintain an eternal vigil over this desolate world.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=274,`em0_4`=0,`em0_5`=25,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=18698,`prob0`=1,`text0_0`='Little hand says it''s time to rock and roll. Everyone into the hold: We''ve got a dragon to kill.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=18740,`prob0`=1,`text0_0`='We''re catching up to the dragon! I think I can make him out through the cloud cover!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=19024,`prob0`=1,`text0_0`='This wall of shadow will hold back the demons long enough for us to cross.
\
$bWhen you and the other elves have crossed I will follow.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=7396,`prob0`=1,`text0_0`='Hello again, $N.  Did you think I would forget you?$B$BI knew you would not.  You are a clever $c who knows a person with perfect memory when $ghe:she; sees him.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=2,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=7398,`prob0`=1,`text0_0`='$N, you return!  The spirits of my last meal said you would come see me and that we would discuss business.$B$BWere they correct?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=1000,`em0_3`=6,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=17036,`prob0`=1,`text0_0`='That heap o'' rubble yonder was me family''s homestead fer five generations.$B$BWe''re takin'' it back.$B$BWe''re outnumbered... But we''re Wildhammer! Are yeh with me?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=17208,`prob0`=1,`text0_0`='<The Mullan Gryphon Rider stays still, eyes locked forward, not acknowledging your presence.>',`text0_1`='<The Mullan Gryphon Rider stays still, eyes locked forward, not acknowledging your presence.>',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=18321,`prob0`=1,`text0_0`='How may I help you?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=6,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=18353,`prob0`=1,`text0_0`='First, I give you a pellet rifle in exchange for one Darkmoon Game Token.$B$BThen you shoot the targets that light up.$b$bIf you''re fast enough to hit a target just after it''s lit up, you get an extra point.$b$bIf you don''t reach the score limit before your time''s up, or you move away from the booth, don''t worry: Your score carries over to the next game.',`text0_1`='First, I give you a pellet rifle in exchange for one Darkmoon Game Token.$B$BThen you shoot the targets that light up.$b$bIf you''re fast enough to hit a target just after it''s lit up, you get an extra point.$b$bIf you don''t reach the score limit before your time''s up, or you move away from the booth, don''t worry: Your score carries over to the next game.',`lang0`=0,`em0_0`=3,`em0_1`=1,`em0_2`=0,`em0_3`=5,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=18463,`prob0`=1,`text0_0`='The Darkmoon Faire is now open!$b$bFor a small fee, I can teleport you to the fairground staging area.$b$bWould you like to go?',`text0_1`='The Darkmoon Faire is now open!$b$bFor a small fee, I can teleport you to the fairground staging area.$b$bWould you like to go?',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;

# NeatElves
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1' WHERE `entry`=27513 AND `item`=21877;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1' WHERE `entry`=27513 AND `item`=23424;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1' WHERE `entry`=27513 AND `item`=25649;
DELETE FROM `reference_loot_template` WHERE `entry` = 22578 AND `item` = 34109;
REPLACE INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(34863, 34109, 5, 0, 1, 1);
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1' WHERE `entry`=27481 AND `item`=23424;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1' WHERE `entry`=27481 AND `item`=23768;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1' WHERE `entry`=27481 AND `item`=23781;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1' WHERE `entry`=27481 AND `item`=23783;
REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES ('14624', '7737');
DELETE FROM `reference_loot_template` WHERE `entry` = 40638;
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(40638, 40625, 0, 1, 1, 1),
(40638, 40626, 0, 1, 1, 1),
(40638, 40627, 0, 1, 1, 1),
(40638, 40634, 0, 1, 1, 1),
(40638, 40635, 0, 1, 1, 1),
(40638, 40636, 0, 1, 1, 1),
(40638, 40637, 0, 1, 1, 1),
(40638, 40638, 0, 1, 1, 1),
(40638, 40639, 0, 1, 1, 1);

# Conditions
INSERT IGNORE INTO `conditions` VALUES ('5', '34863', '34109', '0', '0', '7', '0', '356', '100', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('5', '34863', '34109', '0', '0', '25', '0', '43308', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('5', '34863', '34109', '0', '0', '2', '0', '34109', '1', '1', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '1', '24804', '0', '0', '31', '0', '3', '14888', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '25790', '0', '0', '31', '0', '3', '15511', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('13', '7', '25790', '0', '1', '31', '0', '3', '15543', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('14', '6490', '7689', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('14', '6490', '10572', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('14', '6508', '7705', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('14', '6508', '10566', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('14', '7346', '8760', '0', '0', '2', '0', '23500', '1', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('14', '7243', '8550', '0', '0', '9', '0', '9067', '0', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('14', '7245', '8557', '0', '0', '9', '0', '9067', '0', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('14', '7244', '8553', '0', '0', '9', '0', '9067', '0', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('14', '6490', '7689', '0', '0', '4', '0', '3703', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('14', '6490', '10572', '0', '0', '4', '0', '3703', '0', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('14', '6508', '7705', '0', '0', '4', '0', '3703', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('14', '6508', '10566', '0', '0', '4', '0', '3703', '0', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('15', '10318', '2', '0', '0', '1', '0', '67334', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('15', '10318', '1', '0', '0', '1', '0', '67334', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('15', '10318', '0', '0', '0', '1', '0', '67334', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('15', '10358', '0', '0', '0', '1', '0', '67401', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('15', '10358', '1', '0', '0', '1', '0', '67401', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('15', '10358', '2', '0', '0', '1', '0', '67401', '0', '0', '1', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('15', '10318', '2', '0', '0', '17', '0', '3736', '0', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('15', '10318', '1', '0', '0', '17', '0', '3736', '0', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('15', '10318', '0', '0', '0', '17', '0', '3736', '0', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('15', '10358', '0', '0', '0', '17', '0', '3736', '0', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('15', '10358', '1', '0', '0', '17', '0', '3736', '0', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('15', '10358', '2', '0', '0', '17', '0', '3736', '0', '0', '0', '0', '', null);
INSERT IGNORE INTO `conditions` VALUES ('14', '7675', '9369', '0', '0', '8', '0', '10107', '0', '0', '0', '0', '', 'Show different gossip if player has rewarded quest 10107');
INSERT IGNORE INTO `conditions` VALUES ('14', '7675', '9369', '0', '1', '8', '0', '10108', '0', '0', '0', '0', '', 'Show different gossip if player has rewarded quest 10108');
REPLACE INTO `gossip_menu` VALUES ('6490', '7689');
REPLACE INTO `gossip_menu` VALUES ('6490', '10572');
REPLACE INTO `gossip_menu` VALUES ('6508', '7705');
REPLACE INTO `gossip_menu` VALUES ('6508', '10566');
REPLACE INTO `gossip_menu` VALUES ('7243', '8550');
REPLACE INTO `gossip_menu` VALUES ('7244', '8553');
REPLACE INTO `gossip_menu` VALUES ('7245', '8557');
REPLACE INTO `gossip_menu` VALUES ('7346', '8760');
REPLACE INTO `gossip_menu_option` VALUES ('10318', '2', '18', 'Visit a mailbox.', '18', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10318', '1', '1', 'Visit a trader.', '3', '128', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10318', '0', '6', 'Visit a bank.', '9', '131072', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10358', '0', '6', 'Visit a bank.', '9', '131072', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10358', '1', '1', 'Visit a trader.', '3', '128', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10358', '2', '18', 'Visit a mailbox.', '18', '1', '1', '0', '0', '0', null);
DELETE FROM conditions WHERE SourceTypeOrReferenceId=13 AND SourceEntry=71415;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=13 AND SourceEntry=71412;
UPDATE IGNORE conditions SET SourceGroup=6508 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=6510;
UPDATE IGNORE conditions SET SourceGroup=6508 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=6510;
UPDATE conditions SET SourceGroup=0 WHERE SourceTypeOrReferenceId=17 AND SourceGroup=1;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=6510;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=6510;


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

UPDATE version SET `cache_id`= '620';
UPDATE version SET `db_version`= 'YTDB_0.14.5_R620_TC_R15588_TDBAI_335_RuDB_R49';
