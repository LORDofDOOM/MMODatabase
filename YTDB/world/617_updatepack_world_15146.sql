# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 616_FIX_15025 617_FIX_15146 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('617_FIX_15146');

# TC
-- SAI for Elrodan
SET @ENTRY=18743;
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY*100 AND `source_type`=9);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,5000,8000,15000,25000,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Elrodan - OOC - run script'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,11,18744,20,0,0,0,0,0,'Elrodan - Script - Aurosalia say random'),
(@ENTRY*100,9,1,0,0,0,100,0,3000,3000,3000,3000,11,32826,0,0,0,0,0,1,0,0,0,0,0,0,0,'Elrodan - Script - cast Polymorph Cast Visual');
-- Aurosalia fix model
UPDATE `creature_model_info` SET `modelid_other_gender`=0 WHERE `modelid`=18145;
-- Aurosalia text
DELETE FROM `creature_text` WHERE `entry`=18744;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(18744,0,0, 'Stop!',1,0,100,5,0,0, 'Aurosalia'),
(18744,0,1, 'Will you stop--',1,0,100,274,0,0, 'Aurosalia'),
(18744,0,2, '',1,0,100,6,0,0, 'Aurosalia');
-- Aurosalia text
DELETE FROM `creature_text` WHERE `entry`=18744;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(18744,0,0, 'Stop!',12,1,100,5,0,0, 'Aurosalia'),
(18744,0,1, 'Will you stop--',12,1,100,6,0,0, 'Aurosalia'),
(18744,0,2, '',12,1,100,274,0,0, 'Aurosalia');
-- SAI for Champion Vranesh
SET @ENTRY=18146;
UPDATE `creature` SET `position_x`=9834.044,`position_y`=-7480.845,`position_z`=14.93467 WHERE `id`=@ENTRY;
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
UPDATE `creature_template_addon` SET `mount`=0 WHERE `entry`=@ENTRY; -- 19085
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100,@ENTRY*100+1,@ENTRY*100+2,@ENTRY*100+3,@ENTRY*100+4);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- AI
(@ENTRY,0,0,0,11,0,100,1,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - On respawn - load path'),
(@ENTRY,0,1,2,40,0,100,0,7,@ENTRY,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - On waypoint reached - Pause Path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - On waypoint reached - Run Script'),
(@ENTRY,0,3,4,40,0,100,0,11,@ENTRY,0,0,54,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - On waypoint reached - Pause Path'),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - On waypoint reached - Run Script'),
(@ENTRY,0,5,6,40,0,100,0,25,@ENTRY,0,0,54,8000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - On waypoint reached - Pause Path'),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - On waypoint reached - Run Script'),
(@ENTRY,0,7,8,40,0,100,0,34,@ENTRY,0,0,54,8000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - On waypoint reached - Pause Path'),
(@ENTRY,0,8,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - On waypoint reached - Run Script'),
(@ENTRY,0,9,10,40,0,100,0,50,@ENTRY,0,0,54,7000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - On waypoint reached - Pause Path'),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+4,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - On waypoint reached - Run Script'),
(@ENTRY,0,11,0,40,0,100,0,57,@ENTRY,0,0,54,600000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - On waypoint reached - Pause Path'),
-- Script 0
(@ENTRY*100,9,0,0,0,0,100,0,3500,3500,3500,3500,5,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - Script 0 - emote bow'),
-- Script 1
(@ENTRY*100+1,9,0,0,0,0,100,0,100,100,100,100,43,0,19085,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - Script 1 - mount horse'),
(@ENTRY*100+1,9,1,0,0,0,100,0,100,100,100,100,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - Script 1 - say 0'),
(@ENTRY*100+1,9,2,0,0,0,100,0,100,100,100,100,5,16,0,0,0,0,0,11,16222,10,0,0,0,0,0,'Champion Vranesh - Script 1 - Silvermoon City Guardian emote bow'),
(@ENTRY*100+1,9,3,0,0,0,100,0,100,100,100,100,1,0,0,0,0,0,0,19,16222,10,0,0,0,0,0,'Champion Vranesh - Script 1 - Silvermoon City Guardian say 0'),
-- Script 2
(@ENTRY*100+2,9,0,0,0,0,100,0,3000,3000,3000,3000,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - Script 2 - say 1'),
(@ENTRY*100+2,9,1,0,0,0,100,0,100,100,100,100,5,16,0,0,0,0,0,11,16222,18,0,0,0,0,0,'Champion Vranesh - Script 2 - Silvermoon City Guardian emote bow'),
(@ENTRY*100+2,9,2,0,0,0,100,0,100,100,100,100,1,1,0,0,0,0,0,19,16222,18,0,0,0,0,0,'Champion Vranesh - Script 2 - Silvermoon City Guardian say 1'),
-- Script 3
(@ENTRY*100+3,9,0,0,0,0,100,0,3000,3000,3000,3000,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - Script 3 - say 2'),
(@ENTRY*100+3,9,1,0,0,0,100,0,100,100,100,100,5,16,0,0,0,0,0,11,16222,30,0,0,0,0,0,'Champion Vranesh - Script 3 - Silvermoon City Guardian emote bow'),
-- Script 4
(@ENTRY*100+4,9,0,0,0,0,100,0,1000,1000,1000,1000,43,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - Script 4 - dismount horse'),
(@ENTRY*100+4,9,1,0,0,0,100,0,1000,1000,1000,1000,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - Script 3 - say 3');

-- NPC talk text for Champion Vranesh and Silvermoon City Guardian
DELETE FROM `creature_text` WHERE `entry` IN (@ENTRY,16222);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'Champion Vranesh inclines his head slightly to the pair of guardians in greeting.',16,1,100,0,0,0, 'Champion Vranesh'),
(@ENTRY,1,0, 'Champion Vranesh arches a scrulpled brow at the guards. a disapproving scowl on his face',16,1,100,0,0,0, 'Champion Vranesh'),
(@ENTRY,2,0, 'Champion Vranesh glances from guard to guard.',16,1,100,0,0,0, 'Champion Vranesh'),
(@ENTRY,3,0, 'Champion Vranesh surveys the small ranger practice ground with a condescending smirk.',16,1,100,0,0,0, 'Champion Vranesh'),
(16222,0,0, 'Glory to the Sun K-- ah... Silvermoon!',12,1,100,0,0,0, 'Silvermoon City Guardian'),
(16222,1,0, 'Our lives are yours, Blood Knight.',12,1,100,0,0,0, 'Silvermoon City Guardian');

-- Pathing for Champion Vranesh
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,9834.044,-7480.845,14.93467, 'Champion Vranesh'),
(@ENTRY,2,9829.106,-7493.609,14.93653, 'Champion Vranesh'),
(@ENTRY,3,9826.172,-7516.15,19.73714, 'Champion Vranesh'),
(@ENTRY,4,9841.332,-7518.849,19.70547, 'Champion Vranesh'),
(@ENTRY,5,9845.063,-7512.885,19.68096, 'Champion Vranesh'),
(@ENTRY,6,9850.942,-7512.470,19.71548, 'Champion Vranesh'),
(@ENTRY,7,9850.934,-7513.604,19.71813, 'Champion Vranesh'), -- pause 6000
(@ENTRY,8,9872.733,-7517.256,19.75283, 'Champion Vranesh'),
(@ENTRY,9,9872.419,-7489.979,14.91272, 'Champion Vranesh'),
(@ENTRY,10,9851.401,-7490.209,14.93464, 'Champion Vranesh'),
(@ENTRY,11,9850.948,-7470.096,14.91403, 'Champion Vranesh'), -- pause 1000
(@ENTRY,12,9851.16,-7469.154,14.91319, 'Champion Vranesh'),
(@ENTRY,13,9849.688,-7442.579,13.50931, 'Champion Vranesh'),
(@ENTRY,14,9848.726,-7423.561,13.31949, 'Champion Vranesh'),
(@ENTRY,15,9816.583,-7423.817,13.30332, 'Champion Vranesh'),
(@ENTRY,16,9794.673,-7424.877,13.50989, 'Champion Vranesh'),
(@ENTRY,17,9794.48,-7442.293,14.40225, 'Champion Vranesh'),
(@ENTRY,18,9767.989,-7442.611,14.39258, 'Champion Vranesh'),
(@ENTRY,19,9767.406,-7422.982,13.35852, 'Champion Vranesh'),
(@ENTRY,20,9739.563,-7422.83,13.28878, 'Champion Vranesh'),
(@ENTRY,21,9736.46,-7440.873,13.53963, 'Champion Vranesh'),
(@ENTRY,22,9740.345,-7464.682,13.57483, 'Champion Vranesh'),
(@ENTRY,23,9746.739,-7482.594,13.55744, 'Champion Vranesh'),
(@ENTRY,24,9748.767,-7486.576,13.54981, 'Champion Vranesh'),
(@ENTRY,25,9753.25,-7486.52,13.5461, 'Champion Vranesh'), -- pause 8000
(@ENTRY,26,9720.037,-7486.478,13.52865, 'Champion Vranesh'),
(@ENTRY,27,9681.502,-7475.868,13.52783, 'Champion Vranesh'),
(@ENTRY,28,9666.59,-7479.547,13.53783, 'Champion Vranesh'),
(@ENTRY,29,9638.033,-7492.629,13.50889, 'Champion Vranesh'),
(@ENTRY,30,9620.123,-7488.486,13.53853, 'Champion Vranesh'),
(@ENTRY,31,9605.795,-7475.276,13.55774, 'Champion Vranesh'),
(@ENTRY,32,9597.921,-7460.307,13.54336, 'Champion Vranesh'),
(@ENTRY,33,9594.605,-7450.369,13.5353, 'Champion Vranesh'),
(@ENTRY,34,9592.944,-7450.381,13.53116, 'Champion Vranesh'), -- pause 8000
(@ENTRY,35,9594.605,-7450.369,13.5353, 'Champion Vranesh'),
(@ENTRY,36,9615.793,-7419.515,13.30549, 'Champion Vranesh'),
(@ENTRY,37,9654.939,-7420.383,13.29342, 'Champion Vranesh'),
(@ENTRY,38,9673.072,-7429.818,13.2933, 'Champion Vranesh'),
(@ENTRY,39,9689.373,-7431.429,13.2933, 'Champion Vranesh'),
(@ENTRY,40,9709.577,-7422.25,13.2933, 'Champion Vranesh'),
(@ENTRY,41,9722.3,-7415.217,13.39988, 'Champion Vranesh'),
(@ENTRY,42,9748.049,-7414.597,13.32135, 'Champion Vranesh'),
(@ENTRY,43,9766.792,-7413.542,13.38617, 'Champion Vranesh'),
(@ENTRY,44,9767.26,-7396.828,14.43101, 'Champion Vranesh'),
(@ENTRY,45,9793.145,-7395.393,14.3936, 'Champion Vranesh'),
(@ENTRY,46,9794.217,-7415.122,13.48684, 'Champion Vranesh'),
(@ENTRY,47,9817.575,-7415.299,13.30596, 'Champion Vranesh'),
(@ENTRY,48,9837.021,-7414.861,13.30863, 'Champion Vranesh'),
(@ENTRY,49,9848.048,-7414.794,13.31137, 'Champion Vranesh'),
(@ENTRY,50,9848.199,-7414.07,13.31068, 'Champion Vranesh'), -- pause 7000
(@ENTRY,51,9847.695,-7415.903,13.31243, 'Champion Vranesh'),
(@ENTRY,52,9848.259,-7428.576,13.33225, 'Champion Vranesh'),
(@ENTRY,53,9846.748,-7446.964,13.56501, 'Champion Vranesh'),
(@ENTRY,54,9850.373,-7465.03,14.9097, 'Champion Vranesh'),
(@ENTRY,55,9850.84,-7480.409,14.93768, 'Champion Vranesh'),
(@ENTRY,56,9840.165,-7480.267,14.92917, 'Champion Vranesh'),
(@ENTRY,57,9843.284,-7480.133,14.92655, 'Champion Vranesh'); -- pause 60000

-- SAI for Silvermoon Farstrider
SET @ENTRY=18507;
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Silvermoon Farstrider - Reset - Set Phase 1'),
(@ENTRY,0,1,2,1,1,100,0,3000,3000,5000,5000,11,36802,0,0,0,0,0,1,0,0,0,0,0,0,0,'Silvermoon Farstrider - OOC - Cast Spell (Phase 1)'),
(@ENTRY,0,2,0,61,1,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Silvermoon Farstrider - OOC - Set Phase 2 (Phase 1)'),
(@ENTRY,0,3,4,1,2,100,0,3000,3000,5000,5000,11,36803,0,0,0,0,0,1,0,0,0,0,0,0,0,'Silvermoon Farstrider - OOC - Cast Spell (Phase 2)'),
(@ENTRY,0,4,0,61,2,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Silvermoon Farstrider - OOC - Set Phase 1 (Phase 2)');
-- SAI for Silvermoon Ranger
SET @ENTRY=18147;
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (-64950,-64951,-64952,-64953);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-67306,0,0,0,1,0,100,0,18000,22000,18000,22000,11,29121,0,0,0,0,0,1,0,0,0,0,0,0,0,'Silvermoon Ranger - OOC - Cast Spell'),
(-74655,0,0,0,1,0,100,0,18000,22000,18000,22000,11,29121,0,0,0,0,0,1,0,0,0,0,0,0,0,'Silvermoon Ranger - OOC - Cast Spell'),
(-74661,0,0,0,1,0,100,0,18000,22000,18000,22000,11,29120,0,0,0,0,0,1,0,0,0,0,0,0,0,'Silvermoon Ranger - OOC - Cast Spell'),
(-74663,0,0,0,1,0,100,0,18000,22000,18000,22000,11,29122,0,0,0,0,0,1,0,0,0,0,0,0,0,'Silvermoon Ranger - OOC - Cast Spell');
-- Coilfang Guardian

DELETE FROM `smart_scripts` WHERE `entryorguid`=21873 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(21873, 0, 0, 0, 0, 0, 0, 0, 5000, 5000, 15000, 15000, 11, 28168, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Guardian - IC - Cast Arcing Smash'),
(21873, 0, 1, 0, 0, 0, 0, 0, 2000, 2000, 10000, 10000, 11, 9080, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Guardian - IC - Cast Harmstring'),
(21873, 0, 2, 0, 0, 0, 50, 0, 3000, 4000, 10000, 20000, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Guardian - IC - Say 0'); -- randomly guessed timers

DELETE FROM `creature_text` WHERE `entry`=21873;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(21873, 0, 0, 'By Nazjatar''s Depths!', 12, 0, 0, 0, 0, 0, 'Coilfang Guardian'),
(21873, 0, 1, 'Die, warmblood!', 12, 0, 0, 0, 0, 0, 'Coilfang Guardian'),
(21873, 0, 2, 'For the Master!', 12, 0, 0, 0, 0, 0, 'Coilfang Guardian'),
(21873, 0, 3, 'Illidan reigns!', 12, 0, 0, 0, 0, 0, 'Coilfang Guardian'),
(21873, 0, 4, 'My blood is like venom!', 12, 0, 0, 0, 0, 0, 'Coilfang Guardian');

UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=21873;

-- Coilfang Strider

DELETE FROM `smart_scripts` WHERE `entryorguid`=22056 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(22056, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 11, 38257, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Strider - On Reset - Cast Panic Periodic'),
(22056, 0, 1, 0, 0, 0, 0, 0, 8000, 8000, 30000, 40000, 11, 38259, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Strider - IC - Cast Mind Blast');

UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=22056;

-- Coilfang Elite

DELETE FROM `smart_scripts` WHERE `entryorguid`=22055 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(22055, 0, 0, 0, 0, 0, 0, 0, 5000, 5000, 15000, 20000, 11, 38260, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Elite - IC - Cast Cleave'),
(22055, 0, 1, 0, 0, 0, 0, 0, 2000, 2000, 10000, 10000, 11, 38262, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Elite - IC - Cast Harmstring');

UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=22055;

-- Core Hound

DELETE FROM `smart_scripts` WHERE `entryorguid`=11673 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` BETWEEN 11673*100+0 AND 11673*100+5 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(11673, 0, 0, 0, 0, 0, 0, 0, 10000, 10000, 7000, 7000, 11, 19272, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Core Hound - IC - Cast Lava Breath'),
(11673, 0, 1, 0, 0, 0, 0, 0, 4000, 4000, 6000, 6000, 11, 19319, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Core Hound - IC - Cast Vicious Bite'),
(11673, 0, 2, 0, 0, 0, 0, 0, 15000, 15000, 24000, 24000, 88, 11673*100+0, 11673*100+5, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Core Hound - IC - Call random script'),
(11673*100+0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 19364, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Core Hound - Random 0 - Cast Ground Stomp'),
(11673*100+1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 19366, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Core Hound - Random 1 - Cast Cauterizing Flames'),
(11673*100+2, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 19367, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Core Hound - Random 2 - Cast Withering Heat'),
(11673*100+3, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 19369, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Core Hound - Random 3 - Cast Ancient Despair'),
(11673*100+4, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 19372, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Core Hound - Random 4 - Cast Ancient Hysteria'),
(11673*100+5, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 19365, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Core Hound - Random 5 - Cast Ancient Dread');

UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=11673;

-- Shadow of Aran

DELETE FROM `smart_scripts` WHERE `entryorguid`=18254 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(18254, 0, 0, 0, 0, 0, 0, 0, 1000, 1000, 5000, 5000, 11, 29978, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Shadow of Aran - IC - Cast Pyro Blast');

UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=18254;

INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,72257,0,0,32,0,144,0,0,0,0,'','Remove Marks of the Fallen Champion - target player');
UPDATE `gameobject_template` SET `flags`=0x32 WHERE `entry` IN (202239,202240,202238,202241,201959,202339,202338,202340);
-- Set Deathbringer's Cache spawned by default
UPDATE `gameobject` SET `spawntimesecs`=604800 WHERE `id` IN (202239,202240,202238,202241);
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_deathbringer_remove_marks';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(72257,'spell_deathbringer_remove_marks');
DELETE FROM conditions WHERE SourceTypeOrReferenceId=18 AND SourceGroup IN (24752,24752,25596,25596,25841,25841,26200,26200,26200,26200,32790,32788,32788,29856,29856,29856,29856,28161,28161,28161,28161,28161,27061,27061,27354,27354,28161,28161,28161,28161,28161,28161,28161,26477,26477,28162,28162,28162,28162,28162,28162,28162,28162,28202,28202,28202,28202,28203,28203,28203,28203,28222,28222,28379,28379,28389,28389,28389,28389,28782,28782,29488,29488,29563,29598,29708,29708,26477,26477,26477,29857,29857,30066,30337,30337,30500,30500,30560,31736,31736,31785,31785,31883,31893,31894,31895,31896,31897,26477,26477,26477,26477,33498,33498,26477,26477,26477,26421,26421,26421,26421,33842,33842,33843,33843,33794,33794,33800,33800,33793,33793,33795,33795,33790,33790,33792,33792,33791,33870,33791,33799,33799,33798,33798,33796,33796,34125,34125,34125,34125,34125,34125,34125,34125,34125,34125,34125,34125,34125,34125,38248,40176,40176,40176,40176,32790);
INSERT INTO `conditions` VALUES ('18', '24752', '44363', '0', '0', '8', '0', '11460', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '24752', '44363', '0', '0', '9', '0', '11460', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '25596', '45875', '0', '0', '8', '0', '11690', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '25596', '45875', '0', '0', '9', '0', '11690', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '25841', '46166', '0', '0', '8', '0', '11795', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '25841', '46166', '0', '0', '9', '0', '11795', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '26200', '39996', '0', '0', '8', '0', '11960', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '26200', '39996', '0', '0', '9', '0', '11960', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '26200', '61286', '0', '0', '8', '0', '11960', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '26200', '61286', '0', '0', '9', '0', '11960', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '32790', '57654', '0', '1', '8', '0', '13073', '0', '0', '0', '0', '', 'Required quest rewarded for spellclick');
INSERT INTO `conditions` VALUES ('18', '32788', '57539', '0', '2', '9', '0', '13075', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '32788', '57539', '0', '1', '8', '0', '13075', '0', '0', '0', '0', '', 'Required quest rewarded for spellclick');
INSERT INTO `conditions` VALUES ('18', '29856', '55363', '0', '2', '9', '0', '12643', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '29856', '55363', '0', '1', '9', '0', '12629', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '29856', '55363', '0', '0', '8', '0', '12643', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '29856', '55363', '0', '0', '8', '0', '12629', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '28161', '51961', '0', '2', '9', '0', '12702', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '28161', '51961', '0', '1', '9', '0', '12532', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '28161', '51961', '0', '0', '8', '0', '12702', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '28161', '51961', '0', '0', '8', '0', '12532', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '28161', '51037', '0', '2', '9', '0', '12702', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '27061', '47920', '0', '0', '8', '0', '12050', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '27061', '47920', '0', '0', '9', '0', '12050', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '27354', '60944', '0', '18', '8', '0', '12244', '0', '0', '0', '0', '', 'Required quest rewarded for spellclick');
INSERT INTO `conditions` VALUES ('18', '27354', '60944', '0', '18', '9', '0', '12244', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '28161', '51037', '0', '1', '9', '0', '12532', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '28161', '51037', '0', '0', '8', '0', '12702', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '28161', '51037', '0', '0', '8', '0', '12532', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '28161', '39996', '0', '2', '9', '0', '12702', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '28161', '39996', '0', '1', '9', '0', '12532', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '28161', '39996', '0', '0', '8', '0', '12702', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '28161', '39996', '0', '0', '8', '0', '12532', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '26477', '61832', '0', '2', '9', '0', '12000', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '26477', '61832', '0', '1', '9', '0', '11999', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '28162', '39996', '0', '0', '8', '0', '12519', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '28162', '39996', '0', '0', '9', '0', '12519', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '28162', '50737', '0', '0', '8', '0', '12519', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '28162', '50737', '0', '0', '9', '0', '12519', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '28162', '51026', '0', '0', '8', '0', '12519', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '28162', '51026', '0', '0', '9', '0', '12519', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '28162', '61286', '0', '0', '8', '0', '12519', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '28162', '61286', '0', '0', '9', '0', '12519', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '28202', '50926', '0', '0', '8', '0', '12527', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '28202', '50926', '0', '0', '9', '0', '12527', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '28202', '50927', '0', '0', '8', '0', '12527', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '28202', '50927', '0', '0', '9', '0', '12527', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '28203', '50918', '0', '0', '8', '0', '12527', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '28203', '50918', '0', '0', '9', '0', '12527', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '28203', '50919', '0', '0', '8', '0', '12527', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '28203', '50919', '0', '0', '9', '0', '12527', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '28222', '52082', '0', '0', '8', '0', '12546', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '28222', '52082', '0', '0', '9', '0', '12546', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '28379', '51658', '0', '0', '8', '0', '12607', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '28379', '51658', '0', '0', '9', '0', '12607', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '28389', '51592', '0', '0', '8', '0', '12605', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '28389', '51592', '0', '0', '9', '0', '12605', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '28389', '51593', '0', '0', '8', '0', '12605', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '28389', '51593', '0', '0', '9', '0', '12605', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '28782', '52280', '0', '0', '8', '0', '12687', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '28782', '52280', '0', '0', '9', '0', '12687', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '29488', '54568', '0', '15', '8', '0', '12670', '0', '0', '0', '0', '', 'Required quest rewarded for spellclick');
INSERT INTO `conditions` VALUES ('18', '29488', '54568', '0', '15', '9', '0', '12670', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '29563', '56795', '0', '0', '8', '0', '1', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '29598', '54768', '0', '0', '8', '0', '12856', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '29708', '55028', '0', '0', '8', '0', '12856', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '29708', '55028', '0', '0', '9', '0', '12856', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '26477', '47096', '0', '2', '9', '0', '12000', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '26477', '47096', '0', '1', '9', '0', '11999', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '26477', '61286', '0', '2', '9', '0', '12000', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '29857', '55457', '0', '0', '8', '0', '12910', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '29857', '55457', '0', '0', '9', '0', '12910', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '30066', '43977', '0', '0', '8', '0', '12953', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '30337', '43671', '0', '0', '8', '0', '13069', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '30337', '43671', '0', '0', '9', '0', '13069', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '30500', '56679', '0', '0', '8', '0', '13045', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '30500', '56679', '0', '0', '9', '0', '13045', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '30560', '57347', '0', '0', '1', '0', '57348', '0', '0', '1', '0', '', 'Forbidden aura for spellclick');
INSERT INTO `conditions` VALUES ('18', '31736', '59592', '0', '0', '8', '0', '13280', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '31736', '59592', '0', '0', '9', '0', '13280', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '31785', '59656', '0', '0', '8', '0', '13283', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '31785', '59656', '0', '0', '9', '0', '13283', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '31883', '60123', '0', '0', '1', '0', '48085', '0', '0', '1', '0', '', 'Forbidden aura for spellclick');
INSERT INTO `conditions` VALUES ('18', '31893', '60123', '0', '0', '1', '0', '48084', '0', '0', '1', '0', '', 'Forbidden aura for spellclick');
INSERT INTO `conditions` VALUES ('18', '31894', '60123', '0', '0', '1', '0', '28276', '0', '0', '1', '0', '', 'Forbidden aura for spellclick');
INSERT INTO `conditions` VALUES ('18', '31895', '60123', '0', '0', '1', '0', '27874', '0', '0', '1', '0', '', 'Forbidden aura for spellclick');
INSERT INTO `conditions` VALUES ('18', '31896', '60123', '0', '0', '1', '0', '27873', '0', '0', '1', '0', '', 'Forbidden aura for spellclick');
INSERT INTO `conditions` VALUES ('18', '31897', '60123', '0', '0', '1', '0', '7001', '0', '0', '1', '0', '', 'Forbidden aura for spellclick');
INSERT INTO `conditions` VALUES ('18', '26477', '61286', '0', '1', '9', '0', '11999', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '26477', '61832', '0', '0', '8', '0', '12000', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '26477', '61832', '0', '0', '8', '0', '11999', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '26477', '61286', '0', '0', '8', '0', '12000', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '33498', '63126', '0', '0', '8', '0', '13654', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '33498', '63126', '0', '0', '9', '0', '13654', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '26477', '61286', '0', '0', '8', '0', '11999', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '26477', '47096', '0', '0', '8', '0', '12000', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '26477', '47096', '0', '0', '8', '0', '11999', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '26421', '47575', '0', '2', '9', '0', '12096', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '26421', '47575', '0', '1', '9', '0', '12092', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '26421', '47575', '0', '0', '8', '0', '12096', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '26421', '47575', '0', '0', '8', '0', '12092', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '33842', '63791', '0', '0', '8', '0', '13687', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '33842', '63791', '0', '0', '8', '0', '13668', '0', '0', '0', '0', '', 'Required quest rewarded for spellclick');
INSERT INTO `conditions` VALUES ('18', '33843', '63792', '0', '0', '8', '0', '13686', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '33843', '63792', '0', '0', '8', '0', '13667', '0', '0', '0', '0', '', 'Required quest rewarded for spellclick');
INSERT INTO `conditions` VALUES ('18', '33794', '62782', '0', '2', '8', '0', '13706', '0', '0', '0', '0', '', 'Required quest rewarded for spellclick');
INSERT INTO `conditions` VALUES ('18', '33794', '62782', '0', '1', '8', '0', '13689', '0', '0', '0', '0', '', 'Required quest rewarded for spellclick');
INSERT INTO `conditions` VALUES ('18', '33800', '62774', '0', '2', '8', '0', '13684', '0', '0', '0', '0', '', 'Required quest rewarded for spellclick');
INSERT INTO `conditions` VALUES ('18', '33800', '62774', '0', '1', '8', '0', '13593', '0', '0', '0', '0', '', 'Required quest rewarded for spellclick');
INSERT INTO `conditions` VALUES ('18', '33793', '62780', '0', '2', '8', '0', '13704', '0', '0', '0', '0', '', 'Required quest rewarded for spellclick');
INSERT INTO `conditions` VALUES ('18', '33793', '62780', '0', '1', '8', '0', '13688', '0', '0', '0', '0', '', 'Required quest rewarded for spellclick');
INSERT INTO `conditions` VALUES ('18', '33795', '62779', '0', '2', '8', '0', '13703', '0', '0', '0', '0', '', 'Required quest rewarded for spellclick');
INSERT INTO `conditions` VALUES ('18', '33795', '62779', '0', '1', '8', '0', '13685', '0', '0', '0', '0', '', 'Required quest rewarded for spellclick');
INSERT INTO `conditions` VALUES ('18', '33790', '62781', '0', '2', '8', '0', '13705', '0', '0', '0', '0', '', 'Required quest rewarded for spellclick');
INSERT INTO `conditions` VALUES ('18', '33790', '62781', '0', '1', '8', '0', '13690', '0', '0', '0', '0', '', 'Required quest rewarded for spellclick');
INSERT INTO `conditions` VALUES ('18', '33792', '62785', '0', '2', '8', '0', '13709', '0', '0', '0', '0', '', 'Required quest rewarded for spellclick');
INSERT INTO `conditions` VALUES ('18', '33792', '62785', '0', '1', '8', '0', '13694', '0', '0', '0', '0', '', 'Required quest rewarded for spellclick');
INSERT INTO `conditions` VALUES ('18', '33791', '62786', '0', '2', '8', '0', '13711', '0', '0', '0', '0', '', 'Required quest rewarded for spellclick');
INSERT INTO `conditions` VALUES ('18', '33870', '63663', '0', '0', '8', '0', '1', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '33791', '62786', '0', '1', '8', '0', '13696', '0', '0', '0', '0', '', 'Required quest rewarded for spellclick');
INSERT INTO `conditions` VALUES ('18', '33799', '62783', '0', '2', '8', '0', '13707', '0', '0', '0', '0', '', 'Required quest rewarded for spellclick');
INSERT INTO `conditions` VALUES ('18', '33799', '62783', '0', '1', '8', '0', '13691', '0', '0', '0', '0', '', 'Required quest rewarded for spellclick');
INSERT INTO `conditions` VALUES ('18', '33798', '62787', '0', '2', '8', '0', '13710', '0', '0', '0', '0', '', 'Required quest rewarded for spellclick');
INSERT INTO `conditions` VALUES ('18', '33798', '62787', '0', '1', '8', '0', '13695', '0', '0', '0', '0', '', 'Required quest rewarded for spellclick');
INSERT INTO `conditions` VALUES ('18', '33796', '62784', '0', '2', '8', '0', '13708', '0', '0', '0', '0', '', 'Required quest rewarded for spellclick');
INSERT INTO `conditions` VALUES ('18', '33796', '62784', '0', '1', '8', '0', '13693', '0', '0', '0', '0', '', 'Required quest rewarded for spellclick');
INSERT INTO `conditions` VALUES ('18', '34125', '63215', '0', '14', '9', '0', '13864', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '34125', '63215', '0', '13', '9', '0', '13863', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '34125', '63215', '0', '12', '9', '0', '13862', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '34125', '63215', '0', '11', '9', '0', '13861', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '34125', '63215', '0', '10', '9', '0', '13860', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '34125', '63215', '0', '9', '9', '0', '13859', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '34125', '63215', '0', '8', '9', '0', '13858', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '34125', '63215', '0', '7', '9', '0', '13857', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '34125', '63215', '0', '6', '9', '0', '13856', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '34125', '63215', '0', '5', '9', '0', '13855', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '34125', '63215', '0', '4', '9', '0', '13854', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '34125', '63215', '0', '3', '9', '0', '13852', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '34125', '63215', '0', '2', '9', '0', '13851', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '34125', '63215', '0', '1', '9', '0', '13847', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '38248', '71462', '0', '0', '1', '0', '71443', '0', '0', '1', '0', '', 'Forbidden aura for spellclick');
INSERT INTO `conditions` VALUES ('18', '40176', '74904', '0', '0', '8', '0', '25444', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '40176', '74904', '0', '0', '9', '0', '25444', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '40176', '74905', '0', '0', '8', '0', '25444', '0', '0', '1', '0', '', 'Forbidden rewarded quest for spellclick');
INSERT INTO `conditions` VALUES ('18', '40176', '74905', '0', '0', '9', '0', '25444', '0', '0', '0', '0', '', 'Required quest active for spellclick');
INSERT INTO `conditions` VALUES ('18', '32790', '57654', '0', '2', '9', '0', '13073', '0', '0', '0', '0', '', 'Required quest active for spellclick');
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN(34125,26421,26477,28161,
31157,33790,33791,33792,33793,33794,33795,33796,33798,33799,33800,34944,29856,30564,29414,31269);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(26477,47096,2,0),
(26477,61286,2,0),
(26477,61832,0,0),
(29414,18277,1,0),
(29856,55363,2,0),
(31269,46598,1,0),
(33794,62782,1,0),
(28161,51037,2,0),
(28161,39996,1,0),
(30564,57401,1,0),
(34125,63215,1,0),
(34944,68458,1,0),
(33790,62781,1,0),
(33793,62780,1,0),
(33795,62779,1,0),
(33800,62774,1,0),
(33798,62787,1,0),
(31157,46598,1,0),
(26421,47575,1,0),
(28161,51961,1,0),
(33791,62786,1,0),
(33792,62785,1,0),
(33796,62784,1,0),
(33799,62783,1,0);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=29488 AND `SourceEntry`=54568;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,
`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`Comment`) VALUES
(18,29488,54568,15,8,0,12670,0,0,0,'Required quest rewarded for spellclick'),
(18,29488,54568,15,9,0,12670,0,0,0,'Required quest active for spellclick');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=29488 AND `SourceEntry`=54568;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,
`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`Comment`) VALUES
(18,29488,54568,1,8,0,12670,0,0,0,'Required quest rewarded for spellclick'),
(18,29488,54568,2,9,0,12670,0,0,0,'Required quest active for spellclick');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=29488 AND `SourceEntry`=54568;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,
`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`Comment`) VALUES
(18,29488,54568,1,8,0,12670,0,0,0,'Required quest rewarded for spellclick'),
(18,29488,54568,2,28,0,12670,0,0,0,'Required quest completed for spellclick');

# Conditions
REPLACE INTO `conditions` VALUES ('14', '7675', '9369', '0', '0', '8', '0', '10107', '0', '0', '0', '0', '', 'Show different gossip if player has rewarded quest 10107');
REPLACE INTO `conditions` VALUES ('14', '7675', '9369', '0', '1', '8', '0', '10108', '0', '0', '0', '0', '', 'Show different gossip if player has rewarded quest 10108');
REPLACE INTO `conditions` VALUES ('17', '0', '3607', '0', '0', '31', '1', '3', '2530', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '4132', '0', '0', '31', '1', '3', '2762', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '4131', '0', '0', '31', '1', '3', '2761', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '4130', '0', '0', '31', '1', '3', '2760', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '10617', '0', '0', '31', '1', '3', '7318', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '11610', '0', '0', '31', '1', '3', '7977', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '11885', '0', '0', '31', '1', '3', '7584', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '11886', '0', '0', '31', '1', '3', '5268', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '11886', '0', '1', '31', '1', '3', '5286', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '11887', '0', '0', '31', '1', '3', '5300', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '11887', '0', '1', '31', '1', '3', '5304', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '11887', '0', '2', '31', '1', '3', '5305', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '11887', '0', '3', '31', '1', '3', '5306', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '11888', '0', '0', '31', '1', '3', '5276', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '11888', '0', '1', '31', '1', '3', '5278', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '11889', '0', '0', '31', '1', '3', '5357', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '11889', '0', '1', '31', '1', '3', '5358', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '11889', '0', '2', '31', '1', '3', '14604', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '11889', '0', '3', '31', '1', '3', '14640', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '14247', '0', '0', '31', '1', '3', '9376', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '16627', '0', '0', '31', '1', '3', '4678', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '16627', '0', '1', '31', '1', '3', '4681', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '16627', '0', '2', '31', '1', '3', '4685', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '19512', '0', '0', '31', '1', '3', '12296', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '19512', '0', '1', '31', '1', '3', '12298', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '19548', '0', '0', '31', '1', '3', '1196', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '19674', '0', '0', '31', '1', '3', '1126', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '19687', '0', '0', '31', '1', '3', '1201', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '19688', '0', '0', '31', '1', '3', '2956', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '19689', '0', '0', '31', '1', '3', '2959', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '19692', '0', '0', '31', '1', '3', '2970', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '19694', '0', '0', '31', '1', '3', '3099', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '19696', '0', '0', '31', '1', '3', '3107', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '19697', '0', '0', '31', '1', '3', '3126', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '19693', '0', '0', '31', '1', '3', '1998', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '19699', '0', '0', '31', '1', '3', '2043', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '19700', '0', '0', '31', '1', '3', '1996', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '19938', '0', '0', '31', '1', '3', '10556', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '21050', '0', '0', '31', '1', '3', '13016', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '7211', '0', '0', '31', '1', '3', '6498', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '7211', '0', '1', '31', '1', '3', '6499', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '7211', '0', '2', '31', '1', '3', '6500', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '27907', '0', '0', '31', '1', '3', '15941', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '27907', '0', '1', '31', '1', '3', '15945', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '28516', '0', '0', '31', '1', '3', '16329', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '29528', '0', '0', '31', '1', '3', '16518', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '29314', '0', '0', '31', '1', '3', '16847', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '29364', '0', '0', '31', '1', '3', '16975', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '29435', '0', '0', '31', '1', '3', '17034', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '29917', '0', '0', '31', '1', '3', '17111', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '29917', '0', '1', '31', '1', '3', '17112', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '29917', '0', '2', '31', '1', '3', '17113', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '30077', '0', '0', '31', '1', '3', '17226', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '30099', '0', '0', '31', '1', '3', '15650', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '30102', '0', '0', '31', '1', '3', '15652', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '30105', '0', '0', '31', '1', '3', '16353', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '30646', '0', '0', '31', '1', '3', '17217', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '30653', '0', '0', '31', '1', '3', '17374', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '30654', '0', '0', '31', '1', '3', '17203', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '32001', '0', '0', '31', '1', '3', '17157', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '34219', '0', '0', '31', '1', '3', '18879', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '32578', '0', '0', '31', '1', '3', '20748', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '36310', '0', '0', '31', '1', '3', '20058', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '36314', '0', '0', '31', '1', '3', '20132', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '37221', '0', '0', '31', '1', '3', '21254', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '37320', '0', '0', '31', '1', '3', '21254', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '37322', '0', '0', '31', '1', '3', '21254', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '37323', '0', '0', '31', '1', '3', '21254', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '37136', '0', '0', '31', '1', '3', '21729', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '38177', '0', '0', '31', '1', '3', '21387', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '38510', '0', '0', '31', '1', '3', '20216', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '38554', '0', '0', '31', '1', '3', '19440', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '38606', '0', '0', '31', '1', '3', '21326', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '38915', '0', '0', '31', '1', '3', '16943', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '38915', '0', '1', '31', '1', '3', '20928', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '39371', '0', '0', '31', '1', '3', '22431', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '39371', '0', '1', '31', '1', '3', '22432', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '39810', '0', '0', '31', '1', '3', '22979', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '40742', '0', '0', '31', '1', '3', '23311', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '40856', '0', '0', '31', '1', '3', '22181', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '41291', '0', '0', '31', '1', '3', '22357', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '41621', '0', '0', '31', '1', '3', '23487', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '41985', '0', '0', '31', '1', '3', '21250', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '41985', '0', '1', '31', '1', '3', '23507', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '41985', '0', '2', '31', '1', '3', '23527', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '41985', '0', '3', '31', '1', '3', '23528', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '41985', '0', '4', '31', '1', '3', '23529', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '41985', '0', '5', '31', '1', '3', '23530', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '41985', '0', '6', '31', '1', '3', '23531', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '42325', '0', '0', '31', '1', '3', '4351', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '42325', '0', '1', '31', '1', '3', '4352', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '42411', '0', '0', '31', '1', '3', '4328', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '42411', '0', '1', '31', '1', '3', '4329', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '42411', '0', '2', '31', '1', '3', '4331', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '42489', '0', '0', '31', '1', '3', '4393', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '42489', '0', '1', '31', '1', '3', '4394', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '40969', '0', '0', '31', '1', '3', '23689', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43036', '0', '0', '31', '1', '3', '23661', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43036', '0', '1', '31', '1', '3', '23662', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43036', '0', '2', '31', '1', '3', '23663', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43036', '0', '3', '31', '1', '3', '23664', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43036', '0', '4', '31', '1', '3', '23665', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43036', '0', '5', '31', '1', '3', '23666', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43036', '0', '6', '31', '1', '3', '23667', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43036', '0', '7', '31', '1', '3', '23668', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43036', '0', '8', '31', '1', '3', '23669', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43036', '0', '9', '31', '1', '3', '23670', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43157', '0', '0', '31', '1', '3', '23777', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43286', '0', '0', '31', '1', '3', '23967', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43178', '0', '0', '31', '1', '3', '24016', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43178', '0', '1', '31', '1', '3', '24161', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43178', '0', '2', '31', '1', '3', '24162', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '49624', '0', '0', '31', '1', '3', '23678', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43354', '0', '0', '31', '1', '3', '23876', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43381', '0', '0', '31', '1', '3', '23564', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43381', '0', '1', '31', '1', '3', '24198', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43381', '0', '2', '31', '1', '3', '24199', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '49859', '0', '0', '31', '1', '3', '24345', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43666', '0', '0', '31', '1', '3', '24329', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43969', '0', '0', '31', '1', '3', '24514', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '50165', '0', '0', '31', '1', '3', '24669', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '44454', '0', '0', '31', '1', '3', '24786', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '44454', '0', '1', '31', '1', '3', '24804', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '44881', '0', '0', '31', '1', '3', '24922', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '44937', '0', '0', '31', '1', '3', '24918', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '44997', '0', '0', '31', '1', '3', '24972', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '45274', '0', '0', '31', '1', '3', '25226', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '45611', '0', '0', '31', '1', '3', '25316', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '45504', '0', '0', '31', '1', '3', '25321', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '45504', '0', '1', '31', '1', '3', '25322', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '45742', '0', '0', '31', '1', '3', '25430', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '45875', '0', '0', '31', '1', '3', '25596', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '45980', '0', '0', '31', '1', '3', '25814', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '46010', '0', '0', '31', '1', '3', '24469', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '46010', '0', '1', '31', '1', '3', '25789', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '46023', '0', '0', '31', '1', '3', '25752', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '46023', '0', '1', '31', '1', '3', '25753', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '46023', '0', '2', '31', '1', '3', '25758', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '46023', '0', '3', '31', '1', '3', '25792', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '46023', '0', '4', '31', '1', '3', '25793', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '53326', '0', '0', '31', '1', '3', '25791', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '46361', '0', '0', '31', '1', '3', '25582', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '46432', '0', '0', '31', '1', '3', '25752', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '46432', '0', '1', '31', '1', '3', '25753', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '46432', '0', '2', '31', '1', '3', '25758', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '46432', '0', '3', '31', '1', '3', '25792', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '46432', '0', '4', '31', '1', '3', '25793', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '46485', '0', '0', '31', '1', '3', '25814', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '46607', '0', '0', '31', '1', '3', '26127', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '47166', '0', '0', '31', '1', '3', '25623', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '47305', '0', '0', '31', '1', '3', '26293', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '47394', '0', '0', '31', '1', '3', '26261', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '47431', '0', '0', '31', '1', '3', '26359', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '47604', '0', '0', '31', '1', '3', '26417', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '50251', '0', '0', '31', '1', '3', '26411', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '47702', '0', '0', '31', '1', '3', '26926', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '47722', '0', '0', '31', '1', '3', '26283', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '47778', '0', '0', '31', '1', '3', '26812', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '46770', '0', '0', '31', '1', '3', '26616', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '46770', '0', '1', '31', '1', '3', '26643', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '48046', '0', '0', '31', '1', '3', '26408', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '48268', '0', '0', '31', '1', '3', '27202', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '48268', '0', '1', '31', '1', '3', '27203', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '48268', '0', '2', '31', '1', '3', '27206', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '48268', '0', '3', '31', '1', '3', '27211', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '48290', '0', '0', '31', '1', '3', '27206', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '48603', '0', '0', '31', '1', '3', '27209', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '48679', '0', '0', '31', '1', '3', '27202', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '48712', '0', '0', '31', '1', '3', '27234', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '48712', '0', '1', '31', '1', '3', '27235', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '48712', '0', '2', '31', '1', '3', '27236', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '48712', '0', '3', '31', '1', '3', '27237', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '48812', '0', '0', '31', '1', '3', '27463', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '48845', '0', '0', '31', '1', '3', '27482', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '49349', '0', '0', '31', '1', '3', '27530', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '49546', '0', '0', '31', '1', '3', '26369', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '49587', '0', '0', '31', '1', '3', '26841', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '49587', '0', '1', '31', '1', '3', '27122', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '49587', '0', '2', '31', '1', '3', '27808', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '50662', '0', '0', '31', '1', '3', '28133', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '50662', '0', '1', '31', '1', '3', '28141', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '50662', '0', '2', '31', '1', '3', '28143', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '50706', '0', '0', '31', '1', '3', '28068', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '50894', '0', '0', '31', '1', '3', '28145', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '50979', '0', '0', '31', '1', '3', '28127', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '50979', '0', '1', '31', '1', '3', '28213', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '51165', '0', '0', '31', '1', '3', '28274', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '51330', '0', '0', '31', '1', '3', '28054', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '51659', '0', '0', '31', '1', '3', '28379', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '51895', '0', '0', '31', '1', '3', '28404', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '51962', '0', '0', '31', '1', '3', '27986', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '51962', '0', '1', '31', '1', '3', '28047', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '51962', '0', '2', '31', '1', '3', '28568', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '52090', '0', '0', '31', '1', '3', '28465', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '52090', '0', '1', '31', '1', '3', '28600', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '52252', '0', '0', '31', '1', '3', '28750', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '52389', '0', '0', '31', '1', '3', '28802', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '52487', '0', '0', '31', '1', '3', '28843', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '52596', '0', '0', '31', '1', '3', '28851', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '52992', '0', '0', '31', '1', '3', '28086', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '52992', '0', '1', '31', '1', '3', '28096', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '52992', '0', '2', '31', '1', '3', '28109', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '52992', '0', '3', '31', '1', '3', '28110', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '53031', '0', '0', '31', '1', '3', '28028', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '53031', '0', '1', '31', '1', '3', '28029', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '53145', '0', '0', '31', '1', '3', '28877', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '53102', '0', '0', '31', '1', '3', '28931', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '54191', '0', '0', '31', '1', '3', '29124', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '6509', '0', '0', '31', '1', '3', '29392', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '52741', '0', '0', '31', '1', '3', '29329', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '52741', '0', '1', '31', '1', '3', '29330', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '52741', '0', '2', '31', '1', '3', '29333', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '52741', '0', '3', '31', '1', '3', '29338', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '54577', '0', '0', '31', '1', '3', '29402', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '20211', '0', '0', '31', '1', '3', '29621', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '30740', '0', '0', '31', '1', '3', '29790', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '55818', '0', '0', '31', '1', '3', '29375', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '55797', '0', '0', '31', '1', '3', '30035', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '55983', '0', '0', '31', '1', '3', '29974', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '55983', '0', '1', '31', '1', '3', '30135', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '23301', '0', '0', '31', '1', '3', '29880', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '23301', '0', '1', '31', '1', '3', '29915', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '23301', '0', '2', '31', '1', '3', '29919', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '23301', '0', '3', '31', '1', '3', '30037', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '23301', '0', '4', '31', '1', '3', '30243', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '23301', '0', '5', '31', '1', '3', '30250', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '23301', '0', '6', '31', '1', '3', '30332', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '23301', '0', '7', '31', '1', '3', '30632', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '23301', '0', '8', '31', '1', '3', '30725', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '56448', '0', '0', '31', '1', '3', '30142', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '56562', '0', '0', '31', '1', '3', '30292', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '56671', '0', '0', '31', '1', '3', '30275', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '56727', '0', '0', '31', '1', '3', '30422', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '56033', '0', '0', '31', '1', '3', '30146', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '57906', '0', '0', '31', '1', '3', '30829', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '57906', '0', '1', '31', '1', '3', '30830', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '57906', '0', '2', '31', '1', '3', '30831', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '57908', '0', '0', '31', '1', '3', '26631', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '57908', '0', '1', '31', '1', '3', '31350', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '58151', '0', '0', '31', '1', '3', '30894', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '58151', '0', '1', '31', '1', '3', '31323', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '60079', '0', '0', '31', '1', '3', '32189', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '60100', '0', '0', '31', '1', '3', '32201', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '5513', '0', '0', '31', '1', '3', '32236', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '60983', '0', '0', '31', '1', '3', '30164', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '60428', '0', '0', '31', '1', '3', '32467', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '62105', '0', '0', '31', '1', '3', '29319', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '62105', '0', '1', '31', '1', '3', '29327', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '62767', '0', '0', '31', '1', '3', '33303', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '63124', '0', '0', '31', '1', '3', '33498', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '66474', '0', '0', '31', '1', '3', '29618', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '66588', '0', '0', '31', '1', '3', '34925', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '66588', '0', '1', '31', '1', '3', '35092', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '66719', '0', '0', '31', '1', '3', '32149', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '10617', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '11885', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '11886', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '11886', '0', '1', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '11887', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '11887', '0', '1', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '11887', '0', '2', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '11887', '0', '3', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '11888', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '11888', '0', '1', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '11889', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '11889', '0', '1', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '11889', '0', '2', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '11889', '0', '3', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '42411', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '42411', '0', '1', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '42411', '0', '2', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43036', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43036', '0', '1', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43036', '0', '2', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43036', '0', '3', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43036', '0', '4', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43036', '0', '5', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43036', '0', '6', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43036', '0', '7', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43036', '0', '8', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43036', '0', '9', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43286', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43178', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43178', '0', '1', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43178', '0', '2', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43354', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '43666', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '44997', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '45274', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '45742', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '45980', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '46023', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '46023', '0', '1', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '46023', '0', '2', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '46023', '0', '3', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '46023', '0', '4', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '46485', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '47166', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '46770', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '46770', '0', '1', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '48046', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '48268', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '48268', '0', '1', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '48268', '0', '2', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '48268', '0', '3', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '48290', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '51895', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '52090', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '52090', '0', '1', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '52992', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '52992', '0', '1', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '52992', '0', '2', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '52992', '0', '3', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '53145', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '54191', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '6509', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '52741', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '52741', '0', '1', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '52741', '0', '2', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '52741', '0', '3', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '55983', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '55983', '0', '1', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '23301', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '23301', '0', '1', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '23301', '0', '2', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '23301', '0', '3', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '23301', '0', '4', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '23301', '0', '5', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '23301', '0', '6', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '23301', '0', '7', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '23301', '0', '8', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '57908', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '57908', '0', '1', '36', '1', '0', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('17', '0', '60428', '0', '0', '36', '1', '0', '0', '0', '1', '0', '', null);

# NeatElves
UPDATE `creature_template` SET `gossip_menu_id`='7608' WHERE `entry`=18015;
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (7608,9259);
UPDATE `creature_template` SET `gossip_menu_id`='4510' WHERE `entry`=3408;
UPDATE gossip_menu SET `entry`='4510' WHERE `entry`=50205;
UPDATE gossip_menu_option SET menu_id = 4510 WHERE menu_id = 50205;
UPDATE locales_gossip_menu_option SET menu_id = 4510 WHERE `menu_id` =50205;
UPDATE `gossip_menu_option` SET `id`='0' WHERE `menu_id`=6214 AND `id`=1;
UPDATE `locales_gossip_menu_option` SET `id`='0' WHERE `menu_id`=6214 AND `id`=1;
UPDATE `gossip_menu_option` SET `id`='0' WHERE `menu_id`=7615 AND `id`=1;
DELETE FROM `creature_questrelation` WHERE `id` in (15350,32615,15351,32626);
DELETE FROM `creature_involvedrelation` WHERE `id` in (15350,32615,15351,32626);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 6598 AND `id` = 0;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 6597 AND `id` = 0;
UPDATE `creature_template` SET `npcflag`=`npcflag`&~2 WHERE `entry` in (15350,32615,15351,32626);
UPDATE `creature_template` SET `faction_A`='80', `faction_H`='80' WHERE `entry`=11696;
UPDATE `creature_template` SET `npcflag`=`npcflag`&~1 WHERE `entry` in (11696);
UPDATE `creature_template` SET `InhabitType`='4' WHERE `entry`=7455;
UPDATE `locales_npc_text` SET `Text0_0_loc8` = NULL WHERE `Text0_0_loc8` = '';
UPDATE `locales_npc_text` SET `Text0_1_loc8` = NULL WHERE `Text0_1_loc8` = '';
UPDATE `locales_npc_text` SET `Text1_0_loc8` = NULL WHERE `Text1_0_loc8` = '';
UPDATE `locales_npc_text` SET `Text1_1_loc8` = NULL WHERE `Text1_1_loc8` = '';
UPDATE `locales_npc_text` SET `Text2_0_loc8` = NULL WHERE `Text2_0_loc8` = '';
UPDATE `locales_npc_text` SET `Text2_1_loc8` = NULL WHERE `Text2_1_loc8` = '';
UPDATE `locales_npc_text` SET `Text3_0_loc8` = NULL WHERE `Text3_0_loc8` = '';
UPDATE `locales_npc_text` SET `Text3_1_loc8` = NULL WHERE `Text3_1_loc8` = '';
UPDATE `locales_npc_text` SET `Text4_0_loc8` = NULL WHERE `Text4_0_loc8` = '';
UPDATE `locales_npc_text` SET `Text4_1_loc8` = NULL WHERE `Text4_1_loc8` = '';
UPDATE `locales_npc_text` SET `Text5_0_loc8` = NULL WHERE `Text5_0_loc8` = '';
UPDATE `locales_npc_text` SET `Text5_1_loc8` = NULL WHERE `Text5_1_loc8` = '';
UPDATE `locales_npc_text` SET `Text6_0_loc8` = NULL WHERE `Text6_0_loc8` = '';
UPDATE `locales_npc_text` SET `Text6_1_loc8` = NULL WHERE `Text6_1_loc8` = '';
UPDATE `locales_npc_text` SET `Text7_0_loc8` = NULL WHERE `Text7_0_loc8` = '';
UPDATE `locales_npc_text` SET `Text7_1_loc8` = NULL WHERE `Text7_1_loc8` = '';
UPDATE `locales_gossip_menu_option` SET `box_text_loc8`=NULL WHERE `box_text_loc8`='';
UPDATE `gossip_menu_option` SET `box_text`=NULL WHERE `box_text`='';
UPDATE `creature_template` SET `spell1`='0', `ScriptName`='' WHERE `entry` in (17204,17658,5905);
DELETE FROM `pickpocketing_loot_template` WHERE `item` = 25433;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='35' WHERE `item`=25433;
UPDATE `creature` SET `id`='33211' WHERE `guid` in (129881,129880);
UPDATE `creature` SET `spawntimesecs`='15' WHERE `id`=33211;
DELETE FROM `spell_area` WHERE `spell` = 62574;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(94944, 33224, 571, 1, 1, 0, 0, 3749.25, -4306.49, 181.612, 4.85941, 60, 5, 0, 1, 120, 1),
(94945, 33224, 571, 1, 1, 0, 0, 3788.91, -4342.29, 181.496, 0.508298, 60, 5, 0, 1, 120, 1),
(94946, 33224, 571, 1, 1, 0, 0, 3730.27, -4300.56, 182.257, 0.817285, 60, 5, 0, 1, 120, 1),
(94947, 33224, 571, 1, 1, 0, 0, 3712.97, -4301.96, 182.882, 2.34591, 60, 5, 0, 1, 120, 1),
(94948, 33224, 571, 1, 1, 0, 0, 3772.44, -4306.68, 184.075, 3.56133, 60, 5, 0, 1, 120, 1),
(94949, 33224, 571, 1, 1, 0, 0, 3756.24, -4302.3, 181.72, 3.36517, 60, 5, 0, 1, 120, 1),
(94950, 33224, 571, 1, 1, 0, 0, 3746.83, -4301.16, 181.845, 2.52243, 60, 5, 0, 1, 120, 1),
(95325, 33224, 571, 1, 1, 0, 0, 3791.96, -4335.24, 180.627, 2.74927, 60, 5, 0, 1, 120, 1),
(99798, 33224, 571, 1, 1, 0, 0, 3806.21, -4344.59, 180.806, 1.34619, 60, 5, 0, 1, 120, 1),
(127678, 33224, 571, 1, 1, 0, 0, 3807.2, -4354.72, 181.681, 1.24928, 60, 5, 0, 1, 120, 1),
(127679, 33224, 571, 1, 1, 0, 0, 3789.06, -4322.4, 183.95, 1.86524, 60, 5, 0, 1, 120, 1),
(127680, 33224, 571, 1, 1, 0, 0, 3802.25, -4334.69, 183.056, 0.985268, 60, 5, 0, 1, 120, 1),
(127681, 33224, 571, 1, 1, 0, 0, 3779.12, -4320.42, 180.95, 0.935185, 60, 5, 0, 1, 120, 1),
(127682, 33224, 571, 1, 1, 0, 0, 3772.65, -4314.66, 180.2, 0.618314, 60, 5, 0, 1, 120, 1);
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('241', '1', 'Npc 33224, 33211'), ('242', '1', 'Npc 33224, 33211');
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('243', '1', 'Npc 33224, 33211'), ('244', '1', 'Npc 33224, 33211');
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('245', '1', 'Npc 33224, 33211'), ('246', '1', 'Npc 33224, 33211');
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('247', '1', 'Npc 33224, 33211'), ('248', '1', 'Npc 33224, 33211');
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('249', '1', 'Npc 33224, 33211'), ('250', '1', 'Npc 33224, 33211');
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('251', '1', 'Npc 33224, 33211'), ('252', '1', 'Npc 33224, 33211');
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES ('253', '1', 'Npc 33224, 33211'), ('254', '1', 'Npc 33224, 33211');
REPLACE INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES ('129881', '241', '0', 'Npc 33211'), ('94944', '241', '10', 'Npc 33224');
REPLACE INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES ('129880', '242', '0', 'Npc 33211'), ('94945', '242', '10', 'Npc 33224');
REPLACE INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES ('115916', '243', '0', 'Npc 33211'), ('94946', '243', '10', 'Npc 33224');
REPLACE INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES ('115917', '244', '0', 'Npc 33211'), ('94947', '244', '10', 'Npc 33224');
REPLACE INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES ('115918', '245', '0', 'Npc 33211'), ('94948', '245', '10', 'Npc 33224');
REPLACE INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES ('115919', '246', '0', 'Npc 33211'), ('94949', '246', '10', 'Npc 33224');
REPLACE INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES ('115920', '247', '0', 'Npc 33211'), ('94950', '247', '10', 'Npc 33224');
REPLACE INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES ('115921', '248', '0', 'Npc 33211'), ('95325', '248', '10', 'Npc 33224');
REPLACE INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES ('115922', '249', '0', 'Npc 33211'), ('99798', '249', '10', 'Npc 33224');
REPLACE INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES ('115923', '250', '0', 'Npc 33211'), ('127678', '250', '10', 'Npc 33224');
REPLACE INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES ('115924', '251', '0', 'Npc 33211'), ('127679', '251', '10', 'Npc 33224');
REPLACE INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES ('115925', '252', '0', 'Npc 33211'), ('127680', '252', '10', 'Npc 33224');
REPLACE INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES ('115926', '253', '0', 'Npc 33211'), ('127681', '253', '10', 'Npc 33224');
REPLACE INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES ('115927', '254', '0', 'Npc 33211'), ('127682', '254', '10', 'Npc 33224');
UPDATE `creature_ai_scripts` SET `action2_type`='21' WHERE `id`=3322051;
REPLACE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(3322052, 33220, 1, 0, 100, 0, 55000, 56000, 0, 0, 1, -332202, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb');
REPLACE INTO `creature_ai_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(-332202, 'And now, I must return to the waters of the lake.', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 'ytdb');
DELETE FROM `gameobject_loot_template` WHERE `entry` = 194340 AND `item` = 45062;
DELETE FROM gameobject WHERE guid = '72056';
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE `id` in (31236,31229,33422,31233,31228,33499,31403);
UPDATE creature SET position_x = '5424.145020', position_y = '401.917145', position_z = '167.945312', orientation = '5.967615' WHERE guid = '130054';
UPDATE creature SET position_x = '5424.099121', position_y = '434.446991', position_z = '169.291306', orientation = '1.520690' WHERE guid = '127735';
UPDATE creature SET position_x = '5444.089844', position_y = '434.033447', position_z = '165.555313', orientation = '0.875093' WHERE guid = '127734';
UPDATE creature SET position_x = '5485.949707', position_y = '427.895782', position_z = '163.299744', orientation = '4.918323' WHERE guid = '127730';
UPDATE creature SET position_x = '5502.888672', position_y = '443.296844', position_z = '162.868454', orientation = '6.204021' WHERE guid = '127731';
UPDATE creature SET position_x = '5515.604004', position_y = '469.351624', position_z = '161.065033', orientation = '0.253059' WHERE guid = '127732';
UPDATE creature SET position_x = '5487.376465', position_y = '482.522949', position_z = '164.250916', orientation = '2.595902' WHERE guid = '127728';
UPDATE creature SET position_x = '5456.859375', position_y = '473.850983', position_z = '164.537277', orientation = '3.031798' WHERE guid = '127729';
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(127683,33537,571,1,1,0,0,9082.11,2060.1,67.4166,3.6709,180,0,0,12600,0,0),(127684,33537,571,1,1,0,0,9073.24,2043.05,67.8435,0.992695,180,0,0,12600,0,0),(127685,33537,571,1,1,0,0,9069.62,2078.67,66.9822,1.83543,180,0,0,12600,0,2);
UPDATE creature SET position_x = '9074.741211', position_y = '2049.062988', position_z = '67.278084', orientation = '2.191997' WHERE guid = '127684';
UPDATE creature SET position_x = '9037.719727', position_y = '2115.381836', position_z = '52.302624', orientation = '0.118548' WHERE guid = '127685';
UPDATE `creature_template_addon` SET `bytes1`='1' WHERE `entry`=34794;
DELETE FROM gameobject WHERE guid = '73238';
INSERT INTO gameobject VALUES ( 73238, 194539, 571, 1,1,8441.49, 450.144, 596.07, 1.45332, 0, 0, 0.664377, 0.747398, 0, 100, 1);
DELETE FROM gameobject WHERE guid = '73240';
INSERT INTO gameobject VALUES ( 73240, 194538, 571, 1,1,8471.59, 449.475, 596.072, 1.45725, 0, 0, 0.665844, 0.746091, 0, 100, 1);
DELETE FROM gameobject WHERE guid = '73239';
INSERT INTO gameobject VALUES ( 73239, 194537, 571, 1,1,8461.64, 466.649, 596.072, 1.54364, 0, 0, 0.697441, 0.716642, 0, 100, 1);
UPDATE `creature_template_addon` SET `auras`='51195 29266' WHERE `entry`=33439;
UPDATE `creature_template_addon` SET `auras`='29266 41290' WHERE `entry`=33455;
UPDATE `gameobject` SET `spawntimesecs`='-180' WHERE `guid`=16031;
UPDATE `gameobject` SET `spawntimesecs`='-180' WHERE `guid`=16226;
DELETE FROM `event_scripts` WHERE `id` in (21077,21075,21076);
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(21077, 0, 10, 33439, 30000, 0, 8461.7, 468.58, 596.072, 4.63618),
(21076, 0, 10, 33457, 30000, 0, 8471.26, 452.094, 596.072, 4.73278),
(21075, 0, 10, 33455, 30000, 0, 8441.61, 452.456, 596.072, 2.01059),
(21076, 0, 9, 16031, 30, 0, 0, 0, 0, 0),
(21075, 0, 9, 16226, 30, 0, 0, 0, 0, 0);
DELETE FROM `creature_ai_scripts` WHERE `id` = 3349851;
UPDATE `creature_template` SET `AIName`='' WHERE `entry`=33498;
UPDATE `creature_template` SET `gossip_menu_id`='3130' WHERE `entry`=10618;
UPDATE `gossip_menu_option` SET `id`='0' WHERE `menu_id`=7469 AND `id`=1;
UPDATE `locales_gossip_menu_option` SET `id`='0' WHERE `menu_id`=7469 AND `id`=1;
UPDATE `creature_template` SET `gossip_menu_id`='12502' WHERE `entry`=11079;
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (12502,17586);
UPDATE `creature_template` SET `gossip_menu_id`='7236' WHERE `entry`=16399;
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (7236,8536);
UPDATE `creature_template` SET `gossip_menu_id`='0', `npcflag`='2' WHERE `entry`=33648;
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (9631,13031);
# надо по квесту убит 3 нпц, по одному каждого вида, убил гномерегана - у него этот текст, как добавить по условию ?)
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (10464,14492);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (10465,14492);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (10466,14492);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (10467,14492);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (10471,14492);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (10468,14489);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (10469,14489);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (10470,14489);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (10472,14489);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (10473,14489);
DELETE FROM `creature` WHERE `guid` = 52895;
UPDATE `creature_template_addon` SET `auras`=NULL WHERE `entry`=10556;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(92101, 4065, 0, 1, 1, 0, 0, -9283.71, -3027.75, 120.66, 1.28981, 300, 5, 0, 521, 0, 1),
(92102, 4065, 0, 1, 1, 0, 0, -9392.3, -3017.34, 136.81, 3.45104, 300, 5, 0, 521, 0, 1),
(4547, 4065, 0, 1, 1, 0, 0, -9308.72, -2942.36, 128.656, 4.43853, 300, 0, 0, 521, 0, 2),
(94942, 4065, 0, 1, 1, 0, 0, -9337.76, -3025.9, 135.564, 2.82787, 300, 5, 0, 521, 0, 1),
(94943, 4065, 0, 1, 1, 0, 0, -9278.73, -2939.37, 134.909, 1.10709, 300, 5, 0, 521, 0, 1);
DELETE FROM `creature` WHERE `guid` in (127746,127742,127745,127747,127743,127744,127728,127729,127730,127731,127732,127733,127734,127735);
UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE `id` in (33499);
UPDATE `creature_template` SET `spell1`='0', `ScriptName`='' WHERE `entry`=11260;
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE `id` in (27357,27367);
UPDATE creature SET position_x = '5455.783691', position_y = '425.591888', position_z = '164.255173', orientation = '0.671465' WHERE guid = '127736';
UPDATE creature SET position_x = '5427.031250', position_y = '441.722687', position_z = '169.265457', orientation = '3.188671' WHERE guid = '127740';
UPDATE creature SET position_x = '5456.755371', position_y = '463.464386', position_z = '164.964340', orientation = '1.035896' WHERE guid = '127739';
UPDATE creature SET position_x = '5403.619141', position_y = '369.978607', position_z = '168.969223', orientation = '6.174750' WHERE guid = '127741';
UPDATE creature SET position_x = '5426.360352', position_y = '359.055603', position_z = '163.375443', orientation = '5.021790' WHERE guid = '127738';
UPDATE creature SET position_x = '5470.620117', position_y = '374.517426', position_z = '158.252075', orientation = '4.994304' WHERE guid = '127737';
DELETE FROM `creature_ai_scripts` WHERE `id` = 3327351;
DELETE FROM `creature_ai_scripts` WHERE `id` = 3327352;
DELETE FROM `creature_ai_scripts` WHERE `id` = 3327353;
DELETE FROM `creature_ai_scripts` WHERE `id` = 3327354;
DELETE FROM `creature_ai_scripts` WHERE `id` = 3327355;
DELETE FROM `creature_ai_texts` WHERE `entry` = -332734;
DELETE FROM `creature_ai_texts` WHERE `entry` = -332733;
DELETE FROM `creature_ai_texts` WHERE `entry` = -332732;
DELETE FROM `creature_ai_texts` WHERE `entry` = -332731;
UPDATE `creature_template` SET `AIName`='' WHERE `entry`=33273;
REPLACE INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
('2000000599', 'Are those winter hyacinths? For me?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), 
('2000000600', 'It''s been so long since a traveler has come here bearing flowers.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2000000601', 'The lake has been too lonely these past years. The travelers stopped coming and evil came to these waters.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), 
('2000000602', 'Your gift is a rare kindness, traveler. Please take this blade with my gratitude. Long ago, another traveler left it here, but I have little use for it.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE `id` in (27357,27367);
DELETE FROM `event_scripts` WHERE `id` in (20990);
UPDATE `gameobject` SET `position_z`='156.85' WHERE `guid`=143;
UPDATE `gameobject` SET `position_z`='157.1' WHERE `guid`=71552;
UPDATE `creature_template_addon` SET `bytes1`='1', `emote`='0' WHERE `entry`=33273;
UPDATE creature SET position_x = '3475.163330', position_y = '-2817.673584', position_z = '201.293289', orientation = '5.287273' WHERE guid = '130264';
UPDATE creature SET position_x = '3495.739014', position_y = '-2836.986084', position_z = '202.368881', orientation = '6.207765' WHERE guid = '116631';
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(20990, 15, 9, 71552, 45, 0, 0, 0, 0, 0),
(20990, 0, 9, 143, 60, 0, 0, 0, 0, 0),
(20990, 0, 10, 33273, 55000, 0, 4535.06, -1605.02, 157.1, 0.361706),
(20990, 0, 0, 0, 33273, 2000000599, 0, 0, 0, 0),
(20990, 4, 0, 0, 33273, 2000000600, 0, 0, 0, 0),
(20990, 8, 0, 0, 33273, 2000000601, 0, 0, 0, 0),
(20990, 14, 0, 0, 33273, 2000000602, 0, 0, 0, 0);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
(127728,33778,571,1,1,0,0,8508.99,1191.04,604.339,6.21327,180,0,0,36525,0,0),
(127729,33778,571,1,1,0,0,8488.2,1184.87,604.339,4.32832,180,0,0,36525,0,0),
(127730,33778,571,1,1,0,0,8484.85,1196.8,604.339,3.25546,180,0,0,36525,0,0),
(127731,33778,571,1,1,0,0,8617.36,571.136,586.303,3.495,180,0,0,36525,0,0),
(127732,33778,571,1,1,0,0,8635.54,582.817,586.304,1.56842,180,0,0,36525,0,0),
(127733,33778,571,1,1,0,0,8642.41,571.696,586.304,0.43745,180,0,0,36525,0,0);
UPDATE creature SET position_x = '8619.045898', position_y = '936.341064', position_z = '547.690552', orientation = '2.953075' WHERE guid = '98215';
UPDATE `gameobject` SET `spawntimesecs`='-180' WHERE `guid`=73044;
UPDATE `gameobject` SET `spawntimesecs`='-180' WHERE `guid`=73045;
UPDATE `gameobject` SET `spawntimesecs`='-180' WHERE `guid`=73046;
UPDATE `gameobject` SET `spawntimesecs`='-180', `animprogress`='0' WHERE `guid`=73047;
UPDATE `creature_template` SET `unit_flags`='33587200', `InhabitType`='5', `flags_extra`='2' WHERE `entry`=28253;
DELETE FROM `event_scripts` WHERE `id` in (18475,18474);
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`) VALUES
(18474, 6, 7, 12537, 0),
(18475, 0, 9, 73045, 30),
(18475, 0, 9, 73044, 30),
(18475, 0, 9, 73046, 30),
(18475, 0, 9, 73047, 30);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
(127734,33291,571,1,1,0,0,5123.83,-52.4984,347.385,0.476944,60,0,0,1,60,0),
(127735,33291,571,1,1,0,0,5121.65,-69.795,347.452,5.9818,60,0,0,1,60,0),
(127742,33291,571,1,1,0,0,5153.52,-80.5957,347.407,3.07425,60,0,0,1,60,0),
(127743,33291,571,1,1,0,0,5125.86,-102.365,347.593,1.22621,60,0,0,1,60,0),
(127744,33291,571,1,1,0,0,5158.67,-56.4608,347.322,2.9211,60,0,0,1,60,0),
(127745,33291,571,1,1,0,0,5113.93,-36.257,347.858,0.318293,60,0,0,1,60,0),
(127746,33291,571,1,1,0,0,5119.33,-22.3762,347.312,5.2451,60,0,0,1,60,0),
(127747,33291,571,1,1,0,0,5143.1,-18.4616,347.322,4.47383,60,0,0,1,60,0),
(127686,33291,571,1,1,0,0,5160.8,-25.8661,347.322,3.46774,60,0,0,1,60,0);
DELETE FROM `spell_scripts` WHERE `id` in (62767);
REPLACE INTO `spell_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
('62767', '0', '14', '45776', '0', '0', '0', '0', '0', '0'), 
('62767', '2', '0', '0', '33303', '2000000603', '0', '0', '0', '0'),
('62767', '10', '15', '45776', '2', '0', '0', '0', '0', '0'), 
('62767', '5', '0', '0', '33303', '2000000604', '0', '0', '0', '0');
REPLACE INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
('2000000604', 'It has brought me naught but ill. Mayhap you can find someone who will contain its power.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL), 
('2000000603', 'Thank you, mortal, for freeing me from this curse. I beg you, take this blade', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
UPDATE `creature_template_addon` SET `auras`='22650' WHERE `entry`=32149;
UPDATE `creature_template` SET `gossip_menu_id`='685' WHERE `entry`=1289;
UPDATE `creature_template` SET `gossip_menu_id`='12128' WHERE `entry`=9503;
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES (12128, 17034);
UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE `guid`=75128;
DELETE FROM `gossip_menu` WHERE `entry` = 33477;
UPDATE `gossip_menu_option` SET `action_menu_id`='7425' WHERE `menu_id`=7370 AND `id`=0;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE `item`=23757;
REPLACE INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
('2000000605', 'As soon as the neutralizing agent is mixed with the waters of the lake, water, contaminated crystal, seems to have cleared.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
UPDATE `creature` SET `spawntimesecs`='30', `spawndist`='0', `MovementType`='0' WHERE `id`=16922;
DELETE FROM `event_scripts` WHERE `id` in (13021);
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(13021, 0, 0, 2, 0, 2000000605, 0, 0, 0, 0);
# npc 16922 despawn, нет команды
DELETE FROM creature WHERE guid=112314;
DELETE FROM creature WHERE guid=112310;
DELETE FROM creature WHERE guid=112315;
DELETE FROM creature WHERE guid=112319;
UPDATE creature SET position_x = '5779.123047', position_y = '204.976822', position_z = '181.682709', orientation = '4.250337' WHERE guid = '127713';
DELETE FROM creature WHERE guid=111097;
DELETE FROM creature WHERE guid=127727;
DELETE FROM creature WHERE guid=127725;
DELETE FROM creature WHERE guid=127720;
DELETE FROM creature WHERE guid=127719;
DELETE FROM creature WHERE guid=127724;
DELETE FROM creature WHERE guid=127721;
DELETE FROM creature WHERE guid=127722;
UPDATE creature SET position_x = '5837.558105', position_y = '576.595215', position_z = '177.538101', orientation = '3.318052' WHERE guid = '127717';
UPDATE creature SET position_x = '5782.634766', position_y = '926.963440', position_z = '158.768631', orientation = '3.616502' WHERE guid = '112318';
UPDATE creature SET position_x = '5447.742188', position_y = '395.050476', position_z = '167.945740', orientation = '1.795957' WHERE guid = '112320';
DELETE FROM creature WHERE guid=112309;
DELETE FROM creature WHERE guid=112307;
DELETE FROM creature WHERE guid=112312;
UPDATE creature SET position_x = '5738.099121', position_y = '174.121552', position_z = '181.606323', orientation = '0.458434' WHERE guid = '127700';
UPDATE creature SET position_x = '5604.433594', position_y = '125.379807', position_z = '150.705765', orientation = '4.157661' WHERE guid = '112311';
UPDATE creature SET position_x = '5712.291016', position_y = '112.166061', position_z = '168.346069', orientation = '0.097937' WHERE guid = '127699';
UPDATE creature SET position_x = '5800.292480', position_y = '145.030563', position_z = '181.802673', orientation = '2.535821' WHERE guid = '112308';
UPDATE `creature` SET `spawndist`='5', `MovementType`='1' WHERE `id`=31231;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-33' WHERE `item`=43225;
UPDATE `gossip_menu_option` SET `id`='0' WHERE `menu_id`=1802 AND `id`=1;
UPDATE `locales_gossip_menu_option` SET `id`='0' WHERE `menu_id`=1802 AND `id`=1;
UPDATE `gossip_menu_option` SET `option_text`='Buy somethin'', will ya?' WHERE `menu_id`=1802 AND `id`=0;
UPDATE `gossip_menu_option` SET `id`='0' WHERE `menu_id`=7517 AND `id`=1;
UPDATE `gossip_menu_option` SET `id`='0' WHERE `menu_id`=7471 AND `id`=1;
UPDATE `locales_gossip_menu_option` SET `id`='0' WHERE `menu_id`=7471 AND `id`=1;
UPDATE `gossip_menu_option` SET `id`='0' WHERE `menu_id`=7459 AND `id`=1;
UPDATE `locales_gossip_menu_option` SET `id`='0' WHERE `menu_id`=7459 AND `id`=1;
UPDATE `gossip_menu_option` SET `id`='0' WHERE `menu_id`=7470 AND `id`=1;
UPDATE `locales_gossip_menu_option` SET `id`='0' WHERE `menu_id`=7470 AND `id`=1;
# REPLACE INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
# ('2000000606', 'Treacherous whelp! Sironas will destroy you and your people!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
DELETE FROM `creature` WHERE `guid` = 122679;
UPDATE `quest_template` SET `RequiredRaces`='1024' WHERE `id` in (9753,9756,9760,9761);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-50' WHERE `entry`=17606 AND `item`=24236;
UPDATE `quest_template` SET `PrevQuestId`='9703' WHERE `id`=9753;
UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE `guid`=68629;
UPDATE `gossip_menu_option` SET `id`='0' WHERE `menu_id`=7833 AND `id`=1;
UPDATE `locales_gossip_menu_option` SET `id`='0' WHERE `menu_id`=7833 AND `id`=1;
UPDATE `gossip_menu_option` SET `id`='0' WHERE `menu_id`=7455 AND `id`=1;
UPDATE `locales_gossip_menu_option` SET `id`='0' WHERE `menu_id`=7455 AND `id`=1;
UPDATE `quest_template` SET `RequiredRaces`='1024' WHERE `id` in (9753,9756,9760,9761);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-50' WHERE `entry`=17606 AND `item`=24236;
UPDATE `quest_template` SET `PrevQuestId`='9703' WHERE `id`=9753;
UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE `guid`=68629;
UPDATE `gossip_menu_option` SET `id`='0' WHERE `menu_id`=7833 AND `id`=1;
UPDATE `locales_gossip_menu_option` SET `id`='0' WHERE `menu_id`=7833 AND `id`=1;
UPDATE `gossip_menu_option` SET `id`='0' WHERE `menu_id`=7455 AND `id`=1;
UPDATE `locales_gossip_menu_option` SET `id`='0' WHERE `menu_id`=7455 AND `id`=1;
UPDATE `quest_template` SET `PrevQuestId`='13700' WHERE `id` in (13789,13790,13861);
UPDATE `quest_template` SET `PrevQuestId`='13701' WHERE `id` in (13810,13811,13862);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='50', `maxcount`='3' WHERE `item`=20384;
DELETE FROM `creature_loot_template` WHERE `entry` = 5357 AND `item` = 18956;
DELETE FROM `creature_loot_template` WHERE `entry` = 5358 AND `item` = 18956;
DELETE FROM `creature_loot_template` WHERE `entry` = 5359 AND `item` = 18956;
DELETE FROM `creature_loot_template` WHERE `entry` = 5360 AND `item` = 18956;
DELETE FROM `creature_loot_template` WHERE `entry` = 5361 AND `item` = 18956;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='100' WHERE `item`=18956;
DELETE FROM `creature_loot_template` WHERE `entry` = 14529 AND `item` = 18953;
DELETE FROM `creature_loot_template` WHERE `entry` = 14527 AND `item` = 18952;
DELETE FROM `creature_loot_template` WHERE `entry` = 14536 AND `item` = 18954;
DELETE FROM `creature_loot_template` WHERE `entry` = 14531 AND `item` = 18955;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-100' WHERE `item` in (17684,24487,24488,24514);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-100' WHERE `entry`=10503 AND `item`=13725;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='100' WHERE `item` in (20514,20515);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-20' WHERE `item`=22224;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE `item` in (22373,22374,22375,22376,22570,24426,24427);
DELETE FROM `creature_loot_template` WHERE `item` in (23205,25756,41337,30713);
DELETE FROM `creature_loot_template` WHERE `entry` = 16807 AND `item` = 25462;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-40' WHERE `entry`=23929 AND `item`=33337;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-100' WHERE `entry`=25514 AND `item`=34804;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 187689 AND `item` = 34802;
DELETE FROM `creature_loot_template` WHERE `entry` = 34106 AND `item` = 39682;
DELETE FROM `reference_loot_template` WHERE `entry` = 39681 AND `item` = 39684;
UPDATE `reference_loot_template` SET `groupid`='0' WHERE `entry`=39681 AND `item`=49050;
DELETE FROM `reference_loot_template` WHERE `entry` = 39681 AND `item` = 39686;
UPDATE `reference_loot_template` SET `groupid` = '0' WHERE `entry` = 39681;
UPDATE `creature_loot_template` SET `maxcount`='20' WHERE `entry`=34106;
UPDATE `creature_loot_template` SET `maxcount`='20' WHERE `entry`=33432;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-33' WHERE `item`=36957;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-15' WHERE `item`=37010;
DELETE FROM `creature_loot_template` WHERE `entry` = 26644 AND `item` = 37200;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-20' WHERE `entry`=27131 AND `item`=37200;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-50' WHERE `item`=37251;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-35' WHERE `item`=37882;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 21779;
UPDATE `creature_template` SET `pickpocketloot`='0' WHERE `entry`=21779;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-100' WHERE `item`=30442;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='5' WHERE `item`=11754;
DELETE FROM `skinning_loot_template` WHERE `entry` = 34192;
DELETE FROM `skinning_loot_template` WHERE `entry` = 34216;
DELETE FROM `skinning_loot_template` WHERE `entry` = 36;
UPDATE `creature_template` SET `skinloot`='0' WHERE `entry` in (36,34192,34216);
DELETE FROM `reference_loot_template` WHERE `entry` in (39681,36811,35623);
DELETE FROM `skinning_loot_template` WHERE `entry` in (25752,25753,25758,25766,25792,25793,25814,26677,27641,27970,27971,27972,28835,29380,29382,29384,29389,29724,29861,30063,30353,30905,30971,31383,31385,31387,32358,32500,33216,33343,33344,33346,33886,33887,33888,34183,34191,34193,34214,34217,34220,34267,34268,34269,34270,34271,34272,34273,34274);
UPDATE `creature_template` SET `skinloot`='25752' WHERE `entry` in (25752,25753,25758,25766,25792,25793,25814,26677,27641,27970,27971,27972,28835,29380,29382,29384,29389,29724,29861,30063,30353,30905,30971,31383,31385,31387,32358,32500,33216,33343,33344,33346,33886,33887,33888,34183,34191,34193,34214,34217,34220,34267,34268,34269,34270,34271,34272,34273,34274);
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(25752, 36811, 100, 0, -36811, 1),
(25752, 39681, 10, 0, -39681, 1),
(25752, 49050, 1, 0, 1, 1);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(36811, 36811, 0, 1, 1, 3),
(36811, 36812, 0, 1, 1, 3),
(36811, 36813, 0, 1, 1, 3),
(36811, 36814, 0, 1, 1, 3),
(36811, 41337, 0, 1, 1, 3),
(36811, 41338, 0, 1, 1, 3),
(36811, 42931, 0, 1, 1, 3),
(39681, 39681, 0, 1, 1, 1),
(39681, 39682, 0, 1, 1, 1),
(39681, 39683, 0, 1, 1, 1),
(39681, 39684, 0, 1, 1, 1),
(39681, 39685, 0, 1, 1, 1),
(39681, 39690, 0, 1, 1, 1),
(35623, 35623, 0, 1, 2, 5),
(35623, 35624, 0, 1, 2, 5),
(35623, 36860, 0, 1, 2, 5),
(35623, 35627, 0, 1, 2, 5);
DELETE FROM `skinning_loot_template` WHERE `entry` in (33113,34003,33293,33885,33432,34106);
UPDATE `creature_template` SET `skinloot`='33113' WHERE `entry` in (33113,34003,33293,33885,33432,34106);
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(33113, 36811, 100, 0, -36811, 1),
(33113, 35623, 50, 0, -35623, 1),
(33113, 39681, 10, 0, -39681, 1),
(33113, 49050, 1, 0, 1, 1);
DELETE FROM `skinning_loot_template` WHERE `entry` in (25707,25709,26333,26417,26421,26782,26792,27254,28323,29036,30258,30329,30861,30526,30524,31463,31470,23874);
UPDATE `creature_template` SET `skinloot`='25707' WHERE `entry` in (25707,25709,26333,26417,26421,26782,26792,27254,28323,29036,30258,30329,30861,30526,30524,31463,31470,23874);
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(25707, 33452, 30, 1, 1, 1),
(25707, 36901, 0, 1, 1, 1),
(25707, 36903, 0, 1, 1, 1),
(25707, 36904, 0, 1, 1, 1),
(25707, 36905, 0, 1, 1, 1),
(25707, 36906, 0, 1, 1, 1),
(25707, 36907, 0, 1, 1, 1),
(25707, 37704, 7, 1, 1, 2),
(25707, 39516, 40, 1, 1, 1);
DELETE FROM `skinning_loot_template` WHERE `entry` in (17977,21582,21251,23029);
UPDATE `creature_template` SET `skinloot`='17977' WHERE `entry` in (17977,21582,21251,23029);
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(17977, 22575, 0, 1, 2, 5),
(17977, 22785, 0, 2, 2, 8),
(17977, 22786, 0, 2, 2, 8),
(17977, 22787, 0, 3, 2, 8),
(17977, 22789, 0, 2, 2, 8),
(17977, 22790, 0, 3, 2, 8),
(17977, 22793, 0, 3, 2, 8),
(17977, 22794, 1, 1, 1, 1);
DELETE FROM `skinning_loot_template` WHERE `entry` in (17723,20164,17725,20188,17734,20187,17770,20169,17871,20190,20774,21023,21040,21325,21326,21694,21914,21863,20983);
UPDATE `creature_template` SET `skinloot`='17723' WHERE `entry` in (17723,20164,17725,20188,17734,20187,17770,20169,17871,20190,20774,21023,21040,21325,21326,21694,21914,21863,20983);
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(17723, 22575, 10, 1, 1, 2),
(17723, 22785, 5, 1, 1, 1),
(17723, 22786, 5, 1, 1, 1),
(17723, 22787, 5, 1, 1, 1),
(17723, 22789, 5, 1, 1, 1),
(17723, 22790, 2, 1, 1, 1),
(17723, 22794, 1, 1, 1, 1),
(17723, 24401, 0, 1, 1, 1),
(17723, 25813, 20, 1, 1, 1),
(17723, 29453, 20, 1, 1, 1);
DELETE FROM `skinning_loot_template` WHERE `entry` in (18124,18125,18127,19402,19519,19734,22095,22307);
UPDATE `creature_template` SET `skinloot`='18124' WHERE `entry` in (18124,18125,18127,19402,19519,19734,22095,22307);
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(18124, 22575, 9, 1, 1, 2),
(18124, 22785, 5, 1, 1, 1),
(18124, 22786, 5, 1, 1, 1),
(18124, 22787, 5, 1, 1, 1),
(18124, 22789, 5, 1, 1, 1),
(18124, 22790, 2, 1, 1, 1),
(18124, 22794, 0.5, 1, 1, 1),
(18124, 24401, 0, 1, 1, 1),
(18124, 25813, 20, 1, 1, 1),
(18124, 27859, 20, 1, 1, 1);
DELETE FROM `skinning_loot_template` WHERE `entry` in (30845,31229,32357,32913,33392,32914,33393,32915,33391,33354,33729,33430,33732,33431,33731,33525,33735,34300);
UPDATE `creature_template` SET `skinloot`='30845' WHERE `entry` in (30845,31229,32357,32913,33392,32914,33393,32915,33391,33354,33729,33430,33732,33431,33731,33525,33735,34300);
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(30845, 35947, 30, 1, 1, 1),
(30845, 36901, 10, 1, 1, 1),
(30845, 36903, 0, 1, 1, 1),
(30845, 36904, 0, 1, 1, 1),
(30845, 36905, 0, 1, 1, 1),
(30845, 36906, 0, 1, 1, 1),
(30845, 36907, 0, 1, 1, 1),
(30845, 37704, 0, 1, 1, 2),
(30845, 39516, 40, 1, 1, 1);
DELETE FROM `skinning_loot_template` WHERE `entry` in (17156,17157,18062,18881,18882,20498,21050,21936,22313,22390,22344,22391,30814);
UPDATE `creature_template` SET `skinloot`='17156' WHERE `entry` in (17156,17157,18062,18881,18882,20498,21050,21936,22313,22390,22344,22391,30814);
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(17156, 23077, 1, 0, -23077, 1),
(17156, 22573, 20, 0, 1, 3),
(17156, 24189, 100, 0, 1, 1);
DELETE FROM `skinning_loot_template` WHERE `entry` in (18182,18690,18885,18886,19188,19823,19824,19940,20202,20599,20772,21181,21844,22011,22054,22275,23165,19066,23333);
UPDATE `creature_template` SET `skinloot`='18182' WHERE `entry` in (18182,18690,18885,18886,19188,19823,19824,19940,20202,20599,20772,21181,21844,22011,22054,22275,23165,19066,23333);
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(18182, 23077, 5, 0, -23077, 1),
(18182, 22573, 20, 0, 1, 3),
(18182, 24189, 100, 0, 1, 1);
DELETE FROM `skinning_loot_template` WHERE `entry` in (18343,20268);
UPDATE `creature_template` SET `skinloot`='18343' WHERE `entry` in (18343,20268);
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(18343, 21929, 30, 0, -21929, 1),
(18343, 23425, 100, 0, 4, 10),
(18343, 23436, 2, 0, -23436, 1);
DELETE FROM `reference_loot_template` WHERE `entry` = 23077;
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(23077, 21929, 0, 1, 1, 1),
(23077, 23077, 0, 1, 1, 1),
(23077, 23079, 0, 1, 1, 1),
(23077, 23107, 0, 1, 1, 1),
(23077, 23112, 0, 1, 1, 1),
(23077, 23117, 0, 1, 1, 1);
DELETE FROM `skinning_loot_template` WHERE `entry` in (23725,24271,24329,26283,26284,26291,26347,26406,28069,28411,28597,28840,28877,29013,29124,29307,31365,29436,29832,30390,29844,30040,30053,30160,30876,26316,24316,26290,30930,32447,33699,33700,33722,33723,34069,34185,34086,34201,34134,34141,34135,34142,34190,34229,34196,34245,34197,34226);
UPDATE `creature_template` SET `skinloot`='23725' WHERE `entry` in (23725,24271,24329,26283,26284,26291,26347,26406,28069,28411,28597,28840,28877,29013,29124,29307,31365,29436,29832,30390,29844,30040,30053,30160,30876,26316,24316,26290,30930,32447,33699,33700,33722,33723,34069,34185,34086,34201,34134,34141,34135,34142,34190,34229,34196,34245,34197,34226);
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(23725, 37701, 5, 0, 1, 3),
(23725, 39220, 100, 0, 1, 1);
UPDATE `creature_template` SET `skinloot`='0' WHERE `entry` in (30341,26872,29485);
DELETE FROM `skinning_loot_template` WHERE `entry` in (26872,30341,29485);
DELETE FROM `skinning_loot_template` WHERE `entry` in (26794,30532,27977,31381,34085,34186);
UPDATE `creature_template` SET `skinloot`='26794' WHERE `entry` in (26794,30532,27977,31381,34085,34186);
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(26794, 36909, 30, 0, 5, 10),
(26794, 36920, 5, 0, -36920, 1),
(26794, 36918, 3, 0, -36918, 1),
(26794, 37701, 30, 0, 5, 8),
(26794, 39220, 100, 0, 2, 8);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='5' WHERE `item`=39152;
DELETE FROM `reference_loot_template` WHERE `entry` = 22575;
DELETE FROM `reference_loot_template` WHERE `entry` = 33452;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(33432, 36811, 50, 0, 3, 20),
(33432, 36812, 50, 0, 3, 20),
(33432, 36813, 50, 0, 3, 20),
(33432, 36814, 50, 0, 3, 20),
(33432, 41337, 50, 0, 3, 20),
(33432, 41338, 50, 0, 3, 20),
(33432, 42931, 50, 0, 3, 20),
(34106, 36811, 50, 0, 3, 20),
(34106, 36812, 50, 0, 3, 20),
(34106, 36813, 50, 0, 3, 20),
(34106, 36814, 50, 0, 3, 20),
(34106, 41337, 50, 0, 3, 20),
(34106, 41338, 50, 0, 3, 20),
(34106, 42931, 50, 0, 3, 20);
DELETE FROM `creature_loot_template` WHERE `entry` not in (33432,34106) AND `item` in (42931,36811,36812,36813,36814,41337,41338,42931);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='5' WHERE `item`=34984;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='10' WHERE `item` in (24101,24102);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='15' WHERE `entry`=9025 AND `item`=45050;
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (10453,14489);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (10454,14489);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (10455,14489);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (10456,14489);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (10457,14489);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (10458,14489);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (10459,14489);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (10460,14489);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (10462,14489);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (10461,14489);
UPDATE `quest_template` SET `RequestItemsText`='Back so soon? In case I didn''t make myself clear we need you to kill 10 Stonesplinter Shaman and 10 Stonesplinter Bonesnappers, $n. Now go get ''em, Trogg-Slayer!' WHERE `id`=263;
UPDATE `quest_template` SET `OfferRewardText`='This is quite a find, $n. I can''t have you selling this to anyone else, so I''m willing to offer generously.' WHERE `id`=14203;
UPDATE `quest_template` SET `OfferRewardText`='That a weapon of such power has been redeemed from the clutches of evil is a great omen in these times, $n. With Quel''Delar and staunch Sunreaver allies at our side, the Lich King will have good reason to fear.$B$BThe crusade maintains an arsenal of exceptional weapons for our strongest allies. Allow me to offer you your choice from among them in return for entrusting us with the care of Quel''Delar.' WHERE `id`=24799;
UPDATE `creature_template_addon` SET `bytes1`='0', `auras`='29266' WHERE `entry`=17600;
DELETE FROM achievement_criteria_data WHERE criteria_id IN (6381, 6808);
INSERT INTO achievement_criteria_data (criteria_id, TYPE, value1, value2) VALUES (6381, 12, 0, 0),(6808, 12, 1, 0);
DELETE FROM npc_text WHERE ID IN (10991);
INSERT INTO npc_text (ID, text0_0, text0_1, lang0, prob0, em0_0, em0_1, em0_2, em0_3, em0_4, em0_5, text1_0, text1_1, lang1, prob1, em1_0, em1_1, em1_2, em1_3, em1_4, em1_5, text2_0, text2_1, lang2, prob2, em2_0, em2_1, em2_2, em2_3, em2_4, em2_5, text3_0, text3_1, lang3, prob3, em3_0, em3_1, em3_2, em3_3, em3_4, em3_5, text4_0, text4_1, lang4, prob4, em4_0, em4_1, em4_2, em4_3, em4_4, em4_5, text5_0, text5_1, lang5, prob5, em5_0, em5_1, em5_2, em5_3, em5_4, em5_5, text6_0, text6_1, lang6, prob6, em6_0, em6_1, em6_2, em6_3, em6_4, em6_5, text7_0, text7_1, lang7, prob7, em7_0, em7_1, em7_2, em7_3, em7_4, em7_5) VALUES
(10991,'What can I say, $N?  Yer the finest o\' the Sha\'tari Skyguard!$B$BJust don\'t be lettin\' that go ta yer head.  I can still teach ya a thing or two, $G lad : lass;!$B$B<Sky Commander Keller grins at you and winks.>','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0);
UPDATE creature_template_addon SET auras=NULL WHERE entry=36659;
UPDATE creature_template_addon SET auras=NULL WHERE entry=36626;
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE id=11027;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='70' WHERE `entry`=32777 AND `item`=32569;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='10' WHERE `entry`=32777 AND `item`=32576;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='10' WHERE `entry`=32777 AND `item`=32578;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='20' WHERE `entry`=32777 AND `item`=32643;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='30' WHERE `entry`=32777 AND `item`=33784;
DELETE FROM creature_template_addon WHERE entry=25588;
INSERT INTO creature_template_addon (entry, auras) VALUES (25588, '45769');
DELETE FROM spell_target_position WHERE id=46473;
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES (46473, 580, 1667.640, 633.466, 28.050, 6.05);
DELETE FROM spell_scripts WHERE id IN (34874, 27695);
INSERT INTO spell_scripts (id, delay, command, datalong, datalong2) VALUES
(34874, 0, 18, 0, 0),
(27695, 0, 15, 27696, 1),
(27695, 0, 15, 27697, 1),
(27695, 0, 15, 27698, 1),
(27695, 0, 15, 27699, 1);
DELETE FROM creature_template_addon WHERE entry=17885;
UPDATE `creature_template_addon` SET `bytes1`='0', `auras`='29266' WHERE `entry`=17508;
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES
(79089, 22515, 601, 3, 1, 0, 0, 478.14856, 269.0094, 250.543488, 6.126106, 120, 0, 0, 1, 0, 0),
(79090, 22515, 601, 3, 1, 0, 0, 478.290863, 224.826492, 250.234558, 0.401425719, 120, 0, 0, 1, 0, 0),
(79091, 22515, 601, 3, 1, 0, 0, 478.5473, 297.0447, 250.543488, 5.794493, 120, 0, 0, 1, 0, 0),
(79092, 22515, 601, 3, 1, 0, 0, 478.739258, 252.849823, 250.543488, 0.05235988, 120, 0, 0, 1, 0, 0),
(79093, 22515, 601, 3, 1, 0, 0, 488.555817, 692.949768, 771.76355, 4.886922, 120, 0, 0, 1, 0, 0),
(79094, 22515, 601, 3, 1, 0, 0, 489.9746, 671.2391, 772.1313, 0.2617994, 120, 0, 0, 1, 0, 0),
(79095, 22515, 601, 3, 1, 0, 0, 504.010376, 637.693054, 777.4791, 0.5061455, 120, 0, 0, 1, 0, 0),
(79096, 22515, 601, 3, 1, 0, 0, 517.486145, 706.398, 777.334534, 5.358161, 120, 0, 0, 1, 0, 0),
(127687, 22515, 601, 3, 1, 0, 0, 525.0097, 397.78, 240.898956, 4.92182827, 120, 0, 0, 1, 0, 0),
(127751, 22515, 601, 3, 1, 0, 0, 529.0418, 706.9407, 777.2984, 1.08210409, 120, 0, 0, 1, 0, 0),
(127752, 22515, 601, 3, 1, 0, 0, 548.8313, 409.552521, 283.359, 4.5553093, 120, 0, 0, 1, 0, 0),
(127753, 22515, 601, 3, 1, 0, 0, 549.4818, 352.190552, 240.898972, 1.57079637, 120, 0, 0, 1, 0, 0),
(127754, 22515, 601, 3, 1, 0, 0, 550.83, 254.738068, 128.89653, 2.60054064, 120, 0, 0, 1, 0, 0),
(127755, 22515, 601, 3, 1, 0, 0, 552.6253, 706.4077, 777.176636, 3.4382987, 120, 0, 0, 1, 0, 0),
(127756, 22515, 601, 3, 1, 0, 0, 553.3398, 640.386841, 777.4195, 1.20427716, 120, 0, 0, 1, 0, 0),
(127757, 22515, 601, 3, 1, 0, 0, 554.9153, 257.097229, 223.972351, 3.92699075, 120, 0, 0, 1, 0, 0),
(127758, 22515, 601, 3, 1, 0, 0, 555.675659, 419.087677, 283.917, 0.6981317, 120, 0, 0, 1, 0, 0),
(127759, 22515, 601, 3, 1, 0, 0, 566.1641, 682.087341, 769.0793, 2.21656823, 120, 0, 0, 1, 0, 0),
(127760, 22515, 601, 3, 1, 0, 0, 571.611755, 394.763458, 240.898956, 4.537856, 120, 0, 0, 1, 0, 0),
(127761, 22515, 601, 3, 1, 0, 0, 620.621765, 298.262482, 250.5435, 3.700098, 120, 0, 0, 1, 0, 0),
(127762, 22515, 601, 3, 1, 0, 0, 620.7037, 224.561844, 250.232086, 2.53072739, 120, 0, 0, 1, 0, 0),
(127763, 22515, 601, 3, 1, 0, 0, 621.319031, 268.481934, 250.5435, 3.33357882, 120, 0, 0, 1, 0, 0),
(127873, 22515, 601, 3, 1, 0, 0, 622.9042, 252.944992, 250.5435, 3.12413931, 120, 0, 0, 1, 0, 0);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES
(88483,846,0,1,1,0,0,-10084.3,1559.49,40.8883,3.00608,180,5,0,300,0,1);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES
(91085,846,0,1,1,0,0,-10082.4,1556.31,41.0149,2.17749,180,5,0,300,0,1);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES
(127874,846,0,1,1,0,0,-11281.5,1017.69,94.4474,5.30334,180,5,0,300,0,1);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES
(128050,846,0,1,1,0,0,-11275.7,1022.68,94.7905,5.70782,180,5,0,300,0,1);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES
(128051,846,0,1,1,0,0,-10984.3,1607.5,45.5599,4.52265,180,5,0,328,0,1);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES
(128052,846,0,1,1,0,0,-10970.2,1608.44,46.5447,0.128347,180,5,0,300,0,1);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES
(128053,846,0,1,1,0,0,-10974,1621.75,45.8095,1.69129,180,5,0,300,0,1);
REPLACE INTO game_event_creature (guid, evententry) VALUES (88483,29),(91085,29),(127874,29),(128050,29),(128051,29),(128052,29),(128053,29);
REPLACE INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(3746, 176360, 329, 1, 1, 3500.44, -3296.51, 132.178, 4.55695, 0, 0, -0.711057, -0.703135, -180, 255, 1),
(3747, 176360, 329, 1, 1, 3566.72, -3351.26, 131.838, 2.31857, 0, 0, 0.916517, 0.399995, -180, 255, 1),
(3749, 176360, 329, 1, 1, 3662.24, -3629.09, 139.66, 2.20469, 0, 0, -0.382585, 0.92392, -180, 255, 1),
(3753, 176360, 329, 1, 1, 3660.25, -3477.18, 139.511, 4.82007, 0, 0, -0.685653, -0.727929, -180, 255, 1),
(3751, 176360, 329, 1, 1, 3652.15, -3165.96, 129.285, 5.34443, 0, 0, 0.452331, -0.89185, -180, 255, 1),
(3750, 176360, 329, 1, 1, 3682.91, -3401.05, 133.941, 0.670026, 0, 0, -0.929145, 0.369716, -180, 255, 1);
REPLACE INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES (7482, 152614, 1, 1,1,-11341.9, -4760.26, 19.3222, 2.40736, 0, 0, 0.933366, 0.358925, 180, 255, 1);
REPLACE INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES
(98436, 30446, 571, 1, 1, 0, 0, 8382.5, -2549.35, 1145.97, 3.82227, 120, 0, 0, 1, 0, 0),
(98435, 30446, 571, 1, 1, 0, 0, 8361.87, -2526.85, 1141.39, 3.68264, 120, 0, 0, 1, 0, 0),
(98773, 30446, 571, 1, 1, 0, 0, 8354.63, -2549.88, 1148.54, 4.95674, 120, 0, 0, 1, 0, 0),
(105081, 30446, 571, 1, 1, 0, 0, 8331.42, -2502.39, 1140.05, 4.53786, 120, 0, 0, 1, 0, 0),
(128054, 30446, 571, 1, 1, 0, 0, 8310.22, -2550.68, 1153.69, 1.91986, 120, 0, 0, 1, 0, 0),
(128074, 30446, 571, 1, 1, 0, 0, 8300.43, -2564.86, 1153.59, 0.261799, 120, 0, 0, 1, 0, 0),
(128075, 30446, 571, 1, 1, 0, 0, 8393.97, -2540.06, 1131.91, 5.07891, 120, 0, 0, 1, 0, 0);
UPDATE creature_template SET faction_A=16, faction_H=16 WHERE entry =10882;
DELETE FROM gossip_menu WHERE entry IN (263, 264);
INSERT INTO gossip_menu (entry, text_id) VALUES (263,762),(264,761);
DELETE FROM gossip_menu_option WHERE menu_id =264;
DELETE FROM gossip_menu WHERE entry IN (261, 262);
INSERT INTO gossip_menu (entry, text_id) VALUES (261,760),(262,759);
DELETE FROM gossip_menu_option WHERE menu_id =262;
UPDATE creature_template SET gossip_menu_id = 262 WHERE entry = 2239;
DELETE FROM `gossip_menu` WHERE `entry` = 50391;
DELETE FROM `gossip_menu` WHERE `entry` = 50392;
DELETE FROM `gossip_menu` WHERE `entry` = 50394;
DELETE FROM  gossip_menu_option WHERE menu_id = 50391;
UPDATE locales_gossip_menu_option SET menu_id = 262 WHERE menu_id = 50391;
UPDATE creature_template SET gossip_menu_id=9487 WHERE entry=27267;
DELETE FROM gossip_menu_option WHERE menu_id=9487;
DELETE FROM gossip_menu WHERE entry=9487;
INSERT INTO gossip_menu (entry, text_id) VALUES (9487, 12759);
REPLACE INTO gossip_menu (entry, text_id) VALUES (9521, 12827),(9525, 12830),(9526, 12832),(9527, 12833);
UPDATE `gossip_menu_option` SET `action_menu_id`='9527' WHERE `action_menu_id`='50423';
UPDATE `gossip_menu_option` SET `action_menu_id`='9521' WHERE `action_menu_id`='50424';
UPDATE `gossip_menu_option` SET `action_menu_id`='9526' WHERE `action_menu_id`='50425';
UPDATE `gossip_menu_option` SET `action_menu_id`='9525' WHERE `action_menu_id`='50426';
DELETE FROM `gossip_menu` WHERE `entry` = 50423;
DELETE FROM `gossip_menu` WHERE `entry` = 50424;
DELETE FROM `gossip_menu` WHERE `entry` = 50425;
DELETE FROM `gossip_menu` WHERE `entry` = 50426;
# UPDATE gossip_menu_option SET action_script_id=9874 WHERE menu_id=9874;
UPDATE `db_script_string` SET `content_default`='I''m not afraid of anything -- bring it on!' WHERE `entry`=2000000347;
DELETE FROM gossip_menu WHERE entry IN (7519,7520,7521,7525);
INSERT INTO gossip_menu (entry, text_id) VALUES
(7519, 9118),
(7520, 9119),
(7521, 9121),
(7525, 9125);
UPDATE `gossip_menu_option` SET `action_menu_id`='0' WHERE `menu_id`=7520 AND `id`=0;
DELETE FROM `gossip_menu` WHERE `entry` = 50009;
DELETE FROM gossip_menu WHERE entry=1442;
INSERT INTO gossip_menu (entry, text_id) VALUES (1442, 2115);
UPDATE creature_template SET gossip_menu_id=8899 WHERE entry=24130;
DELETE FROM gossip_menu_option WHERE menu_id=8899;
DELETE FROM gossip_menu WHERE entry IN (8899,8928);
INSERT INTO gossip_menu (entry, text_id) VALUES (8899, 11689),(8928, 11910);
DELETE FROM gossip_menu_option WHERE menu_id IN (7478,7477,7476,7475);
UPDATE creature SET spawntimesecs=15 WHERE id IN (27378, 27381, 27376, 27379);
DELETE FROM db_script_string WHERE entry=2000000064;
INSERT INTO db_script_string (entry,content_default) VALUES 
(2000000064,'No! I beg you! Please don\'t kill me!');
DELETE FROM gossip_menu_option WHERE menu_id=9507;
DELETE FROM db_script_string WHERE entry=2000000066;
INSERT INTO db_script_string (entry,content_default) VALUES 
(2000000066,'What do you mean my time has come?! I\'ll kill you where you stand!');
DELETE FROM gossip_menu_option WHERE menu_id=9510;
DELETE FROM db_script_string WHERE entry=2000000075;
INSERT INTO db_script_string (entry,content_default) VALUES 
(2000000075,'What is the meaning of this?! Stop! I\'ll double whatever they\'re paying you!');
DELETE FROM gossip_menu_option WHERE menu_id=9508;
DELETE FROM db_script_string WHERE entry=2000000065;
INSERT INTO db_script_string (entry,content_default) VALUES 
(2000000065,'You can\'t possibly mean to.... I\'ll write you up for this, $c!');
DELETE FROM gossip_menu_option WHERE menu_id IN (10178,10177,10176);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 50009;
DELETE FROM gossip_menu_option WHERE menu_id=9906;
REPLACE INTO db_script_string (entry,content_default) VALUES
(2000000607,'My brother, Stormhoof, was a far greater warrior than I. While I trained to be the chieftain of our clan, he prepared for a larger quest.'),
(2000000608,'How could he be in danger? All he wanted was to give us power over the elements that made life harsh for us here.'),
(2000000609,'He sought an artifact... a horn, I think. He left the village on a long journey in search of it.'),
(2000000610,'I know that a terrible enemy pursued him after he won the horn, but I... I don\'t recall... what happened... next.'),
(2000000611,'It is as though my memories are shrouded in mist. I cannot even recall what became of my brother. Is this how you mean that he is in danger?'),
(2000000612,'The disturbances in the tomb, they must be involved. Look around you, $N. Do you see them?'),
(2000000613,'Yes, they are at fault, but I am powerless to stop them. Will you warn the people of Tunka\'lo, stranger, that their past and their ancestors are in danger?');
DELETE FROM spell_scripts WHERE id IN (56796, 56797);
INSERT INTO spell_scripts (id,delay,command,datalong,datalong2,dataint,x,y,z,o) VALUES 
(56796,1,0,0,0,2000000614,0,0,0,0),
(56797,1,0,0,0,2000000615,0,0,0,0);
REPLACE INTO db_script_string (entry,content_default) VALUES
(2000000614,'The Lorehammer ist reacting. This must be from Stormhoof\'s time.'),
(2000000615,'The Lorehammer is silent. This isn\'t from Stormhoof\'s time.');
DELETE FROM gossip_menu_option WHERE menu_id=7452;
DELETE FROM gossip_menu_option WHERE menu_id=7449;
DELETE FROM gossip_menu_option WHERE menu_id IN (7531,7537,7536,7535,7534,7533);
DELETE FROM gossip_menu_option WHERE menu_id IN (7493,7492,7491);
DELETE FROM gossip_menu WHERE entry IN (7492,7491,7490);
INSERT INTO gossip_menu (entry, text_id) VALUES (7492, 9080),(7491, 9081),(7490, 9082);
UPDATE `locales_gossip_menu_option` SET `id`='0' WHERE `menu_id`=4824 AND `id`=1;
UPDATE `gossip_menu_option` SET `id`='0', `option_text`='Please teach me.' WHERE `menu_id`=4824 AND `id`=1;
UPDATE `gossip_menu` SET `text_id`='5880' WHERE `entry`=4824 AND `text_id`=10292;
UPDATE creature_template SET MovementType=2 WHERE entry=17592;
DELETE FROM event_scripts WHERE id=11087;
INSERT INTO event_scripts VALUES
(11087,0,10,17592,180000,0,-1233.44,-12563.59,157.842,1.270),
(11087,9,26,0,17592,50,0,0,0,0);
DELETE FROM gossip_menu_option WHERE menu_id=7465;
REPLACE INTO db_script_string (entry,content_default) VALUES
(2000000616,'Good luck... You\'ll need it!'),
(2000000617,'May the best win!'),
(2000000618,'You will not defeat me!'),
(2000000619,'You\'re not worthy of Thorim!');
DELETE FROM gossip_menu_option WHERE menu_id=8724 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8722 AND id=0;
REPLACE INTO gossip_menu (entry, text_id) VALUES (8679, 10919);
DELETE FROM gossip_menu_option WHERE menu_id=8721 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8723 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=7772;
UPDATE `gossip_menu_option` SET `id`='0' WHERE `menu_id`=9894 AND `id`=1;
UPDATE `locales_gossip_menu_option` SET `id`='0' WHERE `menu_id`=9894 AND `id`=1;
UPDATE `gossip_menu_option` SET `id`='0' WHERE `menu_id`=9576 AND `id`=1;
REPLACE INTO db_script_string (entry,content_default) VALUES
(2000000620,'Scrying upon many insignificant situations within Icecrown,$B you stumble upon something interesting...'),
(2000000621,'The cultist practically sputters.'),
(2000000622,'My lady.'),
(2000000623,'Report.'),
(2000000624,'There is word from Jotunheim. The sleep-watchers there believe that they have found someone of significance.'),
(2000000625,'Describe this vrykul. What does he look like?'),
(2000000626,'Look like, my lady? A vrykul, I suppose. They did not actually show him to me. Ever since The Shadow Vault....'),
(2000000627,'I am not interested in excuses. Perhaps they gave you a name?'),
(2000000628,'A name? Oh, yes, the name! I believe it was Iskalder.'),
(2000000629,'Iskalder? You fool! Have you no idea who that is? He\'s only the greatest vrykul warrior who ever lived!'),
(2000000630,'Return to Jotunheim and tell them to keep him asleep until I arrive. I will judge this vrykul with my own eyes.'),
(2000000631,'Right away, my lady.');
UPDATE creature_template SET minlevel=80, maxlevel=80, MovementType=1 WHERE entry=30835;
UPDATE creature_template SET minlevel=80, maxlevel=80 WHERE entry=30836;
DELETE FROM gossip_menu_option WHERE menu_id=9690;
UPDATE quest_template SET StartScript=9579 WHERE id=9579;
DELETE FROM quest_start_scripts WHERE id=9579;
REPLACE INTO db_script_string (entry,content_default) VALUES
(2000000632,'Morae... Is that you?'),
(2000000633,'No... you\'re not Morae, but I sense that you have met. When you see her, tell her that I survived the crash, only to be done in by the infiltrators.'),
(2000000634,'Let her know... my last thought was of her...');
DELETE FROM gossip_menu_option WHERE menu_id=8716 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8717 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8726 AND id=0;
DELETE FROM gossip_menu_option WHERE menu_id=8754;
DELETE FROM gossip_menu_option WHERE menu_id=8513;
DELETE FROM gossip_menu_option WHERE menu_id=7999;
REPLACE INTO db_script_string (entry,content_default) VALUES
(2000000635,'Grek try!'),
(2000000636,'This oil no good for Grek! What Grek look like to you, some weakling in robes?');
REPLACE INTO db_script_string (entry,content_default) VALUES
(2000000637,'%s laughs.'),
(2000000638,'Does it frighten you to know that there are those that would serve the Legion with such devotion as to remain unwavering citizens of your pointless civilizations until called upon?'),
(2000000639,'Live in fear, die by the will of Kael\'thas... It\'s all the same.'),
(2000000640,'And now, I cut you!'),
(2000000641,'DIE!');
DELETE FROM event_scripts WHERE id=10675;
REPLACE INTO db_script_string (entry,content_default) VALUES (2000000642,'%s picks up the naga flag.');
UPDATE quest_template SET NextQuestIdChain=13037 WHERE id=13034;
DELETE FROM quest_end_scripts WHERE id=13034;
UPDATE `db_script_string` SET `content_default`='The Lorehammer...' WHERE `entry`=2000001045;
UPDATE `db_script_string` SET `content_default`='This isn\'t right at all, $N. In the tale Wind Tamer Barah told me, Stormhoof was a hero, not a villain.' WHERE `entry`=2000001042;
UPDATE `db_script_string` SET `content_default`='The North Wind is the ancient enemy of the taunka, a ruler among the elements, and the very force which bleeds the life from these ancient people.' WHERE `entry`=2000001043;
UPDATE `db_script_string` SET `content_default`='They would rather die than bow before the North Wind. Something is amiss here.' WHERE `entry`=2000001044;
UPDATE `db_script_string` SET `content_default`='It confirms our suspicions. The threads of time have been severed and rewoven in the wrong pattern. But, how?' WHERE `entry`=2000001046;
DELETE FROM event_scripts WHERE id=15939;
REPLACE INTO db_script_string (entry,content_default) VALUES 
(2000000348,'Arise from the earth, my brothers!'),
(2000000349,'Our iron masters have a mission for us!'),
(2000000350,'Follow me into the mountains to carry out the plan of the masters!'),
(2000000643,'We will not fail!');
UPDATE creature_template SET InhabitType=1 WHERE entry=24035;
UPDATE `creature_template` SET `unit_flags` = 32768 WHERE `entry` = 29747;
UPDATE `creature_template` SET `unit_flags` = 32768 WHERE `entry` = 29790;
UPDATE creature_template SET unit_flags=unit_flags|33554432 WHERE entry IN (18374, 20308);
UPDATE creature_template SET MovementType = 0 WHERE entry IN (13716, 12238, 10268);
UPDATE creature SET position_x='-9719.611', position_y='1514.752', position_z='27.55229', orientation='0.7679449' WHERE id = 15369;
UPDATE creature_template SET MovementType = 0 WHERE entry IN (18757,18759);
UPDATE creature_template SET MovementType=0 WHERE entry in (598,636,4416);
UPDATE gameobject SET spawntimesecs=86400 WHERE map=36 AND id=75293;
DELETE FROM creature_involvedrelation WHERE quest IN (1132,1133,1135);
DELETE FROM creature_questrelation WHERE quest IN (1132,1133,1135); 
UPDATE quest_template SET OfferRewardText='You\'ve done it! Praise be to Elune and whichever powers you worship, $N. You have done an honorable and noble thing this day. I am certain Arko\'narin will be pleased that you not only took the time to save her, but to also slay the creature who tortured one of her best friends.$b$bI wish I could do more for you, but please, take this.' WHERE id=5385;
UPDATE quest_template SET RequestItemsText='The Stormpike Brigade cannot charge into battle bareback! We require harnesses for our mounts, after all, we are not savages.$B$BWhile we could easily slay the rams that roam near our base for the leather required to fashion a harness, doing so would be idiotic. We need those rams for mounts.$B$BYou must strike at our enemy\'s base, slaying the frostwolves they use as mounts and taking their hides. Return their hides to me so that harnesses may be made for the cavalry. Go!' WHERE id=7026;
UPDATE quest_template SET RequestItemsText= 'While some of our soldiers are busy capturing wolves for the stable master, others must provide for the simple necessities that riding requires. I am speaking of riding harnesses, of course.$B$BYou must strike at the indigenous rams of the region. The very same rams that the Stormpike cavalry uses as mounts!$B$BSlay them and return to me with their hides. Once we have gathered enough hides, we will fashion harnesses for the riders. The Frostwolf Wolf Riders will ride once more!' WHERE id=7002;
UPDATE quest_template SET RequestItemsText='Finally, you\'ve arrived... and discretely also. Good.$b$bOur world is full of fools, $n. Even the mighty Thrall has greater flaws than most can see. He turns his back on the power needed to make this land ours completely! We\'re not the same people who were manipulated and used by creatures from the Nether. We are our own people. We are proud... and we are strong.' WHERE id=3090;
UPDATE quest_template SET OfferRewardText='And now you\'ve joined our ranks also. Don\'t misunderstand, $n. Just because you have access to power that many will be jealous of, it does not mean you will be accepted easily. Thrall allows our kind into Orgrimmar because we are still his fellow kin--he cannot turn his back on us, or we would become as pathetic as the humans who enslaved him. My point is: be careful. You can be powerful, but if you are foolish, then you are as good dead.$b$bIf you need training in spells then return to me.' WHERE id=3090;
DELETE FROM creature WHERE id = 18533;
DELETE FROM creature WHERE id=17426;
DELETE FROM creature WHERE id=10776;
UPDATE gameobject_template SET flags=flags |2 WHERE entry IN (179549, 179550);
UPDATE creature_model_info SET modelid_other_gender =19419 WHERE modelid =19418;
UPDATE creature_model_info SET modelid_other_gender =19420 WHERE modelid =19419;
DELETE FROM quest_end_scripts WHERE id =963;
REPLACE INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES 
(2000000647,'Anaya...? Do my eyes deceive me? Is it really you?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000648,'The ages have been cruel to you and I, my love, but be assured, it is, and at long last we are reunited.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000649,'That the fates should be so cruel as to permit us only this after a thousand years apart...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000650,'Do you hate me, my love? That I was forced to destroy your living form, that your spirit be released from unhappy bondage.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000651,'Let it not trouble your heart, beloved. You have freed me from slavery, and for that I love you all the more.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000652,'Sadly, even this must be cut short... The ties that bind me to this world weaken, and pull me away...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000653,'No! Anaya... Anaya! Don\'t leave me! Please...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000654,'Farewell, Cerellean, until we are joined once again...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000655,'Anaya\'s soft voice trails away into the mists. "Know that I love you always..."',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000656,'How, my love? How will I find the strength to face the ages of the world without you by my side...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
UPDATE quest_template SET CompleteScript =963 WHERE id =963;
DELETE FROM quest_start_scripts WHERE id =947;
REPLACE INTO db_script_string (entry,content_default) VALUES
(2000000657,'Thank you, $N. And luck to you.'),
(2000000658,'Cliffspring Falls lies along the mountains to the east and north.');
UPDATE quest_template SET StartScript =947 WHERE id =947;
DELETE FROM quest_end_scripts WHERE id =5341;
REPLACE INTO db_script_string (entry, content_default) VALUES
(2000000659,'The deeds are mine, brother! Soon you shall be out of my way for good!');
UPDATE quest_template SET CompleteScript =5341 WHERE id =5341;
DELETE FROM quest_end_scripts WHERE id =4974;
REPLACE INTO db_script_string (entry,content_default) VALUES
(2000000670,'Honor your heroes! On this day, they have dealt a great blow against one of our most hated enemies! The false Warchief, Rend Blackhand, has fallen! '),
(2000000671,'Be bathed in my power! Drink in my might! Battle for the glory of the Horde!');
UPDATE quest_template SET CompleteScript =4974 WHERE id =4974;
DELETE FROM quest_start_scripts WHERE id =790;
REPLACE INTO db_script_string (entry,content_default) VALUES
(2000000672,'Go swiftly $N. My fate is in your hands.');
UPDATE quest_template SET StartScript =790 WHERE id =790;
DELETE FROM quest_end_scripts WHERE id =670;
REPLACE INTO db_script_string (entry,content_default) VALUES
(2000000673,'Wait, $N!!! It looks like we\'re going to need some help here...');
UPDATE quest_template SET CompleteScript =670 WHERE id =670;
DELETE FROM quest_end_scripts WHERE id=1117;
REPLACE INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES 
(2000000674,'%s begins to dance.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000675,'Hahah! $N, you make quite a partner!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
UPDATE quest_template SET CompleteScript =1117 WHERE id =1117;
DELETE FROM event_scripts WHERE id =313;
REPLACE INTO db_script_string VALUES 
(2000000676,'Have you freed Drull yet? I don\'t know where he\'s being held.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000677,'I will only slow you down, but no pink-skinned humans will keep me from freedom!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(6114, 19878, 1, 1, 1, -6232.08, -3855.08, -58.75, 4.04244, 0, 0, 0.900263, -0.435347, -10, 255, 1);
DELETE FROM quest_end_scripts WHERE id=1112;
REPLACE INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES 
(2000000644,'%s places the crate of parts on the ground.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000645,'%s grabs a part and puts it in his pocket...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000646,'There, that should do it...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
UPDATE quest_template SET CompleteScript =1112 WHERE id =1112;
DELETE FROM quest_end_scripts WHERE id =553;
UPDATE quest_template SET CompleteScript =553 WHERE id =553;
UPDATE creature_template SET MovementType=1 WHERE entry =2433;
DELETE FROM quest_end_scripts WHERE id =10210;
REPLACE INTO db_script_string (entry,content_default) VALUES
(2000000678,'Do not burden A\'dal with mundane questions, $r. This being\'s will is all that keeps our enemies from crushing this city.');
UPDATE quest_template SET CompleteScript =10210 WHERE id =10210;
DELETE FROM quest_start_scripts WHERE id=10349;
REPLACE INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000000679,'Up here on the hill, $N.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
UPDATE quest_template SET StartScript =10349 WHERE id =10349;
REPLACE INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES 
(2000000680,'Let me help you with those.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000681,'Drink this, it will help.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000682,'You\'re going to be just fine.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
DELETE FROM quest_end_scripts WHERE id =10109;
INSERT INTO quest_end_scripts (id, delay, command, datalong, datalong2, dataint, x, y, z, o) VALUES 
(10109,1,0,0,0,2000000684,0,0,0,0),
(10109,1,1,1,0,0,0,0,0,0);
REPLACE INTO db_script_string (entry,content_default) VALUES
(2000000684,'Oh sweet, delicious, spotted eggs - you will be mine...');
UPDATE quest_template SET CompleteScript =10109 WHERE id=10109;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(7483, 186425, 1, 1, 1, -2967.28, -3871.99, 33.0624, 2.28237, 0, 0, 0.909128, 0.416517, -120, 255, 1);
DELETE FROM event_scripts WHERE id=15452;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(28803, 4792, 1, 1, 1, 0, 0, -2952.76, -3885.41, 34.3089, 2.28638, 3, 0, 0, 1981, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(53051, 2175, 1, 1, 1, 0, 0, 6563.79, 302.533, 31.4362, 2.00627, 7200, 0, 0, 205, 0, 0);
UPDATE creature_template SET modelid1 =5561 WHERE entry =2624;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(91201, 2541, 0, 1, 1, 0, 730, -13808.2, 379.781, 94.5829, 2.12071, 21600, 0, 0, 1848, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(12723, 2428, 0, 1, 1, 0, 0, -465.482, -1476.91, 90.1814, 5.11627, 300, 0, 0, 664, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(125166, 23843, 1, 1, 1, 0, 0, -2948.36, -3893.17, 35.0324, 2.46798, 360, 0, 0, 1321, 1381, 0),
(16024, 5661, 0, 1, 1, 0, 0, 1739.17, 385.329, -62.208, 3.9619, 300, 0, 0, 484, 0, 0),
(15925, 5662, 0, 1, 1, 0, 0, 1684.96, 417.041, -62.2979, 0.069381, 300, 0, 0, 1753, 0, 0),
(59407, 19264, 530, 1, 1, 0, 0, -229.017, 3096.15, -61.7425, 0.670469, 300, 0, 0, 22108, 0, 0),
(83051, 19569, 530, 1, 1, 0, 0, 3389.06, 4296.1, 120.867, 0.680678, 300, 0, 0, 8832, 0, 0),
(81127, 19635, 530, 1, 1, 0, 0, 3024.03, 3964.66, 156.178, 1.35076, 300, 0, 0, 6542, 0, 0),
(60911, 21117, 530, 1, 1, 0, 0, 2313.01, 6004.88, 142.826, 4.67748, 300, 0, 0, 4892, 2846, 0);
REPLACE INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES 
(2000000685,'Can you see yourselves? That is the most pathetic excuse for sword slinging I\'ve ever seen!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000686,'You\'re dead, not buried. Now show me your best!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000687,'Alright you sorry sacks of bones. Let\'s see what you\'ve got. Strike your opponent, and don\'t stop till I say so.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES 
(2000000688,'I hope those blood elves across the way don\'t think that I\'m spying on them!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000689,'If I were smart, I\'d be selling this research for a seat on the rocket ship. I have a feeling we\'re going to need to get out of here soon!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000690,'If this is right, we don\'t have long! Oh well.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000691,'This is the last time that I buy second-hand equipment from ethereal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES 
(2000000692,'I brought you a housewarming gift, Jarl.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000693,'Go on, open it. I think you\'ll like it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000694,'Jarl?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000695,'Unless it\'s something I can eat, I don\'t want it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000696,'Jarl, you haven\'t been yourself ever since I arrived. What\'s going on?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000697,'Nothing. Wanna help me whip up some frog leg stew?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000698,'I came out here to visit you, Jarl! And I find you living in an empty cabin in the middle of nowhere, babbling about frogs? You\'re hopeless!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES 
(2000000699,'Edward. Tyler. Prepare for your first challenge.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000700,'Lysta, summon in the captives.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000701,'Not a challenge at all it seems. Let us see how hou handle your second test. Lysta, bring forth the minions of the Lich King.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000702,'Lysta, summon in undead captives.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000703,'It is time to force your final challenge young warriors! Prepare for your hardest fight yet.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000704,'Lysta, summon forth... the abomination!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000705,'Well done Edward and Tyler. You are progressing along in your training quite nicely. We shall test your mettle again soon.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
DELETE FROM `creature` WHERE `guid` = 16022;
DELETE FROM `creature` WHERE `guid` = 16009;
DELETE FROM `creature` WHERE `guid` = 126907;
DELETE FROM `creature` WHERE `guid` = 126908;
DELETE FROM `creature` WHERE `guid` = 126909;
UPDATE creature_template SET faction_A=7, faction_H=7 WHERE entry in (5680,5681,5685,5686,5687);
DELETE FROM quest_start_scripts WHERE id =2608;
DELETE FROM quest_start_scripts WHERE id =2480;
DELETE FROM quest_start_scripts WHERE id =3625;
DELETE FROM quest_start_scripts WHERE id =3321;
DELETE FROM quest_start_scripts WHERE id =2765;
DELETE FROM quest_start_scripts WHERE id =1713;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(13959, 6176, 0, 1, 1, 0, 0, 250.84, -1470.58, 55.4491, 1.39626, 300, 0, 0, 1342, 0, 0);
UPDATE db_script_string SET content_default ='%s begins a spell of summoning...',content_loc8=NULL WHERE entry =2000000071;
UPDATE db_script_string SET content_default ='Follow, $N. I will soon begin the summoning...',content_loc8=NULL WHERE entry =2000000062;
UPDATE locales_gossip_menu_option SET `id`='0' WHERE `menu_id`=8523 AND `id`=1;
DELETE FROM gossip_menu_option WHERE menu_id=8523;
UPDATE `locales_gossip_menu_option` SET `id`='0' WHERE `menu_id`=8752 AND `id`=1;
DELETE FROM gossip_menu_option WHERE menu_id=8752;
DELETE FROM gossip_menu_option WHERE menu_id=8751;
DELETE FROM gossip_menu_option WHERE menu_id=7608;
UPDATE `locales_gossip_menu_option` SET `id`='0' WHERE `menu_id`=7722 AND `id`=1;
DELETE FROM gossip_menu_option WHERE menu_id=7722;
UPDATE creature_template SET MovementType=0 WHERE entry=17682;
UPDATE gameobject_template SET flags=0, data2=30000 WHERE entry=181928;
DELETE FROM gameobject_scripts WHERE id=21671;
INSERT INTO gameobject_scripts (id,delay,command,datalong,datalong2,dataint,x,y,z,o) VALUES 
(21671,0,8,17682,1,0,0,0,0,0),
(21671,3,0,0,17682,2000000706,0,0,0,0);
REPLACE INTO db_script_string (entry,content_default) VALUES
(2000000706,'Thank you for saving me, $N! My father will be delighted!');
UPDATE quest_template SET StartScript=11351, CompleteScript=11351 WHERE id=11351;
DELETE FROM quest_start_scripts WHERE id=11351;
REPLACE INTO db_script_string (entry,content_default) VALUES 
(2000001065,'They keep their tools in boxes that look like this. Look for them near the pavilions.');
DELETE FROM quest_end_scripts WHERE id=11351;
REPLACE INTO db_script_string (entry,content_default) VALUES 
(2000001066,'I\'m only going to carve the runes I think will give you command over a giant.'),
(2000001067,'I\'m omitting the runes for "north" and "west" because I\'m not sure how they impact the giant. I\'m also including a rune to limit how long you can control it'),
(2000001068,'There we go, the Rune of Command... hopefully. Not nearly as vicious as its Iron Dwarf cousin, but functional.');
UPDATE creature_template SET MovementType=0 WHERE entry IN(19862, 20137, 19864);
DELETE FROM gossip_menu_option WHERE menu_id=8894;
UPDATE creature_template SET MovementType=0, movementId=0 WHERE entry=20518;
UPDATE creature_template SET gossip_menu_id=8127 WHERE entry=20518;
DELETE FROM `creature` WHERE `guid` = 123855;
DELETE FROM gossip_menu_option WHERE menu_id=8062;
DELETE FROM gossip_menu WHERE entry IN (8127);
INSERT INTO gossip_menu (entry, text_id) VALUES (8127, 9971);
DELETE FROM event_scripts WHERE id IN (15826,16133);
REPLACE INTO db_script_string (entry,content_default) VALUES 
(2000000710,'The failed concoction spills on the floor and appears to come to life!'),
(2000000711,'It\'s alive!'),
(2000000712,'The mixture! It moves!'),
(2000000713,'Steady your hand, you fool! Those are rare components you\'re spilling on the floor!'),
(2000000714,'$N\'s concoction is ruined. A new one must be created from scratch.');
UPDATE creature_template SET minlevel=67, maxlevel=68, faction_A=14, faction_H=14 WHERE entry=24279;
DELETE FROM event_scripts WHERE id=15726;
REPLACE INTO db_script_string (entry,content_default) VALUES 
(2000000707,'Are YOU the one who interrupted my dinner? Well, are you?'),
(2000000708,'You\'re too ugly and scrawny to be a female yeti! And now you\'re making me mad...');
DELETE FROM gossip_menu_option WHERE menu_id=1443;
REPLACE INTO db_script_string (entry, content_default) VALUES 
(2000000709,'Thank again, $n.  Now I\'ll just wait here until it\'s safe to leave.');
REPLACE INTO gossip_menu (entry, text_id) VALUES (9055, 9051);
DELETE FROM gossip_menu_option WHERE menu_id=9055;
UPDATE `creature_template` SET `gossip_menu_id`='9055' WHERE `entry`=25036;
DELETE FROM event_scripts WHERE id=12823;
REPLACE INTO db_script_string (entry, content_default) VALUES 
(2000000715,'Urtrak kill you!'),
(2000000716,'Vengeance is ours!  Attack my brothers!');
DELETE FROM quest_end_scripts WHERE id =943;
REPLACE INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES 
(2000000723,'%s begins to manipulate the Stone of Relu over the two fossils.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000724,'Who hath summoned forth Aman?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000725,'Ah, I see you toil with relics of the past.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000726,'Be warned that even your creators are fallible.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000727,'Digging too deep into your past might bring an abrupt end to your future.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000728,'Aman dissipates before your eyes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000717, 'Denalan removes the seeds from the Glowing Fruit...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000718, 'Let''s see how these seeds grow in my prepared soil...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000719, 'Denalan plants fruit seeds.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000720, 'Bogling rises from the soil!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000721, 'Denalan hurries to his planter.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000722, 'I hope this frond takes root...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
DELETE FROM quest_end_scripts WHERE id =930;
DELETE FROM quest_end_scripts WHERE id =7642;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(6438, 1416, 0, 1, 1, 0, 0, -8387, 685.202, 95.356, 2.286, 430, 0, 0, 2769, 0, 0);
DELETE FROM quest_end_scripts WHERE id =1391;
UPDATE creature SET Spawntimesecs =30 WHERE guid =2968;
DELETE FROM quest_end_scripts WHERE id =1383;
DELETE FROM quest_end_scripts WHERE id =1191;
DELETE FROM quest_end_scripts WHERE id =997;
DELETE FROM quest_end_scripts WHERE id =10715;
DELETE FROM quest_end_scripts WHERE id =9397;
DELETE FROM quest_end_scripts WHERE id =10349;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(76910, 19294, 530, 1, 1, 0, 0, -294.766, 4715.08, 28.1862, 0.20944, 300, 0, 0, 11430, 5410, 0);
DELETE FROM quest_end_scripts WHERE id =407;
UPDATE creature SET Spawntimesecs =30, Curhealth =176 WHERE guid =17438;
REPLACE INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000729, 'Ah, that sure does hit the spot! I think i''ll get myself a couple more...can you watch these barrels for me, $N?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000730, 'How goes the barrel watching...?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000731, 'Well, back to business for me. But it sure was nice taking that short break, and it''s always nice drinking Thunder Ale!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
DELETE FROM quest_end_scripts WHERE id =308;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(8405, 1373, 0, 1, 1, 0, 0, -5605.96, -544.451, 392.43, 0.977384, 180, 0, 0, 328, 0, 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(6011, 270, 0, 1, 1, -5607.24, -547.934, 392.985, 0.471239, 0, 0, 0.69985, -0.71429, -600, 0, 1);
UPDATE quest_template SET PrevQuestId =-310 WHERE id =308;
UPDATE gameobject_template SET size =1.1 WHERE entry =270;
DELETE FROM quest_end_scripts WHERE id =10919;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(59114, 20206, 530, 1, 1, 0, 0, -684.603, 2626.44, 89.1955, 2.22254, 300, 0, 0, 42, 0, 0);
REPLACE INTO gossip_menu (entry, text_id) VALUES (8724, 11025);
REPLACE INTO gossip_menu (entry, text_id) VALUES (8722, 10999);
REPLACE INTO gossip_menu (entry, text_id) VALUES (8721, 10986);
REPLACE INTO gossip_menu (entry, text_id) VALUES (8717, 10975);
REPLACE INTO gossip_menu (entry, text_id) VALUES (8716, 10965);
REPLACE INTO gossip_menu (entry, text_id) VALUES (8726, 11035);
UPDATE `db_script_string` SET `content_default`='ACK! That''s the worst thing I''ve ever tasted! I wouldn''t let my ram drink that!' WHERE `entry`=2000001203;
DELETE FROM `event_scripts` WHERE `id` = 14536;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(14536, 2, 10, 21514, 3000000, 0, 3632.31, 7159.56, 142.12, 3.56);
UPDATE creature_template SET npcflag=2 WHERE entry =3692;
UPDATE creature_template SET faction_A=40, faction_H=40 WHERE entry =9520;
DELETE FROM event_scripts WHERE id=12650;
REPLACE INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES 
(2000000732,'%s dons his wolf-fur vestments.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000733,'%s howls in response to Malukaz\'s call.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000734,'%s expresses its approval.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000735,'May our bond with you never be broken again, spirit.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000736,'We have done it! Thrall would be proud.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
UPDATE creature_template SET MovementType=2 WHERE entry=19616;
DELETE FROM quest_start_scripts WHERE id=10791;
UPDATE quest_template SET StartScript =10791 WHERE id =10791;
UPDATE creature_template SET MovementType=0 WHERE entry =18384;
UPDATE creature_template SET InhabitType =1 WHERE entry IN (7044,7045,7046,14388);
DELETE FROM quest_start_scripts WHERE id =945;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(42717, 3584, 1, 1, 1, 0, 0, 4519.74, 410.481, 33.8577, 2.48947, 275, 0, 0, 510, 0, 0);
UPDATE `db_script_string` SET `content_default`='It will be done, my lord.', `content_loc8`=NULL WHERE `entry`=2000000037;
UPDATE `db_script_string` SET `content_default`='I can make it the rest of the way. $N. THANKS!', `content_loc8`=NULL WHERE `entry`=2000000038;
DELETE FROM quest_start_scripts WHERE id =11108;
REPLACE INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES 
(2000000737,'What is the meaning of this, Mor\'ghor?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000738,'SILENCE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000739,'Blathering idiot. You incomprehensibly incompetent buffoon...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000740,'THIS is your hero?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000741,'You have been deceived, imbecile.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000742,'This... whole... operation... HAS BEEN COMPROMISED!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000743,'I expect to see this insect\'s carcass in pieces in my lair within the hour. Fail and you will suffer a fate so much worse than death.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000000744,'You will not harm the boy, Mor\'ghor! Quickly, $N, climb on my back!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
UPDATE creature_template SET gossip_menu_id=361 WHERE entry=24734;
REPLACE INTO gossip_menu (entry, text_id) VALUES (361, 838);
UPDATE creature_template SET gossip_menu_id=9111 WHERE entry=25108;
REPLACE INTO gossip_menu (entry, text_id) VALUES (9111, 12320);
UPDATE creature_template SET gossip_menu_id=9127 WHERE entry=25069;
UPDATE creature_template SET gossip_menu_id=9063 WHERE entry=25061;
REPLACE INTO gossip_menu (entry, text_id) VALUES (9127, 12340);
REPLACE INTO gossip_menu (entry, text_id) VALUES (9063, 12256);
UPDATE creature_template SET gossip_menu_id=9064 WHERE entry=25057;
UPDATE creature_template SET gossip_menu_id=9105 WHERE entry=25169;
REPLACE INTO gossip_menu (entry, text_id) VALUES (9064, 12258);
REPLACE INTO gossip_menu (entry, text_id) VALUES (9105, 12309);
UPDATE creature_template SET gossip_menu_id=9052 WHERE entry=24965;
UPDATE creature_template SET gossip_menu_id=9115 WHERE entry=25112;
REPLACE INTO gossip_menu (entry, text_id) VALUES (9115, 12323);
REPLACE INTO gossip_menu (entry, text_id) VALUES (9052, 12241);
UPDATE creature_template SET gossip_menu_id=7888 WHERE entry=19015;
UPDATE creature_template SET gossip_menu_id=9050 WHERE entry=24975;
UPDATE creature_template SET gossip_menu_id=9087 WHERE entry=25046;
UPDATE creature_template SET gossip_menu_id=9126 WHERE entry=25032;
UPDATE creature_template SET gossip_menu_id=9198 WHERE entry=25950;
REPLACE INTO gossip_menu (entry, text_id) VALUES (9050, 12237);
REPLACE INTO gossip_menu (entry, text_id) VALUES (9087, 12286);
REPLACE INTO gossip_menu (entry, text_id) VALUES (9126, 12338);
REPLACE INTO gossip_menu (entry, text_id) VALUES (9198, 12497);
UPDATE creature_template SET gossip_menu_id=7817 WHERE entry=18749;
UPDATE creature SET MovementType =2, spawndist =0 WHERE guid =71531;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(53334, 7046, 0, 1, 1, 0, 0, -8342.42, -985.418, 183.41, 5.5862, 500, 10, 0, 3374, 0, 1),
(18533, 7046, 0, 1, 1, 0, 0, -8055.33, -777.452, 131.311, 2.8381, 500, 0, 0, 3374, 0, 2);
DELETE FROM `creature` WHERE `guid` = 6589;
DELETE FROM `creature` WHERE `guid` = 6594;
DELETE FROM `creature` WHERE `guid` = 6638;
DELETE FROM `creature` WHERE `guid` = 6659;
DELETE FROM `creature` WHERE `guid` = 6748;
DELETE FROM `creature` WHERE `guid` = 6766;
DELETE FROM `creature` WHERE `guid` = 6773;
DELETE FROM `creature` WHERE `guid` = 6775;
DELETE FROM `creature` WHERE `guid` = 6793;
DELETE FROM `creature` WHERE `guid` = 6795;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(6469, 7044, 0, 1, 1, 0, 0, -8143.2, -2888.34, 135.543, 2.7803, 500, 0, 0, 2964, 0, 2),
(6496, 7044, 0, 1, 1, 0, 0, -7587, -2753.57, 133.237, 4.64548, 500, 0, 0, 2964, 0, 2),
(6527, 7044, 0, 1, 1, 0, 0, -7887.52, -2901.16, 133.264, 0.286463, 500, 0, 0, 2964, 0, 2);
DELETE FROM `creature` WHERE `guid` = 6812;
DELETE FROM `creature` WHERE `guid` = 6821;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(6751, 8964, 0, 1, 1, 0, 0, -7686.98, -1121.87, 287.51, 4.70997, 900, 0, 0, 6645, 0, 2),
(6809, 8964, 0, 1, 1, 0, 0, -7562.28, -1120.6, 306.937, 4.37475, 900, 0, 0, 6645, 0, 2);
DELETE FROM `creature` WHERE `guid` = 6482;
DELETE FROM `creature` WHERE `guid` = 6495;
DELETE FROM `creature` WHERE `guid` = 6524;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(6477, 14388, 0, 1, 1, 0, 0, -8150, -540, 200.85, 1.866, 430, 0, 0, 3322, 0, 2);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(3695, 572, 0, 1, 1, 0, 0, -10084.3, 1558.13, 41.064, 3.65463, 72000, 5, 0, 404, 456, 1),
(126879, 572, 0, 1, 1, 0, 0, -11277.3, 1021.93, 94.7337, 5.18302, 72000, 0, 0, 404, 456, 2);
DELETE FROM gossip_menu_option WHERE menu_id in (5381,5382);
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 5382 AND `id` = 1;
DELETE FROM `npc_trainer` WHERE `entry` in (12920,12939);
UPDATE `creature_template` SET `npcflag`='3' WHERE `entry` in (12920,12939);
UPDATE quest_template SET DetailsEmote1=6, DetailsEmote2=1, OfferRewardEmote1=7, OfferRewardEmote2=1 WHERE id=7025;
UPDATE creature SET spawntimesecs=600 WHERE id IN (13602);
DELETE FROM pool_template WHERE entry=14176;
INSERT INTO pool_template VALUES (14176,3,'The Deadmines - Large Battered Chests');
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(20905, 75293, 36, 1, 1, -312.046, -477.501, 49.5979, -1.55334, 0, 0, -0.700908, 0.713252, 86400, 100, 1),
(25766, 75293, 36, 1, 1, -77.7409, -788.596, 26.1097, 1.16937, 0, 0, 0.551937, 0.833886, 86400, 100, 1),
(25768, 75293, 36, 1, 1, -209.206, -602.72, 19.3065, -0.139626, 0, 0, -0.0697563, 0.997564, 86400, 100, 1),
(25769, 75293, 36, 1, 1, -63.0889, -797.013, 39.0067, 1.55334, 0, 0, 0.700908, 0.713252, 86400, 100, 1),
(25771, 75293, 36, 1, 1, -300.887, -532.542, 49.4236, 0.226893, 0, 0, 0.113203, 0.993572, 86400, 100, 1),
(7486, 75293, 36, 1, 1, -155.3, -913.896, 10.2809, 0.90757, 0, 0, 0.438371, 0.898794, 86400, 100, 1),
(7487, 75293, 36, 1, 1, -121.301, -810.208, 16.9638, 1.76278, 0, 0, 0.771624, 0.636079, 86400, 100, 1);
REPLACE INTO pool_gameobject VALUES (20905,14176,0,'The Deadmines - Large Battered Chest 1');
REPLACE INTO pool_gameobject VALUES (25766,14176,0,'The Deadmines - Large Battered Chest 2');
REPLACE INTO pool_gameobject VALUES (25768,14176,0,'The Deadmines - Large Battered Chest 3');
REPLACE INTO pool_gameobject VALUES (25769,14176,0,'The Deadmines - Large Battered Chest 4');
REPLACE INTO pool_gameobject VALUES (25771,14176,0,'The Deadmines - Large Battered Chest 5');
REPLACE INTO pool_gameobject VALUES (7486,14176,0,'The Deadmines - Large Battered Chest 6');
REPLACE INTO pool_gameobject VALUES (7487,14176,0,'The Deadmines - Large Battered Chest 7');
UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE `guid`=71704;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(102294, 19673, 530, 1, 1, 0, 0, -3127.5, 4922.79, -98.2781, 2.44596, 6, 0, 0, 28575, 0, 2);
REPLACE INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000745, 'I can''t belive you imbeciles went to school for this! Does anybody here know what they''re doing?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000746, 'Is it done yet? What is talking so damned long?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000747, 'Is that damned thing safe to go through yet?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000748, 'Not really.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000749, 'Will you stop asking that?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000750, 'Alright, it looks safe. Get in there, engineer!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000751, 'Here goes nothing!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000752, 'This is gonna leave a mark...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000753, '%s runs his hands across his body to make sure everything is intact.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000754, 'I made it! I made it!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000755, '%s shakes his head in disapproval.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000756, 'I didn''t like him much anyway. Too much talk, not enough "do."', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000757, 'Nice going you incompetent morons! Another one of our engineers vaporized!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
UPDATE `creature_template` SET `unit_flags` = 2 WHERE `entry` = 35607;
UPDATE `creature_template` SET `unit_flags` = 2 WHERE `entry` = 35594;
UPDATE quest_template SET RequestItemsText = 'Back so soon? In case I didn\'t make myself clear we need you to kill 10 Stonesplinter Shaman and 10 Stonesplinter Bonesnappers, $N. Now go get \'em, Trogg-Slayer!' WHERE id = 263;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(40278, 188126, 530, 1, 1, -1709.69, 5461.01, -7.92767, 1.85005, 0, 0, 0.798635, 0.601815, 180, 255, 1),
(40279, 188126, 530, 1, 1, -1745.81, 5533.84, -7.92614, -0.977383, 0, 0, -0.469471, 0.882948, 180, 255, 1),
(40274, 188127, 530, 1, 1, -1987.36, 5320.47, -6.77673, -1.23918, 0, 0, -0.580703, 0.814116, 180, 255, 1),
(40275, 188127, 530, 1, 1, -2025.81, 5396.9, -6.56243, 2.11185, 0, 0, 0.870356, 0.492424, 180, 255, 1);
DELETE FROM quest_end_scripts WHERE id =931;
DELETE FROM gameobject WHERE guid = '49657';
DELETE FROM gameobject WHERE guid = '49663';
DELETE FROM gameobject_questrelation WHERE id =269;
DELETE FROM gameobject_involvedrelation WHERE id =269;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(20960, 7856, 1, 1, 1, 0, 0, -7953.5, -5253.57, 0.694111, 3.32224, 300, 0, 0, 2138, 0, 2);
DELETE FROM `gameobject` WHERE `guid` = 28562;
DELETE FROM `gameobject` WHERE `guid` = 28572;
DELETE FROM `gameobject` WHERE `guid` = 28564;
DELETE FROM `gameobject` WHERE `guid` = 28563;
DELETE FROM `gameobject` WHERE `guid` = 28575;
DELETE FROM `gameobject` WHERE `guid` = 28566;
DELETE FROM `gameobject` WHERE `guid` = 28571;
DELETE FROM `gameobject` WHERE `guid` = 28573;
DELETE FROM `gameobject` WHERE `guid` = 28569;
DELETE FROM `gameobject` WHERE `guid` = 28570;
DELETE FROM `gameobject` WHERE `guid` = 28561;
DELETE FROM `gameobject` WHERE `guid` = 28565;
DELETE FROM `gameobject` WHERE `guid` = 28568;
DELETE FROM `gameobject` WHERE `guid` = 28574;
DELETE FROM `gameobject` WHERE `guid` = 28567;
DELETE FROM `gameobject` WHERE `guid` = 28577;
DELETE FROM `gameobject` WHERE `guid` = 28581;
DELETE FROM `gameobject` WHERE `guid` = 28582;
DELETE FROM `gameobject` WHERE `guid` = 28576;
DELETE FROM `gameobject` WHERE `guid` = 28578;
DELETE FROM `gameobject` WHERE `guid` = 28580;
DELETE FROM `gameobject` WHERE `guid` = 28584;
DELETE FROM `gameobject` WHERE `guid` = 28583;
DELETE FROM `gameobject` WHERE `guid` = 28585;
DELETE FROM `gameobject` WHERE `guid` = 28579;
DELETE FROM `gameobject` WHERE `guid` = 28586;
DELETE FROM `gameobject` WHERE `guid` = 28591;
DELETE FROM `gameobject` WHERE `guid` = 28593;
DELETE FROM `gameobject` WHERE `guid` = 28594;
DELETE FROM `gameobject` WHERE `guid` = 28589;
DELETE FROM `gameobject` WHERE `guid` = 28595;
DELETE FROM `gameobject` WHERE `guid` = 28590;
DELETE FROM `gameobject` WHERE `guid` = 28588;
DELETE FROM `gameobject` WHERE `guid` = 28587;
DELETE FROM `gameobject` WHERE `guid` = 28592;
DELETE FROM `gameobject` WHERE `guid` = 28601;
DELETE FROM `gameobject` WHERE `guid` = 28596;
DELETE FROM `gameobject` WHERE `guid` = 28603;
DELETE FROM `gameobject` WHERE `guid` = 28604;
DELETE FROM `gameobject` WHERE `guid` = 28600;
DELETE FROM `gameobject` WHERE `guid` = 28605;
DELETE FROM `gameobject` WHERE `guid` = 28602;
DELETE FROM `gameobject` WHERE `guid` = 28599;
DELETE FROM `creature` WHERE `guid` = 7209;
DELETE FROM `creature_loot_template` WHERE `item` = 4278;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 68865 AND `item` = 5897;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 21277 AND `item` = 5897;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='75',`maxcount`='2' WHERE `item`=13545;
UPDATE `gameobject_template` SET `faction`='35', `flags`='6', `data1`='105176' WHERE `entry`=105176;
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES ('105176', '7389', '-100', '0', '1', '1');
REPLACE INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('14180', '1', 'Shellfish Trap 1+2'),
('14181', '1', 'Shellfish Trap 1+2'),
('14182', '1', 'Shellfish Trap 1+2'),
('14183', '1', 'Shellfish Trap 1+2'),
('14184', '1', 'Shellfish Trap 1+2'),
('14185', '1', 'Shellfish Trap 1+2'),
('14186', '1', 'Shellfish Trap 1+2'),
('14187', '1', 'Shellfish Trap 1+2'),
('14188', '1', 'Shellfish Trap 1+2'),
('14189', '1', 'Shellfish Trap 1+2'),
('14190', '1', 'Shellfish Trap 1+2'),
('14191', '1', 'Shellfish Trap 1+2'),
('14192', '1', 'Shellfish Trap 1+2'),
('14193', '1', 'Shellfish Trap 1+2'),
('14194', '1', 'Shellfish Trap 1+2'),
('14195', '1', 'Shellfish Trap 1+2');
REPLACE INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
('7507', '14180', '0', 'Shellfish Trap 1'), ('28558', '14180', '0', 'Shellfish Trap 2'),
('7510', '14181', '0', 'Shellfish Trap 1'), ('28557', '14181', '0', 'Shellfish Trap 2'),
('7514', '14182', '0', 'Shellfish Trap 1'), ('28550', '14182', '0', 'Shellfish Trap 2'),
('1471', '14183', '0', 'Shellfish Trap 1'), ('28549', '14183', '0', 'Shellfish Trap 2'),
('7515', '14184', '0', 'Shellfish Trap 1'), ('28553', '14184', '0', 'Shellfish Trap 2'),
('7519', '14185', '0', 'Shellfish Trap 1'), ('28555', '14185', '0', 'Shellfish Trap 2'),
('7520', '14186', '0', 'Shellfish Trap 1'), ('28548', '14186', '0', 'Shellfish Trap 2'),
('7528', '14187', '0', 'Shellfish Trap 1'), ('28547', '14187', '0', 'Shellfish Trap 2'),
('7529', '14188', '0', 'Shellfish Trap 1'), ('28559', '14188', '0', 'Shellfish Trap 2'),
('7531', '14189', '0', 'Shellfish Trap 1'), ('28560', '14189', '0', 'Shellfish Trap 2'),
('7532', '14190', '0', 'Shellfish Trap 1'), ('28556', '14190', '0', 'Shellfish Trap 2'),
('66338', '14191', '0', 'Shellfish Trap 1'), ('28551', '14191', '0', 'Shellfish Trap 2'),
('7488', '14192', '0', 'Shellfish Trap 1'), ('28546', '14192', '0', 'Shellfish Trap 2'),
('7489', '14193', '0', 'Shellfish Trap 1'), ('28552', '14193', '0', 'Shellfish Trap 2'),
('7492', '14194', '0', 'Shellfish Trap 1'), ('28598', '14194', '0', 'Shellfish Trap 2'),
('7504', '14195', '0', 'Shellfish Trap 1'), ('28597', '14195', '0', 'Shellfish Trap 2');
UPDATE `gameobject_template` SET `data1`='0' WHERE `entry`=176635;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 176635;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(7507, 176582, 1, 1, 1, -1754.22, 3332.64, -43.293, 0.401426, 0, 0, 0.199368, 0.979925, 180, 100, 1),
(7510, 176582, 1, 1, 1, -1831.1, 3343.21, -44.4896, 0.244346, 0, 0, 0.121869, 0.992546, 180, 100, 1),
(7514, 176582, 1, 1, 1, -1920.99, 3326.93, -74.3969, -2.68781, 0, 0, -0.97437, 0.22495, 180, 100, 1),
(1471, 176582, 1, 1, 1, -1869.41, 3139.91, -29.0381, -0.401426, 0, 0, -0.199368, 0.979925, 180, 100, 1),
(7515, 176582, 1, 1, 1, -1860.29, 3183.45, -34.1432, 3.00197, 0, 0, 0.997564, 0.0697546, 180, 100, 1),
(7519, 176582, 1, 1, 1, -1796.36, 3300.82, -69.3038, 3.08923, 0, 0, 0.999657, 0.0261783, 180, 100, 1),
(7520, 176582, 1, 1, 1, -2005.05, 3358.99, -80.155, -1.79769, 0, 0, -0.782608, 0.622514, 180, 100, 1),
(7528, 176582, 1, 1, 1, -1861.97, 3384.48, -69.699, -0.994838, 0, 0, -0.477159, 0.878817, 180, 100, 1),
(7529, 176582, 1, 1, 1, -1834.32, 3425.38, -48.2402, -1.43117, 0, 0, -0.656059, 0.75471, 180, 100, 1),
(7531, 176582, 1, 1, 1, -2024.38, 3293.43, -43.9713, -1.25664, 0, 0, -0.587786, 0.809016, 180, 100, 1),
(7532, 176582, 1, 1, 1, -1975.23, 3193.08, -66.2544, -1.13446, 0, 0, -0.537298, 0.843393, 180, 100, 1),
(66338, 176582, 1, 1, 1, -1962.74, 3303.61, -42.876, 2.53073, 0, 0, 0.953717, 0.300705, 180, 100, 1),
(7488, 176582, 1, 1, 1, -1980.03, 3252.06, -32.7441, 0.610865, 0, 0, 0.300706, 0.953717, 180, 100, 1),
(7489, 176582, 1, 1, 1, -1799.84, 3226.16, -45.5012, -1.79769, 0, 0, -0.782608, 0.622514, 180, 100, 1),
(7492, 176582, 1, 1, 1, -1994.45, 3401.67, -80.061, -2.9147, 0, 0, -0.993572, 0.113203, 180, 100, 1),
(7504, 176582, 1, 1, 1, -1683.83, 3321.01, -44.2335, 2.14675, 0, 0, 0.878816, 0.477161, 180, 100, 1),
(28558, 176635, 1, 1, 1, -1754.22, 3332.64, -43.293, 0.401426, 0, 0, 0.199368, 0.979925, 180, 100, 1),
(28557, 176635, 1, 1, 1, -1831.1, 3343.21, -44.4896, 0.244346, 0, 0, 0.121869, 0.992546, 180, 100, 1),
(28550, 176635, 1, 1, 1, -1920.99, 3326.93, -74.3969, -2.68781, 0, 0, -0.97437, 0.22495, 180, 100, 1),
(28549, 176635, 1, 1, 1, -1869.41, 3139.91, -29.0381, -0.401426, 0, 0, -0.199368, 0.979925, 180, 100, 1),
(28553, 176635, 1, 1, 1, -1860.29, 3183.45, -34.1432, 3.00197, 0, 0, 0.997564, 0.0697546, 180, 100, 1),
(28555, 176635, 1, 1, 1, -1796.36, 3300.82, -69.3038, 3.08923, 0, 0, 0.999657, 0.0261783, 180, 100, 1),
(28548, 176635, 1, 1, 1, -2005.05, 3358.99, -80.155, -1.79769, 0, 0, -0.782608, 0.622514, 180, 100, 1),
(28547, 176635, 1, 1, 1, -1861.97, 3384.48, -69.699, -0.994838, 0, 0, -0.477159, 0.878817, 180, 100, 1),
(28559, 176635, 1, 1, 1, -1834.32, 3425.38, -48.2402, -1.43117, 0, 0, -0.656059, 0.75471, 180, 100, 1),
(28560, 176635, 1, 1, 1, -2024.38, 3293.43, -43.9713, -1.25664, 0, 0, -0.587786, 0.809016, 180, 100, 1),
(28556, 176635, 1, 1, 1, -1975.23, 3193.08, -66.2544, -1.13446, 0, 0, -0.537298, 0.843393, 180, 100, 1),
(28551, 176635, 1, 1, 1, -1962.74, 3303.61, -42.876, 2.53073, 0, 0, 0.953717, 0.300705, 180, 100, 1),
(28546, 176635, 1, 1, 1, -1980.03, 3252.06, -32.7441, 0.610865, 0, 0, 0.300706, 0.953717, 180, 100, 1),
(28552, 176635, 1, 1, 1, -1799.84, 3226.16, -45.5012, -1.79769, 0, 0, -0.782608, 0.622514, 180, 100, 1),
(28598, 176635, 1, 1, 1, -1994.45, 3401.67, -80.061, -2.9147, 0, 0, -0.993572, 0.113203, 180, 100, 1),
(28597, 176635, 1, 1, 1, -1683.83, 3321.01, -44.2335, 2.14675, 0, 0, 0.878816, 0.477161, 180, 100, 1),
(7553, 176592, 1, 1, 1, -1754.22, 3332.64, -43.293, 0.401426, 0, 0, 0.199368, 0.979925, 180, 100, 1),
(7554, 176592, 1, 1, 1, -1831.1, 3343.21, -44.4896, 0.244346, 0, 0, 0.121869, 0.992546, 180, 100, 1),
(7556, 176592, 1, 1, 1, -1920.99, 3326.93, -74.3969, -2.68781, 0, 0, -0.97437, 0.22495, 180, 100, 1),
(7557, 176592, 1, 1, 1, -1869.41, 3139.91, -29.0381, -0.401426, 0, 0, -0.199368, 0.979925, 180, 100, 1),
(7558, 176592, 1, 1, 1, -1860.29, 3183.45, -34.1432, 3.00197, 0, 0, 0.997564, 0.0697546, 180, 100, 1),
(71223, 176592, 1, 1, 1, -1796.36, 3300.82, -69.3038, 3.08923, 0, 0, 0.999657, 0.0261783, 180, 100, 1),
(71246, 176592, 1, 1, 1, -2005.05, 3358.99, -80.155, -1.79769, 0, 0, -0.782608, 0.622514, 180, 100, 1),
(71247, 176592, 1, 1, 1, -1861.97, 3384.48, -69.699, -0.994838, 0, 0, -0.477159, 0.878817, 180, 100, 1),
(44245, 176592, 1, 1, 1, -1834.32, 3425.38, -48.2402, -1.43117, 0, 0, -0.656059, 0.75471, 180, 100, 1),
(44246, 176592, 1, 1, 1, -2024.38, 3293.43, -43.9713, -1.25664, 0, 0, -0.587786, 0.809016, 180, 100, 1),
(44247, 176592, 1, 1, 1, -1975.23, 3193.08, -66.2544, -1.13446, 0, 0, -0.537298, 0.843393, 180, 100, 1),
(44248, 176592, 1, 1, 1, -1962.74, 3303.61, -42.876, 2.53073, 0, 0, 0.953717, 0.300705, 180, 100, 1),
(44249, 176592, 1, 1, 1, -1980.03, 3252.06, -32.7441, 0.610865, 0, 0, 0.300706, 0.953717, 180, 100, 1),
(44250, 176592, 1, 1, 1, -1799.84, 3226.16, -45.5012, -1.79769, 0, 0, -0.782608, 0.622514, 180, 100, 1),
(44251, 176592, 1, 1, 1, -1994.45, 3401.67, -80.061, -2.9147, 0, 0, -0.993572, 0.113203, 180, 100, 1),
(28554, 176592, 1, 1, 1, -1683.83, 3321.01, -44.2335, 2.14675, 0, 0, 0.878816, 0.477161, 180, 100, 1);
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`) VALUES
(176592, 6, 1287, 'TEMP Shellfish Trap', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17679, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(15312, 2653, 0, 1, 1, -986, -3874, 149.125, 5.489, 0, 0, 0.386739, -0.922189, 60, 255, 1),
(1603, 2653, 0, 1, 1, -989, -3852, 149.946, 5.489, 0, 0, 0.386739, -0.922189, 60, 255, 1),
(14939, 2653, 0, 1, 1, -926, -3857, 145.847, 0.037, 0, 0, 0.0184989, 0.999829, 60, 255, 1),
(15855, 2653, 0, 1, 1, -817, -3883, 144.968, 2.956, 0, 0, 0.995697, 0.0926632, 60, 255, 1),
(4347, 2653, 0, 1, 1, -883, -3979.5, 139.893, 4.69, 0, 0, 0.714978, -0.699147, 60, 255, 1),
(15080, 2653, 0, 1, 1, -884, -3912, 134.78, 5.318, 0, 0, 0.464077, -0.885795, 60, 255, 1),
(16145, 2653, 0, 1, 1, -930, -3875, 147.403, 2.463, 0, 0, 0.942989, 0.332824, 60, 255, 1),
(16826, 2653, 0, 1, 1, -968, -3890, 151.423, 5.489, 0, 0, 0.386739, -0.922189, 60, 255, 1),
(1724, 2653, 0, 1, 1, -798, -3897, 144.968, 0.587, 0, 0, 0.289304, 0.957237, 60, 255, 1),
(15590, 2653, 0, 1, 1, -931, -3953, 148.85, 3.308, 0, 0, 0.996541, -0.0831077, 60, 255, 1),
(2029, 2653, 0, 1, 1, -946.57, -3893, 154.072, 5.351, 0, 0, 0.449399, -0.893331, 60, 255, 1),
(7559, 2653, 0, 1, 1, -836, -3929, 148.626, 0.973, 0, 0, 0.467535, 0.883975, 60, 255, 1),
(7562, 2653, 0, 1, 1, -911, -3946, 151.794, 5.935, 0, 0, 0.173215, -0.984884, 60, 255, 1),
(7563, 2653, 0, 1, 1, -897, -3949, 138.035, 5.191, 0, 0, 0.519352, -0.85456, 60, 255, 1),
(7572, 2653, 0, 1, 1, -938, -3848, 148.087, 1.133, 0, 0, 0.536682, 0.843785, 60, 255, 1),
(7578, 2653, 0, 1, 1, -925, -3892, 144.599, 2.709, 0, 0, 0.976699, 0.214614, 60, 255, 1),
(7587, 2653, 0, 1, 1, -858, -3999, 146.267, 5.997, 0, 0, 0.142605, -0.98978, 60, 255, 1),
(7588, 2653, 0, 1, 1, -896, -4000, 144.195, 1.695, 0, 0, 0.749628, 0.661859, 60, 255, 1),
(7590, 2653, 0, 1, 1, -819.6, -3912.4, 145.84, 0.56, 0, 0, 0.276356, 0.961055, 60, 255, 1),
(7599, 2653, 0, 1, 1, -857.528, -3931.43, 149.044, -0.20944, 0, 0, -0.104529, 0.994522, 60, 255, 1),
(7601, 2653, 0, 1, 1, -883, -3885, 135.184, 5.9, 0, 0, 0.190423, -0.981702, 60, 255, 1),
(7602, 2653, 0, 1, 1, -854, -3930, 148.799, 0.317, 0, 0, 0.157837, 0.987465, 60, 255, 1),
(7610, 2653, 0, 1, 1, -852.465, -3889.12, 140.951, 2.4, 0, 0, 0.932039, 0.362358, 60, 255, 1),
(7611, 2653, 0, 1, 1, -882.01, -3885.88, 135.174, 2.98451, 0, 0, 0.996917, 0.0784606, 60, 255, 1),
(7613, 2653, 0, 1, 1, -842.014, -3939.07, 150.111, 1.309, 0, 0, 0.608763, 0.793352, 60, 255, 1),
(7614, 2653, 0, 1, 1, -830.497, -3885.8, 147.603, 0.087266, 0, 0, 0.0436192, 0.999048, 60, 255, 1),
(7616, 2653, 0, 1, 1, -947.561, -3927.05, 145.284, -2.23402, 0, 0, -0.898794, 0.438372, 60, 255, 1),
(7617, 2653, 0, 1, 1, -793.146, -3898.25, 145.014, 0.10472, 0, 0, 0.0523361, 0.99863, 60, 255, 1),
(7619, 2653, 0, 1, 1, -874.558, -3911.16, 134.068, -0.977384, 0, 0, -0.469471, 0.882948, 60, 255, 1),
(7620, 2653, 0, 1, 1, -942.624, -3954.16, 146.634, -0.244346, 0, 0, -0.121869, 0.992546, 60, 255, 1),
(7623, 2653, 0, 1, 1, -911.687, -3877.76, 141.116, 2.51327, 0, 0, 0.951056, 0.309019, 60, 255, 1);
UPDATE `gameobject_loot_template` SET `maxcount`='2' WHERE `entry`=1667 AND `item`=3340;
UPDATE `gameobject_loot_template` SET `maxcount`='2' WHERE `entry`=2653 AND `item`=4278;
UPDATE `gameobject_loot_template` SET `maxcount`='2' WHERE `entry`=19903 AND `item`=5833;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(9304, 1610, 0, 1, 1, -3920, -2278, 40.389, 2.61, 0, 0, 0.964884, 0.262678, 60, 255, 1),
(8091, 1667, 0, 1, 1, -3813.83, -2279.43, 33.753, -2.1293, 0, 0, -0.874619, 0.48481, 60, 255, 1),
(8537, 1610, 0, 1, 1, -3837.11, -2527.33, 38.9886, -1.09956, 0, 0, -0.5225, 0.852639, 60, 255, 1),
(8865, 1667, 0, 1, 1, -3863.12, -2476.62, 41.4935, -0.069813, 0, 0, -0.0348994, 0.999391, 60, 255, 1),
(8819, 1610, 0, 1, 1, -3864.54, -2323.02, 44.058, 1.0821, 0, 0, 0.515036, 0.857168, 60, 255, 1),
(8637, 1667, 0, 1, 1, -3805.75, -2471.3, 27.4686, -0.785398, 0, 0, -0.382683, 0.92388, 60, 255, 1),
(8653, 1610, 0, 1, 1, -3768, -2464, 27.379, 4.378, 0, 0, 0.814921, -0.579572, 60, 255, 1),
(8395, 1667, 0, 1, 1, -3756, -2442, 32.318, 5.26, 0, 0, 0.489567, -0.871966, 60, 255, 1),
(8312, 1610, 0, 1, 1, -3838, -2483, 36.203, 3.624, 0, 0, 0.971051, -0.238872, 60, 255, 1),
(8232, 1667, 0, 1, 1, -3788, -2441, 25.965, 5.26, 0, 0, 0.489567, -0.871966, 60, 255, 1),
(8067, 1610, 0, 1, 1, -3853, -2341, 44.169, 3.433, 0, 0, 0.989404, -0.145189, 60, 255, 1),
(7948, 1667, 0, 1, 1, -3946, -2363, 18.208, 3.602, 0, 0, 0.97362, -0.228176, 60, 255, 1),
(779, 1610, 0, 1, 1, -3861, -2391, 26.408, 0.79, 0, 0, 0.384808, 0.922997, 60, 255, 1),
(16469, 1667, 0, 1, 1, -3937, -2298, 19.066, 5.445, 0, 0, 0.406932, -0.913459, 60, 255, 1),
(7533, 1610, 0, 1, 1, -3861, -2506, 40.788, 5.632, 0, 0, 0.31987, -0.947461, 60, 255, 1),
(7534, 1667, 0, 1, 1, -3779.64, -2485.89, 26.3598, 3.624, 0, 0, 0.971051, -0.238872, 60, 255, 1),
(7537, 1610, 0, 1, 1, -3880.72, -2459.3, 34.2359, 1.294, 0, 0, 0.602795, 0.797896, 60, 255, 1),
(7538, 1667, 0, 1, 1, -3879, -2400, 26.334, 2.602, 0, 0, 0.963825, 0.266535, 60, 255, 1),
(7539, 1610, 0, 1, 1, -3884.85, -2310.76, 25.4112, 2.89725, 0, 0, 0.992546, 0.121868, 60, 255, 1),
(7540, 1667, 0, 1, 1, -3830.57, -2431.7, 26.5262, 2.67035, 0, 0, 0.972369, 0.233447, 60, 255, 1),
(7541, 1610, 0, 1, 1, -3895.7, -2362.62, 22.8919, 0.994838, 0, 0, 0.477159, 0.878817, 60, 255, 1),
(7543, 1667, 0, 1, 1, -3830.66, -2501.42, 38.5958, 2.51327, 0, 0, 0.951056, 0.309019, 60, 255, 1),
(7544, 1610, 0, 1, 1, -3756.49, -2480.01, 32.6535, 1.09956, 0, 0, 0.5225, 0.852639, 60, 255, 1),
(7545, 1667, 0, 1, 1, -3886.07, -2401.82, 26.3338, 0.331613, 0, 0, 0.165048, 0.986286, 60, 255, 1),
(7546, 1610, 0, 1, 1, -3801.1, -2353.66, 33.2039, 0.034907, 0, 0, 0.0174526, 0.999848, 60, 255, 1),
(7547, 1667, 0, 1, 1, -3809.23, -2396.89, 28.0163, -1.81514, 0, 0, -0.78801, 0.615662, 60, 255, 1),
(7549, 1610, 0, 1, 1, -3942.23, -2285.07, 17.1541, -0.2618, 0, 0, -0.130526, 0.991445, 60, 255, 1),
(7550, 1667, 0, 1, 1, -3887, -2452, 32.045, 2.071, 0, 0, 0.860118, 0.510096, 60, 255, 1),
(7552, 1610, 0, 1, 1, -3993.14, -2598.76, 59.9468, -2.11185, 0, 0, -0.870356, 0.492423, 60, 255, 1);
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='0' WHERE `entry`=180248 AND `item`=19807;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 177804 AND `item` = 16002;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 177804 AND `item` = 16003;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 186468 AND `item` = 33187;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 185226 AND `item` = 31708;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 185224 AND `item` = 31709;
DELETE FROM `creature_loot_template` WHERE `entry` = 24048 AND `item` = 33187;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 184075 AND `item` = 40731;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 190696 AND `item` = 39063;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='0', `groupid`='1' WHERE `entry`=190696;
UPDATE `creature_template` SET `lootid`='0' WHERE `entry`=24048;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 176150 AND `item` = 15696;
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES ('193996', '42780', '10', '0', '1', '3');
DELETE FROM `gameobject_loot_template` WHERE `entry` = 190461 AND `item` = 38340;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 190467 AND `item` = 38397;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 185226 AND `item` = 31710;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 185224 AND `item` = 31710;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 190471 AND `item` = 38335;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 191182 AND `item` = 38337;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='-100' WHERE `item` in (49871,41614,38384,38393,38396,38397,38398,39668,39669,39670,38381,38379,38370,38369,38344,38345,38343,38342,38341,38338,38337,38336,38335,34102,30468,30356,28969,28283,24471,23849,30630);
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='10',`maxcount`='3' WHERE `entry`=190586 AND `item`=42780;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='50' WHERE `item`=42780;
DELETE FROM `creature_loot_template` WHERE `item` in (32468,32464,30356);
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '5', `groupid` = '1' WHERE `entry` = 32724 AND `item` = 32464;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '5', `groupid` = '1' WHERE `entry` = 32724 AND `item` = 32468;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '5', `groupid` = '1' WHERE `entry` = 32724 AND `item` = 32470;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE `entry` = 32724 AND `item` = 32725;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE `entry` = 32724 AND `item` = 32727;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '60', `groupid` = '1' WHERE `entry` = 32724 AND `item` = 32728;
DELETE FROM `creature_loot_template` WHERE `entry` = 17150 AND `item` = 25416;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='50' WHERE `entry`=17149 AND `item`=25416;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='25' WHERE `item`=24246;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-25' WHERE `item`=23849;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='5' WHERE `entry`=176582 AND `item`=6367;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`='10' WHERE `entry`=176582 AND `item`=2143;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 19017 AND `item` = 4788;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 5683 AND `item` = 1477;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 5683 AND `item` = 2981;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 5836 AND `item` = 2981;
DELETE FROM `creature_loot_template` WHERE `item` in (4788,6457);
DELETE FROM `gameobject_loot_template` WHERE `item` in (6457,4788);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 181800 AND `item` = 13187;
DELETE FROM `pickpocketing_loot_template` WHERE `item` in (9308,5075);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='40' WHERE `item`=9308;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='40' WHERE `item`=1274;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='30' WHERE `item`=2799;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='25', `maxcount`='3' WHERE `item`=5075;
UPDATE `creature_loot_template` SET `groupid`='0' WHERE `item` in (12430,12431,12433,12434,12435,12436);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-100' WHERE `entry`=10836 AND `item`=12739;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-40', `mincountOrRef`='1' WHERE `item`=11467;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-50' WHERE `item`=9592;
UPDATE `creature_loot_template` SET `item`='16652', `ChanceOrQuestChance`='100', `mincountOrRef`='-16652' WHERE `entry`=3696 AND `item`=16647;
UPDATE `creature_loot_template` SET `item`='16652', `ChanceOrQuestChance`='100', `mincountOrRef`='-16652' WHERE `entry`=3664 AND `item`=16645;
UPDATE `creature_loot_template` SET `item`='16652', `ChanceOrQuestChance`='100', `mincountOrRef`='-16652' WHERE `entry`=3792 AND `item`=16646;
UPDATE `creature_loot_template` SET `item`='16652', `ChanceOrQuestChance`='100', `mincountOrRef`='-16652' WHERE `entry`=3879 AND `item`=16648;
UPDATE `creature_loot_template` SET `item`='16652', `ChanceOrQuestChance`='100', `mincountOrRef`='-16652' WHERE `entry`=3893 AND `item`=16655;
UPDATE `creature_loot_template` SET `item`='16652', `ChanceOrQuestChance`='100', `mincountOrRef`='-16652' WHERE `entry`=3900 AND `item`=16654;
UPDATE `creature_loot_template` SET `item`='16652', `ChanceOrQuestChance`='100', `mincountOrRef`='-16652' WHERE `entry`=10641 AND `item`=16646;
UPDATE `creature_loot_template` SET `item`='16652', `ChanceOrQuestChance`='100', `mincountOrRef`='-16652' WHERE `entry`=10643 AND `item`=16650;
DELETE FROM `creature_loot_template` WHERE `item` in (16645,16646,16647,16648,16649,16650,16651,16653,16654,16655,16656);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='50' WHERE `item`=29425;
DELETE FROM `creature_loot_template` WHERE `entry` = 18850 AND `item` = 29426;
DELETE FROM `creature_loot_template` WHERE `entry` = 18855 AND `item` = 29426;
DELETE FROM `creature_loot_template` WHERE `entry` = 18857 AND `item` = 29426;
DELETE FROM `creature_loot_template` WHERE `entry` = 19453 AND `item` = 29426;
DELETE FROM `creature_loot_template` WHERE `entry` = 19707 AND `item` = 29426;
DELETE FROM `creature_loot_template` WHERE `entry` = 20221 AND `item` = 29426;
DELETE FROM `creature_loot_template` WHERE `entry` = 18853 AND `item` = 29426;
DELETE FROM `creature_loot_template` WHERE `entry` = 19643 AND `item` = 29426;
DELETE FROM `creature_loot_template` WHERE `entry` = 18852 AND `item` = 29426;
DELETE FROM `creature_loot_template` WHERE `entry` = 19779 AND `item` = 29426;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='50' WHERE `item`=29426;

# Fix
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(131127,32666,530,1,1,0,0,9830.201,-7389.711,13.68803,5.532694,120,0,0,1,0,0),
(131128,32667,530,1,1,0,0,9859.044,-7406.975,13.7113,1.658063,120,0,0,1,0,0),
(131129,31144,530,1,1,0,0,9869.401,-7389.657,13.69022,3.90953755,120,0,0,1,0,0),
(131130,31144,530,1,1,0,0,9871.973,-7392.763,13.6818113,3.35103226,120,0,0,1,0,0),
(131131,31146,530,1,1,0,0,9850.529,-7395.442,13.72216,4.694936,120,0,0,1,0,0);
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(17586, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `event_scripts` VALUES ('10675', '0', '10', '17318', '100000', '0', '-5116.13', '-11263', '0.961', '0');
REPLACE INTO `event_scripts` VALUES ('10675', '0', '10', '17243', '100000', '0', '-5040.42', '-11260.6', '13.647', '0');
REPLACE INTO `event_scripts` VALUES ('10675', '1', '29', '1', '17243', '0', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('10675', '20', '0', '2', '17243', '2000000642', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('10675', '21', '0', '0', '17318', '2000000114', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('10675', '21', '1', '1', '17318', '0', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('10675', '26', '1', '5', '17243', '0', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('10675', '26', '0', '0', '17243', '2000000123', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('10675', '28', '1', '1', '17243', '0', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('10675', '23', '1', '1', '17243', '0', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('10675', '33', '0', '0', '17243', '2000000248', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('10675', '44', '1', '1', '17318', '0', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('10675', '44', '0', '0', '17318', '2000000115', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('10675', '50', '1', '1', '17243', '0', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('10675', '50', '0', '0', '17243', '2000000292', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('10675', '53', '1', '5', '17243', '0', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('10675', '57', '1', '1', '17243', '0', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('10675', '57', '0', '0', '17243', '2000000293', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('10675', '60', '1', '25', '17243', '0', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('10675', '65', '1', '1', '17318', '0', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('10675', '65', '0', '0', '17318', '2000000122', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('10675', '65', '8', '17243', '1', '0', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('15939', '0', '10', '24381', '30000', '0', '2406.41', '-5739.39', '274.034', '1.19678');
REPLACE INTO `event_scripts` VALUES ('15939', '0', '10', '24385', '30000', '0', '2416.13', '-5736.04', '273.17', '3.417');
REPLACE INTO `event_scripts` VALUES ('15939', '0', '10', '24385', '30000', '0', '2404.33', '-5724.32', '269.855', '4.8266');
REPLACE INTO `event_scripts` VALUES ('15939', '0', '10', '24385', '30000', '0', '2409.06', '-5726.67', '270.832', '4.5098');
REPLACE INTO `event_scripts` VALUES ('15939', '0', '10', '24385', '30000', '0', '2413.19', '-5731.13', '271.952', '4.10142');
REPLACE INTO `event_scripts` VALUES ('15939', '5', '1', '61', '24381', '0', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('15939', '5', '0', '0', '24381', '2000000348', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('15939', '10', '1', '61', '24381', '0', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('15939', '10', '0', '0', '24381', '2000000349', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('15939', '16', '1', '35', '24381', '0', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('15939', '16', '0', '0', '24381', '2000000350', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('15939', '21', '15', '43693', '1', '0', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('15939', '21', '1', '35', '24381', '0', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('15939', '21', '0', '0', '24381', '2000000643', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('313', '1', '0', '0', '2238', '2000000676', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('313', '3', '0', '0', '2238', '2000000677', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('15452', '2', '9', '7483', '120', '0', '-2967.28', '-3871.99', '33.0624', '2.28237');
REPLACE INTO `event_scripts` VALUES ('15452', '4', '20', '2', '4792', '0', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('15826', '0', '0', '2', '24279', '2000000710', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('15826', '1', '0', '1', '24251', '2000000711', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('16133', '0', '0', '2', '24042', '2000000714', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('15726', '0', '10', '24173', '60000', '0', '2919.03', '-4503.46', '280.527', '5.4937');
REPLACE INTO `event_scripts` VALUES ('15726', '24', '1', '25', '24173', '0', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('15726', '24', '0', '0', '24173', '2000000707', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('15726', '30', '1', '25', '24173', '0', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('15726', '30', '0', '0', '24173', '2000000708', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('15726', '31', '1', '25', '24173', '0', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('15726', '33', '26', '0', '24173', '0', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('12823', '0', '10', '19862', '180000', '0', '-1175.41', '2264.59', '53.1733', '3.15905');
REPLACE INTO `event_scripts` VALUES ('12823', '1', '0', '0', '19862', '2000000715', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('12823', '3', '26', '0', '19862', '0', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('12823', '6', '10', '19864', '180000', '0', '-1195.07', '2268.22', '47.38', '5.68977');
REPLACE INTO `event_scripts` VALUES ('12823', '7', '0', '0', '19864', '2000000716', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('12823', '6', '10', '20137', '180000', '0', '-1190.11', '2258.2', '46.6871', '1.36136');
REPLACE INTO `event_scripts` VALUES ('12823', '6', '10', '20137', '180000', '0', '-1196.75', '2264.76', '47.9826', '6.19592');
REPLACE INTO `event_scripts` VALUES ('12823', '6', '10', '20137', '180000', '0', '-1196.12', '2260.61', '48.0384', '0.43633');
REPLACE INTO `event_scripts` VALUES ('12823', '6', '10', '20137', '180000', '0', '-1193.53', '2259.04', '47.484', '0.820305');
REPLACE INTO `event_scripts` VALUES ('12823', '6', '10', '20137', '180000', '0', '-1190.24', '2269.2', '46.0973', '4.97419');
REPLACE INTO `event_scripts` VALUES ('12650', '1', '0', '2', '18384', '2000000732', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('12650', '2', '20', '2', '18384', '0', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('12650', '10', '10', '19616', '100000', '0', '-2670.76', '4399.93', '36.4068', '6.2184');
REPLACE INTO `event_scripts` VALUES ('12650', '44', '8', '18384', '0', '0', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('12650', '45', '29', '3', '18384', '0', '0', '0', '0', '0');
REPLACE INTO `event_scripts` VALUES ('12650', '46', '0', '0', '18384', '2000000736', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('13034', '0', '1', '6', '30381', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('13034', '0', '0', '0', '30381', '2000001042', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('13034', '8', '1', '1', '30381', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('13034', '8', '0', '0', '30381', '2000001043', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('13034', '14', '1', '274', '30381', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('13034', '14', '0', '0', '30381', '2000001044', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('13034', '21', '1', '25', '30381', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('13034', '21', '0', '0', '30381', '2000001045', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('13034', '25', '1', '1', '30381', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('13034', '25', '0', '0', '30381', '2000001046', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('963', '1', '10', '3843', '41000', '0', '6426.84', '603.166', '9.46655', '4.14031');
REPLACE INTO `quest_end_scripts` VALUES ('963', '4', '0', '0', '0', '2000000647', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('963', '4', '1', '18', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('963', '9', '0', '0', '3843', '2000000648', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('963', '9', '1', '1', '3843', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('963', '15', '0', '0', '0', '2000000649', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('963', '15', '1', '1', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('963', '20', '0', '0', '0', '2000000650', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('963', '20', '1', '6', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('963', '25', '0', '0', '3843', '2000000651', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('963', '25', '1', '1', '3843', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('963', '30', '0', '0', '3843', '2000000652', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('963', '30', '1', '1', '3843', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('963', '35', '0', '0', '0', '2000000653', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('963', '35', '1', '6', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('963', '39', '0', '0', '3843', '2000000654', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('963', '42', '0', '2', '0', '2000000655', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('963', '47', '0', '0', '0', '2000000656', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('963', '51', '1', '18', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('5341', '1', '0', '1', '0', '2000000659', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('5341', '1', '1', '1', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('4974', '1', '0', '2', '0', '2000000670', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('4974', '1', '1', '5', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('4974', '5', '15', '16609', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('4974', '6', '0', '4', '0', '2000000671', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('4974', '6', '1', '1', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('670', '1', '0', '0', '0', '2000000673', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('1117', '1', '0', '2', '0', '2000000674', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('1117', '2', '1', '94', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('1117', '7', '1', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('1117', '8', '0', '0', '0', '2000000675', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('1112', '1', '0', '2', '0', '2000000644', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('1112', '2', '9', '6114', '10', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('1112', '4', '0', '2', '0', '2000000645', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('1112', '8', '0', '0', '0', '2000000646', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('553', '2', '10', '2433', '600000', '0', '-747.107', '-586.97', '19.8435', '3.17531');
REPLACE INTO `quest_end_scripts` VALUES ('10210', '2', '0', '0', '18166', '2000000678', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('11351', '0', '1', '1', '24362', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('11351', '0', '0', '0', '24362', '2000001066', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('11351', '6', '0', '0', '24362', '2000001067', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('11351', '14', '1', '1', '24362', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('11351', '14', '0', '0', '24362', '2000001068', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('11351', '0', '1', '1', '24362', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('11351', '0', '0', '0', '24362', '2000001066', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('11351', '6', '0', '0', '24362', '2000001067', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('11351', '14', '1', '1', '24362', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('11351', '14', '0', '0', '24362', '2000001068', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('943', '0', '0', '2', '0', '2000000723', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('943', '4', '10', '3582', '26000', '0', '-3807.34', '-839.492', '16.9485', '2.92982');
REPLACE INTO `quest_end_scripts` VALUES ('943', '5', '3', '0', '1000', '0', '-3813.62', '-837.888', '17.1641', '5.9409');
REPLACE INTO `quest_end_scripts` VALUES ('943', '6', '0', '0', '0', '2000000089', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('943', '10', '0', '0', '3582', '2000000724', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('943', '15', '0', '0', '3582', '2000000725', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('943', '20', '0', '0', '3582', '2000000726', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('943', '25', '0', '0', '3582', '2000000727', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('943', '30', '0', '2', '0', '2000000728', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('943', '32', '3', '0', '1000', '0', '-3813.62', '-837.888', '17.1641', '1.43117');
REPLACE INTO `quest_end_scripts` VALUES ('943', '35', '0', '0', '0', '2000000079', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('930', '1', '0', '2', '0', '2000000717', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('930', '4', '3', '0', '1000', '0', '9508.02', '715.749', '1255.89', '1.03055');
REPLACE INTO `quest_end_scripts` VALUES ('930', '4', '0', '0', '0', '2000000718', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('930', '5', '3', '0', '1000', '0', '9507.66', '718.009', '1255.89', '1.80417');
REPLACE INTO `quest_end_scripts` VALUES ('930', '6', '3', '0', '1000', '0', '9505.56', '719.088', '1256.2', '2.65632');
REPLACE INTO `quest_end_scripts` VALUES ('930', '8', '0', '2', '0', '2000000719', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('930', '8', '1', '16', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('930', '11', '3', '0', '1000', '0', '9506.92', '713.766', '1255.89', '0.257643');
REPLACE INTO `quest_end_scripts` VALUES ('930', '13', '3', '0', '1000', '0', '9506.92', '713.766', '1255.89', '0.279253');
REPLACE INTO `quest_end_scripts` VALUES ('930', '14', '10', '3569', '20000', '0', '9504.13', '721.459', '1255.94', '6.24727');
REPLACE INTO `quest_end_scripts` VALUES ('930', '14', '10', '3569', '20000', '0', '9504.09', '720.294', '1255.94', '1.00709');
REPLACE INTO `quest_end_scripts` VALUES ('930', '14', '10', '3569', '20000', '0', '9505.13', '722.011', '1255.94', '0.0244875');
REPLACE INTO `quest_end_scripts` VALUES ('930', '14', '0', '2', '0', '2000000720', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('7642', '0', '29', '3', '1416', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('7642', '2', '0', '0', '0', '2000000012', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('7642', '4', '20', '2', '1416', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('7642', '105', '29', '3', '1416', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('1391', '0', '0', '2', '0', '2000000281', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('1391', '2', '0', '0', '0', '2000000282', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('1391', '7', '0', '0', '0', '2000000283', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('1391', '8', '1', '64', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('1391', '13', '0', '2', '0', '2000000284', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('1391', '14', '0', '0', '0', '2000000285', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('1391', '14', '15', '7293', '1', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('1391', '15', '1', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('1391', '16', '3', '0', '1000', '0', '-10423.5', '-3240.63', '20.1786', '4.68979');
REPLACE INTO `quest_end_scripts` VALUES ('1391', '17', '3', '0', '1000', '0', '-10420.6', '-3240.03', '20.1786', '2.11212');
REPLACE INTO `quest_end_scripts` VALUES ('1391', '19', '3', '0', '1000', '0', '-10422.1', '-3237.58', '20.1786', '3.80072');
REPLACE INTO `quest_end_scripts` VALUES ('1391', '20', '3', '0', '1000', '0', '-10424.4', '-3239.73', '20.1786', '3.8633');
REPLACE INTO `quest_end_scripts` VALUES ('1391', '22', '3', '0', '1000', '0', '-10422.4', '-3238.96', '20.1786', '0.236333');
REPLACE INTO `quest_end_scripts` VALUES ('1391', '26', '15', '5', '1', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('1383', '0', '29', '2', '5414', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('1383', '1', '0', '0', '0', '2000000289', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('1383', '4', '3', '0', '1000', '0', '-10351.1', '-1527.88', '92.7248', '6.23291');
REPLACE INTO `quest_end_scripts` VALUES ('1383', '6', '1', '69', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('1383', '10', '0', '0', '0', '2000000290', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('1383', '10', '1', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('1383', '15', '3', '0', '1000', '0', '-10351.1', '-1527.88', '92.7248', '3.14159');
REPLACE INTO `quest_end_scripts` VALUES ('1383', '16', '29', '2', '5414', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('1383', '16', '0', '0', '0', '2000000291', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('1191', '0', '29', '3', '4709', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('1191', '2', '3', '0', '16000', '0', '-6273.41', '-3841.7', '-58.75', '1.9');
REPLACE INTO `quest_end_scripts` VALUES ('1191', '18', '3', '0', '1000', '0', '-6273.41', '-3841.7', '-58.75', '1.9');
REPLACE INTO `quest_end_scripts` VALUES ('1191', '20', '9', '19056', '120', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('1191', '25', '3', '0', '16000', '0', '-6226.13', '-3944.94', '-58.6251', '5.48331');
REPLACE INTO `quest_end_scripts` VALUES ('1191', '51', '29', '3', '4709', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('997', '2', '0', '0', '0', '2000000048', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('997', '2', '3', '0', '1000', '0', '9508.02', '715.749', '1255.89', '1.03055');
REPLACE INTO `quest_end_scripts` VALUES ('997', '3', '3', '0', '1000', '0', '9507.66', '718.009', '1255.89', '1.80417');
REPLACE INTO `quest_end_scripts` VALUES ('997', '4', '3', '0', '1000', '0', '9505.56', '719.088', '1256.2', '2.65632');
REPLACE INTO `quest_end_scripts` VALUES ('997', '6', '1', '16', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('997', '9', '3', '0', '1000', '0', '9506.92', '713.766', '1255.89', '0.259253');
REPLACE INTO `quest_end_scripts` VALUES ('997', '11', '3', '0', '1000', '0', '9506.92', '713.766', '1255.89', '0.279253');
REPLACE INTO `quest_end_scripts` VALUES ('997', '11', '0', '0', '0', '2000000049', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('10715', '0', '29', '3', '22103', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('10715', '1', '3', '0', '1000', '0', '2915.57', '5957.42', '3.27419', '2.97874');
REPLACE INTO `quest_end_scripts` VALUES ('10715', '5', '1', '69', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('10715', '12', '1', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('10715', '14', '3', '0', '1000', '0', '2919.11', '5956.93', '3.16149', '1.03933');
REPLACE INTO `quest_end_scripts` VALUES ('10715', '16', '3', '0', '1000', '0', '2919.11', '5956.93', '3.16149', '1.58825');
REPLACE INTO `quest_end_scripts` VALUES ('10715', '17', '29', '3', '22103', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('10715', '17', '0', '0', '0', '2000000444', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('9397', '1', '3', '0', '1000', '0', '-597.806', '4110.68', '90.848', '2.02116');
REPLACE INTO `quest_end_scripts` VALUES ('9397', '3', '1', '16', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('9397', '5', '10', '17262', '20000', '0', '-597.244', '4111.88', '90.7789', '0.805268');
REPLACE INTO `quest_end_scripts` VALUES ('9397', '6', '0', '0', '0', '2000000441', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('9397', '10', '3', '0', '1000', '0', '-596.347', '4108.47', '91.0061', '5.15176');
REPLACE INTO `quest_end_scripts` VALUES ('9397', '12', '3', '0', '1000', '0', '-596.347', '4108.47', '91.0061', '4.10152');
REPLACE INTO `quest_end_scripts` VALUES ('10349', '0', '29', '3', '19294', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('10349', '1', '0', '0', '0', '2000000442', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('10349', '2', '20', '2', '19294', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('10349', '20', '29', '3', '19294', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('407', '0', '0', '0', '0', '2000000245', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('407', '3', '15', '3287', '1', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('407', '3', '3', '0', '2000', '0', '2287.97', '236.253', '27.0892', '2.6613');
REPLACE INTO `quest_end_scripts` VALUES ('407', '6', '3', '0', '2000', '0', '2292', '239.481', '27.0892', '0.693878');
REPLACE INTO `quest_end_scripts` VALUES ('407', '8', '0', '0', '0', '2000000246', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('407', '10', '3', '0', '2000', '0', '2292.52', '235.226', '27.0892', '4.8345');
REPLACE INTO `quest_end_scripts` VALUES ('407', '13', '3', '0', '2000', '0', '2288.96', '237.96', '27.0892', '2.48773');
REPLACE INTO `quest_end_scripts` VALUES ('407', '19', '15', '5', '1', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('308', '0', '0', '0', '0', '2000000729', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('308', '0', '29', '2', '1373', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('308', '1', '20', '2', '1373', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('308', '12', '9', '6011', '55', '0', '-5607.24', '-547.934', '392.985', '0.471239');
REPLACE INTO `quest_end_scripts` VALUES ('308', '23', '0', '0', '0', '2000000092', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('10919', '1', '20', '2', '20206', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('931', '2', '0', '2', '0', '2000000721', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('931', '2', '3', '0', '1000', '0', '9508.02', '715.749', '1255.89', '1.03055');
REPLACE INTO `quest_end_scripts` VALUES ('931', '3', '3', '0', '1000', '0', '9507.66', '718.009', '1255.89', '1.80417');
REPLACE INTO `quest_end_scripts` VALUES ('931', '4', '3', '0', '1000', '0', '9505.56', '719.088', '1256.2', '2.65632');
REPLACE INTO `quest_end_scripts` VALUES ('931', '6', '0', '0', '0', '2000000722', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('931', '6', '1', '16', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_end_scripts` VALUES ('931', '9', '3', '0', '1000', '0', '9506.92', '713.766', '1255.89', '0.259253');
REPLACE INTO `quest_end_scripts` VALUES ('931', '11', '3', '0', '1000', '0', '9506.92', '713.766', '1255.89', '0.279253');
REPLACE INTO `quest_end_scripts` VALUES ('931', '11', '9', '39594', '15', '0', '9502.75', '718.022', '1255.94', '5.99887');
REPLACE INTO `quest_end_scripts` VALUES ('931', '11', '9', '39592', '15', '0', '9504.34', '721.465', '1255.94', '5.87713');
REPLACE INTO `quest_end_scripts` VALUES ('931', '11', '9', '39593', '15', '0', '9503.46', '720.08', '1255.94', '5.68628');
REPLACE INTO `quest_start_scripts` VALUES ('9579', '0', '10', '17426', '11000', '0', '-2089.37', '-11298.1', '63.54', '5.689');
REPLACE INTO `quest_start_scripts` VALUES ('9579', '2', '1', '6', '17426', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('9579', '2', '0', '0', '17426', '2000000632', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('9579', '4', '1', '274', '17426', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('9579', '4', '0', '0', '17426', '2000000633', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('9579', '8', '1', '1', '17426', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('9579', '8', '0', '0', '17426', '2000000634', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('947', '1', '0', '0', '0', '2000000657', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('947', '1', '1', '2', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('947', '5', '0', '0', '0', '2000000658', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('790', '1', '0', '0', '0', '2000000672', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('10349', '1', '0', '4', '19294', '2000000679', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('2608', '1', '1', '16', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('2608', '3', '0', '0', '0', '2000000069', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('2608', '6', '0', '0', '0', '2000000070', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('2608', '10', '3', '0', '5000', '0', '-8805.29', '338.5', '95.09', '1.7');
REPLACE INTO `quest_start_scripts` VALUES ('2608', '15', '3', '0', '8000', '0', '-8804.15', '325.58', '95.09', '4.9');
REPLACE INTO `quest_start_scripts` VALUES ('2608', '23', '3', '0', '3000', '0', '-8805.56', '331.96', '95.09', '3.15');
REPLACE INTO `quest_start_scripts` VALUES ('2608', '28', '7', '2608', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('2480', '2', '3', '0', '3000', '0', '-4.33', '-900.68', '57.54', '1.54');
REPLACE INTO `quest_start_scripts` VALUES ('2480', '20', '0', '0', '0', '2000000068', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('2480', '30', '7', '2480', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('2480', '31', '3', '0', '3000', '0', '-4.66', '-903.92', '57.54', '3.48');
REPLACE INTO `quest_start_scripts` VALUES ('3625', '2', '3', '0', '1000', '0', '-12040.5', '-1008.7', '49.4', '3.66');
REPLACE INTO `quest_start_scripts` VALUES ('3625', '6', '1', '28', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('3625', '12', '1', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('3625', '14', '3', '0', '4000', '0', '-12033.3', '-1004.47', '49.78', '3.96');
REPLACE INTO `quest_start_scripts` VALUES ('3625', '19', '7', '3625', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('3321', '2', '3', '0', '2000', '0', '-7197.78', '-3765.41', '8.79', '1.19');
REPLACE INTO `quest_start_scripts` VALUES ('3321', '4', '1', '28', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('3321', '10', '1', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('3321', '12', '3', '0', '2000', '0', '-7197.94', '-3767.04', '8.77', '5.03');
REPLACE INTO `quest_start_scripts` VALUES ('3321', '15', '7', '3321', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('2765', '2', '3', '0', '2000', '0', '-12033.3', '-1009.85', '49.87', '5.42');
REPLACE INTO `quest_start_scripts` VALUES ('2765', '4', '1', '16', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('2765', '8', '3', '0', '4000', '0', '-12040', '-1006.27', '49.62', '2.55');
REPLACE INTO `quest_start_scripts` VALUES ('2765', '12', '1', '28', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('2765', '17', '1', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('2765', '18', '3', '0', '4000', '0', '-12037.8', '-1004.74', '49.53', '2.18');
REPLACE INTO `quest_start_scripts` VALUES ('2765', '22', '1', '16', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('2765', '28', '3', '0', '4000', '0', '-12040.7', '-1009.02', '49.42', '3.63');
REPLACE INTO `quest_start_scripts` VALUES ('2765', '32', '1', '28', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('2765', '36', '1', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('2765', '37', '3', '0', '2000', '0', '-12035.4', '-1006.07', '49.5', '3.78');
REPLACE INTO `quest_start_scripts` VALUES ('2765', '40', '7', '2765', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('1713', '1', '0', '0', '0', '2000000062', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('1713', '1', '20', '2', '6176', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('1713', '61', '15', '8606', '1', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('1713', '62', '0', '2', '0', '2000000071', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11351', '0', '3', '0', '0', '0', '0', '0', '0', '2.2864');
REPLACE INTO `quest_start_scripts` VALUES ('11351', '1', '1', '25', '24362', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11351', '2', '0', '0', '24362', '2000001065', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11351', '7', '3', '0', '0', '0', '0', '0', '0', '1.0821');
REPLACE INTO `quest_start_scripts` VALUES ('11351', '0', '3', '0', '0', '0', '0', '0', '0', '2.2864');
REPLACE INTO `quest_start_scripts` VALUES ('11351', '1', '1', '25', '24362', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11351', '2', '0', '0', '24362', '2000001065', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11351', '7', '3', '0', '0', '0', '0', '0', '0', '1.0821');
REPLACE INTO `quest_start_scripts` VALUES ('10791', '0', '29', '3', '18384', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('10791', '60', '29', '3', '18384', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('945', '0', '29', '3', '3584', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('945', '0', '0', '0', '0', '2000000037', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('945', '1', '20', '2', '3584', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('945', '125', '0', '0', '0', '2000000038', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('945', '126', '7', '945', '15', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '0', '29', '3', '23139', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '1', '0', '0', '0', '2000000124', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '1', '1', '1', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '5', '3', '0', '12000', '0', '-5108.58', '598.509', '85.4239', '2.47553');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '18', '0', '1', '0', '2000000125', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '18', '1', '22', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '25', '0', '0', '0', '2000000126', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '25', '1', '1', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '28', '10', '23467', '88000', '0', '-5113.25', '606.427', '85.0531', '5.2527');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '32', '0', '1', '0', '2000000127', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '32', '1', '66', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '37', '1', '16', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '40', '0', '0', '0', '2000000128', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '40', '1', '1', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '44', '1', '5', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '48', '0', '0', '23467', '2000000737', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '48', '1', '1', '23467', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '52', '0', '0', '0', '2000000129', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '52', '1', '6', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '55', '0', '0', '23467', '2000000738', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '55', '1', '1', '23467', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '60', '0', '0', '23467', '2000000739', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '60', '1', '1', '23467', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '65', '0', '0', '23467', '2000000740', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '65', '1', '1', '23467', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '70', '0', '0', '23467', '2000000741', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '70', '1', '1', '23467', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '71', '15', '41528', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '71', '6', '530', '0', '0', '-5122.05', '603.562', '84.678', '0.0421238');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '80', '0', '0', '23467', '2000000742', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '80', '1', '1', '23467', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '90', '0', '0', '23467', '2000000743', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '90', '1', '1', '23467', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '115', '1', '254', '23467', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '115', '0', '0', '0', '2000000130', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '123', '0', '0', '0', '2000000131', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '123', '1', '25', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '135', '7', '11108', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '142', '0', '0', '23141', '2000000744', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '147', '15', '6273', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '150', '15', '41540', '0', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '150', '29', '3', '23139', '0', '0', '0', '0', '0');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '150', '3', '0', '12000', '0', '-5085', '578.657', '86.6483', '2');
REPLACE INTO `quest_start_scripts` VALUES ('11108', '163', '3', '0', '1000', '0', '-5085', '578.657', '86.6483', '2.36871');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('127685', '1', '9057.12', '2115.93', '58.1148', '0', '0.226147');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('127685', '2', '9072.52', '2064.26', '67.2821', '0', '4.97545');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('127685', '3', '9059.1', '2115.36', '58.6392', '0', '1.82758');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('127685', '4', '9035.57', '2114.82', '51.8051', '0', '3.27585');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('4547', '1', '-9307.15', '-2944.28', '128.676', '0', '5.20397');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('4547', '2', '-9301.33', '-2954.65', '128.753', '0', '5.62416');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('4547', '3', '-9290.17', '-2958.82', '128.753', '0', '0.000702');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('4547', '4', '-9275.54', '-2953.19', '128.661', '0', '0.358058');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('4547', '5', '-9268.44', '-2937.71', '128.753', '0', '1.2377');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('4547', '6', '-9274.3', '-2923.29', '128.752', '0', '2.35297');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('4547', '7', '-9289.67', '-2916.54', '128.753', '0', '2.81243');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('4547', '8', '-9304.1', '-2924.26', '128.753', '0', '4.05728');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('4547', '9', '-9308.74', '-2939.14', '128.737', '0', '4.55208');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('71531', '1', '-411.535', '1526.66', '19.7699', '8000', '1.66565');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('71531', '2', '-410.567', '1511.67', '19.7685', '0', '5.734');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('71531', '3', '-405.985', '1510.65', '19.7708', '0', '6.24451');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('71531', '4', '-398.266', '1509.93', '18.8687', '0', '5.23685');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('71531', '5', '-397.207', '1505.54', '19.7708', '8000', '4.73106');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('71531', '6', '-397.346', '1510.77', '18.8688', '0', '3.11078');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('71531', '7', '-410.945', '1510.72', '19.7693', '0', '2.20207');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('71531', '8', '-411.469', '1517.48', '19.7693', '0', '1.63423');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '1', '-8086.62', '-775.126', '131.653', '0', '3.17716');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '2', '-8110.07', '-773.379', '131.266', '0', '3.28633');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '3', '-8148.43', '-775.72', '129.124', '0', '3.19446');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '4', '-8176.27', '-772.495', '125.801', '0', '4.04583');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '5', '-8183.86', '-789.497', '128.931', '0', '4.34507');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '6', '-8187.55', '-808.887', '129.816', '0', '4.53356');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '7', '-8191.51', '-845.639', '131.319', '0', '4.61996');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '8', '-8190.33', '-863.342', '131.988', '0', '4.93725');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '9', '-8187.4', '-891.662', '132.916', '0', '4.52571');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '10', '-8199.71', '-944.993', '133.563', '0', '4.83203');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '11', '-8192.19', '-971.154', '134.173', '0', '4.36943');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '12', '-8202.66', '-991.91', '142.708', '0', '3.98773');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '13', '-8219.37', '-1013.95', '146.032', '0', '4.44718');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '14', '-8249.36', '-1074.18', '143.307', '0', '4.11732');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '15', '-8270.13', '-1105.83', '144.594', '0', '4.43933');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '16', '-8272.52', '-1124.02', '147.211', '0', '5.12262');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '17', '-8264.15', '-1136.06', '145.519', '0', '5.41714');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '18', '-8254.41', '-1140.8', '145.576', '0', '5.90408');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '19', '-8245.89', '-1145.23', '145.468', '0', '4.85951');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '20', '-8239.94', '-1158.4', '144.187', '0', '5.1344');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '21', '-8236.83', '-1173.59', '142.618', '10000', '4.55713');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '22', '-8240.8', '-1192.99', '142.557', '0', '4.54535');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '23', '-8243.35', '-1210.69', '142.557', '0', '4.85715');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '24', '-8239.96', '-1232.37', '142.557', '0', '5.07254');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '25', '-8236.13', '-1238.95', '142.557', '0', '5.28067');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '26', '-8228.04', '-1245.41', '142.557', '0', '6.07156');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '27', '-8212.96', '-1246.51', '142.557', '0', '0.069537');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '28', '-8202.29', '-1241.77', '142.557', '0', '0.748906');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '29', '-8192.31', '-1233.14', '140.222', '0', '0.708619');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '30', '-8173.32', '-1220.18', '139.776', '0', '1.3402');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '31', '-8170.2', '-1201.87', '140.714', '0', '1.55347');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '32', '-8169.88', '-1176.63', '139.528', '0', '1.56132');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '33', '-8161.09', '-1155.04', '139.104', '0', '1.18826');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '34', '-8152.13', '-1124.67', '136.425', '0', '1.45529');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '35', '-8148.32', '-1091.82', '133.986', '0', '1.45529');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '36', '-8147.7', '-1064.81', '132.423', '0', '1.7184');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '37', '-8154.35', '-1037.25', '134.918', '0', '1.87155');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '38', '-8163.1', '-1017.01', '134.52', '0', '2.01292');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '39', '-8174.62', '-994.826', '135.71', '0', '2.06398');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '40', '-8188.73', '-968.578', '134.071', '0', '2.06398');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '41', '-8194.7', '-945.956', '133.776', '0', '1.73018');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '42', '-8193.27', '-919.078', '132.86', '0', '1.48671');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '43', '-8190.55', '-886.826', '132.894', '0', '1.48671');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '44', '-8188.51', '-863.198', '131.952', '0', '1.48278');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '45', '-8193.9', '-847.402', '131.654', '0', '1.93046');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '46', '-8190.06', '-833.533', '129.845', '0', '1.24323');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '47', '-8181.79', '-818.112', '129.524', '0', '0.960491');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '48', '-8163.12', '-791.536', '129.945', '0', '0.834828');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '49', '-8149.75', '-780.055', '129.162', '0', '0.548157');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '50', '-8130.57', '-772.344', '130.217', '0', '0.37537');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '51', '-8110', '-770.395', '131.819', '0', '6.24622');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '52', '-8085.46', '-770.881', '131.677', '0', '6.12841');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '53', '-8058.93', '-776.806', '131.301', '0', '6.03809');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '54', '-8025.8', '-782.507', '129.208', '0', '6.1559');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '55', '-8016.11', '-783.643', '128.348', '0', '0.167239');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '56', '-7989.7', '-779.664', '125.212', '0', '0.072991');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '57', '-7984.61', '-780.71', '125.063', '0', '5.88101');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '58', '-7980.23', '-785.275', '125.198', '0', '5.0642');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '59', '-7979.3', '-790.621', '125.555', '0', '4.64794');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '60', '-7985.02', '-813.503', '128.773', '0', '4.45552');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '61', '-7990.13', '-821.286', '130.295', '0', '4.06675');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '62', '-7995.51', '-824.859', '131.461', '0', '3.43058');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '63', '-8001.53', '-825.366', '132.451', '0', '2.79834');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '64', '-8012.03', '-819.432', '133.168', '0', '2.46847');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '65', '-8022.27', '-808.577', '132.803', '0', '2.29175');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '66', '-8035.15', '-793.922', '131.781', '0', '2.29175');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('18533', '67', '-8049.65', '-778.054', '131.064', '0', '2.5313');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6527', '1', '-7887.52', '-2901.83', '133.315', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6527', '2', '-7904.57', '-2902.71', '133.755', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6527', '3', '-7937.02', '-2904.86', '132.602', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6527', '4', '-7977.45', '-2901.48', '134.907', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6527', '5', '-8002.48', '-2918.63', '135.621', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6527', '6', '-8020.77', '-2922.13', '132.556', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6527', '7', '-8040.16', '-2922.81', '133.084', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6527', '8', '-8060.55', '-2922.08', '135.276', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6527', '9', '-8069.98', '-2903.44', '133.912', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6527', '10', '-8077.13', '-2868.77', '139.619', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6527', '11', '-8019.29', '-2874.49', '135.584', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6527', '12', '-7995.48', '-2879.11', '136.263', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6527', '13', '-7965.53', '-2886.95', '135.314', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6527', '14', '-7944.04', '-2881.33', '136.275', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6527', '15', '-7921.68', '-2874.33', '135.123', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6527', '16', '-7905.97', '-2889.25', '134.633', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6527', '17', '-7892.15', '-2898.02', '134.113', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6496', '1', '-7587.71', '-2753.68', '133.177', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6496', '2', '-7598.58', '-2772.81', '133.401', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6496', '3', '-7611.69', '-2795.86', '133.625', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6496', '4', '-7631.85', '-2831.3', '133.494', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6496', '5', '-7645.65', '-2870.67', '135.292', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6496', '6', '-7657.31', '-2892.75', '134.415', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6496', '7', '-7679.54', '-2910.96', '133.451', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6496', '8', '-7699.81', '-2921.18', '132.51', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6496', '9', '-7725.8', '-2911.88', '133.441', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6496', '10', '-7731.43', '-2901.38', '133.079', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6496', '11', '-7724.99', '-2890.05', '131.849', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6496', '12', '-7700.2', '-2870.91', '133.438', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6496', '13', '-7658.22', '-2837.32', '133.63', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6496', '14', '-7634.87', '-2807.44', '134.014', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6496', '15', '-7630.23', '-2786.38', '135.317', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6496', '16', '-7614.07', '-2775.65', '133.969', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6496', '17', '-7595.53', '-2759.98', '133.383', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '1', '-8153.3', '-2874.13', '135.436', '0', '1.96597');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '2', '-8173.46', '-2839.14', '134.98', '0', '1.83246');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '3', '-8180.89', '-2814.9', '137.014', '0', '1.86608');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '4', '-8187.5', '-2778.63', '136.857', '0', '1.68151');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '5', '-8185.32', '-2756.38', '135.924', '0', '1.43629');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '6', '-8180.05', '-2728.25', '136.828', '0', '1.29492');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '7', '-8173.73', '-2709.68', '135.751', '0', '1.25957');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '8', '-8171.51', '-2694.18', '134.422', '0', '1.5973');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '9', '-8179.31', '-2681.29', '133.785', '0', '2.41018');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '10', '-8197.54', '-2667.88', '135.563', '0', '2.84928');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '11', '-8209.85', '-2667.54', '135.958', '0', '3.25376');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '12', '-8222.87', '-2677.79', '135.297', '0', '3.99892');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '13', '-8228.39', '-2687.87', '134.783', '0', '4.34056');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '14', '-8230.31', '-2701.77', '134.818', '0', '4.83222');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '15', '-8227.13', '-2721.26', '134.608', '0', '4.88327');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '16', '-8223.57', '-2741.88', '134.794', '0', '4.88327');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '17', '-8220.71', '-2759.39', '136.797', '0', '5.01286');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '18', '-8216.1', '-2771.61', '137.482', '0', '5.21313');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '19', '-8203.16', '-2790.85', '137.323', '0', '5.33094');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '20', '-8186.23', '-2828.33', '137.181', '0', '5.12673');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '21', '-8164.35', '-2888.01', '133.985', '0', '4.77141');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '22', '-8166.43', '-2929.01', '133.334', '0', '4.56328');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '23', '-8170.41', '-2958.3', '133.349', '0', '4.61433');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '24', '-8163.14', '-2995.35', '135.791', '0', '5.28584');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '25', '-8148.71', '-3012.72', '134.425', '0', '5.72095');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '26', '-8141.62', '-3015.69', '134.422', '0', '6.14663');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '27', '-8131.51', '-3016.78', '134.423', '0', '0.30955');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '28', '-8119.16', '-3011.6', '134.491', '0', '0.646486');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '29', '-8104.84', '-3000.31', '134.754', '0', '0.681829');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '30', '-8093.87', '-2990.69', '134.723', '0', '0.897814');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '31', '-8077.5', '-2969.51', '134.486', '10000', '0.925303');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '32', '-8066.4', '-2959.89', '134.769', '0', '0.685757');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '33', '-8059.79', '-2953.8', '135.33', '0', '1.23392');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '34', '-8055.65', '-2938.94', '135.143', '0', '1.82925');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '35', '-8061.08', '-2924.45', '135.34', '0', '2.23858');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '36', '-8093.47', '-2899.57', '134.066', '0', '2.61557');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '37', '-8110.15', '-2896.43', '134.398', '0', '2.93366');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6469', '38', '-8134.7', '-2887.86', '135.774', '0', '2.41529');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6751', '1', '-7682.42', '-1139.72', '290.121', '0', '5.54256');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6751', '2', '-7667.47', '-1158.28', '293.115', '0', '5.74126');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6751', '3', '-7620.15', '-1202.64', '294.141', '0', '0.065179');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6751', '4', '-7579.83', '-1203.19', '295.948', '0', '0.349493');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6751', '5', '-7548.39', '-1191.72', '291.224', '0', '0.578044');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6751', '6', '-7518.04', '-1173.72', '285.623', '0', '1.03122');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6751', '7', '-7502.42', '-1148.82', '283.536', '0', '1.32339');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6751', '8', '-7498.73', '-1116.38', '281.747', '0', '1.78285');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6751', '9', '-7506.53', '-1085.59', '290.476', '0', '2.01533');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6751', '10', '-7519.97', '-1048.83', '288.986', '0', '2.35148');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6751', '11', '-7554.22', '-1021.56', '294.024', '0', '2.78659');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6751', '12', '-7589.07', '-1020.71', '292.665', '0', '3.47145');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6751', '13', '-7612.99', '-1028.65', '285.319', '0', '3.80446');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6751', '14', '-7635.77', '-1050.28', '294.726', '0', '4.42336');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6751', '15', '-7673.55', '-1074.89', '291.274', '0', '4.76342');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6751', '16', '-7672.18', '-1122.79', '288.217', '0', '5.13177');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6751', '17', '-7656.22', '-1159.52', '321.283', '0', '5.73809');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6809', '1', '-7563.27', '-1127.95', '311.226', '0', '3.11491');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6809', '2', '-7593.5', '-1135.78', '306.466', '0', '2.67509');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6809', '3', '-7602.82', '-1131.38', '304.65', '0', '3.28063');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6809', '4', '-7613.59', '-1134.62', '303.177', '0', '3.42986');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6809', '5', '-7619.85', '-1137.96', '301.538', '0', '2.31381');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6809', '6', '-7628.6', '-1133.89', '299.233', '0', '2.0397');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6809', '7', '-7639.82', '-1126.93', '308.131', '0', '1.11293');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6809', '8', '-7638.56', '-1115.17', '308.69', '0', '0.622054');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6809', '9', '-7628.14', '-1104.62', '297.551', '0', '0.571731');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6809', '10', '-7614.63', '-1086.77', '294.469', '0', '0.096565');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6809', '11', '-7595.33', '-1082.73', '301.069', '0', '5.75457');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6809', '12', '-7562.57', '-1093.5', '309.159', '0', '4.15316');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6809', '13', '-7572.64', '-1107.93', '304.962', '0', '3.70784');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6809', '14', '-7580.03', '-1111.9', '311.15', '0', '3.6348');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6809', '15', '-7593.73', '-1118.03', '308.062', '0', '3.87513');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6809', '16', '-7606.64', '-1133.21', '302.427', '0', '3.67721');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6809', '17', '-7621.48', '-1134.39', '299.434', '0', '2.92323');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6809', '18', '-7628.45', '-1127.85', '318.811', '0', '2.02002');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6809', '19', '-7626.37', '-1107.11', '312.317', '0', '1.0312');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6809', '20', '-7611.95', '-1089.72', '316.947', '0', '0.589808');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6809', '21', '-7594.47', '-1082.23', '327.068', '0', '5.32733');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6477', '1', '-8155.34', '-522.865', '200.452', '0', '2.10082');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6477', '2', '-8166.09', '-510.075', '202.345', '0', '1.99322');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6477', '3', '-8169.66', '-502.598', '200.66', '0', '2.40006');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6477', '4', '-8178.07', '-497.835', '200.168', '0', '2.93099');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6477', '5', '-8186.22', '-498.526', '199.483', '0', '3.44307');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6477', '6', '-8195.25', '-501.355', '199.026', '0', '3.66769');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6477', '7', '-8200.07', '-504.223', '198.899', '0', '4.12637');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6477', '8', '-8203.39', '-512.75', '199.67', '0', '4.76961');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6477', '9', '-8199.36', '-524.386', '200.329', '0', '5.16309');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6477', '10', '-8188.88', '-541.613', '199.787', '0', '5.21336');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6477', '11', '-8179.26', '-551.732', '199.892', '0', '5.09712');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6477', '12', '-8177.94', '-556.197', '199.94', '0', '4.46645');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6477', '13', '-8183.08', '-570.315', '200.28', '0', '4.62589');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6477', '14', '-8182.24', '-582.373', '200.45', '0', '5.06649');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6477', '15', '-8179.32', '-601.887', '200.002', '0', '4.90078');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6477', '16', '-8175.93', '-619.675', '200.348', '0', '4.90078');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6477', '17', '-8168.96', '-624.982', '199.969', '0', '5.84012');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6477', '18', '-8161.55', '-625.941', '199.943', '0', '0.169541');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6477', '19', '-8152.82', '-622.463', '199.902', '0', '0.809641');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6477', '20', '-8149.24', '-613.011', '199.762', '0', '1.24554');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6477', '21', '-8145.28', '-602.236', '200.102', '0', '1.09239');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6477', '22', '-8140.28', '-592.598', '202.016', '0', '0.988712');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6477', '23', '-8133.6', '-582.307', '200.452', '0', '1.54085');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6477', '24', '-8133.6', '-582.307', '200.452', '0', '1.54085');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6477', '25', '-8141.01', '-567.152', '200.486', '0', '1.87543');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('6477', '26', '-8149.03', '-542.259', '200.613', '0', '1.79375');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('126879', '1', '-11257.1', '988.193', '83.3336', '0', '5.69163');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('126879', '2', '-11244.4', '962.304', '83.269', '0', '5.05783');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('126879', '3', '-11240.5', '948.932', '75.6219', '0', '5.30995');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('126879', '4', '-11212.6', '921.358', '54.3906', '0', '5.10103');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('126879', '5', '-11194.6', '895.302', '48.4349', '0', '5.39948');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('126879', '6', '-11172.6', '876.756', '41.3173', '0', '6.03015');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('126879', '7', '-11146.3', '866.02', '38.4824', '0', '5.63196');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('126879', '8', '-11126', '851.423', '40.3828', '0', '5.64138');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('126879', '9', '-11086.8', '834.864', '40.7715', '0', '0.273191');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('126879', '10', '-11059.5', '846.814', '38.6569', '0', '6.25714');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('126879', '11', '-11039.1', '843.255', '36.3932', '0', '5.48039');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('126879', '12', '-11012.4', '812.002', '37.4404', '0', '5.31939');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('126879', '13', '-11002.7', '788.433', '36.4366', '0', '5.5715');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('126879', '14', '-10982.7', '761.666', '43.9919', '0', '5.11518');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('126879', '15', '-10962.6', '736.809', '46.4806', '0', '6.21378');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('126879', '16', '-10913.9', '722.066', '42.727', '600000', '5.94361');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('126879', '17', '-10913.9', '722.066', '42.727', '2', '5.94361');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('102294', '1', '-3129.8', '4926.13', '-98.4561', '0', '0.808878');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('102294', '2', '-3124.58', '4931.7', '-98.6768', '0', '6.24855');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('102294', '3', '-3110.8', '4938.22', '-99.5145', '0', '0.069034');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('102294', '4', '-3095.94', '4940.46', '-99.6997', '15000', '0.061178');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('102294', '5', '-3095.94', '4940.46', '-99.6997', '50000', '0.061178');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('20960', '1', '-7955.58', '-5257.35', '0.647152', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('20960', '2', '-7946.61', '-5254.11', '0.578651', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('20960', '3', '-7929.52', '-5251.87', '0.570438', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('20960', '4', '-7943.27', '-5254.3', '0.5747', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('20960', '5', '-7948.61', '-5256.08', '0.62027', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('20960', '6', '-7962.06', '-5261.57', '0.624113', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('20960', '7', '-7970.59', '-5266.94', '0.608315', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('20960', '8', '-7986.01', '-5281.18', '0.575205', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('20960', '9', '-7992.82', '-5286.59', '0.575205', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('20960', '10', '-8001.21', '-5286.79', '0.575205', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('20960', '11', '-8001.21', '-5286.79', '0.575205', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('20960', '12', '-7986.39', '-5281.76', '0.575205', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('20960', '13', '-7978.44', '-5275.57', '0.576416', '0', '0');
REPLACE INTO `waypoint_data` (id,point,position_x,position_y,position_z,delay,orientation) VALUES ('20960', '14', '-7960.76', '-5260.08', '0.623071', '0', '0');
INSERT IGNORE INTO `creature_addon` (guid, path_id) VALUES ('127685', '127685');
INSERT IGNORE INTO `creature_addon` (guid, path_id) VALUES ('4547', '4547');
INSERT IGNORE INTO `creature_addon` (guid, path_id) VALUES ('71531', '71531');
INSERT IGNORE INTO `creature_addon` (guid, path_id) VALUES ('18533', '18533');
INSERT IGNORE INTO `creature_addon` (guid, path_id) VALUES ('6527', '6527');
INSERT IGNORE INTO `creature_addon` (guid, path_id) VALUES ('6496', '6496');
INSERT IGNORE INTO `creature_addon` (guid, path_id) VALUES ('6751', '6751');
INSERT IGNORE INTO `creature_addon` (guid, path_id) VALUES ('6809', '6809');
INSERT IGNORE INTO `creature_addon` (guid, path_id) VALUES ('6477', '6477');
INSERT IGNORE INTO `creature_addon` (guid, path_id) VALUES ('126879', '126879');
INSERT IGNORE INTO `creature_addon` (guid, path_id) VALUES ('102294', '102294');
INSERT IGNORE INTO `creature_addon` (guid, path_id) VALUES ('20960', '20960');
REPLACE INTO `gossip_menu` VALUES ('1802', '2434');
REPLACE INTO `gossip_menu` VALUES ('4510', '4987');
REPLACE INTO `gossip_menu` VALUES ('6214', '7374');
REPLACE INTO `gossip_menu` VALUES ('7398', '8893');
REPLACE INTO `gossip_menu` VALUES ('7399', '8892');
REPLACE INTO `gossip_menu` VALUES ('7400', '8868');
REPLACE INTO `gossip_menu` VALUES ('7400', '8892');
REPLACE INTO `gossip_menu` VALUES ('7403', '8880');
REPLACE INTO `gossip_menu` VALUES ('7425', '8974');
REPLACE INTO `gossip_menu` VALUES ('7453', '9028');
REPLACE INTO `gossip_menu` VALUES ('7454', '9030');
REPLACE INTO `gossip_menu` VALUES ('7456', '9031');
REPLACE INTO `gossip_menu` VALUES ('7457', '9032');
REPLACE INTO `gossip_menu` VALUES ('7465', '9076');
REPLACE INTO `gossip_menu` VALUES ('7501', '9097');
REPLACE INTO `gossip_menu` VALUES ('7531', '9136');
REPLACE INTO `gossip_menu` VALUES ('8524', '10643');
REPLACE INTO `gossip_menu` VALUES ('8678', '10918');
REPLACE INTO `gossip_menu` VALUES ('10340', '14408');
REPLACE INTO `gossip_menu_option` VALUES ('7608', '0', '1', 'I would like to buy from you.', '3', '128', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8524', '0', '0', 'Yes, Scryer. You may possess me.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7415', '0', '0', 'I am ready.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7368', '3', '0', 'Acteon, where is the best area to hunt for moongraze stags?', '1', '1', '7423', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7368', '4', '0', 'Acteon, where is the best place to hunt moongraze bucks?', '1', '1', '7424', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7465', '0', '0', 'Where should I begin my search for the portal?', '1', '1', '7501', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7531', '0', '0', 'I\'m a prisoner, what does it look like? The draenei filth captured me as I exited the sun gate. They killed our portal controllers and destroyed the gate. The Sun King will be most displeased with this turn of events.', '1', '1', '7537', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7537', '0', '0', 'Ah yes, Sironas. I had nearly forgotten that Sironas was here. I served under Sironas back on Outland. I hadn\'t heard of this abomination, though; those damnable draenei captured me before I even fully materialized on this world.', '1', '1', '7536', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7536', '0', '0', 'Incredible. How did Sironas accomplish such a thing?', '1', '1', '7535', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7535', '0', '0', 'Sironas is an eredar... I mean, yes, obviously.', '1', '1', '7534', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7534', '0', '0', 'The Vector Coil is massive. I hope we have more than one abomination guarding the numerous weak points.', '1', '1', '7533', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7533', '0', '0', 'I did and you believed me. Thank you for the information, blood elf. You have helped us more than you could know.', '1', '1', '1', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7449', '0', '0', 'Hover over me one more illusion, Admetius.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7452', '0', '0', 'Jessera, could you point me to a aquatic stinkhorn?', '1', '1', '7453', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7452', '1', '0', 'Jessera, show me the way to the ruinous polyspore.', '1', '1', '7454', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7452', '2', '0', 'Jessera, could you show me where to look for a fel cone fungus?', '1', '1', '7456', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7452', '3', '0', 'Jessera how to get to the blood mushroom?', '1', '1', '7457', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('8298', '0', '0', 'You can read the spell that will allow me to breathe underwater?', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('8298', '1', '0', 'You can read the spell that will allow me to breathe underwater?', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10453', '0', '0', 'I am ready to fight!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10454', '0', '0', 'I am ready to fight!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10455', '0', '0', 'I am ready to fight!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10456', '0', '0', 'I am ready to fight!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10457', '0', '0', 'I am ready to fight!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10458', '0', '0', 'I am ready to fight!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10459', '0', '0', 'I am ready to fight!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10460', '0', '0', 'I am ready to fight!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10461', '0', '0', 'I am ready to fight!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10462', '0', '0', 'I am ready to fight!', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('264', '0', '0', 'Where is the key to this lock?', '1', '1', '263', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('262', '0', '0', 'Where is the key to this lock?', '1', '1', '261', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9487', '0', '1', 'Let me browse your goods', '3', '128', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8899', '0', '0', 'Please loan me that spyglass.', '1', '1', '8928', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7478', '0', '0', 'Why do you suffer?', '1', '1', '7477', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7477', '0', '0', 'What is Ysera and how were you blessed?', '1', '1', '7476', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7476', '0', '0', 'Until what?', '1', '1', '7475', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7475', '0', '0', 'So why are you still here?', '1', '1', '7474', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9509', '0', '0', 'Afraid not. Your days as a sanitation engineer are coming to an end.', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9507', '0', '0', 'I\'m afraid not, Schneider. Your time has come!', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9510', '0', '0', 'No, chancellor, I wouldn\'t say that I\'m here to \'rescue\' you, per se.', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9508', '0', '0', 'Not today, senior scrivener!', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('10178', '0', '0', 'Tell me of youself, Xarantaur. Why are you called the Witness?', '1', '1', '10177', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('10177', '0', '0', 'please, go on.', '1', '1', '10176', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('10176', '0', '0', 'They?', '1', '1', '10175', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9906', '0', '0', 'I am sorry to disturb your rest, chieftain, but your brother\'s spirit may be in danger. Would you tell me what you remember of him?', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7493', '0', '0', '<Turn to the next page.>', '1', '1', '7492', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7492', '0', '0', '<Turn to the next page.>', '1', '1', '7491', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7491', '0', '0', '<Turn to the next page.>', '1', '1', '7490', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8724', '0', '1', 'Let me browse your goods.', '3', '128', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8722', '0', '1', 'Let me browse your goods.', '3', '128', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8721', '0', '1', 'Let me browse your goods.', '3', '128', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8723', '0', '1', 'Let me browse your goods.', '3', '128', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7772', '1', '0', 'Scout Neftis, I need a new disguise', '1', '1', '1', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9690', '0', '0', 'I lost my cloth. Can you rip me off another piece?', '1', '1', '1', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8716', '0', '1', 'Let me browse your goods.', '3', '128', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8717', '0', '1', 'Let me browse your goods.', '3', '128', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8726', '0', '1', 'Jho\'nass, let me see what you have to offer.', '3', '128', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8754', '0', '1', 'I\'m interested in purchasing a new drake.', '3', '128', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8513', '1', '0', 'Spiritcaller, I need more spirit calling totems.', '1', '1', '1', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7999', '0', '0', 'Grek, will you try out this new weapon oil Rakoria made?', '1', '1', '1', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8523', '0', '0', 'Felsworn Gas Mask broken. You do not have another?', '1', '1', '1', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8752', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8751', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7722', '0', '1', 'I have marks to redeem!', '3', '128', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7810', '0', '3', 'I would like to train.', '5', '16', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7288', '1', '1', 'Let me browse your goods.', '3', '128', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7290', '1', '5', 'A fine offer, Floyd. I wish to make Hellfire Peninsula my home.', '8', '65536', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7290', '3', '1', 'I\'m looking for some specialty goods. Let me browse your wares, Floyd.', '3', '128', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8894', '0', '0', 'I need to fly to the Windrunner. Official Business!', '1', '1', '1', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8894', '1', '0', 'I need a riding bat to intercept the Alliance reinforcements.', '1', '1', '1', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8062', '0', '0', 'Attempt to contact Wind Trader Marid.', '1', '1', '1', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('1443', '0', '0', 'You can cook?  So can I!  Is there a recipe you can teach me?', '1', '1', '1501', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('1443', '1', '0', 'You\'re an alchemist?  So am I.  Perhaps you can teach me what you know...', '1', '1', '1442', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9055', '0', '5', 'Make this inn your home.', '8', '65536', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9055', '1', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9050', '0', '1', 'Let me browse your goods.', '3', '128', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9087', '0', '1', 'Let me browse your goods.', '3', '128', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9126', '0', '1', 'Let me browse your goods.', '3', '128', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9198', '0', '1', 'Let me browse your goods.', '3', '128', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5381', '0', '0', 'Teach me how to create and apply a Heavy Mageweave Bandage, Doctor.', '1', '1', '1', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5381', '1', '0', 'Teach me how to create and apply a Runecloth Bandage, Doctor.', '1', '1', '1', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5381', '2', '0', 'Teach me how to create and apply a Heavy Runecloth Bandage, Doctor.', '1', '1', '1', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5382', '0', '0', 'Teach me how to create and apply a Heavy Mageweave Bandage, Doctor.', '1', '1', '1', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5382', '1', '0', 'Teach me how to create and apply a Runecloth Bandage, Doctor.', '1', '1', '1', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5382', '2', '0', 'Teach me how to create and apply a Heavy Runecloth Bandage, Doctor.', '1', '1', '1', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9289', '0', '0', 'Your insight is appreciated.', '1', '1', '9290', '0', '0', '0', '');

# Conditions
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14;
REPLACE INTO `conditions` VALUES ('14', '10043', '14014', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9821', '13584', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '31111', '15037', '0', '0', '1', '0', '58493', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '31111', '15038', '0', '0', '1', '0', '58493', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4545', '4437', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4577', '4793', '0', '0', '15', '0', '1527', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4576', '4793', '0', '0', '15', '0', '1527', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4683', '1215', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '1041', '1133', '0', '0', '25', '0', '9788', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4606', '5716', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '1914', '2568', '0', '0', '8', '0', '3909', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '2911', '3585', '0', '0', '8', '0', '4972', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3161', '3893', '0', '0', '5', '0', '76', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4531', '4442', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4571', '4781', '0', '0', '15', '0', '511', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4004', '4859', '0', '0', '5', '0', '72', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4648', '4987', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4647', '4997', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4621', '4994', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4532', '4437', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4555', '561', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4506', '5004', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4579', '1218', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4578', '1218', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4472', '5000', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4536', '562', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4572', '4438', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3925', '4783', '0', '0', '15', '0', '511', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4523', '4441', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4522', '4440', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4659', '4835', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4482', '1216', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '436', '4794', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4519', '565', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4518', '565', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4471', '3976', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4521', '4441', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '2383', '5715', '0', '0', '15', '0', '1279', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4468', '4433', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4475', '5721', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4467', '4434', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '656', '1219', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4783', '5839', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4783', '5838', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '5382', '6414', '0', '0', '8', '0', '6624', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '5665', '6960', '0', '0', '7', '0', '356', '201', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '5853', '7017', '0', '0', '7', '0', '185', '225', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6685', '13062', '0', '0', '12', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7939', '9991', '0', '0', '9', '0', '10140', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8538', '10801', '0', '0', '9', '0', '10935', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8554', '10706', '0', '0', '9', '0', '10935', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8558', '7778', '0', '0', '5', '0', '932', '6', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '5749', '6931', '0', '0', '7', '0', '202', '300', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7926', '12134', '0', '0', '12', '0', '26', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8989', '12138', '0', '0', '2', '0', '36876', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9687', '13368', '0', '0', '8', '0', '12684', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9760', '13425', '0', '0', '9', '0', '12727', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9781', '13461', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9834', '13905', '0', '0', '9', '0', '13188', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9821', '13557', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7898', '14544', '0', '0', '12', '0', '40', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10605', '14674', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9130', '12344', '0', '0', '8', '0', '11571', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '5856', '7024', '0', '0', '7', '0', '129', '201', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '5855', '7026', '0', '0', '7', '0', '129', '201', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9709', '13271', '0', '0', '9', '0', '12630', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9852', '13640', '0', '0', '9', '0', '12919', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4690', '4795', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9752', '13391', '0', '0', '1', '0', '51966', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9752', '13390', '0', '0', '1', '0', '51966', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9731', '13348', '0', '0', '14', '0', '12238', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9731', '13422', '0', '0', '9', '0', '12713', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9798', '13503', '0', '0', '8', '0', '12212', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9492', '12775', '0', '0', '14', '0', '12227', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9492', '12779', '0', '0', '8', '0', '12226', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '5502', '6553', '0', '0', '8', '0', '1029', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10040', '14035', '0', '0', '9', '0', '13232', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10400', '14436', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9615', '12998', '0', '0', '9', '0', '11989', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '5854', '7015', '0', '0', '7', '0', '185', '201', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4566', '2193', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9871', '13682', '0', '0', '9', '0', '12957', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9714', '13290', '0', '0', '8', '0', '12795', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4571', '4782', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4658', '6165', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4650', '5721', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4609', '5720', '0', '0', '15', '0', '1279', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4560', '4437', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4605', '5717', '0', '0', '15', '0', '511', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4508', '4784', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4006', '4862', '0', '0', '5', '0', '81', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4551', '5000', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4551', '4999', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4550', '5000', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4550', '4999', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7467', '9050', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7377', '8828', '0', '0', '15', '0', '1471', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4185', '5285', '0', '0', '7', '0', '165', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '5123', '5006', '0', '0', '15', '0', '1471', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4474', '5000', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4569', '5724', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4568', '4988', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4548', '4984', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4652', '5005', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4530', '5006', '0', '0', '15', '0', '1471', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4529', '5006', '0', '0', '15', '0', '1471', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4538', '563', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4538', '562', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4537', '562', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3924', '4781', '0', '0', '15', '0', '511', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3924', '4782', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4504', '5722', '0', '0', '15', '0', '1279', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4504', '5693', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4509', '1040', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4092', '4867', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4092', '4993', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4017', '4998', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '411', '4798', '0', '0', '15', '0', '1527', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4470', '3977', '0', '0', '15', '0', '1533', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4470', '3976', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4475', '1216', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4517', '565', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4528', '5005', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '2304', '2999', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4641', '5714', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4559', '4436', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4558', '4437', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4664', '3977', '0', '0', '15', '0', '1533', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4663', '3977', '0', '0', '15', '0', '1533', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4662', '3977', '0', '0', '15', '0', '1533', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4481', '5721', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4471', '3977', '0', '0', '15', '0', '1533', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10606', '14675', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7531', '9134', '0', '0', '1', '0', '31609', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7832', '9584', '0', '0', '8', '0', '9667', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7898', '14640', '0', '0', '12', '0', '41', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4862', '5939', '0', '0', '5', '0', '349', '4', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7921', '11956', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7925', '11963', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7927', '11966', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8064', '9962', '0', '0', '12', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8660', '11057', '0', '0', '2', '0', '32620', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7357', '8786', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4482', '5721', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4540', '4796', '0', '0', '15', '0', '1527', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4481', '1216', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4561', '5695', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4557', '3974', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4533', '4442', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4533', '4437', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4650', '1216', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4528', '5006', '0', '0', '15', '0', '1471', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '2383', '5714', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '1503', '5722', '0', '0', '15', '0', '1279', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4532', '4442', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4562', '4834', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4010', '5003', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4546', '4984', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '85', '4796', '0', '0', '15', '0', '1527', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4658', '6164', '0', '0', '15', '0', '1527', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4657', '5001', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '12537', '4437', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4576', '4794', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '523', '1040', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '1403', '4786', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3644', '4440', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4677', '3975', '0', '0', '15', '0', '1533', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4527', '4973', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3642', '4436', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4657', '5002', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4653', '4984', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4469', '3977', '0', '0', '15', '0', '1533', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3984', '4838', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4521', '4440', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4575', '4793', '0', '0', '15', '0', '1527', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '1403', '2037', '0', '0', '15', '0', '511', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4605', '5716', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4101', '5002', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4012', '4868', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8433', '10292', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '63', '562', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9777', '13455', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4524', '4997', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4545', '4442', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4824', '5880', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9188', '12485', '0', '0', '8', '0', '11864', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8453', '7693', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '1045', '1643', '0', '0', '2', '0', '9279', '1', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '1047', '1647', '0', '0', '2', '0', '9280', '1', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '1049', '1649', '0', '0', '2', '0', '9282', '1', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '1050', '1651', '0', '0', '2', '0', '9281', '1', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '1045', '1753', '0', '0', '2', '0', '9279', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '1047', '1754', '0', '0', '2', '0', '9280', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '1049', '1755', '0', '0', '2', '0', '9282', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '1050', '1756', '0', '0', '2', '0', '9281', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10243', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9352', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9354', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9384', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9385', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9386', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9387', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9388', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9389', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9390', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9391', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9392', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9393', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9394', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9395', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9396', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9397', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9398', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9399', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9400', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9401', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9402', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9403', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9404', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9405', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9406', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9407', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9408', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9409', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9410', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9411', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9412', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9413', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10227', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10230', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10233', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10234', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10237', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10238', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10240', '12377', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10228', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10231', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10232', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10235', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10236', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10239', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10241', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10242', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9353', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9355', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9356', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9357', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9358', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9359', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9360', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9361', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9362', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9363', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9364', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9365', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9366', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9367', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9368', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9369', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9370', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9371', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9372', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9373', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9374', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9375', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9376', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9377', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9378', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9379', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9380', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9381', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9382', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9383', '12374', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4007', '4999', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7399', '8865', '0', '0', '8', '0', '9506', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7403', '8869', '0', '0', '8', '0', '9527', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7378', '8830', '0', '0', '15', '0', '1471', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4536', '563', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4469', '3976', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4008', '4863', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '655', '1218', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4484', '538', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7353', '8776', '0', '0', '8', '0', '9312', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7353', '8777', '0', '0', '8', '0', '9305', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4515', '5008', '0', '0', '15', '0', '1471', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4104', '5006', '0', '0', '15', '0', '1471', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7398', '8862', '0', '0', '8', '0', '9506', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4104', '5005', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3645', '4442', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4103', '5006', '0', '0', '15', '0', '1471', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4103', '5005', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8213', '10208', '0', '0', '5', '0', '930', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9647', '13065', '0', '0', '1', '0', '50517', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8218', '10215', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6461', '7654', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6490', '7689', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6282', '7481', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6462', '7655', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6460', '7653', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6459', '7652', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6463', '7656', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8077', '7705', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8256', '10277', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8258', '10279', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8076', '9982', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8264', '10286', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8261', '10283', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50321', '7658', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50322', '7659', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50323', '7662', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50324', '7661', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6465', '7683', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50326', '7660', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50328', '7684', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50329', '10272', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8079', '9985', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8263', '10285', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6484', '7684', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8255', '10276', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6471', '7700', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50334', '7667', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50335', '7665', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50336', '7664', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50337', '7666', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6475', '7668', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50339', '9979', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50341', '10287', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8075', '9981', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8073', '10278', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50344', '10276', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50348', '10025', '0', '0', '27', '0', '61', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8104', '10026', '0', '0', '27', '0', '61', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50351', '10026', '0', '0', '27', '0', '61', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50352', '10025', '0', '0', '27', '0', '61', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50353', '10026', '0', '0', '27', '0', '61', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50354', '10025', '0', '0', '27', '0', '61', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50355', '10026', '0', '0', '27', '0', '61', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50356', '10025', '0', '0', '27', '0', '61', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50349', '10026', '0', '0', '27', '0', '61', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9829', '13577', '0', '0', '27', '0', '61', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4562', '4833', '0', '0', '15', '0', '1527', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9983', '13834', '0', '0', '27', '0', '71', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9981', '13833', '0', '0', '27', '0', '71', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50372', '14671', '0', '0', '27', '0', '71', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50374', '14671', '0', '0', '27', '0', '71', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50375', '14670', '0', '0', '27', '0', '71', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50376', '14671', '0', '0', '27', '0', '71', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50377', '14670', '0', '0', '27', '0', '71', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50378', '14671', '0', '0', '27', '0', '71', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50379', '14670', '0', '0', '27', '0', '71', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50380', '14671', '0', '0', '27', '0', '71', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10602', '14671', '0', '0', '27', '0', '71', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4676', '4835', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10601', '14670', '0', '0', '27', '0', '71', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8105', '10025', '0', '0', '27', '0', '61', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4610', '5720', '0', '0', '15', '0', '1279', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8817', '11330', '0', '0', '9', '0', '11153', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '2465', '3158', '0', '0', '8', '0', '1324', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4486', '539', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3925', '4784', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3921', '4774', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '5962', '7121', '0', '0', '5', '0', '59', '5', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '2381', '2193', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4485', '539', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3645', '4439', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '141', '4794', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4009', '4993', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '12537', '4438', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '1503', '2175', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8240', '10252', '0', '0', '8', '0', '9795', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8816', '11322', '0', '0', '9', '0', '11153', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8998', '12185', '0', '0', '8', '0', '11460', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9631', '13032', '0', '0', '8', '0', '12249', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '63', '563', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10144', '14088', '0', '0', '25', '0', '54197', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6658', '7917', '0', '0', '8', '0', '8599', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7931', '12376', '0', '0', '12', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7898', '12376', '0', '0', '12', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7921', '12376', '0', '0', '12', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7935', '12376', '0', '0', '12', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7925', '12376', '0', '0', '12', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7926', '12376', '0', '0', '12', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7927', '12376', '0', '0', '12', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10250', '12376', '0', '0', '12', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8064', '12376', '0', '0', '12', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3481', '4953', '0', '0', '8', '0', '5535', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8672', '10922', '0', '0', '2', '0', '32569', '10', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8677', '10921', '0', '0', '2', '0', '32569', '10', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3162', '3896', '0', '0', '5', '0', '530', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '2381', '5723', '0', '0', '15', '0', '1279', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7188', '8466', '0', '0', '8', '0', '9193', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9863', '13680', '0', '0', '8', '0', '12948', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8078', '9984', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7931', '13044', '0', '0', '12', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7898', '13044', '0', '0', '12', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7921', '13044', '0', '0', '12', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7935', '13044', '0', '0', '12', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7925', '13044', '0', '0', '12', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7926', '13044', '0', '0', '12', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7927', '13044', '0', '0', '12', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10250', '13044', '0', '0', '12', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8064', '13044', '0', '0', '12', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7898', '12134', '0', '0', '12', '0', '26', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7921', '12134', '0', '0', '12', '0', '26', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7925', '12134', '0', '0', '12', '0', '26', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7927', '12134', '0', '0', '12', '0', '26', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8064', '12134', '0', '0', '12', '0', '26', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7931', '12134', '0', '0', '12', '0', '26', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7935', '12134', '0', '0', '12', '0', '26', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10250', '12134', '0', '0', '12', '0', '26', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7926', '14544', '0', '0', '12', '0', '40', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7921', '14544', '0', '0', '12', '0', '40', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7925', '14544', '0', '0', '12', '0', '40', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7927', '14544', '0', '0', '12', '0', '40', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8064', '14544', '0', '0', '12', '0', '40', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7931', '14544', '0', '0', '12', '0', '40', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7935', '14544', '0', '0', '12', '0', '40', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10250', '14544', '0', '0', '12', '0', '40', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9549', '12869', '0', '0', '17', '0', '2796', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7931', '11959', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7898', '11961', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7935', '11965', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7926', '11964', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10250', '11962', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8064', '11960', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7931', '14239', '0', '0', '12', '0', '9', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7898', '14239', '0', '0', '12', '0', '9', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7921', '14239', '0', '0', '12', '0', '9', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7935', '14239', '0', '0', '12', '0', '9', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7925', '14239', '0', '0', '12', '0', '9', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7926', '14239', '0', '0', '12', '0', '9', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7927', '14239', '0', '0', '12', '0', '9', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10250', '14233', '0', '0', '12', '0', '9', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8064', '14239', '0', '0', '12', '0', '9', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7931', '9715', '0', '0', '12', '0', '7', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7898', '9662', '0', '0', '12', '0', '7', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7921', '9700', '0', '0', '12', '0', '7', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7935', '9716', '0', '0', '12', '0', '7', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7925', '9704', '0', '0', '12', '0', '7', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7926', '9708', '0', '0', '12', '0', '7', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7927', '9712', '0', '0', '12', '0', '7', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10250', '9692', '0', '0', '12', '0', '7', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8064', '9964', '0', '0', '12', '0', '7', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7935', '9718', '0', '0', '12', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7925', '9702', '0', '0', '12', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7926', '9706', '0', '0', '12', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7931', '9717', '0', '0', '12', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7898', '9626', '0', '0', '12', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7921', '9698', '0', '0', '12', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7927', '9710', '0', '0', '12', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10250', '9690', '0', '0', '12', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10212', '14192', '0', '0', '4', '0', '4395', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9750', '13376', '0', '0', '8', '0', '12671', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4516', '5005', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '1802', '2434', '0', '0', '9', '0', '3909', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4535', '563', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4520', '564', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9853', '13642', '0', '0', '8', '0', '12928', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6510', '7705', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4555', '560', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4554', '561', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4554', '560', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4553', '561', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4544', '4437', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7922', '12134', '0', '0', '12', '0', '26', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7922', '11957', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7922', '12376', '0', '0', '12', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7922', '13044', '0', '0', '12', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7922', '9696', '0', '0', '12', '0', '7', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7922', '9694', '0', '0', '12', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7922', '14228', '0', '0', '12', '0', '9', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7922', '14544', '0', '0', '12', '0', '40', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7923', '12134', '0', '0', '12', '0', '26', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7923', '11958', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7923', '12376', '0', '0', '12', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7923', '14239', '0', '0', '12', '0', '9', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7923', '9688', '0', '0', '12', '0', '7', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7923', '9686', '0', '0', '12', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7923', '13044', '0', '0', '12', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7923', '14544', '0', '0', '12', '0', '40', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4654', '563', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4676', '4833', '0', '0', '15', '0', '1527', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4017', '4888', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4652', '5006', '0', '0', '15', '0', '1471', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4530', '5005', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4529', '5005', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4570', '1217', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4569', '1215', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4568', '4989', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '655', '4973', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '2384', '5722', '0', '0', '15', '0', '1279', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4468', '4434', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4517', '564', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7095', '8349', '0', '0', '4', '0', '215', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8560', '7778', '0', '0', '5', '0', '934', '6', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4560', '4436', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4654', '562', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4520', '565', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3642', '4437', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4508', '4783', '0', '0', '15', '0', '511', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4507', '4784', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3926', '4786', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6506', '7700', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6478', '7679', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '2177', '2810', '0', '0', '14', '0', '4321', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '2179', '2810', '0', '0', '14', '0', '4321', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '2178', '2810', '0', '0', '14', '0', '4321', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '2178', '2933', '0', '0', '8', '0', '4321', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '5749', '6930', '0', '0', '7', '0', '202', '300', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6001', '7155', '0', '0', '8', '0', '7761', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6540', '7771', '0', '0', '1', '0', '24746', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6542', '7772', '0', '0', '1', '0', '24746', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6543', '7754', '0', '0', '1', '0', '24746', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '2177', '2933', '0', '0', '8', '0', '4321', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8671', '10951', '0', '0', '2', '0', '32569', '35', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8685', '10932', '0', '0', '2', '0', '32569', '35', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8690', '10932', '0', '0', '2', '0', '32569', '35', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8691', '10932', '0', '0', '2', '0', '32569', '35', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8706', '10955', '0', '0', '2', '0', '32579', '1', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8707', '10955', '0', '0', '2', '0', '32579', '1', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8708', '10955', '0', '0', '2', '0', '32579', '1', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8709', '10955', '0', '0', '2', '0', '32579', '1', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8689', '10932', '0', '0', '2', '0', '32569', '35', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9731', '13325', '0', '0', '8', '0', '12661', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10036', '13935', '0', '0', '8', '0', '13230', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10402', '14438', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10398', '14431', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9635', '13042', '0', '0', '8', '0', '12523', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6443', '7636', '0', '0', '7', '0', '171', '300', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4519', '564', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4527', '1218', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4472', '4893', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4473', '4893', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4473', '5000', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4506', '4987', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4621', '4993', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4549', '5000', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9864', '13662', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9864', '13661', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4010', '4866', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4648', '5004', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '410', '4797', '0', '0', '15', '0', '1527', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '656', '4984', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4091', '4991', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4091', '4992', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4575', '4795', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4659', '4837', '0', '0', '15', '0', '1527', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4512', '638', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4512', '4793', '0', '0', '15', '0', '1527', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4526', '4973', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4526', '1218', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4525', '4973', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4525', '1218', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4511', '4985', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4511', '1040', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4466', '4434', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '2304', '3975', '0', '0', '15', '0', '1533', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '64', '565', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4522', '4441', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4484', '539', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4008', '4993', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3644', '4441', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '141', '4793', '0', '0', '15', '0', '1527', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4009', '4316', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4466', '4433', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4485', '538', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '1522', '5722', '0', '0', '15', '0', '1279', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '12670', '12549', '0', '0', '15', '0', '1279', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4540', '581', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4541', '581', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4542', '581', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4541', '4796', '0', '0', '15', '0', '1527', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4542', '4796', '0', '0', '15', '0', '1527', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4547', '4984', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4548', '1219', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4547', '1219', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4570', '5724', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4578', '5725', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4007', '5000', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7370', '9040', '0', '0', '9', '0', '9663', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7399', '9038', '0', '0', '9', '0', '9663', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7434', '9039', '0', '0', '9', '0', '9663', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7430', '8992', '0', '0', '8', '0', '9544', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9007', '12168', '0', '0', '9', '0', '11460', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3921', '4775', '0', '0', '15', '0', '511', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4509', '4985', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7377', '8829', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4653', '1219', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4544', '4442', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4553', '560', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '11361', '7116', '0', '0', '8', '0', '7721', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4862', '5938', '0', '0', '5', '0', '349', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4861', '5933', '0', '0', '5', '0', '349', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4861', '5934', '0', '0', '5', '0', '349', '4', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7357', '8785', '0', '0', '15', '0', '1471', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '5123', '5005', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4516', '5006', '0', '0', '15', '0', '1471', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4561', '4833', '0', '0', '15', '0', '1527', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4505', '5722', '0', '0', '15', '0', '1279', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4609', '5719', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4505', '5693', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4559', '4437', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4503', '5693', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '5381', '6573', '0', '0', '8', '0', '6622', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8522', '7026', '0', '0', '7', '0', '129', '300', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '2384', '2193', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '2801', '3495', '0', '0', '8', '0', '385', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '648', '1210', '0', '0', '7', '0', '165', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '1632', '2289', '0', '0', '14', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '645', '6959', '0', '0', '7', '0', '356', '200', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '646', '7017', '0', '0', '7', '0', '185', '200', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '660', '1225', '0', '0', '7', '0', '186', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3043', '3755', '0', '0', '14', '0', '5122', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3043', '3757', '0', '0', '8', '0', '5122', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4647', '4998', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4558', '4436', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4651', '565', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4651', '564', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4603', '5723', '0', '0', '15', '0', '1279', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4567', '5723', '0', '0', '15', '0', '1279', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4556', '3974', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7376', '8826', '0', '0', '8', '0', '9451', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7376', '8827', '0', '0', '8', '0', '9450', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7431', '8993', '0', '0', '8', '0', '9544', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7432', '8994', '0', '0', '8', '0', '9544', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7433', '8996', '0', '0', '8', '0', '9544', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7435', '9003', '0', '0', '8', '0', '9843', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7592', '9283', '0', '0', '8', '0', '9854', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7719', '9427', '0', '0', '8', '0', '9991', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7891', '9659', '0', '0', '8', '0', '10111', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8048', '9960', '0', '0', '8', '0', '10265', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8236', '10246', '0', '0', '8', '0', '9794', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8493', '10655', '0', '0', '8', '0', '10870', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8493', '10854', '0', '0', '8', '0', '11012', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8642', '10995', '0', '0', '8', '0', '11062', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8679', '11028', '0', '0', '5', '0', '1038', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8680', '11021', '0', '0', '8', '0', '11079', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8681', '10927', '0', '0', '8', '0', '11059', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8985', '12130', '0', '0', '8', '0', '11422', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9133', '12350', '0', '0', '8', '0', '11571', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9137', '12361', '0', '0', '8', '0', '11571', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9138', '12363', '0', '0', '8', '0', '11571', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '64', '564', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9685', '13135', '0', '0', '8', '0', '11571', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7956', '9774', '0', '0', '4', '0', '490', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4523', '4440', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4531', '4437', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4535', '562', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4534', '563', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4662', '3976', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4557', '3975', '0', '0', '15', '0', '1533', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4534', '562', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4556', '3975', '0', '0', '15', '0', '1533', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4610', '5719', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4566', '5722', '0', '0', '15', '0', '1279', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4513', '4793', '0', '0', '15', '0', '1527', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4546', '1219', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4474', '4893', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4604', '5723', '0', '0', '15', '0', '1279', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4524', '4998', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4549', '4999', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4581', '1218', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4579', '5725', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4645', '1218', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4581', '5725', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4649', '1216', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4645', '4973', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '381', '4799', '0', '0', '15', '0', '1527', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '381', '4795', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4513', '638', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4577', '4795', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4502', '4837', '0', '0', '15', '0', '1527', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4502', '4835', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '411', '908', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '410', '4795', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3183', '4040', '0', '0', '8', '0', '5237', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4023', '4997', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4023', '4996', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '2179', '2933', '0', '0', '8', '0', '4321', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6445', '7640', '0', '0', '8', '0', '8227', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '1522', '2193', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8098', '10011', '0', '0', '5', '0', '911', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9578', '12926', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4503', '5722', '0', '0', '15', '0', '1279', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4518', '564', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '436', '4793', '0', '0', '15', '0', '1527', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10990', '15282', '0', '0', '1', '0', '71450', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3984', '4839', '0', '0', '15', '0', '1527', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4012', '4998', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4101', '5001', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4467', '4433', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4011', '4998', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4011', '4997', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4649', '5721', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8118', '10055', '0', '0', '8', '0', '10335', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8119', '10057', '0', '0', '8', '0', '10336', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '1822', '2474', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4537', '563', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4552', '561', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4552', '560', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4543', '4437', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4543', '4442', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4539', '563', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4539', '562', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '523', '4985', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '85', '581', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7953', '10109', '0', '0', '8', '0', '10162', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6542', '7749', '0', '0', '1', '0', '24746', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6543', '7776', '0', '0', '1', '0', '24746', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6543', '7775', '0', '0', '1', '0', '24748', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6543', '68', '0', '0', '1', '0', '24782', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6540', '7744', '0', '0', '1', '0', '24746', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6542', '7773', '0', '0', '1', '0', '24748', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8508', '10640', '0', '0', '8', '0', '10771', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9615', '13001', '0', '0', '8', '0', '11989', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9627', '13024', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6182', '11482', '0', '0', '4', '0', '3519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4515', '5007', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6581', '11220', '0', '0', '4', '0', '3519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6581', '7796', '0', '0', '4', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7095', '8348', '0', '0', '4', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7253', '8571', '0', '0', '8', '0', '9277', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7160', '8494', '0', '0', '8', '0', '9212', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7153', '8426', '0', '0', '8', '0', '9140', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7162', '8432', '0', '0', '8', '0', '9152', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7158', '8428', '0', '0', '9', '0', '9145', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7163', '8440', '0', '0', '8', '0', '9163', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7207', '8490', '0', '0', '8', '0', '9192', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7194', '8475', '0', '0', '8', '0', '9207', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6573', '7821', '0', '0', '8', '0', '8350', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6570', '7869', '0', '0', '8', '0', '8335', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '1053', '1654', '0', '0', '9', '0', '2936', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8718', '10978', '0', '0', '5', '0', '1031', '5', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8082', '9990', '0', '0', '9', '0', '10652', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8072', '9978', '0', '0', '8', '0', '10279', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7967', '10027', '0', '0', '9', '0', '10129', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8064', '14639', '0', '0', '12', '0', '41', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7921', '14635', '0', '0', '12', '0', '41', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7926', '14643', '0', '0', '12', '0', '41', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7927', '14645', '0', '0', '12', '0', '41', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7935', '14644', '0', '0', '12', '0', '41', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10250', '14641', '0', '0', '12', '0', '41', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7925', '14642', '0', '0', '12', '0', '41', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7922', '14636', '0', '0', '12', '0', '41', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7931', '14638', '0', '0', '12', '0', '41', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7923', '14637', '0', '0', '12', '0', '41', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '5749', '6929', '0', '0', '7', '0', '202', '1', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '5749', '6932', '0', '0', '25', '0', '22704', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3062', '3795', '0', '0', '8', '0', '826', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9754', '13397', '0', '0', '8', '0', '12716', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9562', '12882', '0', '0', '8', '0', '12311', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8036', '10045', '0', '0', '2', '0', '29366', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8116', '10045', '0', '0', '2', '0', '29411', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8113', '10045', '0', '0', '2', '0', '29396', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8115', '10045', '0', '0', '2', '0', '29397', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4005', '4869', '0', '0', '5', '0', '68', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3185', '3942', '0', '0', '5', '0', '69', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3186', '3945', '0', '0', '5', '0', '54', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4486', '538', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4507', '4783', '0', '0', '15', '0', '511', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3923', '4781', '0', '0', '15', '0', '511', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '643', '1203', '0', '0', '7', '0', '182', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '1041', '1123', '0', '0', '25', '0', '9787', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4677', '3974', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4664', '3976', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4663', '3976', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4604', '2193', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4603', '2193', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4567', '2193', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3926', '4785', '0', '0', '15', '0', '511', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4821', '5874', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4747', '7017', '0', '0', '7', '0', '185', '225', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6799', '8121', '0', '0', '7', '0', '197', '280', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6799', '8122', '0', '0', '7', '0', '197', '280', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6182', '7336', '0', '0', '4', '0', '215', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4001', '4855', '0', '0', '5', '0', '47', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7434', '8997', '0', '0', '8', '0', '9544', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7429', '8991', '0', '0', '8', '0', '9544', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7428', '8990', '0', '0', '8', '0', '9544', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4823', '5878', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4660', '538', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4660', '539', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4661', '538', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4661', '539', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4685', '558', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4685', '559', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4686', '560', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4686', '561', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6648', '9190', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6648', '9191', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7264', '8589', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7264', '8590', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7366', '8799', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7366', '8800', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9580', '12929', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9580', '12930', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9990', '13845', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9990', '13846', '0', '0', '15', '0', '1407', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4641', '5715', '0', '0', '15', '0', '1279', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4642', '5714', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4642', '5715', '0', '0', '15', '0', '1279', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4643', '5714', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4643', '5715', '0', '0', '15', '0', '1279', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4655', '5719', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4655', '5720', '0', '0', '15', '0', '1279', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4656', '5719', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4656', '5720', '0', '0', '15', '0', '1279', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4667', '2193', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4667', '5722', '0', '0', '15', '0', '1279', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4681', '2193', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4681', '5723', '0', '0', '15', '0', '1279', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4682', '2193', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4682', '5722', '0', '0', '15', '0', '1279', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6628', '7882', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6628', '7903', '0', '0', '15', '0', '1279', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7437', '9006', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7437', '7903', '0', '0', '15', '0', '1279', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7566', '9184', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7566', '9185', '0', '0', '15', '0', '1279', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4678', '3974', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4678', '3975', '0', '0', '15', '0', '1533', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6647', '9193', '0', '0', '15', '0', '1533', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7260', '8582', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7260', '8584', '0', '0', '15', '0', '1533', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8111', '10040', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8111', '10041', '0', '0', '15', '0', '1533', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4606', '5717', '0', '0', '15', '0', '511', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4607', '5716', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4607', '5717', '0', '0', '15', '0', '511', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4644', '5716', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4644', '5717', '0', '0', '15', '0', '511', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4687', '4784', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4687', '4783', '0', '0', '15', '0', '511', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4688', '4784', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4688', '4783', '0', '0', '15', '0', '511', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7567', '9195', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7567', '9194', '0', '0', '15', '0', '511', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4683', '5724', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4684', '1215', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4684', '5724', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4696', '1218', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4696', '5725', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4697', '1218', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4697', '5725', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7263', '8587', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7263', '8588', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4510', '4986', '0', '0', '15', '0', '1534', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6647', '7904', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4572', '4437', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4573', '4438', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4573', '4437', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4574', '4438', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4574', '4437', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4665', '4433', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4665', '4434', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4666', '4433', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4666', '4434', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4679', '4436', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4679', '4437', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4680', '4436', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4680', '4435', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4691', '4438', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4691', '4437', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4692', '4438', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4692', '4437', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4801', '4438', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4801', '4437', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6649', '9007', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6649', '9186', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7265', '8591', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7265', '8592', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7349', '8591', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7349', '8768', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7438', '9007', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7438', '9186', '0', '0', '15', '0', '1519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '12670', '17816', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3923', '4780', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9134', '12354', '0', '0', '14', '0', '11571', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10212', '9902', '0', '0', '4', '0', '3523', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8268', '10292', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8260', '10282', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9731', '13324', '0', '0', '8', '0', '12238', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4690', '4796', '0', '0', '15', '0', '1527', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '5061', '4835', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '5061', '4837', '0', '0', '15', '0', '1527', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6650', '9187', '0', '0', '15', '0', '1527', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6650', '9188', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '50199', '1124', '0', '0', '8', '0', '2458', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4674', '4999', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4674', '5000', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4675', '4999', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4675', '5000', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4693', '4993', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4693', '6160', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4694', '4993', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4694', '6160', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4695', '4863', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4695', '4993', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6652', '9189', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6652', '9190', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7262', '8585', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7262', '8586', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7368', '8804', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7368', '8823', '0', '0', '15', '0', '1531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7579', '9221', '0', '0', '8', '0', '208', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7579', '9257', '0', '0', '8', '0', '9852', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7592', '9284', '0', '0', '8', '0', '9856', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7607', '9286', '0', '0', '8', '0', '9859', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7579', '9256', '0', '0', '8', '0', '9851', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7704', '9425', '0', '0', '8', '0', '9978', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7467', '8785', '0', '0', '15', '0', '1471', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7522', '9122', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7522', '8785', '0', '0', '15', '0', '1471', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '2703', '3377', '0', '0', '8', '0', '975', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4510', '4987', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7531', '9136', '0', '0', '9', '0', '9756', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10464', '14492', '0', '0', '1', '0', '64805', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10465', '14492', '0', '0', '1', '0', '64808', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10466', '14492', '0', '0', '1', '0', '64809', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10467', '14492', '0', '0', '1', '0', '64810', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10471', '14492', '0', '0', '1', '0', '64814', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10468', '14489', '0', '0', '1', '0', '64811', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10469', '14489', '0', '0', '1', '0', '64812', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10470', '14489', '0', '0', '1', '0', '64813', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10472', '14489', '0', '0', '1', '0', '64815', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10473', '14489', '0', '0', '1', '0', '64816', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7403', '8880', '0', '0', '8', '0', '9527', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7399', '8892', '0', '0', '8', '0', '9506', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7400', '8868', '0', '0', '8', '0', '9506', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7398', '8893', '0', '0', '8', '0', '9506', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7400', '8892', '0', '0', '8', '0', '9506', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7465', '9076', '0', '0', '8', '0', '9700', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10453', '14489', '0', '0', '1', '0', '64805', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10454', '14489', '0', '0', '1', '0', '64808', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10455', '14489', '0', '0', '1', '0', '64809', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10456', '14489', '0', '0', '1', '0', '64810', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10457', '14489', '0', '0', '1', '0', '64811', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10458', '14489', '0', '0', '1', '0', '64812', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10459', '14489', '0', '0', '1', '0', '64813', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10460', '14489', '0', '0', '1', '0', '64814', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10462', '14489', '0', '0', '1', '0', '64816', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10461', '14489', '0', '0', '1', '0', '64815', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8678', '10918', '0', '0', '8', '0', '11061', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3161', '3893', '0', '0', '16', '0', '688', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4004', '4859', '0', '0', '16', '0', '1100', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9709', '13271', '0', '0', '1', '0', '61438', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10400', '14436', '0', '0', '1', '0', '62853', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4006', '4862', '0', '0', '16', '0', '658', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7353', '8776', '0', '0', '8', '0', '9305', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8213', '10208', '0', '0', '16', '0', '77', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3481', '4953', '0', '0', '8', '0', '5536', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3162', '3896', '0', '0', '16', '0', '562', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '5749', '6930', '0', '0', '25', '0', '22704', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6542', '7772', '0', '0', '1', '0', '24748', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10402', '14438', '0', '0', '1', '0', '62853', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10398', '14431', '0', '0', '1', '0', '62853', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '11361', '7116', '0', '0', '8', '0', '7003', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8098', '10011', '0', '0', '16', '0', '178', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6542', '7773', '0', '0', '1', '0', '24746', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7207', '8490', '0', '0', '8', '0', '9199', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6573', '7821', '0', '0', '8', '0', '9704', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4005', '4869', '0', '0', '16', '0', '674', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3185', '3942', '0', '0', '16', '0', '1093', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3186', '3945', '0', '0', '16', '0', '1037', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6799', '8121', '0', '0', '25', '0', '26086', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '6799', '8122', '0', '0', '25', '0', '26086', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4001', '4855', '0', '0', '16', '0', '1097', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7531', '9136', '0', '0', '1', '0', '31609', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7403', '8880', '0', '0', '8', '0', '9528', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7399', '8892', '0', '0', '8', '0', '9537', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7398', '8893', '0', '0', '8', '0', '9537', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7400', '8892', '0', '0', '8', '0', '9537', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '31111', '0', '0', '0', '2', '0', '43489', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9739', '0', '0', '0', '9', '0', '12687', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3441', '0', '0', '0', '2', '0', '12846', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8162', '0', '0', '0', '9', '0', '10368', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8161', '0', '0', '0', '9', '0', '10368', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8163', '0', '0', '0', '9', '0', '10368', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10210', '2', '0', '0', '25', '0', '60867', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2187', '0', '0', '0', '9', '0', '4296', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '21', '2', '0', '0', '9', '0', '6981', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6001', '0', '0', '0', '8', '0', '7761', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6443', '0', '0', '0', '7', '0', '171', '300', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8703', '0', '0', '0', '9', '0', '11058', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8660', '0', '0', '0', '2', '0', '32620', '10', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8672', '1', '0', '0', '2', '0', '32569', '50', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8671', '1', '0', '0', '2', '0', '32569', '35', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8687', '0', '0', '0', '2', '0', '32720', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8689', '0', '0', '0', '2', '0', '32569', '35', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8685', '0', '0', '0', '2', '0', '32569', '35', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10028', '1', '0', '0', '9', '0', '13168', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10667', '0', '0', '0', '7', '0', '202', '350', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8894', '0', '0', '0', '9', '0', '11229', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7771', '1', '0', '0', '9', '0', '10040', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7757', '0', '0', '0', '1', '0', '32756', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7759', '0', '0', '0', '1', '0', '32756', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7760', '0', '0', '0', '1', '0', '32756', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7772', '1', '0', '0', '9', '0', '10041', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6763', '0', '0', '0', '2', '0', '21211', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '922', '3', '0', '0', '8', '0', '2662', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1291', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1293', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1296', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1297', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1581', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2890', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3421', '0', '0', '0', '2', '0', '12846', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4554', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '410', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4518', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4517', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4471', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4822', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4826', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9784', '1', '0', '0', '28', '0', '12770', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7596', '0', '0', '0', '8', '0', '10211', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9245', '2', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9472', '0', '0', '0', '8', '0', '11733', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9574', '1', '0', '0', '2', '0', '37815', '1', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9691', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9692', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9693', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9733', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9765', '0', '0', '0', '9', '0', '12733', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9795', '0', '0', '0', '9', '0', '12801', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9868', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10025', '1', '0', '0', '9', '0', '13418', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10179', '0', '0', '0', '8', '0', '12499', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10026', '1', '0', '0', '9', '0', '13419', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10026', '2', '0', '0', '8', '0', '13419', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8523', '0', '0', '0', '9', '0', '10819', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4004', '0', '0', '0', '5', '0', '72', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9218', '0', '0', '0', '9', '0', '11794', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9217', '0', '0', '0', '9', '0', '11794', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9219', '0', '0', '0', '9', '0', '11794', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9130', '1', '0', '0', '8', '0', '11559', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9761', '1', '0', '0', '9', '0', '11582', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9262', '1', '0', '0', '9', '0', '11957', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9262', '2', '0', '0', '9', '0', '11967', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9190', '0', '0', '0', '9', '0', '11795', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9545', '0', '0', '0', '9', '0', '12291', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9541', '0', '0', '0', '9', '0', '12291', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9543', '0', '0', '0', '9', '0', '12291', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9544', '0', '0', '0', '9', '0', '12291', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9542', '1', '0', '0', '9', '0', '12291', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9537', '1', '0', '0', '9', '0', '12263', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8954', '1', '0', '0', '9', '0', '11390', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8954', '2', '0', '0', '9', '0', '11391', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8886', '1', '0', '0', '2', '0', '33336', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8918', '1', '0', '0', '9', '0', '11325', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9618', '0', '0', '0', '9', '0', '11291', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9007', '0', '0', '0', '2', '0', '34102', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3862', '0', '0', '0', '9', '0', '6001', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3862', '1', '0', '0', '9', '0', '6002', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9785', '1', '0', '0', '28', '0', '12763', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9709', '4', '0', '0', '9', '0', '12669', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9709', '3', '0', '0', '9', '0', '12661', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9709', '2', '0', '0', '9', '0', '12649', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9709', '1', '0', '0', '9', '0', '12648', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9709', '0', '0', '0', '9', '0', '12630', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9852', '1', '0', '0', '9', '0', '12919', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9852', '2', '0', '0', '9', '0', '12919', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9852', '3', '0', '0', '9', '0', '12919', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9855', '0', '0', '0', '9', '0', '12919', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9860', '0', '0', '0', '9', '0', '12919', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10656', '0', '0', '0', '7', '0', '202', '350', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4519', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9731', '1', '0', '0', '8', '0', '12664', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9731', '2', '0', '0', '8', '0', '12673', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9731', '3', '0', '0', '8', '0', '12686', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9731', '4', '0', '0', '8', '0', '12690', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9731', '5', '0', '0', '8', '0', '12710', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9731', '6', '0', '0', '9', '0', '12713', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9715', '1', '0', '0', '9', '0', '12647', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9687', '1', '0', '0', '9', '0', '12665', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9798', '0', '0', '0', '8', '0', '12212', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9492', '0', '0', '0', '9', '0', '12227', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9512', '0', '0', '0', '9', '0', '12255', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9512', '1', '0', '0', '9', '0', '12259', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10478', '0', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9741', '1', '0', '0', '9', '0', '12533', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9741', '2', '0', '0', '9', '0', '12531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9741', '3', '0', '0', '9', '0', '12529', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9741', '4', '0', '0', '9', '0', '12536', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9742', '1', '0', '0', '9', '0', '12571', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9742', '2', '0', '0', '9', '0', '12573', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9677', '1', '0', '0', '9', '0', '12540', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9742', '3', '0', '0', '9', '0', '12574', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9742', '4', '0', '0', '9', '0', '12578', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9742', '5', '0', '0', '9', '0', '12579', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9742', '6', '0', '0', '9', '0', '12580', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9991', '0', '0', '0', '9', '0', '13073', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10215', '1', '0', '0', '9', '0', '13074', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10040', '1', '0', '0', '9', '0', '13231', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10040', '2', '0', '0', '9', '0', '13232', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10005', '0', '0', '0', '9', '0', '13121', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9869', '0', '0', '0', '9', '0', '12955', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9878', '0', '0', '0', '9', '0', '12955', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9870', '0', '0', '0', '9', '0', '12955', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9875', '0', '0', '0', '9', '0', '12955', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10226', '1', '0', '0', '9', '0', '13395', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10028', '2', '0', '0', '9', '0', '13171', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10028', '3', '0', '0', '9', '0', '13169', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10028', '4', '0', '0', '9', '0', '13170', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10110', '1', '0', '0', '9', '0', '13172', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10110', '2', '0', '0', '9', '0', '13174', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10111', '0', '0', '0', '9', '0', '13145', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10111', '2', '0', '0', '9', '0', '13146', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10111', '3', '0', '0', '9', '0', '13147', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10402', '0', '0', '0', '1', '0', '62853', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10402', '1', '0', '0', '1', '0', '62853', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10400', '0', '0', '0', '1', '0', '62853', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10400', '1', '0', '0', '1', '0', '62853', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10398', '0', '0', '0', '1', '0', '62853', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10398', '1', '0', '0', '1', '0', '62853', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10211', '0', '0', '0', '9', '0', '12828', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9917', '1', '0', '0', '9', '0', '13060', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9917', '2', '0', '0', '9', '0', '12862', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9874', '0', '0', '0', '9', '0', '12969', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9865', '0', '0', '0', '9', '0', '12971', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9865', '1', '0', '0', '9', '0', '13423', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9900', '1', '0', '0', '9', '0', '13010', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9899', '0', '0', '0', '9', '0', '13010', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4641', '0', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4567', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4603', '0', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10025', '2', '0', '0', '8', '0', '13418', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10996', '1', '0', '0', '15', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '11100', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '11101', '0', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '11102', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '11104', '0', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '11097', '0', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '11099', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '11095', '0', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '11098', '0', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '11103', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10723', '1', '0', '0', '27', '0', '80', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8851', '0', '0', '0', '9', '0', '11133', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5743', '0', '0', '0', '9', '0', '7482', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10212', '0', '0', '0', '4', '0', '3523', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10212', '1', '0', '0', '2', '0', '44738', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50014', '0', '0', '0', '9', '0', '24873', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50014', '1', '0', '0', '9', '0', '24878', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10340', '0', '0', '0', '9', '0', '13679', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '0', '0', '0', '9', '0', '13699', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '1', '0', '0', '9', '0', '13725', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10340', '2', '0', '0', '9', '0', '13680', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '2', '0', '0', '9', '0', '13727', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '3', '0', '0', '9', '0', '13731', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '4', '0', '0', '9', '0', '13713', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '5', '0', '0', '9', '0', '13724', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '6', '0', '0', '9', '0', '13723', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '7', '0', '0', '9', '0', '13729', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '8', '0', '0', '9', '0', '13728', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '9', '0', '0', '9', '0', '13726', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10383', '0', '0', '0', '9', '0', '13664', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6917', '1', '0', '0', '9', '0', '8868', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6918', '0', '0', '0', '2', '0', '21711', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9935', '1', '0', '0', '14', '0', '13029', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9935', '2', '0', '0', '14', '0', '13012', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9964', '1', '0', '0', '14', '0', '13025', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9964', '2', '0', '0', '14', '0', '13030', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9964', '3', '0', '0', '14', '0', '13023', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9964', '4', '0', '0', '14', '0', '13027', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6866', '1', '0', '0', '14', '0', '8713', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6822', '1', '0', '0', '14', '0', '8718', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6822', '2', '0', '0', '14', '0', '8720', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6835', '1', '0', '0', '14', '0', '8654', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6835', '2', '0', '0', '14', '0', '8681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6880', '1', '0', '0', '14', '0', '8715', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6880', '2', '0', '0', '14', '0', '8866', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6880', '3', '0', '0', '14', '0', '8646', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6880', '4', '0', '0', '14', '0', '8720', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6880', '5', '0', '0', '14', '0', '8721', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6814', '1', '0', '0', '14', '0', '8686', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6814', '2', '0', '0', '14', '0', '8717', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6814', '3', '0', '0', '14', '0', '8678', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6814', '4', '0', '0', '14', '0', '8680', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9941', '1', '0', '0', '14', '0', '13029', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9941', '2', '0', '0', '14', '0', '13024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9941', '3', '0', '0', '14', '0', '13018', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9941', '4', '0', '0', '14', '0', '13014', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6888', '1', '0', '0', '14', '0', '8723', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6888', '2', '0', '0', '14', '0', '8672', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6841', '1', '0', '0', '14', '0', '8718', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6841', '2', '0', '0', '14', '0', '8646', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6841', '3', '0', '0', '14', '0', '8653', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6841', '4', '0', '0', '14', '0', '8651', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9959', '1', '0', '0', '14', '0', '13017', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9959', '2', '0', '0', '14', '0', '13025', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9959', '3', '0', '0', '14', '0', '13030', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6832', '1', '0', '0', '14', '0', '8677', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6832', '2', '0', '0', '14', '0', '8652', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6832', '3', '0', '0', '14', '0', '8651', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6832', '4', '0', '0', '14', '0', '8714', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6832', '5', '0', '0', '14', '0', '8678', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6899', '1', '0', '0', '14', '0', '8648', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6899', '2', '0', '0', '14', '0', '8651', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6899', '3', '0', '0', '14', '0', '8678', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6899', '4', '0', '0', '14', '0', '8670', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6899', '5', '0', '0', '14', '0', '8680', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6864', '1', '0', '0', '14', '0', '8636', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6831', '1', '0', '0', '14', '0', '8671', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6831', '2', '0', '0', '14', '0', '8682', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6831', '3', '0', '0', '14', '0', '8681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6831', '4', '0', '0', '14', '0', '8676', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9975', '1', '0', '0', '14', '0', '13066', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9975', '2', '0', '0', '14', '0', '13020', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9975', '3', '0', '0', '14', '0', '13032', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9975', '4', '0', '0', '14', '0', '13028', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6853', '1', '0', '0', '14', '0', '8650', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6853', '2', '0', '0', '14', '0', '8688', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6823', '1', '0', '0', '14', '0', '8866', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6823', '2', '0', '0', '14', '0', '8651', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6823', '3', '0', '0', '14', '0', '8642', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6816', '1', '0', '0', '14', '0', '8648', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6816', '2', '0', '0', '14', '0', '8722', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6816', '3', '0', '0', '14', '0', '8714', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6816', '4', '0', '0', '14', '0', '8645', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6816', '5', '0', '0', '14', '0', '8650', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9980', '1', '0', '0', '14', '0', '13065', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9980', '2', '0', '0', '14', '0', '13020', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9980', '3', '0', '0', '14', '0', '13015', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9980', '4', '0', '0', '14', '0', '13023', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9980', '5', '0', '0', '14', '0', '13027', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9980', '6', '0', '0', '14', '0', '13066', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9980', '7', '0', '0', '14', '0', '13019', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6905', '1', '0', '0', '14', '0', '8685', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6905', '2', '0', '0', '14', '0', '8724', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6905', '3', '0', '0', '14', '0', '8635', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6833', '1', '0', '0', '14', '0', '8718', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6833', '2', '0', '0', '14', '0', '8866', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6833', '3', '0', '0', '14', '0', '8636', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6833', '4', '0', '0', '14', '0', '8649', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6818', '1', '0', '0', '14', '0', '8673', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6818', '2', '0', '0', '14', '0', '8717', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6818', '3', '0', '0', '14', '0', '8724', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6818', '4', '0', '0', '14', '0', '8670', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6818', '5', '0', '0', '14', '0', '8680', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6848', '1', '0', '0', '14', '0', '8714', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9937', '1', '0', '0', '14', '0', '13033', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9937', '2', '0', '0', '14', '0', '13016', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9937', '3', '0', '0', '14', '0', '13012', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6861', '1', '0', '0', '14', '0', '8866', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6861', '2', '0', '0', '14', '0', '8653', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6861', '3', '0', '0', '14', '0', '8619', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6861', '4', '0', '0', '14', '0', '8642', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6861', '5', '0', '0', '14', '0', '8644', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9955', '1', '0', '0', '14', '0', '13067', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9955', '2', '0', '0', '14', '0', '13025', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9955', '3', '0', '0', '14', '0', '13030', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9966', '1', '0', '0', '14', '0', '13065', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9966', '2', '0', '0', '14', '0', '13027', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9966', '3', '0', '0', '14', '0', '13022', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9966', '4', '0', '0', '14', '0', '13028', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9963', '1', '0', '0', '14', '0', '13017', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9963', '2', '0', '0', '14', '0', '13067', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9963', '3', '0', '0', '14', '0', '13031', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9963', '4', '0', '0', '14', '0', '13013', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9963', '5', '0', '0', '14', '0', '13023', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6919', '1', '0', '0', '14', '0', '8652', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6919', '2', '0', '0', '14', '0', '8714', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6919', '3', '0', '0', '14', '0', '8650', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6919', '4', '0', '0', '14', '0', '8688', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6903', '1', '0', '0', '14', '0', '8679', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6903', '2', '0', '0', '14', '0', '8724', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6903', '3', '0', '0', '14', '0', '8635', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6849', '1', '0', '0', '14', '0', '8648', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6849', '2', '0', '0', '14', '0', '8652', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6849', '3', '0', '0', '14', '0', '8643', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6849', '4', '0', '0', '14', '0', '8722', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6849', '5', '0', '0', '14', '0', '8645', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6849', '6', '0', '0', '14', '0', '8650', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6849', '7', '0', '0', '14', '0', '8688', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6817', '1', '0', '0', '14', '0', '8673', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6817', '2', '0', '0', '14', '0', '8686', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6817', '3', '0', '0', '14', '0', '8724', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6817', '4', '0', '0', '14', '0', '8670', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6817', '5', '0', '0', '14', '0', '8680', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6855', '1', '0', '0', '14', '0', '8651', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6830', '1', '0', '0', '14', '0', '8679', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6830', '2', '0', '0', '14', '0', '8686', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6830', '3', '0', '0', '14', '0', '8685', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6830', '4', '0', '0', '14', '0', '8717', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6830', '5', '0', '0', '14', '0', '8682', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6830', '6', '0', '0', '14', '0', '8680', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9954', '1', '0', '0', '14', '0', '13022', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9954', '2', '0', '0', '14', '0', '13019', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9954', '3', '0', '0', '14', '0', '13031', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9954', '4', '0', '0', '14', '0', '13029', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9954', '5', '0', '0', '14', '0', '13030', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9978', '1', '0', '0', '14', '0', '13065', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9978', '2', '0', '0', '14', '0', '13020', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9978', '3', '0', '0', '14', '0', '13015', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9978', '4', '0', '0', '14', '0', '13023', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9978', '5', '0', '0', '14', '0', '13028', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9978', '6', '0', '0', '14', '0', '13066', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6887', '1', '0', '0', '14', '0', '8726', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6887', '2', '0', '0', '14', '0', '8725', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6887', '3', '0', '0', '14', '0', '8720', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6887', '4', '0', '0', '14', '0', '8721', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6887', '5', '0', '0', '14', '0', '8672', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9938', '1', '0', '0', '14', '0', '13021', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9938', '2', '0', '0', '14', '0', '13033', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9938', '3', '0', '0', '14', '0', '13012', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9948', '1', '0', '0', '14', '0', '13015', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9948', '2', '0', '0', '14', '0', '13020', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9948', '3', '0', '0', '14', '0', '13028', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9948', '4', '0', '0', '14', '0', '13066', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6819', '1', '0', '0', '14', '0', '8652', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6819', '2', '0', '0', '14', '0', '8643', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6819', '3', '0', '0', '14', '0', '8714', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9971', '1', '0', '0', '14', '0', '13020', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9971', '2', '0', '0', '14', '0', '13032', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9971', '3', '0', '0', '14', '0', '13066', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9939', '1', '0', '0', '14', '0', '13033', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9939', '2', '0', '0', '14', '0', '13012', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9939', '3', '0', '0', '14', '0', '13026', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6916', '1', '0', '0', '14', '0', '8719', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6916', '2', '0', '0', '14', '0', '8681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6911', '1', '0', '0', '14', '0', '8684', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6911', '2', '0', '0', '14', '0', '8682', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6911', '3', '0', '0', '14', '0', '8681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6911', '4', '0', '0', '14', '0', '8676', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6827', '1', '0', '0', '14', '0', '8723', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6827', '2', '0', '0', '14', '0', '8720', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6827', '3', '0', '0', '14', '0', '8721', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6827', '4', '0', '0', '14', '0', '8672', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6872', '1', '0', '0', '14', '0', '8683', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6872', '2', '0', '0', '14', '0', '8646', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6872', '3', '0', '0', '14', '0', '8649', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6872', '4', '0', '0', '14', '0', '8674', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6815', '1', '0', '0', '14', '0', '8677', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6815', '2', '0', '0', '14', '0', '8686', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6815', '3', '0', '0', '14', '0', '8717', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6815', '4', '0', '0', '14', '0', '8680', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9946', '1', '0', '0', '14', '0', '13024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9946', '2', '0', '0', '14', '0', '13026', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9946', '3', '0', '0', '14', '0', '13033', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9931', '1', '0', '0', '14', '0', '13033', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9931', '2', '0', '0', '14', '0', '13029', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9931', '3', '0', '0', '14', '0', '13021', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9931', '4', '0', '0', '14', '0', '13016', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6856', '1', '0', '0', '14', '0', '8653', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6856', '2', '0', '0', '14', '0', '8651', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6825', '1', '0', '0', '14', '0', '8713', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6825', '2', '0', '0', '14', '0', '8649', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6825', '3', '0', '0', '14', '0', '8674', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6889', '1', '0', '0', '14', '0', '8715', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6889', '2', '0', '0', '14', '0', '8718', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6889', '3', '0', '0', '14', '0', '8723', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6889', '4', '0', '0', '14', '0', '8725', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6820', '1', '0', '0', '14', '0', '8684', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6820', '2', '0', '0', '14', '0', '8724', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6820', '3', '0', '0', '14', '0', '8671', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6820', '4', '0', '0', '14', '0', '8676', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9950', '1', '0', '0', '14', '0', '13014', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9950', '2', '0', '0', '14', '0', '13019', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9950', '3', '0', '0', '14', '0', '13022', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9950', '4', '0', '0', '14', '0', '13030', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6834', '1', '0', '0', '14', '0', '8652', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6834', '2', '0', '0', '14', '0', '8727', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6834', '3', '0', '0', '14', '0', '8722', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6834', '4', '0', '0', '14', '0', '8714', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6834', '5', '0', '0', '14', '0', '8688', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6906', '1', '0', '0', '14', '0', '8679', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6906', '2', '0', '0', '14', '0', '8685', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6921', '1', '0', '0', '14', '0', '8713', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6921', '2', '0', '0', '14', '0', '8674', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6874', '1', '0', '0', '14', '0', '8647', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6874', '2', '0', '0', '14', '0', '8716', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6874', '3', '0', '0', '14', '0', '8675', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6874', '4', '0', '0', '14', '0', '8649', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6874', '5', '0', '0', '14', '0', '8674', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6826', '1', '0', '0', '14', '0', '8718', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6826', '2', '0', '0', '14', '0', '8723', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6826', '3', '0', '0', '14', '0', '8725', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9977', '1', '0', '0', '14', '0', '13015', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9977', '2', '0', '0', '14', '0', '13066', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9977', '3', '0', '0', '14', '0', '13032', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9977', '4', '0', '0', '14', '0', '13028', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9977', '5', '0', '0', '14', '0', '13027', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9977', '6', '0', '0', '14', '0', '13065', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6824', '1', '0', '0', '14', '0', '8651', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6885', '1', '0', '0', '14', '0', '8726', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6885', '2', '0', '0', '14', '0', '8723', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6885', '3', '0', '0', '14', '0', '8725', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6821', '1', '0', '0', '14', '0', '8646', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6821', '2', '0', '0', '14', '0', '8636', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6821', '3', '0', '0', '14', '0', '8675', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6821', '4', '0', '0', '14', '0', '8713', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9968', '1', '0', '0', '14', '0', '13025', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9968', '2', '0', '0', '14', '0', '13065', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9968', '3', '0', '0', '14', '0', '13031', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9968', '4', '0', '0', '14', '0', '13013', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9968', '5', '0', '0', '14', '0', '13023', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9968', '6', '0', '0', '14', '0', '13028', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9968', '7', '0', '0', '14', '0', '13032', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9953', '1', '0', '0', '14', '0', '13022', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9953', '2', '0', '0', '14', '0', '13014', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9953', '3', '0', '0', '14', '0', '13031', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9953', '4', '0', '0', '14', '0', '13030', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6914', '1', '0', '0', '14', '0', '8719', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6914', '2', '0', '0', '14', '0', '8684', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6914', '3', '0', '0', '14', '0', '8654', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6914', '4', '0', '0', '14', '0', '8671', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6914', '5', '0', '0', '14', '0', '8676', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9945', '1', '0', '0', '14', '0', '13018', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9945', '2', '0', '0', '14', '0', '13026', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9945', '3', '0', '0', '14', '0', '13033', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9945', '4', '0', '0', '14', '0', '13029', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6890', '1', '0', '0', '14', '0', '8673', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6890', '2', '0', '0', '14', '0', '8648', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6890', '3', '0', '0', '14', '0', '8677', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6890', '4', '0', '0', '14', '0', '8651', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6890', '5', '0', '0', '14', '0', '8680', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9961', '1', '0', '0', '14', '0', '13017', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9961', '2', '0', '0', '14', '0', '13067', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9961', '3', '0', '0', '14', '0', '13025', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9961', '4', '0', '0', '14', '0', '13013', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9961', '5', '0', '0', '14', '0', '13023', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6912', '1', '0', '0', '14', '0', '8684', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6912', '2', '0', '0', '14', '0', '8671', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6912', '3', '0', '0', '14', '0', '8682', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6912', '4', '0', '0', '14', '0', '8681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6852', '1', '0', '0', '14', '0', '8727', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6852', '2', '0', '0', '14', '0', '8722', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6852', '3', '0', '0', '14', '0', '8714', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6852', '4', '0', '0', '14', '0', '8650', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6828', '1', '0', '0', '14', '0', '8673', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6828', '2', '0', '0', '14', '0', '8677', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6828', '3', '0', '0', '14', '0', '8686', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6828', '4', '0', '0', '14', '0', '8717', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6828', '5', '0', '0', '14', '0', '8724', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6828', '6', '0', '0', '14', '0', '8678', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6828', '7', '0', '0', '14', '0', '8670', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6829', '1', '0', '0', '14', '0', '8636', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6829', '2', '0', '0', '14', '0', '8675', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6829', '3', '0', '0', '14', '0', '8716', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6829', '4', '0', '0', '14', '0', '8713', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9972', '1', '0', '0', '14', '0', '13015', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9972', '2', '0', '0', '14', '0', '13020', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9972', '3', '0', '0', '14', '0', '13022', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9972', '4', '0', '0', '14', '0', '13032', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9190', '1', '0', '0', '9', '0', '11887', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9500', '0', '0', '0', '9', '0', '12247', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9504', '0', '0', '0', '9', '0', '12247', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10910', '0', '0', '0', '15', '0', '35', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9714', '1', '0', '0', '9', '0', '12637', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '22019', '0', '0', '0', '9', '0', '10722', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3701', '1', '0', '0', '9', '0', '2118', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9165', '1', '0', '0', '9', '0', '11670', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9155', '0', '0', '0', '9', '0', '11658', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9724', '0', '0', '0', '9', '0', '12634', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9724', '1', '0', '0', '9', '0', '12634', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9724', '2', '0', '0', '9', '0', '12634', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9546', '2', '0', '0', '9', '0', '11332', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4519', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '342', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10673', '0', '0', '0', '17', '0', '3676', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7981', '0', '0', '0', '8', '0', '10174', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10689', '0', '0', '0', '17', '0', '3677', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4006', '0', '0', '0', '5', '0', '81', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7377', '0', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7357', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4677', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '11345', '1', '0', '0', '9', '0', '25495', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4663', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '11345', '0', '0', '0', '9', '0', '25446', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4652', '0', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4530', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4529', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4471', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4528', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8104', '0', '0', '0', '27', '0', '61', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8218', '0', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4783', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7415', '0', '0', '0', '9', '0', '9554', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4554', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4562', '0', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4561', '0', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4645', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4581', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4610', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4573', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4605', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4508', '0', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4551', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4550', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4550', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4549', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4524', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4533', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4474', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4569', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4569', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4568', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4537', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4536', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4536', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4535', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3926', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3925', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3925', '0', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4505', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4504', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4482', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4092', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4482', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4481', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4023', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4521', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2384', '0', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4017', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '381', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4468', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4475', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4091', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4517', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4467', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '656', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4821', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4823', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4827', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5381', '0', '0', '0', '8', '0', '6622', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8268', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7939', '1', '0', '0', '8', '0', '10140', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7970', '2', '0', '0', '9', '0', '10340', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9572', '1', '0', '0', '8', '0', '10898', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3185', '0', '0', '0', '5', '0', '69', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1802', '0', '0', '0', '9', '0', '3909', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4606', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3161', '0', '0', '0', '5', '0', '76', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4005', '0', '0', '0', '5', '0', '68', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8453', '0', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8751', '0', '0', '0', '5', '0', '932', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10598', '0', '0', '0', '17', '0', '2816', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8660', '2', '0', '0', '2', '0', '32620', '10', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8660', '3', '0', '0', '2', '0', '32620', '10', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8660', '1', '0', '0', '2', '0', '32620', '10', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4553', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4561', '4', '0', '0', '27', '0', '24', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4542', '4', '0', '0', '27', '0', '24', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4645', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4581', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4606', '0', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4642', '0', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4610', '0', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4572', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4605', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4507', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4551', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4550', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4549', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4549', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4524', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7357', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7357', '0', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4677', '0', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4664', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4663', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4652', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4473', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4568', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4568', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4530', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4530', '0', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4529', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4537', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4536', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4535', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4535', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3926', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '411', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3925', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3924', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4505', '0', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4504', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4482', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4023', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4481', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4481', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4023', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '410', '0', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4518', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4517', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4556', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4521', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2383', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4012', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '381', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4471', '0', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4470', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4467', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4091', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4091', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4485', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4467', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '655', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4541', '0', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4541', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4541', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4528', '0', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4515', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2304', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9692', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10371', '0', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9691', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5123', '0', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5123', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10466', '0', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10465', '0', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10464', '0', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4475', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4475', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4502', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4502', '0', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4502', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2385', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4662', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4662', '0', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9821', '2', '0', '0', '8', '0', '10898', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4544', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4543', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4544', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4581', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4529', '0', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4528', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2383', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4516', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4516', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9615', '1', '0', '0', '1', '0', '50001', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4512', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4512', '0', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '11361', '1', '0', '0', '8', '0', '7721', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4533', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4540', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4540', '0', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4011', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4010', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4541', '4', '0', '0', '27', '0', '24', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4101', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4101', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9693', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4526', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4526', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4561', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4561', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4009', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4009', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4008', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4009', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3644', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3642', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4542', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4542', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4542', '0', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '523', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '523', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '523', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1403', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1403', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1403', '0', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3644', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3644', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4678', '0', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4677', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2304', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4007', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4007', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4103', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4103', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4103', '0', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4556', '0', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4525', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4525', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '12537', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '12537', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '12537', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4538', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4538', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1582', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4469', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4469', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '411', '0', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '410', '4', '0', '0', '27', '0', '24', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '410', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4522', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4521', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4540', '4', '0', '0', '27', '0', '24', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4540', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4825', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3921', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3921', '0', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4571', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4092', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4092', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4012', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4012', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8433', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '63', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '63', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '63', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4512', '4', '0', '0', '27', '0', '24', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4502', '4', '0', '0', '27', '0', '24', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9777', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4474', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4474', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4605', '0', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5123', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4543', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4664', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4664', '0', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4473', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4652', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4473', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4569', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4548', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3926', '0', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '411', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '381', '4', '0', '0', '27', '0', '24', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4556', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '381', '0', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4470', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4470', '0', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4516', '0', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4515', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2304', '0', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3984', '4', '0', '0', '27', '0', '24', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2385', '3', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4543', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2383', '0', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4513', '4', '0', '0', '27', '0', '24', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4508', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4508', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4783', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4783', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9578', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9581', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4824', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10616', '0', '0', '0', '9', '0', '14108', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9212', '1', '0', '0', '9', '0', '11916', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1045', '0', '0', '0', '2', '0', '9279', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1047', '0', '0', '0', '2', '0', '9280', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1047', '1', '0', '0', '2', '0', '9280', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1049', '0', '0', '0', '2', '0', '9282', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1050', '0', '0', '0', '2', '0', '9281', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1050', '1', '0', '0', '2', '0', '9281', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6559', '0', '0', '0', '2', '0', '20453', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6560', '0', '0', '0', '2', '0', '20453', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6561', '0', '0', '0', '2', '0', '20453', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5743', '1', '0', '0', '9', '0', '7481', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3461', '1', '0', '0', '2', '0', '12846', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4469', '0', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4008', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4008', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4007', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7370', '0', '0', '0', '9', '0', '9456', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7399', '0', '0', '0', '9', '0', '9531', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7403', '0', '0', '0', '14', '0', '9527', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7426', '0', '0', '0', '9', '0', '9537', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4515', '0', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4104', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8213', '0', '0', '0', '5', '0', '930', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4104', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4104', '0', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4484', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '64', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '655', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '655', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50260', '1', '0', '0', '2', '0', '12563', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8568', '1', '0', '0', '8', '0', '10942', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8568', '2', '0', '0', '8', '0', '10943', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8646', '1', '0', '0', '25', '0', '31252', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6282', '0', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6462', '0', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6460', '0', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6459', '0', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6463', '0', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6461', '0', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8077', '0', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8256', '0', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8258', '0', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8076', '0', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8264', '0', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6490', '0', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50321', '0', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50322', '0', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50323', '0', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50324', '0', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6465', '0', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50326', '0', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8078', '0', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50328', '0', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50329', '0', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8079', '0', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8263', '0', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6484', '0', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6471', '0', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50334', '0', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50335', '0', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50336', '0', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50337', '0', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6475', '0', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50339', '0', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8255', '0', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50341', '0', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8075', '0', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8073', '0', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50344', '0', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9830', '0', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9827', '0', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9828', '0', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50348', '0', '0', '0', '27', '0', '61', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50349', '0', '0', '0', '27', '0', '61', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50351', '0', '0', '0', '27', '0', '61', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50352', '0', '0', '0', '27', '0', '61', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50353', '0', '0', '0', '27', '0', '61', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50354', '0', '0', '0', '27', '0', '61', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50355', '0', '0', '0', '27', '0', '61', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50356', '0', '0', '0', '27', '0', '61', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10311', '0', '0', '0', '8', '0', '862', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9829', '0', '0', '0', '27', '0', '61', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9983', '0', '0', '0', '27', '0', '71', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9981', '0', '0', '0', '27', '0', '71', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4579', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50372', '0', '0', '0', '27', '0', '71', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50374', '0', '0', '0', '27', '0', '71', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50375', '0', '0', '0', '27', '0', '71', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50376', '0', '0', '0', '27', '0', '71', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50377', '0', '0', '0', '27', '0', '71', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50378', '0', '0', '0', '27', '0', '71', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50379', '0', '0', '0', '27', '0', '71', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50380', '0', '0', '0', '27', '0', '71', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10602', '0', '0', '0', '27', '0', '71', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10601', '0', '0', '0', '27', '0', '71', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8105', '0', '0', '0', '27', '0', '61', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5851', '1', '0', '0', '9', '0', '925', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5849', '2', '0', '0', '2', '0', '18598', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5848', '2', '0', '0', '2', '0', '18597', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2465', '1', '0', '0', '9', '0', '558', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10502', '1', '0', '0', '2', '0', '46397', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10502', '2', '0', '0', '2', '0', '46396', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10502', '3', '0', '0', '9', '0', '13926', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9171', '1', '0', '0', '8', '0', '11708', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9182', '0', '0', '0', '9', '0', '11708', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7182', '0', '0', '0', '9', '0', '9164', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7185', '0', '0', '0', '9', '0', '9164', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7177', '0', '0', '0', '9', '0', '9164', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9426', '0', '0', '0', '9', '0', '12007', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10318', '4', '0', '0', '17', '0', '2778', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10318', '3', '0', '0', '17', '0', '2777', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10318', '2', '0', '0', '1', '0', '67334', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10318', '1', '0', '0', '1', '0', '67334', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10318', '0', '0', '0', '1', '0', '67334', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10358', '0', '0', '0', '1', '0', '67401', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10358', '1', '0', '0', '1', '0', '67401', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10358', '2', '0', '0', '1', '0', '67401', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10358', '3', '0', '0', '17', '0', '2783', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10358', '4', '0', '0', '17', '0', '2784', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9485', '1', '0', '0', '9', '0', '12204', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10137', '0', '0', '0', '9', '0', '13300', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10137', '1', '0', '0', '9', '0', '13302', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9650', '0', '0', '0', '9', '0', '12509', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10976', '0', '0', '0', '9', '0', '24656', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10976', '2', '0', '0', '9', '0', '24541', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4484', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4484', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3645', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3645', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '85', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '85', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4010', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4010', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7938', '1', '0', '0', '8', '0', '10289', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10214', '0', '0', '0', '8', '0', '12870', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8754', '0', '0', '0', '5', '0', '1015', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8752', '0', '0', '0', '5', '0', '934', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10144', '0', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4486', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4486', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4486', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1503', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1503', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1503', '0', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3923', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3923', '0', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3921', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2381', '0', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1522', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3642', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3642', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7430', '0', '0', '0', '8', '0', '9544', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7429', '0', '0', '0', '8', '0', '9544', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8494', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4346', '3', '0', '0', '8', '0', '6383', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4346', '2', '0', '0', '8', '0', '6383', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4346', '1', '0', '0', '8', '0', '6383', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10210', '1', '0', '0', '25', '0', '60866', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7769', '1', '0', '0', '9', '0', '10283', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7868', '0', '0', '0', '9', '0', '10097', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8088', '0', '0', '0', '8', '0', '10297', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8870', '0', '0', '0', '9', '0', '11221', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8879', '1', '0', '0', '9', '0', '11221', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8991', '1', '0', '0', '2', '0', '34133', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9732', '0', '0', '0', '9', '0', '12664', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9732', '1', '0', '0', '9', '0', '12663', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10144', '1', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10857', '1', '0', '0', '9', '0', '20439', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10858', '1', '0', '0', '9', '0', '24451', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10417', '1', '0', '0', '17', '0', '2781', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10418', '1', '0', '0', '17', '0', '2780', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10422', '1', '0', '0', '17', '0', '2778', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10423', '1', '0', '0', '17', '0', '2779', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10424', '1', '0', '0', '17', '0', '2777', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10421', '1', '0', '0', '17', '0', '2783', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10425', '1', '0', '0', '17', '0', '2784', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10420', '1', '0', '0', '17', '0', '2787', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10419', '1', '0', '0', '17', '0', '2786', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10426', '1', '0', '0', '17', '0', '2785', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4576', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4575', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4562', '4', '0', '0', '27', '0', '24', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9416', '1', '0', '0', '9', '0', '12029', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9416', '2', '0', '0', '9', '0', '12038', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6658', '1', '0', '0', '9', '0', '8597', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1141', '1', '0', '0', '8', '0', '3129', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1186', '2', '0', '0', '8', '0', '1269', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8761', '0', '0', '0', '1', '0', '42169', '1', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50410', '0', '0', '0', '9', '0', '9437', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50413', '1', '0', '0', '8', '0', '4102', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3481', '1', '0', '0', '8', '0', '5535', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3481', '2', '0', '0', '8', '0', '5535', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3481', '3', '0', '0', '8', '0', '5535', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3481', '4', '0', '0', '8', '0', '5535', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3481', '5', '0', '0', '8', '0', '5535', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6668', '0', '0', '0', '9', '0', '8620', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6669', '0', '0', '0', '9', '0', '8620', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6670', '0', '0', '0', '9', '0', '8620', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4362', '0', '0', '0', '2', '0', '15044', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4362', '1', '0', '0', '2', '0', '15044', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '37523', '0', '0', '0', '9', '0', '24595', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '37523', '1', '0', '0', '9', '0', '24553', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '37523', '2', '0', '0', '9', '0', '24598', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '37523', '3', '0', '0', '9', '0', '24596', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '37523', '4', '0', '0', '9', '0', '24594', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '37523', '5', '0', '0', '9', '0', '24564', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10199', '1', '0', '0', '9', '0', '24555', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10199', '2', '0', '0', '9', '0', '14444', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '37552', '0', '0', '0', '9', '0', '24535', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '37552', '1', '0', '0', '9', '0', '24563', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10854', '0', '0', '0', '9', '0', '24556', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10854', '1', '0', '0', '9', '0', '20438', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8672', '0', '0', '0', '2', '0', '32569', '10', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8677', '0', '0', '0', '2', '0', '32569', '10', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8677', '1', '0', '0', '2', '0', '32569', '50', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8383', '1', '0', '0', '2', '0', '30719', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9720', '0', '0', '0', '9', '0', '12621', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8392', '1', '0', '0', '2', '0', '30719', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8371', '0', '0', '0', '9', '0', '10601', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8356', '0', '0', '0', '9', '0', '10583', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8513', '1', '0', '0', '2', '0', '31663', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7560', '0', '0', '0', '5', '0', '942', '4', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7560', '1', '0', '0', '5', '0', '942', '5', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7560', '2', '0', '0', '5', '0', '942', '6', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7560', '3', '0', '0', '5', '0', '942', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7559', '0', '0', '0', '5', '0', '942', '4', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7559', '1', '0', '0', '5', '0', '942', '5', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7559', '2', '0', '0', '5', '0', '942', '6', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7559', '3', '0', '0', '5', '0', '942', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8085', '1', '0', '0', '8', '0', '10388', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9456', '1', '0', '0', '9', '0', '12132', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9501', '1', '0', '0', '9', '0', '12274', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9509', '0', '0', '0', '9', '0', '12245', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9509', '1', '0', '0', '9', '0', '12245', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9509', '2', '0', '0', '9', '0', '12245', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9509', '3', '0', '0', '9', '0', '12245', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9508', '0', '0', '0', '9', '0', '12245', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7452', '3', '0', '0', '9', '0', '9648', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9507', '0', '0', '0', '9', '0', '12245', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9510', '0', '0', '0', '9', '0', '12245', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9640', '0', '0', '0', '9', '0', '12504', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10179', '2', '0', '0', '8', '0', '12500', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9484', '2', '0', '0', '9', '0', '12204', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3162', '0', '0', '0', '5', '0', '530', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6506', '0', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7162', '0', '0', '0', '8', '0', '9152', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2381', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2381', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10598', '1', '0', '0', '17', '0', '2817', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9647', '0', '0', '0', '1', '0', '50517', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7931', '1', '0', '0', '12', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7935', '1', '0', '0', '12', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7925', '1', '0', '0', '12', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8064', '1', '0', '0', '12', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7927', '1', '0', '0', '12', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7921', '1', '0', '0', '12', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7898', '1', '0', '0', '12', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7926', '1', '0', '0', '12', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9549', '0', '0', '0', '17', '0', '2796', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10036', '1', '0', '0', '9', '0', '13228', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9880', '0', '0', '0', '9', '0', '12980', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9853', '1', '0', '0', '9', '0', '12920', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9853', '2', '0', '0', '9', '0', '13285', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10502', '4', '0', '0', '9', '0', '13927', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3186', '0', '0', '0', '5', '0', '54', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8934', '1', '0', '0', '8', '0', '11122', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4553', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4553', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4552', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4552', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4539', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4552', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4558', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4519', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4518', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9062', '4', '0', '0', '9', '0', '11543', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9062', '5', '0', '0', '9', '0', '11533', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9143', '2', '0', '0', '28', '0', '11543', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10368', '2', '0', '0', '9', '0', '13606', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10368', '3', '0', '0', '9', '0', '13609', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10368', '4', '0', '0', '9', '0', '13610', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10368', '5', '0', '0', '9', '0', '13611', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9832', '1', '0', '0', '2', '0', '31404', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9832', '2', '0', '0', '2', '0', '31405', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9832', '3', '0', '0', '17', '0', '1681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9832', '4', '0', '0', '17', '0', '1682', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9832', '5', '0', '0', '17', '0', '45', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9832', '6', '0', '0', '8', '0', '11972', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9832', '7', '0', '0', '8', '0', '11972', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9832', '8', '0', '0', '8', '0', '9737', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9832', '9', '0', '0', '8', '0', '9762', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9832', '10', '0', '0', '8', '0', '10259', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9832', '11', '0', '0', '17', '0', '1021', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7923', '1', '0', '0', '12', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7922', '1', '0', '0', '12', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '344', '1', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '345', '4', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '347', '1', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '348', '1', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '349', '3', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '441', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1290', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1294', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6620', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7288', '2', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7301', '4', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7468', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7497', '4', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7949', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7952', '3', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7982', '3', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8103', '2', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8648', '2', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8884', '2', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8903', '1', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9123', '3', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9299', '3', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9427', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9478', '3', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9628', '2', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9709', '5', '0', '0', '9', '0', '12677', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9866', '2', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10139', '2', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10201', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10202', '4', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6059', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7173', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7290', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7324', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7855', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7856', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9114', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9476', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8806', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8833', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50253', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8375', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10027', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4559', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4559', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4558', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4558', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9615', '2', '0', '0', '2', '0', '35797', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3310', '1', '0', '0', '2', '0', '13544', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6581', '1', '0', '0', '4', '0', '3519', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10215', '2', '0', '0', '2', '0', '44790', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4468', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4468', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4485', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4485', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4651', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4555', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2384', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2384', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4572', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4572', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4562', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4562', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6525', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '11211', '0', '0', '0', '9', '0', '25283', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '11211', '1', '0', '0', '9', '0', '25287', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8560', '0', '0', '0', '5', '0', '934', '6', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7481', '0', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10189', '0', '0', '0', '9', '0', '13369', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6478', '0', '0', '0', '27', '0', '20', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9614', '2', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9924', '1', '0', '0', '9', '0', '13064', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9666', '0', '0', '0', '2', '0', '37863', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10857', '2', '0', '0', '9', '0', '24451', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10858', '2', '0', '0', '9', '0', '20439', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4641', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4641', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9575', '1', '0', '0', '2', '0', '37859', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9575', '2', '0', '0', '2', '0', '37815', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7669', '0', '0', '0', '9', '0', '9918', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8690', '0', '0', '0', '2', '0', '32569', '35', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8691', '0', '0', '0', '2', '0', '32569', '35', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10131', '0', '0', '0', '27', '0', '65', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7948', '3', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5750', '1', '0', '0', '8', '0', '7848', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '524', '0', '0', '0', '9', '0', '2381', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '524', '1', '0', '0', '9', '0', '2381', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10467', '0', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10468', '0', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10469', '0', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10470', '0', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10471', '0', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10472', '0', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10473', '0', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4472', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4101', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9477', '3', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4621', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4621', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '141', '4', '0', '0', '27', '0', '24', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '141', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '656', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '656', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '436', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '436', '0', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '411', '4', '0', '0', '27', '0', '24', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4511', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4511', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4511', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4509', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4509', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4509', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4466', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3645', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4523', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4523', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4523', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '64', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '64', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4522', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4522', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7859', '0', '0', '0', '2', '0', '27317', '1', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4512', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4548', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4527', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4527', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4527', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4546', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4546', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4546', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4547', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4547', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4547', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4548', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9906', '0', '0', '0', '9', '0', '13037', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7187', '1', '0', '0', '9', '0', '9164', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9568', '0', '0', '0', '9', '0', '12372', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7719', '1', '0', '0', '9', '0', '10646', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8397', '0', '0', '0', '9', '0', '10814', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9162', '0', '0', '0', '9', '0', '11636', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3924', '0', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3924', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3923', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4545', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4545', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4539', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4539', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4513', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4513', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4567', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4566', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4566', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4567', '0', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4566', '0', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4505', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4503', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4503', '0', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7704', '0', '0', '0', '9', '0', '9978', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7431', '0', '0', '0', '8', '0', '9544', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2208', '0', '0', '0', '8', '0', '4101', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4621', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4555', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4604', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4507', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4557', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7730', '0', '0', '0', '9', '0', '10009', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9280', '0', '0', '0', '9', '0', '11961', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10220', '0', '0', '0', '9', '0', '12137', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4609', '0', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8782', '0', '0', '0', '9', '0', '11142', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8100', '0', '0', '0', '8', '0', '10340', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '562', '0', '0', '0', '9', '0', '2278', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1285', '0', '0', '0', '9', '0', '3377', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1443', '0', '0', '0', '7', '0', '185', '175', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4555', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4604', '0', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4507', '0', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4604', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4557', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4551', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7675', '0', '0', '0', '9', '0', '10107', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7719', '0', '0', '0', '14', '0', '9991', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7732', '0', '0', '0', '9', '0', '10009', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8701', '0', '0', '0', '9', '0', '11082', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9496', '0', '0', '0', '9', '0', '12249', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9678', '0', '0', '0', '9', '0', '12573', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9806', '0', '0', '0', '9', '0', '12807', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4557', '0', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4554', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7585', '0', '0', '0', '9', '0', '9803', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7676', '0', '0', '0', '9', '0', '10108', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5675', '0', '0', '0', '14', '0', '7785', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5675', '1', '0', '0', '14', '0', '7785', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10274', '0', '0', '0', '9', '0', '13549', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10273', '0', '0', '0', '9', '0', '13549', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4531', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4531', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4531', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4532', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4573', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4532', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4532', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4534', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4534', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4534', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4520', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4663', '0', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4662', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4520', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4520', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4610', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4603', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4603', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3984', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3984', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3984', '0', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4526', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4525', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4472', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4472', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4609', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4609', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4560', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4560', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4560', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4559', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4524', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4506', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4506', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4506', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4578', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4570', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4570', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4570', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4578', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4578', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '141', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '141', '0', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '85', '4', '0', '0', '27', '0', '24', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4513', '0', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '436', '4', '0', '0', '27', '0', '24', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '85', '0', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '436', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7939', '0', '0', '0', '9', '0', '10140', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7938', '0', '0', '0', '9', '0', '10289', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1323', '0', '0', '0', '9', '0', '3441', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1323', '2', '0', '0', '8', '0', '3454', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1323', '3', '0', '0', '9', '0', '3453', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10478', '1', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1282', '0', '0', '0', '9', '0', '3566', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10219', '0', '0', '0', '9', '0', '9418', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10024', '0', '0', '0', '9', '0', '12521', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8308', '0', '0', '0', '25', '0', '20222', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9955', '0', '0', '0', '14', '0', '13013', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6092', '0', '0', '0', '25', '0', '20222', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6094', '0', '0', '0', '25', '0', '20219', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9714', '0', '0', '0', '9', '0', '12638', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3228', '0', '0', '0', '8', '0', '5216', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7970', '3', '0', '0', '9', '0', '10146', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3223', '0', '0', '0', '2', '0', '13370', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3651', '1', '0', '0', '8', '0', '5213', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3651', '2', '0', '0', '8', '0', '5213', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4017', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4017', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2177', '0', '0', '0', '9', '0', '4285', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2178', '0', '0', '0', '9', '0', '4287', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2179', '0', '0', '0', '9', '0', '4288', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6445', '0', '0', '0', '8', '0', '8227', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8098', '0', '0', '0', '5', '0', '911', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1522', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1522', '0', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9511', '0', '0', '0', '2', '0', '39740', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9513', '0', '0', '0', '2', '0', '39740', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9780', '0', '0', '0', '2', '0', '39740', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9156', '0', '0', '0', '9', '0', '11658', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '126', '0', '0', '0', '9', '0', '14420', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9683', '1', '0', '0', '9', '0', '11692', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8991', '2', '0', '0', '9', '0', '11483', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9907', '0', '0', '0', '9', '0', '12970', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4504', '0', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4503', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4571', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4571', '0', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4466', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4466', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4011', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4011', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4579', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4579', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8096', '0', '0', '0', '8', '0', '10340', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8096', '1', '0', '0', '9', '0', '10163', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8096', '2', '0', '0', '9', '0', '10346', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4545', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4544', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4538', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4537', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4533', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9205', '0', '0', '0', '5', '0', '989', '6', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8081', '0', '0', '0', '9', '0', '10286', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7967', '4', '0', '0', '9', '0', '10242', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7967', '5', '0', '0', '9', '0', '10129', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7967', '0', '0', '0', '9', '0', '10162', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7967', '1', '0', '0', '9', '0', '10347', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3062', '0', '0', '0', '8', '0', '826', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3062', '1', '0', '0', '8', '0', '826', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3062', '2', '0', '0', '8', '0', '826', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3062', '3', '0', '0', '8', '0', '826', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3062', '4', '0', '0', '8', '0', '826', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3062', '5', '0', '0', '8', '0', '826', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3062', '6', '0', '0', '8', '0', '826', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9112', '2', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8692', '0', '0', '0', '5', '0', '942', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8683', '0', '0', '0', '1', '0', '41181', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7869', '2', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7857', '2', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7428', '0', '0', '0', '8', '0', '9544', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10482', '0', '0', '0', '9', '0', '2118', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9113', '2', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7896', '1', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8558', '0', '0', '0', '5', '0', '932', '6', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7889', '2', '0', '0', '8', '0', '10898', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6581', '2', '0', '0', '4', '0', '3519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9460', '1', '0', '0', '12', '0', '12', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10255', '0', '0', '0', '8', '0', '12882', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9499', '1', '0', '0', '8', '0', '10898', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10027', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1822', '0', '0', '0', '9', '0', '4001', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1822', '1', '0', '0', '9', '0', '4342', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1882', '0', '0', '0', '9', '0', '4021', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8719', '1', '0', '0', '5', '0', '1031', '5', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8718', '1', '0', '0', '5', '0', '1031', '5', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8429', '0', '0', '0', '9', '0', '10682', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8336', '0', '0', '0', '9', '0', '10577', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8301', '1', '0', '0', '9', '0', '10577', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9823', '0', '0', '0', '8', '0', '5505', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9823', '1', '0', '0', '8', '0', '10704', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9823', '2', '0', '0', '8', '0', '10764', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9823', '3', '0', '0', '8', '0', '3201', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9823', '4', '0', '0', '8', '0', '3802', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9823', '5', '0', '0', '8', '0', '9837', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9823', '8', '0', '0', '8', '0', '13159', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9823', '9', '0', '0', '8', '0', '5511', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9823', '10', '0', '0', '8', '0', '10758', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8088', '1', '0', '0', '9', '0', '10297', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8082', '0', '0', '0', '9', '0', '10652', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9841', '0', '0', '0', '9', '0', '12864', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8072', '0', '0', '0', '8', '0', '10279', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8259', '1', '0', '0', '9', '0', '10519', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7729', '0', '0', '0', '9', '0', '10009', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9184', '0', '0', '0', '9', '0', '11711', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9171', '0', '0', '0', '9', '0', '11708', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7966', '1', '0', '0', '8', '0', '10704', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7970', '4', '0', '0', '8', '0', '10340', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7675', '1', '0', '0', '9', '0', '10108', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8616', '0', '0', '0', '9', '0', '10980', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9301', '0', '0', '0', '9', '0', '11984', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3142', '0', '0', '0', '9', '0', '4261', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9575', '0', '0', '0', '2', '0', '37815', '1', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9574', '2', '0', '0', '2', '0', '37815', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9574', '3', '0', '0', '2', '0', '37860', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10318', '5', '0', '0', '17', '0', '2779', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10318', '6', '0', '0', '17', '0', '2780', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10318', '7', '0', '0', '17', '0', '2781', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10358', '5', '0', '0', '17', '0', '2785', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10358', '6', '0', '0', '17', '0', '2786', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10358', '7', '0', '0', '17', '0', '2787', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7676', '1', '0', '0', '9', '0', '10107', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10118', '2', '0', '0', '17', '0', '1288', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10118', '4', '0', '0', '17', '0', '41', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3701', '2', '0', '0', '9', '0', '5727', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9709', '6', '0', '0', '9', '0', '12676', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9709', '7', '0', '0', '9', '0', '12713', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5749', '0', '0', '0', '7', '0', '202', '300', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2901', '0', '0', '0', '9', '0', '4941', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10316', '0', '0', '0', '2', '0', '44981', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1541', '0', '0', '0', '9', '0', '3628', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9769', '0', '0', '0', '9', '0', '12757', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9674', '0', '0', '0', '9', '0', '12536', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9024', '0', '0', '0', '9', '0', '11485', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9024', '1', '0', '0', '9', '0', '11489', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9024', '2', '0', '0', '9', '0', '11491', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9024', '3', '0', '0', '9', '0', '11494', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7486', '0', '0', '0', '9', '0', '9692', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9500', '1', '0', '0', '9', '0', '12231', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9504', '1', '0', '0', '9', '0', '12231', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6799', '0', '0', '0', '7', '0', '197', '280', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4001', '0', '0', '0', '5', '0', '47', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4651', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4651', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4654', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4654', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4654', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4660', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4660', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4660', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4661', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4661', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4661', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4685', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4685', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4685', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4686', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4686', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4686', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6648', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6648', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6648', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7264', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7264', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7264', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7366', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7366', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7366', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9580', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9580', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9580', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9990', '0', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9990', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9990', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4642', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4642', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4643', '0', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4643', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4643', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4655', '0', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4655', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4655', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4656', '0', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4656', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4656', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4667', '0', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4667', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4667', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4681', '0', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4681', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4681', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4682', '0', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4682', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4682', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6628', '0', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6628', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6628', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7437', '0', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7437', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7437', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7566', '0', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7566', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7566', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4678', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4678', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6647', '0', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6647', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6647', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7260', '0', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7260', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7260', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8111', '0', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8111', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8111', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4606', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4607', '0', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4607', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4607', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4644', '0', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4644', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4644', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4687', '0', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4687', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4687', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4688', '0', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4688', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4688', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7567', '0', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7567', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7567', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4645', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4649', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4649', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4649', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4650', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4650', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4650', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4653', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4653', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4653', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4683', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4683', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4683', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4684', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4684', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4684', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4696', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4696', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4696', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4697', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4697', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4697', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7263', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7263', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7263', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4510', '0', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4510', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4510', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8306', '1', '0', '0', '25', '0', '20219', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4573', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4574', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4574', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4574', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4665', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4665', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4665', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4666', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4666', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4666', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4679', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4679', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4679', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4680', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4680', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4680', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4691', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4691', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4691', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4692', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4692', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4692', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4801', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4801', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4801', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6649', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6649', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6649', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7265', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7265', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7265', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7349', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7349', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7349', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7438', '0', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7438', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7438', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6540', '0', '0', '0', '1', '0', '24746', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6540', '1', '0', '0', '1', '0', '24746', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6540', '2', '0', '0', '1', '0', '24746', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6540', '3', '0', '0', '1', '0', '24746', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6540', '4', '0', '0', '1', '0', '24746', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6542', '0', '0', '0', '1', '0', '24746', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6542', '1', '0', '0', '1', '0', '24746', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6542', '2', '0', '0', '1', '0', '24746', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6542', '3', '0', '0', '1', '0', '24746', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6542', '4', '0', '0', '1', '0', '24746', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8260', '0', '0', '0', '27', '0', '51', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4576', '0', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4575', '4', '0', '0', '27', '0', '24', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4575', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4575', '0', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4576', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4576', '4', '0', '0', '27', '0', '24', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4577', '0', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4577', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4577', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4577', '4', '0', '0', '27', '0', '24', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4658', '0', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4658', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4658', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4658', '4', '0', '0', '27', '0', '24', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4659', '0', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4659', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4659', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4659', '4', '0', '0', '27', '0', '24', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4676', '0', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4676', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4676', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4676', '4', '0', '0', '27', '0', '24', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4690', '0', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4690', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4690', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4690', '4', '0', '0', '27', '0', '24', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5061', '0', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5061', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5061', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5061', '4', '0', '0', '27', '0', '24', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6650', '0', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6650', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6650', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6650', '4', '0', '0', '27', '0', '24', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4647', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4647', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4647', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4648', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4648', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4648', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4657', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4657', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4657', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4674', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4674', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4674', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4675', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4675', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4675', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4693', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4693', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4693', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4694', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4694', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4694', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4695', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4695', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4695', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6652', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6652', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6652', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7262', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7262', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7262', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7368', '0', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7368', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7368', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10996', '2', '0', '0', '8', '0', '24809', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10996', '3', '0', '0', '8', '0', '24808', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10996', '4', '0', '0', '8', '0', '24810', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10996', '5', '0', '0', '8', '0', '24811', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10996', '6', '0', '0', '8', '0', '25238', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7377', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7377', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7467', '0', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7467', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7467', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7522', '0', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7522', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7522', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8110', '0', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8110', '2', '0', '0', '27', '0', '40', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8110', '1', '0', '0', '27', '0', '10', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2703', '0', '0', '0', '8', '0', '975', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7768', '0', '0', '0', '9', '0', '10044', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7768', '1', '0', '0', '9', '0', '10172', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8524', '0', '0', '0', '9', '0', '10838', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7368', '4', '0', '0', '9', '0', '10324', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7368', '3', '0', '0', '9', '0', '10324', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7465', '0', '0', '0', '9', '0', '9700', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7531', '0', '0', '0', '9', '0', '9756', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7449', '0', '0', '0', '9', '0', '9756', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7452', '2', '0', '0', '9', '0', '9648', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7452', '1', '0', '0', '9', '0', '9648', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7452', '0', '0', '0', '9', '0', '9648', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8298', '0', '0', '0', '9', '0', '9682', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8298', '1', '0', '0', '9', '0', '9674', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10453', '0', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10454', '0', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10455', '0', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10456', '0', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10457', '0', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10458', '0', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10459', '0', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10460', '0', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10461', '0', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10462', '0', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8899', '0', '0', '0', '2', '0', '33341', '1', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9690', '0', '0', '0', '9', '0', '13129', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7999', '0', '0', '0', '9', '0', '10201', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8894', '1', '0', '0', '9', '0', '11170', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8062', '0', '0', '0', '9', '0', '10270', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1443', '1', '0', '0', '7', '0', '171', '180', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5381', '1', '0', '0', '8', '0', '6622', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5381', '2', '0', '0', '8', '0', '6622', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5382', '0', '0', '0', '8', '0', '6624', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5382', '1', '0', '0', '8', '0', '6624', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5382', '2', '0', '0', '8', '0', '6624', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3441', '0', '0', '0', '8', '0', '5405', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2187', '0', '0', '0', '2', '0', '11470', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6443', '0', '0', '0', '25', '0', '24266', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8703', '0', '0', '0', '2', '0', '32569', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8672', '1', '0', '0', '8', '0', '11030', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7771', '1', '0', '0', '1', '0', '32756', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7772', '1', '0', '0', '1', '0', '32756', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1291', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1293', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1296', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1297', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1581', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2890', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3421', '0', '0', '0', '8', '0', '5503', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4554', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '410', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4518', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4517', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4471', '1', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9245', '2', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9574', '1', '0', '0', '2', '0', '37859', '1', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9691', '1', '0', '0', '15', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9692', '1', '0', '0', '15', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9693', '1', '0', '0', '15', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9733', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9868', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8523', '0', '0', '0', '2', '0', '31366', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4004', '0', '0', '0', '16', '0', '1100', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9218', '0', '0', '0', '1', '0', '46078', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9217', '0', '0', '0', '1', '0', '46078', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9219', '0', '0', '0', '1', '0', '46078', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9542', '1', '0', '0', '2', '0', '37570', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9007', '0', '0', '0', '9', '0', '11460', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9709', '4', '0', '0', '2', '0', '38699', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9709', '3', '0', '0', '2', '0', '38699', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9709', '2', '0', '0', '2', '0', '38699', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9709', '1', '0', '0', '2', '0', '38699', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9709', '0', '0', '0', '1', '0', '61438', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4519', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9731', '1', '0', '0', '9', '0', '12661', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9731', '2', '0', '0', '9', '0', '12669', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9731', '3', '0', '0', '9', '0', '12677', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9731', '4', '0', '0', '9', '0', '12676', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9731', '5', '0', '0', '9', '0', '12676', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9715', '1', '0', '0', '1', '0', '51967', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9492', '0', '0', '0', '2', '0', '37247', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10478', '0', '0', '0', '14', '0', '13667', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9741', '1', '0', '0', '2', '0', '38621', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9741', '2', '0', '0', '2', '0', '38621', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9741', '3', '0', '0', '2', '0', '38619', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9741', '4', '0', '0', '2', '0', '38512', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9742', '1', '0', '0', '2', '0', '38622', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9742', '2', '0', '0', '2', '0', '38622', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9742', '3', '0', '0', '2', '0', '38623', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9742', '4', '0', '0', '2', '0', '38624', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9742', '5', '0', '0', '2', '0', '38624', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9742', '6', '0', '0', '2', '0', '38624', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10402', '0', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10402', '1', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10400', '0', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10400', '1', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10398', '0', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10398', '1', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10211', '0', '0', '0', '2', '0', '40686', '1', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9917', '1', '0', '0', '25', '0', '54197', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9917', '2', '0', '0', '25', '0', '54197', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4567', '1', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10723', '1', '0', '0', '25', '0', '54197', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10212', '1', '0', '0', '4', '0', '4395', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10885', '0', '0', '0', '2', '0', '49278', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50014', '0', '0', '0', '1', '0', '72144', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50014', '1', '0', '0', '1', '0', '72144', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10340', '0', '0', '0', '1', '0', '62853', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '0', '0', '0', '1', '0', '62853', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '1', '0', '0', '1', '0', '62853', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10340', '2', '0', '0', '1', '0', '62853', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '2', '0', '0', '1', '0', '62853', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '3', '0', '0', '1', '0', '62853', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '4', '0', '0', '1', '0', '62853', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '5', '0', '0', '1', '0', '62853', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '6', '0', '0', '1', '0', '62853', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '7', '0', '0', '1', '0', '62853', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '8', '0', '0', '1', '0', '62853', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '9', '0', '0', '1', '0', '62853', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10383', '0', '0', '0', '1', '0', '62853', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6918', '0', '0', '0', '8', '0', '8867', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '22019', '0', '0', '0', '1', '0', '38157', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3701', '1', '0', '0', '2', '0', '7586', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9165', '1', '0', '0', '2', '0', '34869', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9155', '0', '0', '0', '2', '0', '34842', '10', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9724', '0', '0', '0', '2', '0', '38653', '2', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9724', '1', '0', '0', '2', '0', '38655', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9724', '2', '0', '0', '2', '0', '38656', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4519', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '342', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7981', '0', '0', '0', '2', '0', '28455', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4006', '0', '0', '0', '16', '0', '658', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7357', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4677', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4663', '1', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4530', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4529', '1', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4471', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4528', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7415', '0', '0', '0', '2', '0', '23843', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4645', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4581', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4610', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4605', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4551', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4550', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4549', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4524', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4533', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4569', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4568', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4537', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4536', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4535', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3926', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3925', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4505', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4504', '1', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4482', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4481', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4023', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4521', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '381', '1', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4091', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4467', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5381', '0', '0', '0', '7', '0', '129', '240', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9572', '1', '0', '0', '2', '0', '31760', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3185', '0', '0', '0', '16', '0', '1093', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4606', '1', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3161', '0', '0', '0', '16', '0', '688', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4005', '0', '0', '0', '16', '0', '674', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8751', '0', '0', '0', '5', '0', '935', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4553', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4561', '4', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4542', '4', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4581', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4572', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4605', '1', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4507', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4550', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4549', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4524', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7357', '1', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4664', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4663', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4652', '1', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4473', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4568', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4530', '1', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4529', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4536', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4535', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3926', '1', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '411', '1', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3925', '1', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3924', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4504', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4482', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4023', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4481', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4517', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4556', '1', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2383', '1', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4012', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '381', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4470', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4467', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4091', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4485', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '655', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4541', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4541', '1', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4515', '1', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2304', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9692', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9691', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5123', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10466', '0', '0', '0', '1', '0', '64809', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10465', '0', '0', '0', '1', '0', '64808', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10464', '0', '0', '0', '1', '0', '64805', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4475', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4475', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4502', '1', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4502', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2385', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4662', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9821', '2', '0', '0', '2', '0', '31760', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4544', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4543', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4528', '1', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2383', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4516', '1', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4516', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9615', '1', '0', '0', '9', '0', '11989', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4512', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '11361', '1', '0', '0', '8', '0', '7003', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4533', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4540', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4010', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4541', '4', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4101', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9693', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4526', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4526', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4561', '1', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4561', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4009', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4009', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4008', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3642', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4542', '1', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4542', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '523', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '523', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1403', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1403', '1', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3644', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3644', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4677', '1', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2304', '1', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4007', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4103', '1', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4103', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4525', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '12537', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '12537', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4538', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4538', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1582', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4469', '1', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4469', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '410', '4', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '410', '1', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4521', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4540', '4', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4540', '1', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3921', '1', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4571', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4092', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4092', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4012', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '63', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '63', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4512', '4', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4502', '4', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4474', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4474', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5123', '1', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4664', '1', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4473', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4652', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4569', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4548', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '411', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '381', '4', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4556', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4470', '1', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4515', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3984', '4', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4543', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4513', '4', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4508', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4508', '1', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1047', '1', '0', '0', '2', '0', '4413', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1050', '1', '0', '0', '2', '0', '14639', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6559', '0', '0', '0', '9', '0', '8309', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6560', '0', '0', '0', '9', '0', '8309', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6561', '0', '0', '0', '9', '0', '8309', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4008', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4007', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7399', '0', '0', '0', '2', '0', '23792', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4104', '1', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8213', '0', '0', '0', '16', '0', '77', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4104', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '64', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '655', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50260', '1', '0', '0', '27', '0', '55', '3', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8568', '1', '0', '0', '2', '0', '31880', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8568', '2', '0', '0', '2', '0', '31881', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5851', '1', '0', '0', '2', '0', '18643', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5849', '2', '0', '0', '8', '0', '1468', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5848', '2', '0', '0', '8', '0', '172', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2465', '1', '0', '0', '2', '0', '18642', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10502', '1', '0', '0', '8', '0', '13926', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10502', '2', '0', '0', '8', '0', '13927', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7182', '0', '0', '0', '2', '0', '22628', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7185', '0', '0', '0', '2', '0', '22628', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7177', '0', '0', '0', '2', '0', '22628', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10318', '2', '0', '0', '17', '0', '2817', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10318', '1', '0', '0', '17', '0', '2817', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10318', '0', '0', '0', '17', '0', '2817', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10358', '0', '0', '0', '17', '0', '2816', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10358', '1', '0', '0', '17', '0', '2816', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10358', '2', '0', '0', '17', '0', '2816', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4484', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4484', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3645', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '85', '1', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '85', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4010', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8752', '0', '0', '0', '5', '0', '935', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10144', '0', '0', '0', '2', '0', '44221', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4486', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4486', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1503', '1', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1503', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3923', '1', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3921', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1522', '1', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3642', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8088', '0', '0', '0', '2', '0', '24289', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8991', '1', '0', '0', '2', '0', '34134', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9732', '0', '0', '0', '14', '0', '12238', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9732', '1', '0', '0', '8', '0', '12238', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10144', '1', '0', '0', '2', '0', '44229', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10857', '1', '0', '0', '2', '0', '49698', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10858', '1', '0', '0', '2', '0', '49698', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4576', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4575', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4562', '4', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9416', '1', '0', '0', '2', '0', '35908', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9416', '2', '0', '0', '2', '0', '35908', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6658', '1', '0', '0', '8', '0', '8599', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50413', '1', '0', '0', '2', '0', '11511', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3481', '1', '0', '0', '8', '0', '5536', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3481', '2', '0', '0', '8', '0', '5536', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3481', '3', '0', '0', '8', '0', '5536', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3481', '4', '0', '0', '8', '0', '5536', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3481', '5', '0', '0', '8', '0', '5536', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6668', '0', '0', '0', '2', '0', '21106', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6669', '0', '0', '0', '2', '0', '21109', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6670', '0', '0', '0', '2', '0', '21107', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4362', '0', '0', '0', '9', '0', '5902', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4362', '1', '0', '0', '9', '0', '5904', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10854', '0', '0', '0', '2', '0', '49648', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10854', '1', '0', '0', '2', '0', '49648', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8677', '1', '0', '0', '8', '0', '11061', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8383', '1', '0', '0', '8', '0', '10625', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8392', '1', '0', '0', '8', '0', '10643', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8371', '0', '0', '0', '2', '0', '30659', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8356', '0', '0', '0', '2', '0', '30658', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8513', '1', '0', '0', '9', '0', '10853', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3162', '0', '0', '0', '16', '0', '562', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2381', '1', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2381', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7931', '1', '0', '0', '1', '0', '51926', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7935', '1', '0', '0', '1', '0', '51926', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7925', '1', '0', '0', '1', '0', '51926', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8064', '1', '0', '0', '1', '0', '51926', '1', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7927', '1', '0', '0', '1', '0', '51926', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7921', '1', '0', '0', '1', '0', '51926', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7898', '1', '0', '0', '1', '0', '51926', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7926', '1', '0', '0', '1', '0', '51926', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9880', '0', '0', '0', '2', '0', '42394', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3186', '0', '0', '0', '16', '0', '1037', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4553', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4552', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4539', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4552', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4558', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4518', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9062', '4', '0', '0', '9', '0', '11542', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9062', '5', '0', '0', '9', '0', '11532', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9143', '2', '0', '0', '28', '0', '11542', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9832', '1', '0', '0', '2', '0', '31405', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9832', '2', '0', '0', '2', '0', '31404', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9832', '3', '0', '0', '2', '0', '43300', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9832', '4', '0', '0', '2', '0', '43300', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9832', '5', '0', '0', '2', '0', '43348', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9832', '6', '0', '0', '2', '0', '35280', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9832', '7', '0', '0', '2', '0', '35279', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9832', '8', '0', '0', '2', '0', '25549', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9832', '9', '0', '0', '2', '0', '24344', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9832', '10', '0', '0', '2', '0', '28788', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9832', '11', '0', '0', '2', '0', '40643', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7923', '1', '0', '0', '1', '0', '51926', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7922', '1', '0', '0', '1', '0', '51926', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '344', '1', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '345', '4', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '347', '1', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '348', '1', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '349', '3', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '441', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1290', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1294', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6620', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7288', '2', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7301', '4', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7468', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7497', '4', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7949', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7952', '3', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7982', '3', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8103', '2', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8648', '2', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8884', '2', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8903', '1', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9123', '3', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9299', '3', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9427', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9478', '3', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9628', '2', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9709', '5', '0', '0', '2', '0', '38699', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9866', '2', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10139', '2', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10201', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10202', '4', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6059', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7173', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7290', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7324', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7855', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7856', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9114', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9476', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8806', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8833', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50253', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8375', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10027', '1', '0', '0', '15', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4559', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4558', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9615', '2', '0', '0', '8', '0', '11991', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3310', '1', '0', '0', '8', '0', '5384', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10215', '2', '0', '0', '9', '0', '13075', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4468', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4468', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4485', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4555', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2384', '1', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2384', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4572', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4562', '1', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4562', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6525', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7481', '0', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9614', '2', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10857', '2', '0', '0', '2', '0', '49698', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10858', '2', '0', '0', '2', '0', '49698', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4641', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4641', '1', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7948', '3', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10467', '0', '0', '0', '1', '0', '64810', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10468', '0', '0', '0', '1', '0', '64811', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10469', '0', '0', '0', '1', '0', '64812', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10470', '0', '0', '0', '1', '0', '64813', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10471', '0', '0', '0', '1', '0', '64814', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10472', '0', '0', '0', '1', '0', '64815', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10473', '0', '0', '0', '1', '0', '64816', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4101', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9477', '3', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4621', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4621', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '141', '4', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '141', '1', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '656', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '656', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '436', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '411', '4', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4511', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4511', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4509', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4509', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3645', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4523', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4523', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '64', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4522', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4522', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4512', '1', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4548', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4527', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4527', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4546', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4546', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4547', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4547', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7187', '1', '0', '0', '2', '0', '22628', '1', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3924', '1', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3923', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4545', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4545', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4539', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4513', '1', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4513', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4567', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4566', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4566', '1', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4505', '1', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4503', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2208', '0', '0', '0', '2', '0', '11511', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4555', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4604', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4507', '1', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4557', '1', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9280', '0', '0', '0', '2', '0', '35701', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1443', '0', '0', '0', '25', '0', '13028', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4604', '1', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4557', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4551', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8701', '0', '0', '0', '2', '0', '32734', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9678', '0', '0', '0', '2', '0', '40364', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4554', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7585', '0', '0', '0', '2', '0', '24573', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5675', '0', '0', '0', '2', '0', '18563', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5675', '1', '0', '0', '2', '0', '18564', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4531', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4531', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4532', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4573', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4532', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4534', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4534', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4520', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4662', '1', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4520', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4610', '1', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4603', '1', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4603', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3984', '1', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3984', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4525', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4472', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4472', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4609', '1', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4609', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4560', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4560', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4559', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4506', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4506', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4578', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4570', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4570', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4578', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '141', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '85', '4', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '436', '4', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '436', '1', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1323', '2', '0', '0', '2', '0', '10515', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10478', '1', '0', '0', '14', '0', '13668', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8308', '0', '0', '0', '25', '0', '36954', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6092', '0', '0', '0', '25', '0', '23486', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6094', '0', '0', '0', '25', '0', '23489', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3228', '0', '0', '0', '2', '0', '13370', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3651', '1', '0', '0', '2', '0', '13209', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3651', '2', '0', '0', '2', '0', '19812', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4017', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4017', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8098', '0', '0', '0', '16', '0', '178', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1522', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9156', '0', '0', '0', '2', '0', '34842', '10', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '126', '0', '0', '0', '2', '0', '7231', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8991', '2', '0', '0', '2', '0', '34135', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4503', '1', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4571', '1', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4466', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4466', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4011', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4011', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4579', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4579', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4544', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4537', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9112', '2', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7869', '2', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7857', '2', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10482', '0', '0', '0', '2', '0', '7586', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9113', '2', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7896', '1', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7889', '2', '0', '0', '2', '0', '31760', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9460', '1', '0', '0', '1', '0', '24755', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9499', '1', '0', '0', '2', '0', '31760', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10027', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1882', '0', '0', '0', '2', '0', '11227', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8301', '1', '0', '0', '2', '0', '30639', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9823', '0', '0', '0', '2', '0', '13704', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9823', '1', '0', '0', '2', '0', '31084', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9823', '2', '0', '0', '2', '0', '28395', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9823', '3', '0', '0', '2', '0', '5396', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9823', '4', '0', '0', '2', '0', '11000', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9823', '5', '0', '0', '2', '0', '24490', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9823', '8', '0', '0', '2', '0', '42482', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9823', '9', '0', '0', '2', '0', '13704', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9823', '10', '0', '0', '2', '0', '28395', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8088', '1', '0', '0', '2', '0', '24289', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9184', '0', '0', '0', '1', '0', '45963', '1', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7966', '1', '0', '0', '2', '0', '31084', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3142', '0', '0', '0', '2', '0', '11445', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9575', '0', '0', '0', '2', '0', '37859', '1', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10118', '2', '0', '0', '7', '0', '197', '420', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10118', '4', '0', '0', '7', '0', '197', '420', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9709', '6', '0', '0', '2', '0', '38699', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9709', '7', '0', '0', '2', '0', '38699', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5749', '0', '0', '0', '25', '0', '22704', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1541', '0', '0', '0', '2', '0', '10757', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7486', '0', '0', '0', '2', '0', '24226', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6799', '0', '0', '0', '25', '0', '26086', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4001', '0', '0', '0', '16', '0', '1097', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4651', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4651', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4654', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4654', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4660', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4660', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4661', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4661', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4685', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4685', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4686', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4686', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6648', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6648', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7264', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7264', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7366', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7366', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9580', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9580', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9990', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9990', '1', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4642', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4642', '1', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4643', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4643', '1', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4655', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4655', '1', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4656', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4656', '1', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4667', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4667', '1', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4681', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4681', '1', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4682', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4682', '1', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6628', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6628', '1', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7437', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7437', '1', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7566', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7566', '1', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4678', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4678', '1', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6647', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6647', '1', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7260', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7260', '1', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8111', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8111', '1', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4606', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4607', '1', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4607', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4644', '1', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4644', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4687', '1', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4687', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4688', '1', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4688', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7567', '1', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7567', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4645', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4649', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4649', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4650', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4650', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4653', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4653', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4683', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4683', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4684', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4684', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4696', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4696', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4697', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4697', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7263', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7263', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4510', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4510', '1', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8306', '1', '0', '0', '25', '0', '36955', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4573', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4574', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4574', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4665', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4665', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4666', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4666', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4679', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4679', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4680', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4680', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4691', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4691', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4692', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4692', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4801', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4801', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6649', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6649', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7265', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7265', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7349', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7349', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7438', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7438', '1', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6540', '1', '0', '0', '2', '0', '20416', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6540', '2', '0', '0', '2', '0', '20419', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6540', '3', '0', '0', '2', '0', '20418', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6540', '4', '0', '0', '2', '0', '20420', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6542', '0', '0', '0', '1', '0', '24748', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6542', '1', '0', '0', '1', '0', '24748', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6542', '2', '0', '0', '1', '0', '24748', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6542', '3', '0', '0', '1', '0', '24748', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6542', '4', '0', '0', '1', '0', '24748', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4575', '4', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4575', '1', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4576', '1', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4576', '4', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4577', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4577', '1', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4577', '4', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4658', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4658', '1', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4658', '4', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4659', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4659', '1', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4659', '4', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4676', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4676', '1', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4676', '4', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4690', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4690', '1', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4690', '4', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5061', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5061', '1', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5061', '4', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6650', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6650', '1', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6650', '4', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4647', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4647', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4648', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4648', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4657', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4657', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4674', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4674', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4675', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4675', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4693', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4693', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4694', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4694', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4695', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4695', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6652', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6652', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7262', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7262', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7368', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7368', '1', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7377', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7377', '1', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7467', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7467', '1', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7522', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7522', '1', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8110', '2', '0', '0', '25', '0', '63680', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8110', '1', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2703', '0', '0', '0', '2', '0', '12384', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7531', '0', '0', '0', '1', '0', '31609', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7449', '0', '0', '0', '1', '0', '31609', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10453', '0', '0', '0', '1', '0', '64805', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10454', '0', '0', '0', '1', '0', '64808', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10455', '0', '0', '0', '1', '0', '64809', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10456', '0', '0', '0', '1', '0', '64810', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10457', '0', '0', '0', '1', '0', '64811', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10458', '0', '0', '0', '1', '0', '64812', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10459', '0', '0', '0', '1', '0', '64813', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10460', '0', '0', '0', '1', '0', '64814', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10461', '0', '0', '0', '1', '0', '64815', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10462', '0', '0', '0', '1', '0', '64816', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8899', '0', '0', '0', '8', '0', '11256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1443', '1', '0', '0', '25', '0', '3451', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5381', '1', '0', '0', '7', '0', '129', '260', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5381', '2', '0', '0', '7', '0', '129', '290', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5382', '0', '0', '0', '7', '0', '129', '240', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5382', '1', '0', '0', '7', '0', '129', '260', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5382', '2', '0', '0', '7', '0', '129', '290', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4554', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '410', '2', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4518', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9574', '1', '0', '0', '2', '0', '37860', '1', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4519', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10723', '1', '0', '0', '25', '0', '34091', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10212', '1', '0', '0', '25', '0', '61472', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50014', '0', '0', '0', '1', '0', '72145', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '50014', '1', '0', '0', '1', '0', '72145', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10340', '0', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '0', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '1', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10340', '2', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '2', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '3', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '4', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '5', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '6', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '7', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '8', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10343', '9', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10383', '0', '0', '0', '1', '0', '63034', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7357', '2', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4677', '2', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4530', '2', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4471', '2', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4528', '2', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4645', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4610', '2', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4605', '2', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4551', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4549', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4568', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4537', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4535', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3926', '2', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3925', '2', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4505', '2', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4481', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4023', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4521', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4091', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4467', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5381', '0', '0', '0', '25', '0', '10841', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9572', '1', '0', '0', '25', '0', '39181', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8751', '0', '0', '0', '5', '0', '942', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4561', '4', '0', '0', '14', '0', '6681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4542', '4', '0', '0', '14', '0', '6681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4581', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4507', '2', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4550', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4524', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4664', '2', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4663', '2', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4473', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4529', '2', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4536', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3924', '2', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4504', '2', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4482', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4517', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '381', '2', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4470', '2', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4541', '2', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2304', '2', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9692', '2', '0', '0', '15', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9691', '2', '0', '0', '15', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5123', '2', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4475', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4502', '2', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2385', '2', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4662', '2', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9821', '2', '0', '0', '25', '0', '39181', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4544', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2383', '2', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4516', '2', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4512', '2', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4533', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4540', '2', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4541', '4', '0', '0', '14', '0', '6681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4101', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9693', '2', '0', '0', '15', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4526', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4561', '2', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4009', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4542', '2', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '523', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1403', '2', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3644', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4007', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4103', '2', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4525', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '12537', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4538', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4469', '2', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '410', '4', '0', '0', '14', '0', '6681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4540', '4', '0', '0', '14', '0', '6681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4571', '2', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4092', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4012', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '63', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4512', '4', '0', '0', '14', '0', '6681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4502', '4', '0', '0', '14', '0', '6681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4474', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4652', '2', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4569', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '411', '2', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '381', '4', '0', '0', '14', '0', '6681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4556', '2', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4515', '2', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3984', '4', '0', '0', '14', '0', '6681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4543', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4513', '4', '0', '0', '14', '0', '6681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4508', '2', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1047', '1', '0', '0', '2', '0', '9327', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1050', '1', '0', '0', '2', '0', '9327', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6559', '0', '0', '0', '2', '0', '20454', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6560', '0', '0', '0', '2', '0', '20455', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6561', '0', '0', '0', '2', '0', '20456', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4008', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4104', '2', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '655', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5849', '2', '0', '0', '12', '0', '10', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5848', '2', '0', '0', '12', '0', '10', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4484', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3645', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '85', '2', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4010', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8752', '0', '0', '0', '5', '0', '942', '7', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10144', '0', '0', '0', '25', '0', '54197', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4486', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1503', '2', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3921', '2', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3642', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8991', '1', '0', '0', '2', '0', '34135', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10144', '1', '0', '0', '25', '0', '54197', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4576', '2', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4575', '2', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4562', '4', '0', '0', '14', '0', '6681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2381', '2', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7931', '1', '0', '0', '1', '0', '50517', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7935', '1', '0', '0', '1', '0', '50517', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7925', '1', '0', '0', '1', '0', '50517', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8064', '1', '0', '0', '1', '0', '50517', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7927', '1', '0', '0', '1', '0', '50517', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7921', '1', '0', '0', '1', '0', '50517', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7898', '1', '0', '0', '1', '0', '50517', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7926', '1', '0', '0', '1', '0', '50517', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4553', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4552', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4558', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9832', '1', '0', '0', '8', '0', '10781', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9832', '2', '0', '0', '8', '0', '10781', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9832', '3', '0', '0', '6', '0', '469', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9832', '4', '0', '0', '6', '0', '67', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9832', '6', '0', '0', '2', '0', '35279', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9832', '7', '0', '0', '2', '0', '35280', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7923', '1', '0', '0', '1', '0', '50517', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7922', '1', '0', '0', '1', '0', '50517', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4559', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9615', '2', '0', '0', '14', '0', '12238', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4468', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4485', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2384', '2', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4572', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4562', '2', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4641', '2', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4621', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '141', '4', '0', '0', '14', '0', '6681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '656', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '436', '2', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '411', '4', '0', '0', '14', '0', '6681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4511', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4509', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4523', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '64', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4522', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4548', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4527', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4546', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4547', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3923', '2', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4545', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4539', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4513', '2', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4567', '2', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4566', '2', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4503', '2', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4555', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4604', '2', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4557', '2', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5675', '0', '0', '0', '2', '0', '18564', '1', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5675', '1', '0', '0', '2', '0', '18563', '1', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4531', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4573', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4532', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4534', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4520', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4603', '2', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3984', '2', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4472', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4609', '2', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4560', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4506', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4570', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4578', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '141', '2', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '85', '4', '0', '0', '14', '0', '6681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '436', '4', '0', '0', '14', '0', '6681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8308', '0', '0', '0', '7', '0', '202', '350', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6092', '0', '0', '0', '7', '0', '202', '260', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6094', '0', '0', '0', '7', '0', '202', '260', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3651', '1', '0', '0', '2', '0', '19812', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3651', '2', '0', '0', '2', '0', '13209', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4017', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1522', '2', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4466', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4011', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4579', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7889', '2', '0', '0', '25', '0', '39181', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9499', '1', '0', '0', '25', '0', '39181', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10027', '2', '0', '0', '15', '0', '32', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9575', '0', '0', '0', '2', '0', '37860', '1', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10118', '2', '0', '0', '25', '0', '56016', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10118', '4', '0', '0', '25', '0', '56017', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4651', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4654', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4660', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4661', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4685', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4686', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6648', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7264', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7366', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9580', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9990', '2', '0', '0', '15', '0', '128', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4642', '2', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4643', '2', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4655', '2', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4656', '2', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4667', '2', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4681', '2', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4682', '2', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6628', '2', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7437', '2', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7566', '2', '0', '0', '15', '0', '256', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4678', '2', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6647', '2', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7260', '2', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8111', '2', '0', '0', '15', '0', '2', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4606', '2', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4607', '2', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4644', '2', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4687', '2', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4688', '2', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7567', '2', '0', '0', '15', '0', '1024', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4649', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4650', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4653', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4683', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4684', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4696', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4697', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7263', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4510', '2', '0', '0', '15', '0', '1', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8306', '1', '0', '0', '7', '0', '202', '350', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4574', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4665', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4666', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4679', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4680', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4691', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4692', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4801', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6649', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7265', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7349', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7438', '2', '0', '0', '15', '0', '16', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6542', '1', '0', '0', '2', '0', '20432', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6542', '2', '0', '0', '2', '0', '20435', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6542', '3', '0', '0', '2', '0', '20433', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6542', '4', '0', '0', '2', '0', '20436', '1', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4575', '4', '0', '0', '14', '0', '6681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4576', '4', '0', '0', '14', '0', '6681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4577', '2', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4577', '4', '0', '0', '14', '0', '6681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4658', '2', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4658', '4', '0', '0', '14', '0', '6681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4659', '2', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4659', '4', '0', '0', '14', '0', '6681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4676', '2', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4676', '4', '0', '0', '14', '0', '6681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4690', '2', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4690', '4', '0', '0', '14', '0', '6681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5061', '2', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5061', '4', '0', '0', '14', '0', '6681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6650', '2', '0', '0', '15', '0', '8', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6650', '4', '0', '0', '14', '0', '6681', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4647', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4648', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4657', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4674', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4675', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4693', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4694', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4695', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '6652', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7262', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7368', '2', '0', '0', '15', '0', '4', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7377', '2', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7467', '2', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '7522', '2', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8110', '2', '0', '0', '15', '0', '64', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5381', '1', '0', '0', '25', '0', '18629', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5381', '2', '0', '0', '25', '0', '18630', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5382', '0', '0', '0', '25', '0', '10841', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5382', '1', '0', '0', '25', '0', '18629', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '5382', '2', '0', '0', '25', '0', '18630', '0', '0', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7675', '9369', '0', '0', '8', '0', '10107', '0', '0', '0', '0', '', 'Show different gossip if player has rewarded quest 10107');
REPLACE INTO `conditions` VALUES ('14', '7675', '9369', '0', '1', '8', '0', '10108', '0', '0', '0', '0', '', 'Show different gossip if player has rewarded quest 10108');

# TC
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=29488 AND `SourceEntry`=54568;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`Comment`) VALUES
(18,29488,54568,1,8,0,12670,0,0,0,'Required quest rewarded for spellclick'),
(18,29488,54568,2,28,0,12670,0,0,0,'Required quest completed for spellclick');

# NeatElves
# UPDATE `conditions` SET `ConditionValue2` = '3' WHERE `SourceTypeOrReferenceId` = 15 AND `ConditionTypeOrReference` = 27 AND `ConditionValue1` = 40 AND `ConditionValue2` = 1;
# UPDATE `conditions` SET `ConditionValue2` = '3' WHERE `SourceTypeOrReferenceId` = 15 AND `ConditionTypeOrReference` = 27 AND `ConditionValue1` = 10 AND `ConditionValue2` = 1;
# UPDATE `conditions` SET `NegativeCondition` = '1' WHERE `SourceTypeOrReferenceId` = 15 AND `ConditionTypeOrReference` = 25 AND `ConditionValue1` = 63680;

# Null
update ignore conditions set ConditionValue1 = 12657 where SourceGroup = 29488 and SourceEntry = 54568;
Insert ignore into conditions values (17,0,66588,0,0,31,1,3,34925,0,0,0,"",null), (17,0,66588,0,0,31,1,3,35092,0,0,0,"",null);

# Urban
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 6322, 0, 0, 8, 8070, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Paragons of Power: The Confessor''s Bindings is rewarded'),
(15, 6322, 0, 0, 26, 19842, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item  Zandalar Confessor''s Bindings'),
(15, 6322, 0, 1, 8, 8071, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Paragons of Power: The Confessor''s Mantle is rewarded'),
(15, 6322, 0, 1, 26, 19841, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Zandalar Confessor''s Mantle'),
(15, 6322, 0, 2, 8, 8061, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Paragons of Power: The Confessor''s Wraps is rewarded'),
(15, 6322, 0, 2, 26, 19843, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Zandalar Confessor''s Wraps'),
(15, 6322, 0, 3, 8, 8052, 0, 0, 0, '', 'Only allow gossip option to be visible if quest The All-Seeing Eye of Zuldazar is rewarded'),
(15, 6322, 0, 3, 26, 19594, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item The All-Seeing Eye of Zuldazar'),
(15, 6322, 0, 4, 8, 8049, 0, 0, 0, '', 'Only allow gossip option to be visible if quest The Eye of Zuldazar is rewarded'),
(15, 6322, 0, 4, 26, 19591, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item The Eye of Zuldazar'),
(15, 6322, 0, 5, 8, 8050, 0, 0, 0, '', 'Only allow gossip option to be visible if quest The Eye of Zuldazar is rewarded'),
(15, 6322, 0, 5, 26, 19592, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item The Eye of Zuldazar'),
(15, 6322, 0, 6, 8, 8051, 0, 0, 0, '', 'Only allow gossip option to be visible if quest The Eye of Zuldazar is rewarded'),
(15, 6322, 0, 6, 26, 19593, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item The Eye of Zuldazar'),
(15, 6322, 1, 0, 8, 8076, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Paragons of Power: The Demoniac''s Mantle is rewarded'),
(15, 6322, 1, 0, 26, 19849, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Zandalar Demoniac''s Mantle'),
(15, 6322, 1, 1, 8, 8077, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Paragons of Power: The Demoniac''s Robes is rewarded'),
(15, 6322, 1, 1, 26, 20033, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Zandalar Demoniac''s Robe'),
(15, 6322, 1, 2, 8, 8059, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Paragons of Power: The Demoniac''s Wraps is rewarded'),
(15, 6322, 1, 2, 26, 19848, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Zandalar Demoniac''s Wraps'),
(15, 6322, 1, 3, 8, 8109, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Kezan''s Unstoppable Taint is rewarded'),
(15, 6322, 1, 3, 26, 19605, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Kezan''s Unstoppable Taint'),
(15, 6322, 1, 4, 8, 8106, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Kezan''s Taint is rewarded'),
(15, 6322, 1, 4, 26, 19602, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Kezan''s Taint'),
(15, 6322, 1, 5, 8, 8107, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Kezan''s Taint is rewarded'),
(15, 6322, 1, 5, 26, 19603, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Kezan''s Taint'),
(15, 6322, 1, 6, 8, 8108, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Kezan''s Taint is rewarded'),
(15, 6322, 1, 6, 26, 19604, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Kezan''s Taint'),
(15, 6322, 2, 0, 8, 8068, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Paragons of Power: The Illusionist''s Mantle is rewarded'),
(15, 6322, 2, 0, 26, 19845, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Zandalar Illusionist''s Mantle'),
(15, 6322, 2, 1, 8, 8069, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Paragons of Power: The Illusionist''s Robes is rewarded'),
(15, 6322, 2, 1, 26, 20034, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Zandalar Illusionist''s Robe'),
(15, 6322, 2, 2, 8, 8060, 0, 0, 0, '', 'Only allow gossip option to be visible if quest Paragons of Power: The Illusionist''s Wraps is rewarded'),
(15, 6322, 2, 2, 26, 19846, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Zandalar Illusionist''s Wraps'),
(15, 6322, 2, 3, 8, 8104, 0, 0, 0, '', 'Only allow gossip option to be visible if quest The Jewel of Kajaro is rewarded'),
(15, 6322, 2, 3, 26, 19601, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Jewel of Kajaro'),
(15, 6322, 2, 4, 8, 8101, 0, 0, 0, '', 'Only allow gossip option to be visible if quest The Pebble of Kajaro is rewarded'),
(15, 6322, 2, 4, 26, 19598, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Pebble of Kajaro'),
(15, 6322, 2, 5, 8, 8102, 0, 0, 0, '', 'Only allow gossip option to be visible if quest The Pebble of Kajaro is rewarded'),
(15, 6322, 2, 5, 26, 19599, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Pebble of Kajaro'),
(15, 6322, 2, 6, 8, 8103, 0, 0, 0, '', 'Only allow gossip option to be visible if quest The Pebble of Kajaro is rewarded'),
(15, 6322, 2, 6, 26, 19600, 0, 0, 0, '', 'Only allow gossip option to be visible if player does not have item Pebble of Kajaro');

# Fix
UPDATE `quest_template` SET `RewardFactionId1` = 0, `RewardFactionValueId1` = 0 WHERE `Id` = 969;
UPDATE `quest_template` SET `RequiredSpellCast1` = 35113, `RequiredSpellCast2` = 35113, `RequiredSpellCast3` = 35113, `RequiredSpellCast4` = 35113 WHERE `id` = 10313;
UPDATE `quest_template` SET `RequiredSpellCast1` = 34526, `RequiredSpellCast2` = 34526 WHERE `id` = 10233;
UPDATE `quest_template` SET `RequiredSpellCast1` = 34646, `RequiredSpellCast2` = 34646, `RequiredSpellCast3` = 34646 WHERE `id` = 10240;
UPDATE `quest_template` SET `PrevQuestId`='0' WHERE `id`=11955;
UPDATE `quest_template` SET `PrevQuestId`='2860' WHERE `id` in (5145,5146,5148);
UPDATE `quest_template` SET `RequiredRaces`='0' WHERE `id` in (6606,969);
DELETE FROM `db_script_string` WHERE entry =  2000000011;
DELETE FROM `db_script_string` WHERE entry =  2000000443;
DELETE FROM `db_script_string` WHERE entry =  2000000607;
DELETE FROM `db_script_string` WHERE entry =  2000000608;
DELETE FROM `db_script_string` WHERE entry =  2000000609;
DELETE FROM `db_script_string` WHERE entry =  2000000610;
DELETE FROM `db_script_string` WHERE entry =  2000000611;
DELETE FROM `db_script_string` WHERE entry =  2000000612;
DELETE FROM `db_script_string` WHERE entry =  2000000613;
DELETE FROM `db_script_string` WHERE entry =  2000000616;
DELETE FROM `db_script_string` WHERE entry =  2000000617;
DELETE FROM `db_script_string` WHERE entry =  2000000618;
DELETE FROM `db_script_string` WHERE entry =  2000000619;
DELETE FROM `db_script_string` WHERE entry =  2000000620;
DELETE FROM `db_script_string` WHERE entry =  2000000621;
DELETE FROM `db_script_string` WHERE entry =  2000000622;
DELETE FROM `db_script_string` WHERE entry =  2000000623;
DELETE FROM `db_script_string` WHERE entry =  2000000624;
DELETE FROM `db_script_string` WHERE entry =  2000000625;
DELETE FROM `db_script_string` WHERE entry =  2000000626;
DELETE FROM `db_script_string` WHERE entry =  2000000627;
DELETE FROM `db_script_string` WHERE entry =  2000000628;
DELETE FROM `db_script_string` WHERE entry =  2000000629;
DELETE FROM `db_script_string` WHERE entry =  2000000630;
DELETE FROM `db_script_string` WHERE entry =  2000000631;
DELETE FROM `db_script_string` WHERE entry =  2000000635;
DELETE FROM `db_script_string` WHERE entry =  2000000636;
DELETE FROM `db_script_string` WHERE entry =  2000000637;
DELETE FROM `db_script_string` WHERE entry =  2000000638;
DELETE FROM `db_script_string` WHERE entry =  2000000639;
DELETE FROM `db_script_string` WHERE entry =  2000000640;
DELETE FROM `db_script_string` WHERE entry =  2000000641;
# DELETE FROM `db_script_string` WHERE entry =  2000000670;
# DELETE FROM `db_script_string` WHERE entry =  2000000671;
DELETE FROM `db_script_string` WHERE entry =  2000000680;
DELETE FROM `db_script_string` WHERE entry =  2000000681;
DELETE FROM `db_script_string` WHERE entry =  2000000682;
DELETE FROM `db_script_string` WHERE entry =  2000000685;
DELETE FROM `db_script_string` WHERE entry =  2000000686;
DELETE FROM `db_script_string` WHERE entry =  2000000687;
DELETE FROM `db_script_string` WHERE entry =  2000000688;
DELETE FROM `db_script_string` WHERE entry =  2000000689;
DELETE FROM `db_script_string` WHERE entry =  2000000690;
DELETE FROM `db_script_string` WHERE entry =  2000000691;
DELETE FROM `db_script_string` WHERE entry =  2000000692;
DELETE FROM `db_script_string` WHERE entry =  2000000693;
DELETE FROM `db_script_string` WHERE entry =  2000000694;
DELETE FROM `db_script_string` WHERE entry =  2000000695;
DELETE FROM `db_script_string` WHERE entry =  2000000696;
DELETE FROM `db_script_string` WHERE entry =  2000000697;
DELETE FROM `db_script_string` WHERE entry =  2000000698;
DELETE FROM `db_script_string` WHERE entry =  2000000699;
DELETE FROM `db_script_string` WHERE entry =  2000000700;
DELETE FROM `db_script_string` WHERE entry =  2000000701;
DELETE FROM `db_script_string` WHERE entry =  2000000702;
DELETE FROM `db_script_string` WHERE entry =  2000000703;
DELETE FROM `db_script_string` WHERE entry =  2000000704;
DELETE FROM `db_script_string` WHERE entry =  2000000705;
DELETE FROM `db_script_string` WHERE entry =  2000000709;
DELETE FROM `db_script_string` WHERE entry =  2000000712;
DELETE FROM `db_script_string` WHERE entry =  2000000713;
DELETE FROM `db_script_string` WHERE entry =  2000000730;
DELETE FROM `db_script_string` WHERE entry =  2000000731;
DELETE FROM `db_script_string` WHERE entry =  2000000733;
DELETE FROM `db_script_string` WHERE entry =  2000000734;
DELETE FROM `db_script_string` WHERE entry =  2000000735;
DELETE FROM `db_script_string` WHERE entry =  2000000745;
DELETE FROM `db_script_string` WHERE entry =  2000000746;
DELETE FROM `db_script_string` WHERE entry =  2000000747;
DELETE FROM `db_script_string` WHERE entry =  2000000748;
DELETE FROM `db_script_string` WHERE entry =  2000000749;
DELETE FROM `db_script_string` WHERE entry =  2000000750;
DELETE FROM `db_script_string` WHERE entry =  2000000751;
DELETE FROM `db_script_string` WHERE entry =  2000000752;
DELETE FROM `db_script_string` WHERE entry =  2000000753;
DELETE FROM `db_script_string` WHERE entry =  2000000754;
DELETE FROM `db_script_string` WHERE entry =  2000000755;
DELETE FROM `db_script_string` WHERE entry =  2000000756;
DELETE FROM `db_script_string` WHERE entry =  2000000757;
DELETE FROM `db_script_string` WHERE entry =  2000000606;


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

UPDATE version SET `cache_id`= '617';
UPDATE version SET `db_version`= 'YTDB_0.14.4_R617_TC_R15146_TDBAI_335.0.3_RuDB_R47';
