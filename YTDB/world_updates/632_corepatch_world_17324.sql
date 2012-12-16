# RENAME TABLE `ip2nationcountries` TO `ip2nationCountries`;

-- Insert creature_text from sniff
DELETE FROM `creature_text` WHERE `entry` IN (27923,27933);
INSERT IGNORE INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(27923,0,0,'Hang on to your hat, $N! To Scalawag we go!',12,0,100,0,0,0,'Lou the Cabin Boy'),
(27923,1,0,'YAAARRRRR! Here we be, matey! Scalawag Point!',12,0,100,0,0,0,'Lou the Cabin Boy'),
(27933,0,0,'Enjoy the ride! It''s a one way trip!',12,0,100,3,0,0,'Alanya');
-- SmartAIs
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=27933;
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=23816;
DELETE FROM `smart_scripts` WHERE `entryorguid`=23859 AND `source_type`=0 AND `id` IN (3,4); -- this npc had already a SmartAI so deleting just the new lines
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23816,24896,27933,28277) AND `source_type`=0;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(23816,0,0,2,62,0,100,0,8894,0,0,0,85,43074,0,0,0,0,0,7,0,0,0,0,0,0,0,'Bathandler Camille - On gossip select - Invoker spellcast'),
(23816,0,1,2,62,0,100,0,8894,1,0,0,85,43136,0,0,0,0,0,7,0,0,0,0,0,0,0,'Bathandler Camille - On gossip select - Invoker spellcast'),
(23816,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Bathandler Camille - On gossip select - Close gossip'),
(23859,0,3,4,62,0,100,0,9546,1,0,0,11,48862,0,0,0,0,0,7,0,0,0,0,0,0,0,'Greer Orehammer - On gossip select - Invoker spellcast'),
(23859,0,4,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Greer Orehammer - On gossip select - Close gossip'),
(24896,0,0,1,62,0,100,0,9045,0,0,0,11,50004,0,0,0,0,0,7,0,0,0,0,0,0,0,'Lou the Cabin Boy - On gossip select - Spellcast'),
(24896,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Lou the Cabin Boy - On gossip select - Close gossip'),
(27933,0,0,1,62,0,100,0,9621,0,0,0,11,50038,0,0,0,0,0,7,0,0,0,0,0,0,0,'Alanya - On gossip select - Spellcast'),
(27933,0,1,2,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Alanya - On gossip select - Close gossip'),
(27933,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Alanya - On gossip select - Say line'),
(28277,0,0,1,62,0,100,0,10218,0,0,0,11,61604,0,0,0,0,0,7,0,0,0,0,0,0,0,'Harry''s Bomber - On gossip select - Spellcast'),
(28277,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Harry''s Bomber - On gossip select - Close gossip');
# DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=24896; -- that was absolutely not correct
DELETE FROM `spell_target_position` WHERE `id` IN (50005,50039,61605);
INSERT IGNORE INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(50005,571,595.208,-2796.47,-0.124098,3.66519), -- Summon Lou the Cabin Boy
(50039,571,-170.469,-3588.19,-0.221146,4.2586), -- Summon Harry's Bomber
(61605,571,89.7416,-6286.08,1.17903,1.58825); -- Summon Harry's Bomber
DELETE FROM `game_event_creature_quest` WHERE (`id`=25883 AND `quest`=11805) OR (`id`=25887 AND `quest`=11804) OR (`id`=25888 AND `quest`=11806) OR (`id`=25889 AND `quest`=11807) OR (`id`=25890 AND `quest`=11808) OR (`id`=25891 AND `quest`=11809) OR (`id`=25892 AND `quest`=11810) OR (`id`=25893 AND `quest`=11811) OR (`id`=25894 AND `quest`=11812) OR (`id`=25895 AND `quest`=11813) OR (`id`=25896 AND `quest`=11814) OR (`id`=25897 AND `quest`=11815) OR (`id`=25898 AND `quest`=11816) OR (`id`=25899 AND `quest`=11817) OR (`id`=25900 AND `quest`=11818) OR (`id`=25901 AND `quest`=11819) OR (`id`=25902 AND `quest`=11820) OR (`id`=25903 AND `quest`=11821) OR (`id`=25904 AND `quest`=11822) OR (`id`=25905 AND `quest`=11823) OR (`id`=25906 AND `quest`=11824) OR (`id`=25907 AND `quest`=11825) OR (`id`=25908 AND `quest`=11826) OR (`id`=25909 AND `quest`=11827) OR (`id`=25910 AND `quest`=11583) OR (`id`=25911 AND `quest`=11828) OR (`id`=25912 AND `quest`=11829) OR (`id`=25913 AND `quest`=11830) OR (`id`=25914 AND `quest`=11831) OR (`id`=25915 AND `quest`=11832) OR (`id`=25916 AND `quest`=11833) OR (`id`=25917 AND `quest`=11834) OR (`id`=32801 AND `quest`=13485) OR (`id`=32802 AND `quest`=13486) OR (`id`=32806 AND `quest`=13490) OR (`id`=32807 AND `quest`=13491) OR (`id`=32808 AND `quest`=13492);
INSERT IGNORE INTO `game_event_creature_quest` (`eventEntry`, `id`, `quest`) VALUES
(1, 25883, 11805),
(1, 25887, 11804),
(1, 25888, 11806),
(1, 25889, 11807),
(1, 25890, 11808),
(1, 25891, 11809),
(1, 25892, 11810),
(1, 25893, 11811),
(1, 25894, 11812),
(1, 25895, 11813),
(1, 25896, 11814),
(1, 25897, 11815),
(1, 25898, 11816),
(1, 25899, 11817),
(1, 25900, 11818),
(1, 25901, 11819), -- Deleted in cata, taking from 3.x sniff
(1, 25902, 11820),
(1, 25903, 11821),
(1, 25904, 11822),
(1, 25905, 11823),
(1, 25906, 11824),
(1, 25907, 11825),
(1, 25908, 11826),
(1, 25909, 11827),
(1, 25910, 11583),
(1, 25911, 11828),
(1, 25912, 11829),
(1, 25913, 11830),
(1, 25914, 11831),
(1, 25915, 11832),
(1, 25916, 11833),
(1, 25917, 11834),
(1, 32801, 13485),
(1, 32802, 13486),
(1, 32806, 13490),
(1, 32807, 13491),
(1, 32808, 13492);
-- Add quest relation to Gameobject (fire)
DELETE FROM `game_event_gameobject_quest` WHERE (`id`=187559 AND `quest`=11580) OR (`id`=187564 AND `quest`=11581) OR (`id`=187914 AND `quest`=11732) OR (`id`=187916 AND `quest`=11734) OR (`id`=187917 AND `quest`=11735) OR (`id`=187919 AND `quest`=11736) OR (`id`=187920 AND `quest`=11737) OR (`id`=187921 AND `quest`=11738) OR (`id`=187922 AND `quest`=11739) OR (`id`=187923 AND `quest`=11740) OR (`id`=187924 AND `quest`=11741) OR (`id`=187925 AND `quest`=11742) OR (`id`=187926 AND `quest`=11743) OR (`id`=187927 AND `quest`=11744) OR (`id`=187928 AND `quest`=11745) OR (`id`=187929 AND `quest`=11746) OR (`id`=187930 AND `quest`=11747) OR (`id`=187931 AND `quest`=11748) OR (`id`=187932 AND `quest`=11749) OR (`id`=187933 AND `quest`=11750) OR (`id`=187934 AND `quest`=11751) OR (`id`=187935 AND `quest`=11752) OR (`id`=187936 AND `quest`=11753) OR (`id`=187937 AND `quest`=11754) OR (`id`=187938 AND `quest`=11755) OR (`id`=187939 AND `quest`=11756) OR (`id`=187940 AND `quest`=11757) OR (`id`=187941 AND `quest`=11758) OR (`id`=187942 AND `quest`=11759) OR(`id`=187943 AND `quest`=11760) OR (`id`=187944 AND `quest`=11761) OR (`id`=187945 AND `quest`=11762) OR  (`id`=187946 AND `quest`=11763) OR (`id`=187947 AND `quest`=11764) OR (`id`=187948 AND `quest`=11765) OR (`id`=187949 AND `quest`=11799) OR (`id`=187950 AND `quest`=11800) OR (`id`=187951 AND `quest`=11801) OR (`id`=187952 AND `quest`=11802) OR (`id`=187953 AND `quest`=11803) OR (`id`=187954 AND `quest`=11766) OR (`id`=187955 AND `quest`=11767) OR (`id`=187956 AND `quest`=11768) OR (`id`=187957 AND `quest`=11769) OR (`id`=187958 AND `quest`=11770) OR (`id`=187959 AND `quest`=11771) OR (`id`=187960 AND `quest`=11772) OR (`id`=187961 AND `quest`=11773) OR (`id`=187962 AND `quest`=11774) OR (`id`=187963 AND `quest`=11775) OR (`id`=187964 AND `quest`=11776) OR (`id`=187965 AND `quest`=11777) OR (`id`=187966 AND `quest`=11778) OR (`id`=187967 AND `quest`=11779) OR (`id`=187968 AND `quest`=11780) OR (`id`=187969 AND `quest`=11781) OR (`id`=187970 AND `quest`=11782) OR (`id`=187971 AND `quest`=11783) OR (`id`=187972 AND `quest`=11784) OR (`id`=187974 AND `quest`=11786) OR (`id`=187975 AND `quest`=11787) OR (`id`=194032 AND `quest`=13440) OR (`id`=194033 AND `quest`=13441) OR (`id`=194034 AND `quest`=13450) OR (`id`=194035 AND `quest`=13442) OR (`id`=194043 AND `quest`=13455) OR (`id`=194044 AND `quest`=13446) OR (`id`=194045 AND `quest`=13447) OR (`id`=194046 AND `quest`=13457) OR (`id`=194048 AND `quest`=13458) OR (`id`=194049 AND `quest`=13449);
INSERT IGNORE INTO `game_event_gameobject_quest` (`eventEntry`, `id`, `quest`) VALUES
(1, 187559, 11580),
(1, 187564, 11581),
(1, 187914, 11732),
(1, 187916, 11734),
(1, 187917, 11735),
(1, 187919, 11736),
(1, 187920, 11737),
(1, 187921, 11738),
(1, 187922, 11739),
(1, 187923, 11740),
(1, 187924, 11741),
(1, 187925, 11742),
(1, 187926, 11743),
(1, 187927, 11744),
(1, 187928, 11745),
(1, 187929, 11746),
(1, 187930, 11747),
(1, 187931, 11748), -- Deleted in cata, taking from 3.x sniff
(1, 187932, 11749),
(1, 187933, 11750),
(1, 187934, 11751),
(1, 187935, 11752),
(1, 187936, 11753),
(1, 187937, 11754),
(1, 187938, 11755),
(1, 187939, 11756),
(1, 187940, 11757),
(1, 187941, 11758),
(1, 187942, 11759),
(1, 187943, 11760),
(1, 187944, 11761),
(1, 187945, 11762),
(1, 187946, 11763),
(1, 187947, 11764),
(1, 187948, 11765),
(1, 187949, 11799),
(1, 187950, 11800),
(1, 187951, 11801),
(1, 187952, 11802),
(1, 187953, 11803),
(1, 187954, 11766),
(1, 187955, 11767),
(1, 187956, 11768),
(1, 187957, 11769),
(1, 187958, 11770),
(1, 187959, 11771),
(1, 187960, 11772),
(1, 187961, 11773),
(1, 187962, 11774),
(1, 187963, 11775),
(1, 187964, 11776),
(1, 187965, 11777),
(1, 187966, 11778),
(1, 187967, 11779),
(1, 187968, 11780),
(1, 187969, 11781),
(1, 187970, 11782),
(1, 187971, 11783),
(1, 187972, 11784),
(1, 187974, 11786),
(1, 187975, 11787),
(1, 194032, 13440),
(1, 194033, 13441),
(1, 194034, 13450),
(1, 194035, 13442),
(1, 194043, 13455),
(1, 194044, 13446),
(1, 194045, 13447),
(1, 194046, 13457),
(1, 194048, 13458),
(1, 194049, 13449);
-- Fix Jormungar Tunneler
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=26467;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=26467;
DELETE FROM `smart_scripts` WHERE `entryorguid`=26467 AND `source_type`=0;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(26467,0,0,0,11,0,100,0,0,0,0,0,11,47677,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jormungar Tunneler - On spawn - Spellcast Jormungar Tunnel Passive'),
(26467,0,1,0,21,0,100,0,0,0,0,0,11,47677,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jormungar Tunneler - On reached homeposition - Spellcast Jormungar Tunnel Passive'),
(26467,0,2,0,1,0,100,0,3000,5000,15000,18000,11,51879,0,0,0,0,0,2,0,0,0,0,0,0,0,'Jormungar Tunneler - On update (IC) - Spellcast Corrode Flesh'),
(26467,0,3,0,4,0,100,0,0,0,0,0,28,47677,0,0,0,0,0,1,0,0,0,0,0,0,0,'Jormungar Tunneler - On aggro - Remove Jormungar Tunnel Passive');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`IN(27254,30845,34300);
DELETE FROM `creature_ai_scripts` WHERE `creature_id`IN(27254,30845,34300);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (27254,30845,34300) AND `source_type`=0;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- Emerald Lasher
(27254,0,0,2,11,0,100,0,0,0,0,0,90,9,0,0,0,0,0,1,0,0,0,0,0,0,0,'Emerald Lasher - On spawn - Set unitfield_bytes1 9 (submerged)'),
(27254,0,1,2,21,0,100,0,0,0,0,0,90,9,0,0,0,0,0,1,0,0,0,0,0,0,0,'Emerald Lasher - On reached homeposition - Set unitfield_bytes1 9 (submerged)'),
(27254,0,2,0,61,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Emerald Lasher - Linked with event 0 or 1 - Disable combat movement'),
(27254,0,3,0,4,0,100,0,0,0,0,0,11,37752,0,0,0,0,0,1,0,0,0,0,0,0,0,'Emerald Lasher - On aggro - Spellcast Stand'),
(27254,0,4,0,0,0,100,0,1500,1500,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Emerald Lasher - On update (IC) - Enable combat movement'),
(27254,0,5,0,0,0,100,0,4000,7000,9000,13000,11,51901,0,0,0,0,0,2,0,0,0,0,0,0,0,'Emerald Lasher - On update (IC) - Spellcast Dream Lash'),
-- Living Lasher
(30845,0,0,2,11,0,100,0,0,0,0,0,90,9,0,0,0,0,0,1,0,0,0,0,0,0,0,'Living Lasher - On spawn - Set unitfield_bytes1 9 (submerged)'),
(30845,0,1,2,21,0,100,0,0,0,0,0,90,9,0,0,0,0,0,1,0,0,0,0,0,0,0,'Living Lasher - On reached homeposition - Set unitfield_bytes1 9 (submerged)'),
(30845,0,2,0,61,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Living Lasher - Linked with event 0 or 1 - Disable combat movement'),
(30845,0,3,0,4,0,100,0,0,0,0,0,11,37752,0,0,0,0,0,1,0,0,0,0,0,0,0,'Living Lasher - On aggro - Spellcast Stand'),
(30845,0,4,0,0,0,100,0,1500,1500,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Living Lasher - On update (IC) - Enable combat movement'),
(30845,0,5,0,0,0,100,0,4000,7000,9000,13000,11,51901,0,0,0,0,0,2,0,0,0,0,0,0,0,'Living Lasher - On update (IC) - Spellcast Dream Lash'),
-- 34300 Mature Lasher
(34300,0,0,2,11,0,100,0,0,0,0,0,90,9,0,0,0,0,0,1,0,0,0,0,0,0,0,'Mature Lasher - On spawn - Set unitfield_bytes1 9 (submerged)'),
(34300,0,1,2,21,0,100,0,0,0,0,0,90,9,0,0,0,0,0,1,0,0,0,0,0,0,0,'Mature Lasher - On reached homeposition - Set unitfield_bytes1 9 (submerged)'),
(34300,0,2,0,61,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Mature Lasher - Linked with event 0 or 1 - Disable combat movement'),
(34300,0,3,0,4,0,100,0,0,0,0,0,11,37752,0,0,0,0,0,1,0,0,0,0,0,0,0,'Mature Lasher - On aggro - Spellcast Stand'),
(34300,0,4,0,0,0,100,0,1500,1500,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Mature Lasher - On update (IC) - Enable combat movement'),
(34300,0,5,0,0,0,100,0,4000,7000,9000,13000,11,51901,0,0,0,0,0,2,0,0,0,0,0,0,0,'Mature Lasher - On update (IC) - Spellcast Dream Lash');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (27203,30058);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-102199,-105487,-105488,-105489,-105495,-131055,-131056,-131058,-131059) AND `source_type`=0;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-117758,0,0,0,25,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Onslaught Footman - On reset - Set event phase 1'),
(-117758,0,1,2,1,1,100,0,2000,2000,12000,14000,11,48115,0,0,0,0,0,19,27222,30,0,0,0,0,0,'Onslaught Footman - On OOC update (phase 1) - Spellcast Shoot on Archery Target'),
(-117758,0,2,0,61,1,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Onslaught Footman - On OOC update (phase 1) - Set event phase 2'),
(-117758,0,3,4,1,2,100,0,16000,18000,16000,18000,11,48117,0,0,0,0,0,19,27223,30,0,0,0,0,0,'Onslaught Footman - On OOC update (phase 2) - Spellcast Shoot on Archery Target'),
(-117758,0,4,0,61,2,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Onslaught Footman - On OOC update (phase 2) - Set event phase 4'),
(-112657,0,0,0,1,0,100,0,2000,2000,0,0,11,55840,0,0,0,0,0,10,112592,0,0,0,0,0,0,'Warden of the Chamber - On reset - Spellcast Blue Wyrmrest Warden Beam'),
(-112659,0,0,0,1,0,100,0,2000,2000,0,0,11,55841,0,0,0,0,0,10,112593,0,0,0,0,0,0,'Warden of the Chamber - On reset - Spellcast Yellow Wyrmrest Warden Beam'),
(-112663,0,0,0,1,0,100,0,2000,2000,0,0,11,55841,0,0,0,0,0,10,112593,0,0,0,0,0,0,'Warden of the Chamber - On reset - Spellcast Yellow Wyrmrest Warden Beam'),
(-112660,0,0,0,1,0,100,0,2000,2000,0,0,11,55840,0,0,0,0,0,10,112592,0,0,0,0,0,0,'Warden of the Chamber - On reset - Spellcast Blue Wyrmrest Warden Beam'),
(-112658,0,0,0,1,0,100,0,2000,2000,0,0,11,55838,0,0,0,0,0,10,112589,0,0,0,0,0,0,'Warden of the Chamber - On reset - Spellcast Green Wyrmrest Warden Beam'),
(-112661,0,0,0,1,0,100,0,2000,2000,0,0,11,55824,0,0,0,0,0,10,112591,0,0,0,0,0,0,'Warden of the Chamber - On reset - Spellcast Red Wyrmrest Warden Beam'),
(-112662,0,0,0,1,0,100,0,2000,2000,0,0,11,55838,0,0,0,0,0,10,112589,0,0,0,0,0,0,'Warden of the Chamber - On reset - Spellcast Green Wyrmrest Warden Beam'),
(-112656,0,0,0,1,0,100,0,2000,2000,0,0,11,55824,0,0,0,0,0,10,112591,0,0,0,0,0,0,'Warden of the Chamber - On reset - Spellcast Red Wyrmrest Warden Beam');
DELETE FROM `smart_scripts` WHERE `entryorguid`=24957 AND `source_type`=0 AND `id` IN (1,3);
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(24957,0,1,0,11,0,100,0,0,0,0,0,11,45820,0,0,0,0,0,9,24021,0,30,0,0,0,0,'Cult Plaguebringer - On spawn - Spellcast Plague Cauldron Beam'),
(24957,0,3,0,21,0,100,0,0,0,0,0,11,45820,0,0,0,0,0,9,24021,0,30,0,0,0,0,'Cult Plaguebringer - On reached homeposition - Spellcast Plague Cauldron Beam');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (26500);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (26543,26701,26787);
DELETE FROM `creature_text` WHERE `entry`=26500;
INSERT IGNORE INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(26500,0,0,'I''ll be waitin'' for ya, mon.',15,0,100,0,0,0,'Image of Drakuru');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,47110,0,0,31,0,3,26498,0,0,0,'','Spell Summon Drakuru''s Image targets Drakuru''s Bunny 01'),
(13,1,47110,0,1,31,0,3,26559,0,0,0,'','Spell Summon Drakuru''s Image targets Drakuru''s Bunny 02'),
(13,1,47110,0,2,31,0,3,26700,0,0,0,'','Spell Summon Drakuru''s Image targets Drakuru''s Bunny 03'),
(13,1,47110,0,3,31,0,3,26789,0,0,0,'','Spell Summon Drakuru''s Image targets Drakuru''s Bunny 04'),
(13,1,47110,0,4,31,0,3,28015,0,0,0,'','Spell Summon Drakuru''s Image targets Drakuru''s Bunny 05');
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=188458;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (26498,26559,26700,26789);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (26498,26500,26543,26559,26700,26701,26787,26789) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=26423 AND `source_type`=0 AND `id` IN (2,3);
DELETE FROM `smart_scripts` WHERE `entryorguid`=188458 AND `source_type`=1;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(26423,0,2,3,62,0,100,0,9615,1,0,0,85,50021,0,0,0,0,0,7,0,0,0,0,0,0,0,'Drakuru - On gossip option select - Invoker spellcast Replace Drakuru''s Elixir'),
(26423,0,3,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Drakuru - On gossip option select - Close gossip'),
(26498,0,0,0,8,0,100,0,47110,0,0,0,11,47117,0,0,0,0,0,7,0,0,0,0,0,0,0,'Drakuru''s Bunny 01 - On spellhit - Spellcast Script Cast Summon Image of Drakuru'),
(26500,0,0,1,19,0,100,0,12007,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Image of Drakuru - On quest accepted - Say text'),
(26500,0,1,0,61,0,100,0,12007,0,0,0,11,47122,0,0,0,0,0,7,0,0,0,0,0,0,0,'Image of Drakuru - On quest accepted - Spellcast Strip Detect Drakuru'),
(26543,0,0,1,19,0,100,0,12042,0,0,0,11,47308,0,0,0,0,0,7,0,0,0,0,0,0,0,'Image of Drakuru - On quest accepted - Spellcast Strip Detect Drakuru 02'),
(26559,0,0,0,8,0,100,0,47110,0,0,0,11,47149,0,0,0,0,0,7,0,0,0,0,0,0,0,'Drakuru''s Bunny 02 - On spellhit - Spellcast Script Cast Summon Image of Drakuru 02'),
(26700,0,0,0,8,0,100,0,47110,0,0,0,11,47316,0,0,0,0,0,7,0,0,0,0,0,0,0,'Drakuru''s Bunny 03 - On spellhit - Spellcast Script Cast Summon Image of Drakuru 03'),
(26701,0,0,1,19,0,100,0,12068,0,0,0,11,47403,0,0,0,0,0,7,0,0,0,0,0,0,0,'Image of Drakuru - On quest accepted - Spellcast Strip Detect Drakuru 03'),
(26787,0,0,1,19,0,100,0,12238,0,0,0,11,48417,0,0,0,0,0,7,0,0,0,0,0,0,0,'Image of Drakuru - On quest accepted - Spellcast Strip Detect Drakuru 04'),
(26789,0,0,0,8,0,100,0,47110,0,0,0,11,47405,0,0,0,0,0,7,0,0,0,0,0,0,0,'Drakuru''s Bunny 04 - On spellhit - Spellcast Script Cast Summon Image of Drakuru 04'),
(188458,1,0,1,62,0,100,0,9426,0,0,0,85,47293,0,0,0,0,0,7,0,0,0,0,0,0,0,'Seer of Zeb''Halak - On gossip option select - Invoker spellcast Create Eye of the Prophets'),
(188458,1,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Seer of Zeb''Halak - On gossip option select - Close gossip');
DELETE FROM `spell_scripts` WHERE `id` IN (47117,47149,47316,47405,50439);
INSERT IGNORE INTO `spell_scripts` (`id`,`effIndex`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(47117,0,0,15,47118,2,0,0,0,0,0), -- Script Cast Summon Image of Drakuru - Spellcast Envision Drakuru
(47149,0,0,15,47150,2,0,0,0,0,0), -- Script Cast Summon Image of Drakuru 02 - Spellcast Envision Drakuru
(47316,0,0,15,47317,2,0,0,0,0,0), -- Script Cast Summon Image of Drakuru 03 - Spellcast Envision Drakuru
(47405,0,0,15,47406,2,0,0,0,0,0), -- Script Cast Summon Image of Drakuru 04 - Spellcast Envision Drakuru
(50439,0,0,15,50440,2,0,0,0,0,0); -- Script Cast Summon Image of Drakuru 05 - Spellcast Envision Drakuru
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (-47122,-47308,-47403,-48417);
INSERT IGNORE INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(-47122,-47118,0,'On Strip Detect Drakuru fade - Remove Envision Drakuru'),
(-47308,-47150,0,'On Strip Detect Drakuru 02 fade - Remove Envision Drakuru'),
(-47403,-47317,0,'On Strip Detect Drakuru 03 fade - Remove Envision Drakuru'),
(-48417,-47406,0,'On Strip Detect Drakuru 04 fade - Remove Envision Drakuru');
INSERT IGNORE INTO `game_event_creature_quest` (`eventEntry`,`id`,`quest`) VALUES (26,18927,14022);
DELETE FROM `player_factionchange_items` WHERE `alliance_id` IN (15198, 47937);
INSERT IGNORE INTO `player_factionchange_items` (`race_A`, `alliance_id`, `commentA`, `race_H`, `horde_id`, `commentH`) VALUES
(0, 15198, 'Knight\'s Colors', 0, 15199, 'Stone Guard\'s Herald'),
(0, 47937, 'Girdle of the Nether Champion', 0, 48009, 'Belt of the Nether Champion');
DELETE FROM `trinity_string` WHERE `entry` IN (5018,5019);
UPDATE `trinity_string` SET `content_default`= '[Raid]' WHERE `entry`=5017;
SET @ENTRY_SPIRIT_SHADE := 15261;
SET @ENTRY_LETHON := 14888;
SET @SPELL_DARK_OFFERING := 24804;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY_SPIRIT_SHADE;
UPDATE `creature_template` SET `AIName`= '',`ScriptName`= 'npc_spirit_shade' WHERE `entry`=@ENTRY_SPIRIT_SHADE;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY_SPIRIT_SHADE AND `source_type`=0;
DELETE FROM `creature_template_addon` WHERE `entry`=@ENTRY_SPIRIT_SHADE;
INSERT IGNORE INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`auras`) VALUES
(@ENTRY_SPIRIT_SHADE,0,0,0, '24809');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13,1,@SPELL_DARK_OFFERING,0,0,31,0,3,@ENTRY_LETHON,0,0,0, '', 'Dark offering can only target Lethon');
UPDATE `creature_template` SET `VehicleId`=220,`spell1`=56091,`spell2`=56092,`spell3`=57090,`spell4`=57143,`spell5`=57108,`spell6`=57092,`spell7`=60534,`InhabitType`=5 WHERE `entry`=31752;
UPDATE `creature_template` SET `VehicleId`=220,`spell1`=56091,`spell2`=56092,`spell3`=57090,`spell4`=57143,`spell5`=57108,`spell6`=57092,`spell7`=60534,`InhabitType`=5 WHERE `entry`=30161;
-- Add support for {Q} Corrupted Sabers ID: 4506 (Issue 2297)
SET @CommonKitten:=9937;
SET @CorruptedKitten :=9936;
SET @SGossip :=55002; -- Gossip for Kitten when near quest giver
SET @SpellVisual :=16510; -- Turn Kitten in Saber
SET @Winna   :=9996;  -- Winna Hazzard
SET @Saber   :=10042; -- Big green cat
-- Add SAI support for Corrupted Kitten
UPDATE `creature_template` SET `AIName`='SmartAI',`gossip_menu_id`=@SGossip,`npcflag`=1 WHERE `entry`=@CorruptedKitten;
UPDATE `creature_template` SET `AIName`='SmartAI',`gossip_menu_id`=@SGossip,`npcflag`=1 WHERE `entry`=@CommonKitten;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@CorruptedKitten,@CommonKitten);
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@CommonKitten,0,0,1,54,0,100,0,0,0,0,0,36,@CorruptedKitten,0,0,0,0,0,1,0,0,0,0,0,0,0,'Common Kitten - On spawn - Change template to corrupted one'),
(@CommonKitten,0,1,2,61,0,100,0,0,0,0,0,11,@SpellVisual,0,0,0,0,0,1,0,0,0,0,0,0,0,'Common Kitten - On OOC of 10 sec - Cast Corrupted Saber visual to self'),
(@CommonKitten,0,2,0,61,0,100,0,0,0,0,0,3,@Saber,0,0,0,0,0,1,0,0,0,0,0,0,0,'Common Kitten - Linked with previous event - Morph to Corrupted Saber'),
(@CommonKitten,0,3,4,62,0,100,0,@SGossip,1,0,0,26,4506,0,0,0,0,0,7,0,0,0,0,0,0,0,'Common Kitten - On Gossip Select - Award quest,since no credit'),
(@CommonKitten,0,4,5,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Common Kitten - Linked with previous event - Close gossip'),
(@CommonKitten,0,5,6,61,0,100,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Common Kitten - Linked with previous event - Set unseen'),
(@CommonKitten,0,6,0,61,0,100,0,0,0,0,0,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Common Kitten - Linked with previous event - Despawn in 1 sec');
-- Insert Gossip /custom made id/
DELETE FROM `gossip_menu_option` WHERE `menu_id`=@SGossip AND `id`=1;
INSERT IGNORE INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`) VALUES
(@SGossip,1,0,'I want to release the saber to Winna.',1,131,0);
-- Only show gossip if near Winna
DELETE FROM `conditions` WHERE `SourceGroup`=@SGOSSIP AND `SourceTypeOrReferenceId`=15;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,@SGOSSIP,1,0,29,1,@Winna,5,0,0,0,'','Only show second gossip Corrupted Saber is near Wina in 5 yards');
-- Fix for Prepping the Speech by Gecko32 (Issue 2399)
SET @MEKKATORQUE :=39712;
SET @OZZIE       :=1268;
SET @MILLI       :=7955;
SET @TOG         :=6119;
-- Add creature text for npc's
DELETE FROM `creature_text` WHERE `entry`=@MEKKATORQUE;
DELETE FROM `creature_text` WHERE `entry`=@OZZIE;
DELETE FROM `creature_text` WHERE `entry`=@MILLI;
DELETE FROM `creature_text` WHERE `entry`=@TOG;
INSERT IGNORE INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@MEKKATORQUE,0,0,'They may take our lives, but they''ll never take...',12,0,100,0,0,0,'High Tinker Mekkatorque to Milli Featherwhistle 1'),
(@MEKKATORQUE,1,0,'...our INNOVATION!',12,0,100,0,0,0,'High Tinker Mekkatorque to Milli Featherwhistle 2'),
(@MEKKATORQUE,2,0,'What I want out of each and every one of you is a hard-target search of every refuelling station, residence, warehouse, farmhouse, henhouse, outhouse, and doghouse in this area.',12,0,100,0,0,0,'High Tinker Mekkatorque to Ozzie Togglevolt 1'),
(@MEKKATORQUE,3,0,'Your fugitive''s name is Mekgineer Thermaplugg.',12,0,100,0,0,0,'High Tinker Mekkatorque to Ozzie Togglevolt 2'),
(@MEKKATORQUE,4,0,'Go get him.',12,0,100,0,0,0,'High Tinker Mekkatorque to Ozzie Togglevolt 3'),
(@MEKKATORQUE,5,0,'We will not go quietly into the night! We will not vanish without a fight!',12,0,100,0,0,0,'High Tinker Mekkatorque to Tog Rustsprocket 1'),
(@MEKKATORQUE,6,0,'We''re going to live on! We''re going to survive! Today we celebrate...',12,0,100,0,0,0,'High Tinker Mekkatorque to Tog Rustsprocket 2'),
(@MEKKATORQUE,7,0,'...our Autonomy Day!',12,0,100,0,0,0,'High Tinker Mekkatorque to Tog Rustsprocket 3'),
(@OZZIE,0,0,'Hmm, I suppose it could work. But it could really use a little more umph!',12,0,100,0,0,0,'Ozzie Togglevolt reply'),
(@MILLI,0,0,'What? I don''t even know what you''re talking about! That''s terrible!',12,0,100,0,0,0,'Milli Featherwhistle reply'),
(@TOG,0,0,'Horrible! Well, all right,maybe it just needs a little cleaning up?',12,0,100,0,0,0,'Tog Rustsprocket reply');
-- Add SAI for Milli Featherwhistle
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@MILLI;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@MILLI;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@MILLI,0,0,0,8,0,100,1,74222,0,0,0,1,0,2000,0,0,0,0,11,@MEKKATORQUE,10,0,0.0,0.0,0.0,0.0,'Milli Featherwhistle - On spell hit - High Tinker Mekkatorque say part1'),
(@MILLI,0,1,0,52,0,100,0,0,@MEKKATORQUE,0,0,1,1,4000,0,0,0,0,11,@MEKKATORQUE,10,0,0.0,0.0,0.0,0.0,'Milli Featherwhistle - On text over - High Tinker Mekkatorque say part2'),
(@MILLI,0,2,3,52,0,100,0,1,@MEKKATORQUE,0,0,1,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Milli Featherwhistle - On text over - Reply'),
(@MILLI,0,3,4,61,0,100,0,0,0,0,0,33,@MILLI,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,'Milli Featherwhistle - On link - credit quest'),
(@MILLI,0,4,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,@MEKKATORQUE,10,0,0.0,0.0,0.0,0.0,'Milli Featherwhistle - On link - set data 1');
-- Add SAI for Ozzie Togglevolt
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@OZZIE;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@OZZIE;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@OZZIE,0,0,0,8,0,100,1,74222,0,0,0,1,2,2000,0,0,0,0,11,@MEKKATORQUE,10,0,0.0,0.0,0.0,0.0,'Ozzie Togglevolt - On spell hit - High Tinker Mekkatorque say part1'),
(@OZZIE,0,1,0,52,0,100,0,2,@MEKKATORQUE,0,0,1,3,4000,0,0,0,0,11,@MEKKATORQUE,10,0,0.0,0.0,0.0,0.0,'Ozzie Togglevolt - On text over - High Tinker Mekkatorque say part2'),
(@OZZIE,0,2,0,52,0,100,0,3,@MEKKATORQUE,0,0,1,4,4000,0,0,0,0,11,@MEKKATORQUE,10,0,0.0,0.0,0.0,0.0,'Ozzie Togglevolt - On text over - High Tinker Mekkatorque say part3'),
(@OZZIE,0,3,4,52,0,100,0,4,@MEKKATORQUE,0,0,1,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Ozzie Togglevolt - On text over - Reply'),
(@OZZIE,0,4,5,61,0,100,0,0,0,0,0,33,@OZZIE,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,'Milli Featherwhistle - On link - credit quest'),
(@OZZIE,0,5,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,@MEKKATORQUE,10,0,0.0,0.0,0.0,0.0,'Milli Featherwhistle - On link - set data 1');
-- Add SAI for Tog Rustsprocket
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@TOG;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@TOG;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@TOG,0,0,0,8,0,100,1,74222,0,0,0,1,5,2000,0,0,0,0,11,@MEKKATORQUE,10,0,0.0,0.0,0.0,0.0,'Tog Rustsprocket - On spell hit - High Tinker Mekkatorque say part1'),
(@TOG,0,1,0,52,0,100,0,5,@MEKKATORQUE,0,0,1,6,4000,0,0,0,0,11,@MEKKATORQUE,10,0,0.0,0.0,0.0,0.0,'Tog Rustsprocket - On text over - High Tinker Mekkatorque say part2'),
(@TOG,0,2,0,52,0,100,0,6,@MEKKATORQUE,0,0,1,7,4000,0,0,0,0,11,@MEKKATORQUE,10,0,0.0,0.0,0.0,0.0,'Tog Rustsprocket - On text over - High Tinker Mekkatorque say part3'),
(@TOG,0,3,4,52,0,100,0,7,@MEKKATORQUE,0,0,1,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Tog Rustsprocket - On text over - Reply'),
(@TOG,0,4,5,61,0,100,0,0,0,0,0,33,@TOG,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,'Tog Rustsprocket - On link - credit quest'),
(@TOG,0,5,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,@MEKKATORQUE,10,0,0.0,0.0,0.0,0.0,'Tog Rustsprocket - On link - set data 1');
-- Add SAI for High Tinker Mekkatorque
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@MEKKATORQUE;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@MEKKATORQUE;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@MEKKATORQUE,0,0,0,38,0,100,1,1,1,0,0,41,1000,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'High Tinker Mekkatorque - on data set- despawn');
-- Where the Wild Things Roam by Shlomi155 (Issue 3038)
-- Quest item will work only at Dragonblight and if the quest is incomplete!
DELETE FROM `conditions` WHERE SourceEntry=47627;
INSERT IGNORE INTO `conditions` VALUES
(17,0,47627,0,0,9,0,12111,0,0,0,0,'',NULL),
(17,0,47627,0,0,23,0,65,0,0,0,0,'',NULL);
UPDATE `creature_template` SET AIName='SmartAI' WHERE entry IN (26615,26482);
DELETE FROM `creature_ai_scripts`where creature_id IN (26615,26482);
DELETE FROM `smart_scripts` WHERE entryorguid IN (26615,26482);
INSERT IGNORE INTO `smart_scripts` VALUES
(26615,0,0,0,9,0,100,1,0,5,8000,12000,11,15976,0,0,0,0,0,2,0,0,0,0,0,0,0,'Snowfall Elk - Cast Puncture'),
(26615,0,1,2,23,0,100,1,47628,1,1,1,11,47675,0,0,0,0,0,1,0,0,0,0,0,0,0,'Snowfall Elk - On Aura - Cast Recently Inoculated'),
(26615,0,2,3,61,0,100,1,0,0,0,0,33,26895,0,0,0,0,0,18,40,0,0,0,0,0,0,'Snowfall Elk - Event Linked - Credit'),
(26615,0,3,0,61,0,100,1,0,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Snowfall Elk - Event Linked - Despawn Delay 5 Seconds'),
(26482,0,0,1,23,0,100,1,47628,1,1,1,11,47675,0,0,0,0,0,1,0,0,0,0,0,0,0,'Arctic Grizzly - On Aura - Cast Recently Inoculated'),
(26482,0,1,2,61,0,100,1,0,0,0,0,33,26882,0,0,0,0,0,18,40,0,0,0,0,0,0,'Arctic Grizzly - Event Linked - Credit'),
(26482,0,2,0,61,0,100,1,0,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Arctic Grizzly - Event Linked - Despawn Delay 5 Seconds');
-- [Q] [A/H] Catch the Wild Wolpertinger! by Discover (Issue 3131)
-- Wild Wolpertinger SAI
SET @WOLPERTINGER :=23487;
SET @SPELL_NET    :=41621;
SET @SPELL_CREATE_ITEM :=41622;
UPDATE `creature_template` SET `AIName`='SmartAI',`unit_flags`=`unit_flags`|512 WHERE `entry`=@WOLPERTINGER;
UPDATE `creature` SET `position_x`=24.539537 WHERE `guid`=207045 AND `id`=@WOLPERTINGER; -- For some reason this one was spawned in air
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@WOLPERTINGER;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@WOLPERTINGER;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@WOLPERTINGER,0,0,1,8,0,100,0,@SPELL_NET,0,0,0,11,@SPELL_CREATE_ITEM,2,0,0,0,0,7,0,0,0,0,0,0,0,"Wild Wolpertinger - On Spellhit - Cast Create Stunned Wolpertinger Item"),
(@WOLPERTINGER,0,1,0,61,0,100,0,0,0,0,0,41,4000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wild Wolpertinger - On Spellhit - Forced Despawn");
-- Condition for spell Wolpertinger Net
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=@SPELL_NET;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition` ,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,@SPELL_NET,0,0,31,1,3,@WOLPERTINGER,0,0,0,'','Net can only hit Wolpertingers');
-- Fix quest Blinding the Eyes in the Sky ID: 13313 by Trista (Issue 3225)
SET @ReconFighter :=32189;
SET @Spell        :=60079;
-- Add SAI support Skybreaker Recon
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ReconFighter;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ReconFighter;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ReconFighter,0,0,1,8,0,100,0,@Spell,0,0,0,33,@ReconFighter,0,0,0,0,0,7,0,0,0,0,0,0,0,'Skybreaker Recon - On spell hit - Give kill credit to invoker'),
(@ReconFighter,0,1,0,61,0,100,0,0,0,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Skybreaker Recon - Linked with previous event - Kill self');
-- Update Vehicle_Accesorry to die along with the vehicle,otherwise little untargetable dwards fall on ground
UPDATE `vehicle_template_accessory` SET `minion`=1 WHERE `entry`=32189 AND `seat_id`=0;
-- Add conditions for spell to target only alive Recons
DELETE FROM `conditions` WHERE `SourceEntry`=@Spell and `SourceTypeOrReferenceId`=17;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,@Spell,0,0,36,1,0,0,0,0,0,'','Fire SGM-3 can hit only alive Recon Fighter'),
(17,0,@Spell,0,0,31,1,3,@ReconFighter,0,0,0,'','Fire SGM-3 can hit Recon Fighter');
-- Add SmartAI to give item
DELETE FROM `smart_scripts` WHERE `entryorguid`=26423 AND `id` IN (2,3);
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(26423,0,2,3,62,0,100,0,9615,1,0,0,11,50021,2,0,0,0,0,7,0,0,0,0,0,0,0,'Drakuru - On gossip option select - cast Replace Drakuru''s Elixir'),
(26423,0,3,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Drakuru - On gossip option select - close gossip');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,47110,0,1,31,0,3,26498,0,0,0,'',NULL),-- Drakuru's Bunny 01
(13,1,47110,0,2,31,0,3,26559,0,0,0,'',NULL),-- Drakuru's Bunny 02
(13,1,47110,0,3,31,0,3,26700,0,0,0,'',NULL),-- Drakuru's Bunny 03
(13,1,47110,0,4,31,0,3,26789,0,0,0,'',NULL),-- Drakuru's Bunny 04
(13,1,47110,0,5,31,0,3,28015,0,0,0,'',NULL); -- Drakuru's Bunny 05
-- Add Smart AI Drakuru Bunny
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (26498,26559,26700,26789,28015);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (26498,26559,26700,26789,28015);
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(26498,0,0,0,8,0,100,0,47110,0,0,0,12,26500,3,50000,0,0,0,8,0,0,0,3386.26,-1805.32,114.909,4.945,'Drakuru Bunny 01- On Spellhit - Summmon Image of Drakuru'),
(26559,0,0,0,8,0,100,0,47110,0,0,0,12,26543,3,50000,0,0,0,8,0,0,0,4243.98,-2025.08,238.248,1.431,'Drakuru Bunny 02- On Spellhit - Summmon Image of Drakuru'),
(26700,0,0,0,8,0,100,0,47110,0,0,0,12,26701,3,50000,0,0,0,8,0,0,0,4523.94,-3472.9,228.393,-0.803,'Drakuru Bunny 03- On Spellhit - Summmon Image of Drakuru'),
(26789,0,0,0,8,0,100,0,47110,0,0,0,12,26787,3,50000,0,0,0,8,0,0,0,4599.09,-4875.82,48.956,0.748,'Drakuru Bunny 04- On Spellhit - Summmon Image of Drakuru'),
(28015,0,0,0,8,0,100,0,47110,0,0,0,12,28016,3,50000,0,0,0,8,0,0,0,-236.77,-618.61,116.475,4.727,'Drakuru Bunny 05- On Spellhit - Summmon Drakuru');
-- Fix Neutralizing the Cauldrons (11647) quest by Shlomi1515 (Issue 3432)
UPDATE `creature_template` SET flags_extra='128', AIName='SmartAI' WHERE entry IN (25493,25490,25492);
DELETE FROM `smart_scripts` WHERE entryorguid IN (25493,25490,25492);
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25493,0,0,0,8,0,100,0,45653,0,0,0,33,25493,0,0,0,0,0,7,0,0,0,0,0,0,0,'West Enkilah Cauldron - On Spell Hit - Kil Credit'),
(25490,0,0,0,8,0,100,0,45653,0,0,0,33,25490,0,0,0,0,0,7,0,0,0,0,0,0,0,'East Enkilah Cauldron - On Spell Hit - Kil Credit'),
(25492,0,0,0,8,0,100,0,45653,0,0,0,33,25492,0,0,0,0,0,7,0,0,0,0,0,0,0,'Central Enkilah Cauldron - On Spell Hit - Kil Credit');
-- Hallow's End Treats for Jesper/spoops 8311/8312 (Issue 3548)
-- Flexing for Nougat (Alliance)
SET @INNKEEPER=6740;
SET @QUEST=8356;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@INNKEEPER AND `id`=2;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@INNKEEPER,0,2,0,22,0,100,0,41,0,0,0,33,@INNKEEPER,0,0,0,0,0,7,0,0,0,0,0,0,0,'Innkeeper Allison - on /flex credit for quest');
DELETE FROM `conditions` WHERE `SourceEntry`=@QUEST;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(19,0,@QUEST,0,12,12,0,0,0,'',NULL);
-- Chicken Clucking for a Mint (Alliance)
SET @INNKEEPER=5111;
SET @QUEST=8353;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@INNKEEPER AND `id`=2;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@INNKEEPER,0,2,0,22,0,100,0,22,0,0,0,33,@INNKEEPER,0,0,0,0,0,7,0,0,0,0,0,0,0,'Innkeeper Firebrew - on /chicken credit for quest');
DELETE FROM `conditions` WHERE `SourceEntry`=@QUEST;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(19,0,@QUEST,0,12,12,0,0,0,'',NULL);
-- Dancing for Marzipan (Alliance)
SET @INNKEEPER=6735;
SET @QUEST=8357;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@INNKEEPER AND `id`=2;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@INNKEEPER,0,2,0,22,0,100,0,34,0,0,0,33,@INNKEEPER,0,0,0,0,0,7,0,0,0,0,0,0,0,'Innkeeper Saelienne - on /dance credit for quest');
DELETE FROM `conditions` WHERE `SourceEntry`=@QUEST;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(19,0,@QUEST,0,12,12,0,0,0,'',NULL);
-- Incoming Gumdrop (Alliance)
SET @INNKEEPER=6826;
SET @QUEST=8355;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@INNKEEPER;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@INNKEEPER;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@INNKEEPER,0,0,0,22,0,100,0,264,0,0,0,33,@INNKEEPER,0,0,0,0,0,7,0,0,0,0,0,0,0,'Talvash del Kissel - on /train credit for quest');
DELETE FROM `conditions` WHERE `SourceEntry`=@QUEST;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(19,0,@QUEST,0,12,12,0,0,0,'',NULL);
-- Flexing for Nougat (Horde)
SET @INNKEEPER=6929;
SET @QUEST=8359;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@INNKEEPER AND `id`=2;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@INNKEEPER,0,2,0,22,0,100,0,41,0,0,0,33,@INNKEEPER,0,0,0,0,0,7,0,0,0,0,0,0,0,'Innkeeper Gryshka - on /flex credit for quest');
DELETE FROM `conditions` WHERE `SourceEntry`=@QUEST;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(19,0,@QUEST,0,12,12,0,0,0,'',NULL);
-- Chicken Clucking for a Mint (Horde)
SET @INNKEEPER=6741;
SET @QUEST=8354;
-- SAI
UPDATE `smart_scripts` SET `link`=3 WHERE `entryorguid`=@INNKEEPER AND `id`=2;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@INNKEEPER AND `id`=3;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@INNKEEPER,0,3,0,61,0,100,0,0,0,0,0,15,@QUEST,0,0,0,0,0,7,0,0,0,0,0,0,0,'Innkeeper Norman - Link - exploreded for quest');
-- conditions
DELETE FROM `conditions` WHERE `SourceEntry`=@QUEST;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(19,0,@QUEST,0,0,12,0,12,0,0,0,0,'',"Quest avialable only during Hallow's End event");
-- Dancing for Marzipan (Horde)
SET @INNKEEPER=6746;
SET @QUEST=8360;
SET @GOSSIP=344;
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@INNKEEPER;
-- Add trick or treat SAI since the .cpp script was removed
DELETE FROM `smart_scripts` WHERE `entryorguid`=@INNKEEPER;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@INNKEEPER,0,0,1,62,0,100,0,@GOSSIP,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Innkeeper Pala - On gossip option 0 select - Close gossip'),
(@INNKEEPER,0,1,0,61,0,100,0,0,0,0,0,85,24751,0,0,0,0,0,7,0,0,0,0,0,0,0,'Innkeeper Pala - On gossip option 0 select - Player cast Trick or Treat on self'),
(@INNKEEPER,0,2,0,22,0,100,0,34,0,0,0,33,@INNKEEPER,0,0,0,0,0,7,0,0,0,0,0,0,0,'Innkeeper Pala - on /dance credit for quest');
DELETE FROM `conditions` WHERE `SourceEntry`=@QUEST;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(19,0,@QUEST,0,12,12,0,0,0,'',NULL);
-- Incoming Gumdrop (Horde)
SET @INNKEEPER=11814;
SET @QUEST=8358;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@INNKEEPER;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@INNKEEPER;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@INNKEEPER,0,0,0,22,0,100,0,264,0,0,0,33,@INNKEEPER,0,0,0,0,0,7,0,0,0,0,0,0,0,'Kali Remik - on /train credit for quest');
DELETE FROM `conditions` WHERE `SourceEntry`=@QUEST;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(19,0,@QUEST,0,12,12,0,0,0,'',NULL);
DELETE FROM `battleground_template` WHERE `id` = 6;
INSERT IGNORE INTO `battleground_template` (`id`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `AllianceStartO`, `HordeStartLoc`, `HordeStartO`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES
(6,0,2,10,80,0,0,0,0,0,1,'','All Arena');
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=28419;
UPDATE `creature_template` SET `ScriptName`='',`AIName`='SmartAI' WHERE `entry`=23960;
-- Dragonflayer runecaster
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=23960;
DELETE FROM `smart_scripts` WHERE `entryorguid`=23960 AND `source_type`=0;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `target_type`, `target_param2`, `comment`) VALUES
(23960,1,0,2,5000,7000,14000,17000,11,42740,11,30,'Dragonflayer Runecaster - In combat - Cast Njords Rune of Protection'),
(23960,2,0,4,5000,7000,14000,17000,11,59616,11,30,'Dragonflayer Runecaster - In combat - Cast Njords Rune of Protection'),
(23960,3,0,2,1000,2000,15000,18000,11,54965, 1, 0,'Dragonflayer Runecaster - In combat - Cast Bolthorns Rune of Flame'),
(23960,4,0,4,1000,2000,15000,18000,11,59617, 1, 0,'Dragonflayer Runecaster - In combat - Cast Bolthorns Rune of Flame');
-- Frenzied geist
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=28419;
DELETE FROM `smart_scripts` WHERE `entryorguid`=28419 AND `source_type`=0;
INSERT IGNORE INTO `smart_scripts`(`entryorguid`,`event_type`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`target_type`,`comment`) VALUES
(28419,0,5000,5000,30000,30000,11,40414,5,'Frenzied geist - In combat - Cast Fixate');
-- Difficulty data for spells used in utgarde keep
DELETE FROM `spelldifficulty_dbc` WHERE `id` IN(42669,42708,42750,42723,42729,43667,42702,50653,43931) OR `spellid0` IN(42669,42708,42750,42723,42729,43667,42702,50653,43931);
INSERT IGNORE INTO `spelldifficulty_dbc`(`id`,`spellid0`,`spellid1`) VALUES
(42669,42669,59706), -- Smash
(42708,42708,59708), -- Staggering Roar
(42750,42750,59719), -- Throw Axe
(42723,42723,59709), -- Dark Smash
(42729,42729,59734), -- Dreadful Roar
(43667,43667,59389), -- Shadow Bolt
(42702,42702,59397), -- Decrepify
(50653,50653,59692), -- Flame Breath
(43931,43931,59691); -- Rend
-- Ticking Time Bomb, Fixate
DELETE FROM `spell_script_names` WHERE `spell_id` IN(59686,40414);
INSERT IGNORE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(59686,'spell_ticking_time_bomb'),
(40414,'spell_fixate');
-- Areatrigger script
DELETE FROM `areatrigger_scripts` WHERE `entry`=4838;
INSERT IGNORE INTO `areatrigger_scripts`(`entry`,`ScriptName`) VALUES
(4838,'SmartTrigger');
DELETE FROM `smart_scripts` WHERE `entryorguid`=4838 AND `source_type`=2;
INSERT IGNORE INTO `smart_scripts`(`entryorguid`,`source_type`,`event_type`,`event_param1`,`action_type`,`action_param1`,`action_param2`,`target_type`,`target_param1`,`comment`) VALUES
(4838,2,46,4838,45,28,6,10,125946,'Areatrigger in Utgarde Keep near Ingvar - On trigger - Set data of Enslaved Proto Drake');
-- Template updates for proto drake and rider
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_enslaved_proto_drake' WHERE `entry`=24083; -- Proto drake non heroic
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry` IN (24849,31676); -- Proto drake rider
-- Create required spellclick information
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=24083;
INSERT IGNORE INTO `npc_spellclick_spells`(`npc_entry`,`spell_id`,`cast_flags`) VALUES
(24083,55074,1);
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=24083;
-- Spawn Somnus (12900) NPC needed for The Test of Skulls, Somnus (6583) quest fix by shlomi1515
SET @NPC  :=12900;
UPDATE `creature_template` SET AIName='SmartAI', Mechanic_Immune_Mask=2147483647 WHERE entry=@NPC;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@NPC AND `source_type`=0;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC,0,0,0,13,0,100,0,75000,75000,75000,75000,11,20989,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Somnus - Target is Casting - Cast Sleep'),
(@NPC,0,1,0,13,0,100,0,85000,85000,85000,85000,11,12882,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Somnus - Target is Casting - Cast Wing Flap'),
(@NPC,0,2,0,0,0,100,0,0,5000,30000,30000,11,20667,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Somnus - IC - Cast Corrosive Acid Breath'),
(@NPC,0,3,0,0,0,100,0,7000,9000,14000,20000,11,18368,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Somnus - IC - Cast Strike');
-- Orokk Omosh SAI
SET @ENTRY := 7790;
SET @QUEST := 2755;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100);
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,@QUEST,0,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0, 'Orokk Omosh - On Quest Accept - Run Script'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,5,10,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Orokk Omosh - On Script - Start Dancing'),
(@ENTRY*100,9,1,0,0,0,100,0,30000,30000,0,0,5,26,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Orokk Omosh - On Script - Stop Dancing'),
(@ENTRY*100,9,2,0,0,0,100,0,33000,33000,0,0,15,@QUEST,0,0,0,0,7,0,0,0,0,0,0,0,0, 'Orokk Omosh - On Script - Quest Credit');
-- Raschal the Courier SAI
SET @ENTRY := 7853;
SET @QUEST := 2843;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100);
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,@QUEST,0,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0, 'Scooty - On Quest Accept - Run Script'),
(@ENTRY*100,9,0,0,0,0,100,0,10000,10000,0,0,15,@QUEST,0,0,0,0,7,0,0,0,0,0,0,0,0, 'Scooty - On Script - Quest Credit');
-- Dorn Plainstalker SAI
SET @ENTRY := 2986;
SET @QUEST := 1149;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,@QUEST,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dorn Plainstalker - On Quest Accept - Say Line 0');
SET @Scorp := 21909; -- Arcano-Scorp
SET @Control1 := 37867; -- Trigger /connected with dismissing to make vehicle not attack master/
SET @Control1_1 := 37868; -- Control /apply control aura without target/
SET @Control2 := 37892; -- -//-
SET @Control2_2 := 37893; -- -//-
SET @Control3 := 37894; -- -//-
SET @Control3_3 := 37895; -- -//-
SET @Diametron := 21462; -- Greater Fellfire Diametron
-- Arcano-Scorp spells:
SET @Tag := 37851; -- Tag Greater Felfire Diemetradon
SET @Arcano_Cloak := 37917;
SET @Arcano_dismantle := 37919;
SET @Arcano_pince := 37918;
-- Add spawns for two missing Arcano-Scorps
UPDATE `creature_template` SET `AIName`='PetAI',`MovementType`=1,`spell4`=@Tag,`spell5`=@Arcano_Cloak,`spell6`=@Arcano_dismantle,`spell7`=@Arcano_pince WHERE `entry`=@Scorp;
-- Spell script for trigger of control spell *will rewrite it once SAI spell script is released*
DELETE FROM `spell_scripts` WHERE `id` IN (@Control1,@Control2,@Control3);
INSERT IGNORE INTO `spell_scripts` (`id`,`effindex`,`delay`,`command`,`datalong`,`datalong2`) VALUES
(@Control1,0,0,15,@Control1_1,2),
(@Control2,0,0,15,@Control2_2,2),
(@Control3,0,0,15,@Control3_3,2);
-- Limit @Tag only to Diametrons,also to ones not affected by it
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=@Tag;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition` ,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,@Tag,0,0,31,1,3,@Diametron,0,0,0, '', 'Tag can only target Greater Felfire Diametrons'),
(17,0,@Tag,0,0,1,1,@Tag,0,0,1,0, '', 'Tag cannot be casted on tagged Diametrons');
-- Limit Arcano_Dismantle to not being able to hit self and cannot damage anything else beside Arcano-scorp
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=@Arcano_dismantle;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition` ,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,@Arcano_dismantle,0,0,33,1,0,1,0,1,0, '', 'Arcano-Dismantle effect 0 cannot hit self'),
(13,2,@Arcano_dismantle,0,0,33,1,0,1,0,1,0, '', 'Arcano-Dismantle effect 1 cannot hit self'),
(13,1,@Arcano_dismantle,0,0,31,0,3,@Scorp,0,0,0, '', 'Arcano-Dismantle effect 0 can hit only Arcano-Scorp'),
(13,2,@Arcano_dismantle,0,0,31,0,3,@Scorp,0,0,0, '', 'Arcano-Dismantle effect 1 can hit only Arcano-Scorp');
-- Limit @Arcano_pince to not being able to hit self and cannot damage anything else beside Arcano-scorp
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=@Arcano_pince;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition` ,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,@Arcano_pince,0,0,33,1,0,1,0,1,0, '', 'Arcano_pince effect 0 cannot hit self'),
(13,1,@Arcano_pince,0,0,31,0,3,@Scorp,0,0,0, '', 'Arcano_pince effect 0 can hit only Arcano-Scorp');
-- Add SAI for Greater Diametron to prevent some bugs
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@Diametron;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Diametron;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Diametron,0,0,0,0,0,100,0,4500,5000,5000,7000,11,37945,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Greater Fellfire Diametron - IC - Cast Fel Fireball'),
(@Diametron,0,1,0,0,0,100,0,1500,3000,15000,17000,11,37941,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Greater Fellfire Diametron - IC - Cast Flaming Wound'),
(@Diametron,0,2,3,8,0,100,0,@Tag,0,0,0,90,256,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Greater Fellfire Diametron - On hit by spell Tag - Set bytes to wipe aggro'),
(@Diametron,0,3,4,61,0,100,0,0,0,0,0,91,256,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Greater Fellfire Diametron - Linked with previous event - Remove bytes'),
(@Diametron,0,4,0,61,0,100,0,0,0,0,0,75,@Tag,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Greater Fellfire Diametron - Linked with previous event - Add Tag aura on self');
DELETE FROM `creature_ai_scripts` WHERE creature_id=19851;
UPDATE `creature_template` SET AIName='SmartAI' WHERE `entry`=19851;
DELETE FROM `smart_scripts` WHERE entryorguid=19851;
INSERT IGNORE INTO `smart_scripts` VALUES
(19851,0,0,0,9,0,100,0,8,25,15000,21000,11,35570,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Negatron - Cast Charge'),
(19851,0,1,0,9,0,100,0,0,5,15000,21000,11,34625,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Negatron - Cast Demolish'),
(19851,0,2,0,0,0,100,0,15000,19000,21000,25000,11,35565,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Negatron - Cast Earthquake'),
(19851,0,3,0,2,0,100,0,0,50,16000,22000,11,34624,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Negatron - Cast Frenzy at 50% HP'),
(19851,0,4,0,6,0,100,0,0,0,0,0,15,10248,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Negatron - Death - Quest Complete');
-- Fix quest 10910 'Deaths Door'
-- Evergrove Druid SAI
SET @ENTRY := 22423;
UPDATE `creature_template` SET `inhabittype`=4,`AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,1,38782,0,0,0,11,38776,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Evergrove Druid - On hit by signal - transform to crow'),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,19,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Evergrove Druid - On hit by signal - Remove field flag'),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,69,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Evergrove Druid - On hit by signal - Follow player invoker'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,81,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Evergrove Druid - On hit by signal - Set npcflag = 2'),
(@ENTRY,0,4,5,64,0,100,1,0,0,0,0,11,39158,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Evergrove Druid - On gossip hello - transform to druid, since end point for follow can''t be player'),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,41,60000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Evergrove Druid - After 60 sec - despawn'),
(@ENTRY,0,6,0,19,0,100,0,10904,0,0,0,41,10000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Evergrove Druid - On target accepted next quest - despawn'),
(@ENTRY,0,7,0,19,0,100,0,10911,0,0,0,41,10000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Evergrove Druid - On target accepted next quest - despawn'),
(@ENTRY,0,8,0,19,0,100,0,10912,0,0,0,41,10000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Evergrove Druid - On target accepted next quest - despawn'),
(@ENTRY,0,9,0,11,0,100,0,0,0,0,0,83,2,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Evergrove Druid - On Spawn - Remove quest flag');
-- Teribus the Cursed is out of combat when is finally summoned by players
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~256 WHERE `entry`=22441; -- removing OOC
-- Sparrowhawk SAI
SET @Sparrowhawk := 22979;
SET @Net :=         39810;
SET @ItemSpell :=   39812;
SET @QuestItem :=   32320;
SET @Script :=      39810;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@Sparrowhawk;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Sparrowhawk AND `source_type`=0;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Sparrowhawk,0,0,0,13,0,100,0,0,0,0,0,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Sparrowhawk - On target casting  spell on it - Flee'),
(@Sparrowhawk,0,1,2,8,0,100,0,@Net,0,0,0,85,@ItemSpell,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Sparrowhawk - On spell hit by net - Ivoker cast on self spell for item'),
(@Sparrowhawk,0,2,3,61,0,100,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Sparrowhawk - Linked with previous event - Set unseen'),
(@Sparrowhawk,0,3,0,61,0,100,0,0,0,0,0,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Sparrowhawk - Linked with previous event - Despawn in 1 sec');
-- Halfdan SAI
SET @Halfdan := 23671;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@Halfdan;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Halfdan AND `source_type`=0;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Halfdan,0,0,0,54,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,2000,0,0,0,0,0, 'Halfdan - On summoned - Say line 1'),
(@Halfdan,0,1,0,52,0,100,0,0,@Halfdan,0,0,1,1,2000,0,0,0,0,1,0,0,0,0,0,0,0, 'Halfdan - On text 1 over - Say line 2'),
(@Halfdan,0,2,3,52,0,100,0,1,@Halfdan,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Halfdan - IC - Change faction to unfriendly'),
(@Halfdan,0,3,0,61,0,100,0,0,0,0,0,46,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Halfdan - Linked with previous event - Move 1 forward to aggro'),
(@Halfdan,0,4,0,0,0,100,0,2000,5000,9500,11500,11,35263,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Halfdan - IC - Cast Frost attack'),
(@Halfdan,0,5,0,0,0,100,0,2500,5000,6000,10000,11,32736,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Halfdan - IC - Cast Mortal Strike'),
(@Halfdan,0,6,0,0,0,100,0,1250,5000,5000,6000,11,12169,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Halfdan - IC - Cast Shield Block'),
(@Halfdan,0,7,0,0,0,100,0,3000,8000,4000,12000,11,32015,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Halfdan - IC - Cast Knockdown'),
(@Halfdan,0,8,0,9,0,100,0,8,25,5000,5000,11,19131,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Halfdan - On target in range - Cast Shield Charge'),
(@Halfdan,0,9,10,2,0,100,1,75,75,120000,120000,1,2,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Halfdan - At 75% HP - Say line 3'),
(@Halfdan,0,10,0,61,0,100,0,0,0,0,0,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Halfdan - Linked with previous event - Cast Enrage on self'),
(@Halfdan,0,11,0,2,0,100,1,25,25,120000,120000,1,3,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Halfdan - At 25% HP - Say line 4'),
(@Halfdan,0,12,13,1,0,100,0,20000,20000,20000,20000,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Halfdan - OOC more than 20 sec - Set unseen'),
(@Halfdan,0,13,0,61,0,100,0,0,0,0,0,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Halfdan - Linked with previous event - Despawn in 1 sec');
-- Texts
DELETE FROM `creature_text` WHERE `entry`=@Halfdan;
INSERT IGNORE INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@Halfdan,0,0, 'You think I do not know what you are trying to do? You think I haven''t been watching you?',12,0,100,1,2000,0, 'Halfdan'),
(@Halfdan,1,0, 'Hah! You thought to interfere with my ascension? Nothing can stop me now!',12,0,100,1,2000,0, 'Halfdan'),
(@Halfdan,2,0, 'You will not stop my ascension, tiny $C. Time to die!',14,0,100,1,2000,0, 'Halfdan'),
(@Halfdan,3,0, 'No! You will not defeat me!',14,0,100,1,1000,0, 'Halfdan');
-- Primal Ooze and Captured Fel Ooze SAIs
SET @POoze         :=  6557;
SET @CFOoze        := 10290;
SET @GFOoze        :=  9621; -- Gargantuan Ooze = result of merging
SET @SpellTrigger  := 16031; -- Cast Releasing Corrupt Ooze - can be used only with target of Primal Ooze to summon the Corrupted Ooze and trigger events
SET @MergingOozes  := 16032; -- Spell visual for Oozes at the moment of meging
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@POoze,@CFOoze);
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (@POoze,@CFOoze);
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@POoze,0,0,0,8,0,100,0,@SpellTrigger,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Primal Ooze - On hit by spell Releasing Ooze - Set phase 2'),
-- Phase 2 - used to delay a bit Primal Ooze actions, so the Corrupted Ooze will be spawned
(@POoze,0,1,2,60,2,100,1,1500,1500,0,0,45,0,1,0,0,0,0,9,@CFOoze,0,35,0,0,0,0, 'Primal Ooze - On event update in phase 2 - Set data 0 1 on Corrupted Ooze'),
(@POoze,0,2,0,61,2,100,0,0,0,0,0,29,0,0,10290,1,1,0,9,@CFOoze,0,35,0,0,0,0, 'Primal Ooze - Linked with previous event - Follow Captured felwood ooze'),
(@POoze,0,3,4,65,2,100,0,0,0,0,0,47,0,0,0,0,0,0,0,0,1,0,0,0,0,0, 'Primal Ooze - On follow complete - Set unseen'),
(@POoze,0,4,5,61,2,100,0,0,0,0,0,12,@GFOoze,6,20000,0,0,0,1,0,0,0,0,0,0,0, 'Primal Ooze - Linked with previous event - Spawn Gargantuan Ooze'),
(@POoze,0,5,6,61,2,100,0,0,0,0,0,11,@MergingOozes,0,0,0,0,0,9,@GFOoze,0,5,0,0,0,0, 'Captured Fel Ooze - Linked with previous event - Cast Merging Oozes on Gargantuan Ooze'),
(@POoze,0,6,0,61,2,100,0,0,0,0,0,41,50,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Primal Ooze - Linked with previous event - Despawn self'),
-- <<<>>>>
(@CFOoze,0,0,0,38,0,100,0,0,1,0,0,29,0,0,@POoze,0,1,0,9,@POoze,0,20,0,0,0,0, 'Captured Fel Ooze - On data set 0 1 - Follow Primal Ooze in less than 20 range'),
(@CFOoze,0,1,2,65,0,100,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Captured Fel Ooze - On follow complete - Set unseen'),
(@CFOoze,0,2,0,61,0,100,0,0,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Captured Fel Ooze - Linked with previous event - Despawn');
-- Add conditions for Releasing Corrupt Ooze
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=@SpellTrigger;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition` ,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,@SpellTrigger,0,0,31,1,3,@POoze,0,0,0, '', 'Releasing Corrupted Ooze can be casted only on Primal Ooze');
-- Condition for Merging Oozes so it can hit only Gargantuan Ooze
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=@MergingOozes;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition` ,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,@MergingOozes,0,0,31,0,3,@GFOoze,0,0,0, '', 'Merging Oozes can hit only Gargantuan Ooze');
-- Crystal Spikes - Script Effect - Spell casted by Ormorok - Triggers one summon spell in every direction
DELETE FROM `spell_scripts` WHERE `id` IN (47958,57082);
INSERT IGNORE INTO `spell_scripts`(`id`,`command`,`datalong`,`datalong2`) VALUES
-- Non heroic
(47958,15,47954,1),
(47958,15,47955,1),
(47958,15,47956,1),
(47958,15,47957,1),
-- Heroic
(57082,15,57077,1),
(57082,15,57078,1),
(57082,15,57080,1),
(57082,15,57081,1);
DELETE FROM `spelldifficulty_dbc` WHERE `id` IN (47958,48016,48017) OR `spellid0` IN (47958,48016,48017);
INSERT IGNORE INTO `spelldifficulty_dbc`(`id`,`spellid0`,`spellid1`) VALUES
(47958,47958,57082), -- Crystal Spikes
(48016,48016,57066), -- Trample
(48017,48017,57086); -- Frenzy
-- Assign aura script for spawning Crystal Spike rows
DELETE FROM `spell_script_names` WHERE `spell_id`=47941;
INSERT IGNORE INTO `spell_script_names`(`spell_id`,`ScriptName`) VALUES
(47941,'spell_crystal_spike');
-- Apply aura to triggers
DELETE FROM `creature_template_addon` WHERE `entry` IN (27101,27079);
INSERT IGNORE INTO `creature_template_addon`(`entry`,`auras`) VALUES
(27101,'47941'), -- Aura to summon the next trigger after 250ms
(27079,'47941'); -- Aura to summon the next trigger after 250ms and visual effect
-- Assign core scripts and SmartAI to trigger
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_crystal_spike_trigger' WHERE `entry` IN (27101,27079);
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=27099;
-- SAI for Crystal Spike (Damage dealer)
DELETE FROM `smart_scripts` WHERE `entryorguid`=27099 AND `source_type`=0;
INSERT IGNORE INTO `smart_scripts`(`entryorguid`,`event_type`,`action_type`,`action_param1`,`action_param2`,`target_type`,`comment`) VALUES
(27099,54,80,2709900,2,1,'Crystal Spike - Is summoned - Call timed action list');
-- Timed action list
DELETE FROM `smart_scripts` WHERE `entryorguid`=2709900 AND `source_type`=9;
INSERT IGNORE INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`event_param1`,`event_param2`,`action_type`,`action_param1`,`action_param2`,`target_type`,`comment`) VALUES
(2709900,9,1,2100,2100,11,47944,2,1,'Crystal Spike - Timed action list - Cast damage spell'),
(2709900,9,2,0,0,41,0,0,1,'Crystal Spike - Timed action list - Despawn');
-- Creature texts for the boss
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1576024 AND -1576020;
DELETE FROM `creature_text` WHERE `entry`=26794;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`text`,`type`,`sound`,`comment`) VALUES
(26794,1,'Noo!',14,13328,'ormorok SAY_AGGRO'),
(26794,2,'Aaggh!',14,13330,'ormorok SAY_DEATH'),
(26794,3,'Back!',14,13331,'ormorok SAY_REFLECT'),
(26794,4,'Bleed!',14,13332,'ormorok SAY_CRYSTAL_SPIKES'),
(26794,5,'Aaggh! Kill!',14,13329,'ormorok SAY_KILL');
-- Ossirian the Unscarred
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1509027 AND -1509018;
DELETE FROM `creature_text` WHERE `entry`=15339;
INSERT IGNORE INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(15339, 0, 0, 'I am rejuvinated!', 14, 0, 100, 0, 0, 8593, 'SAY_SUPREME_1'),
(15339, 0, 1, 'My powers are renewed!', 14, 0, 100, 0, 0, 8595, 'SAY_SUPREME_2'),
(15339, 0, 2, 'My powers return!', 14, 0, 100, 0, 0, 8596, 'SAY_SUPREME_3'),
(15339, 1, 0, 'Protect the city at all costs!', 14, 0, 100, 0, 0, 8597, 'SAY_INTRO_1'),
(15339, 1, 1, 'To your posts. Defend the city.', 14, 0, 100, 0, 0, 8600, 'SAY_INTRO_2'),
(15339, 1, 2, 'Tresspassers will be terminated.', 14, 0, 100, 0, 0, 8601, 'SAY_INTRO_3'),
(15339, 2, 0, 'Sands of the desert rise and block out the sun!', 14, 0, 100, 0, 0, 8598, 'SAY_AGGRO'),
(15339, 3, 0, 'You are terminated.', 14, 0, 100, 0, 0, 8602, 'SAY_SLAY'),
(15339, 4, 0, 'I...have...failed.', 14, 0, 100, 0, 0, 8594, 'SAY_DEATH'),
(15339, 5, 0, 'The walls have been breached!', 14, 0, 100, 0, 0, 8599, 'SAY_KURINAXX_DEATH');
-- Ossirian Crystal
UPDATE `gameobject_template` SET `ScriptName`='go_ossirian_crystal' WHERE `entry`=180619;
-- Trial of the Crusader Death knight Death grip scriptname
DELETE FROM `spell_script_names` WHERE `spell_id` IN (66017, 68753, 68754, 68755);
INSERT IGNORE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(66017, 'spell_faction_champion_death_grip'),
(68753, 'spell_faction_champion_death_grip'),
(68754, 'spell_faction_champion_death_grip'),
(68755, 'spell_faction_champion_death_grip');
-- Trial of the Crusader shaman heroism/bloodlust
DELETE FROM `spell_script_names` WHERE `spell_id` IN (65983, 65980);
INSERT IGNORE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(65983, 'spell_toc_heroism'),
(65980, 'spell_toc_bloodlust');
-- impale scriptname
DELETE FROM `spell_script_names` WHERE `spell_id`=65919;
INSERT IGNORE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(65919, 'spell_impale');
-- firebomb scriptname and modelid (ToC Gormok encounter)
UPDATE `creature_template` SET `ScriptName`="npc_firebomb" WHERE `entry`=34854;
-- frost sphere corrections
UPDATE `creature_template` SET `minlevel`=80, `InhabitType`=4, `RegenHealth`=0 WHERE `entry` IN (34606, 34649);
-- Dark / Light essence removing
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (-67222, -67223, -67224, -65686, -67176, -67177, -67178, -65684);
INSERT IGNORE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(-67222, -67511, 0, 'Light Essence 25M'),
(-67223, -67512, 0, 'Light Essence 10M H'),
(-67224, -67513, 0, 'Light Essence 25M H'),
(-65686, -65811, 0, 'Light Essence 10M'),
(-67176, -67179, 0, 'Dark Essence 25M'),
(-67177, -67180, 0, 'Dark Essence 10M H'),
(-67178, -67181, 0, 'Dark Essence 25M H'),
(-65684, -65827, 0, 'Dark Essence 10M');
-- Gormoks Fire Bomb scriptname
DELETE FROM `spell_script_names` WHERE `spell_id`=66313;
INSERT IGNORE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(66313, 'spell_gormok_fire_bomb');
-- correcting hitbox of Anub'Arak
UPDATE `creature_model_info` SET `bounding_radius`=1.085, `combat_reach`=10.5 WHERE `modelid`=29268;
-- correcting hitbox of Acidmaw
UPDATE `creature_model_info` SET `bounding_radius`=1.24, `combat_reach`=12 WHERE `modelid`=29815;
-- adding ToC boss immunities
UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask` | 1 | 2 | 4 | 8 | 16 | 32 | 64 | 128 | 256 | 512 | 1024 | 2048 | 4096 | 8192 | 65536 | 131072 | 524288 | 4194304 | 8388608 | 67108864 | 536870912  WHERE `entry` IN (34796, 35438, 35439, 35440, 34799, 35514, 35515, 35516, 35144, 35511, 35512, 35513, 34797, 35447, 35448, 35449, 34780, 35216, 35268, 35269, 36066, 35347, 35348, 35349, 34497, 35350, 35351, 35352, 34564, 34566, 35615, 35616);
-- misc fixes for higher boss brackets
UPDATE `creature_template` SET `speed_walk`=2.8, `speed_run`=1.71429 WHERE `entry` IN (35350, 35351, 35352, 35347, 35348, 35349);
UPDATE `creature_template` SET `speed_walk`=2, `speed_run`=1.14286 WHERE `entry` IN (34566, 35615, 35616);
-- adding Jaraxxus add immunities
UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask` | 1024 | 2048 WHERE `entry` IN (34815, 35262, 35263, 35264, 34826, 35270, 35271, 35272);
UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask` | 262144 WHERE `entry` IN (35263, 35264);
-- adding Nether portal and Infernal volcano immunities to knockout/grip
UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask` | 32 | 8192 WHERE `entry` IN (34825, 35278, 35279, 35280, 34813, 35265, 35266, 35267);
-- cast Forbearance together with Divine shield (ToC Faction Champions paladin)
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=66010;
INSERT IGNORE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(66010, 25771, 0, 'Divine Shield - Forbearance');
-- make all Diminishing returns rules apply in faction champions
UPDATE `creature_template` SET `flags_extra`=`flags_extra` | 1048576 WHERE `entry` IN
(34445,35705,35706,35707,
34459,35686,35687,35688,
34447,35683,35684,35685,
34455,35680,35681,35682,
34453,35718,35719,35720,
34458,35692,35693,35694,
34454,35711,35712,35713,
34448,35724,35725,35726,
34441,34442,34443,35749,
34450,35695,35696,35697,
35610,35774,35775,35776,
35465,36301,36302,36303,
34451,35671,35672,35673,
34449,35689,35690,35691,
34444,35740,35741,35742,
34456,35708,35709,35710,
34460,35702,35703,35704,
34461,35743,35744,35745,
34463,35734,35735,35736,
34465,35746,35747,35748,
34466,35665,35666,35667,
34467,35662,35663,35664,
34468,35721,35722,35723,
34469,35714,35715,35716,
34470,35728,35729,35730,
34473,35674,35675,35676,
34474,35731,35732,35733,
34475,35737,35738,35739,
34471,35668,35669,35670,
34472,35699,35700,35701);
-- Jaraxxus Mistress Kiss
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_mistress_kiss_area';
INSERT IGNORE INTO `spell_script_names` (spell_id, `ScriptName`) VALUES
(66336, 'spell_mistress_kiss_area'),
(67076, 'spell_mistress_kiss_area'),
(67077, 'spell_mistress_kiss_area'),
(67078, 'spell_mistress_kiss_area');
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_mistress_kiss';
INSERT IGNORE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(66334, 'spell_mistress_kiss'),
(67905, 'spell_mistress_kiss'),
(67906, 'spell_mistress_kiss'),
(67907, 'spell_mistress_kiss');
-- Gormoks Rising anger targeting
DELETE FROM `conditions` WHERE `SourceEntry`=66636;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(13, 1, 66636, 31, 3, 34796, 'Rising Anger');
-- Update AI in Creature_Template to Smart AI
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=5702;
-- Smart Script For Jezelle Pruitt
DELETE FROM `smart_scripts` WHERE `entryorguid`=5702;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(5702,0,0,0,1,0,100,0,0,0,235000,235000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jezelle Pruitt - OOC  - Say Line 0"),
(5702,0,1,0,1,0,100,0,10000,10000,235000,235000,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jezelle Pruitt - OOC  - Say Line 1"),
(5702,0,2,0,1,0,100,0,13000,13000,235000,235000,11,8677,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jezelle Pruitt - OOC  - Cast Summon Effect"),
(5702,0,3,0,1,0,100,0,18000,18000,235000,235000,12,5730,2,30000,0,0,0,8,0,0,0,1793.26,128.034,-63.8432,3.14159,"Jezelle Pruitt - OOC  - Spawn Jezelle's Imp"),
(5702,0,4,0,1,0,100,0,20000,20000,235000,235000,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jezelle Pruitt - OOC  - Say Line 2"),
(5702,0,5,0,1,0,100,0,50000,50000,235000,235000,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jezelle Pruitt - OOC  - Say Line 3"),
(5702,0,6,0,1,0,100,0,53000,53000,235000,235000,11,8677,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jezelle Pruitt - OOC  - Cast Summon Effect"),
(5702,0,7,0,1,0,100,0,58000,58000,235000,235000,12,5729,2,30000,0,0,0,8,0,0,0,1793.26,128.034,-63.8432,3.14159,"Jezelle Pruitt - OOC  - Spawn Jezelle's Voidwalker"),
(5702,0,8,0,1,0,100,0,60000,60000,235000,235000,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jezelle Pruitt - OOC  - Say Line 4"),
(5702,0,9,0,1,0,100,0,90000,90000,235000,235000,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jezelle Pruitt - OOC  - Say Line 5"),
(5702,0,10,0,1,0,100,0,93000,93000,235000,235000,11,8677,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jezelle Pruitt - OOC  - Cast Summon Effect"),
(5702,0,11,0,1,0,100,0,98000,98000,235000,235000,12,5728,2,30000,0,0,0,8,0,0,0,1793.26,128.034,-63.8432,3.14159,"Jezelle Pruitt - OOC  - Spawn Jezelle's Succubus"),
(5702,0,12,0,1,0,100,0,100000,100000,235000,235000,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jezelle Pruitt - OOC  - Say Line 6"),
(5702,0,13,0,1,0,100,0,130000,130000,235000,235000,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jezelle Pruitt - OOC  - Say Line 7"),
(5702,0,14,0,1,0,100,0,133000,133000,235000,235000,11,8677,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jezelle Pruitt - OOC  - Cast Summon Effect"),
(5702,0,15,0,1,0,100,0,138000,138000,235000,235000,12,5726,2,30000,0,0,0,8,0,0,0,1793.26,128.034,-63.8432,3.14159,"Jezelle Pruitt - OOC  - Spawn Jezelle's FelHunter"),
(5702,0,16,0,1,0,100,0,140000,140000,235000,235000,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jezelle Pruitt - OOC  - Say Line 8"),
(5702,0,17,0,1,0,100,0,170000,170000,235000,235000,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jezelle Pruitt - OOC  - Say Line 9"),
(5702,0,18,0,1,0,100,0,173000,173000,235000,235000,11,8677,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jezelle Pruitt - OOC  - Cast Summon Effect"),
(5702,0,19,0,1,0,100,0,178000,178000,235000,235000,12,5727,2,30000,0,0,0,8,0,0,0,1793.26,128.034,-63.8432,3.14159,"Jezelle Pruitt - OOC  - Spawn Jezelle's Felsteed"),
(5702,0,20,0,1,0,100,0,180000,180000,235000,235000,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jezelle Pruitt - OOC  - Say Line 10"),
(5702,0,21,0,1,0,100,0,210000,210000,235000,235000,1,11,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jezelle Pruitt - OOC  - Say Line 11");
-- Jezelle Pruitt Texts
DELETE FROM `creature_text` WHERE `entry`=5702;
INSERT IGNORE INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(5702,0,0, 'If you''re here, then it means you are prepared to begin the study of summoning demonic cohorts to do your bidding. We will start with the lowliest creatures you will be able to call and continue from there. Let us begin.',12,33,100,0,0,0, 'Jezelle Pruitt'),
(5702,1,0, 'The easiest creature for you to summon is the imp. You should already be able to bring forth this minion but for completeness'' sake I will start with him.',12,33,100,0,0,0, 'Jezelle Pruitt'),
(5702,2,0, 'This foul little beast is the imp. It is small and weak, making it almost useless as a meatshield, and its damage output is mediocre at best. This creature is best used for support of a larger group.',12,33,100,0,0,0, 'Jezelle Pruitt'),
(5702,3,0, 'Now that you have had a chance to study imp, let us move on the next minion you will be able to summon, the voidwalker.',12,33,100,0,0,0, 'Jezelle Pruitt'),
(5702,4,0, 'This demonic entity is known as the Voidwalker. Its strength and endurance are significant, making it ideal for defence. Send it to attack your enemy, then use it as a shield while you use your spells and abilities to drain away your opponent''s life.',12,33,100,0,0,0, 'Jezelle Pruitt'),
(5702,5,0, 'If you''ve never seen one, it is a sight to behold. A very impressive creature both on and off the field of battle. Next let us take a look at what I am sure all you male students have been waiting for. The succubus.',12,33,100,0,0,0, 'Jezelle Pruitt'),
(5702,6,0, 'All right now. Asside from the obvious distractions a minion like this will provide against your more masculine foes, she is also capable of dealing out impressive amounts of damage. However, her fragile endurance makes her almost useless as a shield.',12,33,100,0,0,0, 'Jezelle Pruitt'),
(5702,7,0, 'Study hard and you might one day be able to summon one on your own, but for now it''s time to move on to the felhunter.',12,33,100,0,0,0, 'Jezelle Pruitt'),
(5702,8,0, 'What you see before you is a felhunter. This creature''s natural talents include spell lock and other abilities which make it unequalled when facing a magically attuned opponent.',12,33,100,0,0,0, 'Jezelle Pruitt'),
(5702,9,0, 'When facing a spellcaster of any kind, this feral beast will be your best friend. Now, let us take a look at something a bit different. This next creature will aid your travels and make your future journeys much easier. Let''s take a look at a felsteed.',12,33,100,0,0,0, 'Jezelle Pruitt'),
(5702,10,0, 'I doubt you have had much occasion to see such a creature. These demonic equines will make your travels much faster by acting as your mount as long as you control them. However, they are difficult to control, so be sure you are ready before attempting it.',12,33,100,0,0,0, 'Jezelle Pruitt'),
(5702,11,0, 'There you have it. Our lesson on summoning has come to an end. A new class will begin shortly, so if you wish to brush up, feel free to stay around.',12,33,100,0,0,0, 'Jezelle Pruitt');
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,39189,0,0,31,0,3,21846,0,0,0,'',"set Sha'tari Torch implicit target to Slain Auchenai Warrior"),
(13,1,39189,0,1,31,0,3,21859,0,0,0,'',"set Sha'tari Torch implicit target to Slain Sha'tar Vindicator");
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 2350: Postponing the Inevitable
-- Mark Quest Invisman - Buying Time (26105) as trigger
UPDATE `creature_template` SET `flags_extra` = 128 WHERE `entry` = 26105;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 2782: Rune of Dawn
-- Seal of the Dawn (13209) & Rune of the Dawn (19812) scourgestones fix
UPDATE `item_template` SET `spellid_2`=17670, `spelltrigger_2`=1 WHERE `entry` IN (13209,19812);
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 4013: No Rest For The Wicked
-- Add support for quest "No Rest For the Wicked" - H {13367/13368 - daily}<>A {13367/13368 - daily}
-- Credits: based on Kiperr, Kandera and Jankic fixes
SET @SummonBunny := 32347;
SET @Alumeth     := 32300;
SET @Trigger     := 60831; -- Spell Alumeth's Remains that can hit only summoning bunny to trigger it
UPDATE `creature_template` SET `AIName`='SmartAI',`unit_flags`=4,`flags_extra`=128 WHERE `entry`=@SummonBunny;
UPDATE `creature_template` SET `AIName`='SmartAI',`faction_A`=21,`faction_H`=21 WHERE `entry`=@Alumeth; -- faction from sniffs
UPDATE `creature` SET  `spawndist`=0,`MovementType`=0 WHERE `guid`=122317; -- Summon Bunny should stay at spawn point
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@SummonBunny,@Alumeth) AND `source_type`=0;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@SummonBunny,0,0,0,8,0,100,0,60834,0,0,0,12,32300,6,20000,0,0,8,0,0,0,8219.157,2187.093,499.8201,3.106686,0, 'Alumeth Summon Bunny - On Spellhit - Summon Alumeth the Ascended'), -- He should dissapear after death, not on timer after summon.
(@Alumeth,0,0,0,0,0,100,0,8000,9000 ,8000,9000 ,11,60472,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Alumeth - IC - Cast Mindflay'),
(@Alumeth,0,1,0,0,0,100,0,8000,10000,8000,10000,11,34322,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Alumeth - IC -  Cast Psychicscream'),
(@Alumeth,0,2,0,0,0,100,0,9000,12000,9000,12000,11,37978,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alumeth - IC -  Cast Renew'),
(@Alumeth,0,3,0,0,0,100,0,7000,10000,7000,10000,11,34942,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Alumeth - IC -  Cast Shadow Word: Pain');
-- Add conditions for spell trigger to summon boss
DELETE FROM `conditions` WHERE `SourceEntry` IN (@Trigger,60834) AND `SourceTypeOrReferenceId`=13;
DELETE FROM `conditions` WHERE `SourceEntry`=@Trigger AND `SourceTypeOrReferenceId`=17;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17,0,@Trigger,0,0,29,0,@Alumeth,40,0,1,0,'', 'Alumeth''s Remains can be used only, if he is not near caster in 40 yards'),
(13,1,@Trigger,0,0,31,0,3,@SummonBunny,0,0,0,'', 'Alumeth''s Remains can hit only summoning bunny'),
(13,1,60834,0,0,31,0,3,@SummonBunny,0,0,0,'','Ping Alumeth Summon Bunny can hit only SummonBunny');
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 4551: Anatoly Will Talk
DELETE FROM `npc_spellclick_spells` WHERE npc_entry = 27626;
INSERT IGNORE INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`) VALUES
(27626,49138,1);
UPDATE creature_template SET faction_a = 16, faction_h = 16, `AIName` = 'SmartAI' WHERE `entry` = 27626;
DELETE FROM smart_scripts WHERE `entryorguid` in (27626,2762600);
INSERT IGNORE INTO smart_scripts VALUES
(27626,0,1,0,8,0,100,0x1,49134,0,0,0,12,27626,1,300000,0,0,0,0,0,0,0,0,0,0,0, 'Tatjana''s horse - On Spell Hit - resumm'),
(27626,0,2,0,54,0,100,0,0,0,0,0,80,2762600,0,2,0,0,0,1,0,0,0,0,0,0,0,'On time - Run Script'),
(27626,0,3,0,40,0,100,1,18,0,0,0,15,12330,0,0,0,0,0,18,5,0,0,0,0,0,0,'WP 18 - KC'),
(27626,0,4,0,40,0,100,1,19,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'WP 19 - Despawn'),
(27626,0,5,0,40,0,100,1,1,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Set Run"),
(27626,0,6,0,8,0,100,0x1,49134,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tatjana''s horse - On Spell Hit - Invisible'),
(27626,0,7,0,8,0,100,0x1,49134,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tatjana''s horse - On Spell Hit - Despawn'),
(27626,0,8,0,54,0,100,0,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,'On time - faction'),
(2762600,9,0,0,0,0,100,1,4000,4000,0,0,53,0,27626,0,0,0,2,0,0,0,0,0,0,0,0,'On Script - WP Start');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=49134;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES 
(13,1,49134,31,3,27626, 'Tranquilizer Dart targets Tatjana''s Horse');
DELETE FROM `waypoints` WHERE `entry`= 27626;
INSERT IGNORE INTO `waypoints`
(`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`)
VALUES
(27626,1,4042.49,-4378.298,261.47,''),
(27626,2,4052.839,-4381.89,260.577,''),
(27626,3,4061.94,-4374.57,260.44,''),
(27626,4,4078.97,-4375.19,260.93,''),
(27626,5,4090.33,-4361.82,261.34,''),
(27626,6,4091.73,-4341.6,261.34,''),
(27626,7,4094.09,-4325.83,260.91,''),
(27626,8,4108.3,-4300.63,252.85,''),
(27626,9,4124.35,-4281.08,251.25,''),
(27626,10,4126.15,-4258.29,251.3,''),
(27626,11,4126.1,-4243.9,248.35,''),
(27626,12,4100.1,-4224.51,237.86,''),
(27626,13,4087.17,-4208.72,230.58,''),
(27626,14,4082.93,-4172.83,218.13,''),
(27626,15,4077.66,-4151.22,211.94,''),
(27626,16,4083.57,-4138.46,212.4,''),
(27626,17,4079.16,-4127.81,212.26,''),
(27626,18,4067.57,-4127.6,211.13,''),
(27626,19,4068.35,-4128.44,211.3,'');
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 5025: Pilgrim's Bounty
-- INSERT IGNORE INTO proper DB table Piligrim's Bounty quest to prevent random showing it during the year
DELETE FROM `game_event_creature_quest` WHERE `quest`=14036;
INSERT IGNORE INTO `game_event_creature_quest` (`eventEntry`, `id`, `quest`) VALUES
(26,34677,14036);
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 5419: The Fallen Sisters Bugged again
-- Quest - The Fallen Sisters
SET @ENTRY := 23678;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY*100 AND `source_type`=9;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,571,495,0,2,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chill Nymph - Respawn - reset faction'),
(@ENTRY,0,1,0,25,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chill Nymph - Reset - set phase 1'),
(@ENTRY,0,2,3,2,0,100,1,0,30,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chill Nymph - On health 30% - Do text emote'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chill Nymph - On health 30% - set phase 2'),
(@ENTRY,0,4,0,0,0,75,0,2000,3000,2000,2000,11,9739,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Chill Nymph - In Combat - Cast Wrath on victim'),
(@ENTRY,0,5,6,8,2,100,0,43340,0,30000,30000,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Chill Nymph - On Spell hit 43340 - Face invoker'),
(@ENTRY,0,6,7,61,0,100,0,0,0,0,0,33,24117,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Chill Nymph - On Spell hit 43340 - Give Quest credit'),
(@ENTRY,0,7,0,61,0,100,0,0,0,0,0,80,2367800,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Chill Nymph - On Spell hit 43340 - Load script'),
(@ENTRY,0,8,0,40,0,100,0,1,23678,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chill Nymph - On reach waypoint 1 - Despawn'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chill Nymph - Script 2 - Evade'),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chill Nymph - Script 3 - Set faction 35'),
(@ENTRY*100,9,2,0,0,0,100,0,2000,2000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chill Nymph - Script 4 - Say text 1'),
(@ENTRY*100,9,3,0,0,0,100,0,1000,1000,0,0,53,1,23678,0,0,0,0,1,0,0,0,0,0,0,0, 'Chill Nymph - Script 5 - Start waypoint movement');
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 5647: The Lost Spirits
-- Update Event Type From On Summon(11) to Reset(25)
UPDATE `smart_scripts` SET `event_type`=25 WHERE `entryorguid`=25321 AND `source_type`=0 AND `id`=0;
UPDATE `smart_scripts` SET `event_type`=25 WHERE `entryorguid`=25322 AND `source_type`=0 AND `id`=0;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 5679: Feedin' Da Goolz
SET @GHOUL := 28565;
SET @TRIGER := 28591;
SET @SOURCETYPE := 0;
UPDATE `creature_template` SET `AiName`='SmartAI',`flags_extra`=`flags_extra`|2|128 WHERE `entry`=@TRIGER;
UPDATE `creature_template` SET `AiName`='SmartAI' WHERE `entry`=@GHOUL;
DELETE FROM `creature_ai_scripts`WHERE `creature_id` IN (@GHOUL,@TRIGER);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@GHOUL,@TRIGER);
INSERT IGNORE INTO `smart_scripts` VALUES 
(@GHOUL,@SOURCETYPE,0,0,38,0,100,0,0,1,0,0,29,1,1,28591,0,0,0,19,@TRIGER,15,0,0,0,0,0, 'Ghoul - on data 1 set - start follow'),
(@GHOUL,@SOURCETYPE,1,2,65,0,100,0,0,0,0,0,33,28591,0,0,0,0,0,21,20,0,0,0,0,0,0, 'Ghoul - on follow completed - give kill credit'),
(@GHOUL,@SOURCETYPE,2,3,61,0,100,0,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ghoul - on follow completed - despawn'),
(@GHOUL,@SOURCETYPE,3,0,61,0,100,0,0,0,0,0,51,0,0,0,0,0,0,11,@TRIGER,50,0,0,0,0,0, 'Ghoul - on follow completed - kill ghoul'),
(@TRIGER,@SOURCETYPE,0,0,25,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,@GHOUL,15,0,0,0,0,0, 'Ghoul Trigger - on just summoned - set data 1 on nearest Ghoul');
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 5764: The One That Got Away
-- Fix quest The One That Got Away /Alliance only/ ID: 11410
SET @Frostfin := 24500; -- The required npc to be summoned
SET @Bite := 48287; -- Npc special attack
SET @Event := 16103;
-- Add SAI for Frostfin
UPDATE `creature_template` SET `InhabitType`=2,`AIName`= 'SmartAI' WHERE `entry`= @Frostfin;
DELETE FROM `creature_ai_scripts` WHERE creature_id = @Frostfin;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Frostfin;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Frostfin,0,0,0,0,0,100,0,2000,3000,5000,8000,11,@Bite,0,0,0,0,0,2,0,0,0,0,0,0,0,'IC - Cast Powerful Bite');
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 5785: Find the Ancient Hero
SET @Mjordin := 30718;
SET @Iskalder := 30884; -- the hostile version
SET @FriendlyI := 30886; -- the friendly version
SET @Script1 := 3088400; -- spawn mjoldir on gossip
SET @Script2 := 3088401; -- spawn Iskalder on gossip
SET @Amulet := 3921; -- the spell casted on Iskalder
SET @Witch := 30232; -- Bonne witch
SET @Credit := 25729; -- quest credit
-- Add SAI for Slumbering Mjording
UPDATE `creature_template` SET AIName='SmartAI' WHERE `entry`=@Mjordin;
DELETE FROM `smart_scripts` WHERE entryorguid IN(@Mjordin,@Script1,@Script2);
INSERT IGNORE INTO `smart_scripts` VALUES
(@Mjordin,0,0,0,62,0,100,0,10008,0,0,0,87,@Script1,@Script1,@Script1,@Script2,@Script1,@Script1,1,0,0,0,0,0,0,0,'Slumbering Mjordin - Gossip - Random Script'),
(@Script1,9,0,0,0,0,100,0,500,500,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,'Slumbering Mjordin - Script - Enemy'), -- Option 1
(@Script1,9,1,0,0,0,100,0,1000,1000,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Slumbering Mjordin - Script - Aggresive'),
(@Script2,9,0,0,0,0,100,0,1000,1000,0,0,12,@Iskalder,3,180000,0,0,0,1,0,0,0,0,0, 0,0,'Slumbering Mjordin - Script - Summon Iskalder '), -- Option 2
(@Script2,9,1,0,0,0,100,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0, 0,0,'Slumbering Mjordin - Script - Unseen'),
(@Script2,9,2,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0, 0,0,'Slumbering Mjordin - Script - Despawn');
-- Add SAI for Iskalder hostile - these values are not sniffed they are guessed by wowhead comments...
UPDATE `creature_template` SET `exp`=2,`faction_A`=14, `faction_H`=14, `minlevel`=80, `maxlevel`=80, `mindmg`=300, `maxdmg`=350, `AIName`='SmartAI' WHERE `entry`=@Iskalder;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Iskalder;
INSERT IGNORE INTO `smart_scripts` VALUES
(@Iskalder,0,0,0,54,0,100,0,0,0,0,0,1,1,100,0,0,0,0,1,0,0,0,0,0,0,0,'Iskalder - On summon - Say text'),
(@Iskalder,0,1,0,8,0,100,0,@Amulet,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Iskalder - On hit by spell from amulet - Despawn');
-- Add SAI for Iskalder Friendly
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@FriendlyI;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@FriendlyI;
INSERT IGNORE INTO `smart_scripts` VALUES
(@FriendlyI,0,0,0,0,0,100,1,1,1,1,1,18,512,0,0,0,0,0,1,0,0,0,0,0,0,0,'Friendly Iskalder - On IC - Change field flag to immune to npc/prevents from not moving bug/'),
(@FriendlyI,0,1,0,1,0,100,0,2000,3000,2000,3000,29,0,0,@Witch,0,1,0,9,@Witch,1,10,0,0,0,0,'Friendly Iskalder - On OOC - Follow Bonnewitch if in range 10 yards'),
(@FriendlyI,0,2,0,65,0,100,0,0,0,0,0,11,@Credit,0,0,0,0,0,23,0,0,0,0,0,0,0,'Friendly Iskalder - On follow complete - Cast spell credit to player');
-- Makes amulet target only the required npc
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=@Amulet;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition` ,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,@Amulet,0,0,31,1,3,@Iskalder,0,0,0,'','Amulet can target only Iskalder');
-- The purple beam effect of amulet can target only Iskalder
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=@Amulet;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition` ,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,2,@Amulet,0,0,31,1,3,@Iskalder,0,0,0,'','The purple beam effect of amulet can target only Iskalder');
-- Cast amulet on Iskalder warning /text/
DELETE FROM `creature_text` WHERE `entry`=@Iskalder;
INSERT IGNORE INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@Iskalder,1,1,'You have found him! Now is the time to use the The Bone Witch"s Amulet!',41,0,100,0,100,0,'Originaly it as the Bonne witch guide');
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 6627: Quest - 28056
-- Adding SmartAI Text for Lathoric the Black
DELETE FROM `creature_text` WHERE `entry`=8391;
INSERT IGNORE INTO creature_text (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(8391,0,0, 'You are here to stop the Archduke?',14,0,100,0,0,0, 'Lathoric the Black'),
(8391,1,0, 'Fools.  Obsidion!  Rise, and destroy the interlopers!',14,0,100,0,0,0, 'Lathoric the Black');
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 5760: Before the Gate of Horror
-- Fix {Qs} Before the Gate of Horror Id: 13335 /Alliance/ and Before the Gate of Horror Id: 13329 /Horde/
SET @SkeletalReaver  := 32467; -- The main npcs that can be hit with spell Dissolve only in dead condition
SET @FreedRemnant    := 32288; -- Kill credit from quest that has no spell to be used with, so requires action 33
SET @Dissolve        := 60428; -- Spell used to trigger npc to cast kill credit on invoker
-- Add SAI for Skeletal Reaver
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@SkeletalReaver;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@SkeletalReaver;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@SkeletalReaver,0,0,1,8,0,100,0,@Dissolve,0,0,0,33,@FreedRemnant,0,0,0,0,0,7,0,0,0,0,0,0,0,'Skeletal Reaver - On hit by spell Dissolve - Give kill credit to invoker'),
(@SkeletalReaver,0,1,2,61,0,100,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Skeletal Reaver - Linked with previous event - Set unseen'),
(@SkeletalReaver,0,2,0,61,0,100,0,0,0,0,0,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Skeletal Reaver - Linked with previous event - Set despawn in 1 ms');
-- Add conditions for spell Dissolve to target only dead Skeletal Reavers
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=@Dissolve;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition` ,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,@Dissolve,0,0,36,1,0,0,0,1,0,'','Dissolve can be casted only on creatures that are not alive'),
(17,0,@Dissolve,0,0,31,1,3,@SkeletalReaver,0,0,0,'','Dissolve can be casted only on Skeletal Reavers');
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 6632: Quest Audio - 12593
UPDATE `creature_template` SET `AIName`= 'SmartAI'  WHERE `entry`=25462;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=25462 AND `source_type`=0);
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(25462,0,0,0,19,0,100,0,12593,0,0,0,4,14734,0,0,0,0,0,1,0,0,0,0,0,0,0, 'The Lich King - On Quest Accept - Play Sound');
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 6724: Souls of the Decursed
DELETE FROM `conditions` WHERE `SourceEntry`=46485 AND `ConditionValue2`=26814; -- /slap to the guy that entered this query
UPDATE IGNORE `conditions` SET `ConditionValue2`=25814,`ElseGroup`=0 WHERE `SourceEntry`=46485 AND `ConditionTypeOrReference`=31;
DELETE FROM `smart_scripts` WHERE `entryorguid`=25814 AND `source_type`=0;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25814,0,0,0,4,0,100,0,0,0,0,0,1,1,10000,0,0,0,0,0,0,0,0,0,0,0,0, 'Fizzcrank Mechagnome - On Aggro - Say Line'),
(25814,0,1,0,8,0,100,0,45980,0,0,0,33,25773,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Fizzcrank Mechagnome - On Spellhit 45980 - Give Kill Credit (Re-Cursive)'),
(25814,0,2,3,8,0,100,0,46485,0,0,0,33,26096,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Fizzcrank Mechagnome - On Spellhit 46485 - Give Kill Credit (Souls of the Decursed'),
(25814,0,3,0,61,0,100,0,0,0,0,0,41,10,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fizzcrank Mechagnome - On Spellhit 46485 - Despawn after 10 ms');
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- GO smart script
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=180437;
DELETE FROM `smart_scripts` WHERE `entryorguid`=180437 AND `source_type`=1;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(180437,1,0,1,62,0,100,0,6535,0,0,0,85,24705,34,0,0,0,0,7,0,0,0,0,0,0,0, 'Wickerman Ember - on Gossip Select - Cast Invocation of the Wickerman'),
(180437,1,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Wickerman Ember - on Link - Close gossip');
-- ------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 8244: Hallow's End Pumpkin Treat & Tricky Treat time fix
-- Hallow's End Pumpkin Treat time fix & Tricky Treat time fix
UPDATE `item_template` SET `flagsCustom`=1 WHERE `entry` IN(20557,33226);
-- ------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 8288: Exhausted Vrykul - not responding after using discipline stick on him
SET @ENTRY := 30146; -- Exhausted Vrykul
SET @SPELL := 56033; -- Disciplining Rod
DELETE FROM `creature_template_addon` WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY*100,@ENTRY*100+1) AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,25,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Exhausted Vrykul - Reset - Switch to Phase 1'),
(@ENTRY,0,1,0,1,1,100,0,0,0,0,0,90,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Exhausted Vrykul - On phase 1 - Seat'),
(@ENTRY,0,2,3,8,1,100,0,@SPELL,0,0,0,33,29886,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Exhausted Vrykul - On Spell hit & phase 1 - Kill Credit'),
(@ENTRY,0,3,0,61,1,100,0,0,0,0,0,31,2,3,0,0,0,0,1,0,0,0,0,0,0,0, 'Exhausted Vrykul - Link Spell hit - Switch to Phase 2 or 3'),
(@ENTRY,0,4,5,1,2,100,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Exhausted Vrykul - If phase 2 - Say random text 0'),
(@ENTRY,0,5,6,61,2,100,0,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Exhausted Vrykul - If phase 2 - Stand up'),
(@ENTRY,0,6,0,61,2,100,0,0,0,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Exhausted Vrykul - On phase 2 - Start Attack'),
(@ENTRY,0,7,8,1,4,100,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Exhausted Vrykul - On phase 3 - Say random text 1'),
(@ENTRY,0,8,9,61,4,100,0,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Exhausted Vrykul - If phase 3 - Stand up'),
(@ENTRY,0,9,10,61,4,100,0,0,0,0,0,46,6,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Exhausted Vrykul - If phase 3 - walk 6 yards'),
(@ENTRY,0,10,0,61,4,100,0,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Exhausted Vrykul - On phase 3 - Emote Work mining'),
(@ENTRY,0,11,0,1,4,100,1,60000,60000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Exhausted Vrykul - On phase 3 & 1 minute OOC - despawn'),
(@ENTRY,0,12,0,2,0,100,1,0,30,0,0,11,57395,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Exhausted Vrykul - At 30% Hp - Cast Desperate Blow');
-- Set the quest on creatures that are available outside of eventtime as well
DELETE FROM `game_event_creature_quest` WHERE `quest` IN (14022,14036);
INSERT IGNORE INTO `game_event_creature_quest` (`eventEntry`,`id`,`quest`) VALUES
(41,18927,14022), -- Start Pilgrim's Bounty on Human Commoner
(41,20102,14022), -- Start Pilgrim's Bounty on Goblin Commoner
(41,19169,14036), -- Start Pilgrim's Bounty on Blood Elf Commoner
(41,19175,14036), -- Start Pilgrim's Bounty on Orc Commoner
(41,20102,14036); -- Start Pilgrim's Bounty on Goblin Commoner
-- Undercity
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000197 AND -1000196;
DELETE FROM `creature_text` WHERE `entry`=10181;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`text`,`type`,`probability`,`comment`) VALUES
(10181,0,'%s kneels down and pick up the amulet.',16,100,'npc_lady_sylvanas_windrunner EMOTE_LAMENT_END'),
(10181,1,'Belore...',14,100,'npc_lady_sylvanas_windrunner SAY_LAMENT_END');

-- Ironaya
DELETE FROM `script_texts` WHERE `entry`=-1070000;
DELETE FROM `creature_text` WHERE `entry`=7228;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`text`,`type`,`sound`,`probability`,`comment`) VALUES
(7228,0,'None may steal the secrets of the makers!',14,5851,100,'ironaya SAY_AGGRO');

-- Opera
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1532028 AND -1532025;
DELETE FROM `creature_text` WHERE `entry`=17535;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`text`,`type`,`sound`,`probability`,`comment`) VALUES
(17535,0,'Oh at last, at last. I can go home.',14,9190,100,'dorothee SAY_DOROTHEE_DEATH'),
(17535,1,"Don't let them hurt us, Tito! Oh, you won't, will you?",14,9191,100,'dorothee SAY_DOROTHEE_SUMMON'),
(17535,2,'Tito, oh Tito, no!',14,9192,100,'dorothee SAY_DOROTHEE_TITO_DEATH'),
(17535,3,'Oh dear, we simply must find a way home! The old wizard could be our only hope! Strawman, Roar, Tinhead, will you... wait! Oh golly, look! We have visitors!',14,9195,100,'dorothee SAY_DOROTHEE_AGGRO');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1532031 AND -1532029;
DELETE FROM `creature_text` WHERE `entry`=17546;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`text`,`type`,`sound`,`probability`,`comment`) VALUES
(17546,0,"Wanna fight? Huh? Do ya? C'mon, I'll fight you with both claws behind my back!",14,9227,100,'roar SAY_ROAR_AGGRO'),
(17546,1,"You didn't have to go and do that.",14,9229,100,'roar SAY_ROAR_DEATH'),
(17546,2,"I think I'm going to go take fourty winks.",14,9230,100,'roar SAY_ROAR_SLAY');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1532034 AND -1532032;
DELETE FROM `creature_text` WHERE `entry`=17543;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`text`,`type`,`sound`,`probability`,`comment`) VALUES
(17543,0,"Now what should I do with you? I simply can't make up my mind.",14,9254,100,'strawman SAY_STRAWMAN_AGGRO'),
(17543,1,"Don't let them make a mattress... out of me.",14,9256,100,'strawman SAY_STRAWMAN_DEATH'),
(17543,2,"I guess I'm not a failure after all.",14,9257,100,'strawman SAY_STRAWMAN_SLAY');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1532038 AND -1532035;
DELETE FROM `creature_text` WHERE `entry`=17547;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`text`,`type`,`sound`,`probability`,`comment`) VALUES
(17547,0,"I could really use a heart. Say, can I have yours?",14,9268,100,'tinhead SAY_TINHEAD_AGGRO'),
(17547,1,"Back to being an old rustbucket.",14,9270,100,'tinhead SAY_TINHEAD_DEATH'),
(17547,2,"Guess I'm not so rusty, after all.",14,9271,100,'tinhead SAY_TINHEAD_SLAY'),
(17547,3,"%s begins to rust.",16,0,100,'tinhead EMOTE_RUST');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1532042 AND -1532039;
DELETE FROM `creature_text` WHERE `entry`=18168;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`text`,`type`,`sound`,`probability`,`comment`) VALUES
(18168,0,0,"Woe to each and every one of you my pretties! <cackles>",14,9179,100,'crone SAY_CRONE_AGGRO'),
(18168,0,1,"It will all be over soon! <cackles>",14,9307,100,'crone SAY_CRONE_AGGRO2'),
(18168,1,0,"How could you? What a cruel, cruel world!",14,9178,100,'crone SAY_CRONE_DEATH'),
(18168,2,0,"Fixed you, didn't I? <cackles>",14,9180,100,'crone SAY_CRONE_SLAY');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1532045 AND -1532043;
DELETE FROM `creature_text` WHERE `entry`=17521;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`text`,`type`,`sound`,`probability`,`comment`) VALUES
(17521,0,"All the better to own you with!",14,9276,100,'wolf SAY_WOLF_AGGRO'),
(17521,1,"Mmmm... delicious.",14,9277,100,'SAY_WOLF_SLAY'),
(17521,2,"Run away little girl, run away!",14,9278,100,'SAY_WOLF_HOOD');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1532051 AND -1532046;
DELETE FROM `creature_text` WHERE `entry`=17534;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`text`,`type`,`sound`,`probability`,`comment`) VALUES
(17534,0,"What devil art thou, that dost torment me thus?",14,9196,100,'julianne SAY_JULIANNE_AGGRO'),
(17534,1,"Where is my lord? Where is my Romulo?",14,9199,100,'julianne SAY_JULIANNE_ENTER'),
(17534,2,"Romulo, I come! Oh... this do I drink to thee!",14,9199,100,'julianne SAY_JULIANNE_DEATH01'),
(17534,3,"Where is my Lord? Where is my Romulo? Ohh, happy dagger! This is thy sheath! There rust, and let me die!",14,9310,100,'julianne SAY_JULIANNE_DEATH02'),
(17534,4,"Come, gentle night; and give me back my Romulo!",14,9200,100,'julianne SAY_JULIANNE_RESURRECT'),
(17534,5,"Parting is such sweet sorrow.",14,9201,100,'julianne SAY_JULIANNE_SLAY');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1532056 AND -1532052;
DELETE FROM `creature_text` WHERE `entry`=17533;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`text`,`type`,`sound`,`probability`,`comment`) VALUES
(17533,0,"Wilt thou provoke me? Then have at thee, boy!",14,9233,100,'romulo SAY_ROMULO_AGGRO'),
(17533,1,"Thou smilest... upon the stroke that... murders me.",14,9235,100,'romulo SAY_ROMULO_DEATH'),
(17533,2,"This day's black fate on more days doth depend. This but begins the woe. Others must end.",14,9236,100,'romulo SAY_ROMULO_ENTER'),
(17533,3,"Thou detestable maw, thou womb of death; I enforce thy rotten jaws to open!",14,9237,100,'romulo SAY_ROMULO_RESURRECT'),
(17533,4,"How well my comfort is revived by this!",14,9238,100,'romulo SAY_ROMULO_SLAY');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1532114 AND -1532103;
DELETE FROM `creature_text` WHERE `entry`=16812;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`text`,`type`,`sound`,`probability`,`comment`) VALUES
(16812,0,"Welcome Ladies and Gentlemen, to this evening's presentation!",14,9174,100,'barnes OZ1'),
(16812,1,"Tonight we plumb the depths of the human soul as we join a lost, lonely girl trying desperately -- with the help of her loyal companions -- to find her way home!",14,9338,100,'barnes OZ2'),
(16812,2,"But she is pursued... by a wicked malevolent crone!",14,9339,100,'barnes OZ3'),
(16812,3,"Will she survive? Will she prevail? Only time will tell. And now ... on with the show!",14,9340,100,'barnes OZ4'),
(16812,4,"Good evening, Ladies and Gentlemen! Welcome to this evening's presentation!",14,9175,100,'barnes HOOD1'),
(16812,5,"Tonight, things are not what they seem. For tonight, your eyes may not be trusted",14,9335,100,'barnes HOOD2'),
(16812,6,"Take for instance, this quiet, elderly woman, waiting for a visit from her granddaughter. Surely there is nothing to fear from this sweet, grey-haired, old lady.",14,9336,100,'barnes HOOD3'),
(16812,7,"But don't let me pull the wool over your eyes. See for yourself what lies beneath those covers! And now... on with the show!",14,9337,100,'barnes HOOD4'),
(16812,8,"Welcome, Ladies and Gentlemen, to this evening's presentation!",14,9176,100,'barnes RAJ1'),
(16812,9,"Tonight, we explore a tale of forbidden love!",14,9341,100,'barnes RAJ2'),
(16812,10,"But beware, for not all love stories end happily, as you may find out. Sometimes, love pricks like a thorn.",14,9342,100,'barnes RAJ3'),
(16812,11,"But don't take it from me, see for yourself what tragedy lies ahead when the paths of star-crossed lovers meet. And now...on with the show!",14,9343,100,'barnes RAJ4');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1532102 AND -1532091;
DELETE FROM `creature_text` WHERE `entry`=15690;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`text`,`type`,`sound`,`probability`,`comment`) VALUES
(15690,0,0,"Madness has brought you here to me. I shall be your undoing!",14,9218,100,'malchezaar SAY_AGGRO'),
(15690,1,0,"Simple fools! Time is the fire in which you'll burn!",14,9220,100,'malchezaar SAY_AXE_TOSS1'),
(15690,2,0,"I see the subtlety of conception is beyond primitives such as you.",14,9317,100,'malchezaar SAY_AXE_TOSS2'),
(15690,3,0,"Who knows what secrets hide in the dark.",14,9223,100,'malchezaar SAY_SPECIAL1'),
(15690,4,0,"The cerestial forces are mine to manipulate.",14,9320,100,'malchezaar SAY_SPECIAL2'),
(15690,5,0,"How can you hope to withstand against such overwhelming power?",14,9321,100,'malchezaar SAY_SPECIAL3'),
(15690,6,0,"Surely you did not think you could win.",14,9222,100,'malchezaar SAY_SLAY1'),
(15690,6,1,"Your greed, your foolishness has brought you to this end.",14,9318,100,'malchezaar SAY_SLAY2'),
(15690,6,2,"You are, but a plaything, unfit even to amuse.",14,9319,100,'malchezaar SAY_SLAY3'),
(15690,7,0,"All realities, all dimensions are open to me!",14,9224,100,'malchezaar SAY_SUMMON1'),
(15690,7,1,"You face not Malchezaar alone, but the legions I command!",14,9322,100,'malchezaar SAY_SUMMON2'),
(15690,8,0,"I refuse to concede defeat. I am a prince of the Eredar! I am...",14,9221,100,'malchezaar SAY_DEATH');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1532088 AND -1532073;
DELETE FROM `creature_text` WHERE `entry`=16524;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`text`,`type`,`sound`,`probability`,`comment`) VALUES
(16524,0,0,"Please, no more. My son... he's gone mad!",14,9241,100,'aran SAY_AGGRO1'),
(16524,0,1,"I'll not be tortured again!",14,9323,100,'aran SAY_AGGRO2'),
(16524,0,2,"Who are you? What do you want? Stay away from me!",14,9324,100,'aran SAY_AGGRO3'),
(16524,1,0,"I'll show you this beaten dog still has some teeth!",14,9245,100,'aran SAY_FLAMEWREATH1'),
(16524,1,1,"Burn you hellish fiends!",14,9326,100,'aran SAY_FLAMEWREATH2'),
(16524,2,0,"I'll freeze you all!",14,9246,100,'aran SAY_BLIZZARD1'),
(16524,2,1,"Back to the cold dark with you!",14,9327,100,'aran SAY_BLIZZARD2'),
(16524,3,0,"Yes, yes, my son is quite powerful... but I have powers of my own!",14,9242,100,'aran SAY_EXPLOSION1'),
(16524,3,1,"I am not some simple jester! I am Nielas Aran!",14,9325,100,'aran SAY_EXPLOSION2'),
(16524,4,0,"Surely you would not deny an old man a replenishing drink? No, no I thought not.",14,9248,100,'aran SAY_DRINK'),
(16524,5,0,"I'm not finished yet! No, I have a few more tricks up me sleeve.",14,9251,100,'aran SAY_ELEMENTALS'),
(16524,6,0,"I want this nightmare to be over!",14,9250,100,'aran SAY_KILL1'),
(16524,6,1,"Torment me no more!",14,9328,100,'aran SAY_KILL2'),
(16524,7,0,"You've wasted enough of my time. Let these games be finished!",14,9247,100,'aran SAY_TIMEOVER'),
(16524,8,0,"At last... The nightmare is.. over...",14,9244,100,'aran SAY_DEATH'),
(16524,9,0,"Where did you get that?! Did HE send you?!",14,9249,100,'aran SAY_ATIESH');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1532072 AND -1532065;
DELETE FROM `creature_text` WHERE `entry`=15688;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`text`,`type`,`sound`,`probability`,`comment`) VALUES
(15688,0,0,"Your blood will anoint my circle.",14,9264,100,'terestian SAY_SLAY1'),
(15688,0,1,"The great one will be pleased.",14,9329,100,'terestian SAY_SLAY2'),
(15688,1,0,"My life, is yours. Oh great one.",14,9262,100,'terestian SAY_DEATH'),
(15688,2,0,"Ah, you're just in time. The rituals are about to begin.",14,9260,100,'terestian SAY_AGGRO'),
(15688,3,0,"Please, accept this humble offering, oh great one.",14,9263,100,'terestian SAY_SACRIFICE1'),
(15688,3,1,"Let the sacrifice serve his testament to my fealty.",14,9330,100,'terestian SAY_SACRIFICE2'),
(15688,4,0,"Come, you dwellers in the dark. Rally to my call!",14,9265,100,'terestian SAY_SUMMON1'),
(15688,4,1,"Gather, my pets. There is plenty for all.",14,9331,100,'terestian SAY_SUMMON2');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1532017 AND -1532011;
DELETE FROM `creature_text` WHERE `entry`=15687;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`text`,`type`,`sound`,`probability`,`comment`) VALUES
(15687,0,0,"Hmm, unannounced visitors? Preparations must be made.",14,9211,100,'moroes SAY_AGGRO'),
(15687,1,0,"Now, where was I? Oh yes...",14,9215,100,'moroes SAY_SPECIAL_1'),
(15687,1,1,"You rang?",14,9316,100,'moroes SAY_SPECIAL_2'),
(15687,2,0,"One more for dinner this evening.",14,9214,100,'moroes SAY_KILL_1'),
(15687,2,1,"Time... Never enough time.",14,9314,100,'moroes SAY_KILL_2'),
(15687,2,2,"I've gone and made a mess.",14,9315,100,'moroes SAY_KILL_3'),
(15687,3,0,"How terribly clumsy of me...",14,9213,100,'moroes SAY_DEATH');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1532064 AND -1532057;
DELETE FROM `creature_text` WHERE `entry`=15691;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`text`,`type`,`sound`,`probability`,`comment`) VALUES
(15691,0,0,"The Menagerie is for guests only.",14,9183,100,'curator SAY_AGGRO'),
(15691,1,0,"Gallery rules will be strictly enforced.",14,9188,100,'curator SAY_SUMMON1'),
(15691,1,1,"This curator is equipped for gallery protection.",14,9309,100,'curator SAY_SUMMON2'),
(15691,2,0,"Your request cannot be processed.",14,9186,100,'curator SAY_EVOCATE'),
(15691,3,0,"Failure to comply will result in offensive action.",14,9185,100,'curator SAY_ENRAGE'),
(15691,4,0,"Do not touch the displays.",14,9187,100,'curator SAY_KILL1'),
(15691,4,1,"You are not a guest.",14,9308,100,'curator SAY_KILL2'),
(15691,5,0,"This Curator is no longer op... er... ation... al.",14,9184,100,'curator SAY_DEATH');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1532010 AND -1532000;
DELETE FROM `creature_text` WHERE `entry`=16151;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`text`,`type`,`sound`,`probability`,`comment`) VALUES
(16151,0,0,"Well done Midnight!",14,9173,100,'attumen SAY_MIDNIGHT_KILL'),
(16151,1,0,"Cowards! Wretches!",14,9167,100,'attumen SAY_APPEAR1'),
(16151,1,1,"Who dares attack the steed of the Huntsman?",14,9298,100,'attumen SAY_APPEAR2'),
(16151,1,2,"Perhaps you would rather test yourselves against a more formidable opponent?!",14,9299,100,'attumen SAY_APPEAR3'),
(16151,2,0,"Come, Midnight, let's disperse this petty rabble!",14,9168,100,'attumen SAY_MOUNT'),
(16151,3,0,"It was... inevitable.",14,9169,100,'attumen SAY_KILL1'),
(16151,3,1,"Another trophy to add to my collection!",14,9300,100,'attumen SAY_KILL2'),
(16151,4,0,"Weapons are merely a convenience for a warrior of my skill!",14,9166,100,'attumen SAY_DISARMED'),
(16151,5,0,"I always knew... someday I would become... the hunted.",14,9165,100,'attumen SAY_DEATH'),
(16151,6,0,"Such easy sport.",14,9170,100,'attumen SAY_RANDOM1'),
(16151,6,1,"Amateurs! Do not think you can best me! I kill for a living.",14,9304,100,'attumen SAY_RANDOM2');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1532024 AND -1532018;
DELETE FROM `creature_text` WHERE `entry`=16457;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`text`,`type`,`sound`,`probability`,`comment`) VALUES
(16457,0,0,"Your behavior will not be tolerated!",14,9204,100,'maiden SAY_AGGRO'),
(16457,1,0,"Ah ah ah...",14,9207,100,'maiden SAY_SLAY1'),
(16457,1,1,"This is for the best.",14,9312,100,'maiden SAY_SLAY2'),
(16457,1,2,"Impure thoughts lead to profane actions.",14,9311,100,'maiden SAY_SLAY3'),
(16457,2,0,"Cast out your corrupt thoughts.",14,9313,100,'maiden SAY_REPENTANCE1'),
(16457,2,1,"Your impurity must be cleansed.",14,9208,100,'maiden SAY_REPENTANCE2'),
(16457,3,0,"Death comes. Will your conscience be clear?",14,9206,100,'maiden SAY_DEATH');

DELETE FROM `script_texts` WHERE `entry`=-1189021;
DELETE FROM `creature_text` WHERE `entry`=3974;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`text`,`type`,`sound`,`probability`,`comment`) VALUES
(3974,0,0,"Release the hounds!",14,5841,100,'loksey SAY_AGGRO');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1189007 AND -1189001;
DELETE FROM `creature_text` WHERE `entry` IN (23682,23775);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`text`,`type`,`sound`,`probability`,`comment`) VALUES
(23775,0,0,"Hah, is that all?",14,5831,100,'headless horseman SAY_LOST_HEAD'),
(23775,1,0,"Unworthy!",14,5836,100,'headless horseman SAY_PLAYER_DEATH'),
(23682,0,0,"Blades of Light!",14,5832,100,'headless horseman SAY_ENTRANCE'),
(23682,1,0,"Light, give me strength!",14,5833,100,'headless horseman SAY_REJOINED'),
(23682,2,0,"%s becomes enraged!",16,0,100,'headless horseman SAY_CONFLAGRATION'),
(23682,3,0,"Infidels! They must be purified!",14,5835,100,'headless horseman SAY_SPROUTING_PUMPKINS'),
(23682,4,0,"At your side, milady!",14,5837,100,'headless horseman SAY_DEATH');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1189004 AND -1189000;
DELETE FROM `creature_text` WHERE `entry`=3975;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`text`,`type`,`sound`,`probability`,`comment`) VALUES
(3975,0,0,"Ah, I have been waiting for a real challenge!",14,5830,100,'herod SAY_AGGRO'),
(3975,1,0,"Blades of Light!",14,5832,100,'herod SAY_WHIRLWIND'),
(3975,2,0,"Light, give me strength!",14,5833,100,'herod SAY_ENRAGE'),
(3975,3,0,"Hah, is that all?",14,5831,100,'herod SAY_KILL'),
(3975,4,0,"%s becomes enraged!",16,0,100,'herod EMOTE_ENRAGE');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1189020 AND -1189019;
DELETE FROM `creature_text` WHERE `entry`=6487;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`text`,`type`,`sound`,`probability`,`comment`) VALUES
(6487,0,0,"You will not defile these mysteries!",14,5842,100,'doan SAY_AGGRO'),
(6487,1,0,"Burn in righteous fire!",14,5843,100,'doan SAY_SPECIALAE');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1189007 AND -1189005;
DELETE FROM `creature_text` WHERE `entry`=3976;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`text`,`type`,`sound`,`probability`,`comment`) VALUES
(3976,0,0,"Infidels! They must be purified!",14,5835,100,'mograine SAY_MO_AGGRO'),
(3976,1,0,"Unworthy!",14,5836,100,'mograine SAY_MO_KILL'),
(3976,2,0,"At your side, milady!",14,5837,100,'mograine SAY_MO_RESSURECTED');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1189010 AND -1189008;
DELETE FROM `creature_text` WHERE `entry`=3977;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`text`,`type`,`sound`,`probability`,`comment`) VALUES
(3977,0,0,"What, Mograine has fallen? You shall pay for this treachery!",14,5838,100,'whitemane SAY_WH_INTRO'),
(3977,1,0,"The Light has spoken!",14,5839,100,'whitemane SAY_WH_KILL'),
(3977,2,0,"Arise, my champion!",14,5840,100,'whitemane SAY_WH_RESSURECT');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1189018 AND -1189016;
DELETE FROM `creature_text` WHERE `entry`=4543;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`text`,`type`,`sound`,`probability`,`comment`) VALUES
(4543,0,0,"We hunger for vengeance.",14,5844,100,'thalnos SAY_AGGRO'),
(4543,1,0,"No rest, for the angry dead.",14,5846,100,'thalnos SAY_HEALTH'),
(4543,2,0,"More... More souls.",14,5845,100,'thalnos SAY_KILL');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1189015 AND -1189011;
DELETE FROM `creature_text` WHERE `entry` IN (3983,3981);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`text`,`type`,`sound`,`probability`,`comment`) VALUES
(3983,0,0,"Tell me... tell me everything!",14,5847,100,'vishas SAY_AGGRO'),
(3983,1,0,"Naughty secrets!",14,5849,100,'vishas SAY_HEALTH1'),
(3983,2,0,"I'll rip the secrets from your flesh!",14,5850,100,'vishas SAY_HEALTH2'),
(3983,3,0,"Purged by pain!",14,5848,100,'vishas SAY_KILL'),
(3981,0,0,"The monster got what he deserved.",12,0,100,'vishas SAY_TRIGGER_VORREL');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1033009 AND -1033007;
DELETE FROM `creature_text` WHERE `entry` IN (3849,3850,4275);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`text`,`type`,`sound`,`probability`,`language`,`emote`,`comment`) VALUES
(3849,0,0,"About time someone killed the wretch.",12,0,100,1,1,'prisoner adamant SAY_BOSS_DIE_AD'),
(3850,0,0,"For once I agree with you... scum.",12,0,100,7,1,'prisoner ashcrombe SAY_BOSS_DIE_AS'),
(4275,0,0,"Who dares interfere with the Sons of Arugal?",14,0,100,0,0,'');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1033006 AND -1033000;
DELETE FROM `creature_text` WHERE `entry` IN (3849,3850);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`text`,`type`,`sound`,`probability`,`language`,`emote`,`comment`) VALUES
(3850,0,0,"Follow me and I'll open the courtyard door for you.",14,0,100,7,1,'prisoner ashcrombe SAY_FREE_AS'),
(3850,1,0,"I have just the spell to get this door open. Too bad the cell doors weren't locked so haphazardly.",14,0,100,7,1,'prisoner ashcrombe SAY_OPEN_DOOR_AS'),
(3850,2,0,"There it is! Wide open. Good luck to you conquering what lies beyond. I must report back to the Kirin Tor at once!",14,0,100,7,1,'prisoner ashcrombe SAY_POST_DOOR_AS'),
(3849,0,0,"Free from this wretched cell at last! Let me show you to the courtyard....",14,0,100,1,1,'prisoner adamant SAY_FREE_AD'),
(3849,1,0,"You are indeed courageous for wanting to brave the horrors that lie beyond this door.",14,0,100,1,1,'prisoner adamant SAY_OPEN_DOOR_AD'),
(3849,2,0,"There we go!",14,0,100,1,1,'prisoner adamant SAY_POST1_DOOR_AD'),
(3849,3,0,"Good luck with Arugal. I must hurry back to Hadrec now.",14,0,100,1,1,'prisoner adamant SAY_POST2_DOOR_AD');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1580016 AND -1580000;
DELETE FROM `creature_text` WHERE `entry` IN (24892,24850,24891);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`text`,`type`,`sound`,`probability`,`comment`) VALUES
(24892,0,0,"There will be no reprieve. My work here is nearly finished.",14,12451,100,'sathrovarr SAY_SATH_AGGRO'),
(24892,1,0,"Pitious mortal!",14,12455,100,'sathrovarr SAY_SATH_SLAY1'),
(24892,1,1,"Haven't you heard? I always win!",14,12456,100,'sathrovarr SAY_SATH_SLAY2'),
(24892,2,0,"I'm... never on... the losing... side...",14,12452,100,'sathrovarr SAY_SATH_DEATH'),
(24892,3,0,"Your misery is my delight!",14,12453,100,'sathrovarr SAY_SATH_SPELL1'),
(24892,4,0,"I will watch you bleed!",14,12454,100,'sathrovarr SAY_SATH_SPELL2'),
(24850,0,0,"Aggh! No longer will I be a slave to Malygos! Challenge me and you will be destroyed!",14,12422,100,'kalecgos SAY_EVIL_AGGRO'),
(24850,1,0,"In the name of Kil'jaeden!",14,12425,100,'kalecgos SAY_EVIL_SLAY1'),
(24850,1,1,"You were warned!",14,12426,100,'kalecgos SAY_EVIL_SLAY2'),
(24850,2,0,"I am forever in your debt. Once we have triumphed over Kil'jaeden, this entire world will be in your debt as well.",14,12431,100,'kalecgos SAY_GOOD_PLRWIN'),
(24850,3,0,"My awakening is complete! You shall all perish!",14,12427,100,'kalecgos SAY_EVIL_ENRAGE'),
(24891,0,0,"I need... your help... Cannot... resist him... much longer...",14,12428,100,'kalecgos SAY_GOOD_AGGRO'),
(24891,1,0,"Aaahhh! Help me, before I lose my mind!",14,12429,100,'kalecgos SAY_GOOD_NEAR_DEATH'),
(24891,2,0,"Hurry! There is not much of me left!",14,12430,100,'kalecgos SAY_GOOD_NEAR_DEATH2');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1580065 AND -1580044;
DELETE FROM `creature_text` WHERE `entry` IN (24882,24895);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`text`,`type`,`sound`,`probability`,`comment`) VALUES
(24882,0,0,"Puny lizard! Death is the only answer you'll find here!",14,12458,100,'brutallus YELL_INTRO'),
(24882,1,0,"Grah! Your magic is weak!",14,12459,100,'brutallus YELL_INTRO_BREAK_ICE'),
(24882,2,0,"I will crush you!",14,12460,100,'brutallus YELL_INTRO_CHARGE'),
(24882,3,0,"That was fun.",14,12461,100,'brutallus YELL_INTRO_KILL_MADRIGOSA'),
(24882,4,0,"Come, try your luck!",14,12462,100,'brutallus YELL_INTRO_TAUNT'),
(24882,5,0,"Ahh! More lambs to the slaughter!",14,12463,100,'brutallus YELL_AGGRO'),
(24882,6,0,"Perish, insect!",14,12464,100,'brutallus YELL_KILL1'),
(24882,6,1,"You are meat!",14,12465,100,'brutallus YELL_KILL2'),
(24882,6,2,"Too easy!",14,12466,100,'brutallus YELL_KILL3'),
(24882,7,0,"Bring the fight to me!",14,12467,100,'brutallus YELL_LOVE1'),
(24882,7,1,"Another day, another glorious battle!",14,12468,100,'brutallus YELL_LOVE2'),
(24882,7,2,"I live for this!",14,12469,100,'brutallus YELL_LOVE3'),
(24882,8,0,"So much for a real challenge... Die!",14,12470,100,'brutallus YELL_BERSERK'),
(24882,9,0,"Gah! Well done... Now... this gets... interesting...",14,12471,100,'brutallus YELL_DEATH'),
(24895,0,0,"Hold, friends! There is information to be had before this devil meets his fate!",14,12472,100,'madrigosa YELL_MADR_ICE_BARRIER'),
(24895,1,0,"Where is Anveena, demon? What has become of Kalec?",14,12473,100,'madrigosa YELL_MADR_INTRO'),
(24895,2,0,"You will tell me where they are!",14,12474,100,'madrigosa YELL_MADR_ICE_BLOCK'),
(24895,3,0,"Speak, I grow weary of asking!",14,12475,100,'madrigosa YELL_MADR_TRAP'),
(24895,4,0,"Malygos, my lord! I did my best!",14,12476,100,'madrigosa YELL_MADR_DEATH');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1580065 AND -1580044;
DELETE FROM `creature_text` WHERE `entry` IN (25166,25165);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(25165,0,0,14,12484,100,"eredar - YELL_INTRO_SAC_1","Misery..."),
(25165,1,0,14,0,100,"eredar - YELL_INTRO_SAC_3","Confusion..."),
(25165,2,0,14,0,100,"eredar - YELL_INTRO_SAC_5","Mistrust..."),
(25165,3,0,14,0,100,"eredar - YELL_INTRO_SAC_7","These are the hallmarks..."),
(25165,4,0,14,0,100,"eredar - YELL_SAC_DEAD","I... fade."),
(25165,5,0,41,0,100,"eredar - EMOTE_SHADOW_NOVA","%s directs Shadow Nova at $N"),
(25165,6,0,14,0,100,"eredar - YELL_ENRAGE","Time is a luxury you no longer possess!"),
(25165,7,0,14,12488,100,"eredar - YELL_SISTER_ALYTHESS_DEAD","Alythess! Your fire burns within me!"),
(25165,8,0,14,12486,100,"eredar - YELL_SAC_KILL_1","Shadow engulf."),
(25165,8,1,14,12487,100,"eredar - YELL_SAC_KILL_2","Ee-nok Kryul!"),
(25165,9,0,14,12485,100,"eredar - YELL_SHADOW_NOVA","Shadow to the aid of fire!"),
(25166,0,0,14,0,100,"eredar - YELL_INTRO_ALY_2","Depravity..."),
(25166,1,0,14,0,100,"eredar - YELL_INTRO_ALY_4","Hatred..."),
(25166,2,0,14,0,100,"eredar - YELL_INTRO_ALY_6","Chaos..."),
(25166,3,0,14,0,100,"eredar - YELL_INTRO_ALY_8","These are the pillars..."),
(25166,4,0,41,0,100,"eredar - EMOTE_CONFLAGRATION","%s directs Conflagration at $N"),
(25166,5,0,14,12490,100,"eredar - YELL_ALY_KILL_1","Fire consume."),
(25166,5,1,14,12491,100,"eredar - YELL_ALY_KILL_2","Ed-ir Halach!"),
(25166,6,0,14,12494,100,"eredar - YELL_ALY_DEAD","De-ek Anur!"),
(25166,7,0,14,12492,100,"eredar - YELL_SISTER_SACROLASH_DEAD","Sacrolash!"),
(25166,8,0,14,12489,100,"eredar - YELL_CANFLAGRATION","Fire to the aid of shadow!"),
(25166,9,0,14,12493,100,"eredar - YELL_BERSERK","Your luck has run its curse!");

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1580098 AND -1580066;
DELETE FROM `creature_text` WHERE `entry` IN (25608,25319,25315,26046);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(25608,0,0,14,12495,100,"KJ - SAY_KJ_OFFCOMBAT1","All my plans have led to this!"),
(25608,0,1,14,12496,100,"KJ - SAY_KJ_OFFCOMBAT2","Stay on task! Do not waste time!"),
(25608,0,2,14,12497,100,"KJ - SAY_KJ_OFFCOMBAT3","I have waited long enough!"),
(25608,0,3,14,12498,100,"KJ - SAY_KJ_OFFCOMBAT4","Fail me and suffer for eternity!"),
(25608,0,4,14,12499,100,"KJ - SAY_KJ_OFFCOMBAT5","Drain the girl! Drain her power until there is nothing but a vacant shell!"),
(25319,0,0,14,12449,100,"KJ - SAY_KALECGOS_ENCOURAGE","Strike now, heroes, while he is weakened! Vanquish the Deceiver!"),
(25319,1,0,14,12440,100,"KJ - SAY_KALECGOS_READY1","I will channel my power into the orbs, be ready!"),
(25319,2,0,14,12441,100,"KJ - SAY_KALECGOS_READY2","I have empowered another orb! Use it quickly!"),
(25319,3,0,14,12442,100,"KJ - SAY_KALECGOS_READY3","Another orb is ready! Make haste!"),
(25319,4,0,14,12443,100,"KJ - SAY_KALECGOS_READY4","I have channeled all I can! The power is in your hands!"),
(25319,5,0,14,12445,100,"KJ - SAY_KALECGOS_AWAKEN","Anveena, you must awaken, this world needs you!"),
(25319,6,0,14,12446,100,"KJ - SAY_KALECGOS_LETGO","You must let go! You must become what you were always meant to be! The time is now, Anveena!"),
(25319,7,0,14,12447,100,"KJ - SAY_KALECGOS_FOCUS","Anveena, I love you! Focus on my voice, come back for me now! Only you can cleanse the Sunwell!"),
(25319,8,0,14,12448,100,"KJ - SAY_KALECGOS_FATE","Yes, Anveena! Let fate embrace you now!"),
(25319,9,0,14,12450,100,"KJ - SAY_KALECGOS_GOODBYE","Goodbye, Anveena, my love. Few will remember your name, yet this day you change the course of destiny. What was once corrupt is now pure. Heroes, do not let her sacrifice be in vain."),
(25319,10,0,14,12438,100,"KJ - SAY_KALECGOS_JOIN","You are not alone. The Blue Dragonflight shall help you vanquish the Deceiver."),
(25315,0,0,14,12527,100,"KJ - SAY_KJ_DEATH","Nooooooooooooo!"),
(25315,1,0,14,12501,100,"KJ - SAY_KJ_SLAY1","Another step towards destruction!"),
(25315,1,1,14,12502,100,"KJ - SAY_KJ_SLAY2","Anak-ky'ri!"),
(25315,2,0,14,12503,100,"KJ - SAY_KJ_REFLECTION1","Who can you trust?"),
(25315,2,1,14,12504,100,"KJ - SAY_KJ_REFLECTION2","The enemy is among you."),
(25315,3,0,14,12500,100,"KJ - SAY_KJ_EMERGE","The expendible have perished... So be it! Now I shall succeed where Sargeras could not! I will bleed this wretched world and secure my place as the true master of the Burning Legion. The end has come! Let the unraveling of this world commence!"),
(25315,4,0,14,12505,100,"KJ - SAY_KJ_DARKNESS1","Chaos!"),
(25315,4,1,14,12506,100,"KJ - SAY_KJ_DARKNESS2","Destruction!"),
(25315,4,2,14,12507,100,"KJ - SAY_KJ_DARKNESS3","Oblivion!"),
(25315,5,0,14,12508,100,"KJ - SAY_KJ_PHASE3","I will not be denied! This world shall fall!"),
(25315,6,0,14,12509,100,"KJ - SAY_KJ_PHASE4","Do not harbor false hope. You cannot win!"),
(25315,7,0,14,12510,100,"KJ - SAY_KJ_PHASE5","Aggghh! The powers of the Sunwell... turned... against me! What have you done? WHAT HAVE YOU DONE?"),
(25315,8,0,41,0,100,"KJ - EMOTE_KJ_DARKNESS","%s begins to channel dark energy"),
(26046,0,0,14,12511,100,"KJ - SAY_ANVEENA_IMPRISONED","I serve only the Master now."),
(26046,1,0,14,12512,100,"KJ - SAY_ANVEENA_LOST","But I'm... lost... I cannot find my way back!"),
(26046,2,0,14,12513,100,"KJ - SAY_ANVEENA_KALEC","Kalec... Kalec?"),
(26046,3,0,14,12514,100,"KJ - SAY_ANVEENA_GOODBYE","The nightmare is over, the spell is broken! Goodbye, Kalec, my love!");

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1580043 AND -1580036;
DELETE FROM `creature_text` WHERE `entry`=25038;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(25038,0,0,14,12477,100,"felmyst - YELL_BIRTH","Glory to Kil'jaeden! Death to all who oppose!"),
(25038,1,0,14,12480,100,"felmyst - YELL_KILL1","I kill for the master!"),
(25038,1,1,14,12481,100,"felmyst - YELL_KILL2","The end has come!"),
(25038,2,0,14,12478,100,"felmyst - YELL_BREATH","Choke on your final breath!"),
(25038,3,0,14,12479,100,"felmyst - YELL_TAKEOFF","I am stronger than ever before!"),
(25038,4,0,14,12482,100,"felmyst - YELL_BERSERK","No more hesitation! Your fates are written!"),
(25038,5,0,14,12483,100,"felmyst - YELL_DEATH","Kil'jaeden... will... prevail..."),
(25038,6,0,14,12439,100,"felmyst - YELL_KALECGOS","Madrigosa deserved a far better fate. You did what had to be done, but this battle is far from over.");

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000292 AND -1000287;
DELETE FROM `creature_text` WHERE `entry`=7806;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(7806,0,0,12,0,100,"oox SAY_OOX_START","Emergency power activated! Initializing ambulanory motor! CLUCK!"),
(7806,1,0,12,0,100,"oox SAY_OOX_AGGRO1","Physical threat detected! Evasive action! CLUCK!"),
(7806,1,1,12,0,100,"oox SAY_OOX_AGGRO2","Thread analyzed! Activating combat plan beta! CLUCK!"),
(7806,2,0,12,0,100,"oox SAY_OOX_AMBUSH","CLUCK! Sensors detect spatial anomaly - danger imminent! CLUCK!"),
(7806,3,0,12,0,100,"oox SAY_OOX_AMBUSH_REPLY","No one challanges the Wastewander nomads - not even robotic chickens! ATTACK!"),
(7806,4,0,12,0,100,"oox SAY_OOX_END","Cloaking systems online! CLUCK! Engaging cloak for transport to Booty Bay!");

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000409 AND -1000403;
DELETE FROM `creature_text` WHERE `entry` IN (2691,7780);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(2691,0,0,12,0,100,"SAY_RIN_BY_OUTRUNNER","Attack my sisters! The troll must not escape!"),
(7780,0,0,12,0,100,"SAY_RIN_FREE","Rin'ji is free!"),
(7780,1,0,12,0,100,"SAY_RIN_HELP_1","Rin'ji needs help!"),
(7780,1,1,12,0,100,"SAY_RIN_HELP_2","Rin'ji is being attacked!"),
(7780,2,0,12,0,100,"SAY_RIN_COMPLETE","Rin'ji can see road now, $n. Rin'ji knows the way home."),
(7780,3,0,12,0,100,"SAY_RIN_PROGRESS_1","Rin'ji will tell you secret now... $n, should go to the Overlook Cliffs. Rin'ji hid something on island there"),
(7780,4,0,12,0,100,"SAY_RIN_PROGRESS_2","You find it, you keep it! Don't tell no one that Rin'ji talked to you!");

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1568009 AND -1568000;
DELETE FROM `creature_text` WHERE `entry`=23578;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(23578,0,0,14,12031,100,"janalai SAY_AGGRO","Spirits of da wind be your doom!"),
(23578,1,0,14,12032,100,"janalai SAY_FIRE_BOMBS","I burn ya now!"),
(23578,2,0,14,12033,100,"janalai SAY_SUMMON_HATCHER","Where ma hatcha? Get to work on dem eggs!"),
(23578,3,0,14,12034,100,"janalai SAY_ALL_EGGS","I show you strength... in numbers."),
(23578,4,0,14,12035,100,"janalai SAY_BERSERK","You done run outta time!"),
(23578,5,0,14,12036,100,"janalai SAY_SLAY_1","It all be over now, mon!"),
(23578,5,1,14,12037,100,"janalai SAY_SLAY_2","Tazaga-choo!"),
(23578,6,0,14,12038,100,"janalai SAY_DEATH","Zul'jin... got a surprise for you..."),
(23578,7,0,14,12039,100,"janalai SAY_EVENT_STRANGERS","Come, strangers. The spirit of the dragonhawk hot be hungry for worthy souls."),
(23578,8,0,14,12040,100,"janalai SAY_EVENT_FRIENDS","Come, friends. Your bodies gonna feed ma hatchlings, and your souls are going to feed me with power!");

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1469006 AND -1469004;
DELETE FROM `creature_text` WHERE `entry`=10162;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(10162,0,0,12,0,100,"victor_nefarius SAY_GAMESBEGIN_1","In this world where time is your enemy, it is my greatest ally. This grand game of life that you think you play in fact plays you. To that I say..."),
(10162,1,0,14,8280,100,"victor_nefarius SAY_GAMESBEGIN_2","Let the games begin!"),
(10162,2,0,14,8279,100,"victor_nefarius SAY_VAEL_INTRO","Ah, the heroes. You are persistent, aren't you. Your allied attempted to match his power against mine, and had to pay the price. Now he shall serve me, by slaughtering you. Get up little red wyrm and destroy them!");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=47110;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,47110,0,0,31,0,3,26498,0,0,0,'','Spell Summon Drakuru''s Image targets Drakuru''s Bunny 01'),
(13,1,47110,0,1,31,0,3,26559,0,0,0,'','Spell Summon Drakuru''s Image targets Drakuru''s Bunny 02'),
(13,1,47110,0,2,31,0,3,26700,0,0,0,'','Spell Summon Drakuru''s Image targets Drakuru''s Bunny 03'),
(13,1,47110,0,3,31,0,3,26789,0,0,0,'','Spell Summon Drakuru''s Image targets Drakuru''s Bunny 04'),
(13,1,47110,0,4,31,0,3,28015,0,0,0,'','Spell Summon Drakuru''s Image targets Drakuru''s Bunny 05');
DELETE FROM `smart_scripts` WHERE `entryorguid`=26423 AND `source_type`=0 AND `id` IN (2,3);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (26498,26559,26700,26789) AND `source_type`=0;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(26423,0,2,3,62,0,100,0,9615,1,0,0,85,50021,0,0,0,0,0,7,0,0,0,0,0,0,0,'Drakuru - On gossip option select - Invoker spellcast Replace Drakuru''s Elixir'),
(26423,0,3,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Drakuru - On gossip option select - Close gossip'),
(26498,0,0,0,8,0,100,0,47110,0,0,0,11,47117,0,0,0,0,0,7,0,0,0,0,0,0,0,'Drakuru''s Bunny 01 - On spellhit - Spellcast Script Cast Summon Image of Drakuru'),
(26559,0,0,0,8,0,100,0,47110,0,0,0,11,47149,0,0,0,0,0,7,0,0,0,0,0,0,0,'Drakuru''s Bunny 02 - On spellhit - Spellcast Script Cast Summon Image of Drakuru 02'),
(26700,0,0,0,8,0,100,0,47110,0,0,0,11,47316,0,0,0,0,0,7,0,0,0,0,0,0,0,'Drakuru''s Bunny 03 - On spellhit - Spellcast Script Cast Summon Image of Drakuru 03'),
(26789,0,0,0,8,0,100,0,47110,0,0,0,11,47405,0,0,0,0,0,7,0,0,0,0,0,0,0,'Drakuru''s Bunny 04 - On spellhit - Spellcast Script Cast Summon Image of Drakuru 04');
-- Creature Template update from sniff
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (28015,28016,28492,28498);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=51825;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,51825,0,0,31,0,3,28016,0,0,0,'','Spell Arthas Scourge Drakuru targets Drakuru');
-- Creature text insert from sniff
DELETE FROM `creature_text` WHERE `entry` IN (28016,28498);
INSERT IGNORE INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(28016,0,0,'Ahh,  Back in Drak''Tharon at last!',12,0,100,71,0,14006,'Drakuru'),
(28016,1,0,'Drakuru casts his gaze down on Drak''Tharon Keep.',16,0,100,0,0,0,'Drakuru'),
(28016,2,0,'Ya done well, mon....',12,0,100,0,0,14007,'Drakuru'),
(28016,3,0,'Ya surpassed my greatest hopes.',12,0,100,0,0,14008,'Drakuru'),
(28016,4,0,'For your efforts, you be gettin'' da greatest of rewards....',12,0,100,0,0,14009,'Drakuru'),
(28016,5,0,'Revelation!',12,0,100,5,0,14010,'Drakuru'),
(28016,6,0,'Be still, friend, and behold da truth of things!',12,0,100,0,0,14011,'Drakuru'),
(28016,7,0,'Master, my mission be complete.',12,0,100,0,0,14012,'Drakuru'),
(28016,8,0,'With da help of these mortals, dis region been cleansed of all who oppose us.',12,0,100,0,0,14013,'Drakuru'),
(28016,9,0,'As you wish, master.',12,0,100,396,0,14014,'Drakuru'),
(28016,10,0,'Forgive my deception, mon. It all been for your own good.',12,0,100,396,0,14015,'Drakuru'),
(28016,11,0,'Ya needed ta prove yer worthiness....',12,0,100,396,0,14016,'Drakuru'),
(28016,12,0,'I be needin'' worthy underlings in Zul''Drak, mon. Ones ready to wield real power.',12,0,100,396,0,14017,'Drakuru'),
(28016,13,0,'You see for yourself now. Da Lich King be generous to dem who obey.',12,0,100,396,0,14018,'Drakuru'),
(28016,14,0,'Follow dis path, mon, and soon you be tastin'' immortality!',12,0,100,396,0,14019,'Drakuru'),
(28498,0,0,'You have done well, Drakuru.',12,0,100,396,0,14749,'The Lich King'),
(28498,1,0,'Your betrayal of the Drakkari Empire has borne me a new army.',12,0,100,396,0,14750,'The Lich King'),
(28498,2,0,'Your army....',12,0,100,0,0,14751,'The Lich King'),
(28498,3,0,'Arise, and accept my gift.',12,0,100,396,0,14752,'The Lich King'),
(28498,4,0,'I charge you now with the cleansing of Zul''Drak, Drakuru.',12,0,100,397,0,14753,'The Lich King'),
(28498,5,0,'Fail me and it shall be your undoing...',12,0,100,396,0,14754,'The Lich King'),
(28498,6,0,'Succeed, and even greater power shall be yours!',12,0,100,396,0,14755,'The Lich King');
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (28015,28016,28498,-127497,-127496,-127495,-127493) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (28492*100,28016*100,28016*100+1,28498*100) AND `source_type`=9;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(28015,0,0,0,8,0,100,0,47110,0,0,0,11,50439,0,0,0,0,0,7,0,0,0,0,0,0,0,'Drakuru''s Bunny 05 - On spellhit - Spellcast Script Cast Summon Image of Drakuru 05'),
(28016,0,0,0,54,0,100,0,0,0,0,0,80,28016*100+1,2,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru - On update - Run script'),
(28016,0,1,2,40,0,100,0,1,0,0,0,54,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru - On WP 1 - Pause movement 2 seconds'),
(28016,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru - On WP 1 - Say line'),
(28016,0,3,4,40,0,100,0,5,0,0,0,54,8000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru - On WP 5 - Pause movement 8 seconds'),
(28016,0,4,5,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru - On WP 5 - Say line'),
(28016,0,5,0,61,0,100,0,0,0,0,0,80,28016*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru - On WP 5 - Run script'),
(28016,0,6,7,40,0,100,0,8,0,0,0,54,4000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru - On WP 8 - Pause movement 4 seconds'),
(28016,0,7,8,61,0,100,0,0,0,0,0,1,3,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru - On WP 8 - Say line'),
(28016,0,8,0,61,0,100,0,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru - On WP 8 - Set unit_field_bytes1'),
(28016,0,9,10,40,0,100,0,9,0,0,0,54,4000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru - On WP 9 - Pause movement 4 seconds'),
(28016,0,10,0,61,0,100,0,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru - On WP 9 - Set unit_field_bytes1'),
(28016,0,11,12,40,0,100,0,10,0,0,0,54,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru - On WP 10 - Pause movement 3 seconds'),
(28016,0,12,13,61,0,100,0,0,0,0,0,1,4,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru - On WP 10 - Say line'),
(28016,0,13,0,61,0,100,0,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru - On WP 10 - Set unit_field_bytes1'),
(28016,0,14,15,40,0,100,0,12,0,0,0,55,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru - On WP 12 - Stop movement'),
(28016,0,15,16,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.694936,'Drakuru - On WP 12 - Set orientation'),
(28016,0,16,0,61,0,100,0,0,0,0,0,1,5,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru - On WP 12 - Say line'),
(28016,0,18,0,8,0,100,0,51825,0,0,0,11,51834,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru - On spellhit Arthas Scourge Drakuru - Spellcast Drakuru Transform'),
(28498,0,0,0,54,0,100,0,0,0,0,0,53,0,28498,0,0,0,0,1,0,0,0,0,0,0,0,'The Lich King - Just summoned - Start WP movement'),
(28498,0,1,2,40,0,100,0,2,0,0,0,54,83000,0,0,0,0,0,1,0,0,0,0,0,0,0,'The Lich King - On WP 2 - Pause movement 83 seconds'),
(28498,0,2,0,61,0,100,0,0,0,0,0,80,28498*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'The Lich King - On WP 2 - Run script'),
(28498,0,3,4,40,0,100,0,3,0,0,0,45,0,2,0,0,0,0,10,79182,0,0,0,0,0,0,'The Lich King - On WP 3 - Despawn'),
(28498,0,4,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'The Lich King - On WP 3 - Despawn'),
(-79184,0,0,1,38,0,100,0,0,1,0,0,11,51802,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drak''Tharon - Drakuru Event Invisman 00 - On data 0 1 - Spellcast Red Lightning Bolt'),
(-79184,0,1,0,61,0,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drak''Tharon - Drakuru Event Invisman 00 - On data 0 1 - Set data 0 0'),
(-79183,0,0,1,38,0,100,0,0,1,0,0,11,51802,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drak''Tharon - Drakuru Event Invisman 00 - On data 0 1 - Spellcast Red Lightning Bolt'),
(-79183,0,1,0,61,0,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drak''Tharon - Drakuru Event Invisman 00 - On data 0 1 - Set data 0 0'),
(-79180,0,0,1,38,0,100,0,0,1,0,0,11,51802,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drak''Tharon - Drakuru Event Invisman 00 - On data 0 1 - Spellcast Red Lightning Bolt'),
(-79180,0,1,0,61,0,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drak''Tharon - Drakuru Event Invisman 00 - On data 0 1 - Set data 0 0'),
(-79182,0,0,0,38,0,100,0,0,1,0,0,11,51807,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drak''Tharon - Drakuru Event Invisman 00 - On data 0 1 - Spellcast Arthas Portal'),
(-79182,0,1,2,38,0,100,0,0,2,0,0,80,28492*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Drak''Tharon - Drakuru Event Invisman 00 - On data 0 2 set - Start script'),
(-79182,0,2,0,61,0,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drak''Tharon - Drakuru Event Invisman 00 - On data 0 2 set - Set data 0 0'),
(28016*100,9,0,0,0,0,100,0,6000,6000,0,0,5,21,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru script - Play emote applaud'),
(28016*100,9,1,0,0,0,100,0,2000,2000,0,0,1,2,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru script - Say line'),
(28016*100,9,2,0,0,0,100,0,6500,6500,0,0,50,190597,22.5,0,0,0,0,8,0,0,0,-241.5434,-675.4514,132.2164,-1.029743,'Drakuru script - Summon gameobject'),
(28016*100,9,3,0,0,0,100,0,6000,6000,0,0,50,190596,15.5,0,0,0,0,8,0,0,0,-235.8484,-680.4561,131.885,-2.792518,'Drakuru script - Summon gameobject'),
(28016*100,9,4,0,0,0,100,0,5000,5000,0,0,50,190595,11,0,0,0,0,8,0,0,0,-233.977,-673.1368,132.0999,0.7853968,'Drakuru script - Summon gameobject'),
(28016*100,9,5,0,0,0,100,0,6000,6000,0,0,11,51795,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru script - Spellcast Shadow Channelling (10 sec)'),
(28016*100,9,6,0,0,0,100,0,5000,5000,0,0,45,0,1,0,0,0,0,10,79184,0,0,0,0,0,0,'Drakuru script - Set data 0 1'),
(28016*100,9,7,0,0,0,100,0,0,0,0,0,45,0,1,0,0,0,0,10,79183,0,0,0,0,0,0,'Drakuru script - Set data 0 1'),
(28016*100,9,8,0,0,0,100,0,0,0,0,0,45,0,1,0,0,0,0,10,79180,0,0,0,0,0,0,'Drakuru script - Set data 0 1'),
(28016*100,9,9,0,0,0,100,0,4000,4000,0,0,45,0,1,0,0,0,0,10,79182,0,0,0,0,0,0,'Drakuru script - Set data 0 1'),
(28016*100,9,10,0,0,0,100,0,1000,1000,0,0,1,6,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru script - Say line'),
(28016*100,9,11,0,0,0,100,0,5000,5000,0,0,12,28498,8,0,0,0,0,8,0,0,0,-237.1671,-702.1379,128.8857,1.570796,'Drakuru script - Summon Lich King'),
(28016*100,9,12,0,0,0,100,0,4000,4000,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru script - Set unit_field_bytes1'),
(28016*100,9,13,0,0,0,100,0,2000,2000,0,0,1,7,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru script - Say line'),
(28016*100,9,14,0,0,0,100,0,6000,6000,0,0,1,8,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru script - Say line'),
(28016*100,9,15,0,0,0,100,0,33000,33000,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru script - Remove unit_field_bytes1'),
(28016*100,9,16,0,0,0,100,0,6000,6000,0,0,5,15,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru script - Play emote roar'),
(28016*100,9,17,0,0,0,100,0,0,0,0,0,4,3326,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru script - Play sound roar'),
(28016*100,9,18,0,0,0,100,0,12000,12000,0,0,1,9,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru script - Say line'),
(28016*100,9,19,0,0,0,100,0,27000,27000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.70526,'Drakuru script - Set orientation'),
(28016*100,9,20,0,0,0,100,0,7000,7000,0,0,1,10,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru script - Say line'),
(28016*100,9,21,0,0,0,100,0,8000,8000,0,0,1,11,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru script - Say line'),
(28016*100,9,22,0,0,0,100,0,8000,8000,0,0,1,12,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru script - Say line'),
(28016*100,9,23,0,0,0,100,0,11000,11000,0,0,1,13,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru script - Say line'),
(28016*100,9,24,0,0,0,100,0,7000,7000,0,0,1,14,0,0,0,0,0,23,0,0,0,0,0,0,0,'Drakuru script - Say line'),
(28016*100,9,25,0,0,0,100,0,0,0,0,0,81,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru script - Set npcflag'),
(28016*100+1,9,0,0,0,0,100,0,0,0,0,0,83,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru script - Remove npcflag'),
(28016*100+1,9,1,0,0,0,100,0,3000,3000,0,0,53,0,28016,0,0,0,0,1,0,0,0,0,0,0,0,'Drakuru script - Start WP movement'),
(28492*100,9,0,0,0,0,100,0,5000,5000,0,0,28,51807,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drak''Tharon - Drakuru Event Invisman 00 script - Remove aura Arthas Portal'),
(28498*100,9,0,0,0,0,100,0,15000,15000,0,0,1,0,0,0,0,0,0,23,0,0,0,0,0,0,0,'The Lich King script - Say line'),
(28498*100,9,1,0,0,0,100,0,6000,6000,0,0,1,1,0,0,0,0,0,23,0,0,0,0,0,0,0,'The Lich King script - Say line'),
(28498*100,9,2,0,0,0,100,0,10000,10000,0,0,1,2,0,0,0,0,0,23,0,0,0,0,0,0,0,'The Lich King script - Say line'),
(28498*100,9,3,0,0,0,100,0,6000,6000,0,0,1,3,0,0,0,0,0,23,0,0,0,0,0,0,0,'The Lich King script - Say line'),
(28498*100,9,4,0,0,0,100,0,5000,5000,0,0,11,51825,0,0,0,0,0,9,28016,0,10,0,0,0,0,'The Lich King script - Spellcast Arthas Scourge Drakuru'),
(28498*100,9,5,0,0,0,100,0,8000,8000,0,0,1,4,0,0,0,0,0,23,0,0,0,0,0,0,0,'The Lich King script - Say line'),
(28498*100,9,6,0,0,0,100,0,16000,16000,0,0,1,5,0,0,0,0,0,23,0,0,0,0,0,0,0,'The Lich King script - Say line'),
(28498*100,9,7,0,0,0,100,0,6000,6000,0,0,1,6,0,0,0,0,0,23,0,0,0,0,0,0,0,'The Lich King script - Say line');
DELETE FROM `spell_scripts` WHERE `id`=50439;
INSERT IGNORE INTO `spell_scripts` (`id`,`effIndex`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(50439,0,0,15,50440,2,0,0,0,0,0); -- Script Cast Summon Image of Drakuru - Spellcast Envision Drakuru
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=50440;
INSERT IGNORE INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(50440,50446,1,'On Envision Drakuru - Spellcast Summon Drakuru');
DELETE FROM `waypoints` WHERE `entry` IN (28016,28498);
INSERT IGNORE INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(28016, 1,-240.1569,-630.3474,116.4973,'pause and text'),
(28016, 2,-237.9522,-652.9613,131.131,''),
(28016, 3,-252.4211,-663.5404,131.2025,''),
(28016, 4,-261.2747,-667.5787,131.1916,''),
(28016, 5,-264.9144,-667.5964,131.1769,'pause and text'),
(28016, 6,-258.2646,-669.388,131.1983,''),
(28016, 7,-248.6646,-674.2229,132.1737,''),
(28016, 8,-243.7752,-674.9374,131.8365,'pause'),
(28016, 9,-236.3793,-678.6719,131.8578,'pause'),
(28016,10,-235.4743,-674.3039,131.8569,'pause'),
(28016,11,-234.869,-674.1355,131.8544,''),
(28016,12,-237.0977,-676.1853,131.8683,''),
(28498,1,-237.4704,-689.8357,129.5296,''),
(28498,2,-237.2737,-686.5334,132.1735,'pause'),
(28498,3,-237.0624,-700.3822,130.4357,'');

-- ----------------------------------
-- Creature text conversion part 2 --
-- ----------------------------------
-- razorgore
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1469025 AND -1469022;
DELETE FROM `creature_text` WHERE `entry`=12435;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(12435,0,0,14,8275,100,"razorgore SAY_EGGS_BROKEN1","You'll pay for forcing me to do this."),
(12435,1,0,14,8276,100,"razorgore SAY_EGGS_BROKEN2","Fools! These eggs are more precious than you know."),
(12435,2,0,14,8277,100,"razorgore SAY_EGGS_BROKEN3","No! Not another one! I'll have your heads for this atrocity."),
(12435,3,0,14,8278,100,"razorgore SAY_DEATH","If I fall into the abyss I'll take all of you mortals with me...");

-- nefarian
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1469021 AND -1469007;
DELETE FROM `creature_text` WHERE `entry`=11583;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(11583,0,0,14,8288,100,"nefarian SAY_AGGRO","Well done, my minions. The mortals' courage begins to wane! Now, let's see how they contend with the true Lord of Blackrock Spire!"),
(11583,0,1,14,8289,100,"nefarian SAY_XHEALTH","Enough! Now you vermin shall feel the force of my birthright, the fury of the earth itself."),
(11583,0,2,14,8290,100,"nefarian SAY_SHADOWFLAME","Burn, you wretches! Burn!"),
(11583,1,0,14,8291,100,"nefarian SAY_RAISE_SKELETONS","Impossible! Rise my minions! Serve your master once more!"),
(11583,2,0,14,8293,100,"nefarian SAY_SLAY","Worthless $N! Your friends will join you soon enough!"),
(11583,3,0,14,8292,100,"nefarian SAY_DEATH","This cannot be! I am the Master here! You mortals are nothing to my kind! DO YOU HEAR? NOTHING!"),
(11583,4,0,14,0,100,"nefarian SAY_MAGE","Mages too? You should be more careful when you play with magic..."),
(11583,5,0,14,0,100,"nefarian SAY_WARRIOR","Warriors, I know you can hit harder than that! Let's see it!"),
(11583,6,0,14,0,100,"nefarian SAY_DRUID","Druids and your silly shapeshifting. Let's see it in action!"),
(11583,7,0,14,0,100,"nefarian SAY_PRIEST","Priests! If you're going to keep healing like that, we might as well make it a little more interesting!"),
(11583,8,0,14,0,100,"nefarian SAY_PALADIN","Paladins, I've heard you have many lives. Show me."),
(11583,9,0,14,0,100,"nefarian SAY_SHAMAN","Shamans, show me what your totems can do!"),
(11583,10,0,14,0,100,"nefarian SAY_WARLOCK","Warlocks, you shouldn't be playing with magic you don't understand. See what happens?"),
(11583,11,0,14,0,100,"nefarian SAY_HUNTER","Hunters and your annoying pea-shooters!"),
(11583,12,0,14,0,100,"nefarian SAY_ROGUE","Rogues? Stop hiding and face me!");

-- broodlord
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1469001 AND -1469000;
DELETE FROM `creature_text` WHERE `entry`=12017;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(12017,0,0,14,8286,100,"broodlord SAY_AGGRO","None of your kind should be here! You've doomed only yourselves!"),
(12017,1,0,14,8287,100,"broodlord SAY_LEASH","Clever Mortals but I am not so easily lured away from my sanctum!");

-- flamegor
DELETE FROM `script_texts` WHERE `entry`=-1469031;
DELETE FROM `creature_text` WHERE `entry`=11981;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(11981,0,0,16,0,100,"flamegor EMOTE_FRENZY","%s goes into a frenzy!");

-- chromaggus
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1469003 AND -1469002;
DELETE FROM `creature_text` WHERE `entry`=14020;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(14020,0,0,16,0,100,"chromaggus EMOTE_FRENZY","goes into a killing frenzy!"),
(14020,1,0,16,0,100,"chromaggus EMOTE_SHIMMER","flinches as its skin shimmers.");

-- vaelastrasz
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1469030 AND -1469026;
DELETE FROM `creature_text` WHERE `entry`=13020;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(13020,0,0,14,8281,100,"vaelastrasz SAY_LINE1","Too late...friends. Nefarius' corruption has taken hold. I cannot...control myself."),
(13020,1,0,14,8282,100,"vaelastrasz SAY_LINE2","I beg you Mortals, flee! Flee before I lose all control. The Black Fire rages within my heart. I must release it!"),
(13020,2,0,14,8283,100,"vaelastrasz SAY_LINE3","FLAME! DEATH! DESTRUCTION! COWER MORTALS BEFORE THE WRATH OF LORD....NO! I MUST FIGHT THIS!"),
(13020,3,0,14,8285,100,"vaelastrasz SAY_HALFLIFE","Nefarius' hate has made me stronger than ever before. You should have fled, while you could, mortals! The fury of Blackrock courses through my veins!"),
(13020,4,0,14,8284,100,"vaelastrasz SAY_KILLTARGET","Forgive me $N, your death only adds to my failure.");

-- doctor theolen krastinov
-- No delete query here, it's a generic script text for frenzy emotes.
DELETE FROM `creature_text` WHERE `entry`=11261;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(11261,0,0,16,0,100,"doctor theolen krastinov EMOTE_FRENZY_KILL","%s goes into a killing frenzy!");

-- vectus
-- No delete query here, it's a generic script text for frenzy emotes.
DELETE FROM `creature_text` WHERE `entry`=10432;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(10432,0,0,16,0,100,"vectus EMOTE_FRENZY_KILL","%s goes into a killing frenzy!");

-- galen
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000506 AND -1000500;
DELETE FROM `creature_text` WHERE `entry`=5391;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(5391,0,0,12,0,100,"galen SAY_PERIODIC","Help! Please, You must help me!"),
(5391,1,0,12,0,100,"galen SAY_QUEST_ACCEPTED","Let us leave this place."),
(5391,2,0,12,0,100,"galen SAY_ATTACKED_1","Look out! The $c attacks!"),
(5391,2,1,12,0,100,"galen SAY_ATTACKED_2","Help! I'm under attack!"),
(5391,3,0,12,0,100,"galen SAY_QUEST_COMPLETE","Thank you $N. I will remember you always. You can find my strongbox in my camp, north of Stonard."),
(5391,4,0,16,0,100,"galen EMOTE_WHISPER","%s whispers to $N the secret to opening his strongbox."),
(5391,5,0,16,0,100,"galen EMOTE_DISAPPEAR","%s disappears into the swamp.");

-- smite
DELETE FROM `script_texts` WHERE `entry`=-1036001;
DELETE FROM `creature_text` WHERE `entry`=646;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(646,0,0,14,5777,100,"smite SAY_AGGRO","We're under attack! A vast, ye swabs! Repel the invaders!");

-- crusader
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1609519 AND -1609501;
DELETE FROM `creature_text` WHERE `entry` IN (28939,28610,28940);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
-- Scarlet Preacher
(28939,1,0,12,0,100,"crusader SAY_CRUSADER1","You'll be hanging in the gallows shortly, Scourge fiend!"),
(28939,1,1,12,0,100,"crusader SAY_CRUSADER2","You'll have to kill me, monster! I will tell you NOTHING!"),
(28939,1,2,12,0,100,"crusader SAY_CRUSADER3","You hit like a girl. Honestly. Is that the best you can do?"),
(28939,1,3,12,0,100,"crusader SAY_CRUSADER4","ARGH! You burned my last good tabard!"),
(28939,1,4,12,0,100,"crusader SAY_CRUSADER5","Argh... The pain... The pain is almost as unbearable as the lashings I received in grammar school when I was but a child."),
(28939,1,5,12,0,100,"crusader SAY_CRUSADER6","I used to work for Grand Inquisitor Isillien! Your idea of pain is a normal mid-afternoon for me!"),
(28939,2,0,12,0,100,"break crusader SAY_PERSUADED1","I'll tell you everything! STOP! PLEASE!"),
(28939,3,0,12,0,100,"break crusader SAY_PERSUADED2","We... We have only been told that the \"Crimson Dawn\" is an awakening. You see, the Light speaks to the High General. It is the Light..."),
(28939,4,0,12,0,100,"break crusader SAY_PERSUADED3","The Light that guides us. The movement was set in motion before you came... We... We do as we are told. It is what must be done."),
(28939,5,0,12,0,100,"break crusader SAY_PERSUADED4","I know very little else... The High General chooses who may go and who must stay behind. There's nothing else... You must believe me!"),
(28939,6,0,12,0,100,"break crusader SAY_PERSUADED6","NO! PLEASE! There is one more thing that I forgot to mention... A courier comes soon... From Hearthglen. It..."),
-- Scarlet Crusader
(28940,1,0,12,0,100,"crusader SAY_CRUSADER1","You'll be hanging in the gallows shortly, Scourge fiend!"),
(28940,1,1,12,0,100,"crusader SAY_CRUSADER2","You'll have to kill me, monster! I will tell you NOTHING!"),
(28940,1,2,12,0,100,"crusader SAY_CRUSADER3","You hit like a girl. Honestly. Is that the best you can do?"),
(28940,1,3,12,0,100,"crusader SAY_CRUSADER4","ARGH! You burned my last good tabard!"),
(28940,1,4,12,0,100,"crusader SAY_CRUSADER5","Argh... The pain... The pain is almost as unbearable as the lashings I received in grammar school when I was but a child."),
(28940,1,5,12,0,100,"crusader SAY_CRUSADER6","I used to work for Grand Inquisitor Isillien! Your idea of pain is a normal mid-afternoon for me!"),
(28940,2,0,12,0,100,"break crusader SAY_PERSUADED1","I'll tell you everything! STOP! PLEASE!"),
(28940,3,0,12,0,100,"break crusader SAY_PERSUADED2","We... We have only been told that the \"Crimson Dawn\" is an awakening. You see, the Light speaks to the High General. It is the Light..."),
(28940,4,0,12,0,100,"break crusader SAY_PERSUADED3","The Light that guides us. The movement was set in motion before you came... We... We do as we are told. It is what must be done."),
(28940,5,0,12,0,100,"break crusader SAY_PERSUADED4","I know very little else... The High General chooses who may go and who must stay behind. There's nothing else... You must believe me!"),
(28940,6,0,12,0,100,"break crusader SAY_PERSUADED6","NO! PLEASE! There is one more thing that I forgot to mention... A courier comes soon... From Hearthglen. It..."),
-- Scarlet Marksman
(28610,1,0,12,0,100,"crusader SAY_CRUSADER1","You'll be hanging in the gallows shortly, Scourge fiend!"),
(28610,1,1,12,0,100,"crusader SAY_CRUSADER2","You'll have to kill me, monster! I will tell you NOTHING!"),
(28610,1,2,12,0,100,"crusader SAY_CRUSADER3","You hit like a girl. Honestly. Is that the best you can do?"),
(28610,1,3,12,0,100,"crusader SAY_CRUSADER4","ARGH! You burned my last good tabard!"),
(28610,1,4,12,0,100,"crusader SAY_CRUSADER5","Argh... The pain... The pain is almost as unbearable as the lashings I received in grammar school when I was but a child."),
(28610,1,5,12,0,100,"crusader SAY_CRUSADER6","I used to work for Grand Inquisitor Isillien! Your idea of pain is a normal mid-afternoon for me!"),
(28610,2,0,12,0,100,"break crusader SAY_PERSUADED1","I'll tell you everything! STOP! PLEASE!"),
(28610,3,0,12,0,100,"break crusader SAY_PERSUADED2","We... We have only been told that the \"Crimson Dawn\" is an awakening. You see, the Light speaks to the High General. It is the Light..."),
(28610,4,0,12,0,100,"break crusader SAY_PERSUADED3","The Light that guides us. The movement was set in motion before you came... We... We do as we are told. It is what must be done."),
(28610,5,0,12,0,100,"break crusader SAY_PERSUADED4","I know very little else... The High General chooses who may go and who must stay behind. There's nothing else... You must believe me!"),
(28610,6,0,12,0,100,"break crusader SAY_PERSUADED6","NO! PLEASE! There is one more thing that I forgot to mention... A courier comes soon... From Hearthglen. It...");

-- koltira deathweaver
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1609570 AND -1609561;
DELETE FROM `creature_text` WHERE `entry`=28912;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(28912,0,0,12,0,100,"koltira deathweaver SAY_BREAKOUT1","I'll need to get my runeblade and armor... Just need a little more time."),
(28912,1,0,12,0,100,"koltira deathweaver SAY_BREAKOUT2","I'm still weak, but I think I can get an anti-magic barrier up. Stay inside it or you'll be destroyed by their spells."),
(28912,2,0,12,0,100,"koltira deathweaver SAY_BREAKOUT3","Maintaining this barrier will require all of my concentration. Kill them all!"),
(28912,3,0,12,0,100,"koltira deathweaver SAY_BREAKOUT4","There are more coming. Defend yourself! Don't fall out of the anti-magic field! They'll tear you apart without its protection!"),
(28912,4,0,12,0,100,"koltira deathweaver SAY_BREAKOUT5","I can't keep barrier up much longer... Where is that coward?"),
(28912,5,0,12,0,100,"koltira deathweaver SAY_BREAKOUT6","The High Inquisitor comes! Be ready, death knight! Do not let him draw you out of the protective bounds of my anti-magic field! Kill him and take his head!"),
(28912,6,0,12,0,100,"koltira deathweaver SAY_BREAKOUT7","Stay in the anti-magic field! Make them come to you!"),
(28912,7,0,12,0,100,"koltira deathweaver SAY_BREAKOUT8","The death of the High Inquisitor of New Avalon will not go unnoticed. You need to get out of here at once! Go, before more of them show up. I'll be fine on my own."),
(28912,8,0,12,0,100,"koltira deathweaver SAY_BREAKOUT9","I'll draw their fire, you make your escape behind me."),
(28912,9,0,14,0,100,"koltira deathweaver SAY_BREAKOUT10","Your High Inquisitor is nothing more than a pile of meat, Crusaders! There are none beyond the grasp of the Scourge!");

-- scarlet courier
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1609532 AND -1609531;
DELETE FROM `creature_text` WHERE `entry`=29076;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(29076,0,0,12,0,100,"scarlet courier SAY_TREE1","Hrm, what a strange tree. I must investigate."),
(29076,1,0,12,0,100,"scarlet courier SAY_TREE2","What's this!? This isn't a tree at all! Guards! Guards!");

-- high inquisitor valroth
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1609586 AND -1609581;
DELETE FROM `creature_text` WHERE `entry`=29001;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(29001,0,0,14,0,100,"high inquisitor valroth start","The Crusade will purge your kind from this world!"),
(29001,1,0,14,0,100,"high inquisitor valroth SAY_VALROTH_AGGRO","It seems that I'll need to deal with you myself. The High Inquisitor comes for you, Scourge!"),
(29001,2,0,12,0,100,"high inquisitor valroth SAY_VALROTH_RAND","You have come seeking deliverance? I have come to deliver!"),
(29001,2,1,12,0,100,"high inquisitor valroth SAY_VALROTH_RAND","LIGHT PURGE YOU!"),
(29001,2,2,12,0,100,"high inquisitor valroth SAY_VALROTH_RAND","Coward!"),
(29001,3,0,16,0,100,"high inquisitor valroth SAY_VALROTH_DEATH","High Inquisitor Valroth's remains fall to the ground.");

-- A special surprise
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1609078 AND -1609025;
DELETE FROM `creature_text` WHERE `entry` IN (29032,29061,29065,29067,29068,29070,29074,29072,29073,29071,29053);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
-- Malar Bravehorn
(29032,0,0,12,0,100,"special_surprise SAY_EXEC_START_1","Come to finish the job, have you?"),
(29032,1,0,12,0,100,"special_surprise SAY_EXEC_START_2","Come to finish the job, have ye?"),
(29032,2,0,12,0,100,"special_surprise SAY_EXEC_START_3","Come ta finish da job, mon?"),
(29032,3,0,12,0,100,"special_surprise SAY_EXEC_PROG_1","You'll look me in the eyes when..."),
(29032,4,0,12,0,100,"special_surprise SAY_EXEC_PROG_2","Well this son o' Ironforge would like..."),
(29032,5,0,12,0,100,"special_surprise SAY_EXEC_PROG_3","Ironic, isn't it? To be killed..."),
(29032,6,0,12,0,100,"special_surprise SAY_EXEC_PROG_4","If you'd allow me just one..."),
(29032,7,0,12,0,100,"special_surprise SAY_EXEC_PROG_5","I'd like to stand for..."),
(29032,8,0,12,0,100,"special_surprise SAY_EXEC_PROG_6","I want to die like an orc..."),
(29032,9,0,12,0,100,"special_surprise SAY_EXEC_PROG_7","Dis troll gonna stand for da..."),
(29032,10,0,12,0,100,"special_surprise SAY_EXEC_NAME_1","$N?"),
(29032,11,0,12,0,100,"special_surprise SAY_EXEC_NAME_2","$N? Mon?"),
(29032,12,0,12,0,100,"special_surprise SAY_EXEC_RECOG_1","$N, I'd recognize that face anywhere... What... What have they done to you, $N?"),
(29032,13,0,12,0,100,"special_surprise SAY_EXEC_RECOG_2","$N, I'd recognize those face tentacles anywhere... What... What have they done to you, $N?"),
(29032,14,0,12,0,100,"special_surprise SAY_EXEC_RECOG_3","$N, I'd recognize that face anywhere... What... What have they done to ye, $Glad:lass;?"),
(29032,15,0,12,0,100,"special_surprise SAY_EXEC_RECOG_4","$N, I'd recognize that decay anywhere... What... What have they done to you, $N?"),
(29032,16,0,12,0,100,"special_surprise SAY_EXEC_RECOG_5","$N, I'd recognize those horns anywhere... What have they done to you, $N?"),
(29032,17,0,12,0,100,"special_surprise SAY_EXEC_RECOG_6","$N, I'd recognize dem tusks anywhere... What... What have dey done ta you, mon?"),
(29032,18,0,12,0,100,"special_surprise SAY_EXEC_NOREM_1","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a draenei!"),
(29032,19,0,12,0,100,"special_surprise SAY_EXEC_NOREM_2","Ye don't remember me, do ye? Blasted Scourge... They've tried to drain ye o' everything that made ye a righteous force o' reckoning. Every last ounce o' good... Everything that made you a $Gson:daughter; of Ironforge!"),
(29032,20,0,12,0,100,"special_surprise SAY_EXEC_NOREM_3","You don't remember me, do you? We were humans once - long, long ago - until Lordaeron fell to the Scourge. Your transformation to a Scourge zombie came shortly after my own. Not long after that, our minds were freed by the Dark Lady."),
(29032,21,0,12,0,100,"special_surprise SAY_EXEC_NOREM_4","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a pint-sized force of reckoning. Every last ounce of good... Everything that made you a gnome!"),
(29032,22,0,12,0,100,"special_surprise SAY_EXEC_NOREM_5","You don't remember me, do you? Blasted Scourge...They've tried to drain of everything that made you a righteous force of reckoning. Every last ounce of good...Everything that made you a human!"),
(29032,23,0,12,0,100,"special_surprise SAY_EXEC_NOREM_6","You don't remember me? When you were a child your mother would leave you in my care while she served at the Temple of the Moon. I held you in my arms and fed you with honey and sheep's milk to calm you until she would return. You were my little angel. Blasted Scourge... What have they done to you, $N?"),
(29032,24,0,12,0,100,"special_surprise SAY_EXEC_NOREM_7","You don't recognize me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you an orc!"),
(29032,25,0,12,0,100,"special_surprise SAY_EXEC_NOREM_8","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a tauren!"),
(29032,26,0,12,0,100,"special_surprise SAY_EXEC_NOREM_9","You don't remember me, mon? Damn da Scourge! Dey gone ta drain you of everytin dat made ya a mojo masta. Every last ounce of good... Everytin' dat made ya a troll hero, mon!"),
(29032,27,0,12,0,100,"special_surprise SAY_EXEC_THINK_1","A pact was made, $Gbrother:sister;! We vowed vengeance against the Lich King! For what he had done to us! We battled the Scourge as Forsaken, pushing them back into the plaguelands and freeing Tirisfal! You and I were champions of the Forsaken!"),
(29032,28,0,12,0,100,"special_surprise SAY_EXEC_THINK_2","You must remember the splendor of life, $Gbrother:sister;. You were a champion of the Kaldorei once! This isn't you!"),
(29032,29,0,12,0,100,"special_surprise SAY_EXEC_THINK_3","Think, $N. Think back. Try and remember the majestic halls of Silvermoon City, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the sin'dorei once! This isn't you."),
(29032,30,0,12,0,100,"special_surprise SAY_EXEC_THINK_4","Think, $N. Think back. Try and remember the proud mountains of Argus, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the draenei once! This isn't you."),
(29032,31,0,12,0,100,"special_surprise SAY_EXEC_THINK_5","Think, $N. Think back. Try and remember the snow capped mountains o' Dun Morogh! Ye were born there, $Glad:lass;. Remember the splendor o' life, $N! Ye were a champion o' the dwarves once! This isn't ye!"),
(29032,32,0,12,0,100,"special_surprise SAY_EXEC_THINK_6","Think, $N. Think back. Try and remember Gnomeregan before those damned troggs! Remember the feel of an [arclight spanner] $Gbrother:sister;. You were a champion of gnome-kind once! This isn't you."),
(29032,33,0,12,0,100,"special_surprise SAY_EXEC_THINK_7","Think, $N. Think back. Try and remember the hills and valleys of Elwynn, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the Alliance once! This isn't you."),
(29032,34,0,12,0,100,"special_surprise SAY_EXEC_THINK_8","Think, $N. Think back. Try and remember Durotar, $Gbrother:sister;! Remember the sacrifices our heroes made so that we could be free of the blood curse. Harken back to the Valley of Trials, where we were reborn into a world without demonic influence. We found the splendor of life, $N. Together! This isn't you. You were a champion of the Horde once!"),
(29032,35,0,12,0,100,"special_surprise SAY_EXEC_THINK_9","Think, $N. Think back. Try and remember the rolling plains of Mulgore, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the tauren once! This isn't you."),
(29032,36,0,12,0,100,"special_surprise SAY_EXEC_THINK_10","TINK $N. Tink back, mon! We be Darkspear, mon! Bruddas and sistas! Remember when we fought the Zalazane and done took he head and freed da Echo Isles? MON! TINK! You was a champion of da Darkspear trolls!"),
(29032,37,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_1","Listen to me, $N. You must fight against the Lich King's control. He is a monster that wants to see this world - our world - in ruin. Don't let him use you to accomplish his goals. You were once a hero and you can be again. Fight, damn you! Fight his control!"),
(29032,38,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_2","Listen to me, $N Ye must fight against the Lich King's control. He's a monster that wants to see this world - our world - in ruin. Don't let him use ye to accomplish his goals. Ye were once a hero and ye can be again. Fight, damn ye! Fight his control!"),
(29032,39,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_3","Listen to me, $N. You must fight against the Lich King's control. He is a monster that wants to see this world - our world - in ruin. Don't let him use you to accomplish his goals AGAIN. You were once a hero and you can be again. Fight, damn you! Fight his control!"),
(29032,40,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_4","Listen ta me, $Gbrudda:sista;. You must fight against da Lich King's control. He be a monstar dat want ta see dis world - our world - be ruined. Don't let he use you ta accomplish he goals. You be a hero once and you be a hero again! Fight it, mon! Fight he control!"),

(29032,42,0,12,0,100,"special_surprise SAY_EXEC_TIME_1","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Silvermoon. This world is worth saving!"),
(29032,43,0,12,0,100,"special_surprise SAY_EXEC_TIME_2","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Argus. Don't let that happen to this world."),
(29032,44,0,12,0,100,"special_surprise SAY_EXEC_TIME_3","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both $N... For KHAAAAAAAAZZZ MODAAAAAANNNNNN!!!"),
(29032,45,0,12,0,100,"special_surprise SAY_EXEC_TIME_4","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Tirisfal! This world is worth saving!"),
(29032,46,0,12,0,100,"special_surprise SAY_EXEC_TIME_5","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Gnomeregan! This world is worth saving."),
(29032,47,0,12,0,100,"special_surprise SAY_EXEC_TIME_6","There... There's no more time for me. I'm done for. FInish me off, $N. Do it or they'll kill us both. $N...Remember Elwynn. This world is worth saving."),
(29032,48,0,12,0,100,"special_surprise SAY_EXEC_TIME_7","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Teldrassil, our beloved home. This world is worth saving."),
(29032,49,0,12,0,100,"special_surprise SAY_EXEC_TIME_8","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... For the Horde! This world is worth saving."),
(29032,50,0,12,0,100,"special_surprise SAY_EXEC_TIME_9","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Mulgore. This world is worth saving."),
(29032,51,0,12,0,100,"special_surprise SAY_EXEC_TIME_10","Der... Der's no more time for me. I be done for. Finish me off $N. Do it or they'll kill us both. $N... Remember Sen'jin Village, mon! Dis world be worth saving!"),
(29032,52,0,12,0,100,"special_surprise SAY_EXEC_WAITING","Do it, $N! Put me out of my misery!"),
(29032,53,0,16,0,100,"special_surprise EMOTE_DIES","%s dies from his wounds."),
-- Ellen Stanbridge
(29061,0,0,12,0,100,"special_surprise SAY_EXEC_START_1","Come to finish the job, have you?"),
(29061,1,0,12,0,100,"special_surprise SAY_EXEC_START_2","Come to finish the job, have ye?"),
(29061,2,0,12,0,100,"special_surprise SAY_EXEC_START_3","Come ta finish da job, mon?"),
(29061,3,0,12,0,100,"special_surprise SAY_EXEC_PROG_1","You'll look me in the eyes when..."),
(29061,4,0,12,0,100,"special_surprise SAY_EXEC_PROG_2","Well this son o' Ironforge would like..."),
(29061,5,0,12,0,100,"special_surprise SAY_EXEC_PROG_3","Ironic, isn't it? To be killed..."),
(29061,6,0,12,0,100,"special_surprise SAY_EXEC_PROG_4","If you'd allow me just one..."),
(29061,7,0,12,0,100,"special_surprise SAY_EXEC_PROG_5","I'd like to stand for..."),
(29061,8,0,12,0,100,"special_surprise SAY_EXEC_PROG_6","I want to die like an orc..."),
(29061,9,0,12,0,100,"special_surprise SAY_EXEC_PROG_7","Dis troll gonna stand for da..."),
(29061,10,0,12,0,100,"special_surprise SAY_EXEC_NAME_1","$N?"),
(29061,11,0,12,0,100,"special_surprise SAY_EXEC_NAME_2","$N? Mon?"),
(29061,12,0,12,0,100,"special_surprise SAY_EXEC_RECOG_1","$N, I'd recognize that face anywhere... What... What have they done to you, $N?"),
(29061,13,0,12,0,100,"special_surprise SAY_EXEC_RECOG_2","$N, I'd recognize those face tentacles anywhere... What... What have they done to you, $N?"),
(29061,14,0,12,0,100,"special_surprise SAY_EXEC_RECOG_3","$N, I'd recognize that face anywhere... What... What have they done to ye, $Glad:lass;?"),
(29061,15,0,12,0,100,"special_surprise SAY_EXEC_RECOG_4","$N, I'd recognize that decay anywhere... What... What have they done to you, $N?"),
(29061,16,0,12,0,100,"special_surprise SAY_EXEC_RECOG_5","$N, I'd recognize those horns anywhere... What have they done to you, $N?"),
(29061,17,0,12,0,100,"special_surprise SAY_EXEC_RECOG_6","$N, I'd recognize dem tusks anywhere... What... What have dey done ta you, mon?"),
(29061,18,0,12,0,100,"special_surprise SAY_EXEC_NOREM_1","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a draenei!"),
(29061,19,0,12,0,100,"special_surprise SAY_EXEC_NOREM_2","Ye don't remember me, do ye? Blasted Scourge... They've tried to drain ye o' everything that made ye a righteous force o' reckoning. Every last ounce o' good... Everything that made you a $Gson:daughter; of Ironforge!"),
(29061,20,0,12,0,100,"special_surprise SAY_EXEC_NOREM_3","You don't remember me, do you? We were humans once - long, long ago - until Lordaeron fell to the Scourge. Your transformation to a Scourge zombie came shortly after my own. Not long after that, our minds were freed by the Dark Lady."),
(29061,21,0,12,0,100,"special_surprise SAY_EXEC_NOREM_4","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a pint-sized force of reckoning. Every last ounce of good... Everything that made you a gnome!"),
(29061,22,0,12,0,100,"special_surprise SAY_EXEC_NOREM_5","You don't remember me, do you? Blasted Scourge...They've tried to drain of everything that made you a righteous force of reckoning. Every last ounce of good...Everything that made you a human!"),
(29061,23,0,12,0,100,"special_surprise SAY_EXEC_NOREM_6","You don't remember me? When you were a child your mother would leave you in my care while she served at the Temple of the Moon. I held you in my arms and fed you with honey and sheep's milk to calm you until she would return. You were my little angel. Blasted Scourge... What have they done to you, $N?"),
(29061,24,0,12,0,100,"special_surprise SAY_EXEC_NOREM_7","You don't recognize me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you an orc!"),
(29061,25,0,12,0,100,"special_surprise SAY_EXEC_NOREM_8","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a tauren!"),
(29061,26,0,12,0,100,"special_surprise SAY_EXEC_NOREM_9","You don't remember me, mon? Damn da Scourge! Dey gone ta drain you of everytin dat made ya a mojo masta. Every last ounce of good... Everytin' dat made ya a troll hero, mon!"),
(29061,27,0,12,0,100,"special_surprise SAY_EXEC_THINK_1","A pact was made, $Gbrother:sister;! We vowed vengeance against the Lich King! For what he had done to us! We battled the Scourge as Forsaken, pushing them back into the plaguelands and freeing Tirisfal! You and I were champions of the Forsaken!"),
(29061,28,0,12,0,100,"special_surprise SAY_EXEC_THINK_2","You must remember the splendor of life, $Gbrother:sister;. You were a champion of the Kaldorei once! This isn't you!"),
(29061,29,0,12,0,100,"special_surprise SAY_EXEC_THINK_3","Think, $N. Think back. Try and remember the majestic halls of Silvermoon City, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the sin'dorei once! This isn't you."),
(29061,30,0,12,0,100,"special_surprise SAY_EXEC_THINK_4","Think, $N. Think back. Try and remember the proud mountains of Argus, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the draenei once! This isn't you."),
(29061,31,0,12,0,100,"special_surprise SAY_EXEC_THINK_5","Think, $N. Think back. Try and remember the snow capped mountains o' Dun Morogh! Ye were born there, $Glad:lass;. Remember the splendor o' life, $N! Ye were a champion o' the dwarves once! This isn't ye!"),
(29061,32,0,12,0,100,"special_surprise SAY_EXEC_THINK_6","Think, $N. Think back. Try and remember Gnomeregan before those damned troggs! Remember the feel of an [arclight spanner] $Gbrother:sister;. You were a champion of gnome-kind once! This isn't you."),
(29061,33,0,12,0,100,"special_surprise SAY_EXEC_THINK_7","Think, $N. Think back. Try and remember the hills and valleys of Elwynn, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the Alliance once! This isn't you."),
(29061,34,0,12,0,100,"special_surprise SAY_EXEC_THINK_8","Think, $N. Think back. Try and remember Durotar, $Gbrother:sister;! Remember the sacrifices our heroes made so that we could be free of the blood curse. Harken back to the Valley of Trials, where we were reborn into a world without demonic influence. We found the splendor of life, $N. Together! This isn't you. You were a champion of the Horde once!"),
(29061,35,0,12,0,100,"special_surprise SAY_EXEC_THINK_9","Think, $N. Think back. Try and remember the rolling plains of Mulgore, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the tauren once! This isn't you."),
(29061,36,0,12,0,100,"special_surprise SAY_EXEC_THINK_10","TINK $N. Tink back, mon! We be Darkspear, mon! Bruddas and sistas! Remember when we fought the Zalazane and done took he head and freed da Echo Isles? MON! TINK! You was a champion of da Darkspear trolls!"),
(29061,37,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_1","Listen to me, $N. You must fight against the Lich King's control. He is a monster that wants to see this world - our world - in ruin. Don't let him use you to accomplish his goals. You were once a hero and you can be again. Fight, damn you! Fight his control!"),
(29061,38,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_2","Listen to me, $N Ye must fight against the Lich King's control. He's a monster that wants to see this world - our world - in ruin. Don't let him use ye to accomplish his goals. Ye were once a hero and ye can be again. Fight, damn ye! Fight his control!"),
(29061,39,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_3","Listen to me, $N. You must fight against the Lich King's control. He is a monster that wants to see this world - our world - in ruin. Don't let him use you to accomplish his goals AGAIN. You were once a hero and you can be again. Fight, damn you! Fight his control!"),
(29061,40,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_4","Listen ta me, $Gbrudda:sista;. You must fight against da Lich King's control. He be a monstar dat want ta see dis world - our world - be ruined. Don't let he use you ta accomplish he goals. You be a hero once and you be a hero again! Fight it, mon! Fight he control!"),
(29061,42,0,12,0,100,"special_surprise SAY_EXEC_TIME_1","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Silvermoon. This world is worth saving!"),
(29061,43,0,12,0,100,"special_surprise SAY_EXEC_TIME_2","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Argus. Don't let that happen to this world."),
(29061,44,0,12,0,100,"special_surprise SAY_EXEC_TIME_3","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both $N... For KHAAAAAAAAZZZ MODAAAAAANNNNNN!!!"),
(29061,45,0,12,0,100,"special_surprise SAY_EXEC_TIME_4","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Tirisfal! This world is worth saving!"),
(29061,46,0,12,0,100,"special_surprise SAY_EXEC_TIME_5","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Gnomeregan! This world is worth saving."),
(29061,47,0,12,0,100,"special_surprise SAY_EXEC_TIME_6","There... There's no more time for me. I'm done for. FInish me off, $N. Do it or they'll kill us both. $N...Remember Elwynn. This world is worth saving."),
(29061,48,0,12,0,100,"special_surprise SAY_EXEC_TIME_7","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Teldrassil, our beloved home. This world is worth saving."),
(29061,49,0,12,0,100,"special_surprise SAY_EXEC_TIME_8","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... For the Horde! This world is worth saving."),
(29061,50,0,12,0,100,"special_surprise SAY_EXEC_TIME_9","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Mulgore. This world is worth saving."),
(29061,51,0,12,0,100,"special_surprise SAY_EXEC_TIME_10","Der... Der's no more time for me. I be done for. Finish me off $N. Do it or they'll kill us both. $N... Remember Sen'jin Village, mon! Dis world be worth saving!"),
(29061,52,0,12,0,100,"special_surprise SAY_EXEC_WAITING","Do it, $N! Put me out of my misery!"),
(29061,53,0,16,0,100,"special_surprise EMOTE_DIES","%s dies from his wounds."),
-- Yazmina Oakenthorn
(29065,0,0,12,0,100,"special_surprise SAY_EXEC_START_1","Come to finish the job, have you?"),
(29065,1,0,12,0,100,"special_surprise SAY_EXEC_START_2","Come to finish the job, have ye?"),
(29065,2,0,12,0,100,"special_surprise SAY_EXEC_START_3","Come ta finish da job, mon?"),
(29065,3,0,12,0,100,"special_surprise SAY_EXEC_PROG_1","You'll look me in the eyes when..."),
(29065,4,0,12,0,100,"special_surprise SAY_EXEC_PROG_2","Well this son o' Ironforge would like..."),
(29065,5,0,12,0,100,"special_surprise SAY_EXEC_PROG_3","Ironic, isn't it? To be killed..."),
(29065,6,0,12,0,100,"special_surprise SAY_EXEC_PROG_4","If you'd allow me just one..."),
(29065,7,0,12,0,100,"special_surprise SAY_EXEC_PROG_5","I'd like to stand for..."),
(29065,8,0,12,0,100,"special_surprise SAY_EXEC_PROG_6","I want to die like an orc..."),
(29065,9,0,12,0,100,"special_surprise SAY_EXEC_PROG_7","Dis troll gonna stand for da..."),
(29065,10,0,12,0,100,"special_surprise SAY_EXEC_NAME_1","$N?"),
(29065,11,0,12,0,100,"special_surprise SAY_EXEC_NAME_2","$N? Mon?"),
(29065,12,0,12,0,100,"special_surprise SAY_EXEC_RECOG_1","$N, I'd recognize that face anywhere... What... What have they done to you, $N?"),
(29065,13,0,12,0,100,"special_surprise SAY_EXEC_RECOG_2","$N, I'd recognize those face tentacles anywhere... What... What have they done to you, $N?"),
(29065,14,0,12,0,100,"special_surprise SAY_EXEC_RECOG_3","$N, I'd recognize that face anywhere... What... What have they done to ye, $Glad:lass;?"),
(29065,15,0,12,0,100,"special_surprise SAY_EXEC_RECOG_4","$N, I'd recognize that decay anywhere... What... What have they done to you, $N?"),
(29065,16,0,12,0,100,"special_surprise SAY_EXEC_RECOG_5","$N, I'd recognize those horns anywhere... What have they done to you, $N?"),
(29065,17,0,12,0,100,"special_surprise SAY_EXEC_RECOG_6","$N, I'd recognize dem tusks anywhere... What... What have dey done ta you, mon?"),
(29065,18,0,12,0,100,"special_surprise SAY_EXEC_NOREM_1","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a draenei!"),
(29065,19,0,12,0,100,"special_surprise SAY_EXEC_NOREM_2","Ye don't remember me, do ye? Blasted Scourge... They've tried to drain ye o' everything that made ye a righteous force o' reckoning. Every last ounce o' good... Everything that made you a $Gson:daughter; of Ironforge!"),
(29065,20,0,12,0,100,"special_surprise SAY_EXEC_NOREM_3","You don't remember me, do you? We were humans once - long, long ago - until Lordaeron fell to the Scourge. Your transformation to a Scourge zombie came shortly after my own. Not long after that, our minds were freed by the Dark Lady."),
(29065,21,0,12,0,100,"special_surprise SAY_EXEC_NOREM_4","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a pint-sized force of reckoning. Every last ounce of good... Everything that made you a gnome!"),
(29065,22,0,12,0,100,"special_surprise SAY_EXEC_NOREM_5","You don't remember me, do you? Blasted Scourge...They've tried to drain of everything that made you a righteous force of reckoning. Every last ounce of good...Everything that made you a human!"),
(29065,23,0,12,0,100,"special_surprise SAY_EXEC_NOREM_6","You don't remember me? When you were a child your mother would leave you in my care while she served at the Temple of the Moon. I held you in my arms and fed you with honey and sheep's milk to calm you until she would return. You were my little angel. Blasted Scourge... What have they done to you, $N?"),
(29065,24,0,12,0,100,"special_surprise SAY_EXEC_NOREM_7","You don't recognize me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you an orc!"),
(29065,25,0,12,0,100,"special_surprise SAY_EXEC_NOREM_8","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a tauren!"),
(29065,26,0,12,0,100,"special_surprise SAY_EXEC_NOREM_9","You don't remember me, mon? Damn da Scourge! Dey gone ta drain you of everytin dat made ya a mojo masta. Every last ounce of good... Everytin' dat made ya a troll hero, mon!"),
(29065,27,0,12,0,100,"special_surprise SAY_EXEC_THINK_1","A pact was made, $Gbrother:sister;! We vowed vengeance against the Lich King! For what he had done to us! We battled the Scourge as Forsaken, pushing them back into the plaguelands and freeing Tirisfal! You and I were champions of the Forsaken!"),
(29065,28,0,12,0,100,"special_surprise SAY_EXEC_THINK_2","You must remember the splendor of life, $Gbrother:sister;. You were a champion of the Kaldorei once! This isn't you!"),
(29065,29,0,12,0,100,"special_surprise SAY_EXEC_THINK_3","Think, $N. Think back. Try and remember the majestic halls of Silvermoon City, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the sin'dorei once! This isn't you."),
(29065,30,0,12,0,100,"special_surprise SAY_EXEC_THINK_4","Think, $N. Think back. Try and remember the proud mountains of Argus, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the draenei once! This isn't you."),
(29065,31,0,12,0,100,"special_surprise SAY_EXEC_THINK_5","Think, $N. Think back. Try and remember the snow capped mountains o' Dun Morogh! Ye were born there, $Glad:lass;. Remember the splendor o' life, $N! Ye were a champion o' the dwarves once! This isn't ye!"),
(29065,32,0,12,0,100,"special_surprise SAY_EXEC_THINK_6","Think, $N. Think back. Try and remember Gnomeregan before those damned troggs! Remember the feel of an [arclight spanner] $Gbrother:sister;. You were a champion of gnome-kind once! This isn't you."),
(29065,33,0,12,0,100,"special_surprise SAY_EXEC_THINK_7","Think, $N. Think back. Try and remember the hills and valleys of Elwynn, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the Alliance once! This isn't you."),
(29065,34,0,12,0,100,"special_surprise SAY_EXEC_THINK_8","Think, $N. Think back. Try and remember Durotar, $Gbrother:sister;! Remember the sacrifices our heroes made so that we could be free of the blood curse. Harken back to the Valley of Trials, where we were reborn into a world without demonic influence. We found the splendor of life, $N. Together! This isn't you. You were a champion of the Horde once!"),
(29065,35,0,12,0,100,"special_surprise SAY_EXEC_THINK_9","Think, $N. Think back. Try and remember the rolling plains of Mulgore, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the tauren once! This isn't you."),
(29065,36,0,12,0,100,"special_surprise SAY_EXEC_THINK_10","TINK $N. Tink back, mon! We be Darkspear, mon! Bruddas and sistas! Remember when we fought the Zalazane and done took he head and freed da Echo Isles? MON! TINK! You was a champion of da Darkspear trolls!"),
(29065,37,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_1","Listen to me, $N. You must fight against the Lich King's control. He is a monster that wants to see this world - our world - in ruin. Don't let him use you to accomplish his goals. You were once a hero and you can be again. Fight, damn you! Fight his control!"),
(29065,38,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_2","Listen to me, $N Ye must fight against the Lich King's control. He's a monster that wants to see this world - our world - in ruin. Don't let him use ye to accomplish his goals. Ye were once a hero and ye can be again. Fight, damn ye! Fight his control!"),
(29065,39,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_3","Listen to me, $N. You must fight against the Lich King's control. He is a monster that wants to see this world - our world - in ruin. Don't let him use you to accomplish his goals AGAIN. You were once a hero and you can be again. Fight, damn you! Fight his control!"),
(29065,40,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_4","Listen ta me, $Gbrudda:sista;. You must fight against da Lich King's control. He be a monstar dat want ta see dis world - our world - be ruined. Don't let he use you ta accomplish he goals. You be a hero once and you be a hero again! Fight it, mon! Fight he control!"),
(29065,42,0,12,0,100,"special_surprise SAY_EXEC_TIME_1","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Silvermoon. This world is worth saving!"),
(29065,43,0,12,0,100,"special_surprise SAY_EXEC_TIME_2","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Argus. Don't let that happen to this world."),
(29065,44,0,12,0,100,"special_surprise SAY_EXEC_TIME_3","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both $N... For KHAAAAAAAAZZZ MODAAAAAANNNNNN!!!"),
(29065,45,0,12,0,100,"special_surprise SAY_EXEC_TIME_4","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Tirisfal! This world is worth saving!"),
(29065,46,0,12,0,100,"special_surprise SAY_EXEC_TIME_5","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Gnomeregan! This world is worth saving."),
(29065,47,0,12,0,100,"special_surprise SAY_EXEC_TIME_6","There... There's no more time for me. I'm done for. FInish me off, $N. Do it or they'll kill us both. $N...Remember Elwynn. This world is worth saving."),
(29065,48,0,12,0,100,"special_surprise SAY_EXEC_TIME_7","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Teldrassil, our beloved home. This world is worth saving."),
(29065,49,0,12,0,100,"special_surprise SAY_EXEC_TIME_8","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... For the Horde! This world is worth saving."),
(29065,50,0,12,0,100,"special_surprise SAY_EXEC_TIME_9","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Mulgore. This world is worth saving."),
(29065,51,0,12,0,100,"special_surprise SAY_EXEC_TIME_10","Der... Der's no more time for me. I be done for. Finish me off $N. Do it or they'll kill us both. $N... Remember Sen'jin Village, mon! Dis world be worth saving!"),
(29065,52,0,12,0,100,"special_surprise SAY_EXEC_WAITING","Do it, $N! Put me out of my misery!"),
(29065,53,0,16,0,100,"special_surprise EMOTE_DIES","%s dies from his wounds."),
-- Donovan Pulfrost
(29067,0,0,12,0,100,"special_surprise SAY_EXEC_START_1","Come to finish the job, have you?"),
(29067,1,0,12,0,100,"special_surprise SAY_EXEC_START_2","Come to finish the job, have ye?"),
(29067,2,0,12,0,100,"special_surprise SAY_EXEC_START_3","Come ta finish da job, mon?"),
(29067,3,0,12,0,100,"special_surprise SAY_EXEC_PROG_1","You'll look me in the eyes when..."),
(29067,4,0,12,0,100,"special_surprise SAY_EXEC_PROG_2","Well this son o' Ironforge would like..."),
(29067,5,0,12,0,100,"special_surprise SAY_EXEC_PROG_3","Ironic, isn't it? To be killed..."),
(29067,6,0,12,0,100,"special_surprise SAY_EXEC_PROG_4","If you'd allow me just one..."),
(29067,7,0,12,0,100,"special_surprise SAY_EXEC_PROG_5","I'd like to stand for..."),
(29067,8,0,12,0,100,"special_surprise SAY_EXEC_PROG_6","I want to die like an orc..."),
(29067,9,0,12,0,100,"special_surprise SAY_EXEC_PROG_7","Dis troll gonna stand for da..."),
(29067,10,0,12,0,100,"special_surprise SAY_EXEC_NAME_1","$N?"),
(29067,11,0,12,0,100,"special_surprise SAY_EXEC_NAME_2","$N? Mon?"),
(29067,12,0,12,0,100,"special_surprise SAY_EXEC_RECOG_1","$N, I'd recognize that face anywhere... What... What have they done to you, $N?"),
(29067,13,0,12,0,100,"special_surprise SAY_EXEC_RECOG_2","$N, I'd recognize those face tentacles anywhere... What... What have they done to you, $N?"),
(29067,14,0,12,0,100,"special_surprise SAY_EXEC_RECOG_3","$N, I'd recognize that face anywhere... What... What have they done to ye, $Glad:lass;?"),
(29067,15,0,12,0,100,"special_surprise SAY_EXEC_RECOG_4","$N, I'd recognize that decay anywhere... What... What have they done to you, $N?"),
(29067,16,0,12,0,100,"special_surprise SAY_EXEC_RECOG_5","$N, I'd recognize those horns anywhere... What have they done to you, $N?"),
(29067,17,0,12,0,100,"special_surprise SAY_EXEC_RECOG_6","$N, I'd recognize dem tusks anywhere... What... What have dey done ta you, mon?"),
(29067,18,0,12,0,100,"special_surprise SAY_EXEC_NOREM_1","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a draenei!"),
(29067,19,0,12,0,100,"special_surprise SAY_EXEC_NOREM_2","Ye don't remember me, do ye? Blasted Scourge... They've tried to drain ye o' everything that made ye a righteous force o' reckoning. Every last ounce o' good... Everything that made you a $Gson:daughter; of Ironforge!"),
(29067,20,0,12,0,100,"special_surprise SAY_EXEC_NOREM_3","You don't remember me, do you? We were humans once - long, long ago - until Lordaeron fell to the Scourge. Your transformation to a Scourge zombie came shortly after my own. Not long after that, our minds were freed by the Dark Lady."),
(29067,21,0,12,0,100,"special_surprise SAY_EXEC_NOREM_4","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a pint-sized force of reckoning. Every last ounce of good... Everything that made you a gnome!"),
(29067,22,0,12,0,100,"special_surprise SAY_EXEC_NOREM_5","You don't remember me, do you? Blasted Scourge...They've tried to drain of everything that made you a righteous force of reckoning. Every last ounce of good...Everything that made you a human!"),
(29067,23,0,12,0,100,"special_surprise SAY_EXEC_NOREM_6","You don't remember me? When you were a child your mother would leave you in my care while she served at the Temple of the Moon. I held you in my arms and fed you with honey and sheep's milk to calm you until she would return. You were my little angel. Blasted Scourge... What have they done to you, $N?"),
(29067,24,0,12,0,100,"special_surprise SAY_EXEC_NOREM_7","You don't recognize me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you an orc!"),
(29067,25,0,12,0,100,"special_surprise SAY_EXEC_NOREM_8","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a tauren!"),
(29067,26,0,12,0,100,"special_surprise SAY_EXEC_NOREM_9","You don't remember me, mon? Damn da Scourge! Dey gone ta drain you of everytin dat made ya a mojo masta. Every last ounce of good... Everytin' dat made ya a troll hero, mon!"),
(29067,27,0,12,0,100,"special_surprise SAY_EXEC_THINK_1","A pact was made, $Gbrother:sister;! We vowed vengeance against the Lich King! For what he had done to us! We battled the Scourge as Forsaken, pushing them back into the plaguelands and freeing Tirisfal! You and I were champions of the Forsaken!"),
(29067,28,0,12,0,100,"special_surprise SAY_EXEC_THINK_2","You must remember the splendor of life, $Gbrother:sister;. You were a champion of the Kaldorei once! This isn't you!"),
(29067,29,0,12,0,100,"special_surprise SAY_EXEC_THINK_3","Think, $N. Think back. Try and remember the majestic halls of Silvermoon City, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the sin'dorei once! This isn't you."),
(29067,30,0,12,0,100,"special_surprise SAY_EXEC_THINK_4","Think, $N. Think back. Try and remember the proud mountains of Argus, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the draenei once! This isn't you."),
(29067,31,0,12,0,100,"special_surprise SAY_EXEC_THINK_5","Think, $N. Think back. Try and remember the snow capped mountains o' Dun Morogh! Ye were born there, $Glad:lass;. Remember the splendor o' life, $N! Ye were a champion o' the dwarves once! This isn't ye!"),
(29067,32,0,12,0,100,"special_surprise SAY_EXEC_THINK_6","Think, $N. Think back. Try and remember Gnomeregan before those damned troggs! Remember the feel of an [arclight spanner] $Gbrother:sister;. You were a champion of gnome-kind once! This isn't you."),
(29067,33,0,12,0,100,"special_surprise SAY_EXEC_THINK_7","Think, $N. Think back. Try and remember the hills and valleys of Elwynn, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the Alliance once! This isn't you."),
(29067,34,0,12,0,100,"special_surprise SAY_EXEC_THINK_8","Think, $N. Think back. Try and remember Durotar, $Gbrother:sister;! Remember the sacrifices our heroes made so that we could be free of the blood curse. Harken back to the Valley of Trials, where we were reborn into a world without demonic influence. We found the splendor of life, $N. Together! This isn't you. You were a champion of the Horde once!"),
(29067,35,0,12,0,100,"special_surprise SAY_EXEC_THINK_9","Think, $N. Think back. Try and remember the rolling plains of Mulgore, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the tauren once! This isn't you."),
(29067,36,0,12,0,100,"special_surprise SAY_EXEC_THINK_10","TINK $N. Tink back, mon! We be Darkspear, mon! Bruddas and sistas! Remember when we fought the Zalazane and done took he head and freed da Echo Isles? MON! TINK! You was a champion of da Darkspear trolls!"),
(29067,37,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_1","Listen to me, $N. You must fight against the Lich King's control. He is a monster that wants to see this world - our world - in ruin. Don't let him use you to accomplish his goals. You were once a hero and you can be again. Fight, damn you! Fight his control!"),
(29067,38,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_2","Listen to me, $N Ye must fight against the Lich King's control. He's a monster that wants to see this world - our world - in ruin. Don't let him use ye to accomplish his goals. Ye were once a hero and ye can be again. Fight, damn ye! Fight his control!"),
(29067,39,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_3","Listen to me, $N. You must fight against the Lich King's control. He is a monster that wants to see this world - our world - in ruin. Don't let him use you to accomplish his goals AGAIN. You were once a hero and you can be again. Fight, damn you! Fight his control!"),
(29067,40,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_4","Listen ta me, $Gbrudda:sista;. You must fight against da Lich King's control. He be a monstar dat want ta see dis world - our world - be ruined. Don't let he use you ta accomplish he goals. You be a hero once and you be a hero again! Fight it, mon! Fight he control!"),
(29067,42,0,12,0,100,"special_surprise SAY_EXEC_TIME_1","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Silvermoon. This world is worth saving!"),
(29067,43,0,12,0,100,"special_surprise SAY_EXEC_TIME_2","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Argus. Don't let that happen to this world."),
(29067,44,0,12,0,100,"special_surprise SAY_EXEC_TIME_3","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both $N... For KHAAAAAAAAZZZ MODAAAAAANNNNNN!!!"),
(29067,45,0,12,0,100,"special_surprise SAY_EXEC_TIME_4","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Tirisfal! This world is worth saving!"),
(29067,46,0,12,0,100,"special_surprise SAY_EXEC_TIME_5","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Gnomeregan! This world is worth saving."),
(29067,47,0,12,0,100,"special_surprise SAY_EXEC_TIME_6","There... There's no more time for me. I'm done for. FInish me off, $N. Do it or they'll kill us both. $N...Remember Elwynn. This world is worth saving."),
(29067,48,0,12,0,100,"special_surprise SAY_EXEC_TIME_7","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Teldrassil, our beloved home. This world is worth saving."),
(29067,49,0,12,0,100,"special_surprise SAY_EXEC_TIME_8","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... For the Horde! This world is worth saving."),
(29067,50,0,12,0,100,"special_surprise SAY_EXEC_TIME_9","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Mulgore. This world is worth saving."),
(29067,51,0,12,0,100,"special_surprise SAY_EXEC_TIME_10","Der... Der's no more time for me. I be done for. Finish me off $N. Do it or they'll kill us both. $N... Remember Sen'jin Village, mon! Dis world be worth saving!"),
(29067,52,0,12,0,100,"special_surprise SAY_EXEC_WAITING","Do it, $N! Put me out of my misery!"),
(29067,53,0,16,0,100,"special_surprise EMOTE_DIES","%s dies from his wounds."),
-- Goby Blastenheimer
(29068,0,0,12,0,100,"special_surprise SAY_EXEC_START_1","Come to finish the job, have you?"),
(29068,1,0,12,0,100,"special_surprise SAY_EXEC_START_2","Come to finish the job, have ye?"),
(29068,2,0,12,0,100,"special_surprise SAY_EXEC_START_3","Come ta finish da job, mon?"),
(29068,3,0,12,0,100,"special_surprise SAY_EXEC_PROG_1","You'll look me in the eyes when..."),
(29068,4,0,12,0,100,"special_surprise SAY_EXEC_PROG_2","Well this son o' Ironforge would like..."),
(29068,5,0,12,0,100,"special_surprise SAY_EXEC_PROG_3","Ironic, isn't it? To be killed..."),
(29068,6,0,12,0,100,"special_surprise SAY_EXEC_PROG_4","If you'd allow me just one..."),
(29068,7,0,12,0,100,"special_surprise SAY_EXEC_PROG_5","I'd like to stand for..."),
(29068,8,0,12,0,100,"special_surprise SAY_EXEC_PROG_6","I want to die like an orc..."),
(29068,9,0,12,0,100,"special_surprise SAY_EXEC_PROG_7","Dis troll gonna stand for da..."),
(29068,10,0,12,0,100,"special_surprise SAY_EXEC_NAME_1","$N?"),
(29068,11,0,12,0,100,"special_surprise SAY_EXEC_NAME_2","$N? Mon?"),
(29068,12,0,12,0,100,"special_surprise SAY_EXEC_RECOG_1","$N, I'd recognize that face anywhere... What... What have they done to you, $N?"),
(29068,13,0,12,0,100,"special_surprise SAY_EXEC_RECOG_2","$N, I'd recognize those face tentacles anywhere... What... What have they done to you, $N?"),
(29068,14,0,12,0,100,"special_surprise SAY_EXEC_RECOG_3","$N, I'd recognize that face anywhere... What... What have they done to ye, $Glad:lass;?"),
(29068,15,0,12,0,100,"special_surprise SAY_EXEC_RECOG_4","$N, I'd recognize that decay anywhere... What... What have they done to you, $N?"),
(29068,16,0,12,0,100,"special_surprise SAY_EXEC_RECOG_5","$N, I'd recognize those horns anywhere... What have they done to you, $N?"),
(29068,17,0,12,0,100,"special_surprise SAY_EXEC_RECOG_6","$N, I'd recognize dem tusks anywhere... What... What have dey done ta you, mon?"),
(29068,18,0,12,0,100,"special_surprise SAY_EXEC_NOREM_1","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a draenei!"),
(29068,19,0,12,0,100,"special_surprise SAY_EXEC_NOREM_2","Ye don't remember me, do ye? Blasted Scourge... They've tried to drain ye o' everything that made ye a righteous force o' reckoning. Every last ounce o' good... Everything that made you a $Gson:daughter; of Ironforge!"),
(29068,20,0,12,0,100,"special_surprise SAY_EXEC_NOREM_3","You don't remember me, do you? We were humans once - long, long ago - until Lordaeron fell to the Scourge. Your transformation to a Scourge zombie came shortly after my own. Not long after that, our minds were freed by the Dark Lady."),
(29068,21,0,12,0,100,"special_surprise SAY_EXEC_NOREM_4","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a pint-sized force of reckoning. Every last ounce of good... Everything that made you a gnome!"),
(29068,22,0,12,0,100,"special_surprise SAY_EXEC_NOREM_5","You don't remember me, do you? Blasted Scourge...They've tried to drain of everything that made you a righteous force of reckoning. Every last ounce of good...Everything that made you a human!"),
(29068,23,0,12,0,100,"special_surprise SAY_EXEC_NOREM_6","You don't remember me? When you were a child your mother would leave you in my care while she served at the Temple of the Moon. I held you in my arms and fed you with honey and sheep's milk to calm you until she would return. You were my little angel. Blasted Scourge... What have they done to you, $N?"),
(29068,24,0,12,0,100,"special_surprise SAY_EXEC_NOREM_7","You don't recognize me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you an orc!"),
(29068,25,0,12,0,100,"special_surprise SAY_EXEC_NOREM_8","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a tauren!"),
(29068,26,0,12,0,100,"special_surprise SAY_EXEC_NOREM_9","You don't remember me, mon? Damn da Scourge! Dey gone ta drain you of everytin dat made ya a mojo masta. Every last ounce of good... Everytin' dat made ya a troll hero, mon!"),
(29068,27,0,12,0,100,"special_surprise SAY_EXEC_THINK_1","A pact was made, $Gbrother:sister;! We vowed vengeance against the Lich King! For what he had done to us! We battled the Scourge as Forsaken, pushing them back into the plaguelands and freeing Tirisfal! You and I were champions of the Forsaken!"),
(29068,28,0,12,0,100,"special_surprise SAY_EXEC_THINK_2","You must remember the splendor of life, $Gbrother:sister;. You were a champion of the Kaldorei once! This isn't you!"),
(29068,29,0,12,0,100,"special_surprise SAY_EXEC_THINK_3","Think, $N. Think back. Try and remember the majestic halls of Silvermoon City, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the sin'dorei once! This isn't you."),
(29068,30,0,12,0,100,"special_surprise SAY_EXEC_THINK_4","Think, $N. Think back. Try and remember the proud mountains of Argus, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the draenei once! This isn't you."),
(29068,31,0,12,0,100,"special_surprise SAY_EXEC_THINK_5","Think, $N. Think back. Try and remember the snow capped mountains o' Dun Morogh! Ye were born there, $Glad:lass;. Remember the splendor o' life, $N! Ye were a champion o' the dwarves once! This isn't ye!"),
(29068,32,0,12,0,100,"special_surprise SAY_EXEC_THINK_6","Think, $N. Think back. Try and remember Gnomeregan before those damned troggs! Remember the feel of an [arclight spanner] $Gbrother:sister;. You were a champion of gnome-kind once! This isn't you."),
(29068,33,0,12,0,100,"special_surprise SAY_EXEC_THINK_7","Think, $N. Think back. Try and remember the hills and valleys of Elwynn, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the Alliance once! This isn't you."),
(29068,34,0,12,0,100,"special_surprise SAY_EXEC_THINK_8","Think, $N. Think back. Try and remember Durotar, $Gbrother:sister;! Remember the sacrifices our heroes made so that we could be free of the blood curse. Harken back to the Valley of Trials, where we were reborn into a world without demonic influence. We found the splendor of life, $N. Together! This isn't you. You were a champion of the Horde once!"),
(29068,35,0,12,0,100,"special_surprise SAY_EXEC_THINK_9","Think, $N. Think back. Try and remember the rolling plains of Mulgore, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the tauren once! This isn't you."),
(29068,36,0,12,0,100,"special_surprise SAY_EXEC_THINK_10","TINK $N. Tink back, mon! We be Darkspear, mon! Bruddas and sistas! Remember when we fought the Zalazane and done took he head and freed da Echo Isles? MON! TINK! You was a champion of da Darkspear trolls!"),
(29068,37,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_1","Listen to me, $N. You must fight against the Lich King's control. He is a monster that wants to see this world - our world - in ruin. Don't let him use you to accomplish his goals. You were once a hero and you can be again. Fight, damn you! Fight his control!"),
(29068,38,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_2","Listen to me, $N Ye must fight against the Lich King's control. He's a monster that wants to see this world - our world - in ruin. Don't let him use ye to accomplish his goals. Ye were once a hero and ye can be again. Fight, damn ye! Fight his control!"),
(29068,39,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_3","Listen to me, $N. You must fight against the Lich King's control. He is a monster that wants to see this world - our world - in ruin. Don't let him use you to accomplish his goals AGAIN. You were once a hero and you can be again. Fight, damn you! Fight his control!"),
(29068,40,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_4","Listen ta me, $Gbrudda:sista;. You must fight against da Lich King's control. He be a monstar dat want ta see dis world - our world - be ruined. Don't let he use you ta accomplish he goals. You be a hero once and you be a hero again! Fight it, mon! Fight he control!"),
(29068,42,0,12,0,100,"special_surprise SAY_EXEC_TIME_1","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Silvermoon. This world is worth saving!"),
(29068,43,0,12,0,100,"special_surprise SAY_EXEC_TIME_2","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Argus. Don't let that happen to this world."),
(29068,44,0,12,0,100,"special_surprise SAY_EXEC_TIME_3","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both $N... For KHAAAAAAAAZZZ MODAAAAAANNNNNN!!!"),
(29068,45,0,12,0,100,"special_surprise SAY_EXEC_TIME_4","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Tirisfal! This world is worth saving!"),
(29068,46,0,12,0,100,"special_surprise SAY_EXEC_TIME_5","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Gnomeregan! This world is worth saving."),
(29068,47,0,12,0,100,"special_surprise SAY_EXEC_TIME_6","There... There's no more time for me. I'm done for. FInish me off, $N. Do it or they'll kill us both. $N...Remember Elwynn. This world is worth saving."),
(29068,48,0,12,0,100,"special_surprise SAY_EXEC_TIME_7","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Teldrassil, our beloved home. This world is worth saving."),
(29068,49,0,12,0,100,"special_surprise SAY_EXEC_TIME_8","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... For the Horde! This world is worth saving."),
(29068,50,0,12,0,100,"special_surprise SAY_EXEC_TIME_9","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Mulgore. This world is worth saving."),
(29068,51,0,12,0,100,"special_surprise SAY_EXEC_TIME_10","Der... Der's no more time for me. I be done for. Finish me off $N. Do it or they'll kill us both. $N... Remember Sen'jin Village, mon! Dis world be worth saving!"),
(29068,52,0,12,0,100,"special_surprise SAY_EXEC_WAITING","Do it, $N! Put me out of my misery!"),
(29068,53,0,16,0,100,"special_surprise EMOTE_DIES","%s dies from his wounds."),
-- Valok the Righteous
(29070,0,0,12,0,100,"special_surprise SAY_EXEC_START_1","Come to finish the job, have you?"),
(29070,1,0,12,0,100,"special_surprise SAY_EXEC_START_2","Come to finish the job, have ye?"),
(29070,2,0,12,0,100,"special_surprise SAY_EXEC_START_3","Come ta finish da job, mon?"),
(29070,3,0,12,0,100,"special_surprise SAY_EXEC_PROG_1","You'll look me in the eyes when..."),
(29070,4,0,12,0,100,"special_surprise SAY_EXEC_PROG_2","Well this son o' Ironforge would like..."),
(29070,5,0,12,0,100,"special_surprise SAY_EXEC_PROG_3","Ironic, isn't it? To be killed..."),
(29070,6,0,12,0,100,"special_surprise SAY_EXEC_PROG_4","If you'd allow me just one..."),
(29070,7,0,12,0,100,"special_surprise SAY_EXEC_PROG_5","I'd like to stand for..."),
(29070,8,0,12,0,100,"special_surprise SAY_EXEC_PROG_6","I want to die like an orc..."),
(29070,9,0,12,0,100,"special_surprise SAY_EXEC_PROG_7","Dis troll gonna stand for da..."),
(29070,10,0,12,0,100,"special_surprise SAY_EXEC_NAME_1","$N?"),
(29070,11,0,12,0,100,"special_surprise SAY_EXEC_NAME_2","$N? Mon?"),
(29070,12,0,12,0,100,"special_surprise SAY_EXEC_RECOG_1","$N, I'd recognize that face anywhere... What... What have they done to you, $N?"),
(29070,13,0,12,0,100,"special_surprise SAY_EXEC_RECOG_2","$N, I'd recognize those face tentacles anywhere... What... What have they done to you, $N?"),
(29070,14,0,12,0,100,"special_surprise SAY_EXEC_RECOG_3","$N, I'd recognize that face anywhere... What... What have they done to ye, $Glad:lass;?"),
(29070,15,0,12,0,100,"special_surprise SAY_EXEC_RECOG_4","$N, I'd recognize that decay anywhere... What... What have they done to you, $N?"),
(29070,16,0,12,0,100,"special_surprise SAY_EXEC_RECOG_5","$N, I'd recognize those horns anywhere... What have they done to you, $N?"),
(29070,17,0,12,0,100,"special_surprise SAY_EXEC_RECOG_6","$N, I'd recognize dem tusks anywhere... What... What have dey done ta you, mon?"),
(29070,18,0,12,0,100,"special_surprise SAY_EXEC_NOREM_1","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a draenei!"),
(29070,19,0,12,0,100,"special_surprise SAY_EXEC_NOREM_2","Ye don't remember me, do ye? Blasted Scourge... They've tried to drain ye o' everything that made ye a righteous force o' reckoning. Every last ounce o' good... Everything that made you a $Gson:daughter; of Ironforge!"),
(29070,20,0,12,0,100,"special_surprise SAY_EXEC_NOREM_3","You don't remember me, do you? We were humans once - long, long ago - until Lordaeron fell to the Scourge. Your transformation to a Scourge zombie came shortly after my own. Not long after that, our minds were freed by the Dark Lady."),
(29070,21,0,12,0,100,"special_surprise SAY_EXEC_NOREM_4","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a pint-sized force of reckoning. Every last ounce of good... Everything that made you a gnome!"),
(29070,22,0,12,0,100,"special_surprise SAY_EXEC_NOREM_5","You don't remember me, do you? Blasted Scourge...They've tried to drain of everything that made you a righteous force of reckoning. Every last ounce of good...Everything that made you a human!"),
(29070,23,0,12,0,100,"special_surprise SAY_EXEC_NOREM_6","You don't remember me? When you were a child your mother would leave you in my care while she served at the Temple of the Moon. I held you in my arms and fed you with honey and sheep's milk to calm you until she would return. You were my little angel. Blasted Scourge... What have they done to you, $N?"),
(29070,24,0,12,0,100,"special_surprise SAY_EXEC_NOREM_7","You don't recognize me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you an orc!"),
(29070,25,0,12,0,100,"special_surprise SAY_EXEC_NOREM_8","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a tauren!"),
(29070,26,0,12,0,100,"special_surprise SAY_EXEC_NOREM_9","You don't remember me, mon? Damn da Scourge! Dey gone ta drain you of everytin dat made ya a mojo masta. Every last ounce of good... Everytin' dat made ya a troll hero, mon!"),
(29070,27,0,12,0,100,"special_surprise SAY_EXEC_THINK_1","A pact was made, $Gbrother:sister;! We vowed vengeance against the Lich King! For what he had done to us! We battled the Scourge as Forsaken, pushing them back into the plaguelands and freeing Tirisfal! You and I were champions of the Forsaken!"),
(29070,28,0,12,0,100,"special_surprise SAY_EXEC_THINK_2","You must remember the splendor of life, $Gbrother:sister;. You were a champion of the Kaldorei once! This isn't you!"),
(29070,29,0,12,0,100,"special_surprise SAY_EXEC_THINK_3","Think, $N. Think back. Try and remember the majestic halls of Silvermoon City, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the sin'dorei once! This isn't you."),
(29070,30,0,12,0,100,"special_surprise SAY_EXEC_THINK_4","Think, $N. Think back. Try and remember the proud mountains of Argus, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the draenei once! This isn't you."),
(29070,31,0,12,0,100,"special_surprise SAY_EXEC_THINK_5","Think, $N. Think back. Try and remember the snow capped mountains o' Dun Morogh! Ye were born there, $Glad:lass;. Remember the splendor o' life, $N! Ye were a champion o' the dwarves once! This isn't ye!"),
(29070,32,0,12,0,100,"special_surprise SAY_EXEC_THINK_6","Think, $N. Think back. Try and remember Gnomeregan before those damned troggs! Remember the feel of an [arclight spanner] $Gbrother:sister;. You were a champion of gnome-kind once! This isn't you."),
(29070,33,0,12,0,100,"special_surprise SAY_EXEC_THINK_7","Think, $N. Think back. Try and remember the hills and valleys of Elwynn, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the Alliance once! This isn't you."),
(29070,34,0,12,0,100,"special_surprise SAY_EXEC_THINK_8","Think, $N. Think back. Try and remember Durotar, $Gbrother:sister;! Remember the sacrifices our heroes made so that we could be free of the blood curse. Harken back to the Valley of Trials, where we were reborn into a world without demonic influence. We found the splendor of life, $N. Together! This isn't you. You were a champion of the Horde once!"),
(29070,35,0,12,0,100,"special_surprise SAY_EXEC_THINK_9","Think, $N. Think back. Try and remember the rolling plains of Mulgore, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the tauren once! This isn't you."),
(29070,36,0,12,0,100,"special_surprise SAY_EXEC_THINK_10","TINK $N. Tink back, mon! We be Darkspear, mon! Bruddas and sistas! Remember when we fought the Zalazane and done took he head and freed da Echo Isles? MON! TINK! You was a champion of da Darkspear trolls!"),
(29070,37,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_1","Listen to me, $N. You must fight against the Lich King's control. He is a monster that wants to see this world - our world - in ruin. Don't let him use you to accomplish his goals. You were once a hero and you can be again. Fight, damn you! Fight his control!"),
(29070,38,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_2","Listen to me, $N Ye must fight against the Lich King's control. He's a monster that wants to see this world - our world - in ruin. Don't let him use ye to accomplish his goals. Ye were once a hero and ye can be again. Fight, damn ye! Fight his control!"),
(29070,39,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_3","Listen to me, $N. You must fight against the Lich King's control. He is a monster that wants to see this world - our world - in ruin. Don't let him use you to accomplish his goals AGAIN. You were once a hero and you can be again. Fight, damn you! Fight his control!"),
(29070,40,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_4","Listen ta me, $Gbrudda:sista;. You must fight against da Lich King's control. He be a monstar dat want ta see dis world - our world - be ruined. Don't let he use you ta accomplish he goals. You be a hero once and you be a hero again! Fight it, mon! Fight he control!"),
(29070,42,0,12,0,100,"special_surprise SAY_EXEC_TIME_1","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Silvermoon. This world is worth saving!"),
(29070,43,0,12,0,100,"special_surprise SAY_EXEC_TIME_2","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Argus. Don't let that happen to this world."),
(29070,44,0,12,0,100,"special_surprise SAY_EXEC_TIME_3","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both $N... For KHAAAAAAAAZZZ MODAAAAAANNNNNN!!!"),
(29070,45,0,12,0,100,"special_surprise SAY_EXEC_TIME_4","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Tirisfal! This world is worth saving!"),
(29070,46,0,12,0,100,"special_surprise SAY_EXEC_TIME_5","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Gnomeregan! This world is worth saving."),
(29070,47,0,12,0,100,"special_surprise SAY_EXEC_TIME_6","There... There's no more time for me. I'm done for. FInish me off, $N. Do it or they'll kill us both. $N...Remember Elwynn. This world is worth saving."),
(29070,48,0,12,0,100,"special_surprise SAY_EXEC_TIME_7","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Teldrassil, our beloved home. This world is worth saving."),
(29070,49,0,12,0,100,"special_surprise SAY_EXEC_TIME_8","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... For the Horde! This world is worth saving."),
(29070,50,0,12,0,100,"special_surprise SAY_EXEC_TIME_9","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Mulgore. This world is worth saving."),
(29070,51,0,12,0,100,"special_surprise SAY_EXEC_TIME_10","Der... Der's no more time for me. I be done for. Finish me off $N. Do it or they'll kill us both. $N... Remember Sen'jin Village, mon! Dis world be worth saving!"),
(29070,52,0,12,0,100,"special_surprise SAY_EXEC_WAITING","Do it, $N! Put me out of my misery!"),
(29070,53,0,16,0,100,"special_surprise EMOTE_DIES","%s dies from his wounds."),
-- Lady Eonys
(29074,0,0,12,0,100,"special_surprise SAY_EXEC_START_1","Come to finish the job, have you?"),
(29074,1,0,12,0,100,"special_surprise SAY_EXEC_START_2","Come to finish the job, have ye?"),
(29074,2,0,12,0,100,"special_surprise SAY_EXEC_START_3","Come ta finish da job, mon?"),
(29074,3,0,12,0,100,"special_surprise SAY_EXEC_PROG_1","You'll look me in the eyes when..."),
(29074,4,0,12,0,100,"special_surprise SAY_EXEC_PROG_2","Well this son o' Ironforge would like..."),
(29074,5,0,12,0,100,"special_surprise SAY_EXEC_PROG_3","Ironic, isn't it? To be killed..."),
(29074,6,0,12,0,100,"special_surprise SAY_EXEC_PROG_4","If you'd allow me just one..."),
(29074,7,0,12,0,100,"special_surprise SAY_EXEC_PROG_5","I'd like to stand for..."),
(29074,8,0,12,0,100,"special_surprise SAY_EXEC_PROG_6","I want to die like an orc..."),
(29074,9,0,12,0,100,"special_surprise SAY_EXEC_PROG_7","Dis troll gonna stand for da..."),
(29074,10,0,12,0,100,"special_surprise SAY_EXEC_NAME_1","$N?"),
(29074,11,0,12,0,100,"special_surprise SAY_EXEC_NAME_2","$N? Mon?"),
(29074,12,0,12,0,100,"special_surprise SAY_EXEC_RECOG_1","$N, I'd recognize that face anywhere... What... What have they done to you, $N?"),
(29074,13,0,12,0,100,"special_surprise SAY_EXEC_RECOG_2","$N, I'd recognize those face tentacles anywhere... What... What have they done to you, $N?"),
(29074,14,0,12,0,100,"special_surprise SAY_EXEC_RECOG_3","$N, I'd recognize that face anywhere... What... What have they done to ye, $Glad:lass;?"),
(29074,15,0,12,0,100,"special_surprise SAY_EXEC_RECOG_4","$N, I'd recognize that decay anywhere... What... What have they done to you, $N?"),
(29074,16,0,12,0,100,"special_surprise SAY_EXEC_RECOG_5","$N, I'd recognize those horns anywhere... What have they done to you, $N?"),
(29074,17,0,12,0,100,"special_surprise SAY_EXEC_RECOG_6","$N, I'd recognize dem tusks anywhere... What... What have dey done ta you, mon?"),
(29074,18,0,12,0,100,"special_surprise SAY_EXEC_NOREM_1","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a draenei!"),
(29074,19,0,12,0,100,"special_surprise SAY_EXEC_NOREM_2","Ye don't remember me, do ye? Blasted Scourge... They've tried to drain ye o' everything that made ye a righteous force o' reckoning. Every last ounce o' good... Everything that made you a $Gson:daughter; of Ironforge!"),
(29074,20,0,12,0,100,"special_surprise SAY_EXEC_NOREM_3","You don't remember me, do you? We were humans once - long, long ago - until Lordaeron fell to the Scourge. Your transformation to a Scourge zombie came shortly after my own. Not long after that, our minds were freed by the Dark Lady."),
(29074,21,0,12,0,100,"special_surprise SAY_EXEC_NOREM_4","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a pint-sized force of reckoning. Every last ounce of good... Everything that made you a gnome!"),
(29074,22,0,12,0,100,"special_surprise SAY_EXEC_NOREM_5","You don't remember me, do you? Blasted Scourge...They've tried to drain of everything that made you a righteous force of reckoning. Every last ounce of good...Everything that made you a human!"),
(29074,23,0,12,0,100,"special_surprise SAY_EXEC_NOREM_6","You don't remember me? When you were a child your mother would leave you in my care while she served at the Temple of the Moon. I held you in my arms and fed you with honey and sheep's milk to calm you until she would return. You were my little angel. Blasted Scourge... What have they done to you, $N?"),
(29074,24,0,12,0,100,"special_surprise SAY_EXEC_NOREM_7","You don't recognize me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you an orc!"),
(29074,25,0,12,0,100,"special_surprise SAY_EXEC_NOREM_8","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a tauren!"),
(29074,26,0,12,0,100,"special_surprise SAY_EXEC_NOREM_9","You don't remember me, mon? Damn da Scourge! Dey gone ta drain you of everytin dat made ya a mojo masta. Every last ounce of good... Everytin' dat made ya a troll hero, mon!"),
(29074,27,0,12,0,100,"special_surprise SAY_EXEC_THINK_1","A pact was made, $Gbrother:sister;! We vowed vengeance against the Lich King! For what he had done to us! We battled the Scourge as Forsaken, pushing them back into the plaguelands and freeing Tirisfal! You and I were champions of the Forsaken!"),
(29074,28,0,12,0,100,"special_surprise SAY_EXEC_THINK_2","You must remember the splendor of life, $Gbrother:sister;. You were a champion of the Kaldorei once! This isn't you!"),
(29074,29,0,12,0,100,"special_surprise SAY_EXEC_THINK_3","Think, $N. Think back. Try and remember the majestic halls of Silvermoon City, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the sin'dorei once! This isn't you."),
(29074,30,0,12,0,100,"special_surprise SAY_EXEC_THINK_4","Think, $N. Think back. Try and remember the proud mountains of Argus, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the draenei once! This isn't you."),
(29074,31,0,12,0,100,"special_surprise SAY_EXEC_THINK_5","Think, $N. Think back. Try and remember the snow capped mountains o' Dun Morogh! Ye were born there, $Glad:lass;. Remember the splendor o' life, $N! Ye were a champion o' the dwarves once! This isn't ye!"),
(29074,32,0,12,0,100,"special_surprise SAY_EXEC_THINK_6","Think, $N. Think back. Try and remember Gnomeregan before those damned troggs! Remember the feel of an [arclight spanner] $Gbrother:sister;. You were a champion of gnome-kind once! This isn't you."),
(29074,33,0,12,0,100,"special_surprise SAY_EXEC_THINK_7","Think, $N. Think back. Try and remember the hills and valleys of Elwynn, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the Alliance once! This isn't you."),
(29074,34,0,12,0,100,"special_surprise SAY_EXEC_THINK_8","Think, $N. Think back. Try and remember Durotar, $Gbrother:sister;! Remember the sacrifices our heroes made so that we could be free of the blood curse. Harken back to the Valley of Trials, where we were reborn into a world without demonic influence. We found the splendor of life, $N. Together! This isn't you. You were a champion of the Horde once!"),
(29074,35,0,12,0,100,"special_surprise SAY_EXEC_THINK_9","Think, $N. Think back. Try and remember the rolling plains of Mulgore, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the tauren once! This isn't you."),
(29074,36,0,12,0,100,"special_surprise SAY_EXEC_THINK_10","TINK $N. Tink back, mon! We be Darkspear, mon! Bruddas and sistas! Remember when we fought the Zalazane and done took he head and freed da Echo Isles? MON! TINK! You was a champion of da Darkspear trolls!"),
(29074,37,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_1","Listen to me, $N. You must fight against the Lich King's control. He is a monster that wants to see this world - our world - in ruin. Don't let him use you to accomplish his goals. You were once a hero and you can be again. Fight, damn you! Fight his control!"),
(29074,38,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_2","Listen to me, $N Ye must fight against the Lich King's control. He's a monster that wants to see this world - our world - in ruin. Don't let him use ye to accomplish his goals. Ye were once a hero and ye can be again. Fight, damn ye! Fight his control!"),
(29074,39,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_3","Listen to me, $N. You must fight against the Lich King's control. He is a monster that wants to see this world - our world - in ruin. Don't let him use you to accomplish his goals AGAIN. You were once a hero and you can be again. Fight, damn you! Fight his control!"),
(29074,40,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_4","Listen ta me, $Gbrudda:sista;. You must fight against da Lich King's control. He be a monstar dat want ta see dis world - our world - be ruined. Don't let he use you ta accomplish he goals. You be a hero once and you be a hero again! Fight it, mon! Fight he control!"),
(29074,42,0,12,0,100,"special_surprise SAY_EXEC_TIME_1","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Silvermoon. This world is worth saving!"),
(29074,43,0,12,0,100,"special_surprise SAY_EXEC_TIME_2","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Argus. Don't let that happen to this world."),
(29074,44,0,12,0,100,"special_surprise SAY_EXEC_TIME_3","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both $N... For KHAAAAAAAAZZZ MODAAAAAANNNNNN!!!"),
(29074,45,0,12,0,100,"special_surprise SAY_EXEC_TIME_4","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Tirisfal! This world is worth saving!"),
(29074,46,0,12,0,100,"special_surprise SAY_EXEC_TIME_5","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Gnomeregan! This world is worth saving."),
(29074,47,0,12,0,100,"special_surprise SAY_EXEC_TIME_6","There... There's no more time for me. I'm done for. FInish me off, $N. Do it or they'll kill us both. $N...Remember Elwynn. This world is worth saving."),
(29074,48,0,12,0,100,"special_surprise SAY_EXEC_TIME_7","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Teldrassil, our beloved home. This world is worth saving."),
(29074,49,0,12,0,100,"special_surprise SAY_EXEC_TIME_8","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... For the Horde! This world is worth saving."),
(29074,50,0,12,0,100,"special_surprise SAY_EXEC_TIME_9","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Mulgore. This world is worth saving."),
(29074,51,0,12,0,100,"special_surprise SAY_EXEC_TIME_10","Der... Der's no more time for me. I be done for. Finish me off $N. Do it or they'll kill us both. $N... Remember Sen'jin Village, mon! Dis world be worth saving!"),
(29074,52,0,12,0,100,"special_surprise SAY_EXEC_WAITING","Do it, $N! Put me out of my misery!"),
(29074,53,0,16,0,100,"special_surprise EMOTE_DIES","%s dies from his wounds."),
-- Kug Ironjaw
(29072,0,0,12,0,100,"special_surprise SAY_EXEC_START_1","Come to finish the job, have you?"),
(29072,1,0,12,0,100,"special_surprise SAY_EXEC_START_2","Come to finish the job, have ye?"),
(29072,2,0,12,0,100,"special_surprise SAY_EXEC_START_3","Come ta finish da job, mon?"),
(29072,3,0,12,0,100,"special_surprise SAY_EXEC_PROG_1","You'll look me in the eyes when..."),
(29072,4,0,12,0,100,"special_surprise SAY_EXEC_PROG_2","Well this son o' Ironforge would like..."),
(29072,5,0,12,0,100,"special_surprise SAY_EXEC_PROG_3","Ironic, isn't it? To be killed..."),
(29072,6,0,12,0,100,"special_surprise SAY_EXEC_PROG_4","If you'd allow me just one..."),
(29072,7,0,12,0,100,"special_surprise SAY_EXEC_PROG_5","I'd like to stand for..."),
(29072,8,0,12,0,100,"special_surprise SAY_EXEC_PROG_6","I want to die like an orc..."),
(29072,9,0,12,0,100,"special_surprise SAY_EXEC_PROG_7","Dis troll gonna stand for da..."),
(29072,10,0,12,0,100,"special_surprise SAY_EXEC_NAME_1","$N?"),
(29072,11,0,12,0,100,"special_surprise SAY_EXEC_NAME_2","$N? Mon?"),
(29072,12,0,12,0,100,"special_surprise SAY_EXEC_RECOG_1","$N, I'd recognize that face anywhere... What... What have they done to you, $N?"),
(29072,13,0,12,0,100,"special_surprise SAY_EXEC_RECOG_2","$N, I'd recognize those face tentacles anywhere... What... What have they done to you, $N?"),
(29072,14,0,12,0,100,"special_surprise SAY_EXEC_RECOG_3","$N, I'd recognize that face anywhere... What... What have they done to ye, $Glad:lass;?"),
(29072,15,0,12,0,100,"special_surprise SAY_EXEC_RECOG_4","$N, I'd recognize that decay anywhere... What... What have they done to you, $N?"),
(29072,16,0,12,0,100,"special_surprise SAY_EXEC_RECOG_5","$N, I'd recognize those horns anywhere... What have they done to you, $N?"),
(29072,17,0,12,0,100,"special_surprise SAY_EXEC_RECOG_6","$N, I'd recognize dem tusks anywhere... What... What have dey done ta you, mon?"),
(29072,18,0,12,0,100,"special_surprise SAY_EXEC_NOREM_1","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a draenei!"),
(29072,19,0,12,0,100,"special_surprise SAY_EXEC_NOREM_2","Ye don't remember me, do ye? Blasted Scourge... They've tried to drain ye o' everything that made ye a righteous force o' reckoning. Every last ounce o' good... Everything that made you a $Gson:daughter; of Ironforge!"),
(29072,20,0,12,0,100,"special_surprise SAY_EXEC_NOREM_3","You don't remember me, do you? We were humans once - long, long ago - until Lordaeron fell to the Scourge. Your transformation to a Scourge zombie came shortly after my own. Not long after that, our minds were freed by the Dark Lady."),
(29072,21,0,12,0,100,"special_surprise SAY_EXEC_NOREM_4","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a pint-sized force of reckoning. Every last ounce of good... Everything that made you a gnome!"),
(29072,22,0,12,0,100,"special_surprise SAY_EXEC_NOREM_5","You don't remember me, do you? Blasted Scourge...They've tried to drain of everything that made you a righteous force of reckoning. Every last ounce of good...Everything that made you a human!"),
(29072,23,0,12,0,100,"special_surprise SAY_EXEC_NOREM_6","You don't remember me? When you were a child your mother would leave you in my care while she served at the Temple of the Moon. I held you in my arms and fed you with honey and sheep's milk to calm you until she would return. You were my little angel. Blasted Scourge... What have they done to you, $N?"),
(29072,24,0,12,0,100,"special_surprise SAY_EXEC_NOREM_7","You don't recognize me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you an orc!"),
(29072,25,0,12,0,100,"special_surprise SAY_EXEC_NOREM_8","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a tauren!"),
(29072,26,0,12,0,100,"special_surprise SAY_EXEC_NOREM_9","You don't remember me, mon? Damn da Scourge! Dey gone ta drain you of everytin dat made ya a mojo masta. Every last ounce of good... Everytin' dat made ya a troll hero, mon!"),
(29072,27,0,12,0,100,"special_surprise SAY_EXEC_THINK_1","A pact was made, $Gbrother:sister;! We vowed vengeance against the Lich King! For what he had done to us! We battled the Scourge as Forsaken, pushing them back into the plaguelands and freeing Tirisfal! You and I were champions of the Forsaken!"),
(29072,28,0,12,0,100,"special_surprise SAY_EXEC_THINK_2","You must remember the splendor of life, $Gbrother:sister;. You were a champion of the Kaldorei once! This isn't you!"),
(29072,29,0,12,0,100,"special_surprise SAY_EXEC_THINK_3","Think, $N. Think back. Try and remember the majestic halls of Silvermoon City, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the sin'dorei once! This isn't you."),
(29072,30,0,12,0,100,"special_surprise SAY_EXEC_THINK_4","Think, $N. Think back. Try and remember the proud mountains of Argus, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the draenei once! This isn't you."),
(29072,31,0,12,0,100,"special_surprise SAY_EXEC_THINK_5","Think, $N. Think back. Try and remember the snow capped mountains o' Dun Morogh! Ye were born there, $Glad:lass;. Remember the splendor o' life, $N! Ye were a champion o' the dwarves once! This isn't ye!"),
(29072,32,0,12,0,100,"special_surprise SAY_EXEC_THINK_6","Think, $N. Think back. Try and remember Gnomeregan before those damned troggs! Remember the feel of an [arclight spanner] $Gbrother:sister;. You were a champion of gnome-kind once! This isn't you."),
(29072,33,0,12,0,100,"special_surprise SAY_EXEC_THINK_7","Think, $N. Think back. Try and remember the hills and valleys of Elwynn, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the Alliance once! This isn't you."),
(29072,34,0,12,0,100,"special_surprise SAY_EXEC_THINK_8","Think, $N. Think back. Try and remember Durotar, $Gbrother:sister;! Remember the sacrifices our heroes made so that we could be free of the blood curse. Harken back to the Valley of Trials, where we were reborn into a world without demonic influence. We found the splendor of life, $N. Together! This isn't you. You were a champion of the Horde once!"),
(29072,35,0,12,0,100,"special_surprise SAY_EXEC_THINK_9","Think, $N. Think back. Try and remember the rolling plains of Mulgore, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the tauren once! This isn't you."),
(29072,36,0,12,0,100,"special_surprise SAY_EXEC_THINK_10","TINK $N. Tink back, mon! We be Darkspear, mon! Bruddas and sistas! Remember when we fought the Zalazane and done took he head and freed da Echo Isles? MON! TINK! You was a champion of da Darkspear trolls!"),
(29072,37,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_1","Listen to me, $N. You must fight against the Lich King's control. He is a monster that wants to see this world - our world - in ruin. Don't let him use you to accomplish his goals. You were once a hero and you can be again. Fight, damn you! Fight his control!"),
(29072,38,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_2","Listen to me, $N Ye must fight against the Lich King's control. He's a monster that wants to see this world - our world - in ruin. Don't let him use ye to accomplish his goals. Ye were once a hero and ye can be again. Fight, damn ye! Fight his control!"),
(29072,39,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_3","Listen to me, $N. You must fight against the Lich King's control. He is a monster that wants to see this world - our world - in ruin. Don't let him use you to accomplish his goals AGAIN. You were once a hero and you can be again. Fight, damn you! Fight his control!"),
(29072,40,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_4","Listen ta me, $Gbrudda:sista;. You must fight against da Lich King's control. He be a monstar dat want ta see dis world - our world - be ruined. Don't let he use you ta accomplish he goals. You be a hero once and you be a hero again! Fight it, mon! Fight he control!"),
(29072,42,0,12,0,100,"special_surprise SAY_EXEC_TIME_1","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Silvermoon. This world is worth saving!"),
(29072,43,0,12,0,100,"special_surprise SAY_EXEC_TIME_2","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Argus. Don't let that happen to this world."),
(29072,44,0,12,0,100,"special_surprise SAY_EXEC_TIME_3","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both $N... For KHAAAAAAAAZZZ MODAAAAAANNNNNN!!!"),
(29072,45,0,12,0,100,"special_surprise SAY_EXEC_TIME_4","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Tirisfal! This world is worth saving!"),
(29072,46,0,12,0,100,"special_surprise SAY_EXEC_TIME_5","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Gnomeregan! This world is worth saving."),
(29072,47,0,12,0,100,"special_surprise SAY_EXEC_TIME_6","There... There's no more time for me. I'm done for. FInish me off, $N. Do it or they'll kill us both. $N...Remember Elwynn. This world is worth saving."),
(29072,48,0,12,0,100,"special_surprise SAY_EXEC_TIME_7","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Teldrassil, our beloved home. This world is worth saving."),
(29072,49,0,12,0,100,"special_surprise SAY_EXEC_TIME_8","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... For the Horde! This world is worth saving."),
(29072,50,0,12,0,100,"special_surprise SAY_EXEC_TIME_9","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Mulgore. This world is worth saving."),
(29072,51,0,12,0,100,"special_surprise SAY_EXEC_TIME_10","Der... Der's no more time for me. I be done for. Finish me off $N. Do it or they'll kill us both. $N... Remember Sen'jin Village, mon! Dis world be worth saving!"),
(29072,52,0,12,0,100,"special_surprise SAY_EXEC_WAITING","Do it, $N! Put me out of my misery!"),
(29072,53,0,16,0,100,"special_surprise EMOTE_DIES","%s dies from his wounds."),
-- Iggy Darktusk
(29073,0,0,12,0,100,"special_surprise SAY_EXEC_START_1","Come to finish the job, have you?"),
(29073,1,0,12,0,100,"special_surprise SAY_EXEC_START_2","Come to finish the job, have ye?"),
(29073,2,0,12,0,100,"special_surprise SAY_EXEC_START_3","Come ta finish da job, mon?"),
(29073,3,0,12,0,100,"special_surprise SAY_EXEC_PROG_1","You'll look me in the eyes when..."),
(29073,4,0,12,0,100,"special_surprise SAY_EXEC_PROG_2","Well this son o' Ironforge would like..."),
(29073,5,0,12,0,100,"special_surprise SAY_EXEC_PROG_3","Ironic, isn't it? To be killed..."),
(29073,6,0,12,0,100,"special_surprise SAY_EXEC_PROG_4","If you'd allow me just one..."),
(29073,7,0,12,0,100,"special_surprise SAY_EXEC_PROG_5","I'd like to stand for..."),
(29073,8,0,12,0,100,"special_surprise SAY_EXEC_PROG_6","I want to die like an orc..."),
(29073,9,0,12,0,100,"special_surprise SAY_EXEC_PROG_7","Dis troll gonna stand for da..."),
(29073,10,0,12,0,100,"special_surprise SAY_EXEC_NAME_1","$N?"),
(29073,11,0,12,0,100,"special_surprise SAY_EXEC_NAME_2","$N? Mon?"),
(29073,12,0,12,0,100,"special_surprise SAY_EXEC_RECOG_1","$N, I'd recognize that face anywhere... What... What have they done to you, $N?"),
(29073,13,0,12,0,100,"special_surprise SAY_EXEC_RECOG_2","$N, I'd recognize those face tentacles anywhere... What... What have they done to you, $N?"),
(29073,14,0,12,0,100,"special_surprise SAY_EXEC_RECOG_3","$N, I'd recognize that face anywhere... What... What have they done to ye, $Glad:lass;?"),
(29073,15,0,12,0,100,"special_surprise SAY_EXEC_RECOG_4","$N, I'd recognize that decay anywhere... What... What have they done to you, $N?"),
(29073,16,0,12,0,100,"special_surprise SAY_EXEC_RECOG_5","$N, I'd recognize those horns anywhere... What have they done to you, $N?"),
(29073,17,0,12,0,100,"special_surprise SAY_EXEC_RECOG_6","$N, I'd recognize dem tusks anywhere... What... What have dey done ta you, mon?"),
(29073,18,0,12,0,100,"special_surprise SAY_EXEC_NOREM_1","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a draenei!"),
(29073,19,0,12,0,100,"special_surprise SAY_EXEC_NOREM_2","Ye don't remember me, do ye? Blasted Scourge... They've tried to drain ye o' everything that made ye a righteous force o' reckoning. Every last ounce o' good... Everything that made you a $Gson:daughter; of Ironforge!"),
(29073,20,0,12,0,100,"special_surprise SAY_EXEC_NOREM_3","You don't remember me, do you? We were humans once - long, long ago - until Lordaeron fell to the Scourge. Your transformation to a Scourge zombie came shortly after my own. Not long after that, our minds were freed by the Dark Lady."),
(29073,21,0,12,0,100,"special_surprise SAY_EXEC_NOREM_4","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a pint-sized force of reckoning. Every last ounce of good... Everything that made you a gnome!"),
(29073,22,0,12,0,100,"special_surprise SAY_EXEC_NOREM_5","You don't remember me, do you? Blasted Scourge...They've tried to drain of everything that made you a righteous force of reckoning. Every last ounce of good...Everything that made you a human!"),
(29073,23,0,12,0,100,"special_surprise SAY_EXEC_NOREM_6","You don't remember me? When you were a child your mother would leave you in my care while she served at the Temple of the Moon. I held you in my arms and fed you with honey and sheep's milk to calm you until she would return. You were my little angel. Blasted Scourge... What have they done to you, $N?"),
(29073,24,0,12,0,100,"special_surprise SAY_EXEC_NOREM_7","You don't recognize me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you an orc!"),
(29073,25,0,12,0,100,"special_surprise SAY_EXEC_NOREM_8","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a tauren!"),
(29073,26,0,12,0,100,"special_surprise SAY_EXEC_NOREM_9","You don't remember me, mon? Damn da Scourge! Dey gone ta drain you of everytin dat made ya a mojo masta. Every last ounce of good... Everytin' dat made ya a troll hero, mon!"),
(29073,27,0,12,0,100,"special_surprise SAY_EXEC_THINK_1","A pact was made, $Gbrother:sister;! We vowed vengeance against the Lich King! For what he had done to us! We battled the Scourge as Forsaken, pushing them back into the plaguelands and freeing Tirisfal! You and I were champions of the Forsaken!"),
(29073,28,0,12,0,100,"special_surprise SAY_EXEC_THINK_2","You must remember the splendor of life, $Gbrother:sister;. You were a champion of the Kaldorei once! This isn't you!"),
(29073,29,0,12,0,100,"special_surprise SAY_EXEC_THINK_3","Think, $N. Think back. Try and remember the majestic halls of Silvermoon City, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the sin'dorei once! This isn't you."),
(29073,30,0,12,0,100,"special_surprise SAY_EXEC_THINK_4","Think, $N. Think back. Try and remember the proud mountains of Argus, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the draenei once! This isn't you."),
(29073,31,0,12,0,100,"special_surprise SAY_EXEC_THINK_5","Think, $N. Think back. Try and remember the snow capped mountains o' Dun Morogh! Ye were born there, $Glad:lass;. Remember the splendor o' life, $N! Ye were a champion o' the dwarves once! This isn't ye!"),
(29073,32,0,12,0,100,"special_surprise SAY_EXEC_THINK_6","Think, $N. Think back. Try and remember Gnomeregan before those damned troggs! Remember the feel of an [arclight spanner] $Gbrother:sister;. You were a champion of gnome-kind once! This isn't you."),
(29073,33,0,12,0,100,"special_surprise SAY_EXEC_THINK_7","Think, $N. Think back. Try and remember the hills and valleys of Elwynn, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the Alliance once! This isn't you."),
(29073,34,0,12,0,100,"special_surprise SAY_EXEC_THINK_8","Think, $N. Think back. Try and remember Durotar, $Gbrother:sister;! Remember the sacrifices our heroes made so that we could be free of the blood curse. Harken back to the Valley of Trials, where we were reborn into a world without demonic influence. We found the splendor of life, $N. Together! This isn't you. You were a champion of the Horde once!"),
(29073,35,0,12,0,100,"special_surprise SAY_EXEC_THINK_9","Think, $N. Think back. Try and remember the rolling plains of Mulgore, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the tauren once! This isn't you."),
(29073,36,0,12,0,100,"special_surprise SAY_EXEC_THINK_10","TINK $N. Tink back, mon! We be Darkspear, mon! Bruddas and sistas! Remember when we fought the Zalazane and done took he head and freed da Echo Isles? MON! TINK! You was a champion of da Darkspear trolls!"),
(29073,37,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_1","Listen to me, $N. You must fight against the Lich King's control. He is a monster that wants to see this world - our world - in ruin. Don't let him use you to accomplish his goals. You were once a hero and you can be again. Fight, damn you! Fight his control!"),
(29073,38,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_2","Listen to me, $N Ye must fight against the Lich King's control. He's a monster that wants to see this world - our world - in ruin. Don't let him use ye to accomplish his goals. Ye were once a hero and ye can be again. Fight, damn ye! Fight his control!"),
(29073,39,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_3","Listen to me, $N. You must fight against the Lich King's control. He is a monster that wants to see this world - our world - in ruin. Don't let him use you to accomplish his goals AGAIN. You were once a hero and you can be again. Fight, damn you! Fight his control!"),
(29073,40,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_4","Listen ta me, $Gbrudda:sista;. You must fight against da Lich King's control. He be a monstar dat want ta see dis world - our world - be ruined. Don't let he use you ta accomplish he goals. You be a hero once and you be a hero again! Fight it, mon! Fight he control!"),
(29073,42,0,12,0,100,"special_surprise SAY_EXEC_TIME_1","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Silvermoon. This world is worth saving!"),
(29073,43,0,12,0,100,"special_surprise SAY_EXEC_TIME_2","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Argus. Don't let that happen to this world."),
(29073,44,0,12,0,100,"special_surprise SAY_EXEC_TIME_3","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both $N... For KHAAAAAAAAZZZ MODAAAAAANNNNNN!!!"),
(29073,45,0,12,0,100,"special_surprise SAY_EXEC_TIME_4","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Tirisfal! This world is worth saving!"),
(29073,46,0,12,0,100,"special_surprise SAY_EXEC_TIME_5","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Gnomeregan! This world is worth saving."),
(29073,47,0,12,0,100,"special_surprise SAY_EXEC_TIME_6","There... There's no more time for me. I'm done for. FInish me off, $N. Do it or they'll kill us both. $N...Remember Elwynn. This world is worth saving."),
(29073,48,0,12,0,100,"special_surprise SAY_EXEC_TIME_7","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Teldrassil, our beloved home. This world is worth saving."),
(29073,49,0,12,0,100,"special_surprise SAY_EXEC_TIME_8","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... For the Horde! This world is worth saving."),
(29073,50,0,12,0,100,"special_surprise SAY_EXEC_TIME_9","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Mulgore. This world is worth saving."),
(29073,51,0,12,0,100,"special_surprise SAY_EXEC_TIME_10","Der... Der's no more time for me. I be done for. Finish me off $N. Do it or they'll kill us both. $N... Remember Sen'jin Village, mon! Dis world be worth saving!"),
(29073,52,0,12,0,100,"special_surprise SAY_EXEC_WAITING","Do it, $N! Put me out of my misery!"),
(29073,53,0,16,0,100,"special_surprise EMOTE_DIES","%s dies from his wounds."),
-- Antoine Brack
(29071,0,0,12,0,100,"special_surprise SAY_EXEC_START_1","Come to finish the job, have you?"),
(29071,1,0,12,0,100,"special_surprise SAY_EXEC_START_2","Come to finish the job, have ye?"),
(29071,2,0,12,0,100,"special_surprise SAY_EXEC_START_3","Come ta finish da job, mon?"),
(29071,3,0,12,0,100,"special_surprise SAY_EXEC_PROG_1","You'll look me in the eyes when..."),
(29071,4,0,12,0,100,"special_surprise SAY_EXEC_PROG_2","Well this son o' Ironforge would like..."),
(29071,5,0,12,0,100,"special_surprise SAY_EXEC_PROG_3","Ironic, isn't it? To be killed..."),
(29071,6,0,12,0,100,"special_surprise SAY_EXEC_PROG_4","If you'd allow me just one..."),
(29071,7,0,12,0,100,"special_surprise SAY_EXEC_PROG_5","I'd like to stand for..."),
(29071,8,0,12,0,100,"special_surprise SAY_EXEC_PROG_6","I want to die like an orc..."),
(29071,9,0,12,0,100,"special_surprise SAY_EXEC_PROG_7","Dis troll gonna stand for da..."),
(29071,10,0,12,0,100,"special_surprise SAY_EXEC_NAME_1","$N?"),
(29071,11,0,12,0,100,"special_surprise SAY_EXEC_NAME_2","$N? Mon?"),
(29071,12,0,12,0,100,"special_surprise SAY_EXEC_RECOG_1","$N, I'd recognize that face anywhere... What... What have they done to you, $N?"),
(29071,13,0,12,0,100,"special_surprise SAY_EXEC_RECOG_2","$N, I'd recognize those face tentacles anywhere... What... What have they done to you, $N?"),
(29071,14,0,12,0,100,"special_surprise SAY_EXEC_RECOG_3","$N, I'd recognize that face anywhere... What... What have they done to ye, $Glad:lass;?"),
(29071,15,0,12,0,100,"special_surprise SAY_EXEC_RECOG_4","$N, I'd recognize that decay anywhere... What... What have they done to you, $N?"),
(29071,16,0,12,0,100,"special_surprise SAY_EXEC_RECOG_5","$N, I'd recognize those horns anywhere... What have they done to you, $N?"),
(29071,17,0,12,0,100,"special_surprise SAY_EXEC_RECOG_6","$N, I'd recognize dem tusks anywhere... What... What have dey done ta you, mon?"),
(29071,18,0,12,0,100,"special_surprise SAY_EXEC_NOREM_1","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a draenei!"),
(29071,19,0,12,0,100,"special_surprise SAY_EXEC_NOREM_2","Ye don't remember me, do ye? Blasted Scourge... They've tried to drain ye o' everything that made ye a righteous force o' reckoning. Every last ounce o' good... Everything that made you a $Gson:daughter; of Ironforge!"),
(29071,20,0,12,0,100,"special_surprise SAY_EXEC_NOREM_3","You don't remember me, do you? We were humans once - long, long ago - until Lordaeron fell to the Scourge. Your transformation to a Scourge zombie came shortly after my own. Not long after that, our minds were freed by the Dark Lady."),
(29071,21,0,12,0,100,"special_surprise SAY_EXEC_NOREM_4","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a pint-sized force of reckoning. Every last ounce of good... Everything that made you a gnome!"),
(29071,22,0,12,0,100,"special_surprise SAY_EXEC_NOREM_5","You don't remember me, do you? Blasted Scourge...They've tried to drain of everything that made you a righteous force of reckoning. Every last ounce of good...Everything that made you a human!"),
(29071,23,0,12,0,100,"special_surprise SAY_EXEC_NOREM_6","You don't remember me? When you were a child your mother would leave you in my care while she served at the Temple of the Moon. I held you in my arms and fed you with honey and sheep's milk to calm you until she would return. You were my little angel. Blasted Scourge... What have they done to you, $N?"),
(29071,24,0,12,0,100,"special_surprise SAY_EXEC_NOREM_7","You don't recognize me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you an orc!"),
(29071,25,0,12,0,100,"special_surprise SAY_EXEC_NOREM_8","You don't remember me, do you? Blasted Scourge... They've tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a tauren!"),
(29071,26,0,12,0,100,"special_surprise SAY_EXEC_NOREM_9","You don't remember me, mon? Damn da Scourge! Dey gone ta drain you of everytin dat made ya a mojo masta. Every last ounce of good... Everytin' dat made ya a troll hero, mon!"),
(29071,27,0,12,0,100,"special_surprise SAY_EXEC_THINK_1","A pact was made, $Gbrother:sister;! We vowed vengeance against the Lich King! For what he had done to us! We battled the Scourge as Forsaken, pushing them back into the plaguelands and freeing Tirisfal! You and I were champions of the Forsaken!"),
(29071,28,0,12,0,100,"special_surprise SAY_EXEC_THINK_2","You must remember the splendor of life, $Gbrother:sister;. You were a champion of the Kaldorei once! This isn't you!"),
(29071,29,0,12,0,100,"special_surprise SAY_EXEC_THINK_3","Think, $N. Think back. Try and remember the majestic halls of Silvermoon City, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the sin'dorei once! This isn't you."),
(29071,30,0,12,0,100,"special_surprise SAY_EXEC_THINK_4","Think, $N. Think back. Try and remember the proud mountains of Argus, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the draenei once! This isn't you."),
(29071,31,0,12,0,100,"special_surprise SAY_EXEC_THINK_5","Think, $N. Think back. Try and remember the snow capped mountains o' Dun Morogh! Ye were born there, $Glad:lass;. Remember the splendor o' life, $N! Ye were a champion o' the dwarves once! This isn't ye!"),
(29071,32,0,12,0,100,"special_surprise SAY_EXEC_THINK_6","Think, $N. Think back. Try and remember Gnomeregan before those damned troggs! Remember the feel of an [arclight spanner] $Gbrother:sister;. You were a champion of gnome-kind once! This isn't you."),
(29071,33,0,12,0,100,"special_surprise SAY_EXEC_THINK_7","Think, $N. Think back. Try and remember the hills and valleys of Elwynn, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the Alliance once! This isn't you."),
(29071,34,0,12,0,100,"special_surprise SAY_EXEC_THINK_8","Think, $N. Think back. Try and remember Durotar, $Gbrother:sister;! Remember the sacrifices our heroes made so that we could be free of the blood curse. Harken back to the Valley of Trials, where we were reborn into a world without demonic influence. We found the splendor of life, $N. Together! This isn't you. You were a champion of the Horde once!"),
(29071,35,0,12,0,100,"special_surprise SAY_EXEC_THINK_9","Think, $N. Think back. Try and remember the rolling plains of Mulgore, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the tauren once! This isn't you."),
(29071,36,0,12,0,100,"special_surprise SAY_EXEC_THINK_10","TINK $N. Tink back, mon! We be Darkspear, mon! Bruddas and sistas! Remember when we fought the Zalazane and done took he head and freed da Echo Isles? MON! TINK! You was a champion of da Darkspear trolls!"),
(29071,37,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_1","Listen to me, $N. You must fight against the Lich King's control. He is a monster that wants to see this world - our world - in ruin. Don't let him use you to accomplish his goals. You were once a hero and you can be again. Fight, damn you! Fight his control!"),
(29071,38,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_2","Listen to me, $N Ye must fight against the Lich King's control. He's a monster that wants to see this world - our world - in ruin. Don't let him use ye to accomplish his goals. Ye were once a hero and ye can be again. Fight, damn ye! Fight his control!"),
(29071,39,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_3","Listen to me, $N. You must fight against the Lich King's control. He is a monster that wants to see this world - our world - in ruin. Don't let him use you to accomplish his goals AGAIN. You were once a hero and you can be again. Fight, damn you! Fight his control!"),
(29071,40,0,12,0,100,"special_surprise SAY_EXEC_LISTEN_4","Listen ta me, $Gbrudda:sista;. You must fight against da Lich King's control. He be a monstar dat want ta see dis world - our world - be ruined. Don't let he use you ta accomplish he goals. You be a hero once and you be a hero again! Fight it, mon! Fight he control!"),
(29071,42,0,12,0,100,"special_surprise SAY_EXEC_TIME_1","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Silvermoon. This world is worth saving!"),
(29071,43,0,12,0,100,"special_surprise SAY_EXEC_TIME_2","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Argus. Don't let that happen to this world."),
(29071,44,0,12,0,100,"special_surprise SAY_EXEC_TIME_3","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both $N... For KHAAAAAAAAZZZ MODAAAAAANNNNNN!!!"),
(29071,45,0,12,0,100,"special_surprise SAY_EXEC_TIME_4","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Tirisfal! This world is worth saving!"),
(29071,46,0,12,0,100,"special_surprise SAY_EXEC_TIME_5","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Gnomeregan! This world is worth saving."),
(29071,47,0,12,0,100,"special_surprise SAY_EXEC_TIME_6","There... There's no more time for me. I'm done for. FInish me off, $N. Do it or they'll kill us both. $N...Remember Elwynn. This world is worth saving."),
(29071,48,0,12,0,100,"special_surprise SAY_EXEC_TIME_7","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Teldrassil, our beloved home. This world is worth saving."),
(29071,49,0,12,0,100,"special_surprise SAY_EXEC_TIME_8","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... For the Horde! This world is worth saving."),
(29071,50,0,12,0,100,"special_surprise SAY_EXEC_TIME_9","There... There's no more time for me. I'm done for. Finish me off, $N. Do it or they'll kill us both. $N... Remember Mulgore. This world is worth saving."),
(29071,51,0,12,0,100,"special_surprise SAY_EXEC_TIME_10","Der... Der's no more time for me. I be done for. Finish me off $N. Do it or they'll kill us both. $N... Remember Sen'jin Village, mon! Dis world be worth saving!"),
(29071,52,0,12,0,100,"special_surprise SAY_EXEC_WAITING","Do it, $N! Put me out of my misery!"),
(29071,53,0,16,0,100,"special_surprise EMOTE_DIES","%s dies from his wounds."),
-- Plaguefist
(29053,41,0,14,0,100,"special_surprise SAY_PLAGUEFIST","What's going on in there? What's taking so long, $N?");

-- Highlord Darion Mograine
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1609286 AND -1609201;
DELETE FROM `creature_text` WHERE `entry` IN (29183,29175,29227,29228,29176,29178,29204,29173);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(29173,0,0,14,14677,100,"Highlord Darion Mograine","Soldiers of the Scourge, stand ready! You will soon be able to unleash your fury upon the Argent Dawn!"),
(29173,1,0,14,14678,100,"Highlord Darion Mograine","The sky weeps at the devastation of sister earth! Soon, tears of blood will rain down upon us!"),
(29173,2,0,14,14681,100,"Highlord Darion Mograine","Death knights of Acherus, the death march begins!"),
(29173,3,0,14,14679,100,"Highlord Darion Mograine","Soldiers of the Scourge, death knights of Acherus, minions of the darkness: hear the call of the Highlord!"),
(29173,4,0,14,14680,100,"Highlord Darion Mograine","RISE!"),
(29173,5,0,14,14682,100,"Highlord Darion Mograine","The skies turn red with the blood of the fallen! The Lich King watches over us, minions! Onward! Leave only ashes and misery in your destructive wake!"),
(29176,6,0,14,0,100,"Korfax, Champion of the Light","Scourge armies approach!"),
(29178,7,0,14,14487,100,"Lord Maxwell Tyrosus","Stand fast, brothers and sisters! The Light will prevail!"),
(29173,8,0,12,14683,100,"Highlord Darion Mograine","Kneel before the Highlord!"),
(29173,8,1,12,14684,100,"Highlord Darion Mograine","You stand no chance!"),
(29173,8,2,12,14685,100,"Highlord Darion Mograine","The Scourge will destroy this place!"),
(29173,8,3,12,14686,100,"Highlord Darion Mograine","Your life is forfeit."),
(29173,8,4,12,14687,100,"Highlord Darion Mograine","Life is meaningless without suffering."),
(29173,8,5,12,14688,100,"Highlord Darion Mograine","How much longer will your forces hold out?"),
(29173,8,6,12,14689,100,"Highlord Darion Mograine","The Argent Dawn is finished!"),
(29173,8,7,12,14690,100,"Highlord Darion Mograine","Spare no one!"),
(29173,8,8,12,14691,100,"Highlord Darion Mograine","What is this?! My... I cannot strike..."),
(29173,8,9,14,14692,100,"Highlord Darion Mograine","Obey me, blade!"),
(29173,8,10,12,14693,100,"Highlord Darion Mograine","You will do as I command! I am in control here!"),
(29173,8,11,12,14694,100,"Highlord Darion Mograine","I can not... the blade fights me."),
(29173,8,12,12,14695,100,"Highlord Darion Mograine","What is happening to me?"),
(29173,8,13,12,14696,100,"Highlord Darion Mograine","Power...wanes..."),
(29173,8,14,12,14697,100,"Highlord Darion Mograine","Ashbringer defies me..."),
(29173,8,15,12,14698,100,"Highlord Darion Mograine","Minions, come to my aid!"),
(29175,24,0,14,14584,100,"Highlord Tirion Fordring","You cannot win, Darion!"),
(29175,25,0,14,14585,100,"Highlord Tirion Fordring","Bring them before the chapel!"),
(29173,26,0,12,14699,100,"Highlord Darion Mograine","Stand down, death knights. We have lost... The Light... This place... No hope..."),
(29175,27,0,12,14586,100,"Highlord Tirion Fordring","Have you learned nothing, boy? You have become all that your father fought against! Like that coward, Arthas, you allowed yourself to be consumed by the darkness...the hate... Feeding upon the misery of those you tortured and killed!"),
(29175,28,0,12,14587,100,"Highlord Tirion Fordring","Your master knows what lies beneath the chapel. It is why he dares not show his face! He's sent you and your death knights to meet their doom, Darion."),
(29175,29,0,12,14588,100,"Highlord Tirion Fordring","What you are feeling right now is the anguish of a thousand lost souls! Souls that you and your master brought here! The Light will tear you apart, Darion!"),
(29173,30,0,12,14700,100,"Highlord Darion Mograine","Save your breath, old man. It might be the last you ever draw."),
(29227,31,0,12,14493,100,"Highlord Alexandros Mograine","My son! My dear, beautiful boy!"),
(29173,32,0,12,14701,100,"Highlord Darion Mograine","Father!"),
(29173,33,0,12,14702,100,"Highlord Darion Mograine","Argh...what...is..."),
(29228,34,0,12,14703,100,"Darion Mograine","Father, you have returned!"),
(29228,35,0,12,14704,100,"Darion Mograine","You have been gone a long time, father. I thought..."),
(29227,36,0,12,14494,100,"Highlord Alexandros Mograine","Nothing could have kept me away from here, Darion. Not from my home and family."),
(29228,37,0,12,14705,100,"Darion Mograine","Father, I wish to join you in the war against the undead. I want to fight! I can sit idle no longer!"),
(29227,38,0,12,14495,100,"Highlord Alexandros Mograine","Darion Mograine, you are barely of age to hold a sword, let alone battle the undead hordes of Lordaeron! I couldn't bear losing you. Even the thought..."),
(29228,39,0,12,14706,100,"Darion Mograine","If I die, father, I would rather it be on my feet, standing in defiance against the undead legions! If I die, father, I die with you!"),
(29227,40,0,12,14496,100,"Highlord Alexandros Mograine","My son, there will come a day when you will command the Ashbringer and, with it, mete justice across this land. I have no doubt that when that day finally comes, you will bring pride to our people and that Lordaeron will be a better place because of you. But, my son, that day is not today."),
(29227,41,0,12,14497,100,"Highlord Alexandros Mograine","Do not forget..."),
(29183,42,0,14,14803,100,"The Lich King","Touching..."),
(29173,43,0,14,14707,100,"Highlord Darion Mograine","You have've betrayed me! You betrayed us all you monster! Face the might of Mograine!"),
(29183,44,0,12,14805,100,"The Lich King","He's mine now..."),
(29183,45,0,12,14804,100,"The Lich King","Pathetic..."),
(29175,46,0,12,14589,100,"Highlord Tirion Fordring","You're a damned monster, Arthas!"),
(29183,47,0,12,14806,100,"The Lich King","You were right, Fordring. I did send them in to die. Their lives are meaningless, but yours..."),
(29183,48,0,12,14807,100,"The Lich King","How simple it was to draw the great Tirion Fordring out of hiding. You've left yourself exposed, paladin. Nothing will save you..."),
(29178,49,0,14,14488,100,"Lord Maxwell Tyrosus","ATTACK!!!"),
(29183,50,0,14,14808,100,"The Lich King","APOCALYPSE!"),
(29173,51,0,12,14708,100,"Highlord Darion Mograine","That day is not today..."),
(29173,52,0,14,14709,100,"Highlord Darion Mograine","Tirion!"),
(29175,53,0,14,14591,100,"Highlord Tirion Fordring","ARTHAS!!!!"),
(29183,54,0,14,14809,100,"The Lich King","What is this?"),
(29175,55,0,14,14592,100,"Highlord Tirion Fordring","Your end."),
(29183,56,0,14,14810,100,"The Lich King","Impossible..."),
(29183,57,0,14,14811,100,"The Lich King","This... isn't... over..."),
(29183,58,0,14,14812,100,"The Lich King","When next we meet it won't be on holy ground, paladin."),
(29175,59,0,12,14593,100,"Highlord Tirion Fordring","Rise, Darion, and listen..."),
(29175,60,0,12,14594,100,"Highlord Tirion Fordring","We have all been witness to a terrible tragedy. The blood of good men has been shed upon this soil! Honorable knights, slain defending their lives - our lives!"),
(29175,61,0,12,14595,100,"Highlord Tirion Fordring","And while such things can never be forgotten, we must remain vigilant in our cause!"),
(29175,62,0,12,14596,100,"Highlord Tirion Fordring","The Lich King must answer for what he has done and must not be allowed to cause further destruction to our world."),
(29175,63,0,12,14597,100,"Highlord Tirion Fordring","I make a promise to you now, brothers and sisters: The Lich King will be defeated! On this day, I call for a union."),
(29175,64,0,12,14598,100,"Highlord Tirion Fordring","The Argent Dawn and the Order of the Silver Hand will come together as one! We will succeed where so many before us have failed!"),
(29175,65,0,12,14599,100,"Highlord Tirion Fordring","We will take the fight to Arthas and tear down the walls of Icecrown!"),
(29175,66,0,14,14600,100,"Highlord Tirion Fordring","The Argent Crusade comes for you, Arthas!"),
(29173,67,0,12,14710,100,"Highlord Darion Mograine","So too do the Knights of the Ebon Blade... While our kind has no place in your world, we will fight to bring an end to the Lich King. This I vow!"),
(29173,68,0,16,0,100,"","Thousands of Scourge rise up at the Highlord's command."),
(29173,69,0,16,0,100,"","The army marches towards Light's Hope Chapel."),
(29173,70,0,16,0,100,"","After over a hundred Defenders of the Light fall, Highlord Tirion Fordring arrives."),
(29204,71,0,16,0,100,"Orbaz","%s flee"),
(29173,72,0,16,0,100,"Highlord Darion Mograine","%s kneels in defeat before Tirion Fordring."),
(29227,73,0,16,0,100,"Highlord Alexandros Mograine","%s arrives."),
(29173,74,0,16,0,100,"Highlord Darion Mograine","%s becomes a shade of his past, and walks up to his father."),
(29228,75,0,16,0,100,"Darion Mograine","%s hugs his father."),
(29173,76,0,16,0,100,"Alexandros","%s disappears, and the Lich King appears."),
(29173,77,0,16,0,100,"Highlord Darion Mograine","%s becomes himself again...and is now angry."),
(29183,78,0,16,0,100,"The Lich King","%s casts a spell on Tirion."),
(29175,79,0,16,0,100,"Highlord Tirion Fordring","%s gasps for air."),
(29183,80,0,16,0,100,"The Lich King","%s casts a powerful spell, killing the Defenders and knocking back the others."),
(29173,81,0,16,0,100,"Highlord Darion Mograine","%s throws the Corrupted Ashbringer to Tirion, who catches it. Tirion becomes awash with Light, and the Ashbringer is cleansed."),
(29173,82,0,16,0,100,"Highlord Darion Mograine","%s collapses."),
(29175,83,0,16,0,100,"Highlord Tirion Fordring","%s charges towards the Lich King, Ashbringer in hand and strikes the Lich King."),
(29183,84,0,16,0,100,"The Lich King","%s disappears. Tirion walks over to where Darion lay"),
(29173,85,0,16,0,100,"","Light washes over the chapel ? the Light of Dawn is uncovered.");

-- grimstone
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1230008 AND -1230003;
DELETE FROM `creature_text` WHERE `entry`=10096;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(10096,0,0,14,0,100,"grimstone SCRIPT_TEXT1","You have been sentenced to death for crimes against the Dark Iron nation!"),
(10096,1,0,14,0,100,"grimstone SCRIPT_TEXT2","The Sons of Thaurissan shall watch you perish in the Ring of the Law!"),
(10096,2,0,14,0,100,"grimstone SCRIPT_TEXT3","Unleash the fury and let it be done!"),
(10096,3,0,14,0,100,"grimstone SCRIPT_TEXT4","Haha! I bet you thought you were done!"),
(10096,4,0,14,0,100,"grimstone SCRIPT_TEXT5","But your real punishment lies ahead."),
(10096,5,0,14,0,100,"grimstone SCRIPT_TEXT6","Good riddance!");

-- rocknot
DELETE FROM `script_texts` WHERE `entry`=-1230000;
DELETE FROM `creature_text` WHERE `entry`=9503;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(9503,0,0,12,0,100,"rocknot SAY_GOT_BEER","Ah, hits the spot!");

-- doctor theolen krastinov
-- No delete query here, it's a generic script text for frenzy emotes.
DELETE FROM `creature_text` WHERE `entry`=9028;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(9028,0,0,16,0,100,"grizzle EMOTE_FRENZY_KILL","%s goes into a killing frenzy!");

-- dagran
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1230002 AND -1230001;
DELETE FROM `creature_text` WHERE `entry`=9019;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(9019,0,0,14,0,100,"dagran SAY_AGGRO","Come to aid the Throne!"),
(9019,1,0,14,0,100,"dagran SAY_SLAY","Hail to the king, baby!");

-- lilatha
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000146 AND -1000140;
DELETE FROM `creature_text` WHERE `entry` IN (16295,16220);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(16295,0,0,12,0,100,"lilatha SAY_START","Let's go."),
(16295,1,0,12,0,100,"lilatha SAY_PROGRESS1","$N, let's use the antechamber to the right."),
(16295,2,0,12,0,100,"lilatha SAY_PROGRESS2","I can see the light at the end of the tunnel!"),
(16295,3,0,12,0,100,"lilatha SAY_PROGRESS3","There's Farstrider Enclave now, $C. Not far to go... Look out! Troll ambush!!"),
(16295,4,0,12,0,100,"lilatha SAY_END1","Thank you for saving my life and bringing me back to safety, $N"),
(16295,5,0,12,0,100,"lilatha SAY_END2","Captain Helios, I've been rescued from the Amani Catacombs. Reporting for duty, sir!"),
(16220,0,0,12,0,100,"lilatha CAPTAIN_ANSWER","Liatha, get someone to look at those injuries. Thank you for bringing her back safely.");

-- stillblade
DELETE FROM `script_texts` WHERE `entry`=-1000193;
DELETE FROM `creature_text` WHERE `entry`=17768;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(17768,0,0,12,0,100,"stillblade SAY_HEAL","Thank you, dear $C, you just saved my life.");

-- stilwell
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000297 AND -1000293;
DELETE FROM `creature_text` WHERE `entry`=6182;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(6182,0,0,12,0,100,"stilwell SAY_DS_START","To the house! Stay close to me, no matter what! I have my gun and ammo there!"),
(6182,1,0,12,0,100,"stilwell SAY_DS_DOWN_1","We showed that one!"),
(6182,2,0,12,0,100,"stilwell SAY_DS_DOWN_2","One more down!"),
(6182,3,0,12,0,100,"stilwell SAY_DS_DOWN_3","We've done it! We won!"),
(6182,4,0,12,0,100,"stilwell SAY_DS_PROLOGUE","Meet me down by the orchard-- I just need to put my gun away.");

-- defias traitor
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000105 AND -1000101;
DELETE FROM `creature_text` WHERE `entry`=467;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(467,0,0,12,0,100,"defias traitor SAY_START","Follow me, $N. I'll take you to the Defias hideout. But you better protect me or I am as good as dead."),
(467,1,0,12,0,100,"defias traitor SAY_PROGRESS","The entrance is hidden here in Moonbrook. Keep your eyes peeled for thieves. They want me dead."),
(467,2,0,12,0,100,"defias traitor SAY_END","You can go tell Stoutmantle this is where the Defias Gang is holed up, $N."),
(467,3,0,12,0,100,"defias traitor SAY_AGGRO_1","%s coming in fast! Prepare to fight!"),
(467,3,1,12,0,100,"defias traitor SAY_AGGRO_2","Help!");

-- vexallus
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1585011 AND -1585007;
DELETE FROM `creature_text` WHERE `entry`=24744;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(24744,0,0,14,12389,100,"vexallus SAY_AGGRO","Drain...life!"),
(24744,1,0,14,12392,100,"vexallus SAY_ENERGY","Un...con...tainable."),
(24744,2,0,14,12390,100,"vexallus SAY_OVERLOAD","Un...leash..."),
(24744,3,0,14,12393,100,"vexallus SAY_KILL","Con...sume."),
(24744,4,0,41,0,100,"vexallus EMOTE_DISCHARGE_ENERGY","%s discharges pure energy!");

-- kaelthas
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1585029 AND -1585023;
DELETE FROM `creature_text` WHERE `entry`=24664;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(24664,0,0,14,12413,100,"kaelthas MT SAY_AGGRO","Don't look so smug! I know what you're thinking, but Tempest Keep was merely a set back. Did you honestly believe I would trust the future to some blind, half-night elf mongrel? Oh no, he was merely an instrument, a stepping stone to a much larger plan! It has all led to this, and this time, you will not interfere!"),
(24664,1,0,14,12415,100,"kaelthas MT SAY_PHOENIX","Vengeance burns!"),
(24664,2,0,14,12417,100,"kaelthas MT SAY_FLAMESTRIKE","Felomin ashal!"),
(24664,3,0,14,12418,100,"kaelthas MT SAY_GRAVITY_LAPSE","I'll turn your world... upside... down..."),
(24664,4,0,14,12419,100,"kaelthas MT SAY_TIRED","Master... grant me strength."),
(24664,5,0,14,12420,100,"kaelthas MT SAY_RECAST_GRAVITY","Do not... get too comfortable."),
(24664,6,0,14,12421,100,"kaelthas MT SAY_DEATH","My demise accomplishes nothing! The Master will have you! You will drown in your own blood! This world shall burn! Aaaghh!");

-- selin
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1585006 AND -1585000;
DELETE FROM `creature_text` WHERE `entry`=24723;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(24723,0,0,14,12378,100,"selin SAY_AGGRO","You only waste my time!"),
(24723,1,0,14,12381,100,"selin SAY_ENERGY","My hunger knows no bounds!"),
(24723,2,0,14,12382,100,"selin SAY_EMPOWERED","Yes! I am a god!"),
(24723,3,0,14,12388,100,"selin SAY_KILL_1","Enough distractions!"),
(24723,3,1,14,12385,100,"selin SAY_KILL_2","I am invincible!"),
(24723,4,0,14,12383,100,"selin SAY_DEATH","No! More... I must have more!"),
(24723,5,0,41,0,100,"selin EMOTE_CRYSTAL","%s begins to channel from the nearby Fel Crystal...");

-- delrissa
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1585022 AND -1585012;
DELETE FROM `creature_text` WHERE `entry`=24560;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(24560,0,0,14,12395,100,"delrissa SAY_AGGRO","Annihilate them!"),
(24560,1,0,14,12398,100,"delrissa LackeyDeath1","Oh, the horror."),
(24560,2,0,14,12400,100,"delrissa LackeyDeath2","Well, aren't you lucky?"),
(24560,3,0,14,12401,100,"delrissa LackeyDeath3","Now I'm getting annoyed."),
(24560,4,0,14,12403,100,"delrissa LackeyDeath4","Lackies be damned! I'll finish you myself!"),
(24560,5,0,14,12405,100,"delrissa PlayerDeath1","I call that a good start."),
(24560,6,0,14,12407,100,"delrissa PlayerDeath2","I could have sworn there were more of you."),
(24560,7,0,14,12409,100,"delrissa PlayerDeath3","Not really much of a group, anymore, is it?"),
(24560,8,0,14,12410,100,"delrissa PlayerDeath4","One is such a lonely number."),
(24560,9,0,14,12411,100,"delrissa PlayerDeath5","It's been a kick, really."),
(24560,10,0,14,12397,100,"delrissa SAY_DEATH","Not what I had... planned...");

-- lord gregor lescovar
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000463 AND -1000457;
DELETE FROM `creature_text` WHERE `entry` IN (1755,7766,1754,1756);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(1756,0,0,12,0,100,"lord gregor lescovar SAY_GUARD_2","Yes, sir!"),
(1754,0,0,12,0,100,"lord gregor lescovar SAY_LESCOVAR_2","It's time for my meditation, leave me."),
(1754,1,0,12,0,100,"lord gregor lescovar SAY_LESCOVAR_3","There you are. What news from Westfall?"),
(1754,2,0,12,0,100,"lord gregor lescovar SAY_LESCOVAR_4","Hmm, it could be that meddle Shaw. I will see what I can discover. Be off with you. I'll contact you again soon."),
(1755,0,0,12,0,100,"lord gregor lescovar SAY_MARZON_1","VanCleef sends word that the plans are underway. But he's hear rumors about someone snooping about."),
(1755,1,0,12,0,100,"lord gregor lescovar SAY_MARZON_2","The Defias shall succeed! No meek adventurer will stop us!"),
(7766,0,0,14,0,100,"lord gregor lescovar SAY_TYRION_2","That's it! That's what you were waiting for! KILL THEM!");

-- tyrion spybot
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000456 AND -1000450 OR `entry`=-1000499;
DELETE FROM `creature_text` WHERE `entry` IN (7766,8856,1756,1754);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(8856,0,0,12,0,100,"tyrion spybot SAY_QUEST_ACCEPT_ATTACK","By your command!"),
(8856,1,0,12,0,100,"tyrion spybot SAY_SPYBOT_1","Good day to you both. I would speak to Lord Lescovar."),
(8856,2,0,12,0,100,"tyrion spybot SAY_SPYBOT_2","Thank you. The Light be with you both."),
(8856,3,0,12,0,100,"tyrion spybot SAY_SPYBOT_3","Milord, your guest has arrived. He awaits your presence."),
(8856,4,0,12,0,100,"tyrion spybot SAY_SPYBOT_4","I shall use the time wisely, milord. Thank you."),
(7766,0,0,12,0,100,"tyrion spybot SAY_TYRION_1","Wait here. Spybot will make Lescovar come out as soon as possible. Be ready! Attack only after you've overheard their conversation."),
(1756,0,0,12,0,100,"tyrion spybot SAY_GUARD_1","Of course. He awaits you in the library."),
(1754,0,0,12,0,100,"tyrion spybot SAY_LESCOVAR_1","Ah, thank you kindly. I will leave you to the library while I tend to this small matter.");

-- rager
DELETE FROM `script_texts` WHERE `entry`=-1409002;
DELETE FROM `creature_text` WHERE `entry`=11988;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(11988,0,0,16,0,100,"core rager EMOTE_LOWHP","%s refuses to die while its master is in trouble.");

-- ragnaros
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1409018 AND -1409008;
DELETE FROM `creature_text` WHERE `entry`=11502;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(11502,0,0,14,8040,100,"ragnaros SAY_SUMMON_MAJ","Behold Ragnaros, the Firelord! He who was ancient when this world was young! Bow before him, mortals! Bow before your ending!"),
(11502,1,0,14,8043,100,"ragnaros SAY_ARRIVAL1_RAG","TOO SOON! YOU HAVE AWAKENED ME TOO SOON, EXECUTUS! WHAT IS THE MEANING OF THIS INTRUSION?"),
(11502,2,0,14,8041,100,"ragnaros SAY_ARRIVAL2_MAJ","These mortal infidels, my lord! They have invaded your sanctum, and seek to steal your secrets!"),
(11502,3,0,14,8044,100,"ragnaros SAY_ARRIVAL3_RAG","FOOL! YOU ALLOWED THESE INSECTS TO RUN RAMPANT THROUGH THE HALLOWED CORE, AND NOW YOU LEAD THEM TO MY VERY LAIR? YOU HAVE FAILED ME, EXECUTUS! JUSTICE SHALL BE MET, INDEED!"),
(11502,4,0,14,8045,100,"ragnaros SAY_ARRIVAL5_RAG","NOW FOR YOU, INSECTS. BOLDLY YOU SAUGHT THE POWER OF RAGNAROS NOW YOU SHALL SEE IT FIRST HAND."),
(11502,5,0,14,8049,100,"ragnaros SAY_REINFORCEMENTS1","COME FORTH, MY SERVANTS! DEFEND YOUR MASTER!"),
(11502,6,0,14,8050,100,"ragnaros SAY_REINFORCEMENTS2","YOU CANNOT DEFEAT THE LIVING FLAME! COME YOU MINIONS OF FIRE! COME FORTH YOU CREATURES OF HATE! YOUR MASTER CALLS!"),
(11502,7,0,14,8046,100,"ragnaros SAY_HAND","BY FIRE BE PURGED!"),
(11502,8,0,14,8047,100,"ragnaros SAY_WRATH","TASTE THE FLAMES OF SULFURON!"),
(11502,9,0,14,8051,100,"ragnaros SAY_KILL","DIE INSECT!"),
(11502,10,0,14,8048,100,"ragnaros SAY_MAGMABURST","MY PATIENCE IS DWINDLING! COME, GNATS, TO YOUR DEATH!");

-- Change cast spell after 0s to cast on accept (same thing, different table)
UPDATE `quest_template` SET `SourceSpellId`=25201 WHERE `Id`=8305;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=7750;
DELETE FROM `smart_scripts` WHERE `entryorguid`=7750 AND `source_type`=0;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(7750,0,0,0,19,0,100,0,2701,0,0,0,70,0,0,0,0,0,0,14,44732,141981,0,0,0,0,0, 'Corporal Thund Splithoof - On Quest Accept - Respawn Spectral Lockbox Particles (GO)'),
(7750,0,1,0,19,0,100,0,2701,0,0,0,70,0,0,0,0,0,0,14,44733,141980,0,0,0,0,0, 'Corporal Thund Splithoof - On Quest Accept - Respawn Spectral Lockbox (GO)');

-- ------------------------------- --
-- Creature text conversion part 3 --
-- ------------------------------- --
-- crusader
DELETE FROM `creature_text` WHERE `entry` IN (28939,28610,28940) AND `groupid` IN (6,7,8);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
-- Scarlet Preacher
(28939,6,0,12,0,100,"break crusader SAY_PERSUADED5","LIES! The pain you are about to endure will be talked about for years to come!"),
(28939,7,0,12,0,100,"break crusader SAY_PERSUADED6","NO! PLEASE! There is one more thing that I forgot to mention... A courier comes soon... From Hearthglen. It..."),
(28939,8,0,12,0,100,"player SAY_PERSUADE1","I'll tear the secrets from your soul! Tell me about the \"Crimson Dawn\" and your life may be spared!"),
(28939,8,1,12,0,100,"player SAY_PERSUADE2","Tell me what you know about \"Crimson Dawn\" or the beatings will continue!"),
(28939,8,2,12,0,100,"player SAY_PERSUADE3","I'm through being courteous with your kind, human! What is the \"Crimson Dawn\"?"),
(28939,8,3,12,0,100,"player SAY_PERSUADE4","Is your life worth so little? Just tell me what I need to know about \"Crimson Dawn\" and I'll end your suffering quickly."),
(28939,8,4,12,0,100,"player SAY_PERSUADE5","I can keep this up for a very long time, Scarlet dog! Tell me about the \"Crimson Dawn\"!"),
(28939,8,5,12,0,100,"player SAY_PERSUADE6","What is the \"Crimson Dawn\"?"),
(28939,8,6,12,0,100,"player SAY_PERSUADE7","\"Crimson Dawn\"! What is it! Speak!"),
-- Scarlet Crusader
(28940,6,0,12,0,100,"break crusader SAY_PERSUADED5","LIES! The pain you are about to endure will be talked about for years to come!"),
(28940,7,0,12,0,100,"break crusader SAY_PERSUADED6","NO! PLEASE! There is one more thing that I forgot to mention... A courier comes soon... From Hearthglen. It..."),
(28940,8,0,12,0,100,"player SAY_PERSUADE1","I'll tear the secrets from your soul! Tell me about the \"Crimson Dawn\" and your life may be spared!"),
(28940,8,1,12,0,100,"player SAY_PERSUADE2","Tell me what you know about \"Crimson Dawn\" or the beatings will continue!"),
(28940,8,2,12,0,100,"player SAY_PERSUADE3","I'm through being courteous with your kind, human! What is the \"Crimson Dawn\"?"),
(28940,8,3,12,0,100,"player SAY_PERSUADE4","Is your life worth so little? Just tell me what I need to know about \"Crimson Dawn\" and I'll end your suffering quickly."),
(28940,8,4,12,0,100,"player SAY_PERSUADE5","I can keep this up for a very long time, Scarlet dog! Tell me about the \"Crimson Dawn\"!"),
(28940,8,5,12,0,100,"player SAY_PERSUADE6","What is the \"Crimson Dawn\"?"),
(28940,8,6,12,0,100,"player SAY_PERSUADE7","\"Crimson Dawn\"! What is it! Speak!"),
-- Scarlet Marksman
(28610,6,0,12,0,100,"break crusader SAY_PERSUADED5","LIES! The pain you are about to endure will be talked about for years to come!"),
(28610,7,0,12,0,100,"break crusader SAY_PERSUADED6","NO! PLEASE! There is one more thing that I forgot to mention... A courier comes soon... From Hearthglen. It..."),
(28610,8,0,12,0,100,"player SAY_PERSUADE1","I'll tear the secrets from your soul! Tell me about the \"Crimson Dawn\" and your life may be spared!"),
(28610,8,1,12,0,100,"player SAY_PERSUADE2","Tell me what you know about \"Crimson Dawn\" or the beatings will continue!"),
(28610,8,2,12,0,100,"player SAY_PERSUADE3","I'm through being courteous with your kind, human! What is the \"Crimson Dawn\"?"),
(28610,8,3,12,0,100,"player SAY_PERSUADE4","Is your life worth so little? Just tell me what I need to know about \"Crimson Dawn\" and I'll end your suffering quickly."),
(28610,8,4,12,0,100,"player SAY_PERSUADE5","I can keep this up for a very long time, Scarlet dog! Tell me about the \"Crimson Dawn\"!"),
(28610,8,5,12,0,100,"player SAY_PERSUADE6","What is the \"Crimson Dawn\"?"),
(28610,8,6,12,0,100,"player SAY_PERSUADE7","\"Crimson Dawn\"! What is it! Speak!");

-- unworthy initiate
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1609016 AND -1609000;
DELETE FROM `creature_text` WHERE `entry` IN (29519,29520,29565,29566,29567);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(29519,0,0,12,0,100,"unworthy initiate SAY_EVENT_START_1","You have made a grave error, fiend!"),
(29519,0,1,12,0,100,"unworthy initiate SAY_EVENT_START_2","I was a soldier of the Light once... Look at what I have become... "),
(29519,0,2,12,0,100,"unworthy initiate SAY_EVENT_START_3","You are hopelessly outmatched, $R."),
(29519,0,3,12,0,100,"unworthy initiate SAY_EVENT_START_4","They brand me unworthy? I will show them unmorthy!"),
(29519,0,4,12,0,100,"unworthy initiate SAY_EVENT_START_5","You will allow me a weapon and armor, yes?"),
(29519,0,5,12,0,100,"unworthy initiate SAY_EVENT_START_6","I will win my freedom and leave this cursed place!"),
(29519,0,6,12,0,100,"unworthy initiate SAY_EVENT_START_7","I will dismantle this festering hellhole!"),
(29519,0,7,12,0,100,"unworthy initiate SAY_EVENT_START_8","There can be only one survivor!"),
(29519,1,0,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_1","To battle!"),
(29519,1,1,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_2","Let your fears consume you!"),
(29519,1,2,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_3","HAH! You can barely hold a blade! Yours will be a quick death."),
(29519,1,3,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_4","And now you die"),
(29519,1,4,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_5","To battle!"),
(29519,1,5,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_6","There is no hope for our future..."),
(29519,1,6,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_7","Sate your hunger on cold steel, $R"),
(29519,1,7,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_8","It ends here!"),
(29519,1,8,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_9","Death is the only cure!"),
(29520,0,0,12,0,100,"unworthy initiate SAY_EVENT_START_1","You have made a grave error, fiend!"),
(29520,0,1,12,0,100,"unworthy initiate SAY_EVENT_START_2","I was a soldier of the Light once... Look at what I have become... "),
(29520,0,2,12,0,100,"unworthy initiate SAY_EVENT_START_3","You are hopelessly outmatched, $R."),
(29520,0,3,12,0,100,"unworthy initiate SAY_EVENT_START_4","They brand me unworthy? I will show them unmorthy!"),
(29520,0,4,12,0,100,"unworthy initiate SAY_EVENT_START_5","You will allow me a weapon and armor, yes?"),
(29520,0,5,12,0,100,"unworthy initiate SAY_EVENT_START_6","I will win my freedom and leave this cursed place!"),
(29520,0,6,12,0,100,"unworthy initiate SAY_EVENT_START_7","I will dismantle this festering hellhole!"),
(29520,0,7,12,0,100,"unworthy initiate SAY_EVENT_START_8","There can be only one survivor!"),
(29520,1,0,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_1","To battle!"),
(29520,1,1,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_2","Let your fears consume you!"),
(29520,1,2,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_3","HAH! You can barely hold a blade! Yours will be a quick death."),
(29520,1,3,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_4","And now you die"),
(29520,1,4,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_5","To battle!"),
(29520,1,5,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_6","There is no hope for our future..."),
(29520,1,6,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_7","Sate your hunger on cold steel, $R"),
(29520,1,7,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_8","It ends here!"),
(29520,1,8,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_9","Death is the only cure!"),
(29565,0,0,12,0,100,"unworthy initiate SAY_EVENT_START_1","You have made a grave error, fiend!"),
(29565,0,1,12,0,100,"unworthy initiate SAY_EVENT_START_2","I was a soldier of the Light once... Look at what I have become... "),
(29565,0,2,12,0,100,"unworthy initiate SAY_EVENT_START_3","You are hopelessly outmatched, $R."),
(29565,0,3,12,0,100,"unworthy initiate SAY_EVENT_START_4","They brand me unworthy? I will show them unmorthy!"),
(29565,0,4,12,0,100,"unworthy initiate SAY_EVENT_START_5","You will allow me a weapon and armor, yes?"),
(29565,0,5,12,0,100,"unworthy initiate SAY_EVENT_START_6","I will win my freedom and leave this cursed place!"),
(29565,0,6,12,0,100,"unworthy initiate SAY_EVENT_START_7","I will dismantle this festering hellhole!"),
(29565,0,7,12,0,100,"unworthy initiate SAY_EVENT_START_8","There can be only one survivor!"),
(29565,1,0,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_1","To battle!"),
(29565,1,1,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_2","Let your fears consume you!"),
(29565,1,2,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_3","HAH! You can barely hold a blade! Yours will be a quick death."),
(29565,1,3,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_4","And now you die"),
(29565,1,4,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_5","To battle!"),
(29565,1,5,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_6","There is no hope for our future..."),
(29565,1,6,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_7","Sate your hunger on cold steel, $R"),
(29565,1,7,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_8","It ends here!"),
(29565,1,8,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_9","Death is the only cure!"),
(29566,0,0,12,0,100,"unworthy initiate SAY_EVENT_START_1","You have made a grave error, fiend!"),
(29566,0,1,12,0,100,"unworthy initiate SAY_EVENT_START_2","I was a soldier of the Light once... Look at what I have become... "),
(29566,0,2,12,0,100,"unworthy initiate SAY_EVENT_START_3","You are hopelessly outmatched, $R."),
(29566,0,3,12,0,100,"unworthy initiate SAY_EVENT_START_4","They brand me unworthy? I will show them unmorthy!"),
(29566,0,4,12,0,100,"unworthy initiate SAY_EVENT_START_5","You will allow me a weapon and armor, yes?"),
(29566,0,5,12,0,100,"unworthy initiate SAY_EVENT_START_6","I will win my freedom and leave this cursed place!"),
(29566,0,6,12,0,100,"unworthy initiate SAY_EVENT_START_7","I will dismantle this festering hellhole!"),
(29566,0,7,12,0,100,"unworthy initiate SAY_EVENT_START_8","There can be only one survivor!"),
(29566,1,0,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_1","To battle!"),
(29566,1,1,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_2","Let your fears consume you!"),
(29566,1,2,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_3","HAH! You can barely hold a blade! Yours will be a quick death."),
(29566,1,3,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_4","And now you die"),
(29566,1,4,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_5","To battle!"),
(29566,1,5,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_6","There is no hope for our future..."),
(29566,1,6,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_7","Sate your hunger on cold steel, $R"),
(29566,1,7,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_8","It ends here!"),
(29566,1,8,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_9","Death is the only cure!"),
(29567,0,0,12,0,100,"unworthy initiate SAY_EVENT_START_1","You have made a grave error, fiend!"),
(29567,0,1,12,0,100,"unworthy initiate SAY_EVENT_START_2","I was a soldier of the Light once... Look at what I have become... "),
(29567,0,2,12,0,100,"unworthy initiate SAY_EVENT_START_3","You are hopelessly outmatched, $R."),
(29567,0,3,12,0,100,"unworthy initiate SAY_EVENT_START_4","They brand me unworthy? I will show them unmorthy!"),
(29567,0,4,12,0,100,"unworthy initiate SAY_EVENT_START_5","You will allow me a weapon and armor, yes?"),
(29567,0,5,12,0,100,"unworthy initiate SAY_EVENT_START_6","I will win my freedom and leave this cursed place!"),
(29567,0,6,12,0,100,"unworthy initiate SAY_EVENT_START_7","I will dismantle this festering hellhole!"),
(29567,0,7,12,0,100,"unworthy initiate SAY_EVENT_START_8","There can be only one survivor!"),
(29567,1,0,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_1","To battle!"),
(29567,1,1,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_2","Let your fears consume you!"),
(29567,1,2,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_3","HAH! You can barely hold a blade! Yours will be a quick death."),
(29567,1,3,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_4","And now you die"),
(29567,1,4,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_5","To battle!"),
(29567,1,5,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_6","There is no hope for our future..."),
(29567,1,6,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_7","Sate your hunger on cold steel, $R"),
(29567,1,7,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_8","It ends here!"),
(29567,1,8,12,0,100,"unworthy initiate SAY_EVENT_ATTACK_9","Death is the only cure!");

-- dk initiate
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1609088 AND -1609080;
DELETE FROM `creature_text` WHERE `entry`=28406;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(28406,0,0,12,0,100,"dk initiate SAY_DUEL_A","No potions!"),
(28406,0,1,12,0,100,"dk initiate SAY_DUEL_B","Remember this day, $n, for it is the day that you will be thoroughly owned."),
(28406,0,2,12,0,100,"dk initiate SAY_DUEL_C","I'm going to tear your heart out, cupcake!"),
(28406,0,3,12,0,100,"dk initiate SAY_DUEL_D","Don't make me laugh."),
(28406,0,4,12,0,100,"dk initiate SAY_DUEL_E","Here come the tears..."),
(28406,0,5,12,0,100,"dk initiate SAY_DUEL_F","You have challenged death itself!"),
(28406,0,6,12,0,100,"dk initiate SAY_DUEL_G","The Lich King will see his true champion on this day!"),
(28406,0,7,12,0,100,"dk initiate SAY_DUEL_H","You're going down!"),
(28406,0,8,12,0,100,"dk initiate SAY_DUEL_I","You don't stand a chance, $n");

-- geddon
DELETE FROM `script_texts` WHERE `entry`=-1409000;
DELETE FROM `creature_text` WHERE `entry`=12056;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(12056,0,0,16,0,100,"geddon EMOTE_SERVICE","%s performs one last service for Ragnaros.");

-- majordomo
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1409012 AND -1409003;
DELETE FROM `creature_text` WHERE `entry`=12018;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(12018,0,0,14,8035,100,"majordomo SAY_AGGRO","Reckless mortals, none may challenge the sons of the living flame!"),
(12018,1,0,14,8039,100,"majordomo SAY_SPAWN","The runes of warding have been destroyed! Hunt down the infedels my bretheren."),
(12018,2,0,14,8037,100,"majordomo SAY_SLAY","Ashes to Ashes!"),
(12018,3,0,14,8036,100,"majordomo SAY_SPECIAL","Burn mortals! Burn for this transgression!"),
(12018,4,0,14,8038,100,"majordomo SAY_DEFEAT","Impossible! Stay your attack mortals! I submitt! I submitt! Brashly you have come to rest the secrets of the living flame. You will soon regret the recklessness of your quest. I go now to summon the lord whos house this is. Should you seek an audiance with him your paltry lives will surly be forfit. Nevertheless seek out his lair if you dare!"),
(12018,5,0,14,8040,100,"majordomo SAY_SUMMON_MAJ","Behold Ragnaros, the Firelord! He who was ancient when this world was young! Bow before him, mortals! Bow before your ending!"),
(12018,6,0,14,8041,100,"majordomo SAY_ARRIVAL2_MAJ","These mortal infidels, my lord! They have invaded your sanctum, and seek to steal your secrets!");

-- magmadar
DELETE FROM `script_texts` WHERE `entry`=-1409001;
DELETE FROM `creature_text` WHERE `entry`=11982;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(11982,0,0,16,0,100,"magmadar EMOTE_FRENZY","%s goes into a killing frenzy!");

-- calvin montague
DELETE FROM `script_texts` WHERE `entry`=-1000431;
DELETE FROM `creature_text` WHERE `entry`=6784;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(6784,0,0,12,0,100,"calvin montague SAY_RIN_END_6","Ugh.");

-- corporal keeshan
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000468 AND -1000464;
DELETE FROM `creature_text` WHERE `entry`=349;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(349,0,0,12,0,100,"corporal keeshan SAY_CORPORAL_1","My wounds are grave. Forgive my slow pace but my injuries won't allow me to walk any faster."),
(349,1,0,12,0,100,"corporal keeshan SAY_CORPORAL_2","Ah,fresh air,at last! I need a moment to reset."),
(349,2,0,12,0,100,"corporal keeshan SAY_CORPORAL_3","The Blackrock infestation is thick in these parts. I will do my best to keep the pace. Let's go!"),
(349,3,0,12,0,100,"corporal keeshan SAY_CORPORAL_4","Marshal Marris,sir. Corporal Keeshan of the 12th Sabre Regiment returned from battle and reporting for duty!"),
(349,4,0,12,0,100,"corporal keeshan SAY_CORPORAL_5","Brave adventurer,thank you for rescuing me! I am sure Marshal Marris will reward your kind deed.");

-- anchorite truuen
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1800070 AND -1800064;
DELETE FROM `creature_text` WHERE `entry` IN (17238,1854,17233);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(17238,0,0,12,0,100,"anchorite truuen SAY_WP_0","Beware! We are attacked!"),
(17238,1,0,12,0,100,"anchorite truuen SAY_WP_1","It must be the purity of the Mark of the Lightbringer that is drawing forth the Scourge to attack us. We must proceed with caution lest we be overwhelmed!"),
(17238,2,0,12,0,100,"anchorite truuen SAY_WP_2","This land truly needs to be cleansed by the Light! Let us continue on to the tomb. It isn't far now..."),
(1854,0,0,12,0,100,"anchorite truuen SAY_WP_3","Be welcome, friends!"),
(17233,0,0,12,0,100,"anchorite truuen SAY_WP_4","Thank you for coming here in remembrance of me. Your efforts in recovering that symbol, while unnecessary, are certainly touching to an old man's heart. "),
(17233,1,0,12,0,100,"anchorite truuen SAY_WP_5","Please, rise my friend. Keep the Blessing as a symbol of the strength of the Light and how heroes long gone might once again rise in each of us to inspire. "),
(17233,2,0,12,0,100,"anchorite truuen SAY_WP_6","Thank you my friend for making this possible. This is a day that I shall never forget! I think I will stay a while. Please return to High Priestess MacDonnell at the camp. I know that she'll be keenly interested to know of what has transpired here.");

-- hakkar
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1309023 AND -1309020;
DELETE FROM `creature_text` WHERE `entry`=14834;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(14834,0,0,14,8414,100,"hakkar SAY_AGGRO","PRIDE HERALDS THE END OF YOUR WORLD. COME, MORTALS! FACE THE WRATH OF THE SOULFLAYER!"),
(14834,1,0,14,0,100,"hakkar SAY_FLEEING","Fleeing will do you no good, mortals!"),
(14834,2,0,14,0,100,"hakkar SAY_MINION_DESTROY","You dare set foot upon Hakkari holy ground? Minions of Hakkar, destroy the infidels!"),
(14834,3,0,14,0,100,"hakkar SAY_PROTECT_ALTAR","Minions of Hakkar, hear your God. The sanctity of this temple has been compromised. Invaders encroach upon holy ground! The Altar of Blood must be protected. Kill them all!");

-- thekal
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1309010 AND -1309009;
DELETE FROM `creature_text` WHERE `entry`=14509;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(14509,0,0,14,8419,100,"thekal SAY_AGGRO","Shirvallah, fill me with your RAGE!"),
(14509,1,0,14,8424,100,"thekal SAY_DEATH","Hakkar binds me no more! Peace at last!");

-- jeklik
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1309004 AND -1309002;
DELETE FROM `creature_text` WHERE `entry`=14517;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(14517,0,0,14,8417,100,"jeklik SAY_AGGRO","Lord Hir'eek, grant me wings of vengance!"),
(14517,1,0,14,0,100,"jeklik SAY_RAIN_FIRE","I command you to rain fire down upon these invaders!"),
(14517,2,0,14,8422,100,"jeklik SAY_DEATH","Finally ...death. Curse you Hakkar! Curse you!");

-- arlokk
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1309013 AND -1309011;
DELETE FROM `creature_text` WHERE `entry`=14515;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(14515,0,0,14,8416,100,"arlokk SAY_AGGRO","Bethekk, your priestess calls upon your might!"),
(14515,1,0,14,0,100,"arlokk SAY_FEAST_PANTHER","Feast on $n, my pretties!"),
(14515,2,0,14,8412,100,"arlokk SAY_DEATH","At last, I am free of the Soulflayer!");

-- mandokir / jindo
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1309019 AND -1309014;
DELETE FROM `creature_text` WHERE `entry` IN (11382,11380);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(11382,0,0,14,8413,100,"mandokir SAY_AGGRO","I'll feed your souls to Hakkar himself!"),
(11382,1,0,14,0,100,"mandokir SAY_DING_KILL","DING!"),
(11382,2,0,14,0,100,"mandokir SAY_WATCH","I'm keeping my eye on you, $N!"),
(11382,3,0,14,0,100,"mandokir SAY_WATCH_WHISPER","Don't make me angry. You won't like it when I'm angry."),
(11380,0,0,14,0,100,"mandokir SAY_GRATS_JINDO","GRATS!"),
(11380,1,0,14,8425,100,"jindo SAY_AGGRO","Welcome to da great show friends! Step right up to die!");

-- marli
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1309008 AND -1309005;
DELETE FROM `creature_text` WHERE `entry`=14510;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(14510,0,0,14,8418,100,"marli SAY_AGGRO","Draw me to your web mistress Shadra. Unleash your venom!"),
(14510,1,0,14,0,100,"marli SAY_TRANSFORM","Shadra, make of me your avatar!"),
(14510,2,0,14,0,100,"marli SAY_SPIDER_SPAWN","Aid me my brood!"),
(14510,3,0,14,8423,100,"marli SAY_DEATH","Bless you mortal for this release. Hakkar controls me no longer...");

-- clintar
DELETE FROM `script_texts` WHERE `entry`=-1000283;
DELETE FROM `creature_text` WHERE `entry`=16364;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(16364,0,0,12,0,100,"clintar SAY_RELIC1","That's the first relic, but there are still two more. Follow me, $N.");

-- freed soul
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1329003 AND -1329000;
DELETE FROM `creature_text` WHERE `entry`=11136;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(11136,0,0,12,0,100,"freed soul SAY_ZAPPED0","Thanks to Egan"),
(11136,0,1,12,0,100,"freed soul SAY_ZAPPED1","Rivendare must die"),
(11136,0,2,12,0,100,"freed soul SAY_ZAPPED2","Who you gonna call?"),
(11136,0,3,12,0,100,"freed soul SAY_ZAPPED3","Don't cross those beams!");

-- erland
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000317 AND -1000306;
DELETE FROM `creature_text` WHERE `entry` IN (1978,1950,1951);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(1978,0,0,12,0,100,"erland SAY_QUESTACCEPT","Let's get to the others, and keep an eye open for those wolves cutside..."),
(1978,1,0,12,0,100,"erland SAY_START","Be careful, $N. Those wolves like to hide among the trees."),
(1978,2,0,12,0,100,"erland SAY_AGGRO_1","A $C attacks!"),
(1978,2,1,12,0,100,"erland SAY_AGGRO_2","Beware! I am under attack!"),
(1978,2,2,12,0,100,"erland SAY_AGGRO_3","Oh no! A $C is upon us!"),
(1978,3,0,12,0,100,"erland SAY_PROGRESS","We're almost there!"),
(1978,4,0,12,0,100,"erland SAY_LAST","We made it! Thanks, $N. I couldn't have gotten without you."),
(1950,0,0,12,0,100,"erland SAY_RANE","It's good to see you again, Erland. What is your report?"),
(1978,5,0,12,0,100,"erland SAY_RANE_ANSWER","Masses of wolves are to the east, and whoever lived at Malden's Orchard is gone."),
(1978,6,0,12,0,100,"erland SAY_MOVE_QUINN","If I am excused, then I'd like to check on Quinn..."),
(1978,7,0,12,0,100,"erland SAY_QUINN","Hello, Quinn. How are you faring?"),
(1951,0,0,12,0,100,"erland SAY_QUINN_ANSWER","I've been better. Ivar the Foul got the better of me..."),
(1978,8,0,12,0,100,"erland SAY_BYE","Try to take better care of yourself, Quinn. You were lucky this time.");

-- converted sentry
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000189 AND -1000188;
DELETE FROM `creature_text` WHERE `entry`=24981;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(24981,0,0,12,0,100,"converted sentry SAY_CONVERTED_1","Deployment sucessful. Trespassers will be neutralized."),
(24981,0,1,12,0,100,"converted sentry SAY_CONVERTED_2","Objective acquired. Initiating security routines.");

-- example creature
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1999910 AND -1999900;

-- example escort
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1999921 AND -1999910;

-- example gossip codebox
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1999924 AND -1999922;

-- azuregos
DELETE FROM `script_texts` WHERE `entry`=-1000100;
DELETE FROM `creature_text` WHERE `entry`=6109;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(6109,0,0,14,0,100,"azuregos SAY_TELEPORT","Come, little ones. Face me!");

-- ame
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000522 AND -1000517;
DELETE FROM `creature_text` WHERE `entry`=9623;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(9623,0,0,12,0,100,"ame SAY_READY","A-Me good. Good, A-Me. Follow... follow A-Me. Home. A-Me go home."),
(9623,1,0,12,0,100,"ame SAY_AGGRO1","$c, no hurt A-Me. A-Me good."),
(9623,2,0,12,0,100,"ame SAY_SEARCH","Good... good, A-Me. A-Me good. Home. Find home."),
(9623,3,0,12,0,100,"ame SAY_AGGRO2","Danger. Danger! $c try hurt A-Me."),
(9623,4,0,12,0,100,"ame SAY_AGGRO3","Bad, $c. $c, bad!"),
(9623,5,0,12,0,100,"ame SAY_FINISH","A-Me home! A-Me good! Good A-Me. Home. Home. Home.");

-- ringo
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000433 AND -1000416;
DELETE FROM `creature_text` WHERE `entry` IN (9999,9997);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(9999,0,0,12,0,100,"ringo SAY_RIN_START_1","Well, I'm not sure how far I'll make it in this state... I'm feeling kind of faint..."),
(9999,0,1,12,0,100,"ringo SAY_RIN_START_2","Remember, if I faint again, the water that Spraggle gave you will revive me."),
(9999,1,0,12,0,100,"ringo SAY_FAINT_1","The heat... I can't take it..."),
(9999,1,1,12,0,100,"ringo SAY_FAINT_2","Maybe... you could carry me?"),
(9999,1,2,12,0,100,"ringo SAY_FAINT_3","Uuuuuuggggghhhhh...."),
(9999,1,3,12,0,100,"ringo SAY_FAINT_4","I'm not feeling so well..."),
(9999,2,0,12,0,100,"ringo SAY_WAKE_1","Where... Where am I?"),
(9999,2,1,12,0,100,"ringo SAY_WAKE_2","I am feeling a little better now, thank you."),
(9999,2,2,12,0,100,"ringo SAY_WAKE_3","Yes, I must go on."),
(9999,2,3,12,0,100,"ringo SAY_WAKE_4","How am I feeling? Quite soaked, thank you."),
(9999,3,0,12,0,100,"ringo SAY_RIN_END_1","Spraggle! I didn't think I'd make it back!"),
(9997,0,0,12,0,100,"ringo SAY_SPR_END_2","Ringo! You're okay!"),
(9999,4,0,12,0,100,"ringo SAY_RIN_END_3","Oh... I'm feeling faint..."),
(9999,5,0,16,0,100,"ringo EMOTE_RIN_END_4","%s collapses onto the ground."),
(9999,6,0,16,0,100,"ringo EMOTE_RIN_END_5","%s stands up after a short pause."),
(9999,7,0,12,0,100,"ringo SAY_RIN_END_6","Ugh."),
(9997,1,0,12,0,100,"ringo SAY_SPR_END_7","Ringo? Wake up! Don't worry, I'll take care of you."),
(9999,8,0,16,0,100,"ringo EMOTE_RIN_END_8","%s fades away after a long pause.");

-- Corrections
DELETE FROM `creature_text` WHERE `entry`=3850;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`language`,`emote`,`comment`,`text`) VALUES
(3850,0,0,14,0,100,7,1,"prisoner ashcrombe SAY_FREE_AS","Follow me and I'll open the courtyard door for you."),
(3850,1,0,14,0,100,7,1,"prisoner ashcrombe SAY_OPEN_DOOR_AS","I have just the spell to get this door open. Too bad the cell doors weren't locked so haphazardly."),
(3850,2,0,14,0,100,7,1,"prisoner ashcrombe SAY_POST_DOOR_AS","There it is! Wide open. Good luck to you conquering what lies beyond. I must report back to the Kirin Tor at once!"),
(3850,3,0,12,0,100,7,1,"prisoner ashcrombe SAY_BOSS_DIE_AS","For once I agree with you... scum.");

DELETE FROM `creature_text` WHERE `entry`=7766;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(7766,0,0,12,0,100,"tyrion spybot SAY_TYRION_1","Wait here. Spybot will make Lescovar come out as soon as possible. Be ready! Attack only after you've overheard their conversation."),
(7766,1,0,14,0,100,"lord gregor lescovar SAY_TYRION_2","That's it! That's what you were waiting for! KILL THEM!");

-- Issue 1426: Attack on Camp Narache
UPDATE `quest_template` SET `OfferRewardText`='This is quite alarming indeed! But with this information we can call on our brethren from Bloodhoof Village to help thwart the attack. You have saved the lives of many $r, $N.', `RequestItemsText`='You have a look of concern about you,$N. What news do you bring?' WHERE `Id`=24857;
-- Issue 1520: Banish the Demons
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (19973,22327,22201,22195,22204,22392,20557,22291,23322);
UPDATE `creature_template` SET `ainame`='SmartAI' WHERE `entry` IN (19973,22327,22201,22195,22204,22392,20557,22291,23322);
UPDATE `creature_template` SET `flags_extra`=130, `unit_flags`=33554432 WHERE `entry` IN (23322,23327);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (19973,22327,22201,22195,22204,22392,20557,22291,23322);
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(19973,0,0,0,8,0,100,1,40825,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On spell hit - Set phase 1'),
(19973,0,1,0,6,1,100,0,0,0,0,0,33,23327,0,0,0,0,0,16,0,0,0,0,0,0,0, 'On death in phase 1 - give quest credit'),
(20557,0,0,0,8,0,100,1,40825,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On spell hit - Set phase 1'),
(20557,0,1,0,6,1,100,0,0,0,0,0,33,23327,0,0,0,0,0,16,0,0,0,0,0,0,0, 'On death in phase 1 - give quest credit'),
(20557,0,2,0,4,0,100,0,0,0,0,0,11,22911,0,0,0,0,0,2,0,0,0,0,0,0,0, 'On aggro - cast charge'),
(20557,0,3,0,0,0,100,0,5000,11000,20000,27000,11,36406,0,0,0,0,0,2,0,0,0,0,0,0,0,'In combat - cast breath'),
(22195,0,0,0,8,0,100,1,40825,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On spell hit - Set phase 1'),
(22195,0,1,0,6,1,100,0,0,0,0,0,33,23327,0,0,0,0,0,16,0,0,0,0,0,0,0, 'On death in phase 1 - give quest credit'),
(22195,0,2,0,0,0,75,0,2500,7500,14000,18000,11,34017,0,0,0,0,0,2,0,0,0,0,0,0,0, 'In combat - cast rain of chaos'),
(22195,0,3,0,0,0,100,0,10100,14100,122000,130000,11,11980,0,0,0,0,0,5,0,0,0,0,0,0,0, 'In combat - cast curse of weakness'),
(22201,0,0,0,8,0,100,1,40825,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On spell hit - Set phase 1'),
(22201,0,1,0,6,1,100,0,0,0,0,0,33,23327,0,0,0,0,0,16,0,0,0,0,0,0,0, 'On death in phase 1 - give quest credit'),
(22204,0,0,0,8,0,100,1,40825,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On spell hit - Set phase 1'),
(22204,0,1,0,6,1,100,0,0,0,0,0,33,23327,0,0,0,0,0,16,0,0,0,0,0,0,0, 'On death in phase 1 - give quest credit'),
(22291,0,0,0,8,0,100,1,40825,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On spell hit - Set phase 1'),
(22291,0,1,0,6,1,100,0,0,0,0,0,33,23327,0,0,0,0,0,16,0,0,0,0,0,0,0, 'On death in phase 1 - give quest credit'),
(22291,0,2,0,0,0,100,0,6300,12800,6300,12800,11,32736,0,0,0,0,0,2,0,0,0,0,0,0,0, 'In combat - cast mortal strike'),
(22327,0,0,0,8,0,100,1,40825,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On spell hit - Set phase 1'),
(22327,0,1,0,6,1,100,0,0,0,0,0,33,23327,0,0,0,0,0,16,0,0,0,0,0,0,0, 'On death in phase 1 - give quest credit'),
(22392,0,0,0,8,0,100,1,40825,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On spell hit - Set phase 1'),
(22392,0,1,0,6,1,100,0,0,0,0,0,33,23327,0,0,0,0,0,16,0,0,0,0,0,0,0, 'On death in phase 1 - give quest credit'),
(23322,0,0,1,54,0,100,0,0,0,0,0,11,40849,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On spawn - cast portal'),
(23322,0,1,0,61,0,100,0,0,0,0,0,11,40857,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Link with 0 - cast aura');
-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 1881: The Honored Dead
SET @GUARD := 25342;
SET @WORKER := 25343;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=45474 AND `ConditionTypeOrReference`=36;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (@GUARD,@WORKER) AND `id` IN (2,3);
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUARD,0,2,3,8,0,100,0,45474,0,0,0,33,@GUARD,0,0,0,0,0,7,0,0,0,0,0,0,0,'Dead Caravan Guard - On Spellhit - Give Quest Credit'),
(@GUARD,0,3,0,61,0,100,0,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,'Dead Caravan Guard - On Spellhit - Despawn'),
(@WORKER,0,2,3,8,0,100,0,45474,0,0,0,33,@GUARD,0,0,0,0,0,7,0,0,0,0,0,0,0,'Dead Caravan Worker - On Spellhit - Give Quest Credit'),
(@WORKER,0,3,0,61,0,100,0,0,0,0,0,41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,'Dead Caravan Worker - On Spellhit - Despawn');
-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 2075: Bring Down Those Shields
UPDATE `creature_template` SET `ainame`='SmartAI' WHERE `entry`=24464;
DELETE FROM `smart_scripts` WHERE `entryorguid` =24464 AND `id`=1;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(24464,0,1,0,8,0,100,0,50133,0,0,0,28,43874,3,0,0,0,0,1,0,0,0,0,0,0,0,'Scourging Crystal - On Spellhit Scourging Crystal Controller - Remove Scourge Mur''gul Camp: Force Shield Arcane Purple x3 on self');
-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 2077 
-- SmartAI for nest and creature
UPDATE creature_template SET AIName='SmartAI' WHERE entry=24518;
UPDATE gameobject_template SET AIName='SmartGameObjectAI' WHERE `entry` IN (186814,190283);
DELETE FROM `smart_scripts` WHERE `entryorguid`=24518 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (186814,190283) AND `source_type`=1;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- Talonshrike
(24518,0,0,0,38,0,100,0,0,1,0,0,69,0,0,0,0,0,0,8,0,0,0,1597.4,-3903.79,79.702,0.0,'Talonshrike - On notification  - fly to nest'),
(24518,0,1,0,0,0,100,0,5000,5000,10000,12000,11,49865,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,' Talonshrike - In Combat - 5 seconds - Cast Eye Peck'),
(24518,0,2,0,0,0,100,0,3000,3000,5000,7000,11,32909,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,' Talonshrike - In Combat - 3 seonds - Cast Talon Strike'),
-- Talonshrike's Egg
(186814,1,0,0,70,0,100,0,2,0,0,0,45,0,1,0,0,0,0,11,24518,500,0,0.0,0.0,0.0,0.0,'Talonshrikes Egg - On use - Notify Talonshrike'),
(190283,1,0,0,70,0,100,0,2,0,0,0,45,0,1,0,0,0,0,11,24518,500,0,0.0,0.0,0.0,0.0,'Talonshrikes Egg - On use - Notify Talonshrike');
-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 4363: Crashin' Thrashin' Racer
UPDATE `creature_template` SET `spell1`=49297 WHERE `entry` IN (27664,40281);
UPDATE `creature_template_addon` SET `auras`='49384' WHERE `entry`=27664;
UPDATE `creature_template_addon` SET `auras`='75110' WHERE `entry`=40281;
-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 5320: Fields of Grief
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=375;
DELETE FROM `smart_scripts` WHERE `entryorguid`=375 AND `source_type`=1;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(375,1,0,0,70,0,100,0,2,0,0,0,70,120,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,'Tirisfal Pumpkin - On Use - Respawn/restock after 120s');
-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 8401: Anatoly will talk
SET @SASHA := 26935;
SET @ANATOLY := 26971;
SET @HORSE := 27626;
SET @TATJANA := 27627;
SET @SPELL_SHOOT := 48815;
SET @SPELL_DART := 49134;
SET @SPELL_PING := 49135;
SET @SPELL_MOUNT_HORSE := 49138;
DELETE FROM `creature_text` WHERE `entry` IN (@SASHA,@ANATOLY);
INSERT IGNORE INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@SASHA,0,0,'I''m old enough to shoot beasts like you right between the eyes... at twice this distance.',12,0,100,0,0,0,'Sasha'),
(@SASHA,1,0,'Don''t you dare talk about my father, monster. He was twice the man you''ll ever be.',12,0,100,0,0,0,'Sasha'),
(@SASHA,2,0,'I''d rather be dead than be one of you! You think you''re still human? You''re... animals!',12,0,100,0,0,0,'Sasha'),
(@SASHA,3,0,'Surprise, you scum!  You''re going to tell me where my sister is or I''ll put a bucketful of truesilver bullets through your wife''s heart.',12,0,100,0,0,0,'Sasha'),
(@SASHA,4,0,'Where is Anya?',12,0,100,0,0,0,'Sasha'),
(@SASHA,5,0,'There is one last thing.  I need to know where Arugal is.',12,0,100,0,0,0,'Sasha'),
(@ANATOLY,0,0,'How old are you, lass?',12,0,100,0,0,0,'Anatoly'),
(@ANATOLY,1,0,'You won''t get away with this, you know? You''re just a kid.',12,0,100,0,0,0,'Anatoly'),
(@ANATOLY,2,0,'Your father was weak, Sasha... he didn''t have the guts to do what had to be done.',12,0,100,0,0,0,'Anatoly'),
(@ANATOLY,3,0,'We''ll all end up serving the Lich King, kid. Better this way than becoming a rotten corpse.',12,0,100,0,0,0,'Anatoly'),
(@ANATOLY,4,0,'Stop!  Do not shoot!  Do not hurt Tatjana!',12,0,100,0,0,0,'Anatoly'),
(@ANATOLY,5,0,'The brat''s held prisoner in the wolf den on the other side of the mountain.  She was to be taken to Arugal.  Are we free to go now?',12,0,100,0,0,0,'Anatoly'),
(@ANATOLY,6,0,'Forgive me, Tatjana... ',12,0,100,0,0,0,'Anatoly'),
(@ANATOLY,7,0,'Nothing you can do can compare to what Arugal can do to us!  I will tear you apart myself!',12,0,100,0,0,0,'Anatoly');
DELETE FROM `vehicle_template_accessory` WHERE `entry`=@HORSE;
INSERT IGNORE INTO `vehicle_template_accessory` (`entry`,`accessory_entry`,`seat_id`,`minion`,`description`,`summontype`,`summontimer`) VALUES
(@HORSE,@TATJANA,0,0,'Tatjana''s Horse',8,30000);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=@HORSE;
INSERT IGNORE INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`,`user_type`) VALUES
(@HORSE,@SPELL_MOUNT_HORSE,1,0);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (@SPELL_DART,@SPELL_PING);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=@SPELL_SHOOT;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,@SPELL_SHOOT,0,0,31,0,3,@ANATOLY,0,0,0,'','Spell Shoot targets Anatoly'),
(13,1,@SPELL_DART,0,0,31,0,3,@TATJANA,0,0,0,'','Spell Tranquilizer Dart targets Tatjana'),
(13,1,@SPELL_PING,0,0,31,0,3,@HORSE,0,0,0,'','Spell Tatjana Ping effect0 targets Tatjana''s Horse');
UPDATE `creature` SET `spawntimesecs`=60 WHERE `id`=@ANATOLY;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@SASHA,@ANATOLY,@TATJANA);
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@TATJANA;
UPDATE `creature_template` SET `speed_run`=1.28571, `AIName`='SmartAI' WHERE `entry`=@HORSE;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@SASHA,@ANATOLY,@HORSE,@TATJANA) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@SASHA*100,@ANATOLY*100,@ANATOLY*100+1,@ANATOLY*100+2,@ANATOLY*100+3,@ANATOLY*100+4,@HORSE*100) AND `source_type`=9;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@SASHA,0,0,3,38,1,100,0,0,1,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Sasha - On data set 0 1 (phase 1) - Say line'),
(@SASHA,0,1,3,38,1,100,0,0,2,0,0,1,1,0,0,0,0,0,7,0,0,0,0,0,0,0,'Sasha - On data set 0 2 (phase 1) - Say line'),
(@SASHA,0,2,3,38,1,100,0,0,3,0,0,1,2,0,0,0,0,0,7,0,0,0,0,0,0,0,'Sasha - On data set 0 3 (phase 1) - Say line'),
(@SASHA,0,3,0,61,1,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Sasha - Linked with events 0,1,2 (phase 1) - Set data 0 0'),
(@SASHA,0,4,5,38,0,100,0,0,4,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Sasha - On data set 0 4 - Set event phase 0'),
(@SASHA,0,5,0,61,0,100,0,0,0,0,0,80,@SASHA*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Sasha - On data set 0 4 - Run script'),
(@SASHA,0,6,0,25,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Sasha - On reset - Set event phase 1'),
(@ANATOLY,0,0,0,1,1,100,0,10000,20000,45000,60000,87,@ANATOLY*100+1,@ANATOLY*100+2,@ANATOLY*100+3,@ANATOLY*100+4,0,0,1,0,0,0,0,0,0,0,'Anatoly - On update OOC (phase 1) - Run random script'),
(@ANATOLY,0,1,2,38,0,100,0,0,1,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Anatoly - On data set 0 1 - Set event phase 0'),
(@ANATOLY,0,2,3,61,0,100,0,0,1,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Anatoly - On data set 0 1 - Set run'),
(@ANATOLY,0,3,0,61,0,100,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,4057.442,-4140.824,211.1911,0,'Anatoly - On data set 0 1 - Move to position'),
(@ANATOLY,0,4,5,34,0,100,0,0,1,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Anatoly - On movement inform - Set unit_field_bytes1 (kneel)'),
(@ANATOLY,0,5,0,61,0,100,0,0,0,0,0,80,@ANATOLY*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Anatoly - On movement inform - Run script'),
(@ANATOLY,0,6,0,25,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Anatoly - On reset - Set event phase 1'),
(@HORSE,0,0,0,11,0,100,0,0,0,0,0,28,@SPELL_MOUNT_HORSE,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tatjana''s Horse - On spawn - Remove aura Mount Tatjana''s Horse'),
(@HORSE,0,1,2,8,0,100,0,@SPELL_PING,0,0,0,2,1812,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tatjana''s Horse - On spellhit Tatjana Ping - Set faction'),
(@HORSE,0,2,3,61,0,100,0,0,0,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tatjana''s Horse - On spellhit Tatjana Ping - Stop autoattack'),
(@HORSE,0,3,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tatjana''s Horse - On spellhit Tatjana Ping - Set eventphase 1'),
(@HORSE,0,4,0,8,1,100,0,@SPELL_MOUNT_HORSE,0,0,0,80,@HORSE*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Tatjana''s Horse - On spellhit Mount Tatjana''s Horse (phase 1) - Run script'),
(@HORSE,0,5,6,40,0,100,0,19,0,0,0,28,@SPELL_MOUNT_HORSE,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tatjana''s Horse - On WP 19 reached - Remove aura Mount Tatjana''s Horse'),
(@HORSE,0,6,7,61,0,100,0,0,0,0,0,15,12330,0,0,0,0,0,21,2,0,0,0,0,0,0,'Tatjana''s Horse - On WP 19 reached - Quest credit'),
(@HORSE,0,7,8,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,9,@ANATOLY,0,30,0,0,0,0,'Tatjana''s Horse - On WP 19 reached - Set data 0 1'),
(@HORSE,0,8,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tatjana''s Horse - On WP 19 reached - Despawn'),
(@TATJANA,0,0,0,11,0,100,0,0,0,0,0,11,43671,0,0,0,0,0,9,@HORSE,0,5,0,0,0,0,'Tatjana - On respawn - Spellcast Ride Vehicle'),
(@TATJANA,0,1,2,8,0,100,0,@SPELL_DART,0,0,0,11,@SPELL_PING,2,0,0,0,0,1,0,0,0,0,0,0,0,'Tatjana - On spellhit Tranquilizer Dart - Spellcast Tatjana Ping'),
(@TATJANA,0,2,3,61,0,100,0,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tatjana - On spellhit Tranquilizer Dart - Set faction'),
(@TATJANA,0,3,0,61,0,100,0,0,0,0,0,18,33024,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tatjana - On spellhit Tranquilizer Dart - Set unit_flags'),
(@TATJANA,0,4,0,0,0,100,0,2000,6000,9000,12000,11,32009,0,0,0,0,0,2,0,0,0,0,0,0,0,'Tatjana - On update IC - Spellcast Cutdown'),
(@TATJANA,0,5,0,38,0,100,0,0,1,0,0,41,15000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tatjana - On data set 0 1 - Despawn after 15 seconds'),
(@SASHA*100,9,0,0,0,0,100,0,0,0,0,0,1,3,0,0,0,0,0,7,0,0,0,0,0,0,0,'Sasha script - Say line'),
(@SASHA*100,9,1,0,0,0,100,0,17000,17000,0,0,1,4,0,0,0,0,0,7,0,0,0,0,0,0,0,'Sasha script - Say line'),
(@SASHA*100,9,2,0,0,0,100,0,16700,16700,0,0,1,5,0,0,0,0,0,7,0,0,0,0,0,0,0,'Sasha script - Say line'),
(@SASHA*100,9,3,0,0,0,100,0,10700,10700,0,0,11,@SPELL_SHOOT,0,0,0,0,0,9,@ANATOLY,0,30,0,0,0,0,'Sasha script - Say line'),
(@SASHA*100,9,4,0,0,0,100,0,60000,60000,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Sasha script - Set event phase 1'),
(@SASHA*100,9,5,0,0,0,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Sasha script - Set data 0 0'),
(@ANATOLY*100,9,0,0,0,0,100,0,2400,2400,0,0,45,0,4,0,0,0,0,9,@SASHA,0,30,0,0,0,0,'Anatoly script 0 - Set data 0 4'),
(@ANATOLY*100,9,1,0,0,0,100,0,5000,5000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,'Anatoly script 0 - Say line'),
(@ANATOLY*100,9,2,0,0,0,100,0,16800,16800,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,'Anatoly script 0 - Say line'),
(@ANATOLY*100,9,3,0,0,0,100,0,16800,16800,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,'Anatoly script 0 - Say line'),
(@ANATOLY*100,9,4,0,0,0,100,0,5000,5000,0,0,11,47457,0,0,0,0,0,1,0,0,0,0,0,0,0,'Anatoly script 0 - Spellcast Worgen Transform - Male'),
(@ANATOLY*100,9,5,0,0,0,100,0,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Anatoly script 0 - Reset unit_field_bytes1'),
(@ANATOLY*100,9,6,0,0,0,100,0,500,500,0,0,5,53,0,0,0,0,0,1,0,0,0,0,0,0,0,'Anatoly script 0 - Play emote'),
(@ANATOLY*100,9,7,0,0,0,100,0,150,150,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,'Anatoly script 0 - Say line'),
(@ANATOLY*100,9,8,0,0,0,100,0,0,0,0,0,45,0,1,0,0,0,0,9,@TATJANA,0,10,0,0,0,0,'Anatoly script 0 - Set data 0 1'),
(@ANATOLY*100,9,9,0,0,0,100,0,1200,1200,0,0,69,0,0,0,0,0,0,8,0,0,0,4069.991,-4130.805,211.464,0,'Anatoly script 0 - Move to position'),
(@ANATOLY*100,9,10,0,0,0,100,0,15000,15000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Anatoly script 0 - Despawn'),
(@ANATOLY*100+1,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Anatoly script 1 - Say line'),
(@ANATOLY*100+1,9,1,0,0,0,100,0,2000,2000,0,0,45,0,1,0,0,0,0,9,@SASHA,0,20,0,0,0,0,'Anatoly script 1 - Set data 0 1'),
(@ANATOLY*100+2,9,0,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Anatoly script 2 - Say line'),
(@ANATOLY*100+2,9,1,0,0,0,100,0,3500,3500,0,0,45,0,1,0,0,0,0,9,@SASHA,0,20,0,0,0,0,'Anatoly script 2 - Set data 0 1'),
(@ANATOLY*100+3,9,0,0,0,0,100,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Anatoly script 3 - Say line'),
(@ANATOLY*100+3,9,1,0,0,0,100,0,5000,5000,0,0,45,0,2,0,0,0,0,9,@SASHA,0,20,0,0,0,0,'Anatoly script 3 - Set data 0 1'),
(@ANATOLY*100+4,9,0,0,0,0,100,0,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Anatoly script 4 - Say line'),
(@ANATOLY*100+4,9,1,0,0,0,100,0,5000,5000,0,0,45,0,3,0,0,0,0,9,@SASHA,0,20,0,0,0,0,'Anatoly script 4 - Set data 0 1'),
(@HORSE*100,9,0,0,0,0,100,0,500,500,0,0,53,1,@HORSE,0,0,0,0,1,0,0,0,0,0,0,0,'Tatjana''s Horse script - Start WP movement');
-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 8405: A Sister's Pledge and Hour Of The Worg
SET @SASHA := 26935;
SET @ANYA := 27646;
SET @CAGE := 189977;
DELETE FROM `creature_text` WHERE `entry`=@SASHA AND `groupid` IN (6,7,8);
DELETE FROM `creature_text` WHERE `entry`=@ANYA;
INSERT IGNORE INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@SASHA,6,0,'Anya!!  You''re all right!',12,0,100,0,0,0,'Sasha'),
(@SASHA,7,0,'Badmoon?  You mean Bloodmoon?',12,0,100,0,0,0,'Sasha'),
(@SASHA,8,0,'Don''t worry, sister... no one can hurt you now.',12,0,100,0,0,0,'Sasha'),
(@ANYA,0,0,'You won''t eat me, will you?',12,0,100,0,0,0,'Anya'),
(@ANYA,1,0,'Sister!  The mean men were going to take me to Badmoon Isle.  They wanted to turn me into one of them.',12,0,100,0,0,0,'Anya'),
(@ANYA,2,0,'That''s what I said!  Badmoon!  Sasha... don''t ever leave me again!  First they took papa, then they took you... I don''t want to be alone with them!',12,0,100,0,0,0,'Anya');

DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (@ANYA,@SASHA);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`IN(@ANYA,@SASHA);
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=189977;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@SASHA,@ANYA) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@CAGE AND `source_type`=1;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@CAGE*100,@SASHA*100+1,@ANYA*100) AND `source_type`=9;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- Anya
(@ANYA,0,0,1,20,0,100,0,12411,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Anya - On quest A Sister''s Pledge rewarded - Say line'),
(@ANYA,0,1,2,61,0,100,0,0,0,0,0,9,0,0,0,0,0,0,13,189977,0,5,0,0,0,0,'Anya - On quest Anatoly will talk rewarded - Activate GO'),
(@ANYA,0,2,3,61,0,100,0,0,0,0,0,12,@SASHA,3,120000,0,0,0,8,0,0,0,4001.751,-4555.144,196.4673,1.719485,'Anya - On quest Anatoly will talk rewarded - Summon Sasha'),
(@ANYA,0,3,0,61,0,100,0,0,0,0,0,80,@ANYA*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Anya - On quest Anatoly will talk rewarded - Run script'),
-- Sasha
(@SASHA,0,7,0,54,0,100,0,0,0,0,0,53,1,@SASHA,0,0,0,0,1,0,0,0,0,0,0,0,'Sasha - Just summoned - Start WP movement'),
(@SASHA,0,8,9,40,0,100,0,4,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Sasha - On WP 4 reached - Set unit_field_bytes1 (kneel)'),
(@SASHA,0,9,0,61,0,100,0,0,0,0,0,80,@SASHA*100+1,2,0,0,0,0,1,0,0,0,0,0,0,0,'Sasha - On WP 4 reached - Run script'),
-- Cage
(@CAGE,1,0,0,70,0,100,0,0,0,0,0,80,@CAGE*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Cage - On GO activated - Run script'),
-- CageScripts
(@CAGE*100,9,0,0,0,0,100,0,10000,10000,0,0,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cage script - Reset GO'),
-- SashaScripts
(@SASHA*100+1,9,0,0,0,0,100,0,1000,1000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,'Sasha - On WP 4 reached - Say line'),
(@SASHA*100+1,9,1,0,0,0,100,0,16800,16800,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,'Sasha - On WP 4 reached - Say line'),
(@SASHA*100+1,9,2,0,0,0,100,0,16900,16900,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Sasha - On WP 4 reached - Say line'),
-- AnyaScripts
(@ANYA*100,9,0,0,0,0,100,0,1700,1700,0,0,69,0,0,0,0,0,0,8,0,0,0,3996.337,-4516.717,196.3168,0,'Anya script - Move to position'),
(@ANYA*100,9,1,0,0,0,100,0,13300,13300,0,0,1,1,0,0,0,0,0,7,0,0,0,0,0,0,0,'Anya script - Say line'),
(@ANYA*100,9,2,0,0,0,100,0,16800,16800,0,0,1,2,0,0,0,0,0,7,0,0,0,0,0,0,0,'Anya script - Say line'),
(@ANYA*100,9,3,0,0,0,100,0,88000,88000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Anya script - Despawn');
DELETE FROM `waypoints` WHERE `entry`=26935;
INSERT IGNORE INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(26935,1,4002.467,-4556.807,196.4988,''),
(26935,2,4001.879,-4555.998,196.4988,''),
(26935,3,3997.248,-4525.081,195.3569,''),
(26935,4,3996.828,-4519.888,195.6831,'');
-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (26581,27846) AND `source_type`=0;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(26581,0,1,0,62,0,100,0,9456,0,0,0,11,47740,0,0,0,0,0,7,0,0,0,0,0,0,0,'Koltira Deathweaver - On gossip option select - Spellcast World of Shadows'),
(26581,0,0,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Koltira Deathweaver - On gossip option select - Close gossip'),
(27846,0,0,0,62,0,100,0,9607,0,0,0,85,49747,0,0,0,0,0,7,0,0,0,0,0,0,0,'Junior Apothecary Lawrence - On gossip option select - Invoker spellcast Create Experimental Mixture');
-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 8032: Destroying the Altars
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=57853;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,57853,0,0,31,0,3,30742,0,0,0,'',"Master Summoner's Staff spell implicit target First Summoning Altar"),
(13,1,57853,0,1,31,0,3,30744,0,0,0,'',"Master Summoner's Staff spell implicit target Second Summoning Altar"),
(13,1,57853,0,2,31,0,3,30745,0,0,0,'',"Master Summoner's Staff spell implicit target Third Summoning Altar"),
(13,1,57853,0,3,31,0,3,30950,0,0,0,'',"Master Summoner's Staff spell implicit target Fourth Summoning Altar");
-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 7969: Pyroblast Cinnamon Ball (37582), G.N.E.R.D.S. (37583), Soothing Spearmint Candy (37584) & Chewy Fel Taffy (37585) duration fix
UPDATE `item_template` SET `flagsCustom` = 1 WHERE `entry` IN (37582,37583,37584,37585);
-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 7964: Hyperspeed Acceleration
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceGroup`=0 AND `SourceEntry`=54758;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(17,0,54758,0,0,7,0,202,375,0,0,0,'','Hyperspeed Acceleration requires 375 Engineering skill');
-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 7416: Twilight of the Dawn Runner 
UPDATE `smart_scripts` SET `event_type`=62, `event_param1`=7371, `comment`='Ithania - On gossip select - run timed action list' WHERE (`entryorguid`=17119 AND `source_type`=0 AND `id`=0);
-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=19 AND `SourceGroup`=0 AND `SourceEntry`=247;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(19,0,247,0,1,8,0,2,0,0,0,0,'',"Show quest only if Sharptalon's Claw (2) quest is rewarded AND"),
(19,0,247,0,1,8,0,23,0,0,0,0,'',"Show quest only if Ursangous's Paw (23) quest is rewarded AND"),
(19,0,247,0,1,8,0,24,0,0,0,0,'',"Show quest only if Shadumbra's Head (24) quest is rewarded AND");
-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 7011: Inactive Fel Reaver
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=22293);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 22293;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=22293 AND `source_type`=0);
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(22293,0,0,0,11,0,100,1,0,0,0,0,11,38757,0,0,0,0,0,1,0,0,0,0,0,0,0,'Inactive Fel Reaver Cast - Fel Reaver Freeze on Self');
-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 6212: Merciful Freedom
UPDATE `gameobject_template` SET AIName='SmartGameObjectAI', data2=0, ScriptName='' WHERE `entry` BETWEEN 187854 AND 187868;
UPDATE `gameobject_template` SET AIName='SmartGameObjectAI', data2=0, ScriptName='' WHERE `entry` BETWEEN 187870 AND 187874;
SET @Scourge_Cage :=187854;

DELETE FROM `smart_scripts` WHERE `entryorguid` BETWEEN 187854 AND 187868;
DELETE FROM `smart_scripts` WHERE `entryorguid` BETWEEN 187870 AND 187874;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18785400,18785500,18785600,18785700,18785800,18785900,18786000,18786100,18786200,18786300,18786400,18786500,18786600,18786700,18786800,18787000,18787100,18787200,18787300,18787400);
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- 187854
(@Scourge_Cage,1,0,1,70,0,100,0,2,0,0,0,33,25610,0,0,0,0,0,7,0,0,0,0,0,0,0,'Scourge Cage - Activated - Credit'),
(@Scourge_Cage,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,25610,5,0,0,0,0,0,'Scourge Cage - Linked - Set Data To Scourge Prisoner'),
(@Scourge_Cage,1,2,0,61,0,100,0,0,0,0,0,80,@Scourge_Cage*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Linked - Run Script'),
(@Scourge_Cage*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Script - Reset GameObject'),
-- 187855
(@Scourge_Cage+1,1,0,1,70,0,100,0,2,0,0,0,33,25610,0,0,0,0,0,7,0,0,0,0,0,0,0,'Scourge Cage - Activated - Credit'),
(@Scourge_Cage+1,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,25610,5,0,0,0,0,0,'Scourge Cage - Linked - Set Data To Scourge Prisoner'),
(@Scourge_Cage+1,1,2,0,61,0,100,0,0,0,0,0,80,(@Scourge_Cage+1)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Linked - Run Script'),
((@Scourge_Cage+1)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Script - Reset GameObject'),
-- 187856
(@Scourge_Cage+2,1,0,1,70,0,100,0,2,0,0,0,33,25610,0,0,0,0,0,7,0,0,0,0,0,0,0,'Scourge Cage - Activated - Credit'),
(@Scourge_Cage+2,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,25610,5,0,0,0,0,0,'Scourge Cage - Linked - Set Data To Scourge Prisoner'),
(@Scourge_Cage+2,1,2,0,61,0,100,0,0,0,0,0,80,(@Scourge_Cage+2)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Linked - Run Script'),
((@Scourge_Cage+2)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Script - Reset GameObject'),
-- 187857
(@Scourge_Cage+3,1,0,1,70,0,100,0,2,0,0,0,33,25610,0,0,0,0,0,7,0,0,0,0,0,0,0,'Scourge Cage - Activated - Credit'),
(@Scourge_Cage+3,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,25610,5,0,0,0,0,0,'Scourge Cage - Linked - Set Data To Scourge Prisoner'),
(@Scourge_Cage+3,1,2,0,61,0,100,0,0,0,0,0,80,(@Scourge_Cage+3)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Linked - Run Script'),
((@Scourge_Cage+3)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Script - Reset GameObject'),
-- 187858
(@Scourge_Cage+4,1,0,1,70,0,100,0,2,0,0,0,33,25610,0,0,0,0,0,7,0,0,0,0,0,0,0,'Scourge Cage - Activated - Credit'),
(@Scourge_Cage+4,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,25610,5,0,0,0,0,0,'Scourge Cage - Linked - Set Data To Scourge Prisoner'),
(@Scourge_Cage+4,1,2,0,61,0,100,0,0,0,0,0,80,(@Scourge_Cage+4)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Linked - Run Script'),
((@Scourge_Cage+4)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Script - Reset GameObject'),
-- 187859
(@Scourge_Cage+5,1,0,1,70,0,100,0,2,0,0,0,33,25610,0,0,0,0,0,7,0,0,0,0,0,0,0,'Scourge Cage - Activated - Credit'),
(@Scourge_Cage+5,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,25610,5,0,0,0,0,0,'Scourge Cage - Linked - Set Data To Scourge Prisoner'),
(@Scourge_Cage+5,1,2,0,61,0,100,0,0,0,0,0,80,(@Scourge_Cage+5)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Linked - Run Script'),
((@Scourge_Cage+5)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Script - Reset GameObject'),
-- 187860
(@Scourge_Cage+6,1,0,1,70,0,100,0,2,0,0,0,33,25610,0,0,0,0,0,7,0,0,0,0,0,0,0,'Scourge Cage - Activated - Credit'),
(@Scourge_Cage+6,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,25610,5,0,0,0,0,0,'Scourge Cage - Linked - Set Data To Scourge Prisoner'),
(@Scourge_Cage+6,1,2,0,61,0,100,0,0,0,0,0,80,(@Scourge_Cage+6)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Linked - Run Script'),
((@Scourge_Cage+6)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Script - Reset GameObject'),
-- 187861 
(@Scourge_Cage+7,1,0,1,70,0,100,0,2,0,0,0,33,25610,0,0,0,0,0,7,0,0,0,0,0,0,0,'Scourge Cage - Activated - Credit'),
(@Scourge_Cage+7,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,25610,5,0,0,0,0,0,'Scourge Cage - Linked - Set Data To Scourge Prisoner'),
(@Scourge_Cage+7,1,2,0,61,0,100,0,0,0,0,0,80,(@Scourge_Cage+7)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Linked - Run Script'),
((@Scourge_Cage+7)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Script - Reset GameObject'),
-- 187862
(@Scourge_Cage+8,1,0,1,70,0,100,0,2,0,0,0,33,25610,0,0,0,0,0,7,0,0,0,0,0,0,0,'Scourge Cage - Activated - Credit'),
(@Scourge_Cage+8,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,25610,5,0,0,0,0,0,'Scourge Cage - Linked - Set Data To Scourge Prisoner'),
(@Scourge_Cage+8,1,2,0,61,0,100,0,0,0,0,0,80,(@Scourge_Cage+8)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Linked - Run Script'),
((@Scourge_Cage+8)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Script - Reset GameObject'),
-- 187863
(@Scourge_Cage+9,1,0,1,70,0,100,0,2,0,0,0,33,25610,0,0,0,0,0,7,0,0,0,0,0,0,0,'Scourge Cage - Activated - Credit'),
(@Scourge_Cage+9,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,25610,5,0,0,0,0,0,'Scourge Cage - Linked - Set Data To Scourge Prisoner'),
(@Scourge_Cage+9,1,2,0,61,0,100,0,0,0,0,0,80,(@Scourge_Cage+9)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Linked - Run Script'),
((@Scourge_Cage+9)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Script - Reset GameObject'),
-- 187864
(@Scourge_Cage+10,1,0,1,70,0,100,0,2,0,0,0,33,25610,0,0,0,0,0,7,0,0,0,0,0,0,0,'Scourge Cage - Activated - Credit'),
(@Scourge_Cage+10,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,25610,5,0,0,0,0,0,'Scourge Cage - Linked - Set Data To Scourge Prisoner'),
(@Scourge_Cage+10,1,2,0,61,0,100,0,0,0,0,0,80,(@Scourge_Cage+10)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Linked - Run Script'),
((@Scourge_Cage+10)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Script - Reset GameObject'),
-- 187865
(@Scourge_Cage+11,1,0,1,70,0,100,0,2,0,0,0,33,25610,0,0,0,0,0,7,0,0,0,0,0,0,0,'Scourge Cage - Activated - Credit'),
(@Scourge_Cage+11,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,25610,5,0,0,0,0,0,'Scourge Cage - Linked - Set Data To Scourge Prisoner'),
(@Scourge_Cage+11,1,2,0,61,0,100,0,0,0,0,0,80,(@Scourge_Cage+11)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Linked - Run Script'),
((@Scourge_Cage+11)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Script - Reset GameObject'),
-- 187866
(@Scourge_Cage+12,1,0,1,70,0,100,0,2,0,0,0,33,25610,0,0,0,0,0,7,0,0,0,0,0,0,0,'Scourge Cage - Activated - Credit'),
(@Scourge_Cage+12,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,25610,5,0,0,0,0,0,'Scourge Cage - Linked - Set Data To Scourge Prisoner'),
(@Scourge_Cage+12,1,2,0,61,0,100,0,0,0,0,0,80,(@Scourge_Cage+12)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Linked - Run Script'),
((@Scourge_Cage+12)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Script - Reset GameObject'),
-- 187867
(@Scourge_Cage+13,1,0,1,70,0,100,0,2,0,0,0,33,25610,0,0,0,0,0,7,0,0,0,0,0,0,0,'Scourge Cage - Activated - Credit'),
(@Scourge_Cage+13,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,25610,5,0,0,0,0,0,'Scourge Cage - Linked - Set Data To Scourge Prisoner'),
(@Scourge_Cage+13,1,2,0,61,0,100,0,0,0,0,0,80,(@Scourge_Cage+13)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Linked - Run Script'),
((@Scourge_Cage+13)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Script - Reset GameObject'),
-- 187868
(@Scourge_Cage+14,1,0,1,70,0,100,0,2,0,0,0,33,25610,0,0,0,0,0,7,0,0,0,0,0,0,0,'Scourge Cage - Activated - Credit'),
(@Scourge_Cage+14,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,25610,5,0,0,0,0,0,'Scourge Cage - Linked - Set Data To Scourge Prisoner'),
(@Scourge_Cage+14,1,2,0,61,0,100,0,0,0,0,0,80,(@Scourge_Cage+14)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Linked - Run Script'),
((@Scourge_Cage+14)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Script - Reset GameObject'),
-- 187870
(@Scourge_Cage+16,1,0,1,70,0,100,0,2,0,0,0,33,25610,0,0,0,0,0,7,0,0,0,0,0,0,0,'Scourge Cage - Activated - Credit'),
(@Scourge_Cage+16,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,25610,5,0,0,0,0,0,'Scourge Cage - Linked - Set Data To Scourge Prisoner'),
(@Scourge_Cage+16,1,2,0,61,0,100,0,0,0,0,0,80,(@Scourge_Cage+16)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Linked - Run Script'),
((@Scourge_Cage+16)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Script - Reset GameObject'),
-- 187871
(@Scourge_Cage+17,1,0,1,70,0,100,0,2,0,0,0,33,25610,0,0,0,0,0,7,0,0,0,0,0,0,0,'Scourge Cage - Activated - Credit'),
(@Scourge_Cage+17,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,25610,5,0,0,0,0,0,'Scourge Cage - Linked - Set Data To Scourge Prisoner'),
(@Scourge_Cage+17,1,2,0,61,0,100,0,0,0,0,0,80,(@Scourge_Cage+17)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Linked - Run Script'),
((@Scourge_Cage+17)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Script - Reset GameObject'),
-- 187872
(@Scourge_Cage+18,1,0,1,70,0,100,0,2,0,0,0,33,25610,0,0,0,0,0,7,0,0,0,0,0,0,0,'Scourge Cage - Activated - Credit'),
(@Scourge_Cage+18,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,25610,5,0,0,0,0,0,'Scourge Cage - Linked - Set Data To Scourge Prisoner'),
(@Scourge_Cage+18,1,2,0,61,0,100,0,0,0,0,0,80,(@Scourge_Cage+18)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Linked - Run Script'),
((@Scourge_Cage+18)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Script - Reset GameObject'),
-- 187873
(@Scourge_Cage+19,1,0,1,70,0,100,0,2,0,0,0,33,25610,0,0,0,0,0,7,0,0,0,0,0,0,0,'Scourge Cage - Activated - Credit'),
(@Scourge_Cage+19,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,25610,5,0,0,0,0,0,'Scourge Cage - Linked - Set Data To Scourge Prisoner'),
(@Scourge_Cage+19,1,2,0,61,0,100,0,0,0,0,0,80,(@Scourge_Cage+19)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Linked - Run Script'),
((@Scourge_Cage+19)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Script - Reset GameObject'),
-- 187874
(@Scourge_Cage+20,1,0,1,70,0,100,0,2,0,0,0,33,25610,0,0,0,0,0,7,0,0,0,0,0,0,0,'Scourge Cage - Activated - Credit'),
(@Scourge_Cage+20,1,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,25610,5,0,0,0,0,0,'Scourge Cage - Linked - Set Data To Scourge Prisoner'),
(@Scourge_Cage+20,1,2,0,61,0,100,0,0,0,0,0,80,(@Scourge_Cage+20)*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Linked - Run Script'),
((@Scourge_Cage+20)*100,9,0,0,0,0,100,0,65000,65000,65000,65000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Cage - Script - Reset GameObject');
UPDATE `creature` SET spawntimesecs=0 WHERE id IN(25610);
UPDATE `creature_template` SET AIName='SmartAI', ScriptName='' WHERE entry IN(25610);
DELETE FROM `smart_scripts` WHERE entryorguid IN(25610);
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25610,0,0,0,10,0,100,0,1,15,15000,30000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Prisoner - Range - Say 0'),
(25610,0,1,0,38,0,100,0,1,1,0,0,1,1,5000,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Prisoner - Data Set - Say 1'),
(25610,0,2,3,52,0,100,0,1,25610,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Prisoner - Data Set - Unseen'),
(25610,0,3,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Scourge Prisoner - Linked - Desapwn');
DELETE FROM `conditions` WHERE SourceTypeOrReferenceId=22 AND SourceEntry=25610;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(22, 1, 25610, 0, 0, 9, 0, 11676, 0, 0, 1, 0, '', 'SAI - Help Text Only if Player in Range Have No Quest');
DELETE FROM `creature_text` WHERE entry IN(25610);
INSERT IGNORE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(25610, 0, 0, "Don't let them turn me into one of those aberrations!", 12, 0, 100, 1, 0, 0, 'Scourge Prisoner'),
(25610, 0, 1, "Kill me... Kill me now!", 12, 0, 100, 1, 0, 0, 'Scourge Prisoner'),
(25610, 0, 2, "Somebody please... Help...", 12, 0, 100, 1, 0, 0, 'Scourge Prisoner'),
(25610, 0, 3, "Don't let them turn me into one of those aberrations!", 12, 0, 100, 1, 0, 0, 'Scourge Prisoner'),
(25610, 1, 0, "Freedom at last! I must return to Warsong Hold at once!", 12, 0, 100, 1, 0, 0, 'Scourge Prisoner'),
(25610, 1, 1, "I am forever indebted to you, friend.", 12, 0, 100, 1, 0, 0, 'Scourge Prisoner'),
(25610, 1, 2, "Thank you, friend.", 12, 0, 100, 1, 0, 0, 'Scourge Prisoner'),
(25610, 1, 3, "You have my thanks, stranger.", 12, 0, 100, 1, 0, 0, 'Scourge Prisoner');
-- Add creature_text entry for the shout
DELETE FROM `creature_text` WHERE `entry`=23905;
INSERT IGNORE INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES 
(23905,0,0,'Keep Moving!',14,7,100,0,0,0, 'Major Mills');
-- Add Smart AI for the quest.
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (23905) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2390500) AND `source_type`=9;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(23905,0,0,0,19,1,100,0,11198,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Major Mills - On Quest Accept - Say text'),
(23905,0,1,0,19,1,100,0,11198,0,0,0,80,2390500,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Major Mills: On quest accept call main script'),
-- After 5 seconds: Summon Guards
(2390500,9,0,0,1,0,100,0,5000,5000,0,0,12,23900,1,900000,0,0,0,8,0,0,0,-3904.77,-4635.09,9.62735,5.49334, 'Take Down Tethyr: Summon Theramore Marksman'),
(2390500,9,1,0,1,0,100,0,5000,5000,0,0,12,23900,1,900000,0,0,0,8,0,0,0,-3856.59,-4622.45,9.24753,3.87856, 'Take Down Tethyr: Summon Theramore Marksman'),
(2390500,9,2,0,1,0,100,0,5000,5000,0,0,12,23900,1,900000,0,0,0,8,0,0,0,-3917.6,-4648.53,9.32604,5.56795, 'Take Down Tethyr: Summon Theramore Marksman'),
(2390500,9,3,0,1,0,100,0,5000,5000,0,0,12,23900,1,900000,0,0,0,8,0,0,0,-3890.48,-4620.7,9.55527,4.99383, 'Take Down Tethyr: Summon Theramore Marksman'),
(2390500,9,4,0,1,0,100,0,5000,5000,0,0,12,23900,1,900000,0,0,0,8,0,0,0,-3865.94,-4617.2,9.26262,4.16523, 'Take Down Tethyr: Summon Theramore Marksman'),
(2390500,9,5,0,1,0,100,0,5000,5000,0,0,12,23900,1,900000,0,0,0,8,0,0,0,-3834.8,-4645.41,9.25827,3.61152, 'Take Down Tethyr: Summon Theramore Marksman'),
(2390500,9,6,0,1,0,100,0,5000,5000,0,0,12,23900,1,900000,0,0,0,8,0,0,0,-3826.61,-4655.32,9.21484,3.13243, 'Take Down Tethyr: Summon Theramore Marksman'),
(2390500,9,7,0,1,0,100,0,5000,5000,0,0,12,23900,1,900000,0,0,0,8,0,0,0,-3830.76,-4673.74,9.50962,2.70832, 'Take Down Tethyr: Summon Theramore Marksman'),
(2390500,9,8,0,1,0,100,0,5000,5000,0,0,12,23900,1,900000,0,0,0,8,0,0,0,-3843.65,-4687.59,9.6436,2.43735, 'Take Down Tethyr: Summon Theramore Marksman'),
(2390500,9,9,0,1,0,100,0,5000,5000,0,0,12,23900,1,900000,0,0,0,8,0,0,0,-3858.49,-4703.49,9.17411,2.33525, 'Take Down Tethyr: Summon Theramore Marksman'),
(2390500,9,10,0,1,0,100,0,5000,5000,0,0,12,23900,1,900000,0,0,0,8,0,0,0,-3851.97,-4697.24,9.36834,2.33525, 'Take Down Tethyr: Summon Theramore Marksman'),
(2390500,9,11,0,1,0,100,0,5000,5000,0,0,12,23900,1,900000,0,0,0,8,0,0,0,-3924.35,-4656.55,9.15409,5.80749, 'Take Down Tethyr: Summon Theramore Marksman'),
 -- After 8 seconds Summon Tethyr
(2390500,9,12,0,1,0,100,0,8000,8000,0,0,12,23900,1,900000,0,0,0,8,0,0,0,-3891.03,-4671.17,-1.52,0.74, 'Take Down Tethyr: Summon Tethyr');
-- Object SAI
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry` IN (180453,180454,180455);
DELETE FROM `smart_scripts` WHERE entryorguid IN (180453,180454,180455) AND `source_type`=1;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`COMMENT`) VALUES
(180453,1,0,1,62,0,100,0,6561,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'close gossip'),
(180453,1,1,0,61,0,100,1,0,0,0,0,56,20456,1,0,0,0,0,7,0,0,0,0,0,0,0,'additem 20456'),
(180454,1,0,1,62,0,100,0,6560,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'close gossip'),
(180454,1,1,0,61,0,100,1,0,0,0,0,56,20455,1,0,0,0,0,7,0,0,0,0,0,0,0,'additem 20455'),
(180455,1,0,1,62,0,100,0,6559,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'close gossip'),
(180455,1,1,0,61,0,100,1,0,0,0,0,56,20454,1,0,0,0,0,7,0,0,0,0,0,0,0,'additem 20454');
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 3068: On Ruby Wings
-- This will add flying and the abilities to the action bar so the quest is completable using fireball to kill ghouls.
UPDATE `creature_template` SET `spell1`=50430, `spell2`=55987, `spell3`=50348, `InhabitType`=5 WHERE `entry`=27996;
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT IGNORE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
(33628,21636,530,1,1,0,0,-2898.17,4497.223,-42.86146,2.9147,600,0,0,5914,0,0),
(33700,21636,530,1,1,0,0,-3013.516,4510.811,-42.86374,5.009095,600,0,0,5914,0,0),
(34285,21636,530,1,1,0,0,-2974.286,4441.98,-47.21168,1.43117,600,0,0,5914,0,0);
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 3608: Seal of Ascension
-- TODO: The creature skills appear at first 5 slots instead at 1st, 4th, 5th, 6th and 7th as seen in the videos.
DELETE FROM `conditions` WHERE `SourceEntry`=16053;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,16053,0,0,31,0, 3,10321,0,0,0,'','Dominion Of Soul can only target Emberstrife'),
(17,0,16053,0,0,38,1,10,4,0,0,0,'','Emberstrife''s HP must be 10% or less');
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 3656: Hungry Nether Rays
SET @NPC := 23219;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@NPC;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@NPC;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@NPC AND `source_type`=0);
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@NPC,0,1,0,25,0,100,1,0,530,0,0,11,32942,2,0,0,0,0,1,0,0,0,0,0,0,0,'Blackwind Warp Chaser - Respawn - Cast Phasing Invisibility'),
(@NPC,0,2,0,4,0,100,0,0,0,0,0,28,32942,0,0,0,0,0,1,0,0,0,0,0,0,0,'Blackwind Warp Chaser - Aggro - Remove Phasing Invisibility'),
(@NPC,0,3,0,0,0,100,0,3000,6000,4000,7000,11,32739,0,0,0,0,0,5,0,0,0,0,0,0,0,'Blackwind Warp Chaser - Combat - Cast Venomous Bite'),
(@NPC,0,4,0,0,0,100,0,12000,15000,20000,40000,11,32920,0,0,0,0,0,2,0,0,0,0,0,0,0,'Blackwind Warp Chaser - Combat - Cast Warp'),
(@NPC,0,5,0,4,0,100,0,2000,5000,7000,15000,11,37417,1,0,0,0,0,5,0,0,0,0,0,0,0,'Blackwind Warp Chaser - Aggro - Cast Warp Charge'),
(@NPC,0,6,0,6,0,100,0,0,0,0,0,33,23438,0,0,0,0,0,7,0,0,0,0,0,0,0,'Blackwind Warp Chaser - Death - Credit');
DELETE FROM `conditions` WHERE SourceTypeOrReferenceId=22 AND SourceEntry IN(@NPC);
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(22,7,@NPC,0,0,29,0,23439,15,0,0,0, '', 'SAI Trigger Only If Hungry Nether Ray is near the creature when it dies ');
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 3853: The Restless Dead
-- Change condition to target right entry of Reanimated Crusader
UPDATE conditions SET ConditionValue2=30202 WHERE SourceTypeOrReferenceId=13 AND SourceEntry=57806 AND ConditionTypeOrReference=31;
-- Reanimated Crusader SAI
SET @Reanimated_Crusader := 30202;
SET @CreditSpell := 57808;
SET @HolyWater := 57806;
-- ?dd SAI for Reanimated Crusader
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@Reanimated_Crusader;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Reanimated_Crusader;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Reanimated_Crusader,0,0,1,8,0,100,1,@HolyWater,0,0,0,11,@CreditSpell,0,0,0,0,0,7,0,0,0,0,0,0,0,'Reanimated Crusader - On hit by spell Holy Water - cast Freed Crusader Soul'),
(@Reanimated_Crusader,0,1,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reanimated Crusader - link - force despawn'),
(@Reanimated_Crusader,0,2,0,0,0,100,0,1000,5000,6500,12000,11,32674,0,0,0,0,0,2,0,0,0,0,0,0,0,'Reanimated Crusader - IC - Cast Avenger"s Shield'),
(@Reanimated_Crusader,0,3,0,0,0,100,0,5000,10000,8500,20000,11,58154,0,0,0,0,0,2,0,0,0,0,0,0,0,'Reanimated Crusader - IC - Hammer of Injustice'),
(@Reanimated_Crusader,0,4,0,2,0,100,0,10,90,7000,15000,11,58153,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reanimated Crusader - On health percentage - Cast Unholy Light on self after Hammer of Injustice'),
(@Reanimated_Crusader,0,5,0,14,0,100,0,1000,20,8000,20000,11,58153,0,0,0,0,0,7,0,0,0,0,0,0,0,'Reanimated Crusader - On friendly HP deficit - Cast Unholy Light on allies');

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 4149: Not on my watch / [NPC] Lump
UPDATE `smart_scripts` SET `event_param2`=3 WHERE `entryorguid`=18351 AND `event_type`=62;
UPDATE `smart_scripts` SET `event_type`=25 WHERE `entryorguid`=18351 AND `id`=0;
UPDATE `creature_template` SET `unit_flags`=528 WHERE `entry`=18351;
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 4206: Eliminate the Competition
SET @NPC_SIGRID        := 30086; -- Sigrid Iceborn
SET @MENUID_SIGRID     := 9870;
SET @NPC_EFREM         := 30081; -- Efrem the Faithful
SET @MENUID_EFREM      := 9869;
SET @NPC_ONUZUN        := 30180; -- Onu'zun
SET @MENUID_ONUZUN     := 9878;
SET @NPC_TINKY         := 30162; -- Tinky Wickwhistle
SET @MENUID_TINKY      := 9875;
UPDATE `creature_template` SET `npcflag`=1,`AIName`='SmartAI' WHERE `entry` IN (@NPC_SIGRID,@NPC_EFREM,@NPC_ONUZUN,@NPC_TINKY);
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (@NPC_SIGRID,@NPC_EFREM,@NPC_ONUZUN,@NPC_TINKY);
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- Sigrid Iceborn
(@NPC_SIGRID,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@NPC_SIGRID,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@NPC_SIGRID,0,2,0,4,1,100,1,0,0,0,0,11,61168,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Throw on Aggro'),
(@NPC_SIGRID,0,3,0,9,1,100,0,5,30,3500,4100,11,61168,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Throw'),
(@NPC_SIGRID,0,4,0,9,1,100,0,30,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Throw Range'),
(@NPC_SIGRID,0,5,0,9,1,100,0,9,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@NPC_SIGRID,0,6,0,9,1,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Throw Range'),
(@NPC_SIGRID,0,7,0,9,1,100,0,5,30,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Throw Range'),
(@NPC_SIGRID,0,8,0,0,1,100,0,3000,7000,13000,16700,11,61164,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Impale'),
(@NPC_SIGRID,0,9,0,13,1,100,0,12000,18000,0,0,11,57635,0,0,0,0,0,6,1,0,0,0,0,0,0,'Cast Disengage on Target Spellcast'),
(@NPC_SIGRID,0,10,0,1,0,100,0,500,1000,600000,600000,11,61165,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Frostbite Weapon on Spawn'),
(@NPC_SIGRID,0,11,12,62,0,100,0,@MENUID_SIGRID,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'On gossip select - Close gossip'),
(@NPC_SIGRID,0,12,13,61,0,100,0,0,0,0,0,42,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Set invincible'),
(@NPC_SIGRID,0,13,14,61,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Remove flags 256+512'),
(@NPC_SIGRID,0,14,15,61,0,100,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Set faction hostile'),
(@NPC_SIGRID,0,15,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Talk'),
(@NPC_SIGRID,0,16,17,2,0,100,0,0,1,0,0,33,@NPC_SIGRID,0,0,0,0,0,7,0,0,0,0,0,0,0,'On 1 hp - Give killcredit'),
(@NPC_SIGRID,0,17,18,61,0,100,0,0,0,0,0,2,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Restore faction'),
(@NPC_SIGRID,0,18,19,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Talk'),
(@NPC_SIGRID,0,19,0,61,0,100,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Evade'),
-- Efrem the Faithful
(@NPC_EFREM,0,0,0,1,0,100,0,500,1000,600000,600000,11,17232,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Devotion Aura on Spawn'),
(@NPC_EFREM,0,1,0,2,0,100,1,0,50,0,0,11,17233,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Lay on Hands at 50% HP'),
(@NPC_EFREM,0,2,0,0,0,100,0,3300,5500,16000,17600,11,14518,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Crusader Strike'),
(@NPC_EFREM,0,3,0,0,0,80,0,9900,9900,21000,32000,11,13005,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Hammer of Justice'),
(@NPC_EFREM,0,4,5,62,0,100,0,@MENUID_EFREM,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'On gossip select - Close gossip'),
(@NPC_EFREM,0,5,6,61,0,100,0,0,0,0,0,42,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Set invincible'),
(@NPC_EFREM,0,6,7,61,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Remove flags 256+512'),
(@NPC_EFREM,0,7,8,61,0,100,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Set faction hostile'),
(@NPC_EFREM,0,8,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Talk'),
(@NPC_EFREM,0,9,10,2,0,100,0,0,1,0,0,33,@NPC_EFREM,0,0,0,0,0,7,0,0,0,0,0,0,0,'On 1 hp - Give killcredit'),
(@NPC_EFREM,0,10,11,61,0,100,0,0,0,0,0,2,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Restore faction'),
(@NPC_EFREM,0,11,0,61,0,100,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Evade'),
-- Onu'zun
(@NPC_ONUZUN,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@NPC_ONUZUN,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@NPC_ONUZUN,0,2,0,4,1,100,1,0,0,0,0,11,15242,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt on Aggro'),
(@NPC_ONUZUN,0,3,0,9,1,100,0,0,40,3400,4700,11,15242,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast bolt'),
(@NPC_ONUZUN,0,4,0,9,1,100,0,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in bolt Range'),
(@NPC_ONUZUN,0,5,0,9,1,100,0,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@NPC_ONUZUN,0,6,0,9,1,100,0,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in bolt Range'),
(@NPC_ONUZUN,0,7,0,3,1,100,0,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@NPC_ONUZUN,0,8,0,3,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@NPC_ONUZUN,0,9,0,3,2,100,0,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@NPC_ONUZUN,0,10,0,1,0,100,0,500,1000,600000,600000,11,18100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Frost Armor on Spawn'),
(@NPC_ONUZUN,0,11,0,13,0,100,0,12000,18000,0,0,11,15122,0,0,0,0,0,6,1,0,0,0,0,0,0,'Cast Counterspell on Target Spellcast'),
(@NPC_ONUZUN,0,12,0,0,1,100,0,5000,5000,14500,17800,11,15244,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Cone of Cold'),
(@NPC_ONUZUN,0,13,14,62,0,100,0,@MENUID_ONUZUN,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'On gossip select - Close gossip'),
(@NPC_ONUZUN,0,14,15,61,0,100,0,0,0,0,0,42,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Set invincible'),
(@NPC_ONUZUN,0,15,16,61,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Remove flags 256+512'),
(@NPC_ONUZUN,0,16,17,61,0,100,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Set faction hostile'),
(@NPC_ONUZUN,0,17,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Talk'),
(@NPC_ONUZUN,0,18,19,2,0,100,0,0,1,0,0,33,@NPC_ONUZUN,0,0,0,0,0,7,0,0,0,0,0,0,0,'On 1 hp - Give killcredit'),
(@NPC_ONUZUN,0,19,20,61,0,100,0,0,0,0,0,2,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Restore faction'),
(@NPC_ONUZUN,0,20,0,61,0,100,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Evade'),
-- Tinky Wickwhistle
(@NPC_TINKY,0,0,0,0,0,100,0,7000,8000,15600,17800,11,61552,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Wrench Strike'),
(@NPC_TINKY,0,1,0,0,0,100,0,13000,14000,21300,23400,11,37666,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Heavy Dynamite'),
(@NPC_TINKY,0,2,3,62,0,100,0,@MENUID_TINKY,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'On gossip select - Close gossip'),
(@NPC_TINKY,0,3,4,61,0,100,0,0,0,0,0,42,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Set invincible'),
(@NPC_TINKY,0,4,5,61,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Remove flags 256+512'),
(@NPC_TINKY,0,5,6,61,0,100,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Set faction hostile'),
(@NPC_TINKY,0,6,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Talk'),
(@NPC_TINKY,0,7,8,2,0,100,0,0,1,0,0,33,@NPC_TINKY,0,0,0,0,0,7,0,0,0,0,0,0,0,'On 1 hp - Give killcredit'),
(@NPC_TINKY,0,8,9,61,0,100,0,0,0,0,0,2,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Restore faction'),
(@NPC_TINKY,0,9,10,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Talk'),
(@NPC_TINKY,0,10,0,61,0,100,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Evade');
DELETE FROM `creature_text` WHERE `entry` IN (@NPC_SIGRID,@NPC_EFREM,@NPC_ONUZUN,@NPC_TINKY);
INSERT IGNORE INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@NPC_SIGRID,0,0,'Taste my steel, little $g boy : girl;!',12,0,100,0,0,0,'say'),
(@NPC_SIGRID,1,0,'You fight well, little one. I am bested for now. We will meet again I assure you. When we do I will be better prepared!',12,0,100,66,0,0,'say'),
(@NPC_EFREM,0,0,'You dare to touch ME?! You won''t keep me from proving myself to the Lich King!',12,0,100,0,0,0,'say'),
(@NPC_ONUZUN,0,0,'Onu''zun gonna kill you dead!',12,0,100,0,0,0,'say'),
(@NPC_TINKY,0,0,'Grrrrrrrr! I''ll kneecap ya!',12,0,100,0,0,0,'say'),
(@NPC_TINKY,1,0,'WHEE!!!',12,0,100,0,0,0,'say');
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 4252: Bringing Down the Iron Thane
SET @Thane :=    26405;
SET @Anvil :=    26406;
SET @Guid :=     120590;
SET @Script := 2640600;
SET @Golem :=    29005;
-- SAI for Thane
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@Thane;
UPDATE `creature_template` SET `AIName`='SmartAI',`faction_A`=1954,`faction_H`=1954 WHERE `entry`=@Thane ;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@Thane,@Script);
INSERT IGNORE INTO `smart_scripts` VALUES
(@Thane,0,0,0,38,0,100,0,0,1,0,0,80,@Script,2,0,0,0,0,1,0,0,0,0,0,0,0,'Thane - On data set 0 1 - Run timed action list'),
(@Thane,0,1,0,1,0,100,0,0,0,20000,20000,75,47922,0,0,0,0,0,1,0,0,0,0,0,0,0,'Iron Thane - OOC - Add Aura'),
(@Thane,0,2,0,0,0,100,0,5000,9000,10000,14000,11,61575,0,0,0,0,0,2,0,0,0,0,0,0,0,'Iron Thane - IC - Cast Furyhammer'),
(@Thane,0,3,0,6,0,100,0,0,0,0,0,28,47923,0,0,0,0,0,19,@Anvil,30,0,0,0,0,0,'Thane - Script action 3 - Remove stun aura from Avil'),
-- Script 0 for Thane
(@Script,9,0,0,0,0,100,0,0,0,0,0,75,47923,0,0,0,0,0,19,@Anvil,30,0,0,0,0,0,'Thane - Script action 0 - Add aura stunned to Anvil'),
(@Script,9,1,0,0,0,100,0,500,500,0,0,28,47922,0,0,0,0,0,1,0,0,0,0,0,0,0,'Thane - Script action 1 - Remove inurnable aura from self'),
(@Script,9,2,0,0,0,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Thane - Script action 2 - Data set 0 0'),
(@Script,9,3,0,0,0,100,0,14500,14500,0,0,28,47923,0,0,0,0,0,19,@Anvil,30,0,0,0,0,0,'Thane - Script action 3 - Remove stun aura from Avil');
-- Add SAI for Anvil
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@Anvil;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@Anvil;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Anvil;
INSERT IGNORE INTO `smart_scripts` VALUES
(@Anvil,0,0,0,8,0,100,0,47911,0,0,0,45,0,1,0,0,0,0,19,@Thane,30,0,0,0,0,0,'Anvil - on Spell hit - Data set 0 1 on Thane'),
(@Anvil,0,1,0,0,0,100,0,5000,7500,1200,14500,11,61577,0,0,0,0,0,2,0,0,0,0,0,0,0,'Anvil - IC - Cast Molten Blast');
-- Add npc_spellclick_spells
UPDATE `creature_template` SET `VehicleId`=149,`spell1`=61380,`spell2`=47911 WHERE `entry`=@Golem;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=@Golem;
INSERT IGNORE INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`,`user_type`) VALUES
(@Golem,60944,1,0);
-- Add conditions for npc_spellclick_spells
DELETE FROM `conditions` WHERE `SourceGroup`=@Golem AND `SourceTypeOrReferenceId`=18;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(18,@Golem,60944,0,1,9,0,12199,0,0,0,0,'', 'Player must be on quest 12199'),
(18,@Golem,60944,0,2,9,0,12153,0,0,0,0,'', 'Player must be on quest 12153');
-- Add conditions EMP to hit Anvil /for new condition system/
DELETE FROM `conditions` WHERE `SourceEntry`=47911 AND `SourceTypeOrReferenceId`=13;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(13,1,47911,0,0,31,0,3,@Anvil,0,0,0,'', 'EMP can hit only Anvil /rewritten condition/');
-- Add conditions EMP to cast only, if in 10 yards to anvil
DELETE FROM `conditions` WHERE `SourceEntry`=47911 AND `SourceTypeOrReferenceId`=17;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(17,0,47911,0,0,29,0,@Anvil,10,0,0,0,'', 'EMP can cast, if in 10 yards of Anvil');
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Issue 4888: Event after finishing The Dragonforged Hilt quest chain
SET @NPC_MYRALION_SUNBLAZE := 36642;
SET @NPC_CALADIS_BRIGHTSPEAR := 36624;
SET @NPC_SUNREAVER_WAR_MAGE := 36657;
SET @NPC_SILVER_COVENANT_SENTINEL := 36656;
SET @NPC_IMAGE_OF_ALEXTRASZA := 37829;
SET @NPC_IMAGE_OF_ANASTERIAN := 37844;
SET @NPC_IMAGE_OF_THALORIEN := 37828;
SET @NPC_IMAGE_OF_MORLEN := 37845;
SET @NPC_BLOOD_QUEEN_LANA_THEL := 37846;
SET @NPC_QUELDELAR_DUMMY := 37852;
SET @SPELL_FREEZE_GUARDS := 71365;
SET @SPELL_ICY_TOUCH_TRIGGER := 70589;
SET @SPELL_ICY_TOUCH_EFFECT := 70592;
SET @SPELL_THROW_SWORD := 70586;
SET @SPELL_EXPLOSION_DUMMY := 70000; -- Not OK!!
SET @EMOTE_TALK := 1;
SET @EMOTE_BOW := 2;
SET @EMOTE_QUESTION := 6;
SET @EMOTE_KNEE := 16;
SET @EMOTE_POINT := 25;
SET @EMOTE_STAND := 26;
SET @EMOTE_YES := 273;
SET @EMOTE_1H := 375;
SET @EMOTE_2H := 425;
SET @ITEM_QUELDELAR := 49767;
SET @DATA_CUSTOM_ACTION := 50;
SET @DATA_DESPAWN_ACTION := 41;
SET @WP_MYRALION := @NPC_MYRALION_SUNBLAZE;
SET @WP_CALADIS := @NPC_CALADIS_BRIGHTSPEAR;
SET @WP_THALORIEN := @NPC_IMAGE_OF_THALORIEN;
SET @WP_MORLEN := @NPC_IMAGE_OF_MORLEN;
SET @WP_BLOOD_QUEEN_1 := @NPC_BLOOD_QUEEN_LANA_THEL*100;
SET @WP_BLOOD_QUEEN_2 := @NPC_BLOOD_QUEEN_LANA_THEL*100+1;
SET @WP_GUARD_A_1 := @NPC_SILVER_COVENANT_SENTINEL*100;
SET @WP_GUARD_A_2 := @NPC_SILVER_COVENANT_SENTINEL*100+1;
SET @WP_GUARD_H_1 := @NPC_SUNREAVER_WAR_MAGE*100;
SET @WP_GUARD_H_2 := @NPC_SUNREAVER_WAR_MAGE*100+1;
SET @QUEST_RETURN_CALADIS_BRIGHTSPEAR := 24454;
SET @QUEST_RETURN_MYRALION_SUNBLAZE := 24558;
-- Set images as non-selectables
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33554432 WHERE `entry` IN (@NPC_IMAGE_OF_ALEXTRASZA,@NPC_IMAGE_OF_ANASTERIAN,@NPC_IMAGE_OF_THALORIEN,@NPC_IMAGE_OF_MORLEN);
-- Set Lana'thel as enemy and set OOC_NON_ATTACKABLE
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16,`unit_flags`=`unit_flags`|256 WHERE `entry`=@NPC_BLOOD_QUEEN_LANA_THEL;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=@SPELL_THROW_SWORD;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,@SPELL_THROW_SWORD,0,18,1,@NPC_QUELDELAR_DUMMY,0,0,'', "Throw Quel'delar on Quel'delar skull");
-- Set Morlen Coldgrip mount
DELETE FROM `creature_template_addon` WHERE (`entry`=@NPC_IMAGE_OF_MORLEN);
INSERT IGNORE INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@NPC_IMAGE_OF_MORLEN,0,25280,0,0,0,"");
-- Set AInames
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@NPC_CALADIS_BRIGHTSPEAR,@NPC_MYRALION_SUNBLAZE,@NPC_SILVER_COVENANT_SENTINEL,@NPC_SUNREAVER_WAR_MAGE,@NPC_IMAGE_OF_ALEXTRASZA,@NPC_IMAGE_OF_ANASTERIAN,@NPC_IMAGE_OF_THALORIEN,@NPC_IMAGE_OF_MORLEN,@NPC_BLOOD_QUEEN_LANA_THEL,@NPC_QUELDELAR_DUMMY);
DELETE FROM `smart_scripts` WHERE (`entryorguid` IN (@NPC_MYRALION_SUNBLAZE,@NPC_CALADIS_BRIGHTSPEAR,@NPC_IMAGE_OF_ALEXTRASZA,@NPC_IMAGE_OF_ANASTERIAN,@NPC_IMAGE_OF_THALORIEN,@NPC_IMAGE_OF_MORLEN,@NPC_BLOOD_QUEEN_LANA_THEL,@NPC_QUELDELAR_DUMMY) AND `source_type`=0);
DELETE FROM `smart_scripts` WHERE (`entryorguid` IN (@NPC_MYRALION_SUNBLAZE*100,@NPC_SILVER_COVENANT_SENTINEL*100,@NPC_BLOOD_QUEEN_LANA_THEL*100,@NPC_BLOOD_QUEEN_LANA_THEL*100+1) AND `source_type`=9);
DELETE FROM `smart_scripts` WHERE (`entryorguid` IN (-202775,-202776,-202777,-202778) AND `source_type`=0);
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- Image of Alextrasza
(@NPC_IMAGE_OF_ALEXTRASZA,0,0,0,38,0,100,0,@EMOTE_TALK,0,0,0,5,@EMOTE_TALK,0,0,0,0,0,1,0,0,0,0,0,0,0,"Image of Alexstrasza (at Quel'delar rest) - Emote Talk on Data Set"),
(@NPC_IMAGE_OF_ALEXTRASZA,0,1,0,38,0,100,0,@EMOTE_POINT,0,0,0,5,@EMOTE_POINT,0,0,0,0,0,1,0,0,0,0,0,0,0,"Image of Alexstrasza (at Quel'delar rest) - Emote Point on Data Set"),
(@NPC_IMAGE_OF_ALEXTRASZA,0,2,0,38,0,100,0,@DATA_CUSTOM_ACTION ,0,0,0,66,0,0,0,0,0,0,19,@NPC_IMAGE_OF_THALORIEN,0,0,0,0,0,0,"Image of Alexstrasza (at Quel'delar rest) - Set Orientation on Data Set"),
(@NPC_IMAGE_OF_ALEXTRASZA,0,3,0,38,0,100,0,@DATA_DESPAWN_ACTION,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Image of Alexstrasza (at Quel'delar rest) - Despawn on Data Set"),
-- Image of Anasterian
(@NPC_IMAGE_OF_ANASTERIAN,0,0,0,38,0,100,0,@EMOTE_TALK,0,0,0,5,@EMOTE_TALK,0,0,0,0,0,1,0,0,0,0,0,0,0,"Image of Anasterian (at Quel'delar rest) - Emote talk on Data Set"),
(@NPC_IMAGE_OF_ANASTERIAN,0,1,0,38,0,100,0,@EMOTE_BOW,0,0,0,5,@EMOTE_BOW,0,0,0,0,0,1,0,0,0,0,0,0,0,"Image of Anasterian (at Quel'delar rest) - Emote bow on Data Set"),
(@NPC_IMAGE_OF_ANASTERIAN,0,2,0,38,0,100,0,@EMOTE_POINT,0,0,0,5,@EMOTE_POINT,0,0,0,0,0,1,0,0,0,0,0,0,0,"Image of Anasterian (at Quel'delar rest) - Emote point on Data Set"),
(@NPC_IMAGE_OF_ANASTERIAN,0,3,0,38,0,100,0,@EMOTE_YES,0,0,0,5,@EMOTE_YES,0,0,0,0,0,1,0,0,0,0,0,0,0,"Image of Anasterian (at Quel'delar rest) - Emote yes on Data Set"),
(@NPC_IMAGE_OF_ANASTERIAN,0,4,0,38,0,100,0,@DATA_CUSTOM_ACTION ,0,0,0,66,0,0,0,0,0,0,19,@NPC_IMAGE_OF_THALORIEN,0,0,0,0,0,0,"Image of Anasterian (at Quel'delar rest) - Set Orientation"),
(@NPC_IMAGE_OF_ANASTERIAN,0,5,0,38,0,100,0,@DATA_DESPAWN_ACTION,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Image of Anasterian (at Quel'delar rest) - Despawn on data set"),
-- Image of Thalorien Dawnseeker
(@NPC_IMAGE_OF_THALORIEN,0,0,0,38,0,100,1,@DATA_CUSTOM_ACTION,0,0,0,53,0,@WP_THALORIEN,0,0,0,0,1,0,0,0,0,0,0,0,"Image of Thalorien Dawnseeker (at Quel'Delar rest) - Move to position on Data set"),
(@NPC_IMAGE_OF_THALORIEN,0,1,0,38,0,100,1,@EMOTE_BOW,0,0,0,5,@EMOTE_BOW,0,0,0,0,0,1,0,0,0,0,0,0,0,"Image of Thalorien Dawnseeker (at Quel'Delar rest) - Emote Bow on Data Set"),
(@NPC_IMAGE_OF_THALORIEN,0,2,0,38,0,100,1,@EMOTE_KNEE,0,0,0,5,@EMOTE_KNEE,0,0,0,0,0,1,0,0,0,0,0,0,0,"Image of Thalorien Dawnseeker (at Quel'Delar rest) - Emote Knee on Data Set"),
(@NPC_IMAGE_OF_THALORIEN,0,3,4,38,0,100,1,@EMOTE_1H,0,0,0,71,0,0,@ITEM_QUELDELAR,0,0,0,1,0,0,0,0,0,0,0,"Image of Thalorien Dawnseeker (at Quel'Delar rest) - Equip Sword Data Set"),
(@NPC_IMAGE_OF_THALORIEN,0,4,0,61,0,100,1,0,0,0,0,17,@EMOTE_1H,0,0,0,0,0,1,0,0,0,0,0,0,0,"Image of Thalorien Dawnseeker (at Quel'Delar rest) - EmoteState 2H on Data Set"),
(@NPC_IMAGE_OF_THALORIEN,0,5,0,38,0,100,1,@DATA_DESPAWN_ACTION,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Image of Thalorien Dawnseeker (at Quel'Delar rest) - Desapwn at data set"),
(@NPC_IMAGE_OF_THALORIEN,0,6,0,38,0,100,1,@DATA_CUSTOM_ACTION+1,0,0,0,71,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Image of Thalorien Dawnseeker (at Quel'Delar rest) - Show now weapon"),
-- Image of Morlen Coldgrip
(@NPC_IMAGE_OF_MORLEN,0,0,0,34,0,100,1,0,1,0,0,54,4000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Image of Morlen Coldgrip - Pause WP on 1st point"),
(@NPC_IMAGE_OF_MORLEN,0,1,0,34,0,100,1,0,2,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Image of Morlen Coldgrip - Despawn on last WP"),
(@NPC_IMAGE_OF_MORLEN,0,2,0,54,0,100,1,0,2,0,0,53,0,@WP_MORLEN,0,0,0,0,1,0,0,0,0,0,0,0,"Image of Morlen Coldgrip - Start WP on spawn"),
-- Blood-Queen Lana'thel
(@NPC_BLOOD_QUEEN_LANA_THEL,0,0,0,54,0,100,1,0,0,0,0,53,0,@WP_BLOOD_QUEEN_1,0,0,0,0,1,0,0,0,0,0,0,0,"Blood Quen Lana'thel (at Quel'delar rest) - Start WP on spawn"),
(@NPC_BLOOD_QUEEN_LANA_THEL,0,1,2,40,0,100,1,1,@WP_BLOOD_QUEEN_1,0,0,80,@NPC_BLOOD_QUEEN_LANA_THEL*100+0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Blood Quen Lana'thel (at Quel'delar rest) - Start first part of timed event when reached first point"),
(@NPC_BLOOD_QUEEN_LANA_THEL,0,2,0,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,19,@NPC_QUELDELAR_DUMMY,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Face to invisible dummy"),
(@NPC_BLOOD_QUEEN_LANA_THEL,0,3,0,40,0,100,1,2,@WP_BLOOD_QUEEN_2,0,0,80,@NPC_BLOOD_QUEEN_LANA_THEL*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Blood Quen Lana'thel (at Quel'delar rest) - Start second timed event when reached second point"),
(@NPC_QUELDELAR_DUMMY,0,1,0,8,0,100,0,@SPELL_THROW_SWORD,0,0,0,11,@SPELL_EXPLOSION_DUMMY,1,0,0,0,0,1,0,0,0,0,0,0,0,"Quel'delar dummy (at Quel'delar rest) - Cast shadow explosion when hitten by sword"),
-- Blood-Queen Lana'thel 1st action list
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,0,0,0,0,100,1,3000,3000,0,0,45,@DATA_CUSTOM_ACTION,0,0,0,0,0,9,@NPC_SILVER_COVENANT_SENTINEL,0,20,0,0,0,0,"Blood Quen Lana'thel (at Quel'Delar rest) - Make guards attack her"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,1,0,0,0,100,1,0,0,0,0,45,@DATA_CUSTOM_ACTION,0,0,0,0,0,9,@NPC_SUNREAVER_WAR_MAGE,0,20,0,0,0,0,"Blood Quen Lana'thel (at Quel'Delar rest) - Make guards attack her"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,2,0,0,0,100,1,3000,3000,0,0,1,1,0,0,0,0,0,1,0,0,20,0,0,0,0,"Blood Quen Lana'thel (at Quel'Delar rest) - Say 1"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,3,0,0,0,100,1,3000,3000,0,0,11,@SPELL_FREEZE_GUARDS,0,0,0,0,0,1,0,0,20,0,0,0,0,"Blood Quen Lana'thel (at Quel'Delar rest) - Cast Freeze Guards"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,4,0,0,0,100,1,0,0,0,0,45,@DATA_CUSTOM_ACTION+1,0,0,0,0,0,9,@NPC_SILVER_COVENANT_SENTINEL,0,20,0,0,0,0,"Blood Quen Lana'thel (at Quel'Delar rest) - Freeze guards"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,5,0,0,0,100,1,0,0,0,0,45,@DATA_CUSTOM_ACTION+1,0,0,0,0,0,9,@NPC_SUNREAVER_WAR_MAGE,0,20,0,0,0,0,"Blood Quen Lana'thel (at Quel'Delar rest) - Freeze guards"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,6,0,0,0,100,1,500,500,0,0,1,2,0,0,0,0,0,1,0,0,20,0,0,0,0,"Blood Quen Lana'thel (at Quel'Delar rest) - Say 2"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,7,0,0,0,100,1,4000,4000,0,0,1,3,0,0,0,0,0,1,0,0,20,0,0,0,0,"Blood Quen Lana'thel (at Quel'Delar rest) - Say 3"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,8,0,0,0,100,1,0,0,0,0,12,@NPC_IMAGE_OF_ALEXTRASZA,8,0,0,0,0,8,0,0,0,8120.65,780.068,481.87,6.14516,"Blood Queen Lana'thel (at Quel'Delar rest) - Summon Alextrasza"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,9,0,0,0,100,1,0,0,0,0,12,@NPC_IMAGE_OF_ANASTERIAN,8,0,0,0,0,8,0,0,0,8123.63,780.044,482.066,3.10017,"Blood Queen Lana'thel (at Quel'Delar rest) - Summon Anasterian"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,10,0,0,0,100,1,500,500,0,0,45,@EMOTE_POINT,0,0,0,0,0,19,@NPC_IMAGE_OF_ALEXTRASZA,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Call point talk on Alextrasza"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,11,0,0,0,100,1,100,100,0,0,45,@EMOTE_TALK,0,0,0,0,0,19,@NPC_IMAGE_OF_ALEXTRASZA,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Call emote talk on Alextrasza"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,12,0,0,0,100,1,4000,4000,0,0,5,@EMOTE_POINT,0,0,0,0,0,1,0,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Emote Point"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,13,0,0,0,100,1,0,0,0,0,45,@EMOTE_BOW,0,0,0,0,0,19,@NPC_IMAGE_OF_ANASTERIAN,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Call emote bow on Anasterian"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,14,0,0,0,100,1,2000,2000,0,0,45,@EMOTE_TALK,0,0,0,0,0,19,@NPC_IMAGE_OF_ALEXTRASZA,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Call emote talk on Alextrasza"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,15,0,0,0,100,1,2000,2000,0,0,45,@EMOTE_YES,0,0,0,0,0,19,@NPC_IMAGE_OF_ANASTERIAN,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Call emote yes on Anasterian"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,16,0,0,0,100,1,2000,2000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Say 4"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,17,0,0,0,100,1,0,0,0,0,12,@NPC_IMAGE_OF_THALORIEN,8,0,0,0,0,8,0,0,0,8125.07,773.643,482.395,1.72804,"Blood Queen Lana'thel (at Quel'Delar rest) - Summon Thalorien"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,18,0,0,0,100,1,500,500,0,0,45,@DATA_CUSTOM_ACTION,0,0,0,0,0,19,@NPC_IMAGE_OF_ALEXTRASZA,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Call set facing to Thalorien on Alextrasza"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,19,0,0,0,100,1,0,0,0,0,45,@DATA_CUSTOM_ACTION,0,0,0,0,0,19,@NPC_IMAGE_OF_ANASTERIAN,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Call set facing to Thalorien on Anasterian"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,20,0,0,0,100,1,1000,1000,0,0,45,@DATA_CUSTOM_ACTION,0,0,0,0,0,19,@NPC_IMAGE_OF_THALORIEN,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Call Thalorien Move"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,21,0,0,0,100,1,3000,3000,0,0,45,@EMOTE_TALK,0,0,0,0,0,19,@NPC_IMAGE_OF_ANASTERIAN,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Call Emote Talk on Anastarian"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,22,0,0,0,100,1,1000,1000,0,0,45,@EMOTE_BOW,0,0,0,0,0,19,@NPC_IMAGE_OF_THALORIEN,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Call Emote Bow on Thalorien"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,23,0,0,0,100,1,1000,1000,0,0,45,@EMOTE_POINT,0,0,0,0,0,19,@NPC_IMAGE_OF_ANASTERIAN,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Call Emote point on Anastarian"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,24,0,0,0,100,1,1000,1000,0,0,45,@EMOTE_KNEE,0,0,0,0,0,19,@NPC_IMAGE_OF_THALORIEN,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Call Emote Knee on Thalorien"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,25,0,0,0,100,1,1000,1000,0,0,45,@DATA_DESPAWN_ACTION,0,0,0,0,0,19,@NPC_IMAGE_OF_ALEXTRASZA,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Despawn Alextrasza"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,26,0,0,0,100,1,1000,1000,0,0,45,@DATA_DESPAWN_ACTION,0,0,0,0,0,19,@NPC_IMAGE_OF_ANASTERIAN,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Despawn Anastarian"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,27,0,0,0,100,1,1000,1000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Say 5"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,28,0,0,0,100,1,3000,3000,0,0,45,@EMOTE_1H,0,0,0,0,0,19,@NPC_IMAGE_OF_THALORIEN,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Call emote 2h on Thalorien"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,29,0,0,0,100,1,4000,4000,0,0,12,@NPC_IMAGE_OF_MORLEN,8,0,0,0,0,8,0,0,0,8119.94,787.208,481.39,5.00233,"Blood Queen Lana'thel (at Quel'Delar rest) - Summon Morlen Coldgrip"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,30,0,0,0,100,1,2000,2000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Say 6"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,31,0,0,0,100,1,2000,2000,0,0,86,@SPELL_ICY_TOUCH_TRIGGER,0,19,@NPC_IMAGE_OF_MORLEN,0,0,1,0,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Call cast of Morlen Coldgrip on Thalorien (dummy)"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,32,0,0,0,100,1,1000,1000,0,0,86,@SPELL_ICY_TOUCH_EFFECT,0,19,@NPC_IMAGE_OF_THALORIEN,0,0,1,0,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Call cast of Thalorien (insta self kill)"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+0,9,33,0,0,0,100,1,4000,4000,0,0,53,0,@WP_BLOOD_QUEEN_2,0,0,0,0,1,0,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Move to next event point"),
-- Blood-Queen Lana'thel 2nd action list
(@NPC_BLOOD_QUEEN_LANA_THEL*100+1,9,0,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,19,@NPC_IMAGE_OF_THALORIEN,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Set facing to Thalorien"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+1,9,1,0,0,0,100,0,2000,2000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Say 7"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+1,9,2,0,0,0,100,0,1000,1000,0,0,71,0,0,@ITEM_QUELDELAR,0,0,0,1,0,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Equip Sword"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+1,9,3,0,0,0,100,0,0,0,0,0,45,@DATA_CUSTOM_ACTION+1,0,0,0,0,0,19,@NPC_IMAGE_OF_THALORIEN,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Set no weapon visible on Thalorien"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+1,9,4,0,0,0,100,0,7000,7000,0,0,40,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Set no weapon visible"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+1,9,5,0,0,0,100,0,0,0,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Emote Talk"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+1,9,6,0,0,0,100,0,6000,6000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Say 8"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+1,9,7,0,0,0,100,0,8000,8000,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Say 9"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+1,9,8,0,0,0,100,0,8000,8000,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Say 10"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+1,9,9,0,0,0,100,0,5000,5000,0,0,11,@SPELL_THROW_SWORD,0,0,0,0,0,19,@NPC_QUELDELAR_DUMMY,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Cast some spell on invisible dummy"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+1,9,10,0,0,0,100,0,4000,4000,0,0,1,11,0,0,0,0,0,1,0,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Say 11"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+1,9,11,0,0,0,100,0,5000,5000,0,0,45,@DATA_CUSTOM_ACTION,0,0,0,0,0,7,0,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Call reset on the summoner"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+1,9,12,0,0,0,100,1,0,0,0,0,45,@DATA_CUSTOM_ACTION+2,0,0,0,0,0,9,@NPC_SILVER_COVENANT_SENTINEL,0,20,0,0,0,0,"Blood Quen Lana'thel (at Quel'Delar rest) - Unfreeze guards"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+1,9,13,0,0,0,100,1,0,0,0,0,45,@DATA_CUSTOM_ACTION+2,0,0,0,0,0,9,@NPC_SUNREAVER_WAR_MAGE,0,20,0,0,0,0,"Blood Quen Lana'thel (at Quel'Delar rest) - Unfreeze guards"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+1,9,14,0,0,0,100,0,0,0,0,0,45,@DATA_DESPAWN_ACTION,0,0,0,0,0,19,@NPC_IMAGE_OF_THALORIEN,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'elar rest) - Call despawn on Thalorien"),
(@NPC_BLOOD_QUEEN_LANA_THEL*100+1,9,15,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Blood Queen Lana'thel (at Quel'Delar rest) - Despawn self"),
-- Silver Covenant Guards
(-115969,0,0,1,38,0,100,0,@DATA_CUSTOM_ACTION,0,0,0,53,1,@WP_GUARD_A_1,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Start movement on data set"),
(-115969,0,1,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Set phase 1"),
(-115969,0,2,3,40,1,100,0,1,0,0,0,66,0,0,0,0,0,0,19,@NPC_BLOOD_QUEEN_LANA_THEL,0,0,0,0,0,0,"Silver Covenant Sentinel - Set facing to Lana'thel on reach point"),
(-115969,0,3,4,61,1,100,0,0,0,0,0,17,@EMOTE_2H,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Set attack state"),
(-115969,0,4,5,61,1,100,0,0,0,0,0,55,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Stop WP"),
(-115969,0,5,12,61,1,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Set Phase 2"),
(-115969,0,6,0,38,0,100,0,@DATA_CUSTOM_ACTION+1,0,0,0,75,@SPELL_FREEZE_GUARDS,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Freeze self on Data Set"),
(-115969,0,7,8,38,0,100,0,@DATA_CUSTOM_ACTION+2,0,0,0,28,@SPELL_FREEZE_GUARDS,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Unfreeze self on Data Set"),
(-115969,0,8,0,61,0,100,0,0,0,0,0,80,@NPC_SILVER_COVENANT_SENTINEL*100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Create timed event based on action list"),
(-115969,0,9,0,38,0,100,0,@DATA_CUSTOM_ACTION+3,0,0,0,53,0,@WP_GUARD_A_1,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Start movement back on timed event (called from action list)"),
(-115969,0,10,11,40,0,100,0,2,0,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - restore home orientation on reach point"),
(-115969,0,11,0,61,0,100,0,0,0,0,0,17,@EMOTE_STAND,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - restore stand state"),
(-115969,0,12,0,61,1,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Say to Lana'thel"),
(-115968,0,0,1,38,0,100,0,@DATA_CUSTOM_ACTION,0,0,0,53,1,@WP_GUARD_A_2,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Start movement on data set"),
(-115968,0,1,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Set phase 1"),
(-115968,0,2,3,40,1,100,0,1,0,0,0,66,0,0,0,0,0,0,19,@NPC_BLOOD_QUEEN_LANA_THEL,0,0,0,0,0,0,"Silver Covenant Sentinel - Set facing to Lana'thel on reach point"),
(-115968,0,3,4,61,1,100,0,0,0,0,0,17,@EMOTE_2H,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Set attack state"),
(-115968,0,4,5,61,1,100,0,0,0,0,0,55,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Stop WP"),
(-115968,0,5,0,61,1,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Set Phase 2"),
(-115968,0,6,0,38,0,100,0,@DATA_CUSTOM_ACTION+1,0,0,0,75,@SPELL_FREEZE_GUARDS,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Freeze self on Data Set"),
(-115968,0,7,8,38,0,100,0,@DATA_CUSTOM_ACTION+2,0,0,0,28,@SPELL_FREEZE_GUARDS,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Unfreeze self on Data Set"),
(-115968,0,8,0,61,0,100,0,0,0,0,0,80,@NPC_SILVER_COVENANT_SENTINEL*100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Create timed event based on action list"),
(-115968,0,9,0,38,0,100,0,@DATA_CUSTOM_ACTION+3,0,0,0,53,0,@WP_GUARD_A_2,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Start movement back on timed event (called from action list)"),
(-115968,0,10,11,40,0,100,0,2,0,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - restore home orientation on reach point"),
(-115968,0,11,0,61,0,100,0,0,0,0,0,17,@EMOTE_STAND,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - restore stand state"),
-- Sunreaver Guards
(-115970,0,0,1,38,0,100,0,@DATA_CUSTOM_ACTION,0,0,0,53,1,@WP_GUARD_H_1,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Start movement on data set"),
(-115970,0,1,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Set phase 1"),
(-115970,0,2,3,40,1,100,0,1,0,0,0,66,0,0,0,0,0,0,19,@NPC_BLOOD_QUEEN_LANA_THEL,0,0,0,0,0,0,"Silver Covenant Sentinel - Set facing to Lana'thel on reach point"),
(-115970,0,3,4,61,1,100,0,0,0,0,0,17,@EMOTE_2H,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Set attack state"),
(-115970,0,4,5,61,1,100,0,0,0,0,0,55,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Stop WP"),
(-115970,0,5,0,61,1,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Set Phase 2"),
(-115970,0,6,0,38,0,100,0,@DATA_CUSTOM_ACTION+1,0,0,0,75,@SPELL_FREEZE_GUARDS,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Freeze self on Data Set"),
(-115970,0,7,8,38,0,100,0,@DATA_CUSTOM_ACTION+2,0,0,0,28,@SPELL_FREEZE_GUARDS,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Unfreeze self on Data Set"),
(-115970,0,8,0,61,0,100,0,0,0,0,0,80,@NPC_SILVER_COVENANT_SENTINEL*100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Create timed event based on action list"),
(-115970,0,9,0,38,0,100,0,@DATA_CUSTOM_ACTION+3,0,0,0,53,0,@WP_GUARD_H_1,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Start movement back on timed event (called from action list)"),
(-115970,0,10,11,40,0,100,0,2,0,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - restore home orientation on reach point"),
(-115970,0,11,0,61,0,100,0,0,0,0,0,17,@EMOTE_STAND,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - restore stand state"),
(-115971,0,0,1,38,0,100,0,@DATA_CUSTOM_ACTION,0,0,0,53,1,@WP_GUARD_H_2,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Start movement on data set"),
(-115971,0,1,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Set phase 1"),
(-115971,0,2,3,40,1,100,0,1,0,0,0,66,0,0,0,0,0,0,19,@NPC_BLOOD_QUEEN_LANA_THEL,0,0,0,0,0,0,"Silver Covenant Sentinel - Set facing to Lana'thel on reach point"),
(-115971,0,3,4,61,1,100,0,0,0,0,0,17,@EMOTE_2H,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Set attack state"),
(-115971,0,4,5,61,1,100,0,0,0,0,0,55,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Stop WP"),
(-115971,0,5,0,61,1,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Set Phase 2"),
(-115971,0,6,0,38,0,100,0,@DATA_CUSTOM_ACTION+1,0,0,0,75,@SPELL_FREEZE_GUARDS,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Freeze self on Data Set"),
(-115971,0,7,8,38,0,100,0,@DATA_CUSTOM_ACTION+2,0,0,0,28,@SPELL_FREEZE_GUARDS,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Unfreeze self on Data Set"),
(-115971,0,8,0,61,0,100,0,0,0,0,0,80,@NPC_SILVER_COVENANT_SENTINEL*100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Create timed event based on action list"),
(-115971,0,9,0,38,0,100,0,@DATA_CUSTOM_ACTION+3,0,0,0,53,0,@WP_GUARD_H_2,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - Start movement back on timed event (called from action list)"),
(-115971,0,10,11,40,0,100,0,2,0,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - restore home orientation on reach point"),
(-115971,0,11,0,61,0,100,0,0,0,0,0,17,@EMOTE_STAND,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silver Covenant Sentinel - restore stand state"),
-- Timed event for guards
(@NPC_SILVER_COVENANT_SENTINEL*100,9,0,0,0,0,100,0,1000,1000,0,0,45,@DATA_CUSTOM_ACTION+3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Quel'Delar rest - Guards timed return"),
-- Myralion Sunblaze
(@NPC_MYRALION_SUNBLAZE,0,0,1,20,0,100,0,@QUEST_RETURN_MYRALION_SUNBLAZE,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Myralion Sunblaze - remove gossip and qg flag on quest complete"),
(@NPC_MYRALION_SUNBLAZE,0,1,2,61,0,100,0,0,0,0,0,53,0,@WP_MYRALION,0,0,0,0,1,0,0,0,0,0,0,0,"Myralion Sunblaze - Start WP on quest complete"),
(@NPC_MYRALION_SUNBLAZE,0,2,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Myralion Sunblaze - Set phase 1"),
(@NPC_MYRALION_SUNBLAZE,0,3,4,40,1,100,0,1,0,0,0,55,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Myralion Sunblaze - Stop WP on point reached"),
(@NPC_MYRALION_SUNBLAZE,0,4,0,61,1,100,0,0,0,0,0,80,@NPC_MYRALION_SUNBLAZE*100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Myralion Sunblaze - Start timed event on point reached"),
(@NPC_MYRALION_SUNBLAZE,0,6,7,38,0,100,0,@DATA_CUSTOM_ACTION,0,0,0,53,0,@WP_MYRALION,0,0,0,0,1,0,0,0,0,0,0,0,"Myralion Sunblaze - WP event on data set"),
(@NPC_MYRALION_SUNBLAZE,0,7,11,61,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Myralion Sunblaze - Set phase on data set"),
(@NPC_MYRALION_SUNBLAZE,0,8,9,40,0,100,0,2,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Myralion Sunblaze - Say 3 event on home reached"),
(@NPC_MYRALION_SUNBLAZE,0,9,10,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Myralion Sunblaze - restore orientation event on home reached"),
(@NPC_MYRALION_SUNBLAZE,0,10,0,61,0,100,0,0,0,0,0,81,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Myralion Sunblaze - restore npc flags event on home reached"),
(@NPC_MYRALION_SUNBLAZE,0,11,0,61,0,100,0,0,0,0,0,43,0,28889,0,0,0,0,1,0,0,0,0,0,0,0,"Myralion Sunblaze - Mount on data set"),
-- Caladis Brightspear
(@NPC_CALADIS_BRIGHTSPEAR,0,0,1,20,0,100,0,@QUEST_RETURN_CALADIS_BRIGHTSPEAR,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Caladis Brightspear - remove gossip and qg flag on quest complete"),
(@NPC_CALADIS_BRIGHTSPEAR,0,1,2,61,0,100,0,0,0,0,0,53,0,@WP_CALADIS,0,0,0,0,1,0,0,0,0,0,0,0,"Caladis Brightspear - Start WP on quest complete"),
(@NPC_CALADIS_BRIGHTSPEAR,0,2,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Caladis Brightspear - Set phase 1"),
(@NPC_CALADIS_BRIGHTSPEAR,0,3,4,40,1,100,0,1,0,0,0,55,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Caladis Brightspear - Stop WP on point reached"),
(@NPC_CALADIS_BRIGHTSPEAR,0,4,0,61,1,100,0,0,0,0,0,80,@NPC_MYRALION_SUNBLAZE*100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Caladis Brightspear - Start timed event on point reached"),
(@NPC_CALADIS_BRIGHTSPEAR,0,6,7,38,0,100,0,@DATA_CUSTOM_ACTION,0,0,0,53,0,@WP_CALADIS,0,0,0,0,1,0,0,0,0,0,0,0,"Caladis Brightspear - WP event on data set"),
(@NPC_CALADIS_BRIGHTSPEAR,0,7,11,61,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Caladis Brightspear - Set phase on data set"),
(@NPC_CALADIS_BRIGHTSPEAR,0,8,9,40,0,100,0,2,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Caladis Brightspear - Say 3 event on home reached"),
(@NPC_CALADIS_BRIGHTSPEAR,0,9,10,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Caladis Brightspear - restore orientation event on home reached"),
(@NPC_CALADIS_BRIGHTSPEAR,0,10,0,61,0,100,0,0,0,0,0,81,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Caladis Brightspear - restore npc flags event on home reached"),
(@NPC_CALADIS_BRIGHTSPEAR,0,11,0,61,0,100,0,0,0,0,0,43,0,28888,0,0,0,0,1,0,0,0,0,0,0,0,"Caladis Brightspear - Mount on data set"),
-- Timed event for faction heralds
(@NPC_MYRALION_SUNBLAZE*100,9,0,0,0,0,100,1,1000,1000,0,0,43,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Quel'delar rest faction Herald - Dismount"),
(@NPC_MYRALION_SUNBLAZE*100,9,1,0,0,0,100,1,1000,1000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Quel'delar rest faction Herald - Say 1"),
(@NPC_MYRALION_SUNBLAZE*100,9,2,0,0,0,100,1,0,0,0,0,12,@NPC_BLOOD_QUEEN_LANA_THEL,8,0,0,0,0,8,0,0,0,8102.33,785.112,481.025,5.99244,"Quel'delar rest faction Herald - Summon Lana'thel"),
(@NPC_MYRALION_SUNBLAZE*100,9,3,0,0,0,100,1,8000,8000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Quel'delar rest faction Herald - Say 2");
DELETE FROM `waypoints` WHERE `entry` IN (@WP_MYRALION,@WP_CALADIS,@WP_THALORIEN,@WP_MORLEN,@WP_BLOOD_QUEEN_1,@WP_BLOOD_QUEEN_2,@WP_GUARD_A_1,@WP_GUARD_A_2,@WP_GUARD_H_1,@WP_GUARD_H_2);
INSERT IGNORE INTO `waypoints`(`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@WP_MYRALION,1,8121.94,776.030,482.114,"Myralion Sunblaze - WP 1"),
(@WP_MYRALION,2,8127.26,766.402,482.579,"Myralion Sunblaze - Home Position"),
(@WP_CALADIS,1,8119.73,783.416,481.623,"Caladis Brightspear - WP 1"),
(@WP_CALADIS,2,8117.69,795.523,481.184,"Caladis Brightspear - Home Position"),
(@WP_THALORIEN,1,8122.35,778.496,482.034,"Image of Thalorien Dawnseeker - WP 1"),
(@WP_MORLEN,1,8121.75,781.096,481.905,"Image of Morlen Coldgrip - WP 1"),
(@WP_MORLEN,2,8124.83,774.881,482.328,"Image of Morlen Coldgrip - WP 2"),
(@WP_BLOOD_QUEEN_1,1,8115.65,780.131,481.611,"Lana'thel Quel'delar rest - WP 1.1"),
(@WP_BLOOD_QUEEN_2,1,8119.96,775.924,482.029,"Lana'thel Quel'delar rest - WP 2.1"),
(@WP_BLOOD_QUEEN_2,2,8124.342,778.9861,482.0804,"Lana'thel Quel'delar rest - WP 2.2"),
(@WP_GUARD_A_1,1,8118.80,783.843,481.567,"Quel'Delar rest guard 2 (GUID: 202776)- WP 1"),
(@WP_GUARD_A_1,2,8123.66,793.745,481.434,"Quel'Delar rest guard 2 (GUID: 202776)- Home Position"),
(@WP_GUARD_A_2,1,8113.40,783.385,481.416,"Quel'Delar rest guard 1 (GUID: 202775)- WP 1"),
(@WP_GUARD_A_2,2,8111.31,794.347,481.059,"Quel'Delar rest guard 1 (GUID: 202775)- Home Position"),
(@WP_GUARD_H_1,1,8112.35,775.095,481.583,"Quel'Delar rest guard 1 (GUID: 202777)- WP 1"),
(@WP_GUARD_H_1,2,8120.10,765.363,482.266,"Quel'Delar rest guard 1 (GUID: 202777)- Home Position"),
(@WP_GUARD_H_2,1,8118.65,775.747,481.973,"Quel'Delar rest guard 2 (GUID: 202778)- WP 1"),
(@WP_GUARD_H_2,2,8130.01,772.465,482.629,"Quel'Delar rest guard 2 (GUID: 202778)- Home Position");
DELETE FROM `creature_text` WHERE `entry` IN (@NPC_MYRALION_SUNBLAZE,@NPC_CALADIS_BRIGHTSPEAR,@NPC_SILVER_COVENANT_SENTINEL,@NPC_BLOOD_QUEEN_LANA_THEL);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@NPC_MYRALION_SUNBLAZE,1,0,"The style of this blade and its markings hinted that it might be a dragonforged sword. At last, we will have our answer.",12,0,100,@EMOTE_TALK,0,16745,"Myralion Sunblaze - Say 1"),
(@NPC_MYRALION_SUNBLAZE,2,0,"After all these years, can it really be --",12,0,100,@EMOTE_QUESTION,0,16746,"Myralion Sunblaze - Say 2"),
(@NPC_MYRALION_SUNBLAZE,3,0,"It falls to us to see Quel'Delar restored for the Sunreavers.",12,0,100,0,0,0,"Myralion Sunblaze - Say 3"),
(@NPC_CALADIS_BRIGHTSPEAR,1,0,"I knew this was a dragonforged blade when I first laid eyes on it.",12,0,100,@EMOTE_TALK,0,16604,"Caladis Brightspear - Say 1"),
(@NPC_CALADIS_BRIGHTSPEAR,2,0,"But can it be? Is this really --",12,0,100,@EMOTE_QUESTION,0,16605,"Caladis Brightspear - Say 2"),
(@NPC_CALADIS_BRIGHTSPEAR,3,0,"I vow that the Silver Covenant will see Quel'Delar restored.",12,0,100,0,0,0,"Caladis Brightspear - Say 3"),
(@NPC_SILVER_COVENANT_SENTINEL,1,0,"You are not welcome here, minion of the Lich King!",12,0,100,0,0,0,"Silver Covenant Sentinel - Say 1"),
(@NPC_BLOOD_QUEEN_LANA_THEL,1,0,"Quel'Delar.",12,0,100,@EMOTE_TALK,0,16808,"Blood Queen Lana'thel - Say 1"),
(@NPC_BLOOD_QUEEN_LANA_THEL,2,0,"Quiet, fools. If I had wished to kill you, you'd already be dead.",12,0,100,0,0,0,"Blood Queen Lana'thel - Say 2"),
(@NPC_BLOOD_QUEEN_LANA_THEL,3,0,"As Quel'Serrar was forged by the dragons and given to the kaldorei, its twin,Quel'Delar was given to my people.",12,0,100,@EMOTE_TALK,0,16809,"Blood Queen Lana'thel - Say 3"),
(@NPC_BLOOD_QUEEN_LANA_THEL,4,0,"The king bestowed the blade upon my friend, Thalorien Dawnseeker.",12,0,100,@EMOTE_TALK,0,16800,"Blood Queen Lana'thel - Say 4"),
(@NPC_BLOOD_QUEEN_LANA_THEL,5,0,"But even Thalorien's skill and Quel'Delar's magic could not save Silvermoon from the might of the Scourge.",12,0,100,@EMOTE_TALK,0,16801,"Blood Queen Lana'thel - Say 5"),
(@NPC_BLOOD_QUEEN_LANA_THEL,6,0,"Thalorien fell before the gates of the Sunwell, buying time for others to escape.",12,0,100,@EMOTE_TALK,0,16802,"Blood Queen Lana'thel - Say 6"),
(@NPC_BLOOD_QUEEN_LANA_THEL,7,0,"After the battle, I recovered the sword from the field. I bore it to Northrend in the service of my prince, seeking to avenge our people's defeat.",12,0,100,@EMOTE_KNEE,0,16803,"Blood Queen Lana'thel - Say 7"),
(@NPC_BLOOD_QUEEN_LANA_THEL,8,0,"Arthas shattered our forces and took the most powerful of us into his service as the San'layn.",12,0,100,@EMOTE_TALK,0,16804,"Blood Queen Lana'thel - Say 8"),
(@NPC_BLOOD_QUEEN_LANA_THEL,9,0,"My memories of Thalorien went cold and so did his blade.",12,0,100,@EMOTE_TALK,0,16805,"Blood Queen Lana'thel - Say 9"),
(@NPC_BLOOD_QUEEN_LANA_THEL,10,0,"It was I who brought Quel'Delar here,to return it to its makers. In breaking the weapon, so did I break its power.",12,0,100,@EMOTE_POINT,0,16806,"Blood Queen Lana'thel - Say 10"),
(@NPC_BLOOD_QUEEN_LANA_THEL,11,0,"Quel'Delar will never serve another!",12,0,100,5,0,16807,"Blood Queen Lana'thel - Say 11");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=56765;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13,2,56765,0,0,31,0,3,30446,0,0,0,'','Plant Chieftain''s Totem - Frostfloe Rift');

-- The Battle For Crusaders' Pinnacle (13141)

SET @SPELL_ITEM_BANNER      := 58013; -- Plant Blessed Banner
SET @SPELL_TORCH            := 58121;
SET @SPELL_TORCH_EFFECT     := 58125;

SET @NPC_BLESSED_BANNER     := 30891; -- Blessed Banner of the Crusade
SET @NPC_CRUSADER_DALFORS   := 31003; -- Crusader Lord Dalfors
SET @NPC_BATTLE_PRIEST      := 30919; -- Argent Battle-priest
SET @NPC_MASON              := 30900; -- Argent Mason
SET @NPC_TORCH_DUMMY        := 31004; -- (Wave 0) Torch Dummy
SET @NPC_LK                 := 31013; -- The Lich King
SET @NPC_CAPTAIN            := 30986;
SET @NPC_DRUDGE             := 30984;
SET @NPC_PLAGEBRINGER       := 30987;
SET @NPC_HALOF              := 30989;

SET @EVENT_SCRIPT           := 20082;

INSERT IGNORE INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(58013,571,6418.42,422.97,511.11,0);

UPDATE `creature_template` SET `ScriptName`='npc_blessed_banner' WHERE `entry`=@NPC_BLESSED_BANNER;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@NPC_CRUSADER_DALFORS;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@NPC_BATTLE_PRIEST;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@NPC_MASON;
UPDATE `creature_template` SET `unit_flags`=33554432,`InhabitType`=4,`AIName`='SmartAI',`flags_extra`=128 WHERE `entry`=@NPC_TORCH_DUMMY;
UPDATE `creature_template` SET `unit_flags`=33554432,`flags_extra`=128 WHERE `entry`=@NPC_LK;
UPDATE `creature_template` SET `unit_flags`=32768,`AIName`='SmartAI' WHERE `entry`=@NPC_CAPTAIN;
UPDATE `creature_template` SET `unit_flags`=32768,`AIName`='SmartAI' WHERE `entry`=@NPC_DRUDGE;
UPDATE `creature_template` SET `unit_flags`=32768,`AIName`='SmartAI' WHERE `entry`=@NPC_PLAGEBRINGER;
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=@NPC_HALOF;

DELETE FROM `creature_template_addon` WHERE `entry` IN (@NPC_BLESSED_BANNER,@NPC_CRUSADER_DALFORS,@NPC_BATTLE_PRIEST,@NPC_MASON);
INSERT IGNORE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(@NPC_BLESSED_BANNER, 0, 0x0, 0x1, '58026'), -- Blessing of the Crusade
(@NPC_CRUSADER_DALFORS,2786,0x0,0x1,'58110'), -- Threat Pulse
(@NPC_BATTLE_PRIEST,0,0x0,0x1,'58110'), -- Threat Pulse
(@NPC_MASON,0,0x0,0x1,'');

DELETE FROM `creature_text` WHERE `entry` IN (@NPC_BLESSED_BANNER,@NPC_CRUSADER_DALFORS,@NPC_LK);
INSERT IGNORE INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@NPC_BLESSED_BANNER,0,0,'The Blessed Banner of the Crusade has been planted.\n Defend the banner from all attackers!',41,0,100,0,0,0,'Blessed Banner of the Crusade'),
(@NPC_CRUSADER_DALFORS,0,0,'BY THE LIGHT! Those damned monsters! Look at what they''ve done to our people!',12,0,100,5,0,0,'Crusader Lord Dalfors'),
(@NPC_CRUSADER_DALFORS,1,0,'Burn it down, boys. Burn it all down.',12,0,100,1,0,0,'Crusader Lord Dalfors'),
(@NPC_CRUSADER_DALFORS,2,0,'Let ''em come. They''ll pay for what they''ve done!',12,0,100,1,0,0,'Crusader Lord Dalfors'),
(@NPC_CRUSADER_DALFORS,3,0,'We''ve done it, lads! We''ve taken the pinnacle from the Scourge! Report to Father Gustav at once and tell him the good news! We''re gonna get to buildin'' and settin'' up! Go!',14,0,100,71,0,0,'Crusader Lord Dalfors'),
(@NPC_LK,0,0,'Leave no survivors!',14,0,100,0,0,14793,'The Lich King'),
(@NPC_LK,1,0,'Cower before my terrible creations!',14,0,100,0,0,14800,'The Lich King'),
(@NPC_LK,2,0,'Feast my children! Feast upon the flesh of the living!',14,0,100,0,0,14801,'The Lich King'),
(@NPC_LK,3,0,'Lay down your arms and surrender your souls!',14,0,100,0,0,14802,'The Lich King');

INSERT IGNORE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES
(@EVENT_SCRIPT,0,10,@NPC_BLESSED_BANNER,600000,6418.422,422.9706,511.1964,5.8119);

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (@NPC_TORCH_DUMMY,@NPC_MASON);
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC_TORCH_DUMMY,0,0,0,8,0,100,0,@SPELL_TORCH,0,0,0,11,@SPELL_TORCH_EFFECT,0,0,0,0,0,1,0,0,0,0,0,0,0,'On spellhit - Cast Torch Visual'),
(@NPC_MASON,0,0,0,38,0,100,0,1,1,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'On data - Set phase 1'),
(@NPC_MASON,0,1,0,60,1,100,0,0,10000,10000,20000,11,@SPELL_TORCH,0,0,0,0,0,1,0,0,0,0,0,0,0,'On update - Cast spell Torch');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId`=13 AND `SourceEntry`=@SPELL_TORCH) OR (`SourceTypeOrReferenceId`=17 AND `SourceEntry`=@SPELL_ITEM_BANNER);
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,@SPELL_TORCH,0,0,31,0,3,@NPC_TORCH_DUMMY,0,0,0,'','Spell Torch targets Torch Dummy'),
(17,0,@SPELL_ITEM_BANNER,0,0,29,0,@NPC_BLESSED_BANNER,10,0,1,0,'','Cast Plant Blessed Banner if no banner is already spawned.');

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (@NPC_CRUSADER_DALFORS,@NPC_BATTLE_PRIEST,@NPC_CAPTAIN,@NPC_DRUDGE,@NPC_PLAGEBRINGER);
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- Crusader Lord Dalfors
(@NPC_CRUSADER_DALFORS,0,0,0,2,0,100,1,0,50,0,0,11,58053,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Holy Light at 50% HP'),
(@NPC_CRUSADER_DALFORS,0,1,0,0,0,100,0,5000,8000,23000,29000,11,37554,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shield'),
-- Argent Battle-priest
(@NPC_BATTLE_PRIEST,0,0,0,1,0,100,0,500,1000,600000,600000,11,58054,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Blessing of Kings on Spawn'),
(@NPC_BATTLE_PRIEST,0,1,0,2,0,100,1,0,50,0,0,11,58053,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Holy Light at 50% HP'),
(@NPC_BATTLE_PRIEST,0,2,0,14,0,100,0,50000,10,20000,30000,11,58053,0,0,0,0,0,7,0,0,0,0,0,0,0,'Cast Holy Light on Friendlies'),
-- Reanimated Captain
(@NPC_CAPTAIN,0,0,0,4,0,100,1,0,0,0,0,11,32674,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Avenger''s Shield on Aggro'),
(@NPC_CAPTAIN,0,1,0,0,0,100,0,5000,5000,17800,19800,11,58154,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Hammer of Injustice'),
(@NPC_CAPTAIN,0,2,0,2,0,100,1,0,45,0,0,11,58153,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Unholy Light at 45% HP'),
(@NPC_CAPTAIN,0,3,0,14,0,100,0,4000,10,20000,30000,11,58153,0,0,0,0,0,7,0,0,0,0,0,0,0,'Cast Unholy Light on Friendlies'),
-- Scourge Drudge
(@NPC_DRUDGE,0,0,0,0,0,100,0,5000,5000,11300,14500,11,51917,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Cleave'),
(@NPC_DRUDGE,0,1,0,0,0,100,0,7000,9000,17800,20200,11,49678,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Flesh Rot'),
-- Hideous Plaguebringer
(@NPC_PLAGEBRINGER,0,0,0,0,0,100,0,3400,4600,11400,16500,11,38761,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Arcing Smash');

DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (7567,7568);
INSERT IGNORE INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(7567,11,0,0,'achievement_the_hundred_club'),
(7567,12,0,0,''),
(7568,11,0,0,'achievement_the_hundred_club'),
(7568,12,1,0,'');

DELETE FROM `script_texts` WHERE `entry` IN (-1533082,-1533083);

DELETE FROM `creature_text` WHERE `entry`=15989;
INSERT IGNORE INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(15989,0,0,'Sapphiron lifts off into the air!',41,0,100,254,0,0,'Sapphiron'),
(15989,1,0,'Sapphiron resumes his attacks!',41,0,100,0,0,0,'Sapphiron'),
(15989,2,0,'%s takes a deep breath.',41,7,100,0,0,0,'Sapphiron'),
(15989,3,0,'%s enrages!',41,0,100,0,0,0,'Sapphiron');

DELETE FROM `spelldifficulty_dbc` WHERE `id` IN (28531,55697,28542,28547) OR `spellid0` IN (28531,55697,28542,28547);
INSERT IGNORE INTO `spelldifficulty_dbc`(`id`,`spellid0`,`spellid1`) VALUES
(28531,28531,55799), -- Frost Aura
(55697,55697,55696), -- Tail Sweep
(28542,28542,55665), -- Life Drain
(28547,28547,55699); -- Chill

DELETE FROM `achievement_criteria_data` WHERE `criteria_id`=7321;
INSERT IGNORE INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(7321,11,0,0,'achievement_shatter_resistant'),
(7321,12,1,0,'');

DELETE FROM `spell_script_names` WHERE `spell_id` IN (57669,61782);
INSERT IGNORE INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(57669,'spell_gen_replenishment'),
(61782,'spell_gen_replenishment');

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1603047 AND -1603020;
DELETE FROM `creature_text` WHERE `entry` IN (32867,32927,32857);
INSERT IGNORE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(32867,0,0,'You will not defeat the Assembly of Iron so easily, invaders!',14,0,100,0,0,15674,'Steelbreaker - Aggro'),
(32867,1,0,'So fragile and weak!',14,0,100,0,0,15675,'Steelbreaker - Slay 1'),
(32867,1,1,'Flesh... such a hindrance.',14,0,100,0,0,15676,'Steelbreaker - Slay 2'),
(32867,2,0,'You seek the secrets of Ulduar? Then take them!',14,0,100,0,0,15677,'Steelbreaker - Power'),
(32867,3,0,'My death only serves to hasten your demise.',14,0,100,0,0,15678,'Steelbreaker - Death'),
(32867,4,0,'Impossible...',14,0,100,0,0,15679,'Steelbreaker - Encounter defeated'),
(32867,5,0,'This meeting of the Assembly of Iron is adjourned!',14,0,100,0,0,15680,'Steelbreaker - Berserk'),

(32927,0,0,'Nothing short of total decimation will suffice.',14,0,100,0,0,15657,'Runemaster Molgeim - Aggro'),
(32927,1,0,'The world suffers yet another insignificant loss.',14,0,100,0,0,15658,'Runemaster Molgeim - Slay 1'),
(32927,1,1,'Death is the price of your arrogance.',14,0,100,0,0,15659,'Runemaster Molgeim - Slay 2'),
(32927,2,0,'Decipher this!',14,0,100,0,0,15660,'Runemaster Molgeim - Rune of Death'),
(32927,3,0,'Face the lightning surge!',14,0,100,0,0,15661,'Runemaster Molgeim - Rune of Summon'),
(32927,4,0,'The legacy of storms shall not be undone.',14,0,100,0,0,15662,'Runemaster Molgeim - Death'),
(32927,5,0,'What have you gained from my defeat? You are no less doomed, mortals!',14,0,100,0,0,15663,'Runemaster Molgeim - Encounter defeated'),
(32927,6,0,'This meeting of the Assembly of Iron is adjourned!',14,0,100,0,0,15664,'Runemaster Molgeim - Berserk'),

(32857,0,0,'Whether the world''s greatest gnats or the world''s greatest heroes, you''re still only mortal!',14,0,100,0,0,15684,'Brundir - Aggro'),
(32857,1,0,'A merciful kill!',14,0,100,0,0,15685,'Brundir Slay 1'),
(32857,1,1,'HAH!',14,0,100,0,0,15686,'Brundir - Slay 2'),
(32857,2,0,'Stand still and stare into the light!',14,0,100,0,0,15687,'Brundir - Special'),
(32857,3,0,'Let the storm clouds rise and rain down death from above!',14,0,100,0,0,15688,'Brundir - Flight'),
(32857,4,0,'The power of the storm lives on...',14,0,100,0,0,15689,'Brundir - Death'),
(32857,5,0,'You rush headlong into the maw of madness!',14,0,100,0,0,15690,'Brundir - Encounter defeated'),
(32857,6,0,'This meeting of the Assembly of Iron is adjourned!',14,0,100,0,0,15691,'Brundir - Berserk'),
(32857,7,0,'%s begins to Overload!',41,0,100,0,0,0,'Brundir - Overload');

UPDATE `creature_template` SET `flags_extra`=128, `ScriptName`='' WHERE `entry`=33705; -- Rune of Power
UPDATE `creature_template` SET `flags_extra`=128, `ScriptName`='' WHERE `entry`=33051; -- Rune of Summoning
UPDATE `creature_template` SET `ScriptName`='' WHERE `entry`=32958; -- Lightning Elemental

DELETE FROM `creature_template_addon` WHERE `entry` IN (33051,32958,33689,33705);
INSERT IGNORE INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(33051,0,0,0,0,0,'62019'), -- Rune of Summoning
(32958,0,0,0,0,0,'62052'), -- Lightning Elemental
(33689,0,0,0,0,0,'62052'), -- Lightning Elemental
(33705,0,0,0,0,0,'61974'); -- Rune of Power

DELETE FROM `spell_script_names` WHERE `spell_id`=62019; -- Rune of Summoning
INSERT IGNORE INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(62019 ,'spell_assembly_rune_of_summoning');

-- ------------------------------- --
-- Creature text conversion part 4 --
-- ------------------------------- --

-- kodo round
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000350 AND -1000348;
DELETE FROM `creature_text` WHERE `entry`=11596;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(11596,0,0,12,0,100,"kodo round SAY_SMEED_HOME_1","Ah...the wondrous sound of kodos. I love the way they make the ground shake... inspect the beast for me."),
(11596,0,1,12,0,100,"kodo round SAY_SMEED_HOME_2","Hey, look out with that kodo! You had better inspect that beast before I give you credit!"),
(11596,0,2,12,0,100,"kodo round SAY_SMEED_HOME_3","That kodo sure is a beauty. Wait a minute, where are my bifocals? Perhaps you should inspect the beast for me.");

-- lazy peon
DELETE FROM `script_texts` WHERE `entry`=-1000600;
DELETE FROM `creature_text` WHERE `entry`=10556;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(10556,0,0,12,0,100,"lazy peon SAY_WP_0","Ow! OK, I'll get back to work, $N!");

-- amnennar
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1129004 AND -1129000;
DELETE FROM `creature_text` WHERE `entry`=7358;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(7358,0,0,14,5825,100,"amnennar SAY_AGGRO","You'll never leave this place... alive."),
(7358,1,0,14,5828,100,"amnennar SAY_SUMMON60","To me, my servants!"),
(7358,2,0,14,5829,100,"amnennar SAY_SUMMON30","Come, spirits, attend your master!"),
(7358,3,0,14,5827,100,"amnennar SAY_HP","I am the hand of the Lich King!"),
(7358,4,0,14,5826,100,"amnennar SAY_KILL","Too...easy!");

-- clintar
DELETE FROM `script_texts` WHERE `entry`=-1000286;
DELETE FROM `creature_text` WHERE `entry`=22916;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(22916,0,0,12,0,100,"clintar SAY_END","Lurosa, I am entrusting the Relics of Aviana to $N, who will take them to Morthis Whisperwing. I must return completely to the Emerald Dream now. Do not let $N fail!");

-- gilthares
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000380 AND -1000370;
DELETE FROM `creature_text` WHERE `entry`=3465;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(3465,0,0,12,0,100,"gilthares SAY_GIL_START","Stay close, $n. I'll need all the help I can get to break out of here. Let's go!"),
(3465,1,0,12,0,100,"gilthares SAY_GIL_AT_LAST","At last! Free from Northwatch Hold! I need a moment to catch my breath..."),
(3465,2,0,12,0,100,"gilthares SAY_GIL_PROCEED","Now I feel better. Let's get back to Ratchet. Come on, $n."),
(3465,3,0,12,0,100,"gilthares SAY_GIL_FREEBOOTERS","Looks like the Southsea Freeboters are heavily entrenched on the coast. This could get rough."),
(3465,4,0,12,0,100,"gilthares SAY_GIL_AGGRO_1","Help! $C attacking!"),
(3465,4,1,12,0,100,"gilthares SAY_GIL_AGGRO_2","$C heading this way fast! Time for revenge!"),
(3465,4,2,12,0,100,"gilthares SAY_GIL_AGGRO_3","$C coming right at us!"),
(3465,4,3,12,0,100,"gilthares SAY_GIL_AGGRO_4","Get this $C off of me!"),
(3465,5,0,12,0,100,"gilthares SAY_GIL_ALMOST","Almost back to Ratchet! Let's keep up the pace..."),
(3465,6,0,12,0,100,"gilthares SAY_GIL_SWEET","Ah, the sweet salt air of Ratchet."),
(3465,7,0,12,0,100,"gilthares SAY_GIL_FREED","Captain Brightsun, $N here has freed me! $N, I am certain the Captain will reward your bravery.");

-- twiggy
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000380 AND -1000370;
DELETE FROM `creature_text` WHERE `entry` IN (6238,6248);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(6238,0,0,12,0,100,"big will SAY_BIG_WILL_READY","Ready when you are, $c."),
(6248,0,0,12,0,100,"twiggy SAY_TWIGGY_BEGIN","The Affray has begun. $n, get ready to fight!"),
(6248,1,0,12,0,100,"twiggy SAY_TWIGGY_FRAY","You! Enter the fray!"),
(6248,2,0,12,0,100,"twiggy SAY_TWIGGY_DOWN","Challenger is down!"),
(6248,3,0,12,0,100,"twiggy SAY_TWIGGY_OVER","The Affray is over.");

-- wizzlecrank
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000305 AND -1000298;
DELETE FROM `creature_text` WHERE `entry` IN (3282,3439);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(3439,0,0,12,0,100,"wizzlecrank SAY_START","Alright, alright I think I can figure out how to operate this thing..."),
(3439,1,0,12,0,100,"wizzlecrank SAY_STARTUP1","Arrrgh! This isn't right!"),
(3439,2,0,12,0,100,"wizzlecrank SAY_STARTUP2","Okay, I think I've got it, now. Follow me, $n!"),
(3282,0,0,14,0,100,"wizzlecrank SAY_MERCENARY","There's the stolen shredder! Stop it or Lugwizzle will have our hides!"),
(3439,3,0,12,0,100,"wizzlecrank SAY_PROGRESS_1","Looks like we're out of woods, eh? Wonder what this does..."),
(3439,4,0,12,0,100,"wizzlecrank SAY_PROGRESS_2","Come on, don't break down on me now!"),
(3439,5,0,12,0,100,"wizzlecrank SAY_PROGRESS_3","That was a close one! Well, let's get going, it's still a ways to Ratchet!"),
(3439,6,0,12,0,100,"wizzlecrank SAY_END","Hmm... I don't think this blinking red light is a good thing...");

-- muglash
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1800063 AND -1800054;
DELETE FROM `creature_text` WHERE `entry`=12717;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(12717,0,0,12,0,100,"muglash SAY_MUG_START1","Are you sure that you are ready? If we do not have a group of your allies to aid us, we will surely fail."),
(12717,1,0,12,0,100,"muglash SAY_MUG_START2","This will be a though fight, $N. Follow me closely."),
(12717,2,0,12,0,100,"muglash SAY_MUG_BRAZIER","This is the brazier, $N. Put it out. Vorsha is a beast, worthy of praise from no one!"),
(12717,3,0,12,0,100,"muglash SAY_MUG_BRAZIER_WAIT","Now we must wait. It won't be long before the naga realize what we have done."),
(12717,4,0,12,0,100,"muglash SAY_MUG_ON_GUARD","Be on your guard, $N!"),
(12717,5,0,12,0,100,"muglash SAY_MUG_REST","Perhaps we will get a moment to rest. But I will not give up until we have faced off against Vorsha!"),
(12717,6,0,12,0,100,"muglash SAY_MUG_DONE","We have done it!"),
(12717,7,0,12,0,100,"muglash SAY_MUG_GRATITUDE","You have my deepest gratitude. I thank you."),
(12717,8,0,12,0,100,"muglash SAY_MUG_PATROL","I am going to patrol the area for a while longer and ensure that things are truly safe."),
(12717,9,0,12,0,100,"muglash SAY_MUG_RETURN","Please return to Zoram'gar and report our success to the Warsong runner.");

-- jaina hyjal
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1534008 AND -1534000;
DELETE FROM `creature_text` WHERE `entry`=17772;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(17772,0,0,14,11007,100,"jaina hyjal ATTACKED 1","I'm in jeopardy, help me if you can!"),
(17772,0,1,14,11049,100,"jaina hyjal ATTACKED 2","They've broken through!"),
(17772,1,0,14,11006,100,"jaina hyjal BEGIN","Don't give up! We must prevail!"),
(17772,2,0,14,11008,100,"jaina hyjal INCOMING","Stay alert! Another wave approaches."),
(17772,3,0,14,11050,100,"jaina hyjal RALLY 1","Hold them back as long as possible."),
(17772,3,1,14,11051,100,"jaina hyjal RALLY 2","We must hold strong!"),
(17772,4,0,14,11009,100,"jaina hyjal FAILURE","We are lost. Fall back!"),
(17772,5,0,14,11011,100,"jaina hyjal SUCCESS","We have won valuable time. Now we must pull back!"),
(17772,6,0,14,11010,100,"jaina hyjal DEATH","I did... my best.");

-- thrall hyjal
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1534017 AND -1534009;
DELETE FROM `creature_text` WHERE `entry`=17852;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(17852,0,0,14,11031,100,"thrall hyjal ATTACKED 1","I will lie down for no one!"),
(17852,0,1,14,11061,100,"thrall hyjal ATTACKED 2","Bring the fight to me and pay with your lives!"),
(17852,1,0,14,11030,100,"thrall hyjal BEGIN","Hold them back! Do not falter!"),
(17852,2,0,14,11032,100,"thrall hyjal INCOMING","Make ready for another wave! LOK-TAR OGAR!"),
(17852,3,0,14,11059,100,"thrall hyjal RALLY 1","Victory or death!"),
(17852,3,1,14,11060,100,"thrall hyjal RALLY 2","Do not give an inch of ground!"),
(17852,4,0,14,11033,100,"thrall hyjal FAILURE","It is over. Withdraw! We have failed."),
(17852,5,0,14,11035,100,"thrall hyjal SUCCESS","We have played our part and done well. It is up to the others now."),
(17852,6,0,14,11034,100,"thrall hyjal DEATH","Uraaa...");

-- lieutenant drake
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1560012 AND -1560006;
DELETE FROM `creature_text` WHERE `entry`=17848;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(17848,0,0,14,10428,100,"lieutenant drake SAY_ENTER","You there, fetch water quickly! Get these flames out before they spread to the rest of the keep! Hurry, damn you!"),
(17848,1,0,14,10429,100,"lieutenant drake SAY_AGGRO","I know what you're up to, and I mean to put an end to it, permanently!"),
(17848,2,0,14,10432,100,"lieutenant drake SAY_SLAY1","No more middling for you."),
(17848,2,1,14,10433,100,"lieutenant drake SAY_SLAY2","You will not interfere!"),
(17848,3,0,14,10430,100,"lieutenant drake SAY_MORTAL","Time to bleed!"),
(17848,4,0,14,10431,100,"lieutenant drake SAY_SHOUT","Run, you blasted cowards!"),
(17848,5,0,14,10434,100,"lieutenant drake SAY_DEATH","Thrall... must not... go free.");

-- thrall hillsbrad
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1560049 AND -1560023;
DELETE FROM `creature_text` WHERE `entry` IN (17876,18887);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(17876,0,0,14,10465,100,"thrall hillsbrad SAY_TH_START_EVENT_PART1","Very well then. Let's go!"),
(17876,1,0,12,0,100,"thrall hillsbrad SAY_TH_ARMORY","As long as we're going with a new plan, I may aswell pick up a weapon and some armor."),
(17876,2,0,12,10466,100,"thrall hillsbrad SAY_TH_SKARLOC_MEET","A rider approaches!"),
(17876,3,0,14,10467,100,"thrall hillsbrad SAY_TH_SKARLOC_TAUNT","I'll never be chained again!"),
(17876,4,0,14,10468,100,"thrall hillsbrad SAY_TH_START_EVENT_PART2","Very well. Tarren Mill lies just west of here. Since time is of the essence..."),
(17876,5,0,12,10469,100,"thrall hillsbrad SAY_TH_MOUNTS_UP","Let's ride!"),
(17876,6,0,12,0,100,"thrall hillsbrad SAY_TH_CHURCH_END","Taretha must be in the inn. Let's go."),
(17876,7,0,12,0,100,"thrall hillsbrad SAY_TH_MEET_TARETHA","Taretha! What foul magic is this?"),
(17876,8,0,14,10470,100,"thrall hillsbrad SAY_TH_EPOCH_WONDER","Who or what was that?"),
(17876,9,0,14,10471,100,"thrall hillsbrad SAY_TH_EPOCH_KILL_TARETHA","No!"),
(17876,10,0,14,10472,100,"thrall hillsbrad SAY_TH_EVENT_COMPLETE","Goodbye, Taretha. I will never forget your kindness."),
(17876,11,0,14,10458,100,"thrall hillsbrad SAY_TH_RANDOM_LOW_HP1","Things are looking grim..."),
(17876,11,1,14,10459,100,"thrall hillsbrad SAY_TH_RANDOM_LOW_HP2","I will fight to the last!"),
(17876,12,0,14,10460,100,"thrall hillsbrad SAY_TH_RANDOM_DIE1","Taretha..."),
(17876,12,1,14,10461,100,"thrall hillsbrad SAY_TH_RANDOM_DIE2","A good day...to die..."),
(17876,13,0,14,10448,100,"thrall hillsbrad SAY_TH_RANDOM_AGGRO1","I have earned my freedom!"),
(17876,13,1,14,10449,100,"thrall hillsbrad SAY_TH_RANDOM_AGGRO2","This day is long overdue. Out of my way!"),
(17876,13,2,14,10450,100,"thrall hillsbrad SAY_TH_RANDOM_AGGRO3","I am a slave no longer!"),
(17876,13,3,14,10451,100,"thrall hillsbrad SAY_TH_RANDOM_AGGRO4","Blackmoore has much to answer for!"),
(17876,14,0,14,10452,100,"thrall hillsbrad SAY_TH_RANDOM_KILL1","You have forced my hand!"),
(17876,14,1,14,10453,100,"thrall hillsbrad SAY_TH_RANDOM_KILL2","It should not have come to this!"),
(17876,14,2,14,10454,100,"thrall hillsbrad SAY_TH_RANDOM_KILL3","I did not ask for this!"),
(17876,15,0,14,10455,100,"thrall hillsbrad SAY_TH_LEAVE_COMBAT1","I am truly in your debt, strangers."),
(17876,15,1,14,10456,100,"thrall hillsbrad SAY_TH_LEAVE_COMBAT2","Thank you, strangers. You have given me hope."),
(17876,15,2,14,10457,100,"thrall hillsbrad SAY_TH_LEAVE_COMBAT3","I will not waste this chance. I will seek out my destiny."),
(18887,0,0,12,0,100,"taretha SAY_TA_FREE","I'm free! Thank you all!"),
(18887,1,0,12,0,100,"taretha SAY_TA_ESCAPED","Thrall, you escaped!");

-- skarloc
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1560005 AND -1560000;
DELETE FROM `creature_text` WHERE `entry`=17862;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(17862,0,0,14,10406,100,"skarloc SAY_ENTER","Thrall! You didn't really think you would escape did you? You and your allies shall answer to Blackmoore - after I've had my fun!"),
(17862,1,0,14,10407,100,"skarloc SAY_TAUNT1","You're a slave. That's all you'll ever be."),
(17862,2,0,14,10408,100,"skarloc SAY_TAUNT2","I don't know what Blackmoore sees in you. For my money, you're just another ignorant savage!"),
(17862,3,0,14,10409,100,"skarloc SAY_SLAY1","Thrall will never be free!"),
(17862,3,1,14,10410,100,"skarloc SAY_SLAY2","Did you really think you would leave here alive?"),
(17862,4,0,14,10411,100,"skarloc SAY_DEATH","Guards! Urgh..Guards..!");

-- epoch hunter
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1560022 AND -1560013;
DELETE FROM `creature_text` WHERE `entry`=18096;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(18096,0,0,14,10418,100,"epoch hunter SAY_ENTER1","Thrall! Come outside and face your fate!"),
(18096,0,1,14,10419,100,"epoch hunter SAY_ENTER2","Taretha's life hangs in the balance. Surely you care for her. Surely you wish to save her..."),
(18096,0,2,14,10420,100,"epoch hunter SAY_ENTER3","Ah, there you are. I had hoped to accomplish this with a bit of subtlety, but I suppose direct confrontation was inevitable. Your future, Thrall, must not come to pass and so...you and your troublesome friends must die!"),
(18096,1,0,14,10421,100,"epoch hunter SAY_AGGRO1","Enough! I will erase your very existence!"),
(18096,1,1,14,10422,100,"epoch hunter SAY_AGGRO2","You cannot fight fate!"),
(18096,2,0,14,10425,100,"epoch hunter SAY_SLAY1","You are...irrelevant."),
(18096,2,1,14,10426,100,"epoch hunter SAY_SLAY2","Thrall will remain a slave. Taretha will die. You have failed."),
(18096,3,0,14,10423,100,"epoch hunter SAY_BREATH1","Not so fast!"),
(18096,3,1,14,10424,100,"epoch hunter SAY_BREATH2","Struggle as much as you like!"),
(18096,4,0,14,10427,100,"epoch hunter SAY_DEATH","No!...The master... will not... be pleased.");

-- meathook
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1595031 AND -1595026;
DELETE FROM `creature_text` WHERE `entry`=26529;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(26529,0,0,14,13428,100,"meathook SAY_AGGRO","Play time!"),
(26529,1,0,14,13430,100,"meathook SAY_SLAY_1","Boring..."),
(26529,1,1,14,13431,100,"meathook SAY_SLAY_2","Why you stop moving?"),
(26529,1,2,14,13432,100,"meathook SAY_SLAY_3","Get up! Me not done!"),
(26529,2,0,14,13429,100,"meathook SAY_SPAWN","New toys!"),
(26529,3,0,14,13433,100,"meathook SAY_DEATH","This... not fun...");

-- epoch
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1595008 AND -1595000;
DELETE FROM `creature_text` WHERE `entry`=26532;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(26532,0,0,14,13408,100,"epoch SAY_INTRO | culling SAY_PHASE314","Prince Arthas Menethil, on this day, a powerful darkness has taken hold of your soul. The death you are destined to visit upon others will this day be your own."),
(26532,1,0,14,13409,100,"epoch SAY_AGGRO","We'll see about that, young prince."),
(26532,2,0,14,13410,100,"epoch SAY_TIME_WARP_1","Tick tock, tick tock..."),
(26532,2,1,14,13411,100,"epoch SAY_TIME_WARP_2","Not quick enough!"),
(26532,2,2,14,13412,100,"epoch SAY_TIME_WARP_3","Let's get this over with. "),
(26532,3,0,14,13413,100,"epoch SAY_SLAY_1","There is no future for you."),
(26532,3,1,14,13414,100,"epoch SAY_SLAY_2","This is the hour of our greatest triumph!"),
(26532,3,2,14,13415,100,"epoch SAY_SLAY_3","You were destined to fail."),
(26532,4,0,12,13416,100,"epoch SAY_DEATH","");

-- salramm
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1595044 AND -1595032;
DELETE FROM `creature_text` WHERE `entry`=26530;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(26530,0,0,14,13472,100,"salramm SAY_AGGRO","Ah, the entertainment has arrived!"),
(26530,1,0,14,13471,100,"salramm SAY_SPAWN","You are too late, champion of Lordaeron. The dead shall have their day."),
(26530,2,0,14,13473,100,"salramm SAY_SLAY_1","The fun is just beginning!"),
(26530,2,1,14,13474,100,"salramm SAY_SLAY_2","Aah, quality materials!"),
(26530,2,2,14,13475,100,"salramm SAY_SLAY_3","Don't worry, I'll make good use of you."),
(26530,3,0,14,13483,100,"salramm SAY_DEATH","You only advance... the master's plan..."),
(26530,4,0,14,13478,100,"salramm SAY_EXPLODE_GHOUL_1","BOOM! Hahahahah..."),
(26530,4,1,14,13479,100,"salramm SAY_EXPLODE_GHOUL_2","Blood... destruction... EXHILARATING!"),
(26530,5,0,14,13480,100,"salramm SAY_STEAL_FLESH_1","I want a sample..."),
(26530,5,1,14,13481,100,"salramm SAY_STEAL_FLESH_2","Such strength... it must be mine!"),
(26530,5,2,14,13482,100,"salramm SAY_STEAL_FLESH_3","Your flesh betrays you."),
(26530,6,0,14,13476,100,"salramm SAY_SUMMON_GHOULS_1","Say hello to some friends of mine."),
(26530,6,1,14,13477,100,"salramm SAY_SUMMON_GHOULS_2","Come, citizen of Stratholme! Meet your saviors.");

-- culling of stratholme
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1595120 AND -1595070;
DELETE FROM `creature_text` WHERE `entry` IN (26499,26528,31126,28169,28167,26497);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
-- 26499
(26499,0,0,12,12828,100,"culling SAY_PHASE101","Glad you could make it, Uther."),
(26499,1,0,12,12829,100,"culling SAY_PHASE103","As if I could forget. Listen, Uther, there's something about the plague you should know..."),
(26499,2,0,12,12830,100,"culling SAY_PHASE104","Oh, no. We're too late. These people have all been infected! They may look fine now, but it's just a matter of time before they turn into the undead!"),
(26499,3,0,12,12831,100,"culling SAY_PHASE106","This entire city must be purged."),
(26499,4,0,12,12832,100,"culling SAY_PHASE108","Damn it, Uther! As your future king, I order you to purge this city!"),
(26499,5,0,12,12833,100,"culling SAY_PHASE110","Then I must consider this an act of treason."),
(26499,6,0,12,12834,100,"culling SAY_PHASE112","Have I? Lord Uther, by my right of succession and the sovereignty of my crown, I hereby relieve you of your command and suspend your paladins from service."),
(26499,7,0,12,12835,100,"culling SAY_PHASE114","It's done! Those of you who have the will to save this land, follow me! The rest of you... get out of my sight!"),
(26499,8,0,12,12836,100,"culling SAY_PHASE116","Jaina?"),
(26499,9,0,14,14327,100,"culling SAY_PHASE118","Take position here, and I will lead a small force inside Stratholme to begin the culling. We must contain and purge the infected for the sake of all of Lordaeron!"),
(26499,10,0,12,14293,100,"culling SAY_PHASE201","Everyone looks ready. Remember, these people are all infected with the plague and will die soon. We must purge Stratholme to protect the remainder of Lordaeron from the Scourge. Let's go."),
(26499,11,0,12,14294,100,"culling SAY_PHASE203","I can only help you with a clean death."),
(26499,12,0,12,14295,100,"culling SAY_PHASE205","That was just the beginning."),
(26499,13,0,14,14296,100,"culling SAY_PHASE208","I won't allow it, Mal'Ganis! Better that these people die by my hand than serve as your slaves in death!"),
(26499,14,0,14,14885,100,"culling SAY_PHASE209","Mal'ganis will send out some of his Scourge minions to interfere with us. Those of you with the strongest steel and magic shall go forth and destroy them. I will lead the rest of my forces in purging Stratholme of the infected."),
(26499,15,0,14,14297,100,"culling SAY_PHASE210","Champions, meet me at the Town Hall at once. We must take the fight to Mal'Ganis."),
(26499,16,0,12,14298,100,"culling SAY_PHASE301","Follow me, I know the way through."),
(26499,17,0,12,14299,100,"culling SAY_PHASE303","Yes, I'm glad I could get to you before the plague."),
(26499,18,0,12,14300,100,"culling SAY_PHASE304","What is this sorcery?"),
(26499,19,0,12,14301,100,"culling SAY_PHASE306. NEEDS VERIFICATION","Mal'Ganis appears to have more than scourge in his arsenal. We should make haste."),
(26499,20,0,12,14302,100,"culling SAY_PHASE307","More vile sorcery! Be ready for anything!"),
(26499,21,0,12,14303,100,"culling SAY_PHASE308","Let's move on."),
(26499,22,0,12,14304,100,"culling SAY_PHASE309","Watch your backs: they have us surrounded in this hall."),
(26499,23,0,12,0,100,"culling SAY_PHASE310. NEEDS VERIFICATION","One less obstacle to deal with."),
(26499,24,0,12,14305,100,"culling SAY_PHASE311","Mal'Ganis is not making this easy."),
(26499,25,0,12,14306,100,"culling SAY_PHASE312","They're very persistent."),
(26499,26,0,12,14307,100,"culling SAY_PHASE313","What else can he put in my way?"),
(26499,27,0,12,14309,100,"culling SAY_PHASE315","I do what I must for Lordaeron, and neither your words nor your actions will stop me."),
(26499,28,0,12,14308,100,"culling SAY_PHASE401","The quickest path to Mal'Ganis lies behind that bookshelf ahead."),
(26499,29,0,12,14310,100,"culling SAY_PHASE402","This will only take a moment."),
(26499,30,0,12,14311,100,"culling SAY_PHASE403","I'm relieved this secret passage still works."),
(26499,31,0,12,14312,100,"culling SAY_PHASE404","Let's move through here as quickly as possible. If the undead don't kill us, the fires might."),
(26499,32,0,12,14313,100,"culling SAY_PHASE405","Rest a moment and clear your lungs, but we must move again soon."),
(26499,33,0,12,14314,100,"culling SAY_PHASE406","That's enough; we must move again. Mal'Ganis awaits."),
(26499,34,0,12,14315,100,"culling SAY_PHASE407","At last some good luck. Market Row has not caught fire yet. Mal'Ganis is supposed to be in Crusaders' Square, which is just ahead. Tell me when you're ready to move forward."),
(26499,35,0,12,14316,100,"culling SAY_PHASE501","Justice will be done."),
(26499,36,0,12,14317,100,"culling SAY_PHASE502","We're going to finish this right now, Mal'Ganis. Just you... and me."),
(26499,37,0,12,14318,100,"culling SAY_PHASE503","I'll hunt you to the ends of the earth if I have to! Do you hear me? To the ends of the earth!"),
(26499,38,0,12,14319,100,"culling SAY_PHASE504","You performed well this day. Anything that Mal'Ganis has left behind is yours. Take it as your reward. I must now begin plans for an expedition to Northrend."),
-- 26528
(26528,0,0,12,12839,100,"culling SAY_PHASE102","Watch your tone with me, boy. You may be the prince, but I'm still your superior as a paladin!"),
(26528,1,0,12,12840,100,"culling SAY_PHASE105","What?"),
(26528,2,0,12,12841,100,"culling SAY_PHASE107","How can you even consider that? There's got to be some other way."),
(26528,3,0,12,12842,100,"culling SAY_PHASE109","You are not my king yet, boy! Nor would I obey that command even if you were!"),
(26528,4,0,12,12843,100,"culling SAY_PHASE111","Treason? Have you lost your mind, Arthas?"),
(26528,5,0,12,12844,100,"culling SAY_PHASE115","You've just crossed a terrible threshold, Arthas."),
-- 26497
(26497,0,0,12,12837,100,"culling SAY_PHASE113","Arthas! You can't just--"),
(26497,1,0,12,12838,100,"culling SAY_PHASE117","I'm sorry, Arthas. I can't watch you do this."),
-- 28167
(28167,0,0,12,0,100,"culling SAY_PHASE202","Prince Arthas, may the light be praised! Many people in the town have begun to fall seriously ill, can you help us?"),
-- 28169
(28169,0,0,12,0,100,"culling SAY_PHASE204","What? This can't be!"),
-- 31126
(31126,0,0,12,0,100,"culling SAY_PHASE302","Ah, you've finally arrived Prince Arthas. You're here just in the nick of time."),
(31126,1,0,12,0,100,"culling SAY_PHASE305","There's no need for you to understand, Arthas. All you need to do is die.");

-- malganis
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1595025 AND -1595009;
DELETE FROM `creature_text` WHERE `entry`=26533;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(26533,0,0,14,14410,100,"malganis SAY_INTRO_1 | culling SAY_PHASE206","Yes, this is the beginning. I've been waiting for you, young prince. I am Mal'Ganis."),
(26533,1,0,14,14411,100,"malganis SAY_INTRO_2 | culling SAY_PHASE207","As you can see, your people are now mine. I will now turn this city household by household, until the flame of life has been snuffed out... forever."),
(26533,2,0,14,14413,100,"malganis SAY_AGGRO","This will be a fine test...Prince Arthas..."),
(26533,3,0,14,14416,100,"malganis SAY_KILL_1","All too easy..."),
(26533,3,1,14,14417,100,"malganis SAY_KILL_2","The dark lord is displeased with your interference..."),
(26533,3,2,14,14418,100,"malganis SAY_KILL_3","It is Prince Arthas I want... not you..."),
(26533,4,0,14,14422,100,"malganis SAY_SLAY_1","Anak'Keri..."),
(26533,4,1,14,14423,100,"malganis SAY_SLAY_2","My onslaught will wash over the Lich King's forces..."),
(26533,4,2,14,14424,100,"malganis SAY_SLAY_3","Your death is in vain, tiny mortal..."),
(26533,4,3,14,14425,100,"malganis SAY_SLAY_4","Your time has come to an end!"),
(26533,5,0,14,14414,100,"malganis SAY_SLEEP_1","Time out..."),
(26533,5,1,14,14415,100,"malganis SAY_SLEEP_2","You seem...tired..."),
(26533,6,0,14,14426,100,"malganis SAY_30HEALTH","I spent too much time in that weak little shell..."),
(26533,7,0,14,14427,100,"malganis SAY_15HEALTH","(Eredun) I AM MAL'GANIS! I AM ETERNAL!"),
(26533,8,0,14,14428,100,"malganis SAY_ESCAPE_SPEECH_1","ENOUGH! I waste my time here...I must gather my strength on the home world..."),
(26533,9,0,14,14429,100,"malganis SAY_ESCAPE_SPEECH_2","You'll never defeat the Lich King without my forces! I'll have my revenge...on him, AND you..."),
(26533,10,0,14,14412,100,"malganis SAY_OUTRO","Your journey has just begun, young prince. Gather your forces and meet me in the artic land of Northrend. It is there that we shall settle the score between us. It is there that your true destiny will unfold.");

-- chrono lord deja
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1269011 AND -1269006;
DELETE FROM `creature_text` WHERE `entry`=17879;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(17879,0,0,14,10412,100,"chrono lord deja SAY_ENTER","Why do you aid the Magus? Just think of how many lives could be saved if the portal is never opened, if the resulting wars could be erased ..."),
(17879,1,0,14,10414,100,"chrono lord deja SAY_AGGRO","If you will not cease this foolish quest, then you will die!"),
(17879,2,0,14,10413,100,"chrono lord deja SAY_BANISH","You have outstayed your welcome, Timekeeper. Begone!"),
(17879,3,0,14,10415,100,"chrono lord deja SAY_SLAY1","I told you it was a fool's quest!"),
(17879,3,1,14,10416,100,"chrono lord deja SAY_SLAY2","Leaving so soon?"),
(17879,4,0,14,10417,100,"chrono lord deja SAY_DEATH","Time ... is on our side.");

-- aeonus
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1269018 AND -1269012;
DELETE FROM `creature_text` WHERE `entry`=17881;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(17881,0,0,14,10400,100,"aeonus SAY_ENTER","The time has come to shatter this clockwork universe forever! Let us no longer be slaves of the hourglass! I warn you: those who do not embrace the greater path shall become victims of its passing!"),
(17881,1,0,14,10402,100,"aeonus SAY_AGGRO","Let us see what fate lays in store..."),
(17881,2,0,14,10401,100,"aeonus SAY_BANISH","Your time is up, slave of the past!"),
(17881,3,0,14,10403,100,"aeonus SAY_SLAY1","One less obstacle in our way!"),
(17881,3,1,14,10404,100,"aeonus SAY_SLAY2","No one can stop us! No one!"),
(17881,4,0,14,10405,100,"aeonus SAY_DEATH","It is only a matter...of time."),
(17881,5,0,16,0,100,"aeonus EMOTE_FRENZY","goes into a frenzy!");

-- medivh
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1269028 AND -1269020;
DELETE FROM `creature_text` WHERE `entry`=15608;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(15608,0,0,14,10435,100,"medivh SAY_ENTER","The time has come! Gul'dan, order your warlocks to double their efforts! Moments from now the gateway will open, and your Horde will be released upon this ripe, unsuspecting world!"),
(15608,1,0,14,10436,100,"medivh SAY_INTRO","What is this? Champions, coming to my aid? I sense the hand of the dark one in this. Truly this sacred event bears his blessing?"),
(15608,2,0,14,10437,100,"medivh SAY_WEAK75","Champions, my shield grows weak!"),
(15608,3,0,14,10438,100,"medivh SAY_WEAK50","My powers must be concentrated on the portal! I do not have time to hold the shield!"),
(15608,4,0,14,10439,100,"medivh SAY_WEAK25","The shield is nearly gone! All that I have worked for is in danger!"),
(15608,5,0,14,10441,100,"medivh SAY_DEATH","No... damn this feeble mortal coil..."),
(15608,6,0,14,10440,100,"medivh SAY_WIN","I am grateful for your aid, champions. Now, Gul'dan's Horde will sweep across this world, like a locust swarm, and all my designs, all my carefully laid plans will at last fall into place."),
(15608,7,0,14,0,100,"medivh SAY_ORCS_ENTER","Orcs of the Horde! This portalis the gateway to your new destiny! Azeroth lies before you, ripe for the taking!"),
(15608,8,0,14,0,100,"medivh SAY_ORCS_ANSWER","Gul'dan speaks the truth! We should return at once to tell our brothers of the news! Retreat back trought the portal!");

-- temporus
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1269005 AND -1269000;
DELETE FROM `creature_text` WHERE `entry`=17880;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(17880,0,0,14,10442,100,"temporus SAY_ENTER","Why do you persist? Surely you can see the futility of it all. It is not too late! You may still leave with your lives ..."),
(17880,1,0,14,10444,100,"temporus SAY_AGGRO","So be it ... you have been warned."),
(17880,2,0,14,10443,100,"temporus SAY_BANISH","Time... sands of time is run out for you."),
(17880,3,0,14,10445,100,"temporus SAY_SLAY1","You should have left when you had the chance."),
(17880,3,1,14,10446,100,"temporus SAY_SLAY2","Your days are done."),
(17880,4,0,14,10447,100,"temporus SAY_DEATH","My death means ... little.");

-- sprysprocket
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000356 AND -1000351;
DELETE FROM `creature_text` WHERE `entry`=23002;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(23002,0,0,14,0,100,"sprysprocket SAY_START","You, there! Hand over that moonstone and nobody gets hurt!"),
(23002,1,0,15,0,100,"sprysprocket SAY_WHISPER_CHILL","Just chill!"),
(23002,2,0,14,0,100,"sprysprocket SAY_END","All right, you win! I surrender! Just don't hurt me!"),
(23002,3,0,41,0,100,"sprysprocket EMOTE_START","%s takes the Southfury moonstone and escapes into the river. Follow her!");


-- mist
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000324 AND -1000323;
DELETE FROM `creature_text` WHERE `entry`=3568;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(3568,0,0,12,0,100,"mist SAY_AT_HOME","Mist! I feared I would never see you again! Yes, I am well, do not worry for me. You must rest and recover your health."),
(3568,1,0,16,0,100,"mist EMOTE_AT_HOME","%s growls in acknowledgement before straightening and making her way off into the forest.");

-- anachronos the ancient
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1350030 AND -1350000;
DELETE FROM `creature_text` WHERE `entry` IN (15381,15382,15379,15380,15378);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(15381,0,0,12,0,100,"anachronos the ancient ANACHRONOS_SAY_1","We must act quickly or all shall be lost!"),
(15381,1,0,12,0,100,"anachronos the ancient ANACHRONOS_SAY_2","NOW, STAGHELM! WE GO NOW! Prepare your magic!"),
(15381,2,0,12,0,100,"anachronos the ancient ANACHRONOS_SAY_3","Stay close..."),
(15381,3,0,12,0,100,"anachronos the ancient ANACHRONOS_SAY_4","The sands of time will halt, but only for a moment! I will now conjure the barrier."),
(15381,4,0,12,0,100,"anachronos the ancient ANACHRONOS_SAY_5","FINISH THE SPELL STAGHELM! I CANNOT HOLD THE GLYPHS OF WARDING IN PLACE MUCH LONGER! CALL FORTH THE ROOTS!"),
(15381,5,0,12,0,100,"anachronos the ancient ANACHRONOS_SAY_6","It... It is over, Lord Staghelm. We are victorious. Albeit the cost for this victory was great."),
(15381,6,0,12,0,100,"anachronos the ancient ANACHRONOS_SAY_7","There is but one duty that remains..."),
(15381,7,0,12,0,100,"anachronos the ancient ANACHRONOS_SAY_8","Before I leave this place, I make one final offreing to you, Lord Staghelm. Should a time arise in which you must gain entry to this accursed fortress, use the Scepter of the Shifting Sands on the sacred gong. The magic holding the barrier together will dissipate and the horrors of Ahn'Qiraj will be unleashed upon the world once more."),
(15381,8,0,12,0,100,"anachronos the ancient ANACHRONOS_SAY_9","Lord Staghelm, where are you going? You would shatter our bond for the sake of pride?"),
(15381,9,0,12,0,100,"anachronos the ancient ANACHRONOS_SAY_10","And now you know all that there is to know, mortal..."),
(15381,10,0,16,0,100,"anachronos the ancient ANACHRONOS_EMOTE_1","hands the Scepter of the Shifting Sands to Fandral Staghelm."),
(15381,11,0,16,0,100,"anachronos the ancient ANACHRONOS_EMOTE_2","shakes his head in dissapointment."),
(15381,12,0,16,0,100,"anachronos the ancient ANACHRONOS_EMOTE_3","kneels down to pick up the fragments of the shattered scepter."),
(15382,0,0,12,0,100,"anachronos the ancient FANDRAL_SAY_1","My forces cannot overcome the Qiraji defenses. We will not be able to get close enough to place your precious barrier, dragon."),
(15382,1,0,12,0,100,"anachronos the ancient FANDRAL_SAY_2","It is done dragon. Lead the way..."),
(15382,2,0,12,0,100,"anachronos the ancient FANDRAL_SAY_3","Ancient ones guide my hand... Wake from your slumber! WAKE AND SEAL THIS CURSED PLACE!"),
(15382,3,0,12,0,100,"anachronos the ancient FANDRAL_SAY_4","After the savagery that my people have witnessed and felt, you expect me to accept another burden, dragon? Surely you are mad."),
(15382,4,0,12,0,100,"anachronos the ancient FANDRAL_SAY_5","I want nothing to do with Silithus, the Qiraji and least of all, any damned dragons!"),
(15382,5,0,12,0,100,"anachronos the ancient FANDRAL_SAY_6","My son's soul will find no comfort in this hollow victory, dragon. I will have him back.Thought it takes a millennia, I WILL have my son back!"),
(15382,6,0,16,0,100,"anachronos the ancient FANDRAL_EMOTE_1","falls to one knee - exhausted."),
(15382,7,0,16,0,100,"anachronos the ancient FANDRAL_EMOTE_2","hurls the Scepter of the Shifting Sands into the barrier, shattering it."),
(15379,0,0,12,0,100,"anachronos the ancient CAELESTRASZ_SAY_1","Aye, Fandral, remember these words: Let not your grief guide your faith. These thoughts you hold... dark places you go, night elf. Absolution cannot be had through misguided vengeance."),
(15379,1,0,12,0,100,"anachronos the ancient CAELESTRASZ_SAY_2","Do not forget the sacrifices made on this day, night elf. We have all suffered immensely at the hands of these beasts."),
(15379,2,0,14,0,100,"anachronos the ancient CAELESTRASZ_YELL_1","Alexstrasza grant me the resolve to drive our enemies back!"),
(15380,0,0,12,0,100,"anachronos the ancient ARYGOS_SAY_1","This distraction will give you and the young druid time enough to seal the gate. Do not falter. Now, let us see how they deal with chaotic magic."),
(15380,1,0,14,0,100,"anachronos the ancient ARYGOS_YELL_1","Let them feel the wrath of the Blue Flight! May Malygos protect me!"),
(15380,2,0,16,0,100,"anachronos the ancient ARYGOS_EMOTE_1","nods knowingly."),
(15378,0,0,12,0,100,"anachronos the ancient MERITHRA_SAY_1","There is a way..."),
(15378,1,0,12,0,100,"anachronos the ancient MERITHRA_SAY_2","We will push them back, Anachronos. This I vow. Uphold the end of this task. Let not your hands falter as you seal our fates behind the barrier."),
(15378,2,0,14,0,100,"anachronos the ancient MERITHRA_YELL_1","Succumb to the endless dream, little ones. Let it consume you!"),
(15378,3,0,16,0,100,"anachronos the ancient MERITHRA_EMOTE_1","glances at her compatriots.");

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1603341 AND -1603050;
DELETE FROM `creature_text` WHERE `entry`=33350 AND `groupid`=15;
DELETE FROM `creature_text` WHERE `entry` IN (
33515, -- Auriaya
33113, -- Flame Leviathan
32906, -- Freya
32913, -- Elder Ironbranch
32914, -- Elder Stonebark
32915, -- Elder Brightleaf
32845, -- Hodir
33118, -- Ignis
32930, -- Kologarn
33210, -- Expedition Commander
33287, -- Expedition Engineer
33186, -- Razorscale
33233, -- Razorscale Controller
33271, -- General Vezax
33488, -- Saronite Vapor
33293, -- XT-002 Deconstructor
32865  -- Thorim
);
INSERT IGNORE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
-- Auriaya
(33515,0,0,'Some things are better left alone!',14,0,100,0,0,15473,'Auriaya SAY_AGGRO'),
(33515,1,1,'The secret dies with you!',14,0,100,0,0,15474,'Auriaya SAY_SLAY_1'),
(33515,1,2,'There is no escape!',14,0,100,0,0,15475,'Auriaya SAY_SLAY_2'),
(33515,2,0,'Auriaya screams in agony.',16,0,100,0,0,15476,'Auriaya SAY_DEATH'),
(33515,3,0,'You waste my time!',14,0,100,0,0,15477,'Auriaya SAY_BERSERK'),
(33515,4,0,'%s begins to cast Terrifying Screech.',41,0,100,0,0,0,'Auriaya EMOTE_FEAR'),
(33515,5,0,'%s begins to activate the Feral Defender!',41,0,100,0,0,0,'Auriaya EMOTE_DEFENDER'),
-- Flame Leviathan
(33113, 0,0,'Hostile entities detected. Threat assessment protocol active. Primary target engaged. Time minus 30 seconds to re-evaluation.',14,0,100,0,0,15506,'Flame Leviathan SAY_AGGRO'),
(33113, 1,0,'Threat assessment routine modified. Current target threat level: 0. Acquiring new target.',14,0,100,0,0,15521,'Flame Leviathan SAY_SLAY'),
(33113, 2,0,'Total systems failure. Defense protocols breached. Leviathan unit shutting down.',14,0,100,0,0,15520,'Flame Leviathan SAY_DEATH'),
(33113, 3,0,'Threat re-evaluated. Target assessment complete. Changing course.',14,0,100,0,0,15507,'Flame Leviathan SAY_TARGET_1'),
(33113, 3,1,'Pursuit objective modified. Changing course.',14,0,100,0,0,15508,'Flame Leviathan SAY_TARGET_2'),
(33113, 3,2,'Hostile entity stratagem predicted. Rerouting battle function. Changing course.',14,0,100,0,0,15509,'Flame Leviathan SAY_TARGET_3'),
(33113, 4,0,'Orbital countermeasures enabled.',14,0,100,0,0,15510,'Flame Leviathan SAY_HARDMODE'),
(33113, 5,0,'Alert! Static defense system failure. Orbital countermeasures disabled.',14,0,100,0,0,15511,'Flame Leviathan SAY_TOWER_NONE'),
(33113, 6,0,'Hodir''s Fury online. Acquiring target.',14,0,100,0,0,15512,'Flame Leviathan SAY_TOWER_FROST'),
(33113, 7,0,'Mimiron''s Inferno online. Acquiring target.',14,0,100,0,0,15513,'Flame Leviathan SAY_TOWER_FLAME'),
(33113, 8,0,'Freya''s Ward online. Acquiring target.',14,0,100,0,0,15514,'Flame Leviathan SAY_TOWER_NATURE'),
(33113, 9,0,'Thorim''s Hammer online. Acquiring target.',14,0,100,0,0,15515,'Flame Leviathan SAY_TOWER_STORM'),
(33113,10,0,'Unauthorized entity attempting circuit overload. Activating anti-personnel countermeasures.',14,0,100,0,0,15516,'Flame Leviathan SAY_PLAYER_RIDING'),
(33113,11,0,'System malfunction. Diverting power to support systems.',14,0,100,0,0,15517,'Flame Leviathan SAY_OVERLOAD_1'),
(33113,11,1,'Combat matrix overload. Powering do-o-o-own...',14,0,100,0,0,15518,'Flame Leviathan SAY_OVERLOAD_2'),
(33113,11,2,'System restart required. Deactivating weapon systems.',14,0,100,0,0,15519,'Flame Leviathan SAY_OVERLOAD_3'),
(33113,12,0,'%s pursues $n.',41,0,100,0,0,0,'Flame Leviathan EMOTE_PURSUE'),
(33113,13,0,'%s''s circuits overloaded.',41,0,100,0,0,0,'Flame Leviathan EMOTE_OVERLOAD'),
(33113,14,0,'Automatic repair sequence initiated.',41,0,100,0,0,0,'Flame Leviathan EMOTE_REPAIR'),
-- Freya
(32906, 0,0,'The Conservatory must be protected!',14,0,100,0,0,15526,'Freya SAY_AGGRO'),
(32906, 1,0,'Elders grant me your strength!',14,0,100,0,0,15527,'Freya SAY_AGGRO_WITH_ELDER'),
(32906, 2,0,'Forgive me.',14,0,100,0,0,15529,'Freya SAY_SLAY_1'),
(32906, 2,1,'From your death springs life anew!',14,0,100,0,0,15530,'Freya SAY_SLAY_2'),
(32906, 3,0,'His hold on me dissipates. I can see clearly once more. Thank you, heroes.',14,0,100,0,0,15531,'Freya SAY_DEATH'),
(32906, 4,0,'You have strayed too far, wasted too much time!',14,0,100,0,0,15532,'Freya SAY_BERSERK'),
(32906, 5,0,'Eonar, your servant requires aid!',14,0,100,0,0,15528,'Freya SAY_SUMMON_CONSERVATOR'),
(32906, 6,0,'Children, assist me!',14,0,100,0,0,15533,'Freya SAY_SUMMON_TRIO'),
(32906, 7,0,'The swarm of the elements shall overtake you!',14,0,100,0,0,15534,'Freya SAY_SUMMON_LASHERS'),
(32906, 8,0,'A |cFF00FFFFLifebinder''s Gift|r begins to grow!',41,0,100,0,0,0,'Freya EMOTE_LIFEBINDERS_GIFT'),
(32906, 9,0,'Allies of Nature have appeared!',41,0,100,0,0,0,'Freya EMOTE_ALLIES_OF_NATURE'),
(32906,10,0,'Freya begins to cast |cFFFF0000Ground Tremor!|r',41,0,100,0,0,0,'Freya EMOTE_GROUND_TREMOR'),
(32906,11,0,'Freya casts |cFF00FF00Strengthened Iron Roots!|r',41,0,100,0,0,0,'Freya EMOTE_IRON_ROOTS'),
-- Elder Ironbranch
(32913,0,0,'Mortals have no place here!',14,0,100,0,0,15493,'Elder Ironbranch SAY_AGGRO'),
(32913,1,0,'I return you whence you came!',14,0,100,0,0,15494,'Elder Ironbranch SAY_SLAY_1'),
(32913,1,1,'BEGONE!',14,0,100,0,0,15495,'Elder Ironbranch SAY_SLAY_2'),
(32913,2,0,'Freya! They come for you.',14,0,100,0,0,15496,'Elder Ironbranch SAY_DEATH'),
-- Elder Stonebark
(32914,0,0,'This place will serve as your graveyard.',14,0,100,0,0,15500,'Elder Stonebark SAY_AGGRO'),
(32914,1,0,'<Angry roar>',14,0,100,0,0,15501,'Elder Stonebark SAY_SLAY_1'),
(32914,1,1,'Such a waste.',14,0,100,0,0,15502,'Elder Stonebark SAY_SLAY_2'),
(32914,2,0,'Matron, flee! They are ruthless....',14,0,100,0,0,15503,'Elder Stonebark SAY_DEATH'),
-- Elder Brightleaf
(32915,0,0,'Matron, the Conservatory has been breached!',14,0,100,0,0,15483,'Elder Brightleaf SAY_AGGRO'),
(32915,1,0,'Fertilizer.',14,0,100,0,0,15485,'Elder Brightleaf SAY_SLAY_1'),
(32915,1,1,'Your corpse will nourish the soil!',14,0,100,0,0,15486,'Elder Brightleaf SAY_SLAY_2'),
(32915,2,0,'Matron, one has fallen!',14,0,100,0,0,15487,'Elder Brightleaf SAY_DEATH'),
-- Hodir
(32845,0,0,'You will suffer for this trespass!',14,0,100,0,0,15552,'Hodir SAY_AGGRO'),
(32845,1,0,'Tragic. To come so far, only to fail.',14,0,100,0,0,15553,'Hodir SAY_SLAY_1'),
(32845,1,1,'Welcome to the endless winter.',14,0,100,0,0,15554,'Hodir SAY_SLAY_2'),
(32845,2,0,'Winds of the north consume you!',14,0,100,0,0,15555,'Hodir SAY_FLASH_FREEZE'),
(32845,3,0,'%s roars furious.',16,0,100,0,0,15556,'Hodir SAY_STALACTITE'),
(32845,4,0,'I... I am released from his grasp... at last.',14,0,100,0,0,15557,'Hodir SAY_DEATH'),
(32845,5,0,'ENOUGH! This ends now!',14,0,100,0,0,15558,'Hodir SAY_BERSERK'),
(32845,6,0,'%s shatters the Rare Cache of Hodir!',16,0,100,0,0,0,'Hodir SAY_HARD_MODE_MISSED'),
(32845,7,0,'%s begins to cast Flash Freeze!',41,0,100,0,0,0,'Hodir - EMOTE_FREEZE'),
(32845,8,0,'%s gains Frozen Blows!',41,0,100,0,0,0,'Hodir - EMOTE_BLOW'),
-- Ignis
(33118,0,0,'Insolent whelps! Your blood will temper the weapons used to reclaim this world!',14,0,100,0,0,15564,'Ignis SAY_AGGRO'),
(33118,1,0,'Arise, soldiers of the iron crucible! The Makers'' will be done!',14,0,100,0,0,15565,'Ignis SAY_SUMMON'),
(33118,2,0,'I will burn away your impurities!',14,0,100,0,0,15566,'Ignis SAY_SLAG_POT'),
(33118,3,0,'Let the inferno consume you!',14,0,100,0,0,15567,'Ignis SAY_SCORCH_1'),
(33118,3,1,'BURN! Burn in the Maker''s fire!',14,0,100,0,0,15568,'Ignis SAY_SCORCH_2'),
(33118,4,0,'More scraps for the scrapheap!',14,0,100,0,0,15569,'Ignis SAY_SLAY_1'),
(33118,4,1,'Your bones will serve as kindling!',14,0,100,0,0,15570,'Ignis SAY_SLAY_2'),
(33118,5,0,'Let it be finished!',14,0,100,0,0,15571,'Ignis SAY_BERSERK'),
(33118,6,0,'I. Have. Failed.',14,0,100,0,0,15572,'Ignis SAY_DEATH'),
(33118,7,0,'%s begins to cast Flame Jets!',41,0,100,0,0,0,'Ignis EMOTE_JETS'),
-- Kologarn
(32930,0,0,'None shall pass!',14,0,100,0,0,15586,'Kologarn SAY_AGGRO'),
(32930,1,0,'KOL-THARISH!',14,0,100,0,0,15587,'Kologarn SAY_SLAY_1'),
(32930,1,1,'YOU FAIL!',14,0,100,0,0,15588,'Kologarn SAY_SLAY_2'),
(32930,2,0,'Just a scratch!',14,0,100,0,0,15589,'Kologarn SAY_LEFT_ARM_GONE'),
(32930,3,0,'Only a flesh wound!',14,0,100,0,0,15590,'Kologarn SAY_RIGHT_ARM_GONE'),
(32930,4,0,'OBLIVION!',14,0,100,0,0,15591,'Kologarn SAY_SHOCKWAVE'),
(32930,5,0,'I will squeeze the life from you!',14,0,100,0,0,15592,'Kologarn SAY_GRAB_PLAYER'),
(32930,6,0,'Master, they come....',14,0,100,0,0,15593,'Kologarn SAY_DEATH'),
(32930,7,0,'I am invincible!',14,0,100,0,0,15594,'Kologarn SAY_BERSERK'),
(32930,8,0,'Kologarn casts Stone Grip!',41,0,100,0,0,15592,'Kologarn EMOTE_STONE_GRIP'),
-- Expedition Commander
(33210,0,0,'Welcome, champions! All of our attempts at grounding her have failed. We could use a hand in bring her down with these harpoon guns.',12,0,100,0,0,15647,'Expedition Commander SAY_INTRO'),
(33210,1,0,'Move quickly! She won''t remain grounded for long!',14,0,100,0,0,15648,'Expedition Commander SAY_GROUND_PHASE'),
(33210,2,0,'Be on the lookout! Mole machines will be surfacing soon with those nasty Iron dwarves aboard!',14,0,100,0,0,0,'Expedition Commander SAY_AGGRO_2'),
-- Expedition Engineer
(33287,0,0,'Give us a moment to prepare to build the turrets.',14,0,100,0,0,0,'Expedition Engineer SAY_AGGRO_1'),
(33287,1,0,'Ready to move out, keep those dwarves off of our backs!',14,0,100,0,0,0,'Expedition Engineer SAY_AGGRO_3'),
(33287,2,0,'Fires out! Let''s rebuild those turrets!',14,0,100,0,0,0,'SAY_TURRETS'),
-- Razorscale
(33186,0,0,'%s is grounded permanently!',41,0,100,0,0,0,'Razorscale EMOTE_PERMA'),
(33186,1,0,'%s takes a deep breath...',41,0,100,0,0,0,'Razorscale EMOTE_BREATH'),
-- Razorscale Controller
(33233,0,0,'Harpoon Turret is ready for use!',41,0,100,0,0,0,'Razorscale Controller EMOTE_HARPOON'),
-- General Vezax
(33271,0,0,'Your destruction will herald a new age of suffering!',14,0,100,0,0,15542,'General Vezax SAY_AGGRO'),
(33271,1,0,'You thought to stand before the legions of death... and survive?',14,0,100,0,0,15543,'General Vezax SAY_SLAY_1'),
(33271,1,1,'Defiance... a flaw of mortality.',14,0,100,0,0,15544,'General Vezax SAY_SLAY_2'),
(33271,2,0,'The black blood of Yogg-Saron courses through me! I. AM. UNSTOPPABLE!',14,0,100,0,0,15545,'General Vezax SAY_SURGE_OF_DARKNESS'),
(33271,3,0,'Oh, what horrors await....',14,0,100,0,0,15546,'General Vezax SAY_DEATH'),
(33271,4,0,'Your defeat was inevitable!',14,0,100,0,0,15547,'General Vezax SAY_BERSERK'),
(33271,5,0,'Behold, now! Terror, absolute!',14,0,100,0,0,15548,'General Vezax SAY_HARDMODE'),
(33271,6,0,'The saronite vapors mass and swirl violently, merging into a monstrous form!',41,0,100,0,0,0,'General Vezax - EMOTE_ANIMUS'),
(33271,7,0,'A saronite barrier appears around General Vezax!',41,0,100,0,0,0,'General Vezax - EMOTE_BARRIER'),
(33271,8,0,'%s roars and surges with dark might!',41,0,100,0,0,0,'General Vezax - EMOTE_SURGE_OF_DARKNESS'),
-- Saronite Vapor
(33488,0,0,'A cloud of saronite vapors coalesces nearby!',41,0,100,0,0,0,'Saronite Vapor - EMOTE_VAPORS'),
-- XT-002 Deconstructor
(33293, 0,0,'New toys? For me? I promise I won''t break them this time!',14,0,100,0,0,15724,'XT-002 Deconstructor SAY_AGGRO'),
(33293, 1,0,'So tired. I will rest for just a moment!',14,0,100,0,0,15725,'XT-002 Deconstructor SAY_HEART_OPENED'),
(33293, 2,0,'I''m ready to play!',14,0,100,0,0,15726,'XT-002 Deconstructor SAY_HEART_CLOSED'),
(33293, 3,0,'NO! NO! NO! NO! NO!',14,0,100,0,0,15727,'XT-002 Deconstructor SAY_TYMPANIC_TANTRUM'),
(33293, 4,0,'I... I think I broke it.',14,0,100,0,0,15728,'XT-002 Deconstructor SAY_SLAY_1'),
(33293, 4,1,'I guess it doesn''t bend that way.',14,0,100,0,0,15729,'XT-002 Deconstructor SAY_SLAY_2'),
(33293, 5,0,'I''m tired of these toys. I don''t want to play anymore!',14,0,100,0,0,15730,'XT-002 Deconstructor SAY_BERSERK'),
(33293, 6,0, 'You are bad... Toys... Very... Baaaaad ',14,0,100,0,0,15731,'XT-002 Deconstructor SAY_DEATH'),
(33293, 7,0,'Time for a new game! My old toys will fight my new toys!',14,0,100,0,0,15732,'XT-002 Deconstructor SAY_SUMMON'),
(33293, 8,0,'%s''s heart is exposed and leaking energy.',41,0,100,0,0,0,'XT-002 Deconstructor EMOTE_HEART_OPENED'),
(33293, 9,0,'%s''s heart is severed from his body.',41,0,100,0,0,0,'XT-002 Deconstructor EMOTE_HEART_CLOSED'),
(33293,10,0,'%s begins to cause the earth to quake.',41,0,100,0,0,0,'XT-002 Deconstructor EMOTE_TYMPANIC_TANTRUM'),
(33293,11,0,'%s consumes a scrap bot to repair himself!',41,0,100,0,0,0,'XT-002 Deconstructor EMOTE_SCRAPBOT'),
-- Thorim
(32865, 0,0,'Interlopers! You mortals who dare to interfere with my sport will pay... Wait--you...',14,0,100,0,0,15733,'Thorim SAY_AGGRO_1'),
(32865, 0,1,'I remember you... In the mountains... But you... what is this? Where am--',14,0,100,0,0,15734,'Thorim SAY_AGGRO_2'),
(32865, 1,0,'Behold the power of the storms and despair!',14,0,100,0,0,15735,'Thorim SAY_SPECIAL_1'),
(32865, 2,0,'Do not hold back! Destroy them!',14,0,100,0,0,15736,'Thorim SAY_SPECIAL_2'),
(32865, 3,0,'Have you begun to regret your intrusion?',14,0,100,0,0,15737,'Thorim SAY_SPECIAL_3'),
(32865, 4,0,'Impertinent whelps, you dare challenge me atop my pedestal? I will crush you myself!',14,0,100,0,0,15738,'Thorim SAY_JUMPDOWN'),
(32865, 5,0,'Can''t you at least put up a fight!?',14,0,100,0,0,15739,'Thorim SAY_SLAY_1'),
(32865, 5,1,'Pathetic.',14,0,100,0,0,15740,'Thorim SAY_SLAY_2'),
(32865, 6,0,'My patience has reached its limit!',14,0,100,0,0,15741,'Thorim SAY_BERSERK'),
(32865, 7,0,'Failures! Weaklings!',14,0,100,0,0,15742,'Thorim SAY_WIPE'),
(32865, 8,0,'Stay your arms! I yield!',14,0,100,0,0,15743,'Thorim SAY_DEATH'),
(32865, 9,0,'I feel as though I am awakening from a nightmare, but the shadows in this place yet linger.',14,0,100,0,0,15744,'Thorim SAY_END_NORMAL_1'),
(32865,10,0,'Sif... was Sif here? Impossible--she died by my brother''s hand. A dark nightmare indeed....',14,0,100,0,0,15745,'Thorim SAY_END_NORMAL_2'),
(32865,11,0,'I need time to reflect.... I will aid your cause if you should require it. I owe you at least that much. Farewell.',14,0,100,0,0,15746,'Thorim SAY_END_NORMAL_3'),
(32865,12,0,'You! Fiend! You are not my beloved! Be gone!',14,0,100,0,0,15747,'Thorim SAY_END_HARD_1'),
(32865,13,0,'Behold the hand behind all the evil that has befallen Ulduar, left my kingdom in ruins, corrupted my brother, and slain my wife.',14,0,100,0,0,15748,'Thorim SAY_END_HARD_2'),
(32865,14,0,'And now it falls to you, champions, to avenge us all. The task before you is great, but I will lend you my aid as I am able. You must prevail.',14,0,100,0,0,15749,'Thorim SAY_END_HARD_3');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=64604;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13,1,64604,0,0,31,0,4,0,0,0,0,'','Freya - Nature Bomb');

DELETE FROM `spelldifficulty_dbc` WHERE `id` IN (63573,63766,63716,62030,62166,63347) OR `spellid0` IN (63573,63766,63716,62030,62166,63347);
INSERT IGNORE INTO `spelldifficulty_dbc`(`id`,`spellid0`,`spellid1`) VALUES
(63573,63573,64006), -- One-Armed Overhead Smash
(63766,63766,63983), -- Arm Sweep
(63716,63716,64005), -- Stone Shout
(62030,62030,63980), -- Petrifying Breath
(62166,62166,64005), -- Stone Grip
(63347,63347,63977); -- Focused Eyebeam Periodic

-- ------------------------------- --
-- Creature text conversion part 5 --
-- ------------------------------- --

-- draenei survivor
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000183 AND -1000176;
DELETE FROM `creature_text` WHERE `entry`=16483;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(16483,0,0,12,0,100,"draenei survivor SAY_HEAL1","The last thing I remember is the ship falling and us getting into the pods. I'll go see how I can help. Thank you!"),
(16483,0,1,12,0,100,"draenei survivor SAY_HEAL2","$C, Where am I? Who are you? Oh no! What happened to the ship?"),
(16483,0,2,12,0,100,"draenei survivor SAY_HEAL3","$C You saved me! I owe you a debt that I can never repay. I'll go see if I can help the others."),
(16483,0,3,12,0,100,"draenei survivor SAY_HEAL4","Ugh... what is this place? Is that all that's left of the ship over there?"),
(16483,1,0,12,0,100,"draenei survivor SAY_HELP1","Oh, the pain..."),
(16483,1,1,12,0,100,"draenei survivor SAY_HELP2","Everything hurts, Please make it stop..."),
(16483,1,2,12,0,100,"draenei survivor SAY_HELP3","Ughhh... I hurt. Can you help me?"),
(16483,1,3,12,0,100,"draenei survivor SAY_HELP4","I don't know if I can make it, please help me...");

-- engineer spark
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000186 AND -1000184;
DELETE FROM `creature_text` WHERE `entry`=17243;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(17243,0,0,12,0,100,"engineer spark SAY_TEXT","Yes Master, all goes along as planned."),
(17243,1,0,16,0,100,"engineer spark EMOTE_SHELL","%s puts the shell to his ear."),
(17243,2,0,14,0,100,"engineer spark SAY_ATTACK","Now I cut you!");

-- magwin
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000116 AND -1000111;
DELETE FROM `creature_text` WHERE `entry`=17312;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(17312,0,0,12,0,100,"magwin SAY_START","Our house is this way, through the thicket."),
(17312,1,0,12,0,100,"magwin SAY_AGGRO","Help me!"),
(17312,2,0,12,0,100,"magwin SAY_PROGRESS","My poor family. Everything has been destroyed."),
(17312,3,0,12,0,100,"magwin SAY_END1","Father! Father! You're alive!"),
(17312,4,0,12,0,100,"magwin SAY_END2","You can thank $N for getting me back here safely, father."),
(17312,5,0,16,0,100,"magwin EMOTE_HUG","%s hugs her father.");

-- geezle
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000636 AND -1000629;
DELETE FROM `creature_text` WHERE `entry` IN (17243,17318);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(17318,0,0,12,0,100,"geezle GEEZLE_SAY_1","What's the big idea, Spark?"),
(17243,0,0,12,0,100,"geezle SPARK_SAY_2","What's the big idea? You nearly blew my cover, idiot! I told you to put the compass and navigation maps somewhere safe - not out in the open for any fool to discover."),
(17243,1,0,12,0,100,"geezle SPARK_SAY_3","The Master has gone to great lengths to secure information about the whereabouts of the Exodar. You could have blown the entire operation, including the cover of our spy on the inside."),
(17318,1,0,12,0,100,"geezle GEEZLE_SAY_4","Relax, Spark! I have it all under control. We'll strip mine the Exodar right out from under 'em - making both you and I very, very rich in the process."),
(17243,2,0,12,0,100,"geezle SPARK_SAY_5","Relax? Do you know what Kael'thas does to those that fail him, Geezle? Eternal suffering and pain... Do NOT screw this up, fool."),
(17243,3,0,12,0,100,"geezle SPARK_SAY_6","Our Bloodmyst scouts have located our contact. The fool, Velen, will soon leave himself open and defenseless -- long enough for us to strike! Now get out of my sight before I vaporize you..."),
(17318,2,0,12,0,100,"geezle GEEZLE_SAY_7","Yes, sir. It won't happen again..."),
(17243,4,0,16,0,100,"geezle EMOTE_SPARK","picks up the naga flag.");

-- stillpine capitive
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000476 AND -1000474;
DELETE FROM `creature_text` WHERE `entry`=17375;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(17375,0,0,12,0,100,"stillpine capitive CAPITIVE_SAY_1","[Fulborg] The Stillpine furbolgs will not soon forget your bravery!"),
(17375,0,1,12,0,100,"stillpine capitive CAPITIVE_SAY_2","[Fulborg] Thank you, $N"),
(17375,0,2,12,0,100,"stillpine capitive CAPITIVE_SAY_3","[Fulborg] Those remaining at Stillpine Hold will welcome you as a hero!");

-- morridune
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1048004 AND -1048003;
DELETE FROM `creature_text` WHERE `entry`=6729;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(6729,0,0,14,0,100,"morridune SAY_MORRIDUNE_1","Aku'mai is dead! At last,I can leave this wretched place."),
(6729,1,0,12,0,100,"morridune SAY_MORRIDUNE_2","Speak with me to hear my tale");

-- princess stillpine
DELETE FROM `script_texts` WHERE `entry`=1800074;
DELETE FROM `creature_text` WHERE `entry`=17682;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(17682,0,0,12,0,100,"princess stillpine SAY_DIRECTION","Go to the west");

-- kerlonian
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000444 AND -1000434;
DELETE FROM `creature_text` WHERE `entry`=11218;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(11218,0,0,12,0,100,"kerlonian SAY_KER_START","Liladris has been waiting for me at Maestra's Post, so we should make haste, $N."),
(11218,1,0,16,0,100,"kerlonian EMOTE_KER_SLEEP_1","%s looks very sleepy..."),
(11218,1,1,16,0,100,"kerlonian EMOTE_KER_SLEEP_2","%s suddenly falls asleep"),
(11218,1,2,16,0,100,"kerlonian EMOTE_KER_SLEEP_3","%s begins to drift off..."),
(11218,2,0,12,0,100,"kerlonian SAY_KER_SLEEP_1","This looks like the perfect place for a nap..."),
(11218,2,1,12,0,100,"kerlonian SAY_KER_SLEEP_2","Yaaaaawwwwwnnnn..."),
(11218,2,2,12,0,100,"kerlonian SAY_KER_SLEEP_3","Oh, I am so tired..."),
(11218,2,3,12,0,100,"kerlonian SAY_KER_SLEEP_4","You don't mind if I stop here for a moment, do you?"),
(11218,3,0,12,0,100,"kerlonian SAY_KER_ALERT_1","Be on the alert! The Blackwood furbolgs are numerous in the area..."),
(11218,3,1,12,0,100,"kerlonian SAY_KER_ALERT_2","It's quiet... Too quiet..."),
(11218,4,0,12,0,100,"kerlonian SAY_KER_END","Oh, I can see Liladris from here... Tell her I'm here, won't you?"),
(11218,5,0,16,0,100,"kerlonian EMOTE_KER_AWAKEN","%s wakes up!");

-- remtravel
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000339 AND -1000327;
DELETE FROM `creature_text` WHERE `entry`=2917;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(2917,0,0,12,0,100,"remtravel SAY_REM_START","Ok, $n, let's go find where I left that mysterious fossil. Follow me!"),
(2917,1,0,12,0,100,"remtravel SAY_REM_RAMP1_1","Now where did I put that mysterious fossil? Ah, maybe up there..."),
(2917,2,0,12,0,100,"remtravel SAY_REM_RAMP1_2","Hrm, nothing up here."),
(2917,3,0,12,0,100,"remtravel SAY_REM_BOOK","No mysterious fossil here... Ah, but my copy of Green Hills of Stranglethorn. What a good book!"),
(2917,4,0,12,0,100,"remtravel SAY_REM_TENT1_1","I bet you I left it in the tent!"),
(2917,5,0,12,0,100,"remtravel SAY_REM_TENT1_2","Oh wait, that's Hollee's tent... and it's empty."),
(2917,6,0,12,0,100,"remtravel SAY_REM_MOSS","Interesting... I hadn't noticed this earlier..."),
(2917,7,0,16,0,100,"remtravel EMOTE_REM_MOSS","%s inspects the ancient, mossy stone."),
(2917,8,0,12,0,100,"remtravel SAY_REM_MOSS_PROGRESS","Oh wait! I'm supposed to be looking for that mysterious fossil!"),
(2917,9,0,12,0,100,"remtravel SAY_REM_PROGRESS","Nope. didn't leave the fossil back here!"),
(2917,10,0,12,0,100,"remtravel SAY_REM_REMEMBER","Ah. I remember now! I gave the mysterious fossil to Hollee! Check with her."),
(2917,11,0,16,0,100,"remtravel EMOTE_REM_END","%s goes back to work, oblivious to everything around him."),
(2917,12,0,12,0,100,"remtravel SAY_REM_AGGRO","Something tells me this $r wants the mysterious fossil too. Help!");

-- hendel
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000415 AND -1000411;
DELETE FROM `creature_text` WHERE `entry`=4966;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(4966,0,0,12,0,100,"hendel SAY_PROGRESS_1_TER","Why don't we deal with you now, Hendel? Lady Proudmoore will speak for you back in the tower."),
(4966,1,0,12,0,100,"hendel SAY_PROGRESS_2_HEN","Please... please... Miss Proudmore. I didn't mean to..."),
(4966,2,0,12,0,100,"hendel SAY_PROGRESS_3_TER","I apologize for taking so long to get here. I wanted Lady Proudmoore to be present also."),
(4966,3,0,12,0,100,"hendel SAY_PROGRESS_4_TER","We can only stay a few moments before returning to the tower. If you wish to speak to us more you may find us there."),
(4966,4,0,16,0,100,"hendel EMOTE_SURRENDER","%s, too injured, gives up the chase.");

-- zelfrax
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000473 AND -1000472;
DELETE FROM `creature_text` WHERE `entry`=23864;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(23864,0,0,14,0,100,"zelfrax SAY_ZELFRAX1","This land was mine long before your wretched kind set foot here."),
(23864,1,0,14,0,100,"zelfrax SAY_ZELFRAX2","All who venture here belong to me,including you!");

-- oox
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000292 AND -1000287;
DELETE FROM `creature_text` WHERE `entry`=7807;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(7807,0,0,12,0,100,"oox SAY_OOX_START","Emergency power activated! Initializing ambulanory motor! CLUCK!"),
(7807,1,0,12,0,100,"oox SAY_OOX_AGGRO1","Physical threat detected! Evasive action! CLUCK!"),
(7807,1,1,12,0,100,"oox SAY_OOX_AGGRO2","Thread analyzed! Activating combat plan beta! CLUCK!"),
(7807,2,0,12,0,100,"oox SAY_OOX_AMBUSH","CLUCK! Sensors detect spatial anomaly - danger imminent! CLUCK!"),
(7807,3,0,12,0,100,"oox SAY_OOX_END","Cloaking systems online! CLUCK! Engaging cloak for transport to Booty Bay!");

-- kyle
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000342 AND -1000340;
DELETE FROM `creature_text` WHERE `entry`=23616;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(23616,0,0,16,0,100,"kyle EMOTE_SEE_LUNCH","%s howls in delight at the sight of his lunch!"),
(23616,1,0,16,0,100,"kyle EMOTE_EAT_LUNCH","%s eats his lunch."),
(23616,2,0,16,0,100,"kyle EMOTE_DANCE","%s thanks you with a special dance.");

-- willix
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1047010 AND -1047000;
DELETE FROM `creature_text` WHERE `entry`=4508;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(4508,0,0,12,0,100,"willix SAY_READY","Phew! Finally, out here. However, it will not become easy. Detain your eyes after annoyance."),
(4508,1,0,12,0,100,"willix SAY_POINT","There on top resides Charlga Razorflank. The damned old Crone."),
(4508,2,0,12,0,100,"willix SAY_AGGRO1","Help! Get this Raging Agam'ar from me!"),
(4508,3,0,12,0,100,"willix SAY_BLUELEAF","In this ditch there are Blueleaf Tuber! As if the gold waited only to be dug out, I say it you!"),
(4508,4,0,12,0,100,"willix SAY_DANGER","Danger is behind every corner."),
(4508,5,0,12,0,100,"willix SAY_BAD","I do not understand how these disgusting animals can live at such a place.... puh as this stinks!"),
(4508,6,0,12,0,100,"willix SAY_THINK","I think, I see a way how we come out of this damned thorn tangle."),
(4508,7,0,12,0,100,"willix SAY_SOON","I am glad that we are out again from this damned ditch. However, up here it is not much better!"),
(4508,8,0,12,0,100,"willix SAY_FINALY","Finally! I am glad that I come, finally out here."),
(4508,9,0,12,0,100,"willix SAY_WIN","I will rather rest a moment and come again to breath, before I return to Ratchet."),
(4508,10,0,12,0,100,"willix SAY_END","Many thanks for your help.");

-- threshwackonator
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000326 AND -1000325;
DELETE FROM `creature_text` WHERE `entry`=6669;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(6669,0,0,16,0,100,"threshwackonator EMOTE_START","\"Threshwackonator First Mate unit prepared to follow\""),
(6669,1,0,12,0,100,"threshwackonator SAY_AT_CLOSE","YARRR! Swabie, what have ye done?! He's gone mad! Baton him down the hatches! Hoist the mast! ARRRR! Every man for hi'self!");

-- kodo round
DELETE FROM `script_texts` WHERE `entry`=-1000350;
DELETE FROM `creature_text` WHERE `entry`=9453;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(9453,0,0,12,0,100,"kodo round SAY_SMEED_HOME_3","That kodo sure is a beauty. Wait a minute, where are my bifocals? Perhaps you should inspect the beast for me.");

-- oox
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000292 AND -1000287;
DELETE FROM `creature_text` WHERE `entry` IN (7784,7805);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(7784,0,0,12,0,100,"oox SAY_OOX_START","Emergency power activated! Initializing ambulanory motor! CLUCK!"),
(7784,1,0,12,0,100,"oox SAY_OOX_AGGRO1","Physical threat detected! Evasive action! CLUCK!"),
(7784,1,1,12,0,100,"oox SAY_OOX_AGGRO2","Thread analyzed! Activating combat plan beta! CLUCK!"),
(7784,2,0,12,0,100,"oox SAY_OOX_AMBUSH","CLUCK! Sensors detect spatial anomaly - danger imminent! CLUCK!"),
(7805,0,0,12,0,100,"oox SAY_OOX17_AMBUSH_REPLY","No one challanges the Wastewander nomads - not even robotic chickens! ATTACK!"),
(7784,3,0,12,0,100,"oox SAY_OOX_END","Cloaking systems online! CLUCK! Engaging cloak for transport to Booty Bay!");

-- tooga
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000398 AND -1000391;
DELETE FROM `creature_text` WHERE `entry` IN (5955,6015);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(5955,0,0,12,0,100,"tooga SAY_TOOG_THIRST","I'm Thirsty."),
(5955,0,1,12,0,100,"tooga SAY_TOOG_WORRIED","Torta must be so worried."),
(5955,1,0,12,0,100,"tooga SAY_TOOG_POST_1","Torta, my love! I have returned at long last."),
(6015,0,0,12,0,100,"tooga SAY_TORT_POST_2","You have any idea how long I've been waiting here? And where's dinner? All that time gone and nothing to show for it?"),
(5955,2,0,12,0,100,"tooga SAY_TOOG_POST_3","My dearest Torta. I have been gone for so long. Finally we are reunited. At long last our love can blossom again."),
(6015,1,0,12,0,100,"tooga SAY_TORT_POST_4","Enough with the rambling. I am starving! Now, get your dusty shell into that ocean and bring momma some grub."),
(5955,3,0,12,0,100,"tooga SAY_TOOG_POST_5","Yes Torta. Whatever your heart desires..."),
(6015,2,0,12,0,100,"tooga SAY_TORT_POST_6","And try not to get lost this time...");

-- cthun
DELETE FROM `script_texts` WHERE `entry`=-1531011;
DELETE FROM `creature_text` WHERE `entry`=15727;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(15727,0,0,16,0,100,"cthun EMOTE_WEAKENED","%s is weakened!");

-- huhuran
DELETE FROM `creature_text` WHERE `entry`=15509;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(15509,0,0,16,0,100,"huhuran EMOTE_FRENZY_KILL","%s goes into a killing frenzy!"),
(15509,1,0,16,0,100,"huhuran EMOTE_BERSERK","%s goes into a berserker rage!");

-- sartura
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1531010 AND -1531008;
DELETE FROM `creature_text` WHERE `entry`=15516;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(15516,0,0,14,8646,100,"sartura SAY_AGGRO","You will be judged for defiling these sacred grounds! The laws of the Ancients will not be challenged! Trespassers will be annihilated!"),
(15516,1,0,14,8647,100,"sartura SAY_SLAY","I sentence you to death!"),
(15516,2,0,14,8648,100,"sartura SAY_DEATH","I serve to the last!");

-- skeram
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1531007 AND -1531000;
DELETE FROM `creature_text` WHERE `entry`=15263;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(15263,0,0,14,8615,100,"skeram SAY_AGGRO1","Are you so eager to die? I would be happy to accomodate you."),
(15263,0,1,14,8616,100,"skeram SAY_AGGRO2","Cower mortals! The age of darkness is at hand."),
(15263,0,2,14,8621,100,"skeram SAY_AGGRO3","Tremble! The end is upon you."),
(15263,1,0,14,8617,100,"skeram SAY_SLAY1","Let your death serve as an example!"),
(15263,1,1,14,8619,100,"skeram SAY_SLAY2","Spineless wretches! You will drown in rivers of blood!"),
(15263,1,2,14,8620,100,"skeram SAY_SLAY3","The screams of the dying will fill the air. A symphony of terror is about to begin!"),
(15263,2,0,14,8618,100,"skeram SAY_SPLIT","Prepare for the return of the ancient ones!"),
(15263,3,0,14,8622,100,"skeram SAY_DEATH","You only delay... the inevetable.");

-- kanati
DELETE FROM `script_texts` WHERE `entry`=-1000410;
DELETE FROM `creature_text` WHERE `entry`=10638;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(10638,0,0,12,0,100,"kanati SAY_KAN_START","Here they come! Defend yourself!");

-- lakota
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000369 AND -1000365;
DELETE FROM `creature_text` WHERE `entry`=10646;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(10646,0,0,12,0,100,"lakota SAY_LAKO_START","Be on guard... Arnak has some strange power over the Grimtotem... they will not be happy to see me escape."),
(10646,1,0,12,0,100,"lakota SAY_LAKO_LOOK_OUT","Look out, the Grimtotem are upon us!"),
(10646,2,0,12,0,100,"lakota SAY_LAKO_HERE_COME","Here they come."),
(10646,3,0,12,0,100,"lakota SAY_LAKO_MORE","More Grimtotems are coming this way!"),
(10646,4,0,12,0,100,"lakota SAY_LAKO_END","Finally, free at last... I must be going now, thanks for helping me escape. I can get back to Freewind Post by myself.");

-- paoka
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000364 AND -1000362;
DELETE FROM `creature_text` WHERE `entry`=10427;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(10427,0,0,12,0,100,"paoka SAY_START","Let's go $N. I am ready to reach Whitereach Post."),
(10427,1,0,12,0,100,"paoka SAY_WYVERN","Now this looks familiar. If we keep heading east, I think we can... Ahh, Wyvern on the attack!"),
(10427,2,0,12,0,100,"paoka SAY_COMPLETE","Thanks a bunch... I can find my way back to Whitereach Post from here. Be sure to talk with Motega Firemane; perhaps you can keep him from sending me home.");

-- disciple
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1043017 AND -1043000;
DELETE FROM `creature_text` WHERE `entry` IN (3679,3678);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(3678,0,0,14,0,100,"disciple SAY_AT_LAST","At last! Naralex can be awakened! Come aid me, brave adventurers!"),
(3678,1,0,12,0,100,"disciple SAY_MAKE_PREPARATIONS","I must make the necessary preparations before the awakening ritual can begin. You must protect me!"),
(3678,2,0,12,0,100,"disciple SAY_TEMPLE_OF_PROMISE","These caverns were once a temple of promise for regrowth in the Barrens. Now, they are the halls of nightmares."),
(3678,3,0,12,0,100,"disciple SAY_MUST_CONTINUE","Come. We must continue. There is much to be done before we can pull Naralex from his nightmare."),
(3678,4,0,12,0,100,"disciple SAY_BANISH_THE_SPIRITS","Within this circle of fire I must cast the spell to banish the spirits of the slain Fanglords."),
(3678,5,0,12,0,100,"disciple SAY_CAVERNS_PURIFIED","The caverns have been purified. To Naralex's chamber we go!"),
(3678,6,0,12,0,100,"disciple SAY_BEYOND_THIS_CORRIDOR","Beyond this corridor, Naralex lies in fitful sleep. Let us go awaken him before it is too late."),
(3678,7,0,12,0,100,"disciple SAY_EMERALD_DREAM","Protect me brave souls as I delve into this Emerald Dream to rescue Naralex and put an end to this corruption!"),
(3678,8,0,16,0,100,"disciple EMOTE_AWAKENING_RITUAL","%s begins to perform the awakening ritual on Naralex."),
(3679,0,0,16,0,100,"naralex EMOTE_TROUBLED_SLEEP","%s tosses fitfully in troubled sleep."),
(3679,1,0,16,0,100,"naralex EMOTE_WRITHE_IN_AGONY","%s writhes in agony. The Disciple seems to be breaking through."),
(3679,2,0,16,0,100,"naralex EMOTE_HORRENDOUS_VISION","%s dreams up a horrendous vision. Something stirs beneath the murky waters."),
(3678,9,0,12,0,100,"disciple SAY_MUTANUS_THE_DEVOURER","This Mutanus the Devourer is a minion from Naralex's nightmare no doubt!"),
(3679,3,0,14,0,100,"naralex SAY_I_AM_AWAKE","I AM AWAKE, AT LAST!"),
(3678,10,0,12,0,100,"disciple SAY_NARALEX_AWAKES","At last! Naralex awakes from the nightmare."),
(3679,4,0,12,0,100,"naralex SAY_THANK_YOU","Ah, to be pulled from the dreaded nightmare! I thank you, my loyal Disciple, along with your brave companions."),
(3679,5,0,12,0,100,"naralex SAY_FAREWELL","We must go and gather with the other Disciples. There is much work to be done before I can make another attempt to restore the Barrens. Farewell, brave souls!"),
(3678,11,0,12,0,100,"disciple SAY_ATTACKED","Attacked! Help get this $N off of me!");

-- weegli blastfuse
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1209001 AND -1209000;
DELETE FROM `creature_text` WHERE `entry`=7607;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(7607,0,0,12,0,100,"weegli blastfuse SAY_WEEGLI_OHNO","Oh no! Here they come!"),
(7607,1,0,12,0,100,"weegli blastfuse SAY_WEEGLI_OK_I_GO","OK. Here I go.");

-- anub arak
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1601010 AND -1601000;
DELETE FROM `creature_text` WHERE `entry`=29120;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(29120,0,0,14,14054,100,"anub arak SAY_AGGRO","Eternal aggony awaits you!"),
(29120,1,0,14,14057,100,"anub arak SAY_SLAY_1","Soon, the Master's voice will call to you."),
(29120,1,1,14,14056,100,"anub arak SAY_SLAY_2","You have made your choice."),
(29120,1,2,14,14055,100,"anub arak SAY_SLAY_3","You shall experience my torment, first-hand!"),
(29120,2,0,14,14069,100,"anub arak SAY_DEATH","Ahhh... RAAAAAGH! Never thought... I would be free of him..."),
(29120,3,0,14,14060,100,"anub arak SAY_LOCUST_1","Your armor is useless againts my locusts."),
(29120,3,1,14,14067,100,"anub arak SAY_LOCUST_2","Uunak-hissss tik-k-k-k-k!"),
(29120,3,2,14,14068,100,"anub arak SAY_LOCUST_3","The pestilence upon you!"),
(29120,4,0,14,14058,100,"anub arak SAY_SUBMERGE_1","Auum na-l ak-k-k-k, isshhh."),
(29120,4,1,14,14059,100,"anub arak SAY_SUBMERGE_2","Come forth my brethren! Feast on their flesh."),
(29120,5,0,14,14053,100,"anub arak SAY_INTRO","I was king of this empire once, long ago. In life I stood as champion. In death I returned as conqueror. Now I protect the kingdom once more. Ironic, yes? ");

-- krik thir
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1601022 AND -1601011;
DELETE FROM `creature_text` WHERE `entry`=28684;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(28684,0,0,14,14075,100,"krik thir SAY_AGGRO","This kingdom belongs to the Scourge! Only the dead may enter."),
(28684,1,0,14,14077,100,"krik thir SAY_SLAY_1","You were foolish to come."),
(28684,1,1,14,14078,100,"krik thir SAY_SLAY_2","As Anub'Arak commands!"),
(28684,2,0,14,14087,100,"krik thir SAY_DEATH","I should be grateful. But I long ago lost the capacity."),
(28684,3,0,14,14085,100,"krik thir SAY_SWARM_1","They hunger."),
(28684,3,1,14,14086,100,"krik thir SAY_SWARM_2","Dinner time, my pets."),
(28684,4,0,14,14082,100,"krik thir SAY_PREFIGHT_1","Keep an eye on the tunnel. We must not let anyone through!"),
(28684,4,1,14,14083,100,"krik thir SAY_PREFIGHT_2","I hear footsteps. Be on your guard."),
(28684,4,2,14,14084,100,"krik thir SAY_PREFIGHT_3","I sense the living. Be ready."),
(28684,5,0,14,14079,100,"krik thir SAY_SEND_GROUP_1","We are besieged. Strike out and bring back their corpses!"),
(28684,5,1,14,14080,100,"krik thir SAY_SEND_GROUP_2","We must hold the gate. Attack! Tear them limb from limb!"),
(28684,5,2,14,14081,100,"krik thir SAY_SEND_GROUP_3","The gate must be protected at all costs. Rip them to shreds!");

-- thassarian
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1571023 AND -1571004;
DELETE FROM `creature_text` WHERE `entry` IN (25301,26203,26170,25250,25251);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
-- talbot
(25301,0,0,12,0,100,"thassarian SAY_TALBOT_1","My liege, the infiltration and control of the Alliance power structure by our cultists is well underway."),
(25301,1,0,12,0,100,"thassarian SAY_TALBOT_2","The power you've bestowed upon me has allowed me great mental influence over human minds. I bear these offerings as proof of my progress."),
(25301,2,0,12,0,100,"thassarian SAY_TALBOT_3","Allow me to take care of the intruders, lord. I will feed their entrails to the maggots."),
(25301,3,0,12,0,100,"thassarian SAY_TALBOT_4","Yes, my lord!"),
-- arthas
(26203,0,0,12,0,100,"thassarian SAY_LICH_1","Your progress in this region has been impressive, Blood Prince. I am pleased..."),
(26203,1,0,12,0,100,"thassarian SAY_LICH_2","Now this is a surprise, Thassarian. I hadn't heard from Mograine or the other death knights for months. You've come to rejoin the Scourge, I take it?"),
(26203,2,0,12,0,100,"thassarian SAY_LICH_3","Do not fail me, San'layn. Return to Icecrown with this fool's head or do not bother to return."),
-- thassarian
(26170,0,0,14,0,100,"thassarian SAY_THASSARIAN_1","Leryssa!"),
(26170,1,0,14,0,100,"thassarian SAY_THASSARIAN_2","What have you done to my sister, you motherless elf scum!?"),
(26170,2,0,12,0,100,"thassarian SAY_THASSARIAN_3","I would sooner slit my own throat. You will pay for what you did to your own men, Arthas... for what you did to me! I swear it."),
(26170,3,0,12,0,100,"thassarian SAY_THASSARIAN_4","Leryssa... you... you're all right!"),
(26170,4,0,12,0,100,"thassarian SAY_THASSARIAN_5","I cannot return home with you just yet, Leryssa. I am not quite done with the Scourge."),
(26170,5,0,12,0,100,"thassarian SAY_THASSARIAN_6","You might be right, sister. My obligations to my land and King have been fulfilled. But there is still something that I owe to myself."),
(26170,6,0,12,0,100,"thassarian SAY_THASSARIAN_7","Do not worry, Leryssa. I will come back to you when I'm done. Nothing in the world will stop me from coming home to the only family that I have left."),
-- arlos
(25250,0,0,12,0,100,"thassarian SAY_ARLOS_1","What... what happened to me?"),
(25250,1,0,12,0,100,"thassarian SAY_ARLOS_2","Ugh! My head won't stop spinning..."),
-- leryssa
(25251,0,0,14,0,100,"thassarian SAY_LERYSSA_1","Thassarian, you're alive!"),
(25251,1,0,12,0,100,"thassarian SAY_LERYSSA_2","I thought... I thought you were... dead."),
(25251,2,0,12,0,100,"thassarian SAY_LERYSSA_3","Don't leave me again! You want to fight for your country, but they don't even want you! They sent you here to die!"),
(25251,3,0,12,0,100,"thassarian SAY_LERYSSA_4","I know that look in your eye... I'm not going to be able to talk you out of this. If you die on me again...");

-- mootoo the younger
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1750044 AND -1750040;
DELETE FROM `creature_text` WHERE `entry`=25504;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(25504,0,0,12,0,100,"mootoo the younger SAY_1","My father's aura is quite strong,he cannot be far. Could you be a doll and fight off the monsters wandering throught the mist?"),
(25504,1,0,12,0,100,"mootoo the younger SAY_2","Watch out for the monsters!Which way should we go first? Let's try this way..."),
(25504,2,0,12,0,100,"mootoo the younger SAY_3","What could this be?"),
(25504,3,0,12,0,100,"mootoo the younger SAY_4","There's no sign of it ending! Where could my father be?"),
(25504,4,0,12,0,100,"mootoo the younger SAY_5","Father! You're safe!");

-- imprisoned beryl sorcerer
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1571030 AND -1571024;
DELETE FROM `creature_text` WHERE `entry`=25478;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(25478,0,0,12,0,100,"imprisoned beryl sorcerer SAY_IMPRISIONED_BERYL_1","Pathetic fool! A servant of Malygos would sooner die than aid an enemy..."),
(25478,1,0,12,0,100,"imprisoned beryl sorcerer SAY_IMPRISIONED_BERYL_2","Aargh! Do your worst, $C ! I'll tell you NOTHING!"),
(25478,2,0,12,0,100,"imprisoned beryl sorcerer SAY_IMPRISIONED_BERYL_3","Aahhhh! Release me! I am of no use to you. I swear it!"),
(25478,3,0,12,0,100,"imprisoned beryl sorcerer SAY_IMPRISIONED_BERYL_4","Stop! I beg you, please stop. Please..."),
(25478,4,0,12,0,100,"imprisoned beryl sorcerer SAY_IMPRISIONED_BERYL_5","Alright! I am beaten. Your previous archmage is held in a prison, elevated and sealed. Even if you manage to reach her, Salrand herself holds the key. Your mission is folly!"),
(25478,5,0,12,0,100,"imprisoned beryl sorcerer SAY_IMPRISIONED_BERYL_6","I've given you the information, $C ! You're wasting your time...."),
(25478,6,0,12,0,100,"imprisoned beryl sorcerer SAY_IMPRISIONED_BERYL_7","Noooo! This torture is inhumane! You have what you want... why don't you just kill me?");

-- bonker togglevolt
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1700003 AND -1700002;
DELETE FROM `creature_text` WHERE `entry`=25589;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(25589,0,0,12,0,100,"bonker togglevolt","I AM NOT AN APPETIZER!"),
(25589,1,0,12,0,100,"bonker togglevolt","I'll make you a deal: If you get me out of here alive,you'll get a reward larger than you can imagine!");

-- hidden cultist
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1571047 AND -1571044;
DELETE FROM `creature_text` WHERE `entry` IN (25827,25248,25828);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(25827,0,0,12,0,100,"hidden cultist SAY_HIDDEN_CULTIST_1","Well..."),
(25827,1,0,12,0,100,"hidden cultist SAY_HIDDEN_CULTIST_2","Finally! This charade is over... Arthas give me strength!"),
(25827,2,0,12,0,100,"hidden cultist SAY_HIDDEN_CULTIST_3","You don't know who you're messing with! Death beckons!"),
(25827,3,0,12,0,100,"hidden cultist SAY_HIDDEN_CULTIST_4","I suppose this is it, then? I won't go down quietly!"),
(25248,0,0,12,0,100,"hidden cultist SAY_HIDDEN_CULTIST_1","Well..."),
(25248,1,0,12,0,100,"hidden cultist SAY_HIDDEN_CULTIST_2","Finally! This charade is over... Arthas give me strength!"),
(25248,2,0,12,0,100,"hidden cultist SAY_HIDDEN_CULTIST_3","You don't know who you're messing with! Death beckons!"),
(25248,3,0,12,0,100,"hidden cultist SAY_HIDDEN_CULTIST_4","I suppose this is it, then? I won't go down quietly!"),
(25828,0,0,12,0,100,"hidden cultist SAY_HIDDEN_CULTIST_1","Well..."),
(25828,1,0,12,0,100,"hidden cultist SAY_HIDDEN_CULTIST_2","Finally! This charade is over... Arthas give me strength!"),
(25828,2,0,12,0,100,"hidden cultist SAY_HIDDEN_CULTIST_3","You don't know who you're messing with! Death beckons!"),
(25828,3,0,12,0,100,"hidden cultist SAY_HIDDEN_CULTIST_4","I suppose this is it, then? I won't go down quietly!");

-- lord kelriss
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1048002 AND -1048000;
DELETE FROM `creature_text` WHERE `entry`=4832;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(4832,0,0,14,5803,100,"lord kelriss SAY_AGRRO","Just...Dust..."),
(4832,1,0,14,5804,100,"lord kelriss SAY_SLEEP","Sleep..."),
(4832,2,0,14,5802,100,"lord kelriss SAY_DEATH","Who dares disturb my meditation!");

-- theramore guard
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000649 AND -1000641;
DELETE FROM `creature_text` WHERE `entry`=4979;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(4979,0,0,12,0,100,"theramore guard SAY_QUEST1","Hey, thanks."),
(4979,1,0,12,0,100,"theramore guard SAY_QUEST2","...receive 50 percent off deserter undergarments? What is this garbage?"),
(4979,1,1,12,0,100,"theramore guard SAY_QUEST2","...to establish a fund for the purchase of hair gel? I like my hair the way it is, thanks!"),
(4979,1,2,12,0,100,"theramore guard SAY_QUEST2","...the deserters seek a Theramore where citizens will be free to juggle at all hours of the day? What is this nonsense?"),
(4979,1,3,12,0,100,"theramore guard SAY_QUEST2","...to establish the chicken as the official symbol of Theramore?! These guys are nuts!"),
(4979,1,4,12,0,100,"theramore guard SAY_QUEST2","...as a deserter, you'll enjoy activities like tethered swimming and dog grooming? How ridiculous!"),
(4979,2,0,12,0,100,"theramore guard SAY_QUEST3","This... this is a joke, right?"),
(4979,2,1,12,0,100,"theramore guard SAY_QUEST3","I'd never join anything like this. Better keep this, though. It'll come in handy in the privy..."),
(4979,2,2,12,0,100,"theramore guard SAY_QUEST3","What a bunch of lunatics! You actually believe this stuff?");

-- sartharion
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1615031 AND -1615018;
DELETE FROM `creature_text` WHERE `entry`=28860;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(28860,0,0,14,14093,100,"sartharion SAY_SARTHARION_AGGRO","It is my charge to watch over these eggs. I will see you burn before any harm comes to them!"),
(28860,1,0,14,14103,100,"sartharion SAY_SARTHARION_BERSERK","This pathetic siege ends NOW!"),
(28860,2,0,14,14098,100,"sartharion SAY_SARTHARION_BREATH","Burn, you miserable wretches!"),
(28860,3,0,14,14105,100,"sartharion SAY_SARTHARION_CALL_SHADRON","Shadron! Come to me, all is at risk!"),
(28860,4,0,14,14106,100,"sartharion SAY_SARTHARION_CALL_TENEBRON","Tenebron! The eggs are yours to protect as well!"),
(28860,5,0,14,14104,100,"sartharion SAY_SARTHARION_CALL_VESPERON","Vesperon! The clutch is in danger! Assist me!"),
(28860,6,0,14,14107,100,"sartharion SAY_SARTHARION_DEATH","Such is the price... of failure..."),
(28860,7,0,14,14099,100,"sartharion SAY_SARTHARION_SPECIAL_1","Such flammable little insects...."),
(28860,7,1,14,14100,100,"sartharion SAY_SARTHARION_SPECIAL_2","Your charred bones will litter the floor!"),
(28860,7,2,14,14101,100,"sartharion SAY_SARTHARION_SPECIAL_3","How much heat can you take?"),
(28860,7,3,14,14102,100,"sartharion SAY_SARTHARION_SPECIAL_4","All will be reduced to ash!"),
(28860,8,0,14,14094,100,"sartharion SAY_SARTHARION_SLAY_1","You will make a fine meal for the hatchlings."),
(28860,8,1,14,14096,100,"sartharion SAY_SARTHARION_SLAY_2","You are the grave disadvantage."),
(28860,8,2,14,14097,100,"sartharion SAY_SARTHARION_SLAY_3","This is why we call you lesser beeings."),
(28860,9,0,42,0,100,"sartharion WHISPER_LAVA_CHURN","The lava surrounding %s churns!");

-- tenebron
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1615016 AND -1615009;
DELETE FROM `creature_text` WHERE `entry`=30452;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(30452,0,0,14,14122,100,"tenebron SAY_TENEBRON_AGGRO","You have no place here. Your place is among the departed."),
(30452,1,0,14,14123,100,"tenebron SAY_TENEBRON_SLAY_1","No contest."),
(30452,1,1,14,14124,100,"tenebron SAY_TENEBRON_SLAY_2","Typical... Just as I was having fun."),
(30452,2,0,14,14129,100,"tenebron SAY_TENEBRON_DEATH","I should not... have held back..."),
(30452,3,0,14,14125,100,"tenebron SAY_TENEBRON_BREATH","To darkness I condemn you..."),
(30452,4,0,14,14128,100,"tenebron SAY_TENEBRON_RESPOND","It is amusing to watch you struggle. Very well, witness how it is done."),
(30452,5,0,14,14126,100,"tenebron SAY_TENEBRON_SPECIAL_1","Arrogant little creatures! To challenge powers you do not yet understand..."),
(30452,5,1,14,14127,100,"tenebron SAY_TENEBRON_SPECIAL_2","I am no mere dragon! You will find I am much, much, more..."),
(30452,6,0,42,0,100,"tenebron WHISPER_HATCH_EGGS","%s begins to hatch eggs in the twilight!");

-- shadron
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1615007 AND -1615000;
DELETE FROM `creature_text` WHERE `entry`=30451;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(30451,0,0,14,14111,100,"shadron SAY_SHADRON_AGGRO","I fear nothing! Least of all you!"),
(30451,1,0,14,14112,100,"shadron SAY_SHADRON_SLAY_1","You are insignificant!"),
(30451,1,1,14,14113,100,"shadron SAY_SHADRON_SLAY_2","Such mediocre resistance!"),
(30451,2,0,14,14118,100,"shadron SAY_SHADRON_DEATH","We...are superior! How could this...be..."),
(30451,3,0,14,14114,100,"shadron SAY_SHADRON_BREATH","You are easily bested! "),
(30451,4,0,14,14117,100,"shadron SAY_SHADRON_RESPOND","I will take pity on you Sartharion, just this once."),
(30451,5,0,14,14115,100,"shadron SAY_SHADRON_SPECIAL_1","Father tought me well!"),
(30451,5,1,14,14116,100,"shadron SAY_SHADRON_SPECIAL_2","On your knees!"),
(30451,6,0,42,0,100,"shadron WHISPER_OPEN_PORTAL","%s begins to open a Twilight Portal!");

-- vesperon
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1615040 AND -1615033;
DELETE FROM `creature_text` WHERE `entry`=30449;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(30449,0,0,14,14133,100,"vesperon SAY_VESPERON_AGGRO","You pose no threat, lesser beings...give me your worst!"),
(30449,1,0,14,14134,100,"vesperon SAY_VESPERON_SLAY_1","The least you could do is put up a fight..."),
(30449,1,1,14,14135,100,"vesperon SAY_VESPERON_SLAY_2","Was that the best you can do?"),
(30449,2,0,14,14140,100,"vesperon SAY_VESPERON_DEATH","I still have some...fight..in...me..."),
(30449,3,0,14,14136,100,"vesperon SAY_VESPERON_BREATH","I will pick my teeth with your bones!"),
(30449,4,0,14,14139,100,"vesperon SAY_VESPERON_RESPOND","Father was right about you, Sartharion...You are a weakling!"),
(30449,5,0,14,14137,100,"vesperon SAY_VESPERON_SPECIAL_1","Aren't you tricky...I have a few tricks of my own..."),
(30449,5,1,14,14138,100,"vesperon SAY_VESPERON_SPECIAL_2","Unlike, I have many talents."),
(30449,6,0,42,0,100,"vesperon WHISPER_OPEN_PORTAL","%s begins to open a Twilight Portal!");

-- novos
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1600005 AND -1600000;
DELETE FROM `creature_text` WHERE `entry`=26631;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(26631,0,0,14,13173,100,"novos SAY_AGGRO","The chill that you feel is the herald of your doom!"),
(26631,1,0,14,13175,100,"novos SAY_KILL","Such is the fate of all who oppose the Lich King."),
(26631,2,0,14,13174,100,"novos SAY_DEATH","Your efforts... are in vain."),
(26631,3,0,14,13176,100,"novos SAY_NECRO_ADD","Bolster my defenses! Hurry, curse you!"),
(26631,4,0,14,13177,100,"novos SAY_REUBBLE_1","Surely you can see the futility of it all!"),
(26631,4,1,14,13178,100,"novos SAY_REUBBLE_2","Just give up and die already!");

-- tharon ja
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1600018 AND -1600011;
DELETE FROM `creature_text` WHERE `entry`=26632;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(26632,0,0,14,13862,100,"tharon ja SAY_AGGRO","Tharon'ja sees all! The work of mortals shall not end the eternal dynasty!"),
(26632,1,0,14,13863,100,"tharon ja SAY_KILL_1","As Tharon'ja predicted."),
(26632,1,1,14,13864,100,"tharon ja SAY_KILL_2","As it was written."),
(26632,2,0,14,13865,100,"tharon ja SAY_FLESH_1","Your flesh serves Tharon'ja now!"),
(26632,2,1,14,13866,100,"tharon ja SAY_FLESH_2","Tharon'ja has a use for your mortal shell!"),
(26632,3,0,14,13867,100,"tharon ja SAY_SKELETON_1","No! A taste... all too brief!"),
(26632,3,1,14,13868,100,"tharon ja SAY_SKELETON_2","Tharon'ja will have more!"),
(26632,4,0,14,13869,100,"tharon ja SAY_DEATH","I'm... impossible! Tharon'ja is eternal! Tharon'ja... is...");

-- trollgore
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1600010 AND -1600006;
DELETE FROM `creature_text` WHERE `entry`=26630;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(26630,0,0,14,13181,100,"trollgore SAY_AGGRO","More grunts, more glands, more FOOD!"),
(26630,1,0,14,13185,100,"trollgore SAY_KILL","You have gone, me gonna eat you!"),
(26630,2,0,14,13182,100,"trollgore SAY_CONSUME","So hungry! Must feed!"),
(26630,3,0,14,13184,100,"trollgore SAY_EXPLODE","Corpse go boom!"),
(26630,4,0,14,13183,100,"trollgore SAY_DEATH","Aaaargh...");

-- bronjham
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1632006 AND -1632001;
DELETE FROM `creature_text` WHERE `entry`=36497;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(36497,0,0,14,16595,100,"bronjham SAY_AGGRO","Finally...a captive audience!"),
(36497,1,0,14,16596,100,"bronjham SAY_SLAY_1","Fodder for the engine!"),
(36497,1,1,14,16597,100,"bronjham SAY_SLAY_2","Another soul to strengthen the host!"),
(36497,2,0,14,16598,100,"bronjham SAY_DEATH",""),
(36497,3,0,14,16599,100,"bronjham SAY_SOUL_STORM","The vortex of the harvested calls to you!"),
(36497,4,0,14,16600,100,"bronjham SAY_CORRUPT_SOUL","I will sever the soul from your body!");

-- devoureur
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1632030 AND -1632010;
DELETE FROM `creature_text` WHERE `entry` IN (36502,38160,38161);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(36502,0,0,14,16884,100,"devoureur SAY_FACE_ANGER_AGGRO","You dare look upon the host of souls? I SHALL DEVOUR YOU WHOLE!"),
(36502,0,1,14,16890,100,"devoureur SAY_FACE_DESIRE_AGGRO","You dare look upon the host of souls? I SHALL DEVOUR YOU WHOLE!"),
(36502,1,0,14,16885,100,"devoureur SAY_FACE_ANGER_SLAY_1","Damnation!"),
(36502,1,1,14,16886,100,"devoureur SAY_FACE_ANGER_SLAY_2","Doomed for eternity!"),
(36502,2,0,14,16896,100,"devoureur SAY_FACE_SORROW_SLAY_1","Damnation!"),
(36502,2,1,14,16897,100,"devoureur SAY_FACE_SORROW_SLAY_2","Doomed for eternity!"),
(36502,3,0,14,16891,100,"devoureur SAY_FACE_DESIRE_SLAY_1","Damnation!"),
(36502,3,1,14,16892,100,"devoureur SAY_FACE_DESIRE_SLAY_2","Doomed for eternity!"),
(36502,4,0,14,16887,100,"devoureur SAY_FACE_ANGER_DEATH","The swell of souls will not be abated! You only delay the inevitable!"),
(36502,4,1,14,16898,100,"devoureur SAY_FACE_SORROW_DEATH","The swell of souls will not be abated! You only delay the inevitable!"),
(36502,4,2,14,16893,100,"devoureur SAY_FACE_DESIRE_DEATH","The swell of souls will not be abated! You only delay the inevitable!"),
(36502,5,0,41,0,100,"devoureur EMOTE_MIRRORED_SOUL","Devourer of Souls begins to cast Mirrored Soul!"),
(36502,6,0,41,0,100,"devoureur EMOTE_UNLEASH_SOUL","Devourer of Souls begins to Unleash Souls!"),
(36502,7,0,14,16888,100,"devoureur SAY_FACE_ANGER_UNLEASH_SOUL","SUFFERING! ANGUISH! CHAOS! RISE AND FEED!"),
(36502,7,1,14,16899,100,"devoureur SAY_FACE_SORROW_UNLEASH_SOUL","SUFFERING! ANGUISH! CHAOS! RISE AND FEED!"),
(36502,7,2,14,16894,100,"devoureur SAY_FACE_DESIRE_UNLEASH_SOUL","SUFFERING! ANGUISH! CHAOS! RISE AND FEED!"),
(36502,8,0,41,0,100,"devoureur EMOTE_WAILING_SOUL","Devourer of Souls begins to cast Wailing Souls!"),
(36502,9,0,14,16889,100,"devoureur SAY_FACE_ANGER_WAILING_SOUL","Stare into the abyss, and see your end!"),
(36502,9,1,14,16895,100,"devoureur SAY_FACE_DESIRE_WAILING_SOUL","Stare into the abyss, and see your end!"),
(38160,0,0,14,16625,100,"jaina SAY_JAINA_OUTRO","Excellent work, champions! We shall set up our base camp in these chambers. My mages will get the Scourge transport device working shortly. Step inside it when you're ready for your next mission. I will meet you on the other side."),
(38161,0,0,14,17044,100,"sylvanas SAY_SYLVANAS_OUTRO","Excellent work, champions! We shall set up our base camp in these chambers. My mages will get the Scourge transport device working shortly. Step inside when you are ready for your next mission. I will meet you on the other side.");

-- lurgglbr
DELETE FROM `creature_text` WHERE `entry`=25208;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(25208,0,0,12,0,100,"lurgglbr SAY_START_1","Together we will fight our way out of here. Are you ready?"),
(25208,1,0,12,0,100,"lurgglbr SAY_START_2","Then we leave."),
(25208,2,0,12,0,100,"lurgglbr SAY_END_1","This is far enough. I can make it on my own from here."),
(25208,3,0,12,0,100,"lurgglbr SAY_END_2","Thank you for helping me $r. Please tell the king I am back.");

-- jaina
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1632047 AND -1632040;
DELETE FROM `creature_text` WHERE `entry`=37597;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(37597,0,0,12,16617,100,"jaina SAY_INTRO_1","Thank the light for seeing you here safely. We have much work to do if we are to defeat the Lich King and put an end to the Scourge."),
(37597,1,0,12,16618,100,"jaina SAY_INTRO_2","Our allies within the Argent Crusade and the Knights of the Ebon Blade have broken through the front gate of Icecrown and are attempting to establish a foothold within the Citadel."),
(37597,2,0,12,16619,100,"jaina SAY_INTRO_3","Their success hinges upon what we discover in these cursed halls. Although our mission is a wrought with peril, we must persevere!"),
(37597,3,0,12,16620,100,"jaina SAY_INTRO_4","With the attention of the Lich King drawn toward the front gate, we will be working our way through the side in search of information that will enable us to defeat the Scourge - once and for all."),
(37597,4,0,12,16621,100,"jaina SAY_INTRO_5","King Varian's SI7 agents have gathered information about a private sanctum of the Lich King's deep within a place called the Halls of Reflection."),
(37597,5,0,12,16622,100,"jaina SAY_INTRO_6","We will carve a path through this wretched place and find a way to enter the Halls of Reflection. I sense powerful magic hidden away within those walls... Magic that could be the key to destroy the Scourge."),
(37597,6,0,12,16623,100,"jaina SAY_INTRO_7","Your first mission is to destroy the machines of death within this malevolent engine of souls, and clear a path for our soldiers."),
(37597,7,0,12,16624,100,"jaina SAY_INTRO_8","Make haste, champions! I will prepare the troops to fall in behind you.");

-- sylvanas
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1632055 AND -1632050;
DELETE FROM `creature_text` WHERE `entry`=37596;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(37596,0,0,12,17038,100,"sylvanas SAY_INTRO_1","The Argent Crusade and the Knights of the Ebon Blade have assaulted the gates of Icecrown Citadel and are preparing for a massive attack upon the Scourge. Our missition is a bit more subtle, but equally as important."),
(37596,1,0,12,17039,100,"sylvanas SAY_INTRO_2","With the attention of the Lich King turned towards the front gate, we'll be working our way through the side in search of information that will enable us to defeat the Lich King - once and for all."),
(37596,2,0,12,17040,100,"sylvanas SAY_INTRO_3","Our scouts have reported that the Lich King has a private chamber, outside of the Frozen Throne, deep within a place called the Halls of Reflection. That is our target, champions."),
(37596,3,0,12,17041,100,"sylvanas SAY_INTRO_4","We will cut a swath of destruction through this cursed place and find a way to enter the Halls of Reflection. If there is anything of value to be found here, it will be found in the Halls."),
(37596,4,0,12,17042,100,"sylvanas SAY_INTRO_5","Your first mission is to destroy the machines of death within this wretched engine of souls, and clear a path for our soldiers."),
(37596,5,0,12,17043,100,"sylvanas SAY_INTRO_6","The Dark Lady watches over you. Make haste!");

-- falric
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1668055 AND -1668050;
DELETE FROM `creature_text` WHERE `entry`=38112;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(38112,0,0,14,16710,100,"falric SAY_AGGRO","Men, women and children... None were spared the master's wrath. Your death will be no different."),
(38112,1,0,14,16711,100,"falric SAY_SLAY_1","Sniveling maggot!"),
(38112,1,1,14,16712,100,"falric SAY_SLAY_2","The children of Stratholme fought with more ferocity!"),
(38112,2,0,14,16713,100,"falric SAY_DEATH","Marwyn, finish them..."),
(38112,3,0,14,16715,100,"falric SAY_IMPENDING_DESPAIR","Despair... so delicious..."),
(38112,4,0,14,16716,100,"falric SAY_DEFILING_HORROR","Fear... so exhilarating...");

-- marwyn
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1668065 AND -1668060;
DELETE FROM `creature_text` WHERE `entry`=38113;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(38113,0,0,14,16734,100,"marwyn SAY_AGGRO","Death is all that you will find here!"),
(38113,1,0,14,16735,100,"marwyn SAY_SLAY_1","I saw the same look in his eyes when he died. Terenas could hardly believe it. Hahahaha!"),
(38113,1,1,14,16736,100,"marwyn SAY_SLAY_2","Choke on your suffering!"),
(38113,2,0,14,16737,100,"marwyn SAY_DEATH","Yes... Run... Run to meet your destiny... Its bitter, cold embrace, awaits you."),
(38113,3,0,14,16739,100,"marwyn SAY_CORRUPTED_FLESH_1","Your flesh has decayed before your very eyes!"),
(38113,3,1,14,16740,100,"marwyn SAY_CORRUPTED_FLESH_2","Waste away into nothingness!");

-- jaina or sylvanas halls of reflection
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1668043 AND -1668001;
DELETE FROM `creature_text` WHERE `entry` IN (37221,37225,37223,37226,38113) OR (`entry`=38112 AND `groupid` IN (5,6));
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
-- Jaina
(37221,0,0,14,16631,100,"Jaina SAY_JAINA_INTRO_1","The chill of this place... Brr... I can feel my blood freezing."),
(37221,1,0,14,16632,100,"Jaina SAY_JAINA_INTRO_2","What is that? Up ahead! Could it be... ? Heroes at my side!"),
(37221,2,0,14,16633,100,"Jaina SAY_JAINA_INTRO_3","Frostmourne! The blade that destroyed our kingdom..."),
(37221,3,0,14,16634,100,"Jaina SAY_JAINA_INTRO_4","Stand back! Touch that blade and your soul will be scarred for all eternity! I must attempt to commune with the spirits locked away within Frostmourne. Give me space, back up please!"),
(37221,4,0,12,16635,100,"Jaina SAY_JAINA_INTRO_5","Uther! Dear Uther! ... I... I'm so sorry."),
(37221,5,0,12,16636,100,"Jaina SAY_JAINA_INTRO_6","Arthas is here? Maybe I..."),
(37221,6,0,12,16637,100,"Jaina SAY_JAINA_INTRO_7","But Uther, if there's any hope of reaching Arthas. I... I must try."),
(37221,7,0,12,16638,100,"Jaina SAY_JAINA_INTRO_8","Tell me how, Uther? How do I destroy my prince? My..."),
(37221,8,0,12,16639,100,"Jaina SAY_JAINA_INTRO_9","You're right, Uther. Forgive me. I... I don't know what got a hold of me. We will deliver this information to the King and the knights that battle the Scourge within Icecrown Citadel."),
(37221,9,0,12,16640,100,"Jaina SAY_JAINA_INTRO_10","Who could bear such a burden?"),
(37221,10,0,12,16641,100,"Jaina SAY_JAINA_INTRO_11","Then maybe there is still hope..."),
(37221,11,0,14,16642,100,"Jaina SAY_JAINA_INTRO_END","You won't deny me this Arthas! I must know! I must find out!"),
-- Lich King
(37226,0,0,14,17225,100,"Lich King SAY_LK_INTRO_1","SILENCE, PALADIN!"),
(37226,1,0,14,17226,100,"Lich King SAY_LK_INTRO_2","So you wish to commune with the dead? You shall have your wish."),
(37226,2,0,14,17227,100,"Lich King SAY_LK_INTRO_3","Falric. Marwyn. Bring their corpses to my chamber when you are through."),
-- Marwyn
(38113,0,0,14,16741,100,"Marwyn SAY_MARWYN_INTRO_1","As you wish, my lord."),
-- Falric
(38112,5,0,14,16717,100,"Falric SAY_FALRIC_INTRO_1","As you wish, my lord."),
(38112,6,0,14,16714,100,"Falric SAY_FALRIC_INTRO_2","Soldiers of Lordaeron, rise to meet your master's call!"),
-- Sylvanas
(37223,0,0,14,17049,100,"Sylvanas SAY_SYLVANAS_INTRO_1","I... I don't believe it! Frostmourne stands before us, unguarded! Just as the Gnome claimed. Come, heroes!"),
(37223,1,0,14,17050,100,"Sylvanas SAY_SYLVANAS_INTRO_2","Standing this close to the blade that ended my life... The pain... It is renewed."),
(37223,2,0,14,17051,100,"Sylvanas SAY_SYLVANAS_INTRO_3","I dare not touch it. Stand back! Stand back as I attempt to commune with the blade! Perhaps our salvation lies within..."),
(37223,3,0,12,17052,100,"Sylvanas SAY_SYLVANAS_INTRO_4","Uther...Uther the Lightbringer. How..."),
(37223,4,0,12,17053,100,"Sylvanas SAY_SYLVANAS_INTRO_5","The Lich King is here? Then my destiny shall be fulfilled today!"),
(37223,5,0,12,17054,100,"Sylvanas SAY_SYLVANAS_INTRO_6","There must be a way... "),
(37223,6,0,12,17055,100,"Sylvanas SAY_SYLVANAS_INTRO_7","Who could bear such a burden?"),
(37223,7,0,12,17056,100,"Sylvanas SAY_SYLVANAS_INTRO_8","The Frozen Throne..."),
(37223,8,0,14,17057,100,"Sylvanas SAY_SYLVANAS_INTRO_END","You will not escape me that easily, Arthas! I will have my vengeance!"),
-- Uther
(37225,0,0,14,16666,100,"Uther SAY_UTHER_INTRO_A2_1","Jaina! Could it truly be you?"),
(37225,1,0,12,16667,100,"Uther SAY_UTHER_INTRO_A2_2","Jaina you haven't much time. The Lich King sees what the sword sees. He will be here shortly!"),
(37225,2,0,12,16668,100,"Uther SAY_UTHER_INTRO_A2_3","No, girl. Arthas is not here. Arthas is merely a presence within the Lich King's mind. A dwindling presence..."),
(37225,3,0,12,16669,100,"Uther SAY_UTHER_INTRO_A2_4","Jaina, listen to me. You must destroy the Lich King. You cannot reason with him. He will kill you and your allies and raise you all as powerful soldiers of the Scourge."),
(37225,4,0,12,16670,100,"Uther SAY_UTHER_INTRO_A2_5","Snap out of it, girl. You must destroy the Lich King at the place where he merged with Ner'zhul - atop the spire, at the Frozen Throne. It is the only way."),
(37225,5,0,12,16671,100,"Uther SAY_UTHER_INTRO_A2_6","There is... something else that you should know about the Lich King. Control over the Scourge must never be lost. Even if you were to strike down the Lich King, another would have to take his place. For without the control of its master, the Scourge would run rampant across the world - destroying all living things."),
(37225,6,0,12,16672,100,"Uther SAY_UTHER_INTRO_A2_7","A grand sacrifice by a noble soul..."),
(37225,7,0,12,16673,100,"Uther SAY_UTHER_INTRO_A2_8","I do not know, Jaina. I suspect that the piece of Arthas that might be left inside the Lich King is all that holds the Scourge from annihilating Azeroth."),
(37225,8,0,12,16674,100,"Uther SAY_UTHER_INTRO_A2_9","No, Jaina! Aargh! He... He is coming! You... You must..."),
(37225,9,0,12,16659,100,"Uther SAY_UTHER_INTRO_H2_1","Careful, girl. I've heard talk of that cursed blade saving us before. Look around you and see what has been born of Frostmourne."),
(37225,10,0,12,16660,100,"Uther SAY_UTHER_INTRO_H2_2","You haven't much time. The Lich King sees what the sword sees. He will be here shortly."),
(37225,11,0,12,16661,100,"Uther SAY_UTHER_INTRO_H2_3","You cannot defeat the Lich King. Not here. You would be a fool to try. He will kill those who follow you and raise them as powerful servants of the Scourge. But for you, Sylvanas, his reward for you would be worse than the last."),
(37225,12,0,12,16662,100,"Uther SAY_UTHER_INTRO_H2_4","Perhaps, but know this: there must always be a Lich King. Even if you were to strike down Arthas, another would have to take his place, for without the control of the Lich King, the Scourge would wash over this world like locusts, destroying all that they touched."),
(37225,13,0,12,16663,100,"Uther SAY_UTHER_INTRO_H2_5","I do not know, Banshee Queen. I suspect that the piece of Arthas that might be left inside the Lich King is all that holds the Scourge from annihilating Azeroth."),
(37225,14,0,12,16664,100,"Uther SAY_UTHER_INTRO_H2_6","Alas, the only way to defeat the Lich King is to destroy him at the place he was created."),
(37225,15,0,12,16665,100,"Uther SAY_UTHER_INTRO_H2_7","I... Aargh... He... He is coming... You... You must...");

-- Some deletions for halls of reflection
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1658041 AND -1658030;
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1658018 AND -1658010;
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1658021 AND -1658020;
DELETE FROM `script_texts` WHERE `entry`=-1658007;

-- Krick
DELETE FROM `creature_text` WHERE `entry`=36477;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(36477,0,0,14,16926,100,"Krick SAY_AGGRO","Our work must not be interrupted! Ick! Take care of them!"),
(36477,1,0,14,16927,100,"Krick SAY_SLAY_1","Ooh...We could probably use these parts!"),
(36477,1,1,14,16928,100,"Krick SAY_SLAY_2","Arms and legs are in short supply...Thanks for your contribution!"),
(36477,2,0,14,16929,100,"Krick SAY_BARRAGE_1","Enough moving around! Hold still while I blow them all up!"),
(36477,3,0,41,0,100,"Krick SAY_BARRAGE_2","Krick begins rapidly conjuring explosive mines!"),
(36477,4,0,14,16930,100,"Krick SAY_POISON_NOVA","Quickly! Poison them all while they're still close!"),
(36477,5,0,14,16931,100,"Krick SAY_CHASE_1","No! That one! That one! Get that one!"),
(36477,5,1,14,16932,100,"Krick SAY_CHASE_2","I've changed my mind...go get that one instead!"),
(36477,5,2,14,16933,100,"Krick SAY_CHASE_3","What are you attacking him for? The dangerous one is over there,fool!"),
(36477,6,0,14,16934,100,"Krick SAY_KRICK_OUTRO_1","Wait! Stop! Don't kill me, please! I'll tell you everything!"),
(36477,7,0,14,16935,100,"Krick SAY_KRICK_OUTRO_3","What you seek is in the master's lair, but you must destroy Tyrannus to gain entry. Within the Halls of Reflection you will find Frostmourne. It... it holds the truth."),
(36477,8,0,14,16936,100,"Krick SAY_KRICK_OUTRO_5","I swear it is true! Please, don't kill me!!"),
(36477,9,0,14,16937,100,"Krick SAY_KRICK_OUTRO_8","Urg... no!!");

-- Ick
DELETE FROM `creature_text` WHERE `entry`=36476;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(36476,0,0,41,0,100,"Ick SAY_ICK_POISON_NOVA","Ick begins to unleash a toxic poison cloud!"),
(36476,1,0,41,0,100,"Ick SAY_ICK_CHASE_1","Ick is chasing you!");

-- Tyrannus
DELETE FROM `creature_text` WHERE `entry`=36658;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(36658,0,0,14,16752,100,"Tyrannus SAY_TYRANNUS_DEATH","Another shall take his place. You waste your time."),
(36658,1,0,14,16753,100,"Tyrannus SAY_TYRANNUS_OUTRO_7","Worthless gnat! Death is all that awaits you!"),
(36658,2,0,14,16754,100,"Tyrannus SAY_TYRANNUS_OUTRO_9","Do not think that I shall permit you entry into my master's sanctum so easily. Pursue me if you dare."),
(36658,3,0,14,16755,100,"Tyrannus SAY_AMBUSH_1","Your pursuit shall be in vain, adventurers, for the Lich King has placed an army of undead at my command! Behold!"),
(36658,4,0,14,16756,100,"Tyrannus SAY_AMBUSH_2","Persistent whelps! You will not reach the entrance of my lord's lair! Soldiers, destroy them!"),
(36658,5,0,14,16757,100,"Tyrannus SAY_GAUNTLET_START","Rimefang! Trap them within the tunnel! Bury them alive!"),
(36658,6,0,14,16758,100,"Tyrannus SAY_TYRANNUS_INTRO_1","Alas, brave, brave adventurers, your meddling has reached its end. Do you hear the clatter of bone and steel coming up the tunnel behind you? That is the sound of your impending demise."),
(36658,7,0,14,16759,100,"Tyrannus SAY_TYRANNUS_INTRO_3","Ha, such an amusing gesture from the rabble. When I have finished with you, my master's blade will feast upon your souls. Die!"),
(36658,8,0,14,16760,100,"Tyrannus SAY_AGGRO","I shall not fail The Lich King! Come and meet your end!"),
(36658,9,0,14,16761,100,"Tyrannus SAY_SLAY_1","Such a shameful display... You are better off dead!"),
(36658,9,1,14,16762,100,"Tyrannus SAY_SLAY_2","Perhaps you should have stayed in the mountains!"),
(36658,10,0,14,16763,100,"Tyrannus SAY_DEATH","Impossible! Rimefang... Warn..."),
(36658,11,0,14,16764,100,"Tyrannus SAY_MARK_RIMEFANG_1","Rimefang, destroy this fool!"),
(36658,12,0,41,0,100,"Tyrannus SAY_MARK_RIMEFANG_2","The frostwyrm Rimefang gazes at $N and readies an icy attack!"),
(36658,13,0,14,16765,100,"Tyrannus SAY_DARK_MIGHT_1","Power... overwhelming!"),
(36658,14,0,41,0,100,"Tyrannus SAY_DARK_MIGHT_2","Scourgelord Tyrannus roars and swells with dark might!");

-- Gorkun
DELETE FROM `creature_text` WHERE `entry`=37592;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(37592,0,0,14,17150,100,"Gorkun SAY_GORKUN_INTRO_2","Heroes! We will hold off the undead as long as we can, even to our dying breath. Deal with the Scourgelord!"),
(37592,1,0,14,0,100,"Gorkun SAY_GORKUN_OUTRO_1","Brave champions, we owe you our lives, our freedom... Though it be a tiny gesture in the face of this enormous debt, I pledge that from this day forth, all will know of your deeds, and the blazing path of light you cut through the shadow of this dark citadel."),
(37592,2,0,14,0,100,"Gorkun SAY_GORKUN_OUTRO_2","This day will stand as a testament not only to your valor, but to the fact that no foe, not even the Lich King himself, can stand when Alliance and Horde set aside their differences and ---");

-- Jaina
DELETE FROM `creature_text` WHERE `entry`=36993;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(36993,0,0,14,16611,100,"Jaina SAY_JAINA_OUTRO_2","I'm not so naive as to believe your appeal for clemency, but I will listen."),
(36993,1,0,14,16612,100,"Jaina SAY_JAINA_OUTRO_4","Frostmourne lies unguarded? Impossible!"),
(36993,2,0,14,16613,100,"Jaina SAY_JAINA_OUTRO_10","What a cruel end. Come, heroes. We must see if the gnome's story is true. If we can separate Arthas from Frostmourne, we might have a chance at stopping him."),
(36993,3,0,14,16614,100,"Jaina SAY_JAYNA_OUTRO_3","Heroes, to me!"),
(36993,4,0,12,16615,100,"Jaina SAY_JAYNA_OUTRO_4","The Frost Queen is gone. We must keep moving - our objective is near."),
(36993,5,0,12,16616,100,"Jaina SAY_JAYNA_OUTRO_5","I... I could not save them... Damn you, Arthas! DAMN YOU!");

-- Sylvanas
DELETE FROM `creature_text` WHERE `entry`=36990;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(36990,0,0,14,17033,100,"Sylvanas SAY_SYLVANAS_OUTRO_2","Why should the Banshee Queen spare your miserable life?"),
(36990,1,0,14,17034,100,"Sylvanas SAY_SYLVANAS_OUTRO_4","Frostmourne? The Lich King is never without his blade! If you are lying to me..."),
(36990,2,0,14,17035,100,"Sylvanas SAY_SYLVANAS_OUTRO_10","A fitting end for a traitor. Come, we must free the slaves and see what is within the Lich King's chamber for ourselves."),
(36990,3,0,14,17037,100,"Sylvanas SAY_SYLVANAS_OUTRO_3","Take cover behind me! Quickly!"),
(36990,4,0,12,17036,100,"Sylvanas SAY_SYLVANAS_OUTRO_4","I thought he'd never shut up. At last, Sindragosa silenced that long-winded fool. To the Halls of Reflection, champions! Our objective is near... I can sense it.");

-- emily
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1800013 AND -1800001;
DELETE FROM `creature_text` WHERE `entry`=26588;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(26588,0,0,12,0,100,"emily SAY_WORGHAGGRO1","Um... I think one of those wolves is back..."),
(26588,1,0,12,0,100,"emily SAY_WORGHAGGRO2","He's going for Mr. Floppy! "),
(26588,2,0,12,0,100,"emily SAY_WORGRAGGRO3","Oh, no! Look, it's another wolf, and it's a biiiiiig one!"),
(26588,3,0,12,0,100,"emily SAY_WORGRAGGRO4","He's gonna eat Mr. Floppy! You gotta help Mr. Floppy! You just gotta!"),
(26588,4,0,12,0,100,"emily SAY_RANDOMAGGRO","There's a big meanie attacking Mr. Floppy! Help! "),
(26588,5,0,12,0,100,"emily SAY_VICTORY1","Let's get out of here before more wolves find us!"),
(26588,6,0,12,0,100,"emily SAY_VICTORY2","Don't go toward the light, Mr. Floppy!"),
(26588,7,0,12,0,100,"emily SAY_VICTORY3","Mr. Floppy, you're ok! Thank you so much for saving Mr. Floppy!"),
(26588,8,0,12,0,100,"emily SAY_VICTORY4","I think I see the camp! We're almost home, Mr. Floppy! Let's go!"),
(26588,9,0,15,0,100,"emily TEXT_EMOTE_WP1","Mr. Floppy revives"),
(26588,10,0,15,0,100,"emily TEXT_EMOTE_AGGRO","The Ravenous Worg chomps down on Mr. Floppy"),
(26588,11,0,12,0,100,"emily SAY_QUEST_ACCEPT","Are you ready, Mr. Floppy? Stay close to me and watch out for those wolves!"),
(26588,12,0,12,0,100,"emily SAY_QUEST_COMPLETE","Thank you for helping me get back to the camp. Go tell Walter that I'm safe now!");

-- venture co straggler
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1603539 AND -1603535;
DELETE FROM `creature_text` WHERE `entry`=27570;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(27570,0,0,12,0,100,"venture co straggler SAY1","We're all gonna die!"),
(27570,0,1,12,0,100,"venture co straggler SAY2","Gotta get out of here!"),
(27570,0,2,12,0,100,"venture co straggler SAY3","No way I'm stickin' around!"),
(27570,0,3,12,0,100,"venture co straggler SAY4","Forget this! I'm going home!"),
(27570,0,4,12,0,100,"venture co straggler SAY5","I didn't sign up for this!");

-- wounded skirmisher
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1800046 AND -1800044;
DELETE FROM `creature_text` WHERE `entry`=27463;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(27463,0,0,12,0,100,"wounded skirmisher RANDOM_SAY_1","Ahh..better.."),
(27463,0,1,12,0,100,"wounded skirmisher RANDOM_SAY_2","Whoa.. i nearly died there. Thank you, $Race!"),
(27463,0,2,12,0,100,"wounded skirmisher RANDOM_SAY_3","Thank you. $Class!");

-- Gal'darah
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1604009 AND -1604000;
DELETE FROM `creature_text` WHERE `entry`=29306;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(29306,0,0,12,0,100,"Gal'darah SAY_AGGRO","I'm gonna spill your guts, mon!"),
(29306,1,0,12,0,100,"Gal'darah SAY_SLAY_1","What a rush!"),
(29306,1,1,12,0,100,"Gal'darah SAY_SLAY_2","Who needs gods, when WE ARE GODS!"),
(29306,1,2,12,0,100,"Gal'darah SAY_SLAY_3","I told ya so!"),
(29306,2,0,12,0,100,"Gal'darah SAY_DEATH","Even the mighty... can fall."),
(29306,3,0,12,0,100,"Gal'darah SAY_SUMMON_RHINO_1","Gut them! Impale them!"),
(29306,3,1,12,0,100,"Gal'darah SAY_SUMMON_RHINO_2","KILL THEM ALL!"),
(29306,3,2,12,0,100,"Gal'darah SAY_SUMMON_RHINO_3","Say hello to my BIG friend!"),
(29306,4,0,12,0,100,"Gal'darah SAY_TRANSFORM_1","Ain't gonna be nottin' left after this!"),
(29306,5,0,12,0,100,"Gal'darah SAY_TRANSFORM_2","You wanna see power? I'm gonna show you power!");

-- ------------------------------- --
-- Creature text conversion part 6 --
-- ------------------------------- --
-- moorabi
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1604017 AND -1604010;
DELETE FROM `creature_text` WHERE `entry`=29305;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(29305,0,0,14,0,100,"moorabi SAY_AGGRO","We fought back da Scourge. What chance joo be thinkin' JOO got?"),
(29305,1,0,14,0,100,"moorabi SAY_SLAY_1","Who gonna stop me; you? "),
(29305,1,1,14,0,100,"moorabi SAY_SLAY_2","Not so tough now."),
(29305,2,0,14,0,100,"moorabi SAY_DEATH","If our gods can die... den so can we... "),
(29305,3,0,14,0,100,"moorabi SAY_TRANSFORM","Get ready for somethin'... much... BIGGAH! "),
(29305,4,0,14,0,100,"moorabi SAY_QUAKE","Da ground gonna swallow you up"),
(29305,5,0,41,0,100,"moorabi EMOTE_TRANSFORM","%s begins to transform!");

-- Slad'ran
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1604023 AND -1604017;
DELETE FROM `creature_text` WHERE `entry`=29304;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(29304,0,0,41,0,100,"Slad'ran EMOTE_TRANSFORM","%s begins to transform!"),
(29304,1,0,12,0,100,"Slad'ran SAY_SLAY_1","Ye not breathin'! Good."),
(29304,1,1,12,0,100,"Slad'ran SAY_SLAY_2","You ssscared now?"),
(29304,1,2,12,0,100,"Slad'ran SAY_SLAY_3","I'll eat you next, mon!"),
(29304,2,0,12,0,100,"Slad'ran SAY_DEATH","I sssee now... Ssscourge wasss not... our greatessst enemy..."),
(29304,3,0,12,0,100,"Slad'ran SAY_SUMMON_SNAKES","Minionsss of the scale, heed my call!"),
(29304,4,0,12,0,100,"Slad'ran SAY_SUMMON_CONSTRICTORS","A thousssand fangs gonna rend your flesh!");

-- blood queen lana thel
DELETE FROM `creature_text` WHERE `entry`=37955 AND `groupid`=12;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(37955,12,0,41,0,100,"blood queen lana thel EMOTE_BERSERK_RAID","%s goes into a berserker rage!");

-- sindragosa
DELETE FROM `creature_text` WHERE `entry`=36853 AND `groupid`=11;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(36853,11,0,41,0,100,"sindragosa EMOTE_BERSERK_RAID","%s goes into a berserker rage!");

-- anubrekhan
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1533008 AND -1533000;
DELETE FROM `creature_text` WHERE `entry`=15956;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(15956,0,0,14,8785,100,"anubrekhan SAY_AGGRO1","Just a little taste..."),
(15956,0,1,14,8786,100,"anubrekhan SAY_AGGRO2","There is no way out."),
(15956,0,2,14,8787,100,"anubrekhan SAY_AGGRO3","Yes, Run! It makes the blood pump faster!"),
(15956,1,0,14,8788,100,"anubrekhan SAY_GREET1","Ahh... welcome to my parlor."),
(15956,1,1,14,8790,100,"anubrekhan SAY_GREET2","I hear little hearts beating. Yesss... beating faster now. Soon the beating will stop."),
(15956,1,2,14,8791,100,"anubrekhan SAY_GREET3","Where to go? What to do? So many choices that all end in pain, end in death."),
(15956,1,3,14,8792,100,"anubrekhan SAY_GREET4","Which one shall I eat first? So difficult to choose... the all smell so delicious."),
(15956,1,4,14,8793,100,"anubrekhan SAY_GREET5","Closer now... tasty morsels. I've been too long without food. Without blood to drink."),
(15956,2,0,14,8789,100,"anubrekhan SAY_SLAY","Shh... it will all be over soon.");

-- faerlina
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1533016 AND -1533009;
DELETE FROM `creature_text` WHERE `entry`=15953;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(15953,0,0,14,8799,100,"faerlina SAY_GREET","Your old lives, your mortal desires, mean nothing. You are acolytes of the master now, and you will serve the cause without question! The greatest glory is to die in the master's service!"),
(15953,1,0,14,8794,100,"faerlina SAY_AGGRO1","Slay them in the master's name!"),
(15953,1,1,14,8795,100,"faerlina SAY_AGGRO2","You cannot hide from me!"),
(15953,1,2,14,8796,100,"faerlina SAY_AGGRO3","Kneel before me, worm!"),
(15953,1,3,14,8797,100,"faerlina SAY_AGGRO4","Run while you still can!"),
(15953,2,0,14,8800,100,"faerlina SAY_SLAY1","You have failed!"),
(15953,2,1,14,8801,100,"faerlina SAY_SLAY2","Pathetic wretch!"),
(15953,3,0,14,8798,100,"faerlina SAY_DEATH","The master... will avenge me!");

-- korthazz
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1533057 AND -1533051;
DELETE FROM `creature_text` WHERE `entry`=16064;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(16064,0,0,14,8899,100,"korthazz SAY_KORT_AGGRO","Come out and fight, ye wee ninny!"),
(16064,1,0,14,8903,100,"korthazz SAY_KORT_TAUNT1","To arms, ye roustabouts! We've got company!"),
(16064,1,1,14,8904,100,"korthazz SAY_KORT_TAUNT2","I heard about enough of yer sniveling. Shut yer fly trap 'afore I shut it for ye!"),
(16064,1,2,14,8905,100,"korthazz SAY_KORT_TAUNT3","I'm gonna enjoy killin' these slack-jawed daffodils!"),
(16064,2,0,14,8902,100,"korthazz SAY_KORT_SPECIAl","I like my meat extra crispy!"),
(16064,3,0,14,8901,100,"korthazz SAY_KORT_SLAY","Next time, bring more friends!"),
(16064,4,0,14,8900,100,"korthazz SAY_KORT_DEATH","What a bloody waste this is!");

-- blaumeux
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1533050 AND -1533044;
DELETE FROM `creature_text` WHERE `entry`=16065;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(16065,0,0,14,8892,100,"blaumeux SAY_BLAU_AGGRO","Defend youself!"),
(16065,1,0,14,8896,100,"blaumeux SAY_BLAU_TAUNT1","Come, Zeliek, do not drive them out. Not before we've had our fun."),
(16065,1,1,14,8897,100,"blaumeux SAY_BLAU_TAUNT2","I do hope they stay alive long enough for me to... introduce myself."),
(16065,1,2,14,8898,100,"blaumeux SAY_BLAU_TAUNT3","The first kill goes to me! Anyone care to wager?"),
(16065,2,0,14,8895,100,"blaumeux SAY_BLAU_SPECIAL","Your life is mine!"),
(16065,3,0,14,8894,100,"blaumeux SAY_BLAU_SLAY","Who's next?"),
(16065,4,0,14,8893,100,"blaumeux SAY_BLAU_DEATH","Tou... che!");

-- rivendare
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1533074 AND -1533065;
DELETE FROM `creature_text` WHERE `entry`=30549;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(30549,0,0,14,14571,100,"rivendare SAY_RIVE_AGGRO1","You seek death?"),
(30549,0,1,14,14572,100,"rivendare SAY_RIVE_AGGRO2","None shall pass!"),
(30549,0,2,14,14573,100,"rivendare SAY_RIVE_AGGRO3","Be still!"),
(30549,1,0,14,14577,100,"rivendare SAY_RIVE_TAUNT1","Enough prattling. Let them come! We shall grind their bones to dust."),
(30549,1,1,14,14578,100,"rivendare SAY_RIVE_TAUNT2","Conserve your anger! Harness your rage! You will all have outlets for your frustration soon enough."),
(30549,1,2,14,14579,100,"rivendare SAY_RIVE_TAUNT3","Life is meaningless. It is in death that we are truly tested."),
(30549,2,0,14,14576,100,"rivendare SAY_RIVE_SPECIAL","Bow to the might of the scourge!"),
(30549,3,0,14,14574,100,"rivendare SAY_RIVE_SLAY1","You will find no peace in death."),
(30549,3,1,14,14575,100,"rivendare SAY_RIVE_SLAY2","The master's will is done."),
(30549,4,0,14,14580,100,"rivendare SAY_RIVE_DEATH","Death... will not stop me...");

-- zeliek
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1533064 AND -1533058;
DELETE FROM `creature_text` WHERE `entry`=16063;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(16063,0,0,14,8913,100,"zeliek SAY_ZELI_AGGRO","Flee, before it's too late!"),
(16063,1,0,14,8917,100,"zeliek SAY_ZELI_TAUNT1","Invaders, cease this foolish venture at once! Turn away while you still can!"),
(16063,1,1,14,8918,100,"zeliek SAY_ZELI_TAUNT2","Perhaps they will come to their senses, and run away as fast as they can!"),
(16063,1,2,14,8919,100,"zeliek SAY_ZELI_TAUNT3","Do not continue! Turn back while there's still time!"),
(16063,2,0,14,8916,100,"zeliek SAY_ZELI_SPECIAL","I- I have no choice but to obey!"),
(16063,3,0,14,8915,100,"zeliek SAY_ZELI_SLAY","Forgive me!"),
(16063,4,0,14,8914,100,"zeliek SAY_ZELI_DEATH","It is... as it should be.");

-- gothik
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1533043 AND -1533040;
DELETE FROM `creature_text` WHERE `entry`=16060;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(16060,0,0,14,8807,100,"gothik SAY_SPEECH","Foolishly you have sought your own demise. Brazenly you have disregarded powers beyond your understanding. You have fought hard to invade the realm of the harvester. Now there is only one way out - to walk the lonely path of the damned."),
(16060,1,0,14,8806,100,"gothik SAY_KILL","Death is the only escape."),
(16060,2,0,14,8805,100,"gothik SAY_DEATH","I... am... undone!"),
(16060,3,0,14,8808,100,"gothik SAY_TELEPORT","I have waited long enough! Now, you face the harvester of souls!");

-- heigan
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1533118 AND -1533109;
DELETE FROM `creature_text` WHERE `entry`=15936;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(15936,0,0,14,8825,100,"heigan SAY_AGGRO1","You are mine now!"),
(15936,0,1,14,8826,100,"heigan SAY_AGGRO2","I see you!"),
(15936,0,2,14,8827,100,"heigan SAY_AGGRO3","You...are next!"),
(15936,1,0,14,8829,100,"heigan SAY_SLAY","Close your eyes... sleep!"),
(15936,2,0,14,8830,100,"heigan SAY_TAUNT1","The races of the world will perish. It is only a matter of time."),
(15936,2,1,14,8831,100,"heigan SAY_TAUNT2","I see endless suffering, I see torment, I see rage. I see... everything!"),
(15936,2,2,14,8832,100,"heigan SAY_TAUNT3","Soon... the world will tremble!"),
(15936,2,3,14,8833,100,"heigan SAY_TAUNT4","The end is upon you."),
(15936,2,4,14,8834,100,"heigan SAY_TAUNT5","Hungry worms will feast on your rotten flesh!"),
(15936,3,0,14,8828,100,"heigan SAY_DEATH","Noo... o...");

-- noth
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1533081 AND -1533075;
DELETE FROM `creature_text` WHERE `entry`=15954;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(15954,0,0,14,8845,100,"noth SAY_AGGRO1","Glory to the master!"),
(15954,0,1,14,8846,100,"noth SAY_AGGRO2","Your life is forfeit!"),
(15954,0,2,14,8847,100,"noth SAY_AGGRO3","Die, trespasser!"),
(15954,1,0,14,8851,100,"noth SAY_SUMMON","Rise, my soldiers! Rise and fight once more!"),
(15954,2,0,14,8849,100,"noth SAY_SLAY1","My task is done!"),
(15954,2,1,14,8850,100,"noth SAY_SLAY2","Breathe no more!"),
(15954,3,0,14,8848,100,"noth SAY_DEATH","I will serve the master... in... death!");

-- patchwerk
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1533022 AND -1533017;
DELETE FROM `creature_text` WHERE `entry`=16028;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(16028,0,0,14,8909,100,"patchwerk SAY_AGGRO1","Patchwerk want to play!"),
(16028,0,1,14,8910,100,"patchwerk SAY_AGGRO2","Kel'Thuzad make Patchwerk his Avatar of War!"),
(16028,1,0,14,8912,100,"patchwerk SAY_SLAY","No more play?"),
(16028,2,0,14,8911,100,"patchwerk SAY_DEATH","What happened to... Patch..."),
(16028,3,0,16,0,100,"patchwerk EMOTE_BERSERK","goes into a berserker rage!"),
(16028,4,0,16,0,100,"patchwerk EMOTE_ENRAGE","%s becomes enraged!");

-- stalagg
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1533025 AND -1533023;
DELETE FROM `creature_text` WHERE `entry`=15929;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(15929,0,0,14,8864,100,"stalagg SAY_STAL_AGGRO","Stalagg crush you!"),
(15929,1,0,14,8866,100,"stalagg SAY_STAL_SLAY","Stalagg kill!"),
(15929,2,0,14,8865,100,"stalagg SAY_STAL_DEATH","Master save me...");

-- feugen
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1533028 AND -1533026;
DELETE FROM `creature_text` WHERE `entry`=15930;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(15930,0,0,14,8802,100,"feugen SAY_FEUG_AGGRO","Feed you to master!"),
(15930,1,0,14,8804,100,"feugen SAY_FEUG_SLAY","Feugen make master happy!"),
(15930,2,0,14,8803,100,"feugen SAY_FEUG_DEATH","No... more... Feugen...");

-- thaddius
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1533039 AND -1533029;
DELETE FROM `creature_text` WHERE `entry`=15928;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(15928,0,0,14,8872,100,"thaddius SAY_GREET","You are too late... I... must... OBEY!"),
(15928,1,0,14,8867,100,"thaddius SAY_AGGRO1","KILL!"),
(15928,1,1,14,8868,100,"thaddius SAY_AGGRO2","EAT YOUR BONES!"),
(15928,1,2,14,8869,100,"thaddius SAY_AGGRO3","BREAK YOU!"),
(15928,2,0,14,8877,100,"thaddius SAY_SLAY","You die now!"),
(15928,3,0,14,8871,100,"thaddius SAY_ELECT","Now YOU feel pain!"),
(15928,4,0,14,8870,100,"thaddius SAY_DEATH","Thank... you..."),
(15928,5,0,14,8873,100,"thaddius SAY_SCREAM1","Pleeease!"),
(15928,5,1,14,8874,100,"thaddius SAY_SCREAM2","Stop, make it stop!"),
(15928,5,2,14,8875,100,"thaddius SAY_SCREAM3","Help me! Save me!"),
(15928,5,3,14,8876,100,"thaddius SAY_SCREAM4","Please, nooo!");

-- anomalus
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1576013 AND -1576010;
DELETE FROM `creature_text` WHERE `entry`=26763;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(26763,0,0,14,13186,100,"anomalus SAY_AGGRO","Chaos beckons."),
(26763,1,0,14,13187,100,"anomalus SAY_DEATH","Of course."),
(26763,2,0,14,13188,100,"anomalus SAY_RIFT","Reality... unwoven."),
(26763,3,0,14,13189,100,"anomalus SAY_SHIELD","Indestructible.");

DELETE FROM `script_texts` WHERE `entry` BETWEEN -1576044 AND -1576040;
DELETE FROM `creature_text` WHERE `entry`=26723;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(26723,0,0,14,13450,100,"keristrasza SAY_AGGRO","Preserve? Why? There's no truth in it. No no no... only in the taking! I see that now!"),
(26723,1,0,14,13453,100,"keristrasza SAY_SLAY","Now we've come to the truth!"),
(26723,2,0,14,13452,100,"keristrasza SAY_ENRAGE","Finish it! FINISH IT! Kill me, or I swear by the Dragonqueen you'll never see daylight again!"),
(26723,3,0,14,13454,100,"keristrasza SAY_DEATH","Dragonqueen... Life-Binder... preserve... me."),
(26723,4,0,14,13451,100,"keristrasza SAY_CRYSTAL_NOVA","Stay. Enjoy your final moments.");

-- grand magus telestra
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1576005 AND -1576000;
DELETE FROM `creature_text` WHERE `entry`=26731;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(26731,0,0,14,13319,100,"grand magus telestra SAY_AGGRO","You know what they say about curiosity."),
(26731,1,0,14,13324,100,"grand magus telestra SAY_KILL","Death becomes you!"),
(26731,2,0,14,13320,100,"grand magus telestra SAY_DEATH","Damn the... luck."),
(26731,3,0,14,13323,100,"grand magus telestra SAY_MERGE","Now to finish the job!"),
(26731,4,0,14,13321,100,"grand magus telestra SAY_SPLIT_1","There's plenty of me to go around."),
(26731,4,1,14,13322,100,"grand magus telestra SAY_SPLIT_2","I'll give you more than you can handle.");

-- drakos
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1578016 AND -1578005;
DELETE FROM `creature_text` WHERE `entry`=27654;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(27654,0,0,14,13594,100,"drakos SAY_AGGRO","The prisoners shall not go free! The word of Malygos is law!"),
(27654,1,0,14,13602,100,"drakos SAY_KILL_1","A fitting punishment!"),
(27654,1,1,14,13603,100,"drakos SAY_KILL_2","Sentence: executed!"),
(27654,1,2,14,13604,100,"drakos SAY_KILL_3","Another casualty of war!"),
(27654,2,0,14,13605,100,"drakos SAY_DEATH","The war... goes on."),
(27654,3,0,14,13598,100,"drakos SAY_PULL_1","It is too late to run!"),
(27654,3,1,14,13599,100,"drakos SAY_PULL_2","Gather 'round...."),
(27654,3,2,14,13600,100,"drakos SAY_PULL_3","None shall escape!"),
(27654,3,3,14,13601,100,"drakos SAY_PULL_4","I condemn you to death!"),
(27654,4,0,14,13595,100,"drakos SAY_STOMP_1","Tremble, worms!"),
(27654,4,1,14,13596,100,"drakos SAY_STOMP_2","I will crush you!"),
(27654,4,2,14,13597,100,"drakos SAY_STOMP_3","Can you fly?");

-- urom
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1578004 AND -1578000;
DELETE FROM `creature_text` WHERE `entry`=27655;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(27655,0,0,14,0,100,"urom SAY_AGGRO_1","What do we have here... those that would defy the Spell-Weaver? Those without foresight our understanding. How can i make you see? Malygos is saving the world from itself! Bah! You are hardly worth my time!"),
(27655,1,0,14,0,100,"urom SAY_AGGRO_2","Clearly my pets failed. Perhaps another demonstration is in order."),
(27655,2,0,14,0,100,"urom SAY_AGGRO_3","Still you fight. Still you cling to misguided principles. If you survive, you'll find me in the center ring."),
(27655,3,0,14,0,100,"urom SAY_AGGRO_4","Poor blind fools!"),
(27655,4,0,14,0,100,"urom SAY_TELEPORT","A taste... just a small taste... of the Spell-Weaver's power!");

-- injured rainspeaker oracle
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1571002 AND -1571000;
DELETE FROM `creature_text` WHERE `entry`=28217;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(28217,0,0,12,0,100,"injured rainspeaker oracle SAY_END_IRO","You save me! We thank you. We going to go back to village now. You come too... you can stay with us! Puppy-men kind of mean anyway. "),
(28217,1,0,12,0,100,"injured rainspeaker oracle SAY_QUEST_ACCEPT_IRO ","Let me know when you ready to go, okay?"),
(28217,2,0,12,0,100,"injured rainspeaker oracle SAY_START_IRO","Home time!");

-- vekjik
DELETE FROM `script_texts` WHERE `entry`=-1000208;
DELETE FROM `creature_text` WHERE `entry`=28315;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(28315,0,0,12,0,100,"vekjik SAY_TEXTID_VEKJIK1","Frenzyheart kill you if you come back. You no welcome here no more!");

-- engineer helice
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1800053 AND -1800047;
DELETE FROM `creature_text` WHERE `entry`=28787;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(28787,0,0,12,0,100,"engineer helice SAY_WP_1","We made it! Thank you for getting me out of that hell hole. Tell Hemet to expect me!"),
(28787,1,0,12,0,100,"engineer helice SAY_WP_2","You really shouldn't play with this stuff. Someone could get hurt."),
(28787,2,0,12,0,100,"engineer helice SAY_WP_3","Oh, look, it's another cartload of explosives! Let's help them dispose of it."),
(28787,3,0,12,0,100,"engineer helice SAY_WP_4","It's getting a little hot over here. Shall we move on?"),
(28787,4,0,12,0,100,"engineer helice SAY_WP_5","Or THIS is what you get."),
(28787,5,0,12,0,100,"engineer helice SAY_WP_6","Listen up, Venture Company goons! Rule #1: Never keep the prisoner near the explosives."),
(28787,6,0,12,0,100,"engineer helice SAY_WP_7","Let's get the hell out of here");

-- adventurous dwarf
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1571043 AND -1571042;
DELETE FROM `creature_text` WHERE `entry`=28604;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(28604,0,0,12,0,100,"adventurous dwarf SAY_DWARF_OUCH","Ouch! Watch where you're tugging!"),
(28604,1,0,12,0,100,"adventurous dwarf SAY_DWARF_HELP","Glad I could help!");

-- agnetta
DELETE FROM `script_texts` WHERE `entry`=-1571003;
DELETE FROM `creature_text` WHERE `entry`=30154;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(30154,0,0,12,0,100,"agnetta SAY_AGGRO","I'm not afraid of anything -- bring it on!");

-- injured goblin
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1800043 AND -1800042;
DELETE FROM `creature_text` WHERE `entry`=29434;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(29434,0,0,12,0,100,"injured goblin SAY_QUEST_START","Let me know when you're ready. I'd prefer sooner than later... what with the slowly dying from poison and all."),
(29434,1,0,12,0,100,"injured goblin SAY_END_WP_REACHED","I'm going to bring the venom sack to Ricket... and then... you know... collapse. Thank you for helping me!");

-- krystallus
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1599010 AND -1599007;
DELETE FROM `creature_text` WHERE `entry`=27977;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(27977,0,0,14,14176,100,"krystallus SAY_AGGRO","Crush...."),
(27977,1,0,14,14177,100,"krystallus SAY_KILL","Ha...ha...ha...ha..."),
(27977,2,0,14,14179,100,"krystallus SAY_DEATH","Uuuuhhhhhhhhhh......"),
(27977,3,0,14,14178,100,"krystallus SAY_SHATTER","Break.... you....");

-- maiden of grief
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1599006 AND -1599000;
DELETE FROM `creature_text` WHERE `entry`=27975;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(27975,0,0,14,13487,100,"maiden of grief SAY_AGGRO","You shouldn't have come...now you will die!"),
(27975,1,0,14,13488,100,"maiden of grief SAY_SLAY_1","Why must it be this way?"),
(27975,1,1,14,13489,100,"maiden of grief SAY_SLAY_2","You had it coming!"),
(27975,1,2,14,13490,100,"maiden of grief SAY_SLAY_3","My burden grows heavier."),
(27975,1,3,14,13491,100,"maiden of grief SAY_SLAY_4","This is your own fault!"),
(27975,2,0,14,13493,100,"maiden of grief SAY_DEATH","I hope you all rot! I never...wanted...this."),
(27975,3,0,14,13492,100,"maiden of grief SAY_STUN","So much lost time... that you'll never get back!");

-- Sjonnir
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1599006 AND -1599000;
DELETE FROM `creature_text` WHERE `entry`=27978;
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(27978,0,0,14,14180,100,"Sjonnir SAY_AGGRO","Soft, vulnerable shells. Brief, fragile lives. You can not escape the curse of flesh!"),
(27978,1,0,14,14182,100,"Sjonnir SAY_SLAY_1","Flesh is no match for iron!"),
(27978,1,1,14,14183,100,"Sjonnir SAY_SLAY_2","Armies of iron will smother the world!"),
(27978,1,2,12,0,100,"Sjonnir SAY_SLAY_3","Folvynn buul hrom onn!"),
(27978,2,0,14,14184,100,"Sjonnir SAY_DEATH","Loken will not rest, until the forge is retaken. You changed nothing!");

-- halls of stone
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1599068 AND -1599016;
DELETE FROM `creature_text` WHERE `entry` IN (30898,30899,30897,28070);
INSERT IGNORE INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
-- brann
(28070,0,0,14,14244,100,"brann SAY_KILL_1","Now that's owning your supper!"),
(28070,0,1,14,14245,100,"brann SAY_KILL_2","Press on, that's the way!"),
(28070,0,2,14,14246,100,"brann SAY_KILL_3","Keep it up now. Plenty of death-dealing for everyone!"),
(28070,1,0,14,14257,100,"brann SAY_LOW_HEALTH","I'm all kinds of busted up. Might not... make it..."),
(28070,2,0,14,14258,100,"brann SAY_DEATH","Not yet, not... yet-"),
(28070,3,0,14,14260,100,"brann SAY_PLAYER_DEATH_1","I'm doing everything I can!"),
(28070,3,1,14,14261,100,"brann SAY_PLAYER_DEATH_2","Light preserve you!"),
(28070,3,2,14,14262,100,"brann SAY_PLAYER_DEATH_3","I hope this is all worth it!"),
(28070,4,0,14,14259,100,"brann SAY_ESCORT_START","Time to get some answers! Let's get this show on the road!"),
(28070,5,0,14,14274,100,"brann SAY_SPAWN_DWARF","Don't worry. Old Brann has got your back. Keep that metal monstrosity busy and I'll see if I can sweet talk this machine into helping you."),
(28070,6,0,14,14275,100,"brann SAY_SPAWN_TROGG","This is a wee bit trickier that before... Oh, bloody--incomin'!"),
(28070,7,0,14,14276,100,"brann SAY_SPAWN_OOZE","What in the name o' Madoran did THAT do? Oh! Wait: I just about got it..."),
(28070,8,0,14,14277,100,"brann SAY_SPAWN_EARTHEN","Ha, that did it. Help's a-coming. Take this you glow-eying brute!"),
(28070,9,0,14,14247,100,"brann SAY_EVENT_INTRO_1","Take a moment and relish this with me! Soon all will be revealed! Okay then, let's do this!"),
(28070,10,0,14,14248,100,"brann SAY_EVENT_INTRO_2","Now keep an eye out! I'll have this licked in two shakes of a--"),
(28070,11,0,14,14249,100,"brann SAY_EVENT_A_1","Oh, that doesn't sound good. We might have a complication or two..."),
(28070,12,0,14,14250,100,"brann SAY_EVENT_A_3","Ah, you want to play hardball, eh? That's just my game!"),
(28070,13,0,14,14251,100,"brann SAY_EVENT_B_1","Couple more minutes and I'll--"),
(28070,14,0,14,14252,100,"brann SAY_EVENT_B_3","Heightened? What's the good news?"),
(28070,15,0,14,14253,100,"brann SAY_EVENT_C_1","So that was the problem? Now I'm makin' progress..."),
(28070,16,0,14,14254,100,"brann SAY_EVENT_C_3","Hang on! Nobody's gonna' be sanitized as long as I have a say in it!"),
(28070,17,0,14,14255,100,"brann SAY_EVENT_D_1","Ha! The old magic fingers finally won through! Now let's get down to-"),
(28070,18,0,14,14256,100,"brann SAY_EVENT_D_3","Purge? No no no no no! Where did I-- Aha, this should do the trick..."),
(28070,19,0,14,14263,100,"brann SAY_EVENT_END_01","Query? What do you think I'm here for? Tea and biscuits? Spill the beans already!"),
(28070,20,0,14,14264,100,"brann SAY_EVENT_END_02","Tell me how that dwarfs came to be! And start at the beginning!"),
(28070,21,0,14,14265,100,"brann SAY_EVENT_END_04","Right, right! I know that the Earthen were made of stone to shape the deep reaches of the world but what about the anomalies? Matrix non-stabilizing and whatnot."),
(28070,22,0,14,14266,100,"brann SAY_EVENT_END_06","Necro-what? Speak bloody common will ya?"),
(28070,23,0,14,14267,100,"brann SAY_EVENT_END_08","Old Gods eh? So they zapped the Earthen with this Curse of Flesh. And then what?"),
(28070,24,0,14,14268,100,"brann SAY_EVENT_END_10","If they killed the Old Gods Azeroth would have been destroyed."),
(28070,25,0,14,14269,100,"brann SAY_EVENT_END_12","What protectors?"),
(28070,26,0,14,14270,100,"brann SAY_EVENT_END_14","Aesir and Vanir. Okay. So the Forge of Wills started to make new Earthen. But what happened to the old ones?"),
(28070,27,0,14,14271,100,"brann SAY_EVENT_END_16","Hold everything! The Aesir and Vanir went to war? Why?"),
(28070,28,0,14,14272,100,"brann SAY_EVENT_END_18","This Loken sounds like a nasty character. Glad we don't have to worry about the likes of him anymore. So if I'm understanding you lads the original Earthen eventually woke up from this statis. And by that time this destabily-whatever had turned them into our brother dwarfs. Or at least dwarf ancestors. Hm?"),
(28070,29,0,14,14273,100,"brann SAY_EVENT_END_20","Well now. That's a lot to digest. I'm gonna need some time to take all of this in. Thank you!"),
(28070,30,0,14,14278,100,"brann SAY_VICTORY_SJONNIR_1","Loken?! That's downright bothersome... We might've neutralized the iron dwarves, but I'd lay odds there's another machine somewhere else churnin' out a whole mess o' these iron vrykul!"),
(28070,31,0,14,14279,100,"brann SAY_VICTORY_SJONNIR_2","I'll use the forge to make badtches o' earthen to stand guard... But our greatest challenge still remains: find and stop Loken!"),
(28070,32,0,14,0,100,"brann SAY_ENTRANCE_MEET","I think it's time to see what's behind the door near the entrance. I'm going to sneak over there, nice and quiet. Meet me at the door and I'll get us in."),
-- marnak
(30897,0,0,14,13761,100,"brann SAY_EVENT_B_2_MARN","Threat index threshold exceeded. Celestial archive aborted. Security level heightened."),
(30897,1,0,14,13762,100,"brann SAY_EVENT_END_15_MARN","Additional background is relevant to your query. Following global combat between-"),
(30897,2,0,14,13763,100,"brann SAY_EVENT_END_17_MARN","Unknown. Data suggests that impetus for global combat originated with prime designate Loken who neutralized all remaining Aesir and Vanir affecting termination of conflict. Prime designate Loken then initiated stasis of several seed races including Earthen, Giant and Vrykul at designated holding facilities."),
(30897,3,0,14,13764,100,"brann SAY_EVENT_END_19_MARN","Essentially that is correct."),
-- kaddrak
(30898,0,0,14,13756,100,"brann SAY_EVENT_A_2_KADD","Security breach in progress. Analysis of historical archives transferred to lower priority queue. Countermeasures engaged."),
(30898,1,0,14,13757,100,"brann SAY_EVENT_END_09_KADD","Accessing. Creators arrived to extirpate symbiotic infection. Assessment revealed that Old God infestation had grown malignant. Excising parasites would result in loss of host."),
(30898,2,0,14,13758,100,"brann SAY_EVENT_END_11_KADD","Correct. Creators neutralized parasitic threat and contained it within the host. Forge of Wills and other systems were instituted to create new Earthen. Safeguards were implemented and protectors were appointed."),
(30898,3,0,14,13759,100,"brann SAY_EVENT_END_13_KADD","Designations: Aesir and Vanir or in common nomenclator Storm and Earth Giants. Sentinel Loken designated supreme. Dragon Aspects appointed to monitor evolution of Azeroth."),
-- abedneum
(30899,0,0,14,13765,100,"brann SAY_EVENT_INTRO_3_ABED","Warning! Life form pattern not recognized. Archival processing terminated. Continued interference will result in targeted response."),
(30899,1,0,14,13767,100,"brann SAY_EVENT_C_2_ABED","Critical threat index. Void analysis diverted. Initiating sanitization protocol."),
(30899,2,0,14,13768,100,"brann SAY_EVENT_D_2_ABED","Alert! Security fail safes deactivated. Beginning memory purge..."),
(30899,3,0,14,13769,100,"brann SAY_EVENT_D_4_ABED","System online. Life form pattern recognized. Welcome Branbronzan. Query?"),
(30899,4,0,14,13770,100,"brann SAY_EVENT_END_03_ABED","Accessing prehistoric data. Retrieved. In the beginning Earthen were created to-"),
(30899,5,0,14,13771,100,"brann SAY_EVENT_END_05_ABED","Accessing. In the early stages of its development cycle Azeroth suffered infection by parasitic, necrophotic symbiotes."),
(30899,6,0,14,13772,100,"brann SAY_EVENT_END_07_ABED","Designation: Old Gods. Old Gods rendered all systems, including Earthen defenseless in order to facilitate assimilation. This matrix destabilization has been termed the Curse of Flesh. Effects of destabilization increased over time."),
(30899,7,0,14,13773,100,"brann SAY_EVENT_END_21_ABED","Acknowledged Branbronzan. Session terminated.");

SET @NPC_BLESSED_BANNER     := 30891; -- Blessed Banner of the Crusade
SET @NPC_CRUSADER_DALFORS   := 31003; -- Crusader Lord Dalfors
SET @NPC_BATTLE_PRIEST      := 30919; -- Argent Battle-priest
SET @NPC_MASON              := 30900; -- Argent Mason
SET @NPC_TORCH_DUMMY        := 31004; -- (Wave 0) Torch Dummy
SET @NPC_LK                 := 31013; -- The Lich King
SET @NPC_CAPTAIN            := 30986;
SET @NPC_DRUDGE             := 30984;
SET @NPC_PLAGEBRINGER       := 30987;
SET @NPC_HALOF              := 30989;
SET @CGUID  := 199930;
INSERT IGNORE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`MovementType`) VALUES
(@CGUID+0,@NPC_TORCH_DUMMY,571,1,128,6405.316,431.9516,518.2324,0.296706,120,0,0),
(@CGUID+1,@NPC_TORCH_DUMMY,571,1,128,6408.057,424.2077,511.3653,1.256637,120,0,0),
(@CGUID+2,@NPC_TORCH_DUMMY,571,1,128,6371.181,452.4539,513.5053,1.204277,120,0,0),
(@CGUID+3,@NPC_TORCH_DUMMY,571,1,128,6391.331,460.3002,511.3657,1.745329,120,0,0),
(@CGUID+4,@NPC_TORCH_DUMMY,571,1,128,6393.723,427.9692,538.7354,1.692969,120,0,0),
(@CGUID+5,@NPC_TORCH_DUMMY,571,1,128,6374.808,445.4873,517.7629,4.031711,120,0,0),
(@CGUID+6,@NPC_TORCH_DUMMY,571,1,128,6382.271,451.9008,537.9304,1.32645,120,0,0),
(@CGUID+7,@NPC_TORCH_DUMMY,571,1,128,6366.836,459.1225,530.3361,0.7330383,120,0,0),
(@CGUID+8,@NPC_TORCH_DUMMY,571,1,128,6372.479,447.4598,511.3725,0.2443461,120,0,0),
(@CGUID+9,@NPC_TORCH_DUMMY,571,1,128,6394.698,427.4731,523.7177,1.850049,120,0,0),
(@CGUID+10,@NPC_TORCH_DUMMY,571,1,128,6367.246,459.7583,518.8009,3.857178,120,0,0),
(@CGUID+11,@NPC_TORCH_DUMMY,571,1,128,6396.961,432.8676,533.744,3.176499,120,0,0),
(@CGUID+12,@NPC_TORCH_DUMMY,571,1,128,6403.202,464.2955,535.6572,3.857178,120,0,0),
(@CGUID+13,@NPC_TORCH_DUMMY,571,1,128,6401.721,464.4387,543.1727,2.199115,120,0,0),
(@CGUID+14,@NPC_TORCH_DUMMY,571,1,128,6392.169,475.7449,512.7209,0.6283185,120,0,0),
(@CGUID+15,@NPC_TORCH_DUMMY,571,1,128,6397.238,475.2313,529.652,4.328416,120,0,0),
(@CGUID+16,@NPC_TORCH_DUMMY,571,1,128,6389.221,474.0008,511.365,1.553343,120,0,0),
(@CGUID+17,@NPC_LK,571,1,128,6389.73,451.2743,513.3198,1.32645,120,0,0);

DROP TABLE `creature_ai_summons`;

ALTER TABLE `conditions`   
  ADD COLUMN `ErrorType` MEDIUMINT(8) UNSIGNED DEFAULT 0 NOT NULL AFTER `NegativeCondition`;

/*
 * trinity_string
 * 63    - You can't do that right now.                  -> SPELL_FAILED_CANT_DO_THAT_RIGHT_NOW = 173
 * 64    - You cannot use that item here.                -> SPELL_CUSTOM_ERROR_CANT_USE_THAT_ITEM = 56
 *                                                          SPELL_FAILED_INCORRECT_AREA = 39
 *                                                          SPELL_CUSTOM_ERROR_CANT_CALL_WINTERGARDE_HERE = 26
 *                                                          SPELL_CUSTOM_ERROR_MUST_TARGET_ICE_HEART_JORMUNGAR = 21
 *                                                          SPELL_FAILED_BAD_TARGETS = 12
 * 65    - You must reach level 58 to use this portal.   -> SPELL_CUSTOM_ERROR_REQUIRES_LEVEL_58 = 66
 * 97    - don't exist
 * 1334  - Requires Maiden of Winter's Breath Lake       -> SPELL_CUSTOM_ERROR_MUST_BE_CLOSE_TO_MAIDEN = 61
 * 1335  - You can't use that right now                  -> SPELL_FAILED_INCORRECT_AREA = 39
 *                                                          SPELL_FAILED_TARGET_AURASTATE = 111
 */

UPDATE `conditions` SET `ErrorType`=97,`ErrorTextId`=0 WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=56765;

UPDATE `conditions` SET `ErrorType`=173, `ErrorTextId`=0 WHERE `ErrorType`=0 AND `ErrorTextId`=63;

UPDATE `conditions` SET `ErrorType`=172, `ErrorTextId`=26 WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=48388;
UPDATE `conditions` SET `ErrorType`= 39, `ErrorTextId`= 0 WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=43209;
UPDATE `conditions` SET `ErrorType`=172, `ErrorTextId`=21 WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=47431;
UPDATE `conditions` SET `ErrorType`= 12, `ErrorTextId`= 0 WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=34367;

UPDATE `conditions` SET `ErrorType`=172, `ErrorTextId`=66 WHERE `ErrorType`=0 AND `ErrorTextId`=65;
UPDATE `conditions` SET `ErrorType`=172, `ErrorTextId`=61 WHERE `ErrorType`=0 AND `ErrorTextId`=1334;
UPDATE `conditions` SET `ErrorType`= 39, `ErrorTextId`=0 WHERE `ErrorType`=0 AND `ErrorTextId`=1335 AND `ConditionTypeOrReference`=23;
UPDATE `conditions` SET `ErrorType`=111, `ErrorTextId`=0 WHERE `ErrorType`=0 AND `ErrorTextId`=1335 AND `ConditionTypeOrReference`=1;

UPDATE `conditions` SET `ErrorTextId`=0 WHERE `ErrorType`=0 AND `ErrorTextId`=97;
UPDATE `conditions` SET `ErrorTextId`=0 WHERE `ErrorType`=0 AND `SourceTypeOrReferenceId`=13;

DELETE FROM `trinity_string` WHERE `entry` IN (63,64,65,97,1334,1335);

ALTER TABLE `quest_template` DROP `StartScript`;
DROP TABLE quest_start_scripts;
DELETE FROM `command` WHERE `name`='reload quest_start_scripts';
ALTER TABLE `reputation_reward_rate` ADD `quest_daily_rate` FLOAT NOT NULL DEFAULT '1' AFTER `quest_rate`;
ALTER TABLE `reputation_reward_rate` ADD `quest_weekly_rate` FLOAT NOT NULL DEFAULT '1' AFTER `quest_daily_rate`;
ALTER TABLE `reputation_reward_rate` ADD `quest_monthly_rate` FLOAT NOT NULL DEFAULT '1' AFTER `quest_weekly_rate`;
