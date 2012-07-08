# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 623_FIX_16001 624_FIX_16126 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('624_FIX_16126');

# SignFinder
DELETE FROM `player_factionchange_items` WHERE  `alliance_id`=54651 OR `horde_id`=54653;
INSERT INTO `player_factionchange_items` (`race_A`, `alliance_id`, `commentA`, `race_H`, `horde_id`, `commentH`) VALUES
(0, 54651, 'Gnomeregan Pride', 0, 54653, 'Darkspear Pride');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=160445;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(22, 1, 160445, 1, 0, 28, 0, 3821, 0, 0, 0, 0, '', 'execute SmartAI for gameobject 160445 only if player has complete quest 3821');

# TC
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=1186;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=10040;
UPDATE `quest_template` SET `SourceSpellId` = 40197 WHERE `Id` = 11023;
-- Grand Anchorite Almonen SAI
SET @ENTRY  := 19216;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY*100) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,10000,10000,300000,300000,80,@ENTRY*100  ,0,0,0,0,0,1,0,0,0,0,0,0,0,'Sky-Captain Cloudkicker - OOC - Run Script'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.654867,'Grand Anchorite Almonen - Script - Turn to'),
(@ENTRY*100,9,1,0,0,0,100,0,9000,9000,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - emote'),
(@ENTRY*100,9,2,0,0,0,100,0,23000,23000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1854.72,5423.082,-10.45947,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,3,0,0,0,100,0,800,800,0,0,69,0,0,0,0,0,0,8,0,0,0,-1854.598,5411.999,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,4,0,0,0,100,0,5000,5000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.183628,'Grand Anchorite Almonen - Script - Turn to'),
(@ENTRY*100,9,5,0,0,0,100,0,100,100,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 0'),
(@ENTRY*100,9,6,0,0,0,100,0,9000,9000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 1'),
(@ENTRY*100,9,7,0,0,0,100,0,9000,9000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 2'),
(@ENTRY*100,9,8,0,0,0,100,0,25000,25000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 3'),
(@ENTRY*100,9,9,0,0,0,100,0,10000,10000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1851.699,5413.06,-12.42816,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,10,0,0,0,100,0,100,100,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 4'),
(@ENTRY*100,9,11,0,0,0,100,0,1000,1000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1848.775,5412.81,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,12,0,0,0,100,0,2000,2000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.276057,'Grand Anchorite Almonen - Script - Turn to'),
(@ENTRY*100,9,13,0,0,0,100,0,4000,4000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 5'),
(@ENTRY*100,9,14,0,0,0,100,0,7000,7000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1851.574,5412.084,-12.42816,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,15,0,0,0,100,0,1900,1900,0,0,69,0,0,0,0,0,0,8,0,0,0,-1856.307,5410.266,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,16,0,0,0,100,0,1900,1900,0,0,69,0,0,0,0,0,0,8,0,0,0,-1859.002,5406.959,-12.42814,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,17,0,0,0,100,0,3000,3000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.707227,'Grand Anchorite Almonen - Script - Turn to'),
(@ENTRY*100,9,18,0,0,0,100,0,100,100,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 6'),
(@ENTRY*100,9,19,0,0,0,100,0,10000,10000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 7'),
(@ENTRY*100,9,20,0,0,0,100,0,9000,9000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 8'),
(@ENTRY*100,9,21,0,0,0,100,0,5000,5000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1855.089,5410.676,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,22,0,0,0,100,0,1000,1000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1853.62,5409.833,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,23,0,0,0,100,0,3000,3000,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 9'),
(@ENTRY*100,9,24,0,0,0,100,0,11000,11000,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 10'),
(@ENTRY*100,9,25,0,0,0,100,0,9000,9000,0,0,1,11,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 11'),
(@ENTRY*100,9,26,0,0,0,100,0,100,100,0,0,69,0,0,0,0,0,0,8,0,0,0,-1852.503,5412.286,-12.42816,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,27,0,0,0,100,0,1000,1000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1849.053,5415.075,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,28,0,0,0,100,0,2000,2000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.340707,'Grand Anchorite Almonen - Script - Turn to'),
(@ENTRY*100,9,29,0,0,0,100,0,5000,5000,0,0,1,12,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 12'),
(@ENTRY*100,9,30,0,0,0,100,0,11000,11000,0,0,1,13,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 13'),
(@ENTRY*100,9,31,0,0,0,100,0,4000,4000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1851.643,5414.012,-12.42816,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,32,0,0,0,100,0,1200,1200,0,0,69,0,0,0,0,0,0,8,0,0,0,-1854.913,5412.682,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,33,0,0,0,100,0,800,800,0,0,69,0,0,0,0,0,0,8,0,0,0,-1854.408,5411.227,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,34,0,0,0,100,0,1000,1000,0,0,1,14,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 14'),
(@ENTRY*100,9,35,0,0,0,100,0,10000,10000,0,0,1,15,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 15'),
(@ENTRY*100,9,36,0,0,0,100,0,7000,7000,0,0,1,16,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 16'),
(@ENTRY*100,9,37,0,0,0,100,0,10000,10000,0,0,1,17,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 17'),
(@ENTRY*100,9,38,0,0,0,100,0,11000,11000,0,0,1,18,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 18'),
(@ENTRY*100,9,39,0,0,0,100,0,10000,10000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1853.137,5424.863,-10.47787,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,40,0,0,0,100,0,6500,6500,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.6529,'Grand Anchorite Almonen - Script - Turn to');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry`=19216;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(19216,0,0, 'Friends, it is my great pleasure to welcome you to the temple today.',12,0,100,1,0,0, 'Grand Anchorite Almonen'),
(19216,1,0, 'A''dal has been most generous in his revelations to me, a humble servant of the Light.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,2,0, 'In accordance with my divine calling, I must share these revealed truths to all who would hear.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,3,0, 'It has been made known to me that inside each of us, the Light resides...',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,4,0, '...that it is a gift, given freely to all naturally born beings.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,5,0, 'It manifests itself as a feeling, small at first and easily ignored, that confirms truths and subtly prods one to do good.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,6,0, 'Simple kindnesses, charitable deeds, service to those in need. These are all fruits of the Light.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,7,0, 'It rewards those who heed its promptings with blessings, both seen and unseen.',12,0,100,1,0,0, 'Grand Anchorite Almonen'),
(19216,8,0, 'Personal reservoirs of hope and faith are strengthened, and one''s capacity for greater light increases.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,9,0, 'Over the course of time, through obedience to the Light''s guidance, one becomes more sensitive to its voice, and its power.',12,0,100,273,0,0, 'Grand Anchorite Almonen'),
(19216,10,0, 'Great is the healing and blessing power of the Light''s most diligent followers.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,11,0, 'Sadly, there are those who wander through mortality in defiance of the Light.',12,0,100,1,0,0, 'Grand Anchorite Almonen'),
(19216,12,0, 'From these the Light withdraws, until only darkness remains.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,13,0, 'Where there is no light, despair, loathing and rage thrive.',12,0,100,5,0,0, 'Grand Anchorite Almonen'),
(19216,14,0, 'We are born into a perilous age, where the forces of darkness are determined to bring about our destruction.',12,0,100,1,0,0, 'Grand Anchorite Almonen'),
(19216,15,0, 'These are the times to find yourselves in unison with the Light.',12,0,100,5,0,0, 'Grand Anchorite Almonen'),
(19216,16,0, 'Hear my words, and let the Light inside of you confirm the truth of them.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,17,0, 'Embrace the light that is in you, my friends! Deny yourself all darkness...',12,0,100,5,0,0, 'Grand Anchorite Almonen'),
(19216,18,0, 'We must endure these trying times faithfully, and one day we will find ourselves victorious.',12,0,100,5,0,0, 'Grand Anchorite Almonen');
-- Fix Surge of Adrenaline
DELETE FROM `spell_linked_spell` WHERE `spell_effect`=68667;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(-66683,68667,0, 'Icehowl - Surge of Adrenaline'),
(-67660,68667,0, 'Icehowl - Surge of Adrenaline');
-- delete 'Mangle - Remover'
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33876 AND `spell_effect`=-48564 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33876 AND `spell_effect`=-48563 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33876 AND `spell_effect`=-33987 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33876 AND `spell_effect`=-33986 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33876 AND `spell_effect`=-33878 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33878 AND `spell_effect`=-48566 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33878 AND `spell_effect`=-48565 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33878 AND `spell_effect`=-33983 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33878 AND `spell_effect`=-33982 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33878 AND `spell_effect`=-33876 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33982 AND `spell_effect`=-48564 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33982 AND `spell_effect`=-48563 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33982 AND `spell_effect`=-33987 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33982 AND `spell_effect`=-33986 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33982 AND `spell_effect`=-33878 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33983 AND `spell_effect`=-48564 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33983 AND `spell_effect`=-48563 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33983 AND `spell_effect`=-33987 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33983 AND `spell_effect`=-33986 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33983 AND `spell_effect`=-33878 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33986 AND `spell_effect`=-48566 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33986 AND `spell_effect`=-48565 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33986 AND `spell_effect`=-33983 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33986 AND `spell_effect`=-33982 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33986 AND `spell_effect`=-33876 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33987 AND `spell_effect`=-48566 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33987 AND `spell_effect`=-48565 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33987 AND `spell_effect`=-33983 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33987 AND `spell_effect`=-33982 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33987 AND `spell_effect`=-33876 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48563 AND `spell_effect`=-48566 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48563 AND `spell_effect`=-48565 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48563 AND `spell_effect`=-33983 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48563 AND `spell_effect`=-33982 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48563 AND `spell_effect`=-33876 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48564 AND `spell_effect`=-48566 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48564 AND `spell_effect`=-48565 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48564 AND `spell_effect`=-33983 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48564 AND `spell_effect`=-33982 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48564 AND `spell_effect`=-33876 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48565 AND `spell_effect`=-48564 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48565 AND `spell_effect`=-48563 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48565 AND `spell_effect`=-33987 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48565 AND `spell_effect`=-33986 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48565 AND `spell_effect`=-33878 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48566 AND `spell_effect`=-48564 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48566 AND `spell_effect`=-48563 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48566 AND `spell_effect`=-33987 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48566 AND `spell_effect`=-33986 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48566 AND `spell_effect`=-33878 AND `type`=1;
-- Death Knight
DELETE FROM `spell_bonus_data` WHERE `entry` IN(58621, 47632, 47633, 50444, 70890, 50526, 48982, 59754, 49184);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(58621, 0, -1,  0.08,  -1, 'Death Knight - Glyph of Chains of Ice'),        -- Shouldn't scale with SP.
(47632, 0, -1,  0.15,  -1, 'Death Knight - Death Coil'),                    -- Shouldn't scale with SP.
(47633, 0, -1,  0.15,  -1, 'Death Knight - Death Coil (Heal)'),             -- Shouldn't scale with SP.
(50444, 0, -1,  0.105, -1, 'Death Knight - Corpse Explosion (Triggered)'),  -- Shouldn't scale with SP.
(70890, 0, -1, -1,     -1, 'Death Knight - Scourge Strike (Shadow)'),       -- Shouldn't scale with SP.
(50526, 0, -1, -1,     -1, 'Death Knight - Wandering Plague (Triggered)'),  -- Shouldn't scale with SP.
(48982, 0, -1, -1,     -1, 'Death Knight - Rune Tap'),                      -- Shouldn't scale with SP.
(59754, 0, -1, -1,     -1, 'Death Knight - Glyph of Rune Tap (Triggered)'), -- Shouldn't scale with SP.
(49184, 0, -1,  0.2,   -1, 'Death Knight - Howling Blast');                 -- Shouldn't scale with SP.

-- Druid
DELETE FROM `spell_bonus_data` WHERE `entry` IN(48450, 48451); -- Lifebloom Rank 2, Rank 3
DELETE FROM `spell_bonus_data` WHERE `entry` IN(48567, 48568); -- Lacerate Rank 2, Rank 3
DELETE FROM `spell_bonus_data` WHERE `entry` IN(33745, 9007);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(33745, 0,  0,  0.01,   0.01, 'Druid - Lacerate ($AP*0.05/number of ticks)'), -- Direct damage should scale with AP, based on DrDamage addon(3.3.5a).
(9007, -1,  0, -1,      0.03, 'Druid - Pounce Bleed (Triggered)');            -- Shouldn't scale with SP. Increase AP coefficient, based on DrDamage addon(3.3.5a) and Wowwiki.com.

-- Hunter
DELETE FROM `spell_bonus_data` WHERE `entry` IN(56641, 42243, 3674, 19306, 1495, 63468, 136);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(56641,  0, -1,  0.1,  -1,     'Hunter - Steady Shot'),                              -- Shouldn't scale with SP.
(42243,  0, -1,  0.0837, -1,   'Hunter - Volley (Triggered)'),                       -- Shouldn't scale with SP.
(3674,  -1,  0, -1,     0.023, 'Hunter - Black Arrow ($RAP*0.1 / number of ticks)'), -- Shouldn't scale with SP. Increase AP coefficient, based on DrDamage addon(3.3.5a).
(19306,  0, -1,  0.2,  -1,     'Hunter - Counterattack'),                            -- Shouldn't scale with SP.
(1495,   0, -1,  0.2,  -1,     'Hunter - Mongoose Bite'),                            -- Shouldn't scale with SP.
(63468, -1,  0, -1,    -1,     'Hunter - Piercing Shots'),                           -- Shouldn't scale with SP.
(136,   -1,  0, -1,    -1,     'Hunter - Mend Pet');                                 -- Shouldn't scale with SP.

-- Mage
DELETE FROM `spell_bonus_data` WHERE `entry`=7269; -- Arcane Missiles Triggered Spell Rank 2
DELETE FROM `spell_bonus_data` WHERE `entry` IN(133, 44614, 44457, 44461);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(133,    1,       0,   -1, -1, 'Mage - Fireball'),                                -- DoT componenet shouldn't scale.
(44614,  0.8571,  0,   -1, -1, 'Mage - Frostfire Bolt'),                          -- DoT componenet shouldn't scale.
(44457, -1,       0.2, -1, -1, 'Mage - Living Bomb ($SP*0.8 / number of ticks)'), -- Direct damage bonus correction.
(44461,  0.4286, -1,   -1, -1, 'Mage - Living Bomb (Triggered)');                 -- Direct damage bonus correction.

-- Paladin
DELETE FROM `spell_bonus_data` WHERE `entry` IN(633, 54158, 20467, 20187, 31803, 53742, 31804, 53733);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(633,    0,     -1,      -1,     -1,      'Paladin - Lay on Hands'),               -- Shouldn't scale with SP.
(54158,  0.27,  -1,       0.175, -1,      'Paladin - Judgement (Seal of Light, Seal of Wisdom, Seal of Justice)'), -- Increase coefficient, based on Wowwiki.com.
(20467,  0.14,  -1,       0.115, -1,      'Paladin - Judgement of Command'),       -- Decrease coefficient, based on Wowwiki.com.
(20187,  0.355, -1,       0.225, -1,      'Paladin - Judgement of Righteousness'), -- Increase coefficient, based on Wowwiki.com.
(31803, -1,      0.0132, -1,      0.0252, 'Paladin - Holy Vengeance'),             -- Decrease coefficient, based on DrDamage addon(3.3.5a) and Wowwiki.com.
(53742, -1,      0.0132, -1,      0.0252, 'Paladin - Blood Corruption'),           -- Decrease coefficient, based on DrDamage addon(3.3.5a) and Wowwiki.com.
(31804,  0.24,  -1,       0.15,  -1,      'Paladin - Judgement of Vengeance'),     -- Increase coefficient, based on Wowwiki.com.
(53733,  0.24,  -1,       0.15,  -1,      'Paladin - Judgement of Corruption');    -- Increase coefficient, based on Wowwiki.com.

-- Priest
DELETE FROM `spell_bonus_data` WHERE `entry` IN(52983, 52954, 58985); -- Penance Heal Rank 2, Rank 3, Rank 4
DELETE FROM `spell_bonus_data` WHERE `entry` IN(52998, 52999, 53000); -- Penance Hurt Rank 2, Rank 3, Rank 4
DELETE FROM `spell_bonus_data` WHERE `entry` IN(7001);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(7001, -1, 0.626, -1, -1, 'Priest - Lightwell Renew ($SP*1.878 / number of ticks)'); -- Increase coefficient, based on DrDamage addon(3.3.5a).

-- Rogue
DELETE FROM `spell_bonus_data` WHERE `entry` IN(819, 11353, 11354, 25349, 26968, 27187, 57969, 57970); -- Deadly Poison Rank 2, Rank 3, etc.
DELETE FROM `spell_bonus_data` WHERE `entry` IN(8685, 8689, 11335, 11336, 11337, 26890, 57964, 57965); -- Instant Poison Rank 2, Rank 3, etc.
DELETE FROM `spell_bonus_data` WHERE `entry` IN(13222, 13223, 13224, 27189, 57974, 57975); -- Wound Poison Rank 2, Rank 3, etc.
DELETE FROM `spell_bonus_data` WHERE `entry` IN(32645, 2098, 703, 1776, 1943, 8680, 26688, 13218);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(32645, 0, -1, -1,    -1,    'Rogue - Envenom'),           -- Shouldn't scale with SP.
(2098,  0, -1, -1,    -1,    'Rogue - Eviscerate'),        -- Shouldn't scale with SP.
(703,  -1,  0, -1,     0.07, 'Rogue - Garrote'),           -- Shouldn't scale with SP.
(1776,  0, -1,  0.21, -1,    'Rogue - Gouge'),             -- Shouldn't scale with SP.
(1943, -1,  0, -1,    -1,    'Rogue - Rupture'),           -- Shouldn't scale with SP.
(8680,  0, -1,  0.1,  -1,    'Rogue - Instant Poison'),    -- Shouldn't scale with SP.
(26688, 0, -1,  0,    -1,    'Rogue - Anesthetic Poison'), -- Shouldn't scale with SP nor AP.
(13218, 0, -1,  0.04, -1,    'Rogue - Wound Poison');      -- Shouldn't scale with SP.

 -- Warlock Healthstones Shouldn't scale with SP.
DELETE FROM `spell_bonus_data` WHERE `entry` IN (6262, 23468, 23469, 6263, 23470, 23471, 5720, 23472, 23473, 5723, 23474, 23475, 11732, 23476, 23477, 27235, 27236, 27237, 47874, 47873, 47872, 47875, 47876, 47877);
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(6262,  0, -1, 0, -1, 'Warlock - HS - Minor Healthstone (with 0/2 Improved Healthstone)'),
(23468, 0, -1, 0, -1, 'Warlock - HS - Minor Healthstone (with 1/2 Improved Healthstone)'),
(23469, 0, -1, 0, -1, 'Warlock - HS - Minor Healthstone (with 2/2 Improved Healthstone)'),
(6263,  0, -1, 0, -1, 'Warlock - HS - Lesser Healthstone (with 0/2 Improved Healthstone)'),
(23470, 0, -1, 0, -1, 'Warlock - HS - Lesser Healthstone (with 1/2 Improved Healthstone)'),
(23471, 0, -1, 0, -1, 'Warlock - HS - Lesser Healthstone (with 2/2 Improved Healthstone)'),
(5720,  0, -1, 0, -1, 'Warlock - HS - Healthstone (with 0/2 Improved Healthstone)'),
(23472, 0, -1, 0, -1, 'Warlock - HS - Healthstone (with 1/2 Improved Healthstone)'),
(23473, 0, -1, 0, -1, 'Warlock - HS - Healthstone (with 2/2 Improved Healthstone)'),
(5723,  0, -1, 0, -1, 'Warlock - HS - Greater Healthstone (with 0/2 Improved Healthstone)'),
(23474, 0, -1, 0, -1, 'Warlock - HS - Greater Healthstone (with 1/2 Improved Healthstone)'),
(23475, 0, -1, 0, -1, 'Warlock - HS - Greater Healthstone (with 2/2 Improved Healthstone)'),
(11732, 0, -1, 0, -1, 'Warlock - HS - Major Healthstone (with 0/2 Improved Healthstone)'),
(23476, 0, -1, 0, -1, 'Warlock - HS - Major Healthstone (with 1/2 Improved Healthstone)'),
(23477, 0, -1, 0, -1, 'Warlock - HS - Major Healthstone (with 2/2 Improved Healthstone)'),
(27235, 0, -1, 0, -1, 'Warlock - HS - Master Healthstone (with 0/2 Improved Healthstone)'),
(27236, 0, -1, 0, -1, 'Warlock - HS - Master Healthstone (with 1/2 Improved Healthstone)'),
(27237, 0, -1, 0, -1, 'Warlock - HS - Master Healthstone (with 2/2 Improved Healthstone)'),
(47874, 0, -1, 0, -1, 'Warlock - HS - Demonic Healthstone (with 0/2 Improved Healthstone)'),
(47873, 0, -1, 0, -1, 'Warlock - HS - Demonic Healthstone (with 1/2 Improved Healthstone)'),
(47872, 0, -1, 0, -1, 'Warlock - HS - Demonic Healthstone (with 2/2 Improved Healthstone)'),
(47875, 0, -1, 0, -1, 'Warlock - HS - Fel Healthstone (with 0/2 Improved Healthstone)'),
(47876, 0, -1, 0, -1, 'Warlock - HS - Fel Healthstone (with 1/2 Improved Healthstone)'),
(47877, 0, -1, 0, -1, 'Warlock - HS - Fel Healthstone (with 2/2 Improved Healthstone)');
-- Death Knight
DELETE FROM `spell_bonus_data` WHERE `entry` IN (58621, 47632, 47633, 50444, 70890, 50526, 48982, 59754, 49184);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(58621, 0, 0, 0.08, 0, 'Death Knight - Glyph of Chains of Ice'),        -- Shouldn't scale with SP.
(47632, 0, 0, 0.15, 0, 'Death Knight - Death Coil'),                    -- Shouldn't scale with SP.
(47633, 0, 0, 0.15, 0, 'Death Knight - Death Coil (Heal)'),             -- Shouldn't scale with SP.
(50444, 0, 0, 0.105, 0, 'Death Knight - Corpse Explosion (Triggered)'),  -- Shouldn't scale with SP.
(70890, 0, 0, 0, 0, 'Death Knight - Scourge Strike (Shadow)'),       -- Shouldn't scale with SP.
(50526, 0, 0, 0, 0, 'Death Knight - Wandering Plague (Triggered)'),  -- Shouldn't scale with SP.
(48982, 0, 0, 0, 0, 'Death Knight - Rune Tap'),                      -- Shouldn't scale with SP.
(59754, 0, 0, 0, 0, 'Death Knight - Glyph of Rune Tap (Triggered)'), -- Shouldn't scale with SP.
(49184, 0, 0, 0.2, 0, 'Death Knight - Howling Blast');                 -- Shouldn't scale with SP.

-- Druid
DELETE FROM `spell_bonus_data` WHERE `entry` IN (33745, 9007);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(33745, 0,  0,  0.01,   0.01, 'Druid - Lacerate ($AP*0.05/number of ticks)'), -- Direct damage should scale with AP, based on DrDamage addon(3.3.5a).
(9007, 0,  0, 0,      0.03, 'Druid - Pounce Bleed (Triggered)');            -- Shouldn't scale with SP. Increase AP coefficient, based on DrDamage addon(3.3.5a) and Wowwiki.com.

-- Hunter
DELETE FROM `spell_bonus_data` WHERE `entry` IN (56641, 42243, 3674, 19306, 1495, 63468, 136);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(56641,  0, 0,  0.1,  0,     'Hunter - Steady Shot'),                              -- Shouldn't scale with SP.
(42243,  0, 0,  0.0837, 0,   'Hunter - Volley (Triggered)'),                       -- Shouldn't scale with SP.
(3674,  0,  0, 0,     0.023, 'Hunter - Black Arrow ($RAP*0.1 / number of ticks)'), -- Shouldn't scale with SP. Increase AP coefficient, based on DrDamage addon(3.3.5a).
(19306,  0, 0,  0.2,  0,     'Hunter - Counterattack'),                            -- Shouldn't scale with SP.
(1495,   0, 0,  0.2,  0,     'Hunter - Mongoose Bite'),                            -- Shouldn't scale with SP.
(63468, 0,  0, 0,    0,     'Hunter - Piercing Shots'),                           -- Shouldn't scale with SP.
(136,   0,  0, 0,    0,     'Hunter - Mend Pet');                                 -- Shouldn't scale with SP.

-- Mage
DELETE FROM `spell_bonus_data` WHERE `entry` IN (133, 44614, 44457, 44461);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(133,    1,       0,   0, 0, 'Mage - Fireball'),                                -- DoT componenet shouldn't scale.
(44614,  0.8571,  0,   0, 0, 'Mage - Frostfire Bolt'),                          -- DoT componenet shouldn't scale.
(44457, 0,       0.2, 0, 0, 'Mage - Living Bomb ($SP*0.8 / number of ticks)'), -- Direct damage bonus correction.
(44461,  0.4286, 0,   0, 0, 'Mage - Living Bomb (Triggered)');                 -- Direct damage bonus correction.

-- Paladin
DELETE FROM `spell_bonus_data` WHERE `entry` IN (633, 54158, 20467, 20187, 31803, 53742, 31804, 53733);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(633,    0,     0,      0,     0,      'Paladin - Lay on Hands'),               -- Shouldn't scale with SP.
(54158,  0.27,  0,       0.175, 0,      'Paladin - Judgement (Seal of Light, Seal of Wisdom, Seal of Justice)'), -- Increase coefficient, based on Wowwiki.com.
(20467,  0.14,  0,       0.115, 0,      'Paladin - Judgement of Command'),       -- Decrease coefficient, based on Wowwiki.com.
(20187,  0.355, 0,       0.225, 0,      'Paladin - Judgement of Righteousness'), -- Increase coefficient, based on Wowwiki.com.
(31803, 0,      0.0132, 0,      0.0252, 'Paladin - Holy Vengeance'),             -- Decrease coefficient, based on DrDamage addon(3.3.5a) and Wowwiki.com.
(53742, 0,      0.0132, 0,      0.0252, 'Paladin - Blood Corruption'),           -- Decrease coefficient, based on DrDamage addon(3.3.5a) and Wowwiki.com.
(31804,  0.24,  0,       0.15,  0,      'Paladin - Judgement of Vengeance'),     -- Increase coefficient, based on Wowwiki.com.
(53733,  0.24,  0,       0.15,  0,      'Paladin - Judgement of Corruption');    -- Increase coefficient, based on Wowwiki.com.

-- Priest
DELETE FROM `spell_bonus_data` WHERE `entry` = 7001;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(7001, 0, 0.626, 0, 0, 'Priest - Lightwell Renew ($SP*1.878 / number of ticks)'); -- Increase coefficient, based on DrDamage addon(3.3.5a).

-- Rogue
DELETE FROM `spell_bonus_data` WHERE `entry` IN (32645, 2098, 703, 1776, 1943, 8680, 26688, 13218);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(32645, 0, 0, 0,    0,    'Rogue - Envenom'),           -- Shouldn't scale with SP.
(2098,  0, 0, 0,    0,    'Rogue - Eviscerate'),        -- Shouldn't scale with SP.
(703,  0,  0, 0,     0.07, 'Rogue - Garrote'),           -- Shouldn't scale with SP.
(1776,  0, 0,  0.21, 0,    'Rogue - Gouge'),             -- Shouldn't scale with SP.
(1943, 0,  0, 0,    0,    'Rogue - Rupture'),           -- Shouldn't scale with SP.
(8680,  0, 0,  0.1,  0,    'Rogue - Instant Poison'),    -- Shouldn't scale with SP.
(26688, 0, 0,  0,    0,    'Rogue - Anesthetic Poison'), -- Shouldn't scale with SP nor AP.
(13218, 0, 0,  0.04, 0,    'Rogue - Wound Poison');      -- Shouldn't scale with SP.

 -- Warlock Healthstones Shouldn't scale with SP.
DELETE FROM `spell_bonus_data` WHERE `entry` IN (6262, 23468, 23469, 6263, 23470, 23471, 5720, 23472, 23473, 5723, 23474, 23475, 11732, 23476, 23477, 27235, 27236, 27237, 47874, 47873, 47872, 47875, 47876, 47877);
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(6262,  0, 0, 0, 0, 'Warlock - HS - Minor Healthstone (with 0/2 Improved Healthstone)'),
(23468, 0, 0, 0, 0, 'Warlock - HS - Minor Healthstone (with 1/2 Improved Healthstone)'),
(23469, 0, 0, 0, 0, 'Warlock - HS - Minor Healthstone (with 2/2 Improved Healthstone)'),
(6263,  0, 0, 0, 0, 'Warlock - HS - Lesser Healthstone (with 0/2 Improved Healthstone)'),
(23470, 0, 0, 0, 0, 'Warlock - HS - Lesser Healthstone (with 1/2 Improved Healthstone)'),
(23471, 0, 0, 0, 0, 'Warlock - HS - Lesser Healthstone (with 2/2 Improved Healthstone)'),
(5720,  0, 0, 0, 0, 'Warlock - HS - Healthstone (with 0/2 Improved Healthstone)'),
(23472, 0, 0, 0, 0, 'Warlock - HS - Healthstone (with 1/2 Improved Healthstone)'),
(23473, 0, 0, 0, 0, 'Warlock - HS - Healthstone (with 2/2 Improved Healthstone)'),
(5723,  0, 0, 0, 0, 'Warlock - HS - Greater Healthstone (with 0/2 Improved Healthstone)'),
(23474, 0, 0, 0, 0, 'Warlock - HS - Greater Healthstone (with 1/2 Improved Healthstone)'),
(23475, 0, 0, 0, 0, 'Warlock - HS - Greater Healthstone (with 2/2 Improved Healthstone)'),
(11732, 0, 0, 0, 0, 'Warlock - HS - Major Healthstone (with 0/2 Improved Healthstone)'),
(23476, 0, 0, 0, 0, 'Warlock - HS - Major Healthstone (with 1/2 Improved Healthstone)'),
(23477, 0, 0, 0, 0, 'Warlock - HS - Major Healthstone (with 2/2 Improved Healthstone)'),
(27235, 0, 0, 0, 0, 'Warlock - HS - Master Healthstone (with 0/2 Improved Healthstone)'),
(27236, 0, 0, 0, 0, 'Warlock - HS - Master Healthstone (with 1/2 Improved Healthstone)'),
(27237, 0, 0, 0, 0, 'Warlock - HS - Master Healthstone (with 2/2 Improved Healthstone)'),
(47874, 0, 0, 0, 0, 'Warlock - HS - Demonic Healthstone (with 0/2 Improved Healthstone)'),
(47873, 0, 0, 0, 0, 'Warlock - HS - Demonic Healthstone (with 1/2 Improved Healthstone)'),
(47872, 0, 0, 0, 0, 'Warlock - HS - Demonic Healthstone (with 2/2 Improved Healthstone)'),
(47875, 0, 0, 0, 0, 'Warlock - HS - Fel Healthstone (with 0/2 Improved Healthstone)'),
(47876, 0, 0, 0, 0, 'Warlock - HS - Fel Healthstone (with 1/2 Improved Healthstone)'),
(47877, 0, 0, 0, 0, 'Warlock - HS - Fel Healthstone (with 2/2 Improved Healthstone)');
DELETE FROM `spell_ranks` WHERE `first_spell_id`=64694;
INSERT INTO `spell_ranks` (`first_spell_id`,`spell_id`,`rank`) VALUES
(64694,64694,1),
(64694,65263,2),
(64694,65264,3);
SET @DIFF := 3268; -- set by TDB team
DELETE FROM `spelldifficulty_dbc` WHERE `id` BETWEEN @DIFF+0 AND @DIFF+2;
INSERT INTO `spelldifficulty_dbc` (`id`,`spellid0`,`spellid1`,`spellid2`,`spellid3`) VALUES
(@DIFF+0,50811,61547,0,0),
(@DIFF+1,57762,59990,0,0),
(@DIFF+2,57763,61489,0,0);
DELETE FROM `spell_bonus_data` WHERE `entry`=63544;
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(63544,0,0,0,0,'Priest - Empowered Renew');
-- Fix up quest 9539 "Totem of Coo"
-- Totem of Akida SAI
SET @ENTRY  := 17360;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,9539,0,0,0,85,30437,0,0,0,0,0,7,0,0,0,0,0,0,0,'Totem of Akida - Quest accepted - Cast Spell on player');
-- Stillpine Ancestor Akida SAI
SET @ENTRY  := 17379;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY*100) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,1,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Akida - Just Summoned - Run Script'),
-- Script
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,3,0,16995,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Akida - Script - set model'),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Stillpine Ancestor Akida - Script - turn to player'),
(@ENTRY*100,9,2,0,0,0,100,0,0,0,0,0,11,25035,0,0,0,0,0,1,0,0,0,0,0,0,0.01745319,'Stillpine Ancestor Akida - Script - Cast Spell'),
(@ENTRY*100,9,3,0,0,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Akida - Script - Set run on'),
(@ENTRY*100,9,4,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Akida - Script - say 0'),
(@ENTRY*100,9,5,0,0,0,100,0,1000,1000,0,0,69,0,0,0,0,0,0,8,0,0,0,-4154.224,-12514.75,45.35527,0,'Stillpine Ancestor Akida - Script - move to'),
(@ENTRY*100,9,6,0,0,0,100,0,2000,2000,0,0,69,0,0,0,0,0,0,8,0,0,0,-4123.563,-12517.23,44.9127,0,'Stillpine Ancestor Akida - Script - move to'),
(@ENTRY*100,9,7,0,0,0,100,0,3500,3500,0,0,69,0,0,0,0,0,0,8,0,0,0,-4091.881,-12524,42.37354,0,'Stillpine Ancestor Akida - Script - move to'),
(@ENTRY*100,9,8,0,0,0,100,0,5500,5500,0,0,69,0,0,0,0,0,0,8,0,0,0,-4058.039,-12538.57,43.96096,0,'Stillpine Ancestor Akida - Script - move to'),
(@ENTRY*100,9,9,0,0,0,100,0,4500,4500,0,0,69,0,0,0,0,0,0,8,0,0,0,-4026.534,-12568.4,45.82222,0,'Stillpine Ancestor Akida - Script - move to'),
(@ENTRY*100,9,10,0,0,0,100,0,3000,3000,0,0,69,0,0,0,0,0,0,8,0,0,0,-4000.155,-12598.55,54.19722,0,'Stillpine Ancestor Akida - Script - move to'), --
(@ENTRY*100,9,11,0,0,0,100,0,7500,7500,0,0,69,0,0,0,0,0,0,8,0,0,0,-3977.5,-12627.22,63.1442,0,'Stillpine Ancestor Akida - Script - move to'),
(@ENTRY*100,9,12,0,0,0,100,0,3500,3500,0,0,69,0,0,0,0,0,0,8,0,0,0,-3952.254,-12660.37,74.23783,0,'Stillpine Ancestor Akida - Script - move to'),
(@ENTRY*100,9,13,0,0,0,100,0,6500,6500,0,0,69,0,0,0,0,0,0,8,0,0,0,-3933.183,-12698.27,85.65151,0,'Stillpine Ancestor Akida - Script - move to'),
(@ENTRY*100,9,14,0,0,0,100,0,4500,4500,0,0,69,0,0,0,0,0,0,8,0,0,0,-3925.843,-12718.81,89.94553,0,'Stillpine Ancestor Akida - Script - move to'), --
(@ENTRY*100,9,15,0,0,0,100,0,3500,3500,0,0,69,0,0,0,0,0,0,8,0,0,0,-3915.914,-12743.41,98.56779,0,'Stillpine Ancestor Akida - Script - move to'),
(@ENTRY*100,9,16,0,0,0,100,0,4500,4500,0,0,66,0,0,0,0,0,0,19,17361,10,0,0,0,0,0,'Stillpine Ancestor Akida - Script - turn to Totem of Coo'),
(@ENTRY*100,9,17,0,0,0,100,0,2000,2000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Akida - Script - say 1'),
(@ENTRY*100,9,18,0,0,0,100,0,3000,3000,0,0,11,30428,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Akida - Script - cast spell'),
(@ENTRY*100,9,19,0,0,0,100,0,1000,1000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Akida - Script - despawn');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry`=17379;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(17379,0,0, '%s urges you to follow him.',16,0,100,0,0,0, 'Stillpine Ancestor Akida'),
(17379,1,0, '%s points to the totem of Coo.',16,0,100,25,0,0, 'Stillpine Ancestor Akida');
-- add missing spells to db
DELETE FROM `spell_dbc` WHERE `Id` IN (30426,30437);
INSERT INTO `spell_dbc` (`Id`,`SchoolMask`,`Dispel`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`Stances`,`StancesNot`,`Targets`,`CastingTimeIndex`,`AuraInterruptFlags`,`ProcFlags`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`RangeIndex`,`StackAmount`,`EquippedItemClass`,`EquippedItemSubClassMask`,`EquippedItemInventoryTypeMask`,`Effect1`,`Effect2`,`Effect3`,`EffectDieSides1`,`EffectDieSides2`,`EffectDieSides3`,`EffectRealPointsPerLevel1`,`EffectRealPointsPerLevel2`,`EffectRealPointsPerLevel3`,`EffectBasePoints1`,`EffectBasePoints2`,`EffectBasePoints3`,`EffectMechanic1`,`EffectMechanic2`,`EffectMechanic3`,`EffectImplicitTargetA1`,`EffectImplicitTargetA2`,`EffectImplicitTargetA3`,`EffectImplicitTargetB1`,`EffectImplicitTargetB2`,`EffectImplicitTargetB3`,`EffectRadiusIndex1`,`EffectRadiusIndex2`,`EffectRadiusIndex3`,`EffectApplyAuraName1`,`EffectApplyAuraName2`,`EffectApplyAuraName3`,`EffectAmplitude1`,`EffectAmplitude2`,`EffectAmplitude3`,`EffectMultipleValue1`,`EffectMultipleValue2`,`EffectMultipleValue3`,`EffectMiscValue1`,`EffectMiscValue2`,`EffectMiscValue3`,`EffectTriggerSpell1`,`EffectTriggerSpell2`,`EffectTriggerSpell3`,`Comment`,`MaxTargetLevel`,`SpellFamilyName`,`SpellFamilyFlags1`,`SpellFamilyFlags2`,`MaxAffectedTargets`,`DmgClass`,`PreventionType`,`DmgMultiplier1`,`DmgMultiplier2`,`AreaGroupId`,`EffectMiscValueB1`) VALUES
(30426,0,0,0,256,268435456,0,0,0,0,0,0,0,1,0,0,101,0,0,0,0,40,12,0,-1,0,0,28,6,0,0,0,0,0,0,0,0,0,0,0,0,0,32,1,0,0,0,0,15,0,0,0,4,0,0,0,0,0,0,0,17379,0,0,0,0,0,'Stillpine Ancestor Akida',0,0,0,0,0,0,0,1,1,0,64),
(30437,0,0,0,2304,268435456,0,0,0,0,0,0,0,1,0,0,101,0,0,0,0,36,3,0,-1,0,0,6,0,0,1,0,0,0,0,0,0,0,0,0,0,0,21,0,0,0,0,0,0,0,0,23,0,0,1000,0,0,0,0,0,0,0,0,30426,0,0,'Stillpine Ancestor Akida TRIGGER',0,0,0,0,0,0,0,1,0,0,0);
-- Remove Stillpine Ancestor Akida EAI
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=17379;
-- Fix up quest 9540 "Totem of Tikti"
-- Totem of Coo SAI
SET @ENTRY  := 17361;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,9540,0,0,0,85,30442,0,0,0,0,0,7,0,0,0,0,0,0,0,'Totem of Coo - Quest accepted - Cast Spell on player');
-- Stillpine Ancestor Coo SAI
SET @ENTRY  := 17391;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY*100) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,1,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Just Summoned - Run Script'),
-- Script
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,3,0,16995,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Script - set model'),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Script - turn to player'),
(@ENTRY*100,9,2,0,0,0,100,0,0,0,0,0,11,25035,0,0,0,0,0,1,0,0,0,0,0,0,0.01745319,'Stillpine Ancestor Coo - Script - Cast Spell'),
(@ENTRY*100,9,3,0,0,0,100,0,3000,3000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Script - say 0'),
(@ENTRY*100,9,4,0,0,0,100,0,1000,1000,0,0,69,0,0,0,0,0,0,8,0,0,0,-3926.039,-12746.71,96.06779,0,'Stillpine Ancestor Coo - Script - move to'),
(@ENTRY*100,9,5,0,0,0,100,0,1000,1000,0,0,69,0,0,0,0,0,0,8,0,0,0,-3926.326,-12753.71,98.44279,0,'Stillpine Ancestor Coo - Script - move to'),
(@ENTRY*100,9,6,0,0,0,100,0,2000,2000,0,0,69,0,0,0,0,0,0,8,0,0,0,-3924.268,-12761.45,101.6928,0,'Stillpine Ancestor Coo - Script - move to'),
(@ENTRY*100,9,7,0,0,0,100,0,6000,6000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Script - say 1'),
(@ENTRY*100,9,8,0,0,0,100,0,4000,4000,0,0,11,30424,0,0,0,0,0,7,0,0,0,0,0,0,0.01745319,'Stillpine Ancestor Coo - Script - Cast Spell'),
(@ENTRY*100,9,9,0,0,0,100,0,1000,1000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Script - say 2'),
(@ENTRY*100,9,10,0,0,0,100,0,4000,4000,0,0,11,30473,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Script - cast spell'),
(@ENTRY*100,9,11,0,0,0,100,0,0,0,0,0,3,0,17019,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Script - set model'),
(@ENTRY*100,9,12,0,0,0,100,0,3000,3000,0,0,60,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Script - Fly on'),
(@ENTRY*100,9,13,0,0,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,-3926.068,-12767.33,104.3799,0,'Stillpine Ancestor Coo - Script - move to'),
(@ENTRY*100,9,14,0,0,0,100,0,1000,1000,0,0,69,0,0,0,0,0,0,8,0,0,0,-3923.497,-12794.98,98.46323,0,'Stillpine Ancestor Coo - Script - move to'),
(@ENTRY*100,9,15,0,0,0,100,0,4000,4000,0,0,69,0,0,0,0,0,0,8,0,0,0,-3922.687,-12832.4,89.24097,0,'Stillpine Ancestor Coo - Script - move to'),
(@ENTRY*100,9,16,0,0,0,100,0,8000,8000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Script - despawn');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry`=17391;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(17391,0,0, '%s motions for you to follow him.',16,0,100,0,0,0, 'Stillpine Ancestor Coo'),
(17391,1,0, '[Furbolg] Ritk kin''chikx azul azure summit...',12,0,100,0,0,0, 'Stillpine Ancestor Coo'),
(17391,2,0, '[Furbolg] Coo xip fly... Jump ilos river. Find Tikti.',12,0,100,0,0,0, 'Stillpine Ancestor Coo');
-- add missing spells to db
DELETE FROM `spell_dbc` WHERE `Id` IN (30429,30442);
INSERT INTO `spell_dbc` (`Id`,`SchoolMask`,`Dispel`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`Stances`,`StancesNot`,`Targets`,`CastingTimeIndex`,`AuraInterruptFlags`,`ProcFlags`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`RangeIndex`,`StackAmount`,`EquippedItemClass`,`EquippedItemSubClassMask`,`EquippedItemInventoryTypeMask`,`Effect1`,`Effect2`,`Effect3`,`EffectDieSides1`,`EffectDieSides2`,`EffectDieSides3`,`EffectRealPointsPerLevel1`,`EffectRealPointsPerLevel2`,`EffectRealPointsPerLevel3`,`EffectBasePoints1`,`EffectBasePoints2`,`EffectBasePoints3`,`EffectMechanic1`,`EffectMechanic2`,`EffectMechanic3`,`EffectImplicitTargetA1`,`EffectImplicitTargetA2`,`EffectImplicitTargetA3`,`EffectImplicitTargetB1`,`EffectImplicitTargetB2`,`EffectImplicitTargetB3`,`EffectRadiusIndex1`,`EffectRadiusIndex2`,`EffectRadiusIndex3`,`EffectApplyAuraName1`,`EffectApplyAuraName2`,`EffectApplyAuraName3`,`EffectAmplitude1`,`EffectAmplitude2`,`EffectAmplitude3`,`EffectMultipleValue1`,`EffectMultipleValue2`,`EffectMultipleValue3`,`EffectMiscValue1`,`EffectMiscValue2`,`EffectMiscValue3`,`EffectTriggerSpell1`,`EffectTriggerSpell2`,`EffectTriggerSpell3`,`Comment`,`MaxTargetLevel`,`SpellFamilyName`,`SpellFamilyFlags1`,`SpellFamilyFlags2`,`MaxAffectedTargets`,`DmgClass`,`PreventionType`,`DmgMultiplier1`,`DmgMultiplier2`,`AreaGroupId`,`EffectMiscValueB1`) VALUES
(30429,0,0,0,256,268435456,0,0,0,0,0,0,0,1,0,0,101,0,0,0,0,40,12,0,-1,0,0,28,6,0,0,0,0,0,0,0,0,0,0,0,0,0,32,1,0,0,0,0,7,0,0,0,4,0,0,0,0,0,0,0,17391,0,0,0,0,0,'Stillpine Ancestor Coo',0,0,0,0,0,0,0,1,1,0,64),
(30442,0,0,0,2304,268435456,0,0,0,0,0,0,0,1,0,0,101,0,0,0,0,36,3,0,-1,0,0,6,0,0,1,0,0,0,0,0,0,0,0,0,0,0,21,0,0,0,0,0,0,0,0,23,0,0,1000,0,0,0,0,0,0,0,0,30429,0,0,'Stillpine Ancestor Coo TRIGGER',0,0,0,0,0,0,0,1,0,0,0);
-- Remove Stillpine Ancestor Akida EAI
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=17391;
-- Fix up quest 9544 "The Prophecy of Akida"
-- Totem of Vark SAI
SET @ENTRY  := 17364;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
UPDATE `creature_template_addon` SET `bytes2`=1,`auras`='18950' WHERE `entry`=17364;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,9544,0,0,0,85,30453,0,0,0,0,0,7,0,0,0,0,0,0,0,'Totem of Vark - Quest accepted - Cast Spell on player');
-- Stillpine Ancestor Vark SAI
SET @ENTRY  := 17410;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=17410);
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY*100) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,1,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Vark - Just Summoned - Run Script'),
-- Script
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,3,0,17109,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Vark - Script - set model'),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,11,25035,0,0,0,0,0,1,0,0,0,0,0,0,0.01745319,'Stillpine Ancestor Vark - Script - Cast Spell'),
(@ENTRY*100,9,2,0,0,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Vark - Script - Set run on'),
(@ENTRY*100,9,3,0,0,0,100,0,2000,2000,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Stillpine Ancestor Vark - Script - turn to player'),
(@ENTRY*100,9,4,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Vark - Script - say 0'),
(@ENTRY*100,9,5,0,0,0,100,0,8000,8000,0,0,11,30428,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Vark - Script - cast spell'),
(@ENTRY*100,9,6,0,0,0,100,0,3000,3000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Vark - Script - despawn');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry`=17410;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(17410,0,0, '[Furbolg] Bear witness to the savage acts of our adversaries, $N. They steal our young... our weak... Imprisoned here, they are left to the devices of the Bristlelimb. Set them free, Promised One!',12,0,100,0,0,0, 'Stillpine Ancestor Vark');
-- add missing spells to db
DELETE FROM `spell_dbc` WHERE `Id` IN (30453,30454);
INSERT INTO `spell_dbc` (`Id`,`SchoolMask`,`Dispel`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`Stances`,`StancesNot`,`Targets`,`CastingTimeIndex`,`AuraInterruptFlags`,`ProcFlags`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`RangeIndex`,`StackAmount`,`EquippedItemClass`,`EquippedItemSubClassMask`,`EquippedItemInventoryTypeMask`,`Effect1`,`Effect2`,`Effect3`,`EffectDieSides1`,`EffectDieSides2`,`EffectDieSides3`,`EffectRealPointsPerLevel1`,`EffectRealPointsPerLevel2`,`EffectRealPointsPerLevel3`,`EffectBasePoints1`,`EffectBasePoints2`,`EffectBasePoints3`,`EffectMechanic1`,`EffectMechanic2`,`EffectMechanic3`,`EffectImplicitTargetA1`,`EffectImplicitTargetA2`,`EffectImplicitTargetA3`,`EffectImplicitTargetB1`,`EffectImplicitTargetB2`,`EffectImplicitTargetB3`,`EffectRadiusIndex1`,`EffectRadiusIndex2`,`EffectRadiusIndex3`,`EffectApplyAuraName1`,`EffectApplyAuraName2`,`EffectApplyAuraName3`,`EffectAmplitude1`,`EffectAmplitude2`,`EffectAmplitude3`,`EffectMultipleValue1`,`EffectMultipleValue2`,`EffectMultipleValue3`,`EffectMiscValue1`,`EffectMiscValue2`,`EffectMiscValue3`,`EffectTriggerSpell1`,`EffectTriggerSpell2`,`EffectTriggerSpell3`,`Comment`,`MaxTargetLevel`,`SpellFamilyName`,`SpellFamilyFlags1`,`SpellFamilyFlags2`,`MaxAffectedTargets`,`DmgClass`,`PreventionType`,`DmgMultiplier1`,`DmgMultiplier2`,`AreaGroupId`,`EffectMiscValueB1`) VALUES
(30454,0,0,0,256,268435456,0,0,0,0,0,0,0,1,0,0,101,0,0,0,0,40,12,0,-1,0,0,28,6,0,0,0,0,0,0,0,0,0,0,0,0,0,32,1,0,0,0,0,7,0,0,0,4,0,0,0,0,0,0,0,17410,0,0,0,0,0,'Stillpine Ancestor Vark',0,0,0,0,0,0,0,1,1,0,64),
(30453,0,0,0,2304,268435456,0,0,0,0,0,0,0,1,0,0,101,0,0,0,0,36,3,0,-1,0,0,6,0,0,1,0,0,0,0,0,0,0,0,0,0,0,21,0,0,0,0,0,0,0,0,23,0,0,1000,0,0,0,0,0,0,0,0,30454,0,0,'Stillpine Ancestor Vark TRIGGER',0,0,0,0,0,0,0,1,0,0,0);
-- Fix up quest 9312 "The Emitter"
-- Technician Zhanaa SAI
SET @ENTRY  := 17071;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,20,0,100,0,9312,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Technician Zhanaa - Quest Completed - Run Script'),
-- Script
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,83,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Technician Zhanaa - Script - Remove npc flags'),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,9,0,0,0,0,0,0,20,181286,0,0,0,0,0,0,'Technician Zhanaa - Script - Activate go'),
(@ENTRY*100,9,2,0,0,0,100,0,0,0,0,0,12,16550,1,39000,0,0,0,8,0,0,0,-4187.708,-13738.72,75.65491,1.850049,'Technician Zhanaa - Script - Spawn '),
(@ENTRY*100,9,3,0,0,0,100,0,0,0,0,0,64,2,0,0,0,0,0,7,0,0,0,0,0,0,0,'Technician Zhanaa - Script - store invoker'), -- Send target
(@ENTRY*100,9,4,0,0,0,100,0,1000,1000,0,0,100,2,0,0,0,0,0,19,16550,10,0,0,0,0,0,'Technician Zhanaa - Script - send target'), -- Send target
(@ENTRY*100,9,5,0,0,0,100,0,1000,1000,0,0,45,0,1,0,0,0,0,19,16550,10,0,0,0,0,0,'Technician Zhanaa - Script - set data'),
(@ENTRY*100,9,6,0,0,0,100,0,1000,1000,0,0,66,0,0,0,0,0,0,19,16550,10,0,0,0,0,0,'Technician Zhanaa - Script - turn to Image of Technician Dyvuun'),
(@ENTRY*100,9,7,0,0,0,100,0,2000,2000,0,0,5,70,0,0,0,0,0,1,0,0,0,0,0,0,0,'Technician Zhanaa - Script - emote'),
(@ENTRY*100,9,8,0,0,0,100,0,39000,39000,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Technician Zhanaa - Script - turn to invoker'),
(@ENTRY*100,9,9,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Technician Zhanaa - Script - Say 0'),
(@ENTRY*100,9,10,0,0,0,100,0,6000,6000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.919862,'Technician Zhanaa - Script - turn to'),
(@ENTRY*100,9,11,0,0,0,100,0,1000,1000,0,0,81,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Technician Zhanaa - Script - add npc flags');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'This is great news!  Your efforts have indeed saved us, $N!',12,0,100,0,0,0, 'Technician Zhanaa');
-- Image of Technician Dyvuun SAI
SET @ENTRY  := 16550;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='',`InhabitType`=4 WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,0,1,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Image of Technician Dyvuun - On data set - Run Script'),
-- Script
(@ENTRY*100,9,0,0,0,0,100,0,2000,2000,0,0,66,0,0,0,0,0,0,19,17071,10,0,0,0,0,0,'Image of Technician Dyvuun - Script - turn to Technician Zhanaa'),
(@ENTRY*100,9,1,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Image of Technician Dyvuun - Script - Say 0'),
(@ENTRY*100,9,2,0,0,0,100,0,10000,10000,0,0,66,0,0,0,0,0,0,12,2,0,0,0,0,0,0,'Image of Technician Dyvuun - Script - turn to Stored target'), -- use target
(@ENTRY*100,9,3,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Image of Technician Dyvuun - Script - Say 1'),
(@ENTRY*100,9,4,0,0,0,100,0,5000,5000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Image of Technician Dyvuun - Script - Say 2');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'By the seven Ata''mal crystals!  Others have survived the crash!  Zhanaa, is that you?  It is so good to see you again!',12,0,100,0,0,0, 'Image of Technician Dyvuun'),
(@ENTRY,1,0, 'And who do we have here?  No doubt th... crzzzk ...ade this communication possible?  I give you greetings fro... psshzzzk... Azure Watch.',12,0,100,0,0,0, 'Image of Technician Dyvuun'),
(@ENTRY,2,0, 'Judging by your signal, we put you... ust southeast of the larger part of the island we crashed onto.  Cross the Crystalbrook River to ge... kshhhhk zzzt. Sorry, there''s a lot of stat...',12,0,100,0,0,0, 'Image of Technician Dyvuun');
-- Fix up quest 9541 "Totem of Yor"
-- Totem of Tikti SAI
SET @ENTRY  := 17362;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,9541,0,0,0,85,30443,0,0,0,0,0,7,0,0,0,0,0,0,0,'Totem of Tikti - Quest accepted - Cast Spell on player');
-- Stillpine Ancestor Tikti SAI
SET @ENTRY  := 17392;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY*100) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,1,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Tikti - Just Summoned - Run Script'),
-- Script
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,3,0,16999,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Tikti - Script - set model'),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Stillpine Ancestor Tikti - Script - turn to player'),
(@ENTRY*100,9,2,0,0,0,100,0,0,0,0,0,11,25035,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Tikti - Script - Cast Spell'),
(@ENTRY*100,9,3,0,0,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Tikti - Script - Set run on'),
(@ENTRY*100,9,4,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Tikti - Script - say 0'),
(@ENTRY*100,9,5,0,0,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,-3885.665,-13096.55,3.563835,0,'Stillpine Ancestor Tikti - Script - move to'),
(@ENTRY*100,9,6,0,0,0,100,0,16000,16000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Tikti - Script - say 1'),
(@ENTRY*100,9,7,0,0,0,100,0,6000,6000,0,0,11,30430,2,0,0,0,0,7,0,0,0,0,0,0,0,'Stillpine Ancestor Tikti - Script - Cast Spell on player'),
(@ENTRY*100,9,8,0,0,0,100,0,2000,2000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Tikti - Script - say 2'),
(@ENTRY*100,9,9,0,0,0,100,0,1000,1000,0,0,11,30431,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Tikti - Script - Cast Spell'),
(@ENTRY*100,9,10,0,0,0,100,0,0,0,0,0,3,0,17000,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Tikti - Script - set model'),
(@ENTRY*100,9,11,0,0,0,100,0,3000,3000,0,0,69,0,0,0,0,0,0,8,0,0,0,-3939.131,-13024.07,-5.92465,0,'Stillpine Ancestor Tikti - Script - move to'),
(@ENTRY*100,9,12,0,0,0,100,0,25000,25000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Tikti - Script - despawn');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry`=17392;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(17392,0,0, '%s asks you to follow him.',16,0,100,0,0,0, 'Stillpine Ancestor Tikti'),
(17392,1,0, '[Furbolg] Far you mixik tak come. Gaze upon the kitch''kal river. Follow. Ilog to Yor.',12,0,100,0,0,0, 'Stillpine Ancestor Tikti'),
(17392,2,0, '[Furbolg] Go... Search yitix''kil bottom river. South!',12,0,100,0,0,0, 'Stillpine Ancestor Tikti');
-- add missing spells to db
DELETE FROM `spell_dbc` WHERE `Id` IN (30432,30443);
INSERT INTO `spell_dbc` (`Id`,`SchoolMask`,`Dispel`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`Stances`,`StancesNot`,`Targets`,`CastingTimeIndex`,`AuraInterruptFlags`,`ProcFlags`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`RangeIndex`,`StackAmount`,`EquippedItemClass`,`EquippedItemSubClassMask`,`EquippedItemInventoryTypeMask`,`Effect1`,`Effect2`,`Effect3`,`EffectDieSides1`,`EffectDieSides2`,`EffectDieSides3`,`EffectRealPointsPerLevel1`,`EffectRealPointsPerLevel2`,`EffectRealPointsPerLevel3`,`EffectBasePoints1`,`EffectBasePoints2`,`EffectBasePoints3`,`EffectMechanic1`,`EffectMechanic2`,`EffectMechanic3`,`EffectImplicitTargetA1`,`EffectImplicitTargetA2`,`EffectImplicitTargetA3`,`EffectImplicitTargetB1`,`EffectImplicitTargetB2`,`EffectImplicitTargetB3`,`EffectRadiusIndex1`,`EffectRadiusIndex2`,`EffectRadiusIndex3`,`EffectApplyAuraName1`,`EffectApplyAuraName2`,`EffectApplyAuraName3`,`EffectAmplitude1`,`EffectAmplitude2`,`EffectAmplitude3`,`EffectMultipleValue1`,`EffectMultipleValue2`,`EffectMultipleValue3`,`EffectMiscValue1`,`EffectMiscValue2`,`EffectMiscValue3`,`EffectTriggerSpell1`,`EffectTriggerSpell2`,`EffectTriggerSpell3`,`Comment`,`MaxTargetLevel`,`SpellFamilyName`,`SpellFamilyFlags1`,`SpellFamilyFlags2`,`MaxAffectedTargets`,`DmgClass`,`PreventionType`,`DmgMultiplier1`,`DmgMultiplier2`,`AreaGroupId`,`EffectMiscValueB1`) VALUES
(30432,0,0,0,256,268435456,0,0,0,0,0,0,0,1,0,0,101,0,0,0,0,40,12,0,-1,0,0,28,6,0,0,0,0,0,0,0,0,0,0,0,0,0,32,1,0,0,0,0,7,0,0,0,4,0,0,0,0,0,0,0,17392,0,0,0,0,0,'Stillpine Ancestor Tikti',0,0,0,0,0,0,0,1,1,0,64),
(30443,0,0,0,2304,268435456,0,0,0,0,0,0,0,1,0,0,101,0,0,0,0,36,3,0,-1,0,0,6,0,0,1,0,0,0,0,0,0,0,0,0,0,0,21,0,0,0,0,0,0,0,0,23,0,0,1000,0,0,0,0,0,0,0,0,30432,0,0,'Stillpine Ancestor Tikti TRIGGER',0,0,0,0,0,0,0,1,0,0,0);
-- Remove Stillpine Ancestor Tikti EAI
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=17392;
-- Remove Hack from quest_template
UPDATE `quest_template` SET `SourceSpellId`=0 WHERE `Id`=9541;
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|16777216 WHERE `entry`=26048;
-- Fix Storm Totem flags
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216 WHERE `entry`=26048;
UPDATE `creature_template` SET `flags_extra`=`flags_extra`&~16777216 WHERE `entry`=26048;
-- Fix quest 11895 "Master the Storm"
-- Storm Totem SAI
SET @ENTRY  := 26048;
UPDATE `creature_template` SET `npcflag`=`npcflag`&~16777216,`AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,81,16777216,0,0,0,0,0,1,0,0,0,0,0,0,0,'Storm Totem - On spawn - set npcflag'),
(@ENTRY,0,1,2,73,0,100,0,0,0,0,0,12,26045,2,300000,0,0,0,8,0,0,0,3403.829,4133.074,18.13754,5.759586,'Storm Totem - On Spellclick - Spawn Storm Tempest'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Storm Totem - On spawn - remove npcflag');
-- Storm Tempest SAI
SET @ENTRY  := 26045;
UPDATE `creature_template` SET `unit_flags`=0,`AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=26045;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,63,0,100,0,0,0,0,0,11,8609,2,0,0,0,0,1,0,0,0,0,0,0,0,'Storm Totem - On spawn - cast aura'),
(@ENTRY,0,1,0,1,0,100,1,1000,1000,1000,1000,12,23837,2,120000,0,0,0,8,0,0,0,3403.871,4133.031,18.13754,5.67232,'Storm Totem - OOC - Spawn ELM General Purpose Bunny'),
(@ENTRY,0,2,0,60,0,100,1,1000,1000,7000,8000,11,40136,2,0,0,0,0,19,23837,5,0,0,0,0,0,'Storm Totem - Update Event - cast aura'),
(@ENTRY,0,3,4,4,0,100,1,0,0,0,0,1,0,0,0,0,0,0,2,0,0,0,0,0,0,0,'Storm Totem - On Aggro - Say 0'),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Storm Totem - On Aggro - Prevent combat movement'),
(@ENTRY,0,5,0,0,0,100,0,0,30,6000,7500,11,15659,0,0,0,0,0,2,0,0,0,0,0,0,0,'Storm Totem - Combat - Cast Chain Lightning'),
(@ENTRY,0,6,0,0,0,100,0,8000,11000,9000,14000,11,31272,0,0,0,0,0,2,0,0,0,0,0,0,0,'Storm Totem - Combat - Cast Wind Shock'),
(@ENTRY,0,7,8,6,0,100,0,0,0,0,0,51,0,0,0,0,0,0,9,23837,0,10,0,0,0,0,'Storm Totem - On death - despawn trigger'),
(@ENTRY,0,8,9,61,0,100,0,0,0,0,0,81,16777216,0,0,0,0,0,19,26048,10,0,0,0,0,0,'Storm Totem - On death - set npc flags on totem'),
(@ENTRY,0,9,0,61,0,100,0,0,0,0,0,85,46424,2,0,0,0,0,16,0,0,0,0,0,0,0,'Storm Totem - Combat - Cast Power of the Storm');
-- Sage Earth and Sky SAI
SET @ENTRY  := 25982;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,20,0,100,0,11895,0,0,0,28,46424,0,0,0,0,0,7,0,0,0,0,0,0,0,'Sage Earth and Sky - On Quest reward - remove aura from player');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry`=26045;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(26045,0,0, 'You will not master me, puny $r!',12,0,100,0,0,0, 'Storm Tempest');
-- Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=26048;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(22,2,26048,0,0,9,0,11895,0,0,0,0, '', 'Storm Totem - Allow sai action only if quest has been taken'),
(22,2,26048,0,0,28,0,11895,0,0,1,0, '', 'Storm Totem - Allow sai action only if quest has not been completed');
-- Fix Quest 13231 The Broken Front and 13232 Finish Me!
-- Dying Soldier SAI
SET @ENTRY  := 31304;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,10040,0,0,0,11,58955,0,0,0,0,0,7,0,0,0,0,0,0,0,'Dying Soldier - On Gossip Option Select - Cast Alliance Quest Aura on player'),
(@ENTRY,0,1,2,62,0,100,0,10040,3,0,0,11,58955,0,0,0,0,0,7,0,0,0,0,0,0,0,'Dying Soldier - On Gossip Option Select - Cast Alliance Quest Aura on player'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Dying Soldier - On Gossip Option Select - Close Gossip'),
(@ENTRY,0,3,4,62,0,100,0,10040,1,0,0,85,59226,0,0,0,0,0,1,0,0,0,0,0,0,0,'Dying Soldier - On Gossip Option Select - Player cast Finish It on npc'),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Dying Soldier - On Gossip Option Select - Close Gossip'),
(@ENTRY,0,6,7,8,0,100,0,59226,0,0,0,11,3240,2,0,0,0,0,1,0,0,0,0,0,0,0,'Dying Soldier - On Spellhit - Cast Bloody Explosion on self'),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,33,31312,0,0,0,0,0,7,0,0,0,0,0,0,0,'Dying Soldier - On Gossip Option Select - Give Kill credit to player');
-- Quest conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (19,20) AND `SourceEntry`=13232;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(19,0,13232,0,28,13231,0,0,0,0, '', 'Quest 13232 Finish Me! Requires Quest 13231 The Broken Front to be complete'),
(20,0,13232,0,28,13231,0,0,0,0, '', 'Quest 13232 Finish Me! Requires Quest 13231 The Broken Front to be complete');
-- Fix Quest 13231 The Broken Front and 13232 Finish Me!
-- Dying Soldier SAI
SET @ENTRY  := 31304;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,10040,0,0,0,11,58955,0,0,0,0,0,7,0,0,0,0,0,0,0,'Dying Soldier - On Gossip Option Select - Cast Alliance Quest Aura on player'),
(@ENTRY,0,1,2,62,0,100,0,10040,3,0,0,81,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Dying Soldier - On Gossip Option Select - Set npcflag'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Dying Soldier - On Gossip Option Select - Close Gossip'),
(@ENTRY,0,3,4,62,0,100,0,10040,1,0,0,85,59226,0,0,0,0,0,1,0,0,0,0,0,0,0,'Dying Soldier - On Gossip Option Select - Player cast Finish It on npc'),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Dying Soldier - On Gossip Option Select - Close Gossip'),
(@ENTRY,0,6,7,8,0,100,0,59226,0,0,0,11,3240,2,0,0,0,0,1,0,0,0,0,0,0,0,'Dying Soldier - On Spellhit - Cast Bloody Explosion on self'),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,33,31312,0,0,0,0,0,7,0,0,0,0,0,0,0,'Dying Soldier - On Gossip Option Select - Give Kill credit to player'),
(@ENTRY,0,8,9,25,0,100,0,0,0,0,0,81,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Dying Soldier - On Spawn - Set npcflag'),
(@ENTRY,0,9,0,61,0,100,0,0,0,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Dying Soldier - On Spawn - Set react state'),
(@ENTRY,0,10,0,19,0,100,0,13232,0,0,0,81,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Dying Soldier - On Quest accept - Set npcflag');
SET @NPC_DESERTER := 23602;
SET @NPC_INSPECTOR := 23567;
SET @SPELL_DISCOVERED_SUB := 42219;

-- Insert creature_text from sniff
DELETE FROM `creature_text` WHERE `entry`=@NPC_DESERTER;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@NPC_DESERTER,0,0,'It''s good to see you defending Theramore with pride, friend.',12,7,100,25,0,0,'Deserter Agitator'),
(@NPC_DESERTER,0,1,'When you''re off duty, let''s go to the inn. I''ll buy a round and we can reminisce about the good old days.',12,7,100,1,0,0,'Deserter Agitator'),
(@NPC_DESERTER,0,2,'Wouldn''t you like to bring those days back? I have some friends who know just the way to do that...''',12,7,100,1,0,0,'Deserter Agitator'),
(@NPC_DESERTER,1,0,'These people will know Admiral Proudmoore for the true hero he was!',12,7,100,5,0,0,'Deserter Agitator'),
(@NPC_DESERTER,1,1,'You can''t stop us from exposing the truth about Jaina''s cowardice!',12,7,100,5,0,0,'Deserter Agitator'),
(@NPC_DESERTER,1,2,'If you think you can stop us, you''re mistaken, ''friend.''',12,7,100,5,0,0,'Deserter Agitator'),
(@NPC_DESERTER,1,3,'It''s people like you who weaken the Alliance and invite the Horde to take away all we''ve fought for!',12,7,100,5,0,0,'Deserter Agitator');
-- Conditions
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,@SPELL_DISCOVERED_SUB,0,0,31,0,3,23602,0,0,0,'','Spell Discovered (Sub) only targets Deserter Agitator');

-- SmartAI
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC_INSPECTOR,@NPC_DESERTER) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC_DESERTER*100,@NPC_DESERTER*100+1) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC_INSPECTOR,0,0,1,62,0,100,0,8761,0,0,0,11,42169,0,0,0,0,0,7,0,0,0,0,0,0,0,'Inspector Tarem - On Gossip option select - Cast Reflective Dust'),
(@NPC_INSPECTOR,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Inspector Tarem - On Gossip option select - Close Gossip'),
(@NPC_DESERTER,0,0,0,25,0,100,0,0,0,0,0,2,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deserter Agitator - On reset - Set faction default'),
(@NPC_DESERTER,0,1,0,1,0,100,0,0,1,30000,40000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deserter Agitator - On update OOC - Say line'),
(@NPC_DESERTER,0,2,3,62,0,100,0,8762,0,0,0,11,42203,0,0,0,0,0,7,0,0,0,0,0,0,0,'Deserter Agitator - On Gossip option select - Cast Discovered'),
(@NPC_DESERTER,0,3,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Deserter Agitator - On Gossip option select - Close Gossip'),
(@NPC_DESERTER,0,4,5,8,0,100,0,@SPELL_DISCOVERED_SUB,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Deserter Agitator - On spellhit Discovered (Sub) - Turn to invoker'),
(@NPC_DESERTER,0,5,6,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,7,0,0,0,0,0,0,0,'Deserter Agitator - On spellhit Discovered (Sub) - Say line'),
(@NPC_DESERTER,0,6,0,61,0,100,0,0,0,0,0,87,@NPC_DESERTER*100,@NPC_DESERTER*100+1,0,0,0,0,1,0,0,0,0,0,0,0,'Deserter Agitator - On spellhit Discovered (Sub) - Run script'),
(@NPC_DESERTER*100,9,0,0,0,0,100,0,2000,2000,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deserter Agitator''s script 0 - Set faction monster'),
(@NPC_DESERTER*100,9,1,0,0,0,100,0,0,0,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Deserter Agitator''s script 0 - Attack'),
(@NPC_DESERTER*100+1,9,0,0,0,0,100,0,0,0,0,0,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deserter Agitator''s script 1 - Remove npcflag gossip'),
(@NPC_DESERTER*100+1,9,1,0,0,0,100,0,0,0,0,0,33,@NPC_DESERTER,0,0,0,0,0,7,0,0,0,0,0,0,0,'Deserter Agitator''s script 1 - Credit'),
(@NPC_DESERTER*100+1,9,2,0,0,0,100,0,30000,30000,0,0,82,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deserter Agitator''s script 1 - Add npcflag gossip');
-- Add SAI
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-42875,-42876,-109574,-109575) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-42875,0,0,0,1,0,100,1,1000,1000,30000,30000,11,46906,2,0,0,0,0,10,115101,27853,0,0,0,0,0,'Surge Needle Sorcerer - OOC - Cast Surge Needle Beam'),
(-42875,0,1,0,0,0,100,0,3000,4000,3000,5000,11,51797,0,0,0,0,0,2,0,0,0,0,0,0,0,'Surge Needle Sorcerer - Combat - Cast Arcane Blast on victim'),
(-42876,0,0,0,1,0,100,1,1000,1000,30000,30000,11,46906,2,0,0,0,0,10,115101,27853,0,0,0,0,0,'Surge Needle Sorcerer - OOC - Cast Surge Needle Beam'),
(-42876,0,1,0,0,0,100,0,3000,4000,3000,5000,11,51797,0,0,0,0,0,2,0,0,0,0,0,0,0,'Surge Needle Sorcerer - Combat - Cast Arcane Blast on victim'),
(-109574,0,0,0,1,0,100,1,1000,1000,30000,30000,11,46906,2,0,0,0,0,10,115101,27853,0,0,0,0,0,'Surge Needle Sorcerer - OOC - Cast Surge Needle Beam'),
(-109574,0,1,0,0,0,100,0,3000,4000,3000,5000,11,51797,0,0,0,0,0,2,0,0,0,0,0,0,0,'Surge Needle Sorcerer - Combat - Cast Arcane Blast on victim'),
(-109575,0,0,0,1,0,100,1,1000,1000,30000,30000,11,46906,2,0,0,0,0,10,115101,27853,0,0,0,0,0,'Surge Needle Sorcerer - OOC - Cast Surge Needle Beam'),
(-109575,0,1,0,0,0,100,0,3000,4000,3000,5000,11,51797,0,0,0,0,0,2,0,0,0,0,0,0,0,'Surge Needle Sorcerer - Combat - Cast Arcane Blast on victim');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=23567;
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=23602;
-- Remove some old script text
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000649 AND -1000641;
-- Razormaw SAI fixes quest 9689
SET @ENTRY  := 17592;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_template_addon` WHERE `entry`=@ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`bytes1`,`bytes2`) VALUES (@ENTRY,50331648,1);
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,6000,6000,7000,9000,11,31279,0,0,0,0,0,2,0,0,0,0,0,0,0,'Razormaw - Combat - Cast Swipe'),
(@ENTRY,0,1,0,0,0,100,0,26000,30000,26000,30000,11,8873,0,0,0,0,0,1,0,0,0,0,0,0,0,'Razormaw - Combat - Cast Flame Breath'),
(@ENTRY,0,2,0,0,0,50,0,12000,12000,12000,12000,11,14100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Razormaw - Combat - Cast Terrifying Roar'),
(@ENTRY,0,3,0,11,0,100,0,0,0,0,0,53,1,@ENTRY,0,0,0,0,1,0,0,0,0,0,0,0,'Razormaw - On spawn - Load Path'),
(@ENTRY,0,4,0,40,0,100,0,10,@ENTRY,0,0,19,256,0,0,0,0,0,1,0,0,0,0,0,0,0,'Razormaw - On Reach waypoint - Remove unitflag');
-- Waypoints for Razormaw
DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,-1045.958,-12583.85,111.7434, 'Razormaw'),
(@ENTRY,2,-1045.115,-12583.31,111.7434, 'Razormaw'),
(@ENTRY,3,-1213.006,-12663.19,200.4278, 'Razormaw'),
(@ENTRY,4,-1204.485,-12626.66,200.4278, 'Razormaw'),
(@ENTRY,5,-1204.906,-12599.65,188.7889, 'Razormaw'),
(@ENTRY,6,-1206.845,-12579.84,173.2892, 'Razormaw'),
(@ENTRY,7,-1203.169,-12555.49,160.956, 'Razormaw'),
(@ENTRY,8,-1201.284,-12529.25,134.3167, 'Razormaw'),
(@ENTRY,9,-1204.178,-12483.84,115.039, 'Razormaw'),
(@ENTRY,10,-1204.349,-12465.61,104.7762, 'Razormaw'),
(@ENTRY,11,-1205.651,-12460.52,97.53908, 'Razormaw');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
-- Alliance Bonfires
(13,1,45437,0,0,31,0,5,187564,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,1,31,0,5,187914,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,2,31,0,5,187916,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,3,31,0,5,187917,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,4,31,0,5,187919,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,5,31,0,5,187920,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,6,31,0,5,187921,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,7,31,0,5,187922,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,8,31,0,5,187923,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,9,31,0,5,187924,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,10,31,0,5,187925,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,11,31,0,5,187926,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,12,31,0,5,187927,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,13,31,0,5,187928,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,14,31,0,5,187929,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,15,31,0,5,187930,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,16,31,0,5,187931,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,17,31,0,5,187932,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,18,31,0,5,187933,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,19,31,0,5,187934,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,20,31,0,5,187935,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,21,31,0,5,187936,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,22,31,0,5,187937,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,23,31,0,5,187938,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,24,31,0,5,187939,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,25,31,0,5,187940,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,26,31,0,5,187941,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,27,31,0,5,187942,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,28,31,0,5,187943,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,29,31,0,5,187944,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,30,31,0,5,187945,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,31,31,0,5,187946,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,32,31,0,5,194032,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,33,31,0,5,194035,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,34,31,0,5,194036,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,35,31,0,5,194038,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,36,31,0,5,194040,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,37,31,0,5,194044,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,38,31,0,5,194045,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,39,31,0,5,194049,0,0,0,'','Spell can hit go target'),
-- Horde Bonfires
(13,1,45437,0,40,31,0,5,187559,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,41,31,0,5,187947,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,42,31,0,5,187948,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,43,31,0,5,187949,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,44,31,0,5,187950,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,45,31,0,5,187951,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,46,31,0,5,187952,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,47,31,0,5,187953,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,48,31,0,5,187954,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,49,31,0,5,187955,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,50,31,0,5,187956,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,51,31,0,5,187957,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,52,31,0,5,187958,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,53,31,0,5,187959,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,54,31,0,5,187960,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,55,31,0,5,187961,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,56,31,0,5,187962,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,57,31,0,5,187963,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,58,31,0,5,187964,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,59,31,0,5,187965,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,60,31,0,5,187966,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,61,31,0,5,187967,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,62,31,0,5,187968,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,63,31,0,5,187969,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,64,31,0,5,187970,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,65,31,0,5,187971,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,66,31,0,5,187972,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,67,31,0,5,187973,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,68,31,0,5,187974,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,69,31,0,5,187975,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,70,31,0,5,194033,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,71,31,0,5,194034,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,72,31,0,5,194037,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,73,31,0,5,194039,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,74,31,0,5,194042,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,75,31,0,5,194043,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,76,31,0,5,194046,0,0,0,'','Spell can hit go target'),
(13,1,45437,0,77,31,0,5,194048,0,0,0,'','Spell can hit go target');

-- Add Triggered spell
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=45458;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(45458,45437,1,'Holiday - Midsummer, Stamp Out Bonfire, Quest Complete triggers Stamp Out Bonfire');
-- Add conditons for Horde Bonfires
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceEntry`=0 AND `SourceGroup` IN (9370,9353,9355,9379,9380,9381,9382,9383,9356,9357,9358,9359,9360,9361,9362,9363,9364,9365,9366,9367,9368,9369,9371,9372,9373,9374,9375,9376,9377,9378,10228,10231,10232,10235,10236,10239,10241,10242);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,9370,0,0,0,8,0,11581,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9353,0,0,0,8,0,11764,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9355,0,0,0,8,0,11765,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9379,0,0,0,8,0,11766,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9380,0,0,0,8,0,11767,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9381,0,0,0,8,0,11768,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9382,0,0,0,8,0,11769,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9383,0,0,0,8,0,11770,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9356,0,0,0,8,0,11771,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9357,0,0,0,8,0,11772,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9358,0,0,0,8,0,11773,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9359,0,0,0,8,0,11774,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9360,0,0,0,8,0,11775,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9361,0,0,0,8,0,11776,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9362,0,0,0,8,0,11777,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9363,0,0,0,8,0,11778,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9364,0,0,0,8,0,11779,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9365,0,0,0,8,0,11780,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9366,0,0,0,8,0,11781,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9367,0,0,0,8,0,11782,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9368,0,0,0,8,0,11783,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9369,0,0,0,8,0,11784,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9371,0,0,0,8,0,11785,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9372,0,0,0,8,0,11786,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9373,0,0,0,8,0,11787,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9374,0,0,0,8,0,11799,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9375,0,0,0,8,0,11800,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9376,0,0,0,8,0,11801,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9377,0,0,0,8,0,11802,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9378,0,0,0,8,0,11803,0,0,0,0,'','Show gossip option only if player has quest'),
(15,10228,0,0,0,8,0,13441,0,0,0,0,'','Show gossip option only if player has quest'),
(15,10231,0,0,0,8,0,13450,0,0,0,0,'','Show gossip option only if player has quest'),
(15,10232,0,0,0,8,0,13451,0,0,0,0,'','Show gossip option only if player has quest'),
(15,10235,0,0,0,8,0,13453,0,0,0,0,'','Show gossip option only if player has quest'),
(15,10236,0,0,0,8,0,13454,0,0,0,0,'','Show gossip option only if player has quest'),
(15,10239,0,0,0,8,0,13455,0,0,0,0,'','Show gossip option only if player has quest'),
(15,10241,0,0,0,8,0,13457,0,0,0,0,'','Show gossip option only if player has quest'),
(15,10242,0,0,0,8,0,13458,0,0,0,0,'','Show gossip option only if player has quest');
-- Add conditons for Alliance Bonfires
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceEntry`=0 AND `SourceGroup` IN (9406,9352,9354,9384,9385,9386,9387,9388,9389,9390,9391,9392,9393,9394,9395,9396,9397,9398,9399,9400,9401,9402,9403,9404,9405,9407,9408,9409,9410,9411,9412,9413,10227,10230,10233,10234,10237,10238,10240,10243);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,9406,0,0,0,8,0,11580,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9352,0,0,0,8,0,11732,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9354,0,0,0,8,0,11734,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9384,0,0,0,8,0,11735,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9385,0,0,0,8,0,11736,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9386,0,0,0,8,0,11737,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9387,0,0,0,8,0,11738,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9388,0,0,0,8,0,11739,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9389,0,0,0,8,0,11740,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9390,0,0,0,8,0,11741,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9391,0,0,0,8,0,11742,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9392,0,0,0,8,0,11743,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9393,0,0,0,8,0,11744,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9394,0,0,0,8,0,11745,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9395,0,0,0,8,0,11746,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9396,0,0,0,8,0,11747,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9397,0,0,0,8,0,11748,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9398,0,0,0,8,0,11749,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9399,0,0,0,8,0,11750,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9400,0,0,0,8,0,11751,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9401,0,0,0,8,0,11752,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9402,0,0,0,8,0,11753,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9403,0,0,0,8,0,11754,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9404,0,0,0,8,0,11755,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9405,0,0,0,8,0,11756,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9407,0,0,0,8,0,11757,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9408,0,0,0,8,0,11758,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9409,0,0,0,8,0,11759,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9410,0,0,0,8,0,11760,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9411,0,0,0,8,0,11761,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9412,0,0,0,8,0,11762,0,0,0,0,'','Show gossip option only if player has quest'),
(15,9413,0,0,0,8,0,11763,0,0,0,0,'','Show gossip option only if player has quest'),
(15,10227,0,0,0,8,0,13440,0,0,0,0,'','Show gossip option only if player has quest'),
(15,10230,0,0,0,8,0,13442,0,0,0,0,'','Show gossip option only if player has quest'),
(15,10233,0,0,0,8,0,13443,0,0,0,0,'','Show gossip option only if player has quest'),
(15,10234,0,0,0,8,0,13444,0,0,0,0,'','Show gossip option only if player has quest'),
(15,10237,0,0,0,8,0,13445,0,0,0,0,'','Show gossip option only if player has quest'),
(15,10238,0,0,0,8,0,13446,0,0,0,0,'','Show gossip option only if player has quest'),
(15,10240,0,0,0,8,0,13447,0,0,0,0,'','Show gossip option only if player has quest'),
(15,10243,0,0,0,8,0,13449,0,0,0,0,'','Show gossip option only if player has quest');
-- Ample Inspiration (12828)

SET @GOB_UDED           := 191553; -- U.D.E.D. Dispenser
SET @GOSSIP_MENU        := 10211;
SET @NPC_MAMMOTH        := 29402; -- Ironwool Mammoth
SET @NPC_MEAT_BUNNY     := 29524; -- Mammoth Meat Bunny
SET @SPELL_THROW_UDED   := 54577; -- Throw U.D.E.D.
SET @SPELL_GIVE_UDED    := 54576; -- Forceitem U.D.E.D.
SET @SPELL_SPAWNER      := 54581; -- Mammoth Explosion Spell Spawner
SET @SPELL_MAIN_MEAT    := 57444; -- Summon Main Mammoth Meat
SET @SPELL_MEAT         := 54625; -- Summon Mammoth Meat
SET @SPELL_MEAT_BUNNY1  := 54627; -- Quest - Mammoth Explosion Summon Object
SET @SPELL_MEAT_BUNNY2  := 54628; -- Quest - Mammoth Explosion Summon Object
SET @SPELL_MEAT_BUNNY3  := 54623; -- Quest - Mammoth Explosion Summon Object

DELETE FROM `spell_script_names` WHERE `spell_id`=@SPELL_THROW_UDED;

DELETE FROM `gossip_menu_option` WHERE `menu_id`=@GOSSIP_MENU;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`) VALUES
(@GOSSIP_MENU,0,0,'<Retrieve a bomb from the dispenser.>',1,0,0,0,0,0,NULL);

UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=@GOB_UDED;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=@GOB_UDED;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@GOB_UDED,1,0,1,62,0,100,0,@GOSSIP_MENU,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'On gossip  - Close gossip'),
(@GOB_UDED,1,1,0,61,0,100,0,0,0,0,0,85,@SPELL_GIVE_UDED,0,0,0,0,0,7,0,0,0,0,0,0,0,'On link  - Cast Forceitem U.D.E.D.');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@NPC_MAMMOTH;
UPDATE `creature_template` SET `flags_extra`=128,`AIName`='SmartAI' WHERE `entry`=@NPC_MEAT_BUNNY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@NPC_MAMMOTH;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (@NPC_MAMMOTH,@NPC_MEAT_BUNNY);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- Ironwool Mammoth
(@NPC_MAMMOTH,0,0,0,0,0,100,0,1000,3000,7000,10000,11,56356,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Ironwool Coat'),
(@NPC_MAMMOTH,0,1,2,8,0,100,0,@SPELL_THROW_UDED,0,0,0,11,@SPELL_SPAWNER,0,0,0,0,0,1,0,0,0,0,0,0,0,'On spellhit - Cast Mammoth Explosion Spell Spawner'),
(@NPC_MAMMOTH,0,2,0,61,0,100,0,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Despawn'),
-- Mammoth Meat Bunny
(@NPC_MEAT_BUNNY,0,0,0,54,0,100,1,0,0,0,0,11,@SPELL_MEAT,0,0,0,0,0,1,0,0,0,0,0,0,0,'On spawn - Cast');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=@SPELL_SPAWNER;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(@SPELL_SPAWNER,@SPELL_MAIN_MEAT,0,'Mammoth Explosion Spell Spawner link to Summon Main Mammoth Meat'),
(@SPELL_SPAWNER,@SPELL_MEAT_BUNNY1,0,'Mammoth Explosion Spell Spawner link to Quest - Mammoth Explosion Summon Object'),
(@SPELL_SPAWNER,@SPELL_MEAT_BUNNY2,0,'Mammoth Explosion Spell Spawner link to Quest - Mammoth Explosion Summon Object'),
(@SPELL_SPAWNER,@SPELL_MEAT_BUNNY3,0,'Mammoth Explosion Spell Spawner link to Quest - Mammoth Explosion Summon Object');
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=17 AND `SourceEntry`=@SPELL_THROW_UDED) OR (`SourceTypeOrReferenceId`=15 AND `SourceGroup`=@GOSSIP_MENU);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,@SPELL_THROW_UDED,0,0,31,1,3,@NPC_MAMMOTH,0,0,0,'','Require Ironwool Mammoth as target'),
(15,@GOSSIP_MENU,0,0,0,9,0,12828,0,0,0,0,'','Show gossip if quest taken');
DELETE FROM `creature_template_addon` WHERE `entry`=30298;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`auras`) VALUES
(30298,0,0x0,0x1,''); -- Invisible Stalker (Float, Uninteractible, LargeAOI)

# FIX_Spawn_Sniff_ICC
# UPDATE `gameobject` SET `position_z` = `position_z` - 200 WHERE `guid` IN (8790, 8322, 8344, 8377, 8482, 9007, 8310, 8364, 8304, 8967);
# UPDATE `creature` SET `position_z` = `position_z` - 200 WHERE `guid` IN (115781, 115782);
UPDATE `creature` SET `position_z` = 864.959 WHERE `id` = 36597;
UPDATE `creature` SET `position_z` = 840.94 WHERE `id` = 38995;
REPLACE INTO gameobject VALUES
(8344, 202078, 631, 15, 1, 503.62, -2124.65, 836.607, 3.14159, 0, 0, 0, 1, 604800, 255, 1),
(8364, 202141, 631, 15, 1, 473.748, -2096.48, 840.857, 3.14159, 0, 0, 1, 0, 604800, 255, 1),
(8304, 202142, 631, 15, 1, 473.748, -2152.83, 840.857, -1.5708, 0, 0, 1, 0, 604800, 255, 1),
(8310, 202143, 631, 15, 1, 533.56, -2152.83, 840.857, 0, 0, 0, 1, 0, 604800, 255, 1),
(9007, 202144, 631, 15, 1, 533.56, -2096.48, 840.857, 1.5708, 0, 0, 1, 0, 604800, 255, 1),
(8322, 202161, 631, 15, 1, 503.62, -2124.66, 836.607, 3.14159, 0, 0, 0, 1, 604800, 255, 1),
(8790, 202190, 631, 15, 1, 503.62, -2124.65, 840.522, 3.14159, 0, 0, 1, 0, 604800, 255, 1),
(2625, 202436, 631, 15, 1, 426.561, -2123.86, 864.889, -3.12412, 0, 0, 0, 1, -604800, 255, 1),
(8967, 202437, 631, 15, 1, 425.089, -2123.31, 858.675, 0, 0, 0, 0, 1, 604800, 255, 1),
(8482, 202189, 631, 15, 1, 503.62, -2124.66, 836.607, 3.14159, 0, 0, 0, 1, 6000, 255, 1),
(8377, 202188, 631, 15, 1, 503.62, -2124.66, 836.607, 3.14159, 0, 0, 0, 1, 6000, 255, 0),
(12000, 202438, 631, 15, 1, 425.089, -2123.31, 858.675, 0, 0, 0, 0, 1, -604800, 255, 1);

# NeatElves
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(126117, 10445, 0, 1, 1, 0, 0, -9541.73, 87.4378, 59.3029, 6.23082, 180, 0, 0, 955, 0, 0),
(4950, 14822, 0, 1, 1, 0, 0, -9536.62, 73.2432, 58.9648, 1.90241, 180, 0, 0, 2091, 2117, 0),
(4972, 14827, 0, 1, 1, 0, 0, -9558.14, 78.5432, 59.0065, 0.488762, 180, 0, 0, 3052, 0, 0),
(4947, 14829, 0, 1, 1, 0, 0, -9548.9, 141.163, 58.9648, 4.83456, 180, 0, 0, 2614, 0, 0),
(4899, 14832, 0, 1, 1, 0, 0, -9558.18, 130.175, 58.9648, 5.70723, 180, 0, 0, 2614, 0, 0),
(4871, 14841, 0, 1, 1, 0, 0, -9576.4, 87.7237, 58.9648, 6.23082, 180, 0, 0, 2614, 0, 0),
(4893, 14844, 0, 1, 1, 0, 0, -9561.12, 69.9691, 59.2053, 1.01229, 180, 0, 0, 1220, 0, 0),
(4891, 14845, 0, 1, 1, 0, 0, -9564.5, 72.2799, 59.1869, 0.663225, 180, 0, 0, 1220, 0, 0),
(4890, 14846, 0, 1, 1, 0, 0, -9557.49, 105.464, 58.9648, 4.64258, 180, 0, 0, 1220, 0, 0),
(4895, 14847, 0, 1, 1, 0, 0, -9560.98, 103.642, 58.9648, 5.5676, 180, 0, 0, 1220, 0, 0),
(4999, 14849, 0, 1, 1, 0, 0, -9544.69, 73.6216, 59.0065, 0.573501, 180, 0, 0, 699, 0, 0),
(4998, 14849, 0, 1, 1, 0, 0, -9571.82, 90.374, 59.0065, 0.978225, 180, 0, 0, 699, 0, 0),
(126119, 14860, 0, 1, 1, 0, 0, -9515.7, 85.8905, 59.3007, 2.40195, 180, 0, 0, 86, 0, 2),
(4967, 14864, 0, 1, 1, 0, 0, -9542.36, 114.763, 59.1315, 3.3116, 180, 5, 0, 102, 0, 1),
(4949, 14864, 0, 1, 1, 0, 0, -9545.21, 130.871, 59.0065, 4.36626, 180, 5, 0, 102, 0, 1),
(36222, 14865, 0, 1, 1, 0, 0, -9555.53, 115.845, 58.9683, 5.74213, 180, 0, 0, 594, 0, 0),
(126118, 14866, 0, 1, 1, 0, 0, -9505.33, 90.1907, 59.3085, 4.70132, 180, 0, 0, 102, 0, 2),
(49037, 14868, 0, 1, 1, 0, 0, -9538.58, 133.231, 58.9648, 4.03171, 180, 0, 0, 156, 0, 0),
(4931, 14869, 0, 1, 1, 0, 0, -9547.29, 137.246, 58.9143, 5.09003, 180, 5, 0, 42, 0, 1),
(4930, 14869, 0, 1, 1, 0, 0, -9549.82, 112.997, 59.0065, 3.32908, 180, 5, 0, 42, 0, 1),
(4922, 14869, 0, 1, 1, 0, 0, -9554.05, 125.139, 59.0065, 1.47803, 180, 5, 0, 42, 0, 1),
(4912, 14869, 0, 1, 1, 0, 0, -9540.22, 123.264, 59.0065, 5.01385, 180, 5, 0, 42, 0, 1),
(125584, 14871, 0, 1, 1, 0, 0, -9566.38, 31.1655, 61.4444, 1.58992, 180, 0, 0, 247, 0, 0),
(35371, 15303, 0, 1, 1, 0, 0, -9570.41, -10.6037, 63.4679, 1.47533, 180, 0, 0, 1220, 0, 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(16084, 180006, 0, 1, 1, -9559.52, 53.4495, 60.136, 1.36136, 0, 0, 0.629322, 0.777145, 180, 100, 1),
(10611, 180006, 0, 1, 1, -9555.57, 54.1968, 60.1749, 2.11185, 0, 0, 0.870356, 0.492423, 180, 100, 1),
(11390, 180029, 0, 1, 1, -9515.35, 86.6149, 59.0797, 2.96706, 0, 0, 0.996195, 0.0871556, 180, 100, 1),
(8194, 180036, 0, 1, 1, -9603.53, 52.1962, 63.1735, 2.55118, 0, 0, 0.956742, 0.290937, 25, 0, 1),
(5324, 180036, 0, 1, 1, -9600.74, 21.1644, 63.1988, 5.11239, 0, 0, 0.552531, -0.833492, 25, 0, 1),
(8174, 180036, 0, 1, 1, -9551.95, 41.1687, 61.8756, -0.418879, 0, 0, -0.207912, 0.978148, 180, 100, 1),
(14807, 180036, 0, 1, 1, -9558.04, 15.1922, 63.009, 0.715585, 0, 0, 0.350207, 0.936672, 180, 100, 1),
(5076, 180030, 0, 1, 1, -9534.2, 68.6959, 59.3954, -1.69297, 0, 0, -0.748956, 0.66262, 180, 100, 1),
(13520, 180031, 0, 1, 1, -9563.75, 66.4712, 60.5913, -1.93731, 0, 0, -0.824125, 0.566409, 180, 100, 1),
(3076, 180032, 0, 1, 1, -9560.39, 106.003, 60.5481, 3.00197, 0, 0, 0.997564, 0.0697546, 180, 100, 1),
(14238, 180034, 0, 1, 1, -9530, 99.0359, 59.3857, -0.994838, 0, 0, -0.477159, 0.878817, 180, 100, 1),
(16483, 180037, 0, 1, 1, -9542, 136.385, 59.2148, -1.13446, 0, 0, -0.537298, 0.843393, 180, 100, 1),
(16488, 180037, 0, 1, 1, -9553.33, 110.428, 59.1801, -1.25664, 0, 0, -0.587786, 0.809016, 180, 100, 1),
(16489, 180038, 0, 1, 1, -9560.48, 123.28, 59.2266, 0.20944, 0, 0, 0.104529, 0.994522, 180, 100, 1),
(16498, 180038, 0, 1, 1, -9532.87, 120.536, 59.2362, -2.96706, 0, 0, -0.996195, 0.0871556, 180, 100, 1),
(14742, 180038, 0, 1, 1, -9554.68, 138.057, 59.187, -1.01229, 0, 0, -0.484809, 0.87462, 180, 100, 1),
(15959, 180045, 0, 1, 1, -9568.85, 26.1816, 61.2764, 0.767945, 0, 0, 0.374607, 0.927184, 180, 100, 1),
(10489, 180045, 0, 1, 1, -9580.79, 28.3274, 60.6627, -1.309, 0, 0, -0.608763, 0.793352, 180, 100, 1),
(14741, 180045, 0, 1, 1, -9573.3, 37.0724, 60.4675, 3.00197, 0, 0, 0.997564, 0.0697546, 180, 100, 1),
(3572, 180046, 0, 1, 1, -9572.6, 33.3993, 61.2556, -2.04204, 0, 0, -0.852641, 0.522496, 180, 100, 1),
(10819, 180046, 0, 1, 1, -9574.43, 33.592, 61.162, -1.29154, 0, 0, -0.601814, 0.798637, 180, 100, 1),
(13201, 180046, 0, 1, 1, -9577.11, 28.9335, 61.0503, 0.767945, 0, 0, 0.374607, 0.927184, 180, 100, 1),
(10862, 180046, 0, 1, 1, -9571.2, 28.7882, 61.4907, 2.54818, 0, 0, 0.956305, 0.292372, 180, 100, 1),
(10856, 180047, 0, 1, 1, -9573.48, 33.6922, 61.2497, -1.71042, 0, 0, -0.754709, 0.65606, 180, 100, 1),
(10853, 180047, 0, 1, 1, -9571.72, 27.8073, 61.4719, -1.06465, 0, 0, -0.507538, 0.861629, 180, 100, 1),
(10852, 180047, 0, 1, 1, -9577.95, 29.7229, 61.0439, -2.72271, 0, 0, -0.978147, 0.207914, 180, 100, 1),
(10851, 180049, 0, 1, 1, -9571.81, 28.07, 61.9897, 2.79253, 0, 0, 0.984808, 0.173647, 180, 100, 1),
(10850, 180049, 0, 1, 1, -9573.65, 33.65, 61.7434, -1.36136, 0, 0, -0.629322, 0.777145, 180, 100, 1),
(16048, 180039, 0, 1, 1, -9550.79, 144.551, 59.3467, 2.54818, 0, 0, 0.956305, 0.292372, 180, 100, 1),
(14612, 180041, 0, 1, 1, -9556.3, 116.333, 58.8582, -1.98968, 0, 0, -0.83867, 0.54464, 180, 100, 1),
(1703, 180042, 0, 1, 1, -9576.61, 89.6703, 58.8815, 0.575959, 0, 0, 0.284016, 0.95882, 180, 100, 1),
(2062, 180040, 0, 1, 1, -9558.64, 119.835, 58.854, -1.20428, 0, 0, -0.566406, 0.824126, 180, 100, 1),
(12673, 180040, 0, 1, 1, -9538.27, 133.446, 58.8815, 2.47837, 0, 0, 0.945519, 0.325567, 180, 100, 1),
(12703, 180044, 0, 1, 1, -9547.15, 84.5487, 58.1561, -0.907571, 0, 0, -0.438371, 0.898794, 180, 100, 1),
(70247, 181029, 0, 1, 1, -9574.1, 30.2205, 61.2259, 1.22173, 0, 0, 0.573576, 0.819152, 180, 100, 1),
(70246, 180053, 0, 1, 1, -9574.1, 30.2205, 61.2259, 1.22173, 0, 0, 0.573576, 0.819152, 180, 100, 1),
(16927, 180040, 0, 1, 1, -9557.69, 134.367, 58.8329, -2.26893, 0, 0, -0.906307, 0.422619, 180, 100, 1),
(16926, 180043, 0, 1, 1, -9556.71, 69.5335, 58.9567, -0.820305, 0, 0, -0.398749, 0.91706, 180, 100, 1),
(8516, 180043, 0, 1, 1, -9539.89, 72.8221, 58.8815, 2.72271, 0, 0, 0.978147, 0.207914, 180, 100, 1),
(8517, 180043, 0, 1, 1, -9541.98, 80.8587, 59.1252, -0.087267, 0, 0, -0.0436197, 0.999048, 180, 100, 1),
(9661, 180043, 0, 1, 1, -9533.74, 74.5172, 58.8815, -1.27409, 0, 0, -0.594823, 0.803857, 180, 100, 1),
(10392, 180043, 0, 1, 1, -9573.83, 82.3919, 58.8815, 2.56563, 0, 0, 0.958819, 0.284017, 180, 100, 1),
(14475, 180043, 0, 1, 1, -9566.04, 76.5801, 58.8981, 0.855211, 0, 0, 0.414693, 0.909961, 180, 100, 1),
(15865, 180043, 0, 1, 1, -9553.62, 104.592, 58.8828, -1.98968, 0, 0, -0.838672, 0.544637, 180, 100, 1),
(8515, 180043, 0, 1, 1, -9557.68, 54.6593, 60.3315, 1.71042, 0, 0, 0.754709, 0.65606, 180, 100, 1),
(21, 180043, 0, 1, 1, -9531.2, 117.723, 59.1229, 2.05949, 0, 0, 0.857168, 0.515037, 180, 100, 1),
(5375, 180043, 0, 1, 1, -9563.43, 99.4973, 58.8815, -1.64061, 0, 0, -0.731354, 0.681998, 180, 100, 1),
(4041, 180043, 0, 1, 1, -9546.52, 140.876, 58.8815, -1.18682, 0, 0, -0.559191, 0.829039, 180, 100, 1),
(16025, 180043, 0, 1, 1, -9530.79, 92.2459, 58.8815, -3.12414, 0, 0, -0.999962, 0.0087262, 180, 100, 1),
(16940, 180043, 0, 1, 1, -9537.02, 98.595, 58.8815, -2.9147, 0, 0, -0.993572, 0.113203, 180, 100, 1),
(16939, 180048, 0, 1, 1, -9577.74, 29.818, 61.5466, 0.663225, 0, 0, 0.325568, 0.945519, 180, 100, 1),
(16938, 180048, 0, 1, 1, -9573.39, 33.7, 61.7433, 0.977384, 0, 0, 0.469471, 0.882948, 180, 100, 1),
(7270, 180515, 0, 1, 1, -9571.3, -18.8353, 62.7875, 4.90124, 0, 0, 0.637287, -0.770626, 180, 0, 1);
REPLACE INTO `game_event_gameobject` (`guid`, `evententry`) VALUES ('10862', '4'), ('10856', '4');
REPLACE INTO `game_event_gameobject` (`guid`, `evententry`) VALUES ('10853', '4'), ('10852', '4');
REPLACE INTO `game_event_gameobject` (`guid`, `evententry`) VALUES ('10851', '4'), ('10850', '4');
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES ('4861', '5935');
DELETE FROM `quest_end_scripts` WHERE `id`=8193;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(8193, 0, 0, 0, 15077, '2000000302', 0, 0, 0, 0),
(8193, 0, 18, 0, 0, '0', 0, 0, 0, 0);
UPDATE `game_event_creature` SET `evententry`='5' WHERE `guid`=125893;
UPDATE `game_event_creature` SET `evententry`='5' WHERE `guid`=49648;
UPDATE `game_event_creature` SET `evententry`='5' WHERE `guid`=125583;
DELETE FROM `game_event_creature` WHERE `guid` = 4898;

# Fix
INSERT IGNORE INTO `spell_target_position` VALUES ('70781', '631', '-17.0711', '2211.47', '30.0546', '3.14159');
INSERT IGNORE INTO `spell_target_position` VALUES ('70856', '631', '-503.62', '2211.47', '62.8235', '3.13');
INSERT IGNORE INTO `spell_target_position` VALUES ('70857', '631', '-615.145', '2211.47', '199.972', '6.2755');
INSERT IGNORE INTO `spell_target_position` VALUES ('70858', '631', '-549.131', '2211.29', '539.291', '6.26765');
INSERT IGNORE INTO `spell_target_position` VALUES ('70859', '631', '4199.48', '2769.32', '351.372', '3.12414');
INSERT IGNORE INTO `spell_target_position` VALUES ('70861', '631', '4356.58', '2565.75', '220.402', '4.71238');
INSERT IGNORE INTO `spell_target_position` VALUES ('70860', '631', '529.302', '-2124.49', '840.857', '3.1765');
INSERT IGNORE INTO `spell_target_position` VALUES ('71712', '0', '-8922.7', '620.628', '100.225', '0');
INSERT IGNORE INTO `spell_target_position` VALUES ('71744', '0', '-8815.04', '662.193', '95.4238', '0');
INSERT IGNORE INTO `spell_target_position` VALUES ('71751', '0', '-8745.29', '656.266', '105.091', '0');
INSERT IGNORE INTO `spell_target_position` VALUES ('71762', '1', '1624.64', '-4375.87', '12.0282', '0');
INSERT IGNORE INTO `spell_target_position` VALUES ('71763', '1', '1678.29', '-4451.26', '19.2568', '0');
INSERT IGNORE INTO `spell_target_position` VALUES ('71765', '1', '1764.49', '-4345.93', '-7.798', '0');
UPDATE `gameobject` SET `spawntimesecs` = 300 WHERE `id` = 175762;
UPDATE `gameobject` SET `spawntimesecs` = 300 WHERE `id` = 175747;
DELETE FROM `gameobject` WHERE `id`=195140;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(5899, 195140, 530, 1, 1, -161.318, 965.41, 54.2904, 0, 0, 0, 0, 0, 300, 0, 1);
DELETE FROM `gameobject` WHERE `id`=195139;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(5900, 195139, 530, 1, 1, -337.492, 962.619, 54.2885, 0, 0, 0, 0, 0, 300, 0, 1);

# SignFinder
UPDATE `creature_template` SET `mechanic_immune_mask`=0, `flags_extra`=0 WHERE  `entry` =38995;

# NeatElves
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-35' WHERE `item`=24240;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(38435, 182050, 530, 1, 1, 1598.61, 8617.62, -33.2262, -0.610865, 0, 0, -0.300706, 0.953717, 180, 100, 1),
(25969, 182050, 530, 1, 1, 1661.94, 8620.6, -31.6114, -2.18166, 0, 0, -0.88701, 0.461749, 180, 100, 1),
(25970, 182050, 530, 1, 1, 1671.39, 8546.51, -48.753, -2.09439, 0, 0, -0.866024, 0.500002, 180, 100, 1),
(25971, 182050, 530, 1, 1, 1707.28, 8458.39, -6.66902, 2.49582, 0, 0, 0.948324, 0.317305, 180, 100, 1),
(25972, 182050, 530, 1, 1, 1663.53, 8572.54, -45.449, -1.69297, 0, 0, -0.748956, 0.66262, 180, 100, 1),
(25973, 182050, 530, 1, 1, 1640.89, 8454.59, -56.4805, -2.98451, 0, 0, -0.996917, 0.0784606, 180, 100, 1),
(25974, 182050, 530, 1, 1, 1717.89, 8489.96, -57.6316, 1.13446, 0, 0, 0.537298, 0.843393, 180, 100, 1),
(7902, 182050, 530, 1, 1, 1722.34, 8484.62, -4.16526, -1.91986, 0, 0, -0.819151, 0.573577, 180, 100, 1),
(7903, 182050, 530, 1, 1, 1726.9, 8458.46, -57.2022, -2.89725, 0, 0, -0.992546, 0.121868, 180, 100, 1),
(7904, 182050, 530, 1, 1, 1643.99, 8500.7, -53.412, 1.0821, 0, 0, 0.515036, 0.857168, 180, 100, 1),
(7911, 182050, 530, 1, 1, 1688.54, 8554.73, 4.35539, -2.93215, 0, 0, -0.994522, 0.10453, 180, 100, 1),
(7915, 182050, 530, 1, 1, 1691.86, 8556.19, -47.5297, -3.03687, 0, 0, -0.998629, 0.0523374, 180, 100, 1),
(7917, 182050, 530, 1, 1, 1627.71, 8604.54, -25.4862, -2.94959, 0, 0, -0.995395, 0.0958539, 180, 100, 1),
(7919, 182050, 530, 1, 1, 1722.83, 8473.81, -4.44422, -1.91986, 0, 0, -0.819151, 0.573577, 180, 100, 1);
UPDATE `creature_template_addon` SET `auras`='35230' WHERE `entry`=18912;
UPDATE creature_template SET gossip_menu_id =7703 WHERE entry = 18480;
REPLACE INTO gossip_menu (entry, text_id) VALUES (7703, 9401);
REPLACE INTO gossip_menu (entry, text_id) VALUES (6421, 7614);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 182256;
UPDATE `gameobject_template` SET `data1`='182031' WHERE `entry`=182256;
UPDATE `creature_template_addon` SET `auras`='45814' WHERE `entry`=25652;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 10040;
DELETE FROM `spell_scripts` WHERE `id` in (59226);
INSERT INTO `spell_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`) VALUES('59226', '0', '15', '3240', '2');
UPDATE `creature_template` SET `gossip_menu_id`=8836 WHERE `entry`=23950;
DELETE FROM `gossip_menu` WHERE `entry` = 50408;
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES
(8836,11428),
(1188,1820);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 1186;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 1186;
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES
(8761, 11126),
(8761, 11128);
DELETE FROM `npc_text` WHERE `ID`=11428;
INSERT INTO `npc_text` (`ID`,`text0_0`,`text0_1`,`lang0`,`prob0`,`em0_0`,`em0_1`,`em0_2`,`em0_3`,`em0_4`,`em0_5`,`text1_0`,`text1_1`,`lang1`,`prob1`,`em1_0`,`em1_1`,`em1_2`,`em1_3`,`em1_4`,`em1_5`,`text2_0`,`text2_1`,`lang2`,`prob2`,`em2_0`,`em2_1`,`em2_2`,`em2_3`,`em2_4`,`em2_5`,`text3_0`,`text3_1`,`lang3`,`prob3`,`em3_0`,`em3_1`,`em3_2`,`em3_3`,`em3_4`,`em3_5`,`text4_0`,`text4_1`,`lang4`,`prob4`,`em4_0`,`em4_1`,`em4_2`,`em4_3`,`em4_4`,`em4_5`,`text5_0`,`text5_1`,`lang5`,`prob5`,`em5_0`,`em5_1`,`em5_2`,`em5_3`,`em5_4`,`em5_5`,`text6_0`,`text6_1`,`lang6`,`prob6`,`em6_0`,`em6_1`,`em6_2`,`em6_3`,`em6_4`,`em6_5`,`text7_0`,`text7_1`,`lang7`,`prob7`,`em7_0`,`em7_1`,`em7_2`,`em7_3`,`em7_4`,`em7_5`) VALUES
(11428,'Are you here to relieve me? I''m certain it''s almost time. Well, if you want to relieve me anyway, let me know. I could use a drink or three.','',0,1,0,0,0,0,0,0,'','',0,1,0,0,0,0,0,0,'','',0,1,0,0,0,0,0,0,'','',0,1,0,0,0,0,0,0,'','',0,1,0,0,0,0,0,0,'','',0,1,0,0,0,0,0,0,'','',0,1,0,0,0,0,0,0,'','',0,1,0,0,0,0,0,0);
DELETE FROM `npc_text` WHERE `ID` IN (10059,10061);
INSERT INTO `npc_text` (`ID`,`text0_0`,`text0_1`,`lang0`,`prob0`,`em0_0`,`em0_1`,`em0_2`,`em0_3`,`em0_4`,`em0_5`,`text1_0`,`text1_1`,`lang1`,`prob1`,`em1_0`,`em1_1`,`em1_2`,`em1_3`,`em1_4`,`em1_5`,`text2_0`,`text2_1`,`lang2`,`prob2`,`em2_0`,`em2_1`,`em2_2`,`em2_3`,`em2_4`,`em2_5`,`text3_0`,`text3_1`,`lang3`,`prob3`,`em3_0`,`em3_1`,`em3_2`,`em3_3`,`em3_4`,`em3_5`,`text4_0`,`text4_1`,`lang4`,`prob4`,`em4_0`,`em4_1`,`em4_2`,`em4_3`,`em4_4`,`em4_5`,`text5_0`,`text5_1`,`lang5`,`prob5`,`em5_0`,`em5_1`,`em5_2`,`em5_3`,`em5_4`,`em5_5`,`text6_0`,`text6_1`,`lang6`,`prob6`,`em6_0`,`em6_1`,`em6_2`,`em6_3`,`em6_4`,`em6_5`,`text7_0`,`text7_1`,`lang7`,`prob7`,`em7_0`,`em7_1`,`em7_2`,`em7_3`,`em7_4`,`em7_5`) VALUES(10059,'The Ethereum were the ruling class of ethereal on my homeworld of K''aresh. Tragically, we were forced to evacuate K''aresh shortly before the void lord, Dimensius, unleashed his void armies upon the world and utterly decimated all that stood in his way. For this act, the Ethereum vowed vengeance. They have been tracking Dimensius ever since...$B$BThe Protectorate, however, were not a reaction to Dimensius. We were a reaction to Ethereum.','',0,1,0,1,0,1,0,1,'','',0,1,0,0,0,0,0,0,'','',0,1,0,0,0,0,0,0,'','',0,1,0,0,0,0,0,0,'','',0,1,0,0,0,0,0,0,'','',0,1,0,0,0,0,0,0,'','',0,1,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0),(10061,'We feel that the Ethereum are as great a threat to our existence as Dimensius. Both must be stopped...','',0,1,0,1,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-100' WHERE `item`=35490;
UPDATE `gossip_menu_option` SET `option_text`='Boots, what do you have back there that goes down smooth?' WHERE `menu_id`=8001 AND `id`=0;
UPDATE `gossip_menu_option` SET `option_text`='Dealer Dunar, I wish to browse your wares.' WHERE `menu_id`=8084 AND `id`=0;
UPDATE `gossip_menu_option` SET `option_text`='I wish to browse your wares.' WHERE `menu_id`=8126 AND `id`=0;
UPDATE `gossip_menu_option` SET `option_text`='Let me browse your goods.' WHERE `menu_id`=8710 AND `id`=0;
UPDATE `gossip_menu_option` SET `option_text`='I think I understand now. Can I help with any of this? The Ethereum and void creatures are a threat to our survival as well.' WHERE `menu_id`=8121 AND `id`=0;
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (7981, 9828);
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(114006,26276,571,1,1,0,0,3560.472,1769.351,171.9977,1.91463,180,0,0,57660,0,2);
DELETE FROM `creature_addon` WHERE (`guid`=114006);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (114006, 114006, 0, 0, 0, 0, '');
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`) VALUES
(114006,1,3560.472,1769.351,171.9977),
(114006,2,3567.688,1720.065,171.9977),
(114006,3,3575.305,1671.264,171.9977),
(114006,4,3614.985,1641.572,171.9977),
(114006,5,3661.11,1627.888,179.4142),
(114006,6,3710.721,1625.472,184.0807),
(114006,7,3758.05,1626.899,186.8029),
(114006,8,3806.817,1636.863,186.8029),
(114006,9,3855.013,1638.274,186.8029),
(114006,10,3893.953,1607.221,186.8029),
(114006,11,3908.07,1563.533,186.8029),
(114006,12,3892.732,1516.304,186.8029),
(114006,13,3853.05,1486.712,186.8029),
(114006,14,3804.016,1484.734,186.8029),
(114006,15,3768.95,1518.886,186.8029),
(114006,16,3741.332,1558.961,193.6083),
(114006,17,3735.918,1607.949,197.9415),
(114006,18,3726.846,1656.945,201.9971),
(114006,19,3706.031,1701.895,208.3303),
(114006,20,3693.807,1748.982,208.3303),
(114006,21,3686.946,1791.952,208.3303),
(114006,22,3684.135,1840.943,208.3303),
(114006,23,3693.31,1889.799,208.3303),
(114006,24,3710.331,1936.957,208.3303),
(114006,25,3708.896,1985.871,203.9415),
(114006,26,3711.546,2034.778,199.0248),
(114006,27,3700.25,2079.795,185.8581),
(114006,28,3671.014,2118.18,175.6918),
(114006,29,3627.495,2141.961,170.8588),
(114006,30,3582.266,2162.844,165.0257),
(114006,31,3536.079,2181.72,161.0814),
(114006,32,3492.185,2203.827,153.3039),
(114006,33,3449.847,2227.899,147.0816),
(114006,34,3411.07,2258.388,138.6929),
(114006,35,3372.244,2288.043,130.0542),
(114006,36,3334.966,2320.363,127.8878),
(114006,37,3302.867,2358.885,123.2211),
(114006,38,3272.494,2397.996,120.9432),
(114006,39,3239.637,2434.888,118.8322),
(114006,40,3212.678,2476.519,116.0821),
(114006,41,3211.545,2525.56,108.0818),
(114006,42,3250.958,2578.278,107.5538),
(114006,43,3293.958,2602.603,107.5538),
(114006,44,3342.687,2610.276,112.9983),
(114006,45,3386.911,2594.68,123.2483),
(114006,46,3415.89,2554.956,128.7483),
(114006,47,3424.978,2506.423,128.7483),
(114006,48,3417.17,2457.855,128.7483),
(114006,49,3403.204,2427.43,128.7483),
(114006,50,3373.681,2392.189,128.7483),
(114006,51,3355.053,2347.842,128.7483),
(114006,52,3358.651,2298.717,128.7483),
(114006,53,3365.574,2249.818,135.9983),
(114006,54,3382.769,2202.925,136.9983),
(114006,55,3406.081,2159.531,144.9981),
(114006,56,3435.854,2119.649,151.8868),
(114006,57,3465.756,2080.089,151.8868),
(114006,58,3482.463,2041.774,142.5257),
(114006,59,3503.596,1996.099,137.0257),
(114006,60,3521.709,1951.099,137.0257),
(114006,61,3531.027,1914.229,150.5535),
(114006,62,3542.625,1866.008,158.9424),
(114006,63,3550.662,1817.174,163.9979);
DELETE FROM `creature` WHERE `guid` = 18987;
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,MovementType) VALUES
(18987,14494, 0, 1, 1, 0, 0, 3325.018, -2996.802, 164.449, 0.01, 600, 0, 0, 3052, 0, 0);
UPDATE creature_template SET RegenHealth = 0 WHERE entry IN (14484,14485);
UPDATE `quest_template` SET `SpecialFlags`='2' WHERE `id` in (309,434,452,590,665,667,836,1090,1144,1173,1440,1651,1950,2742,2744,2767,2784,2801,2845,2904,2954,3141,3367,3382,3525,3982,4001,4121,4185,4224,4261,4265,4321,4322,4342,4966,5056,5203,5713,5944,6403,6544,6566,6627,7046,8447,8945,9212,9260,9261,9262,9263,9264,9265,9375,9545,9729,9836,9879,9991,10004,10044,10051,10052,10172,10191,10198,10218,10248,10256,10297,10310,10425,10525,10594,10898,10923,10945,10950,10951,10952,10953,10954,10956,10960,10962,10963,10968,11189,11241,11592,11664,11673,12027,12082,12321,12473,12816,12817,13221,13229,13417,13481,13482,7622);
UPDATE `quest_template` SET `SpecialFlags`='3' WHERE `id` in (3366,11101,13538,7027,6847,6848,7001,7871,7872);
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='50', `groupid`='0' WHERE `entry`=179703 AND `item`=18646;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='50', `groupid`='0' WHERE `entry`=179703 AND `item`=18703;
UPDATE `gameobject_loot_template` SET `groupid`='1' WHERE `entry`=179703 AND `item` in (19140,18810,18808,18806,18803);
UPDATE `gameobject_template` SET `faction`='1735' WHERE `entry`=181333;
UPDATE `gameobject_template` SET `faction`='1735' WHERE `entry`=181334;
UPDATE `gameobject_template` SET `faction`='1735' WHERE `entry`=181332;
UPDATE `gameobject_template` SET `faction`='1732' WHERE `entry`=181335;
UPDATE `gameobject_template` SET `faction`='1732' WHERE `entry`=181336;
UPDATE `gameobject_template` SET `faction`='1732' WHERE `entry`=181337;
DELETE FROM `spell_area` WHERE `spell` = 29126;
DELETE FROM `spell_area` WHERE `spell` = 29135;
DELETE FROM `spell_area` WHERE `spell` = 29136;
DELETE FROM `spell_area` WHERE `spell` = 29137;
DELETE FROM `spell_area` WHERE `spell` = 29138;
DELETE FROM `spell_area` WHERE `spell` = 29139;
DELETE FROM `spell_area` WHERE `spell` = 46671;
DELETE FROM `spell_area` WHERE `spell` = 46672;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-30' WHERE `entry`=26316 AND `item`=36728;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-100' WHERE `item`=36729;
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES ('26467', '36729', '-100', '0', '1', '1');
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(44885, 188442, 571, 1, 1, 4581.08, 475.223, 65.9586, 1.95477, 0, 0, 0.829038, 0.559192, 120, 100, 1),
(44886, 188442, 571, 1, 1, 4355.79, 306.847, 46.681, -0.645772, 0, 0, -0.317305, 0.948324, 120, 100, 1),
(44887, 188442, 571, 1, 1, 4540.33, 449.891, 65.9547, 0.855211, 0, 0, 0.414693, 0.909961, 120, 100, 1),
(44888, 188442, 571, 1, 1, 4558.8, 457.194, 66.3137, -2.77507, 0, 0, -0.983255, 0.182237, 120, 100, 1),
(44889, 188442, 571, 1, 1, 4525.29, 476.182, 66.5023, 0.331611, 0, 0, 0.165047, 0.986286, 120, 100, 1),
(44890, 188442, 571, 1, 1, 4376.52, 754.487, 58.6941, -3.05433, 0, 0, -0.999048, 0.0436174, 120, 100, 1),
(44891, 188442, 571, 1, 1, 4412.05, 330.669, 44.9223, 0.785397, 0, 0, 0.382683, 0.92388, 120, 100, 1),
(44892, 188442, 571, 1, 1, 4412.51, 702.771, 54.0801, -0.855211, 0, 0, -0.414693, 0.909961, 120, 100, 1),
(44893, 188442, 571, 1, 1, 4434.24, 705.65, 53.941, 1.78023, 0, 0, 0.777145, 0.629321, 120, 100, 1),
(44894, 188442, 571, 1, 1, 4388.48, 732.4, 54.1747, 1.58825, 0, 0, 0.713251, 0.700909, 120, 100, 1),
(10849, 188442, 571, 1, 1, 4393.88, 753.41, 54.1678, -0.174532, 0, 0, -0.0871553, 0.996195, 120, 100, 1),
(10848, 188442, 571, 1, 1, 4415.67, 722.605, 53.8887, -0.785397, 0, 0, -0.382683, 0.92388, 120, 100, 1),
(10843, 188442, 571, 1, 1, 4378.79, 297.967, 45.7164, 2.89724, 0, 0, 0.992546, 0.121873, 120, 100, 1),
(10842, 188442, 571, 1, 1, 4436.78, 689.474, 59.0446, -0.942477, 0, 0, -0.45399, 0.891007, 120, 100, 1),
(10841, 188442, 571, 1, 1, 4172.6, 739.74, 43.4212, 2.16421, 0, 0, 0.882948, 0.469471, 120, 100, 1),
(10840, 188442, 571, 1, 1, 4153.04, 689.897, 43.54, -2.46091, 0, 0, -0.942641, 0.333809, 120, 100, 1),
(10837, 188442, 571, 1, 1, 4130.77, 665.688, 45.2563, 1.20428, 0, 0, 0.566407, 0.824125, 120, 100, 1),
(10835, 188442, 571, 1, 1, 4109.31, 671.335, 45.0958, 1.79769, 0, 0, 0.782608, 0.622514, 120, 100, 1),
(10831, 188442, 571, 1, 1, 4171.53, 713.072, 41.5848, -2.05949, 0, 0, -0.857168, 0.515037, 120, 100, 1),
(10825, 188442, 571, 1, 1, 4124.53, 723.4, 41.7324, 1.11701, 0, 0, 0.529919, 0.848048, 120, 100, 1),
(10824, 188442, 571, 1, 1, 4363.59, 318.407, 47.0072, 2.60053, 0, 0, 0.963629, 0.267244, 120, 100, 1),
(10823, 188442, 571, 1, 1, 4401.4, 321.737, 44.518, -2.65289, 0, 0, -0.970295, 0.241925, 120, 100, 1),
(10820, 188442, 571, 1, 1, 4418.16, 308.02, 45.3795, 0, 0, 0, 0, 1, 120, 100, 1),
(10817, 188442, 571, 1, 1, 4419.73, 341.367, 46.1146, -1.72787, 0, 0, -0.760406, 0.649449, 120, 100, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(44895, 188441, 571, 1, 1, 4572.98, 645.44, 94.59, -1.16937, 0, 0, -0.551937, 0.833886, 120, 100, 1),
(44896, 188441, 571, 1, 1, 4607.06, 650.238, 99.3323, 0.314158, 0, 0, 0.156434, 0.987688, 120, 100, 1),
(44897, 188441, 571, 1, 1, 4751.07, 453.679, 126.705, 0.680677, 0, 0, 0.333806, 0.942642, 120, 100, 1),
(44898, 188441, 571, 1, 1, 4458.16, 127.856, 89.4529, -0.401425, 0, 0, -0.199368, 0.979925, 120, 100, 1),
(44899, 188441, 571, 1, 1, 4673.73, 424.577, 112.654, -1.71042, 0, 0, -0.754709, 0.656059, 120, 100, 1),
(44900, 188441, 571, 1, 1, 4682.3, 401.202, 113.09, 0.90757, 0, 0, 0.438371, 0.898794, 120, 100, 1),
(44901, 188441, 571, 1, 1, 4481.18, 127.805, 88.9875, -1.23918, 0, 0, -0.580703, 0.814116, 120, 100, 1),
(44902, 188441, 571, 1, 1, 4633.89, 639.71, 104.126, -0.575957, 0, 0, -0.284015, 0.95882, 120, 100, 1),
(44903, 188441, 571, 1, 1, 4599.75, 664.471, 97.9773, -2.02458, 0, 0, -0.848048, 0.52992, 120, 100, 1),
(44904, 188441, 571, 1, 1, 4599.19, 760.068, 93.8752, -0.628317, 0, 0, -0.309016, 0.951057, 120, 100, 1),
(44905, 188441, 571, 1, 1, 4603.35, 646.605, 99.3937, -3.00195, 0, 0, -0.997563, 0.0697646, 120, 100, 1),
(44906, 188441, 571, 1, 1, 4574.53, 739.394, 93.1377, 0.052359, 0, 0, 0.0261765, 0.999657, 120, 100, 1),
(44907, 188441, 571, 1, 1, 4626.84, 662.613, 101.606, 1.43117, 0, 0, 0.656059, 0.75471, 120, 100, 1),
(44908, 188441, 571, 1, 1, 4617.78, 647.229, 100.198, -0.122173, 0, 0, -0.0610485, 0.998135, 120, 100, 1),
(44909, 188441, 571, 1, 1, 4593.35, 741.484, 95.7995, -2.54818, 0, 0, -0.956305, 0.292372, 120, 100, 1),
(44910, 188441, 571, 1, 1, 4583.76, 661.299, 95.5069, 2.00713, 0, 0, 0.843392, 0.537299, 120, 100, 1),
(44911, 188441, 571, 1, 1, 4505.15, 59.0905, 86.1317, -1.20428, 0, 0, -0.566406, 0.824126, 120, 100, 1),
(10815, 188441, 571, 1, 1, 4540.81, 232.438, 93.5296, 2.70526, 0, 0, 0.976296, 0.21644, 120, 100, 1),
(10811, 188441, 571, 1, 1, 4518.54, 226.87, 90.0436, -1.309, 0, 0, -0.608761, 0.793354, 120, 100, 1),
(10809, 188441, 571, 1, 1, 4516.65, 214.938, 90.1737, -1.51844, 0, 0, -0.688354, 0.725374, 120, 100, 1),
(10805, 188441, 571, 1, 1, 4601.03, 262.573, 94.5993, -2.68781, 0, 0, -0.97437, 0.224951, 120, 100, 1),
(10804, 188441, 571, 1, 1, 4556.1, 231.293, 96.7789, 0.453785, 0, 0, 0.224951, 0.97437, 120, 100, 1),
(10802, 188441, 571, 1, 1, 4476.38, 92.4865, 88.9638, 2.32129, 0, 0, 0.91706, 0.39875, 120, 100, 1),
(10801, 188441, 571, 1, 1, 4499.45, 108.052, 89.835, -2.28638, 0, 0, -0.909961, 0.414694, 120, 100, 1),
(10800, 188441, 571, 1, 1, 4532.68, 221.227, 92.8656, -0.942477, 0, 0, -0.45399, 0.891007, 120, 100, 1),
(10796, 188441, 571, 1, 1, 4510.57, 76.8185, 88.445, -2.426, 0, 0, -0.936671, 0.35021, 120, 100, 1),
(10790, 188441, 571, 1, 1, 4570.08, 246.232, 90.9689, -1.41372, 0, 0, -0.649447, 0.760406, 120, 100, 1),
(10787, 188441, 571, 1, 1, 4578.88, 274.382, 94.5774, 1.25664, 0, 0, 0.587785, 0.809017, 120, 100, 1),
(10786, 188441, 571, 1, 1, 4599.04, 285.083, 95.2379, 0.418879, 0, 0, 0.207912, 0.978148, 120, 100, 1),
(10785, 188441, 571, 1, 1, 4553.6, 249.401, 91.1224, -2.426, 0, 0, -0.936671, 0.350211, 120, 100, 1),
(10783, 188441, 571, 1, 1, 4583.66, 232.163, 95.9295, -1.55334, 0, 0, -0.700909, 0.713251, 120, 100, 1);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-30' WHERE `entry`=26316 AND `item`=36728;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-100' WHERE `item`=36729;
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES ('26467', '36729', '-100', '0', '1', '1');
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(44885, 188442, 571, 1, 1, 4581.08, 475.223, 65.9586, 1.95477, 0, 0, 0.829038, 0.559192, 120, 100, 1),
(44886, 188442, 571, 1, 1, 4355.79, 306.847, 46.681, -0.645772, 0, 0, -0.317305, 0.948324, 120, 100, 1),
(44887, 188442, 571, 1, 1, 4540.33, 449.891, 65.9547, 0.855211, 0, 0, 0.414693, 0.909961, 120, 100, 1),
(44888, 188442, 571, 1, 1, 4558.8, 457.194, 66.3137, -2.77507, 0, 0, -0.983255, 0.182237, 120, 100, 1),
(44889, 188442, 571, 1, 1, 4525.29, 476.182, 66.5023, 0.331611, 0, 0, 0.165047, 0.986286, 120, 100, 1),
(44890, 188442, 571, 1, 1, 4376.52, 754.487, 58.6941, -3.05433, 0, 0, -0.999048, 0.0436174, 120, 100, 1),
(44891, 188442, 571, 1, 1, 4412.05, 330.669, 44.9223, 0.785397, 0, 0, 0.382683, 0.92388, 120, 100, 1),
(44892, 188442, 571, 1, 1, 4412.51, 702.771, 54.0801, -0.855211, 0, 0, -0.414693, 0.909961, 120, 100, 1),
(44893, 188442, 571, 1, 1, 4434.24, 705.65, 53.941, 1.78023, 0, 0, 0.777145, 0.629321, 120, 100, 1),
(44894, 188442, 571, 1, 1, 4388.48, 732.4, 54.1747, 1.58825, 0, 0, 0.713251, 0.700909, 120, 100, 1),
(10849, 188442, 571, 1, 1, 4393.88, 753.41, 54.1678, -0.174532, 0, 0, -0.0871553, 0.996195, 120, 100, 1),
(10848, 188442, 571, 1, 1, 4415.67, 722.605, 53.8887, -0.785397, 0, 0, -0.382683, 0.92388, 120, 100, 1),
(10843, 188442, 571, 1, 1, 4378.79, 297.967, 45.7164, 2.89724, 0, 0, 0.992546, 0.121873, 120, 100, 1),
(10842, 188442, 571, 1, 1, 4436.78, 689.474, 59.0446, -0.942477, 0, 0, -0.45399, 0.891007, 120, 100, 1),
(10841, 188442, 571, 1, 1, 4172.6, 739.74, 43.4212, 2.16421, 0, 0, 0.882948, 0.469471, 120, 100, 1),
(10840, 188442, 571, 1, 1, 4153.04, 689.897, 43.54, -2.46091, 0, 0, -0.942641, 0.333809, 120, 100, 1),
(10837, 188442, 571, 1, 1, 4130.77, 665.688, 45.2563, 1.20428, 0, 0, 0.566407, 0.824125, 120, 100, 1),
(10835, 188442, 571, 1, 1, 4109.31, 671.335, 45.0958, 1.79769, 0, 0, 0.782608, 0.622514, 120, 100, 1),
(10831, 188442, 571, 1, 1, 4171.53, 713.072, 41.5848, -2.05949, 0, 0, -0.857168, 0.515037, 120, 100, 1),
(10825, 188442, 571, 1, 1, 4124.53, 723.4, 41.7324, 1.11701, 0, 0, 0.529919, 0.848048, 120, 100, 1),
(10824, 188442, 571, 1, 1, 4363.59, 318.407, 47.0072, 2.60053, 0, 0, 0.963629, 0.267244, 120, 100, 1),
(10823, 188442, 571, 1, 1, 4401.4, 321.737, 44.518, -2.65289, 0, 0, -0.970295, 0.241925, 120, 100, 1),
(10820, 188442, 571, 1, 1, 4418.16, 308.02, 45.3795, 0, 0, 0, 0, 1, 120, 100, 1),
(10817, 188442, 571, 1, 1, 4419.73, 341.367, 46.1146, -1.72787, 0, 0, -0.760406, 0.649449, 120, 100, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(44895, 188441, 571, 1, 1, 4572.98, 645.44, 94.59, -1.16937, 0, 0, -0.551937, 0.833886, 120, 100, 1),
(44896, 188441, 571, 1, 1, 4607.06, 650.238, 99.3323, 0.314158, 0, 0, 0.156434, 0.987688, 120, 100, 1),
(44897, 188441, 571, 1, 1, 4751.07, 453.679, 126.705, 0.680677, 0, 0, 0.333806, 0.942642, 120, 100, 1),
(44898, 188441, 571, 1, 1, 4458.16, 127.856, 89.4529, -0.401425, 0, 0, -0.199368, 0.979925, 120, 100, 1),
(44899, 188441, 571, 1, 1, 4673.73, 424.577, 112.654, -1.71042, 0, 0, -0.754709, 0.656059, 120, 100, 1),
(44900, 188441, 571, 1, 1, 4682.3, 401.202, 113.09, 0.90757, 0, 0, 0.438371, 0.898794, 120, 100, 1),
(44901, 188441, 571, 1, 1, 4481.18, 127.805, 88.9875, -1.23918, 0, 0, -0.580703, 0.814116, 120, 100, 1),
(44902, 188441, 571, 1, 1, 4633.89, 639.71, 104.126, -0.575957, 0, 0, -0.284015, 0.95882, 120, 100, 1),
(44903, 188441, 571, 1, 1, 4599.75, 664.471, 97.9773, -2.02458, 0, 0, -0.848048, 0.52992, 120, 100, 1),
(44904, 188441, 571, 1, 1, 4599.19, 760.068, 93.8752, -0.628317, 0, 0, -0.309016, 0.951057, 120, 100, 1),
(44905, 188441, 571, 1, 1, 4603.35, 646.605, 99.3937, -3.00195, 0, 0, -0.997563, 0.0697646, 120, 100, 1),
(44906, 188441, 571, 1, 1, 4574.53, 739.394, 93.1377, 0.052359, 0, 0, 0.0261765, 0.999657, 120, 100, 1),
(44907, 188441, 571, 1, 1, 4626.84, 662.613, 101.606, 1.43117, 0, 0, 0.656059, 0.75471, 120, 100, 1),
(44908, 188441, 571, 1, 1, 4617.78, 647.229, 100.198, -0.122173, 0, 0, -0.0610485, 0.998135, 120, 100, 1),
(44909, 188441, 571, 1, 1, 4593.35, 741.484, 95.7995, -2.54818, 0, 0, -0.956305, 0.292372, 120, 100, 1),
(44910, 188441, 571, 1, 1, 4583.76, 661.299, 95.5069, 2.00713, 0, 0, 0.843392, 0.537299, 120, 100, 1),
(44911, 188441, 571, 1, 1, 4505.15, 59.0905, 86.1317, -1.20428, 0, 0, -0.566406, 0.824126, 120, 100, 1),
(10815, 188441, 571, 1, 1, 4540.81, 232.438, 93.5296, 2.70526, 0, 0, 0.976296, 0.21644, 120, 100, 1),
(10811, 188441, 571, 1, 1, 4518.54, 226.87, 90.0436, -1.309, 0, 0, -0.608761, 0.793354, 120, 100, 1),
(10809, 188441, 571, 1, 1, 4516.65, 214.938, 90.1737, -1.51844, 0, 0, -0.688354, 0.725374, 120, 100, 1),
(10805, 188441, 571, 1, 1, 4601.03, 262.573, 94.5993, -2.68781, 0, 0, -0.97437, 0.224951, 120, 100, 1),
(10804, 188441, 571, 1, 1, 4556.1, 231.293, 96.7789, 0.453785, 0, 0, 0.224951, 0.97437, 120, 100, 1),
(10802, 188441, 571, 1, 1, 4476.38, 92.4865, 88.9638, 2.32129, 0, 0, 0.91706, 0.39875, 120, 100, 1),
(10801, 188441, 571, 1, 1, 4499.45, 108.052, 89.835, -2.28638, 0, 0, -0.909961, 0.414694, 120, 100, 1),
(10800, 188441, 571, 1, 1, 4532.68, 221.227, 92.8656, -0.942477, 0, 0, -0.45399, 0.891007, 120, 100, 1),
(10796, 188441, 571, 1, 1, 4510.57, 76.8185, 88.445, -2.426, 0, 0, -0.936671, 0.35021, 120, 100, 1),
(10790, 188441, 571, 1, 1, 4570.08, 246.232, 90.9689, -1.41372, 0, 0, -0.649447, 0.760406, 120, 100, 1),
(10787, 188441, 571, 1, 1, 4578.88, 274.382, 94.5774, 1.25664, 0, 0, 0.587785, 0.809017, 120, 100, 1),
(10786, 188441, 571, 1, 1, 4599.04, 285.083, 95.2379, 0.418879, 0, 0, 0.207912, 0.978148, 120, 100, 1),
(10785, 188441, 571, 1, 1, 4553.6, 249.401, 91.1224, -2.426, 0, 0, -0.936671, 0.350211, 120, 100, 1),
(10783, 188441, 571, 1, 1, 4583.66, 232.163, 95.9295, -1.55334, 0, 0, -0.700909, 0.713251, 120, 100, 1);
UPDATE `gossip_menu` SET `text_id`='12524' WHERE `entry`=9213 AND `text_id`=68;
UPDATE `gossip_menu` SET `text_id`='12524' WHERE `entry`=9256 AND `text_id`=68;
UPDATE `gossip_menu` SET `text_id`='12524' WHERE `entry`=9257 AND `text_id`=68;
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 186672;
UPDATE creature_template SET faction_A = 12, faction_H = 12 WHERE entry = 12581;
DELETE FROM `creature_involvedrelation` WHERE `id` = 12580 AND `quest` = 6402;
DELETE FROM `creature_involvedrelation` WHERE `id` = 344 AND `quest` = 4183;
DELETE FROM `creature_involvedrelation` WHERE `id` = 9023 AND `quest` = 4241;
DELETE FROM `creature_involvedrelation` WHERE `id` = 9023 AND `quest` = 4264;
DELETE FROM `creature_involvedrelation` WHERE `id` = 9023 AND `quest` = 4282;
DELETE FROM `creature_involvedrelation` WHERE `id` = 9560 AND `quest` = 4242;
DELETE FROM `creature_involvedrelation` WHERE `id` = 9560 AND `quest` = 4322;
DELETE FROM `creature_involvedrelation` WHERE `id` = 9562 AND `quest` = 4182;
DELETE FROM `creature_involvedrelation` WHERE `id` = 12867 AND `quest` = 6403;
DELETE FROM `creature_questrelation` WHERE `id` = 9560 AND `quest` = 4241;
UPDATE `gossip_menu` SET `text_id`='12524' WHERE `entry`=9251 AND `text_id`=68;
UPDATE `gossip_menu` SET `text_id`='12524' WHERE `entry`=9254 AND `text_id`=68;
UPDATE `gossip_menu` SET `text_id`='12524' WHERE `entry`=9255 AND `text_id`=68;
UPDATE `gossip_menu` SET `text_id`='12524' WHERE `entry`=9271 AND `text_id`=68;
UPDATE `gossip_menu` SET `text_id`='12524' WHERE `entry`=9258 AND `text_id`=68;
UPDATE `gossip_menu` SET `text_id`='12524' WHERE `entry`=9264 AND `text_id`=68;
UPDATE `gossip_menu` SET `text_id`='12524' WHERE `entry`=9265 AND `text_id`=68;
UPDATE `gossip_menu` SET `text_id`='12524' WHERE `entry`=9266 AND `text_id`=68;
UPDATE `gossip_menu` SET `text_id`='12524' WHERE `entry`=9267 AND `text_id`=68;
UPDATE `gossip_menu` SET `text_id`='12524' WHERE `entry`=9268 AND `text_id`=68;
UPDATE `gossip_menu` SET `text_id`='12524' WHERE `entry`=9269 AND `text_id`=68;
UPDATE `gossip_menu` SET `text_id`='12524' WHERE `entry`=9272 AND `text_id`=68;
UPDATE `creature_template` SET `flags_extra`='2' WHERE `entry` in (15723,16592,17038,17041,17048,17049,17050,17051,25754,25883,25884,25887,25888,25889,25890,25891,25892,25893,25894,25895,25896,25897,25898,25899,25900,25901,25902,25903,25904,25905,25906,25907,25908,25909,25910,25911,25912,25913,25914,25915,25916,25917,25918,25919,25920,25921,25922,25923,25925,25926,25927,25928,25929,25930,25931,25932,25933,25934,25935,25936,25937,25938,25939,25940,25941,25942,25943,25944,25945,25946,25947,26124,26401,26520,32801,32802,32803,32804,32805,32806,32807,32808,32809,32810,32811,32812,32813,32814,32815,32816,40436,40443);
UPDATE `creature_template` SET `gossip_menu_id`=11417 WHERE `entry`=25697;
UPDATE `creature_template` SET `gossip_menu_id`=9260 WHERE `entry`=25754;
DELETE FROM `gossip_menu` WHERE `entry`=11417 AND `text_id`=12390;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11417,12390);
DELETE FROM `gossip_menu` WHERE `entry`=9260 AND `text_id`=12571;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9260,12571);
DELETE FROM `gossip_menu` WHERE `entry`=9260 AND `text_id`=12572;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9260,12572);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (9370,9353,9355,9379,9380,9381,9382,9383,9356,9357,9358,9359,9360,9361,9362,9363,9364,9365,9366,9367,9368,9369,9371,9372,9373,9374,9375,9376,9377,9378,10228,10231,10232,10235,10236,10239,10241,10242) AND `id`=0;
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (9406,9352,9354,9384,9385,9386,9387,9388,9389,9390,9391,9392,9393,9394,9395,9396,9397,9398,9399,9400,9401,9402,9403,9404,9405,9407,9408,9409,9410,9411,9412,9413,10227,10230,10233,10234,10237,10238,10240,10243) AND `id`=0;

# FIX
UPDATE `creature_template_addon` SET `auras`='45814' WHERE `entry`=25652;
SET @CGUID := 142876;
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+00 AND @CGUID+22;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`MovementType`) VALUES
(@CGUID+00,39190,631,12,1,505.1563,-2536.863,1069.598,0,10,10,1), -- Wicked Spirit
(@CGUID+01,39190,631,12,1,502.6493,-2531.328,1069.598,0,10,10,1), -- Wicked Spirit
(@CGUID+02,39190,631,12,1,503.8246,-2508.141,1069.598,0,10,10,1), -- Wicked Spirit
(@CGUID+03,39190,631,12,1,495.3629,-2538.215,1069.598,0,10,10,1), -- Wicked Spirit
(@CGUID+04,39190,631,12,1,506.8715,-2515.552,1069.598,0,10,10,1), -- Wicked Spirit
(@CGUID+05,39190,631,12,1,481.3021,-2509.222,1069.598,0,10,10,1), -- Wicked Spirit
(@CGUID+06,39190,631,12,1,481.5382,-2527.332,1069.598,0,10,10,1), -- Wicked Spirit
(@CGUID+07,39190,631,12,1,500.0807,-2523.289,1069.598,0,10,10,1), -- Wicked Spirit
(@CGUID+08,39190,631,12,1,486.6632,-2517.747,1069.598,0,10,10,1), -- Wicked Spirit
(@CGUID+09,39190,631,12,1,513.8802,-2511.795,1069.596,0,10,10,1), -- Wicked Spirit
(@CGUID+10,39190,631,12,1,499.6406,-2500.783,1069.656,0,10,10,1), -- Wicked Spirit
(@CGUID+11,39190,631,12,1,513.7101,-2530.931,1069.596,0,10,10,1), -- Wicked Spirit
(@CGUID+12,39190,631,12,1,502.6811,-2522.542,1069.598,0,10,10,1), -- Wicked Spirit
(@CGUID+13,39190,631,12,1,518.7483,-2521.240,1069.596,0,10,10,1), -- Wicked Spirit
(@CGUID+14,39190,631,12,1,478.9774,-2517.446,1069.598,0,10,10,1), -- Wicked Spirit
(@CGUID+15,39190,631,12,1,489.0104,-2538.535,1069.598,0,10,10,1), -- Wicked Spirit
(@CGUID+16,39190,631,12,1,511.6320,-2522.373,1069.598,0,10,10,1), -- Wicked Spirit
(@CGUID+17,39190,631,12,1,500.8976,-2527.198,1069.598,0,10,10,1), -- Wicked Spirit
(@CGUID+18,39190,631,12,1,484.7934,-2533.592,1069.598,0,10,10,1), -- Wicked Spirit
(@CGUID+19,39190,631,12,1,490.4132,-2504.323,1069.598,0,10,10,1), -- Wicked Spirit
(@CGUID+20,39190,631,12,1,485.0298,-2527.724,1069.598,0,10,10,1), -- Wicked Spirit
(@CGUID+21,39190,631,12,1,494.2899,-2511.384,1069.598,0,10,10,1), -- Wicked Spirit
(@CGUID+22,39190,631,12,1,491.7170,-2532.490,1069.598,0,10,10,1); -- Wicked Spirit
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(5935, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

# Conditions
REPLACE INTO `conditions` VALUES ('15', '7368', '3', '0', '0', '9', '0', '9454', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10040', '0', '0', '0', '9', '0', '13231', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10040', '1', '0', '0', '9', '0', '13232', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1186', '1', '0', '0', '8', '0', '1269', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7675', '9369', '0', '0', '8', '0', '10107', '0', '0', '0', '0', '', 'Show different gossip if player has rewarded quest 10107');
REPLACE INTO `conditions` VALUES ('14', '7675', '9369', '0', '1', '8', '0', '10108', '0', '0', '0', '0', '', 'Show different gossip if player has rewarded quest 10108');
REPLACE INTO `gossip_menu_option` VALUES ('7368', '3', '0', 'Acteon, where is the best area to hunt for moongraze stags?', '1', '1', '7423', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('1403', '3', '1', 'I\'d like to purchase more Tharlendris seeds.', '3', '128', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('10040', '0', '0', 'Hold out a little more, my friend. I must know what happened.', '1', '1', '10041', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10040', '1', '0', 'Let the earth you would be down, the hero of the Alliance!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10040', '3', '0', 'How can I help you, brother?', '1', '1', '1', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('1186', '0', '0', 'The Burning Inn.', '1', '1', '1187', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('1186', '1', '0', 'Paval Reethe.', '1', '1', '1188', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9370', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9353', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9355', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9379', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9380', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9381', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9382', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9383', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9356', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9357', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9358', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9359', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9360', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9361', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9362', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9363', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9364', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9365', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9366', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9367', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9368', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9369', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9371', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9372', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9373', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9374', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9375', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9376', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9377', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9378', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10228', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10231', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10232', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10235', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10236', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10239', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10241', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10242', '0', '0', 'Stamp out the Horde bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9406', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9352', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9354', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9384', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9385', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9386', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9387', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9388', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9389', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9390', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9391', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9392', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9393', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9394', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9395', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9396', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9397', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9398', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9399', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9400', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9401', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9402', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9403', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9404', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9405', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9407', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9408', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9409', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9410', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9411', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9412', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9413', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10227', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10230', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10233', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10234', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10237', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10238', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10240', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10243', '0', '0', 'Stamp out the Alliance bonfire!', '1', '1', '1', '0', '0', '0', null);



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

UPDATE version SET `cache_id`= '624';
UPDATE version SET `db_version`= 'YTDB_0.14.5_R624_TC_R16126_TDBAI_335_RuDB_R51';
