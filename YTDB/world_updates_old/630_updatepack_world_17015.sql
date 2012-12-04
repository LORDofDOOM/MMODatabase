# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 629_FIX_16836 630_FIX_17015 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('630_FIX_17015');

# TC

# Ravie
UPDATE `smart_scripts` SET `event_type`='2', `event_param1`='25' WHERE (`entryorguid`='10737') AND (`id`='3');

# NeatElves
DELETE FROM `gameobject` WHERE `guid` = 8506;
DELETE FROM `gameobject` WHERE `guid` = 8501;
DELETE FROM `gameobject` WHERE `guid` = 8500;
UPDATE `creature_template` SET `unit_flags` = 32832 WHERE `entry` = 5649;
UPDATE `quest_template` SET `NextQuestIdChain`='618' WHERE `id`='615';
UPDATE `creature_template_addon` SET `bytes1`='65543', `auras`='29266' WHERE `entry`=31291;

# WDB
INSERT IGNORE INTO `npc_text` SET `ID`=15112,`prob0`=1,`text0_0`='I am truly blessed to have so many loyal and dedicated apprentices. My work would be impossible without this influx of test subjects.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16519,`prob0`=1,`text0_0`='The Battle for Gilneas',`text0_1`='The Battle for Gilneas',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18291,`prob0`=1,`text0_0`='We''re going to bring down the Hellfire Citadel, and it all starts with these ramparts.',`text0_1`='',`lang0`=0,`em0_0`=396,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18508,`prob0`=1,`text0_0`='Nnn... nn nnnn... n-nl nnnr nnn... nn n nnnt...\
\
<I''ll... be fine... it''ll wear off... in a bit...>',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=14888,`prob0`=1,`text0_0`='Hello! Someone who doesn''t smell like fish. I like.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=14976,`prob0`=1,`text0_0`='Lovely outfit. Dressed for the part!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;

# Chaosua
UPDATE `creature_template` SET `faction_A` = 1732, `faction_H` = 1732 WHERE `entry` = 28312;
UPDATE `creature_template` SET `faction_A` = 1735, `faction_H` = 1735 WHERE `entry` = 32627;
UPDATE `creature` SET `phaseMask` = 49 WHERE `guid` IN (90100,90101,90102,90103);
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id` = 27852;
UPDATE `creature` SET `phaseMask` = 256 WHERE `id` in (30848,30873,30847,30846,30849,30877,30876,30842,30872,30845,34300);

# NeatElves
DELETE FROM creature WHERE id in (21260,21253);
REPLACE INTO creature (guid,id,map,spawnMask,phaseMask,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,MovementType) VALUES
(71821,21933, 548, 1, 1, -215.7533, -375.3428, 38.40299, 5.009095, 7200, 0, 0);
delete from spell_target_position where id=36459;
insert into spell_target_position values
(36459,548,-347.518,-350.367,1.07459,4.48);

# Schmoozerd
INSERT IGNORE INTO `vehicle_template_accessory` (entry,seat_id,accessory_entry,description) VALUES
(27241,0,27268,'Risen Gryphon'),
(27626,0,27627,'Tatjana\'s Horse'),
(27661,0,27662,'Wintergarde Gryphon'),
(28018,0,28006,'Thiassi the Light Bringer'),
(28054,0,28053,'Lucky Wilhelm - Apple'),
(28312,7,28319,'Wintergrasp Siege Engine'),
(28614,0,28616,'Scarlet Gryphon Rider'),
(29555,0,29556,'Goblin Sapper'),
(29625,0,29694,'Hyldsmeet Proto-Drake'),
(29698,0,29699,'Drakuru Raptor'),
(29931,0,29982,'Drakkari Rider on Drakkari Rhino'),
(30330,0,30332,'Jotunheim Proto-Drake'),
(32189,0,32190,'Skybreaker Recon Fighter'),
(32627,7,32629,'Wintergrasp Siege Engine'),
(32633,1,32638,'Traveler Mammoth (A) - Vendor'),
(32633,2,32639,'Traveler Mammoth (A) - Vendor & Repairer'),
(32640,1,32642,'Traveler Mammoth (H) - Vendor'),
(32640,2,32641,'Traveler Mammoth (H) - Vendor & Repairer'),
(32930,0,32933,'Kologarn'),
(32930,1,32934,'Kologarn'),
(33060,7,33067,'Salvaged Siege Engine'),
(33109,1,33167,'Salvaged Demolisher'),
(33109,2,33620,'Salvaged Demolisher'),
(33109,3,33167,'Salvaged Demolisher'),
(33113,2,33114,'Flame Leviathan'),
(33113,3,33114,'Flame Leviathan'),
(33113,7,33139,'Flame Leviathan'),
(33114,1,33142,'Overload Control Device'),
(33114,2,33143,'Leviathan Defense Turret'),
(33214,1,33218,'Mechanolift 304-A'),
(33669,0,33666,'Demolisher Engineer Blastwrench'),
(33687,0,33695,'Chillmaw'),
(33687,1,33695,'Chillmaw'),
(33687,2,33695,'Chillmaw'),
(33778,0,33780,'Tournament Hippogryph'),
(34658,0,34657,'Jaelyne Evensong\'s Mount'),
(34776,7,34777,'Isle of Conquest Siege Engine  - main turret (ally)'),
(34776,1,36356,'Isle of Conquest Siege Engine  - flame turret 1 (ally)'),
(34776,2,36356,'Isle of Conquest Siege Engine  - flame turret 2 (ally)'),
(35069,7,36355,'Isle of Conquest Siege Engine - main turret (horde)'),
(35069,1,34778,'Isle of Conquest Siege Engine - flame turret 1 (horde)'),
(35069,2,34778,'Isle of Conquest Siege Engine - flame turret 2 (horde)'),
(35633,0,34702,'Ambrose Boltspark\'s Mount'),
(35634,0,35617,'Deathstalker Visceri\'s Mount'),
(35635,0,35569,'Eressea Dawnsinger\'s Mount'),
(35636,0,34703,'Lana Stouthammer\'s Mount'),
(35637,0,34705,'Marshal Jacob Alerius\' Mount'),
(35638,0,35572,'Mokra the Skullcrusher\'s Mount'),
(35640,0,35571,'Runok Wildmane\'s Mount'),
(35641,0,35570,'Zul\'tore\'s Mount'),
(35768,0,34701,'Colosos\' Mount'),
(36476,0,36477,'Krick and Ick'),
(36661,0,36658,'Scourgelord Tyrannus and Rimefang'),
(36678,0,38309,'Professor Putricide - trigger'),
(36678,1,38308,'Professor Putricide - trigger'),
(36891,0,31260,'Ymirjar Skycaller');

# Fix
UPDATE `gameobject_template` SET `faction` = 35 WHERE `entry` = 175324;

# NeatElves
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-15' WHERE `item`=12334;
UPDATE `gameobject_template` SET `faction`='114' WHERE `entry` in (16399,16400,18895,18934,18935,18936,18971,18972,21099,21117,26449,97700,124367,124369,139852,141861,141862,141863,142208,142209,142210,142211,142212,142213,143230,144065,146085,146086,149431,170572,170573,170574,170575,170576,170577,170579,170581,170583,175272,175567,175570,175610,175619,175620,175787,175788,176163,176166,176188,176247,176562,176576,176580,176633,176905,176906,176907,176964,176965,176966,177000,177203,177220,177238,177257,177258,177259,177307,177370,177371,177372,177373,177374,177375,177376,177377,177746,178107,178108,178187,178189,178190,178224,178324,178908,178927,178932,178947,178948,178955,178956,178957,178958,178984,179115,179116,179117,179364,179365,179436,179440,179442,179444,179446,179450,179454,179458,179469,179502,179503,179504,179505,179506,179556,179558,179782,179881,179882,179899,179907,180040,180041,180100,180101,180102,180104,180105,180144,180145,180148,180252,180377,180378,180379,180380,180381,180382,180383,180384,180386,180403,180421,180422,180423,180424,180497,180634,180635,180636,180698,180700,180755,180756,180757,180758,180759,180760,180761,180762,180763,180764,180769,180770,180779,180788,180795,180870,180871,180872,180873,180898,180899,180904,181014,181015,181016,181017,181018,181019,181020,181021,181022,181025,181027,181055,181060,181076,181078,181079,181080,181168,181169,181172,181227,181229,181247,181286,181370,181378,181476,181477,181478,181653,181664,181745,181805,181852,181913,182064,182088,182089,182090,182091,182094,182114,182146,182483,182585,182942,183051,183171,183297,183298,183299,183300,183342,183343,183386,183402,183768,183771,183852,183997,184071,184117,184144,184255,184434,184450,184578,184615,184655,184661,184694,184721,184737,184794,184797,184801,184834,184843,184964,184965,184966,184971,184975,184976,184977,184978,185120,185208,185212,185296,185303,185324,185549,185600,185608,185610,185612,185614,185616,185618,185620,185622,185628,185629,185630,185631,185632,185633,185634,185635,185676,185677,185678,185679,185680,185681,185682,185683,185684,185685,185686,185687,185688,185689,185690,185691,185700,185701,185702,185703,185724,185725,185726,185727,185728,185729,185730,185731,185732,185733,185734,185735,185736,185737,185738,185739,185740,185741,185742,185743,185744,185745,185746,185747,185748,185749,185750,185751,185752,185753,185754,185755,185764,185765,185766,185767,185799,185800,185801,185802,185878,185899,185903,185952,186236,186264,186391,186403,186436,186437,186438,186440,186442,186443,186444,186445,186446,186447,186448,186449,186457,186459,186602,186609,186610,186611,186641,186642,186643,186644,186645,186646,186647,186688,186689,186690,186691,186692,186693,186728,186730,186731,186745,186756,186956,186957,187057,187058,187073,187193,187265,187376,187432,187433,187575,187653,187667,187668,187669,187708,187880,187881,187912,188067,188073,188077,188081,188084,188112,188142,188160,188229,188230,188421,188444,188469,188479,188481,188492,188508,188560,188561,188562,188563,188565,188566,188567,188568,188569,188570,188571,188572,188573,188574,188575,188576,188577,188578,188579,188580,188581,188582,188583,188584,188585,188586,188587,189292,189971,190193,190194,190284,190332,190336,190337,190338,190339,190340,190341,190551,190621,190629,190894,190895,190932,191087,191123,191413,191414,191542,191545,191552,191557,191558,191559,191560,191647,191672,191788,191840,192064,192065,192066,192162,192267,192268,192270,192271,192272,192273,192274,192275,192276,192277,192278,192279,192280,192281,192282,192283,192288,192289,192290,192291,192396,192400,192401,192406,192407,192408,192414,192415,192416,192417,192418,192423,192424,192425,192426,192427,192428,192429,192430,192431,192432,192433,192434,192435,192440,192441,192442,192443,192444,192449,192450,192451,192452,192453,192458,192459,192460,192461,192575,192576,192577,192578,192799,192801,192802,192803,192804,192862,192919,192920,192921,192922,192924,192925,192926,193027,193049,193050,193191,193192,193193,193198,193202,193214,193220,193221,193222,193223,193224,193225,193226,193227,193228,193229,193230,193231,193232,193233,193234,193235,193236,193237,193238,193239,193240,193241,193242,193243,193244,193245,193246,193247,193248,193249,193250,193251,193252,193253,193254,193255,193256,193257,193258,193259,193260,193261,193262,193263,193264,193265,193266,193267,193268,193269,193270,193271,193272,193273,193274,193275,193276,193277,193278,193279,193280,193281,193282,193283,193284,193285,193286,193287,193288,193289,193290,193291,193292,193293,193294,193295,193296,193297,193298,193299,193300,193301,193302,193303,193304,193305,193306,193307,193308,193309,193310,193311,193312,193313,193314,193315,193316,193317,193318,193319,193320,193321,193322,193323,193324,193325,193326,193327,193328,193329,193330,193331,193332,193333,193334,193335,193336,193337,193338,193339,193340,193341,193342,193343,193344,193345,193346,193347,193348,193349,193350,193351,193352,193353,193354,193355,193356,193357,193358,193359,193360,193361,193362,193363,193364,193365,193366,193367,193368,193369,193370,193371,193372,193373,193374,193375,193376,193377,193378,193379,193380,193381,193382,193383,193384,193385,193386,193388,193389,193390,193391,193392,193393,193394,193395,193396,193397,193398,193399,193428,193429,193430,193431,193432,193433,193434,193435,193436,193437,193438,193439,193468,193469,193470,193482,193483,193484,193485,193489,193490,193491,193492,193493,193494,193495,193496,193497,193516,193517,193518,193519,193520,193531,193532,193533,193534,193535,193536,193538,193539,193543,193544,193545,193546,193547,193548,193549,193550,193551,193553,193554,193555,193556,193557,193558,193559,193566,193696,193697,193698,193699,193700,193701,193702,193703,193704,193705,193706,193707,193708,193709,193710,193711,193712,193713,193714,193715,193716,193717,193718,193719,193720,193721,193722,193723,193724,193725,193726,193727,193728,193729,193730,193731,193732,193733,193734,193735,193736,193737,193738,193739,193740,193741,193742,193743,193744,193745,193746,193747,193748,193749,193750,193751,193752,193753,193754,193755,193756,193757,193758,193759,193760,193761,193762,193763,193764,193765,193766,193795,193796,193846,193847,193848,193849,193851,193852,193853,193854,193855,193856,193857,193858,193859,193860,193861,193862,193863,193864,193865,193866,193867,193868,193869,193870,193871,193872,193873,193874,193875,193876,193877,193878,193879,193880,193881,193882,193883,193884,193887,193888,193890,193893,193894,193895,193940,193956,193983,194026,194120,194121,194129,194631,194663,194664,194665,194666,194704,194705,194706,194707,194767,194911,195000,195066,195067,195068,195069,195255,195256,195257,195259,195260,195263,195264,195266,195273,195318,201722,201858,201868,201869,201919,201940,202169,202218,202236,202302);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-10' WHERE `item`=12733;
UPDATE `quest_template` SET `SpecialFlags`='0' WHERE `id`=5056;
DELETE FROM `creature_loot_template` WHERE `entry` = 4147 AND `item` = 5675;
REPLACE INTO creature (guid,id,map,spawnMask,phaseMask,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,MovementType) VALUES
(5542,19870, 548, 1, 1, 49.626, -902.181, 41.54, 3.956, 7200, 0, 0),
(5634,19870, 548, 1, 1, 10.988, -901.616, 41.54, 5.437, 7200, 0, 0),
(6482,19870, 548, 1, 1, 10.385, -944.036, 41.54, 0.779, 7200, 0, 0),
(6495,19870, 548, 1, 1, 49.312, -943.398, 41.54, 2.401, 7200, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(78735, 18881, 530, 1, 1, 0, 0, 2550.01, 3304.69, 117.876, 1.69019, 300, 5, 0, 5377, 0, 1),
(78736, 18881, 530, 1, 1, 0, 0, 2583.13, 3208.25, 117.664, 4.17883, 300, 5, 0, 5377, 0, 1),
(78737, 18881, 530, 1, 1, 0, 0, 2592.76, 3149.19, 115.16, 0.540587, 300, 5, 0, 5377, 0, 1);
REPLACE INTO `achievement_reward` (`entry`, `title_A`, `title_H`, `item`, `sender`, `subject`, `text`) VALUES
(45, 0, 0, 43348, 28070, 'You''ve Been Around!', 'Well, look at ye!$b$bAnd I thought I had seen some things in this icy place! It seems obvious to this dwarf that you have the fire of the explorer burning in your eyes.$b$bWear this tabard with pride. That way your friends will know who to ask for directions when the time comes!$b$bKeep on the move!$b$b-Brann Bronzebeard'),
(614, 0, 0, 44223, 29611, 'For the Alliance!', 'War rages throughout our lands. Only the bravest heroes dare challenge strike the Horde where it hurts them most. You are among such heroes.$b$bThe blows you have delivered to the leadership of the Horde will open the door for our final assault. The Horde will bow down to the might of the Alliance.$b$bYour deeds will not go unrewarded. Ride on proudly!$b$b--Your King'),
(619, 0, 0, 44224, 4949, 'For The Horde!', 'In this time of great turmoil true heroes rise from the misery. You are one such great hero.$b$bWar is upon us. Your efforts will further our cause on Azeroth. Your great feats shall go rewarded. Take this prize of Orgrimmar and ride to glory.$b$bFor the Horde!$b$bWarchief Thrall'),
(1021, 0, 0, 40643, 29261, 'Quite the Achiever', 'I couldn''t help but notice what a fine collection of Tabards you''ve managed to collect over the seasons. You might as well add this one to your collection. It''s simply been gathering dust in my wardrobe.'),
(1250, 0, 0, 40653, 28951, 'Stinker''s New Home', 'I''ve heard how well you take care of our furry friends. I hope you don''t mind but I must get Stinker a new home. He just refuses to play nice with others.$b$bPlease make sure to feed him twice a day. And um... he has a thing for black cats.$b$b--Breanni'),
(1681, 125, 125, 43300, 7999, 'Greetings From Darnassus', 'Your accomplishments have been profound and far-reaching. Azeroth, with all of the recent turmoil, benefits greatly from those who seek to rid the land of evil.$b$bOnly those who take the time to know our lands understand the sacrifices of the fallen and the valor of our heroes. You are one such hero. Hopefully, you will recant the tales of your adventures for years to come.$b$bOn behalf of the Alliance, I thank you, Loremaster.'),
(1682, 125, 125, 43300, 3057, 'Greetings From Thunder Bluff', 'News of your accomplishments has traveled far. The winds of turmoil howl through our lands. Those who stand to challenge evil are our only hope.$b$bOnly those who listen to the winds understand the debts our fallen heroes have paid to protect our people. May a hero such as yourself live long to tell the tales of your adventures. For only then will we remember how much we have to be thankful for.$b$bOur appreciation runs deep, Loremaster.$b$bFor the Horde!$b$b--Cairne Bloodhoof'),
(1956, 0, 0, 43824, 16128, 'Higher Learning', 'Congratulations on completing your studies on The Schools of Arcane Magic. In recognition of your dedication. I''m enclosing this special volume completing the series.$b$bI believe you''ll find this tome particularly entertaining. But I''ll leave that for your discovery.$b$bSincerely,$b$bRhonin'),
(2096, 0, 0, 44430, 29478, 'The Coin Master', 'Greetings and congratulations on collecting the full set of Dalaran coins! As a reward for all your hard work I have enclosed a freshly minted Titanium Seal of Dalaran. This is a special coin that we only grant to the most ardent of collectors.$b$bI hope you enjoy this special reward. You''ve earned it!$b$bSincerely,$b$bJepetto Joybuzz'),
(2136, 0, 0, 44160, 26917, 'Glory of the Hero', 'Champion,$b$bWord has traveled to Wyrmrest Temple of the great heroic deeds you have accomplished since arriving in Northrend.$b$bYour bravery should not go unrecognized. Please accept this gift on behalf of the Aspects. Together we shall rid Azeroth of evil, once and for eternity.$b$bAlexstrasza the Life-Binder'),
(2143, 0, 0, 44178, 32216, 'Leading the Cavalry', 'I couldn''t help but to notice how good you are with the livestock. With all the activity around here, business has been better than ever for me. I don''t suppose you''d mind looking after this Albino Drake for me? I simply don''t have enough spare minutes in the day to care for all of these animals.$b$bYours,$bMei'),
(2516, 0, 0, 44841, 28951, 'Lil'' Game Hunter', 'Hello!$b$bI understand you''ve managed to give even that mischievous Stinker a warm and loving home... I was hoping you might consider taking in another wayward orphan?$b$bThis little fawn is a shy one, but you''ll have no trouble winning her friendship with the enclosed: her favorite salt lick!$b$b--Breanni'),
(2536, 0, 0, 44843, 32216, 'Mountain o'' Mounts', 'I''ve heard your stables are nearly as extensive as mine, now. Impressive! Perhaps we can help one another...$b$bI''ve one too many dragonhawks, and hoped you could give this one a home. Naturally it''s been trained as a mount and not a hunting pet, and you''ll find it as loyal and tireless as any other steed I raise.$b$bYours again,$bMei'),
(2537, 0, 0, 44842, 32216, 'Mountain o'' Mounts', 'I''ve heard your stables are nearly as extensive as mine, now. Impressive! Perhaps we can help one another...$b$bI''ve one too many dragonhawks, and hoped you could give this one a home. Naturally it''s been trained as a mount and not a hunting pet, and you''ll find it as loyal and tireless as any other steed I raise.$b$bYours again,$bMei'),
(876, 0, 0, 43349, 29533, 'Brutally Dedicated', 'I''ve been watching you, kid.$b$bYou''ve got quite a knack for throwing down in that arena. Keep this. Wear it with pride. Now get back in there and show them how it''s done!$b$bUncle Sal'),
(3478, 168, 168, 44810, 28951, 'A Gobbler not yet Gobbled', 'Can you believe this Plump Turkey made it through November alive?$b$bSince all this friends have been served up on Bountiful Tables with sides of Cranberry Chutney and Spice Bread Stuffing and... ooo... I''m getting hungry. But anyhow! He''s all alone, now, so I was hoping you might be willing to take care of him. There simply isn''t enough room left in my shop!$b$bJust keep him away from cooking fires, please. He gets this strange look in his eyes around them...'),
(2957, 0, 0, 45802, 30405, 'Glory of the Ulduar Raider', 'Dear $N,$b$bI hope ye''re doing well and that ye''ve had time to recover from our shenanigans in Ulduar$b$bMe lads from the prospecting team happened upon this poor ''alf dead riding-drake hatchling. Must''ve been an Iron Dwarf experiment of some sort.$b$bWe''ve patched him back to health and you''ll find he''s not so wee anymore! None of us knows much about riding anything but rams and pack mules and since we owed ye one for what ye did back there... We thought perhaps you''d accept him as a gift.$b$bYours,$bBrann Bronzebeard'),
(2958, 0, 0, 45801, 30405, 'Heroic: Glory of the Ulduar Raider', 'Dear $N,$b$bI hope ye''re doing well and that ye''ve had time to recover from our shenanigans in Ulduar.$b$bMe lads from the prospecting team happened upon this poor ''alf dead riding-drake hatchling. Must''ve been an Iron Dwarf experiment of some sort.$b$bWe''ve patched him back to health and you''ll find he''s not so wee anymore! None of us knows much about riding anything but rams and pack mules and since we owed ye one for what ye did back there... We thought perhaps you''d accept him as a gift.$b$bYours,$bBrann Bronzebeard'),
(2144, 0, 0, 44177, 26917, 'What A Long, Strange Trip It''s Been', 'With the drums of war pounding in the distance, it is easy for the denizens of Azeroth to forget all that life has to offer. You, on the other hand, have maintained the dignity of the good races of Azeroth with your ability to remeber what we fight for. To not celebrate our victories is another form of defeat. Remeber that well, reveler. May others be inspired by your good cheer, Alexstrasza the Life-Binder'),
(2145, 0, 0, 44177, 26917, 'What A Long, Strange Trip It''s Been', 'With the drums of war pounding in the distance, it is easy for the denizens of Azeroth to forget all that life has to offer. You, on the other hand, have maintained the dignity of the good races of Azeroth with your ability to remeber what we fight for. To not celebrate our victories is another form of defeat. Remeber that well, reveler. May others be inspired by your good cheer, Alexstrasza the Life-Binder'),
(3957, 0, 0, 49054, 34922, 'Master of Isle of Conquest', 'Honorable $N,$b$bFor your deeds upon the Isle of Conquest, it is my honor to present you with this tabard. Wear it proudly.$b$bOverlord Agmar'),
(3857, 0, 0, 49052, 34924, 'Master of Isle of Conquest', 'Honorable $N,$b$bFor your deeds upon the Isle of Conquest, it is my honor to present you with this tabard. Wear it proudly.$b$bHigh Commander Halford Wyrmbane'),
(3656, 168, 168, 44810, 28951, 'A Gobbler not yet Gobbled', 'Can you believe this Plump Turkey made it through November alive?$b$bSince all this friends have been served up on Bountiful Tables with sides of Cranberry Chutney and Spice Bread Stuffing and... ooo... I''m getting hungry. But anyhow! He''s all alone, now, so I was hoping you might be willing to take care of him. There simply isn''t enough room left in my shop!$b$bJust keep him away from cooking fires, please. He gets this strange look in his eyes around them...'),
(4478, 0, 0, 49912, 32842, 'P.U.G.', 'Dear very patient individual,$b$bWe''d like to recognize your tenacity in running dungeons with people you probably haven''t met before. Hopefully you even showed some rookies the ropes in your pick-up groups.$b$bIn short, we heard you like pugs. So here''s a pug for your pug, so you can pug while you pug. Or something.$b$bHugs,$b$bYour friends on the WoW Dev Team.'),
(4602, 0, 0, 51954, 37120, 'Glory of the Icecrown Raider', '$N,$b$bAs the Lich King''s influence wanes, some of his more powerful, minions have wrested free of his grasp.$b$bThis frost wyrm drake my men captured is a prime example. She has a will of her own and then some.$b$bOne of my men lost an arm breaking her in, but she how takes to riders fairly well - provided they themselves are skilled and strong willed.$b$bPlease accept this magnificent beast as a gift from the knights of the Ebon Blade. It was a honor to fight along your side in this greatest of battles.$b$bWith honor,$bDarion Mograine'),
(13, 0, 0, 41426, 16128, 'Level 80', 'Congratulations on your conviction to reach the 80th season of adventure. You are undoubtedly dedicated to the cause of ridding Azeroth of the evils which have plagued us.$b$bAnd while the journey thus far has been no minor feat, the true battle lies ahead.$b$bFight on!$b$bRhonin'),
(4603, 0, 0, 51955, 37120, 'Heroic: Glory of the Icecrown Raider', '$N,$b$bAs the Lich King''s influence wanes, some of his more powerful, minions have wrested free of his grasp.$b$bThis frost wyrm drake my men captured is a prime example. She has a will of her own and then some.$b$bOne of my men lost an arm breaking her in, but she how takes to riders fairly well - provided they themselves are skilled and strong willed.$b$bPlease accept this magnificent beast as a gift from the knights of the Ebon Blade. It was a honor to fight along your side in this greatest of battles.$b$bWith honor,$bDarion Mograine'),
(4079, 0, 0, 49098, 36095, 'A Tribute to Immortality', 'Dear $N.$b$bTales of your recent performance in the Trial of the Grand Crusader will be told, and retold, for ages to come. As the Argent Crusade issued its call for the greatest champions of Azeroth to test their mettle in the crucible of the Coliseum. I hoped against hope that beacons of light such as you and your companions might emerge from the fray.$b$bWe will need your direly in the coming battle against the Lich King. But on this day, rejoice and celebrate your glorious accomplishment, and accept this gift of one of our very finest warhorses. When the Scourge see its banner looming on thee horizon. Hero, their end shall be nigh!$b$bYours with Honor.$bTirion Fordring'),
(4156, 0, 0, 49096, 36095, 'A Tribute to Immortality', 'Dear $N.$b$bTales of your recent performance in the Trial of the Grand Crusader will be told, and retold, for ages to come. As the Argent Crusade issued its call for the greatest champions of Azeroth to test their mettle in the crucible of the Coliseum. I hoped against hope that beacons of light such as you and your companions might emerge from the fray.$b$bWe will need your direly in the coming battle against the Lich King. But on this day, rejoice and celebrate your glorious accomplishment, and accept this gift of one of our very finest warhorses. When the Scourge see its banner looming on thee horizon. Hero, their end shall be nigh!$b$bYours with Honor.$bTirion Fordring'),
(1793, 138, 138, 0, 22914, 'Thank you!', 'Dear $N.$b$bThank you for taking me out during Children''s Week. Lady Liadrin, the leader of the Blood Knights, has asked that I be released to her custody for training in Silvermoon City!$b$bI just wanted to thank you for taking me to see my friend, Hch''uu, as well as the Dark Portal, the Throne of the Elements and the Caverns of Time. I like my toy dragon very much!$b$bI''m sure that you''re taking good care of my pet. Please tell him that I miss him!$b$bSincerely,$bSalandria.');
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 8088 AND `id` = 1;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 8088 AND `id` = 1;
UPDATE `gossip_menu_option` SET `option_text`='What do you have for me?' WHERE `menu_id`=9548 AND `id`=0;
UPDATE `achievement_reward` SET `sender`='30405' WHERE `entry`=2958;
UPDATE `achievement_reward` SET `sender`='30405' WHERE `entry`=2957;
UPDATE creature SET MovementType=0 WHERE id=17376;
DELETE FROM `creature` WHERE `guid` = 78043;
DELETE FROM `creature` WHERE `guid` = 78044;
DELETE FROM `creature` WHERE `guid` = 78045;
DELETE FROM `creature` WHERE `guid` = 78046;
DELETE FROM `creature` WHERE `guid` = 78047;
DELETE FROM `creature` WHERE `guid` = 78048;
DELETE FROM `creature` WHERE `guid` = 78049;
DELETE FROM `creature` WHERE `guid` = 78050;
DELETE FROM `creature` WHERE `guid` = 78051;
DELETE FROM `creature` WHERE `guid` = 78052;
DELETE FROM `creature` WHERE `guid` = 78053;
UPDATE `creature_template` SET `faction_A`='1662', `faction_H`='1662', `spell1`='0', `spell2`='0', `spell3`='0', `ScriptName`='' WHERE `entry`=22454;
REPLACE INTO `creature_template_addon` (`entry`, `auras`) VALUES ('22444', '39184');
UPDATE `creature_template` SET `spell1`='6917', `spell2`='0' WHERE `entry`=5235;
UPDATE `creature_template` SET `spell2`='0' WHERE `entry`=28603;
UPDATE `creature_template` SET `spell1`='60678', `spell2`='0' WHERE `entry`=31150;
UPDATE `creature_template` SET `spell1`='60678', `spell2`='0' WHERE `entry`=32176;
UPDATE `creature_template` SET `spell1`='22539', `spell3`='3391', `spell4`='23342'  WHERE `entry`=11981;
DELETE FROM creature WHERE guid=1279;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
(1279,4041,1,1,1,0,0,655.64,1488.86,-14.941,4.4527,600,5,0,840,0,1);
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES
(5772, 16, 324, 0),
(5774, 16, 324, 0),
(5775, 16, 324, 0),
(5776, 16, 324, 0),
(5777, 16, 324, 0),
(5778, 16, 324, 0),
(5779, 16, 324, 0),
(5780, 16, 324, 0),
(5781, 16, 324, 0),
(5782, 16, 324, 0);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES
(9548, 12863),
(9548, 12864),
(9548, 12972),
(9554, 12869),
(9554, 12968),
(9554, 12970);
DELETE FROM `creature` WHERE `guid` = 51336;
DELETE FROM `creature` WHERE `guid` = 48631;
DELETE FROM `creature` WHERE `guid` = 52969;
DELETE FROM `creature` WHERE `guid` = 126772;
DELETE FROM `game_event_creature` WHERE `guid` = 51336;
DELETE FROM `game_event_creature` WHERE `guid` = 48631;
DELETE FROM `game_event_creature` WHERE `guid` = 52969;
DELETE FROM `game_event_creature` WHERE `guid` = 126772;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(42670, 180327, 309, 1, 1, -11887.1, -1889.8, 63.5037, 0.855211, 0, 0, 0.414693, 0.909961, 7200, 100, 1),
(8277, 180327, 309, 1, 1, -11887.1, -1889.8, 63.5037, 0.855211, 0, 0, 0.414693, 0.909961, 7200, 100, 1),
(8278, 180327, 309, 1, 1, -11887.1, -1889.8, 63.5037, 0.855211, 0, 0, 0.414693, 0.909961, 7200, 100, 1),
(8282, 180327, 309, 1, 1, -11887.1, -1889.8, 63.5037, 0.855211, 0, 0, 0.414693, 0.909961, 7200, 100, 1);
DELETE FROM `gameobject_scripts` WHERE `id` in (8278,8277,8282,42670);
REPLACE INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(8282, 5, 10, 15082, 900000, 0, -11901.3, -1906.52, 65.36, 0.87),
(42670, 5, 10, 15083, 900000, 0, -11901.3, -1906.52, 65.36, 0.87),
(8277, 5, 10, 15084, 900000, 0, -11901.3, -1906.52, 65.36, 0.87),
(8278, 5, 10, 15085, 900000, 0, -11901.3, -1906.52, 65.36, 0.87);
UPDATE `game_event_gameobject` SET `evententry`='36' WHERE `guid`=42670;
REPLACE INTO `game_event_gameobject` (`guid`, `evententry`) VALUES ('8277', '37');
REPLACE INTO `game_event_gameobject` (`guid`, `evententry`) VALUES ('8278', '38');
REPLACE INTO `game_event_gameobject` (`guid`, `evententry`) VALUES ('8282', '35');
DELETE FROM `gameobject` WHERE `guid` = 47640;
DELETE FROM `gameobject` WHERE `guid` = 47639;
DELETE FROM `gameobject` WHERE `guid` = 39508;
DELETE FROM `gameobject` WHERE `guid` = 14375;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(20973, 18971, 33, 1, 1, -118.11, 2161.86, 155.678, 2.76635, 0, 0, 0.982451, 0.186522, 5400, 100, 1),
(20922, 18934, 33, 1, 1, -251.244, 2116.38, 81.218, -0.375245, 0, 0, -0.186524, 0.98245, 5400, 100, 1),
(20941, 18936, 33, 1, 1, -247.757, 2125.23, 81.0625, -0.375245, 0, 0, -0.186524, 0.98245, 5400, 100, 1),
(19236, 97700, 189, 1, 1, 1167.79, 1347.26, 31.5494, -1.5708, 0, 0, -0.707108, 0.707106, 7200, 100, 1),
(20942, 18935, 33, 1, 1, -244.14, 2134.41, 81.0625, -0.375245, 0, 0, -0.186524, 0.98245, 5400, 100, 1),
(20921, 18895, 33, 1, 1, -242.581, 2159.05, 90.6226, -1.94604, 0, 0, -0.826589, 0.562806, 5400, 100, 1),
(21625, 13965, 36, 1, 1, -191.414, -457.446, 54.4391, 1.69297, 0, 0, 0.748956, 0.66262, 180, 100, 1),
(71554, 161460, 230, 1, 1, 615.614, -49.7823, -60.0557, 2.07694, 0, 0, 0.861629, 0.507539, 600, 100, 1),
(71555, 161516, 230, 1, 1, 702.108, -125.745, -45.7123, -2.35619, 0, 0, -0.92388, 0.382683, 600, 100, 1),
(71553, 157923, 230, 1, 1, 723.106, -105.874, -71.4839, 2.35619, 0, 0, 0.923879, 0.382686, 600, 100, 0),
(40319, 161461, 230, 1, 1, 614.021, -46.8877, -59.636, -2.63545, 0, 0, -0.968147, 0.250381, 600, 100, 1),
(48123, 161462, 230, 1, 1, 723.114, -105.856, -71.4763, 2.35619, 0, 0, 0.923879, 0.382686, 600, 100, 1),
(71839, 184246, 530, 1, 1, -3513.89, 2169.14, 34.3507, -3.02079, 0, 0, -0.998176, 0.0603773, 180, 100, 1),
(19195, 101850, 0, 1, 1, 2908.18, -818.203, 160.332, 1.9635, 0, 0, 0.831471, 0.555568, 900, 100, 1),
(19193, 101851, 0, 1, 1, 2886.31, -827.261, 160.336, 1.9635, 0, 0, 0.831471, 0.555568, 900, 100, 1),
(19148, 101854, 189, 1, 1, 1933.69, -431.654, 18.671, 3.14159, 0, 0, 1, 1.26759e-006, 7200, 100, 1),
(9193, 104591, 189, 1, 1, 1069.95, 1399.14, 30.7956, 3.14159, 0, 0, 1, 1.26759e-006, 7200, 100, 1),
(21621, 16397, 36, 1, 1, -100.502, -668.771, 7.41049, 1.81514, 0, 0, 0.78801, 0.615662, 180, 100, 1),
(3117, 175369, 0, 1, 1, 3185.48, -4039.1, 107.792, 3.12414, 0, 0, 0.999962, 0.0087262, 900, 100, 1),
(20919, 124372, 70, 1, 1, -234.567, 294.81, -47.596, -1.5708, 0, 0, -0.707108, 0.707106, 3600, 100, 1);
DELETE FROM `gameobject_scripts` WHERE `id` = 4502;
DELETE FROM `gameobject_scripts` WHERE `id` = 3117;
DELETE FROM `gameobject_scripts` WHERE `id` = 14375;
UPDATE gameobject_template SET flags=flags|16 WHERE entry IN (187869,188114,188115,188116);
REPLACE INTO gameobject (guid,id,map,spawnMask,phaseMask,position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecs,animprogress,state) VALUES
(47639,188116, 580, 1, 1, 1703.91, 581.981, 28.132, 1.761, 0, 0, 0.771057, 0.636766, 180, 0, 1),
(47640,188115, 580, 1, 1, 1747.59, 621.556, 28.05, 3.111, 0, 0, 0.999883, 0.0152957, 180, 0, 1),
(39508,188114, 580, 1, 1, 1694.32, 676.565, 28.05, 4.808, 0, 0, 0.672508, -0.74009, 180, 0, 1),
(14375,187869, 580, 1, 1, 1651.39, 635.547, 28.142, 6.163, 0, 0, 0.0600564, -0.998195, 180, 0, 1);
UPDATE creature_template SET unit_flags=unit_flags|33554432 WHERE entry=25640;
UPDATE creature_template SET InhabitType=InhabitType|4 WHERE entry IN (25319,26046,25502);
REPLACE INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,MovementType) VALUES
(51336,25640, 580, 1, 1, 0, 0, 1703.91, 581.981, 28.132, 1.761, 300, 0, 0, 1, 0, 0),
(48631,25640, 580, 1, 1, 0, 0, 1747.59, 621.556, 28.05, 3.111, 300, 0, 0, 1, 0, 0),
(52969,25640, 580, 1, 1, 0, 0, 1694.32, 676.565, 28.05, 4.808, 300, 0, 0, 1, 0, 0),
(126772,25640, 580, 1, 1, 0, 0, 1651.39, 635.547, 28.142, 6.163, 300, 0, 0, 1, 0, 0);
UPDATE `creature` SET `spawntimesecs`='604800' WHERE `guid`=130051;
UPDATE `creature` SET `spawndist`='0' WHERE `id`=17376;
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES
(9548, 12863),
(9548, 12864),
(9548, 12972),
(9554, 12869),
(9554, 12968),
(9554, 12970);
UPDATE `gameobject` SET `id`='300004' WHERE `id`=401012;
DELETE FROM `gameobject_template` WHERE `entry` = 401012;
UPDATE `gameobject` SET `id`='300005' WHERE `id`=401010;
DELETE FROM `gameobject_template` WHERE `entry` = 401010;
DELETE FROM `gameobject_template` WHERE `entry` = 300240;
DELETE FROM `gameobject_template` WHERE `entry` = 300242;
DELETE FROM `gameobject_template` WHERE `entry` = 300243;
DELETE FROM `gameobject_template` WHERE `entry` = 401002;
DELETE FROM `gameobject` WHERE `id` = 401004;
DELETE FROM `gameobject_template` WHERE `entry` = 401004;
DELETE FROM `gameobject_template` WHERE `entry` = 300228;
DELETE FROM `gameobject_template` WHERE `entry` = 300232;
DELETE FROM `gameobject` WHERE `id` = 401003;
DELETE FROM `gameobject_template` WHERE `entry` = 401003;
DELETE FROM `gameobject_template` WHERE `entry` = 401008;
DELETE FROM `gameobject` WHERE `guid` = 69150;
UPDATE `gameobject` SET `id`='185309' WHERE `guid`=39558;
UPDATE `gameobject_template` SET `displayId`='206' WHERE `entry`=300125;
DELETE FROM `gameobject` WHERE `id` = 300150;
DELETE FROM `gameobject_template` WHERE `entry` = 300150;
DELETE FROM `gameobject` WHERE `id` = 300119;
DELETE FROM `gameobject_template` WHERE `entry` = 300119;
DELETE FROM `gameobject` WHERE `id` = 300106;
DELETE FROM `gameobject_template` WHERE `entry` = 300106;
DELETE FROM `gameobject` WHERE `id` = 300086;
DELETE FROM `gameobject_template` WHERE `entry` = 300086;
DELETE FROM `gameobject` WHERE `id` = 300144;
DELETE FROM `gameobject_template` WHERE `entry` = 300144;
DELETE FROM `gameobject` WHERE `id` = 300140;
DELETE FROM `gameobject_template` WHERE `entry` = 300140;
DELETE FROM `gameobject` WHERE `id` = 300050;
DELETE FROM `gameobject_template` WHERE `entry` = 300050;
UPDATE `gameobject` SET `id`='178400' WHERE `id`=300037;
DELETE FROM `gameobject_template` WHERE `entry` = 300037;
DELETE FROM `gameobject_template` WHERE `entry` = 300142;
UPDATE `gameobject` SET `id`='4005' WHERE `id`=300132;
DELETE FROM `gameobject_template` WHERE `entry` = 300132;
# DELETE FROM `gameobject_template` WHERE `entry` = 300030;
UPDATE `gameobject` SET `id`='142698' WHERE `id`=300016;
DELETE FROM `gameobject_template` WHERE `entry` = 300016;
# DELETE FROM spell_script_target WHERE targetEntry=300030;
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(12970, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(12972, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

# Sniff
INSERT IGNORE INTO `gameobject` VALUES ('8507', '183385', '546', '3', '1', '22.0234', '-339.981', '29.1816', '1.23918', '0', '0', '0.580703', '0.814116', '7200', '255', '1');
INSERT IGNORE INTO `gameobject` VALUES ('8508', '183385', '546', '3', '1', '97.2424', '-216.338', '30.534', '1.20428', '0', '0', '0.566406', '0.824126', '7200', '255', '1');
INSERT IGNORE INTO `gameobject` VALUES ('8509', '183385', '546', '3', '1', '-66.7795', '-240.119', '-4.53713', '3.00195', '0', '0', '0.997563', '0.0697663', '7200', '255', '1');
INSERT IGNORE INTO `gameobject` VALUES ('8518', '183385', '546', '3', '1', '-151.674', '-308.373', '-4.80901', '1.65806', '0', '0', '0.737277', '0.675591', '7200', '255', '1');
INSERT IGNORE INTO `gameobject` VALUES ('8519', '183385', '546', '3', '1', '1.73994', '-246.563', '-4.53322', '5.18363', '0', '0', '-0.522498', '0.852641', '7200', '255', '1');
INSERT IGNORE INTO `gameobject` VALUES ('8521', '183385', '546', '3', '1', '257.251', '-263.907', '24.6426', '4.27606', '0', '0', '-0.843391', '0.5373', '7200', '255', '1');
INSERT IGNORE INTO `gameobject` VALUES ('8522', '183385', '546', '3', '1', '-98.4295', '-312.399', '-3.89505', '5.07891', '0', '0', '-0.566406', '0.824126', '7200', '255', '1');
INSERT IGNORE INTO `gameobject` VALUES ('8523', '183385', '546', '3', '1', '295.075', '-124.002', '29.7138', '0.174532', '0', '0', '0.0871553', '0.996195', '7200', '255', '1');
INSERT IGNORE INTO `gameobject` VALUES ('8524', '183385', '546', '3', '1', '105.351', '-295.466', '32.2288', '4.18879', '0', '0', '-0.866025', '0.500001', '7200', '255', '1');
INSERT IGNORE INTO `gameobject` VALUES ('8525', '183385', '546', '3', '1', '246.218', '-232.518', '25.9543', '1.46608', '0', '0', '0.66913', '0.743145', '7200', '255', '1');
INSERT IGNORE INTO `gameobject` VALUES ('8527', '183385', '546', '3', '1', '-23.6591', '-109.071', '-4.53406', '4.08407', '0', '0', '-0.891007', '0.453991', '7200', '255', '1');
INSERT IGNORE INTO `gameobject` VALUES ('8529', '183385', '546', '3', '1', '80.5045', '-70.984', '-2.75813', '4.76475', '0', '0', '-0.688354', '0.725375', '7200', '255', '1');
INSERT IGNORE INTO `gameobject` VALUES ('8530', '183385', '546', '3', '1', '144.881', '-69.8086', '27.4349', '0.994837', '0', '0', '0.477158', '0.878817', '7200', '255', '1');
INSERT IGNORE INTO `gameobject` VALUES ('8531', '183385', '546', '3', '1', '116.041', '4.26817', '27.5625', '1.22173', '0', '0', '0.573576', '0.819152', '7200', '255', '1');

# Fix
DELETE FROM `creature_loot_template` WHERE (`entry`=26731) AND (`item`=25605);
DELETE FROM `creature_loot_template` WHERE (`entry`=26731) AND (`item`=35605);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (26731, 35605, 0, 1, 1, 1);

# WDB
INSERT IGNORE INTO `npc_text` SET `ID`=15112,`prob0`=1,`text0_0`='I am truly blessed to have so many loyal and dedicated apprentices. My work would be impossible without this influx of test subjects.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=16519,`prob0`=1,`text0_0`='The Battle for Gilneas',`text0_1`='The Battle for Gilneas',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18291,`prob0`=1,`text0_0`='We''re going to bring down the Hellfire Citadel, and it all starts with these ramparts.',`text0_1`='',`lang0`=0,`em0_0`=396,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=18508,`prob0`=1,`text0_0`='Nnn... nn nnnn... n-nl nnnr nnn... nn n nnnt...\
\
<I''ll... be fine... it''ll wear off... in a bit...>',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=14888,`prob0`=1,`text0_0`='Hello! Someone who doesn''t smell like fish. I like.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=14976,`prob0`=1,`text0_0`='Lovely outfit. Dressed for the part!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=14564,`prob0`=1,`text0_0`='Used to be hauling gear and food from Orgrimmar to Crossroads was peon-work. Nowadays my neck''s always on the line.',`text0_1`='',`lang0`=0,`em0_0`=1,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;


# NeatElves
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(56961, 16863, 530, 1, 1, 0, 0, -950.297, 2719.15, 17.8437, 1.34411, 300, 5, 0, 4979, 0, 1),
(56963, 16863, 530, 1, 1, 0, 0, 683.463, 2873.79, 23.0223, 3.67866, 300, 5, 0, 4979, 0, 1),
(56970, 16863, 530, 1, 1, 0, 0, 709.234, 2841.81, 25.9784, 3.68222, 300, 5, 0, 4979, 0, 1),
(57198, 16863, 530, 1, 1, 0, 0, 596.758, 2920.44, 23.4737, 2.97291, 300, 5, 0, 4979, 0, 1),
(59254, 16863, 530, 1, 1, 0, 0, 467.015, 2920.18, 39.2654, 3.63844, 300, 5, 0, 4979, 0, 1),
(59255, 16863, 530, 1, 1, 0, 0, 450, 3016.67, 19.5666, 3.49222, 300, 5, 0, 4979, 0, 1),
(59256, 16863, 530, 1, 1, 0, 0, 461.998, 2994.03, 22.2556, 0.682153, 300, 5, 0, 4979, 0, 1),
(59259, 16863, 530, 1, 1, 0, 0, 414.961, 3012.01, 19.6177, 5.33487, 300, 5, 0, 4979, 0, 1),
(59426, 16863, 530, 1, 1, 0, 0, 501.355, 2956.06, 31.9095, 0.416439, 300, 5, 0, 4979, 0, 1),
(59428, 16863, 530, 1, 1, 0, 0, 531.84, 2905.03, 50.3025, 5.31646, 300, 5, 0, 4979, 0, 1),
(59441, 16863, 530, 1, 1, 0, 0, 524.785, 2957.77, 24.8628, 5.46153, 300, 5, 0, 4979, 0, 1),
(59450, 16863, 530, 1, 1, 0, 0, 388.209, 3056.89, 16.4901, 0.873083, 300, 5, 0, 4979, 0, 1),
(59451, 16863, 530, 1, 1, 0, 0, 451.295, 3050.21, 16.1372, 5.1201, 300, 5, 0, 4979, 0, 1),
(59566, 16863, 530, 1, 1, 0, 0, 343.451, 3092.4, 26.8745, 2.93214, 300, 5, 0, 4979, 0, 1),
(59574, 16863, 530, 1, 1, 0, 0, 280.619, 3082.46, 24.7819, 5.43349, 300, 5, 0, 4979, 0, 1),
(59576, 16863, 530, 1, 1, 0, 0, 159.479, 2945.92, 23.5778, 1.8397, 300, 5, 0, 4979, 0, 1),
(59577, 16863, 530, 1, 1, 0, 0, 111.851, 2913.03, 32.9488, 4.24943, 300, 5, 0, 4979, 0, 1),
(59579, 16863, 530, 1, 1, 0, 0, 108.333, 2891.67, 38.3375, 0.498338, 300, 5, 0, 4979, 0, 1),
(59588, 16863, 530, 1, 1, 0, 0, 83.2791, 2947.19, 25.0868, 5.11138, 300, 5, 0, 4979, 0, 1),
(59589, 16863, 530, 1, 1, 0, 0, -26.5709, 2905.18, 32.3081, 3.86685, 300, 5, 0, 4979, 0, 1),
(59590, 16863, 530, 1, 1, 0, 0, 14.1806, 2960.39, 20.8208, 0.170972, 300, 5, 0, 4979, 0, 1),
(59594, 16863, 530, 1, 1, 0, 0, -50.0056, 2882.02, 36.9659, 5.52291, 300, 5, 0, 4979, 0, 1),
(59610, 16863, 530, 1, 1, 0, 0, -62.5801, 2826.08, 48.1874, 2.67794, 300, 5, 0, 4979, 0, 1),
(59611, 16863, 530, 1, 1, 0, 0, -88.6253, 2795, 49.9016, 2.56051, 300, 5, 0, 4979, 0, 1),
(59617, 16863, 530, 1, 1, 0, 0, -39.8528, 2749.78, 62.7044, 3.69626, 300, 5, 0, 4979, 0, 1),
(59618, 16863, 530, 1, 1, 0, 0, -54.4992, 2948.73, 21.9417, 3.83433, 300, 5, 0, 4979, 0, 1),
(59701, 16863, 530, 1, 1, 0, 0, -9.0231, 2978.61, 16.4194, 2.15392, 300, 5, 0, 4979, 0, 1),
(59708, 16863, 530, 1, 1, 0, 0, 118.23, 3138.08, 22.0282, 5.93517, 300, 5, 0, 4979, 0, 1),
(59710, 16863, 530, 1, 1, 0, 0, 209.825, 3082.69, 16.1485, 0.042619, 300, 5, 0, 4979, 0, 1),
(59711, 16863, 530, 1, 1, 0, 0, 260.996, 3119.51, 33.4698, 0.980627, 300, 5, 0, 4979, 0, 1),
(59712, 16863, 530, 1, 1, 0, 0, 359.833, 3152.33, 33.094, 5.71796, 300, 5, 0, 4979, 0, 1),
(59714, 16863, 530, 1, 1, 0, 0, -83.4834, 3301.08, 27.7584, 4.33243, 300, 5, 0, 4979, 0, 1),
(59716, 16863, 530, 1, 1, 0, 0, -115.62, 3286.25, 15.2024, 5.88667, 300, 5, 0, 4979, 0, 1),
(59870, 16863, 530, 1, 1, 0, 0, -468.044, 2771.05, 42.2538, 2.64739, 300, 5, 0, 4979, 0, 1),
(59874, 16863, 530, 1, 1, 0, 0, -520.818, 2822.25, 55.4397, 2.25378, 300, 5, 0, 4979, 0, 1),
(59875, 16863, 530, 1, 1, 0, 0, -97.0492, 2500.66, 48.7287, 4.25426, 300, 5, 0, 4979, 0, 1),
(59878, 16863, 530, 1, 1, 0, 0, -90.6674, 2567.95, 52.0969, 3.94107, 300, 5, 0, 4979, 0, 1),
(59970, 16863, 530, 1, 1, 0, 0, -82.3135, 2646.66, 55.323, 2.93488, 300, 5, 0, 4979, 0, 1),
(59971, 16863, 530, 1, 1, 0, 0, -481.078, 2719.65, 59.5444, 1.54736, 300, 5, 0, 4979, 0, 1),
(59980, 16863, 530, 1, 1, 0, 0, -487.965, 2655.3, 66.7834, 3.00949, 300, 5, 0, 4979, 0, 1),
(29530, 16863, 530, 1, 1, 0, 0, -1092.17, 2635.94, 17.0368, 1.25128, 300, 5, 0, 4979, 0, 1),
(29504, 16863, 530, 1, 1, 0, 0, -1255.53, 2949.83, 5.62592, 4.04208, 300, 5, 0, 4979, 0, 1),
(29483, 16863, 530, 1, 1, 0, 0, -1199.29, 2886.87, -5.93631, 3.6917, 300, 5, 0, 4979, 0, 1),
(29451, 16863, 530, 1, 1, 0, 0, -1139.05, 2916.02, -2.72034, 0.623365, 300, 5, 0, 4979, 0, 1),
(29448, 16863, 530, 1, 1, 0, 0, -1113.13, 2890.59, -4.22241, 0.900243, 300, 5, 0, 4979, 0, 1),
(29445, 16863, 530, 1, 1, 0, 0, -955.615, 2769.98, 8.52978, 1.45316, 300, 5, 0, 4979, 0, 1),
(29427, 16863, 530, 1, 1, 0, 0, -1048.2, 2881.98, -1.53664, 5.43874, 300, 5, 0, 4979, 0, 1),
(29425, 16863, 530, 1, 1, 0, 0, -950.43, 2863.38, 2.49173, 5.82041, 300, 5, 0, 4979, 0, 1),
(29409, 16863, 530, 1, 1, 0, 0, -918.035, 2818.12, 7.87354, 2.56767, 300, 5, 0, 4979, 0, 1),
(29356, 16863, 530, 1, 1, 0, 0, -910.951, 2879.82, 5.57748, 2.75062, 300, 5, 0, 4979, 0, 1),
(29339, 16863, 530, 1, 1, 0, 0, -883.153, 2858.55, 9.3764, 1.64899, 300, 5, 0, 4979, 0, 1),
(28759, 16863, 530, 1, 1, 0, 0, -879.284, 2908.74, 7.33738, 3.90443, 300, 5, 0, 4979, 0, 1),
(28754, 16863, 530, 1, 1, 0, 0, -853.634, 2888.08, 8.77438, 2.08848, 300, 5, 0, 4979, 0, 1),
(28743, 16863, 530, 1, 1, 0, 0, -718.402, 2954.43, 26.247, 5.24728, 300, 5, 0, 4979, 0, 1),
(28741, 16863, 530, 1, 1, 0, 0, -817.032, 2923.01, 11.3921, 0.629523, 300, 5, 0, 4979, 0, 1),
(28725, 16863, 530, 1, 1, 0, 0, -761.591, 2904.89, 21.4395, 3.28971, 300, 5, 0, 4979, 0, 1),
(28697, 16863, 530, 1, 1, 0, 0, -751.389, 2981.86, 16.8883, 0.671169, 300, 5, 0, 4979, 0, 1),
(28679, 16863, 530, 1, 1, 0, 0, -790.498, 2946.7, 14.0861, 0.857907, 300, 5, 0, 4979, 0, 1),
(28668, 16863, 530, 1, 1, 0, 0, -921.613, 2946.73, 9.2512, 3.34138, 300, 5, 0, 4979, 0, 1),
(28664, 16863, 530, 1, 1, 0, 0, -948.922, 2916.95, 6.4538, 2.35896, 300, 5, 0, 4979, 0, 1),
(28648, 16863, 530, 1, 1, 0, 0, -940.307, 2980.97, 12.5302, 5.62371, 300, 5, 0, 4979, 0, 1),
(28643, 16863, 530, 1, 1, 0, 0, -1005.3, 2915.17, 1.37732, 4.71044, 300, 5, 0, 4979, 0, 1),
(28631, 16863, 530, 1, 1, 0, 0, -1077.22, 2913.91, -1.62951, 1.0175, 300, 5, 0, 4979, 0, 1),
(28603, 16863, 530, 1, 1, 0, 0, -1086.76, 3062.04, 21.9105, 5.06133, 300, 5, 0, 4979, 0, 1),
(28590, 16863, 530, 1, 1, 0, 0, -1141.92, 3063.36, 24.8611, 3.11816, 300, 5, 0, 4979, 0, 1),
(25031, 16863, 530, 1, 1, 0, 0, -1179.79, 3009.42, 17.8146, 5.37045, 300, 5, 0, 4979, 0, 1),
(24922, 16863, 530, 1, 1, 0, 0, -1212.98, 3054.21, 24.3064, 0.954068, 300, 5, 0, 4979, 0, 1),
(24892, 16863, 530, 1, 1, 0, 0, -1245.61, 3029.5, 20.228, 1.63724, 300, 5, 0, 4979, 0, 1),
(24877, 16863, 530, 1, 1, 0, 0, -1245.29, 3077.2, 30.27, 3.09845, 300, 5, 0, 4979, 0, 1),
(24847, 16863, 530, 1, 1, 0, 0, -992.281, 3217.22, 45.381, 0.819963, 300, 5, 0, 4979, 0, 1),
(24817, 16863, 530, 1, 1, 0, 0, -964.059, 3237.56, 45.9511, 3.09661, 300, 5, 0, 4979, 0, 1),
(24538, 16863, 530, 1, 1, 0, 0, -907.711, 3278.86, 46.3275, 3.12987, 300, 5, 0, 4979, 0, 1),
(24305, 16863, 530, 1, 1, 0, 0, -782.468, 3218.25, 16.8662, 5.89996, 300, 5, 0, 4979, 0, 1),
(23557, 16863, 530, 1, 1, 0, 0, -687.094, 3119.78, -3.49548, 3.81633, 300, 5, 0, 4979, 0, 1),
(23545, 16863, 530, 1, 1, 0, 0, -691.581, 3008.77, 20.7205, 0.909367, 300, 5, 0, 4979, 0, 1),
(23479, 16863, 530, 1, 1, 0, 0, -688.647, 3043.3, 9.7347, 4.488, 300, 5, 0, 4979, 0, 1),
(23373, 16863, 530, 1, 1, 0, 0, -952.565, 3094.2, 20.9138, 2.84964, 300, 5, 0, 4979, 0, 1),
(23210, 16863, 530, 1, 1, 0, 0, -889.592, 3118.86, 14.842, 0.218457, 300, 5, 0, 4979, 0, 1),
(23180, 16863, 530, 1, 1, 0, 0, -914.798, 3090.97, 15.8766, 1.4793, 300, 5, 0, 4979, 0, 1),
(23174, 16863, 530, 1, 1, 0, 0, -484.216, 3249.08, 1.76482, 0.815776, 300, 5, 0, 4979, 0, 1),
(23156, 16863, 530, 1, 1, 0, 0, -446.393, 3284.11, 5.39669, 5.87547, 300, 5, 0, 4979, 0, 1),
(22987, 16863, 530, 1, 1, 0, 0, -591.221, 3349.42, 29.2355, 3.84958, 300, 5, 0, 4979, 0, 1),
(22896, 16863, 530, 1, 1, 0, 0, -636.487, 3375.03, 41.1196, 3.14648, 300, 5, 0, 4979, 0, 1),
(22872, 16863, 530, 1, 1, 0, 0, -692.904, 3381.75, 48.8627, 2.44186, 300, 5, 0, 4979, 0, 1),
(22603, 16863, 530, 1, 1, 0, 0, -752.766, 3385.92, 59.3491, 1.64718, 300, 5, 0, 4979, 0, 1),
(22588, 16863, 530, 1, 1, 0, 0, -447.768, 3822.37, 56.6536, 0.224435, 300, 5, 0, 4979, 0, 1),
(22531, 16863, 530, 1, 1, 0, 0, -446.578, 3921.3, 70.6245, 1.3202, 300, 5, 0, 4979, 0, 1);

# Fix
UPDATE `quest_template` SET `RewardChoiceItemId1` = 31104, `RewardChoiceItemId2` = 31109, `RewardChoiceItemId3` = 31106, `RewardChoiceItemId4` = 31110, `RewardChoiceItemId5` = 31107, `RewardChoiceItemId6` = 31105, `RewardChoiceItemCount1` = 1, `RewardChoiceItemCount2` = 1, `RewardChoiceItemCount3` = 1, `RewardChoiceItemCount4` = 1, `RewardChoiceItemCount5` = 1, `RewardChoiceItemCount6` = 1 WHERE `Id` = 10639;
UPDATE `creature_template` SET `spell1` = 49297 WHERE `entry` IN (27664,40281);
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry` IN (27692,27755,27756);
SET @GUID = 105017;
SET @MAP = 571;
DELETE FROM `gameobject` WHERE (`id` IN (192254,192255,192269,192284,192285,192336,192338,192339,192349,192350,192351,192352,192353,192354,192355,192356,192357,192358,192359,192360,192361,192362,192363,192364,192366,192367,192368,192369,192370,192371,192372,192373,192374,192375,192378,192379,192416,192488,192501) AND `guid` != 67250) OR `guid` BETWEEN @GUID AND @GUID+87;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`) VALUES
(@GUID+0, 192488, @MAP, 64, 5262.540039, 3047.949951, 432.054993, 3.106650),   -- Flag on tower 
(@GUID+1, 192501, @MAP, 128, 5262.540039, 3047.949951, 432.054993, 3.106650),   -- Flag on tower
(@GUID+2, 192374, @MAP, 64, 5272.939941, 2976.550049, 444.492004, 3.124120),   -- Flag on Wall Intersect 
(@GUID+3, 192416, @MAP, 128, 5272.939941, 2976.550049, 444.492004, 3.124120),   -- Flag on Wall Intersect
(@GUID+4, 192375, @MAP, 64, 5235.189941, 2941.899902, 444.278015, 1.588250),   -- Flag on Wall Intersect 
(@GUID+5, 192416, @MAP, 128, 5235.189941, 2941.899902, 444.278015, 1.588250),   -- Flag on Wall Intersect
(@GUID+6, 192488, @MAP, 64, 5163.129883, 2952.590088, 433.502991, 1.535890),   -- Flag on tower 
(@GUID+7, 192501, @MAP, 128, 5163.129883, 2952.590088, 433.502991, 1.535890),   -- Flag on tower
(@GUID+8, 192488, @MAP, 64, 5145.109863, 2935.000000, 433.385986, 3.141590),   -- Flag on tower 
(@GUID+9, 192501, @MAP, 128, 5145.109863, 2935.000000, 433.385986, 3.141590),   -- Flag on tower
(@GUID+10, 192488, @MAP, 64, 5158.810059, 2883.129883, 431.618011, 3.141590),   -- Flag on wall 
(@GUID+11, 192416, @MAP, 128, 5158.810059, 2883.129883, 431.618011, 3.141590),   -- Flag on wall
(@GUID+12, 192336, @MAP, 64, 5154.490234, 2862.149902, 445.011993, 3.141590),   -- Flag on Wall Intersect 
(@GUID+13, 192416, @MAP, 128, 5154.490234, 2862.149902, 445.011993, 3.141590),   -- Flag on Wall Intersect
(@GUID+14, 192255, @MAP, 64, 5154.520020, 2853.310059, 409.183014, 3.141590),   -- Flag on the floor 
(@GUID+15, 192269, @MAP, 128, 5154.520020, 2853.310059, 409.183014, 3.141590),   -- Flag on the floor
(@GUID+16, 192254, @MAP, 64, 5154.459961, 2828.939941, 409.188995, 3.141590),   -- Flag on the floor 
(@GUID+17, 192269, @MAP, 128, 5154.459961, 2828.939941, 409.188995, 3.141590),   -- Flag on the floor
(@GUID+18, 192349, @MAP, 64, 5155.310059, 2820.739990, 444.979004, -3.13286),   -- Flag on wall intersect 
(@GUID+19, 192416, @MAP, 128, 5155.310059, 2820.739990, 444.979004, -3.13286),   -- Flag on wall intersect
(@GUID+20, 192488, @MAP, 64, 5160.339844, 2798.610107, 430.769012, 3.141590),   -- Flag on wall 
(@GUID+21, 192416, @MAP, 128, 5160.339844, 2798.610107, 430.769012, 3.141590),   -- Flag on wall
(@GUID+22, 192488, @MAP, 64, 5146.040039, 2747.209961, 433.584015, 3.071770),   -- Flag on tower 
(@GUID+23, 192501, @MAP, 128, 5146.040039, 2747.209961, 433.584015, 3.071770),   -- Flag on tower
(@GUID+24, 192488, @MAP, 64, 5163.779785, 2729.679932, 433.394012, -1.58825),   -- Flag on tower 
(@GUID+25, 192501, @MAP, 128, 5163.779785, 2729.679932, 433.394012, -1.58825),   -- Flag on tower
(@GUID+26, 192366, @MAP, 64, 5236.270020, 2739.459961, 444.992004, -1.59698),   -- Flag on wall intersect 
(@GUID+27, 192416, @MAP, 128, 5236.270020, 2739.459961, 444.992004, -1.59698),   -- Flag on wall intersect
(@GUID+28, 192367, @MAP, 64, 5271.799805, 2704.870117, 445.183014, -3.13286),   -- Flag on wall intersect 
(@GUID+29, 192416, @MAP, 128, 5271.799805, 2704.870117, 445.183014, -3.13286),   -- Flag on wall intersect
(@GUID+30, 192488, @MAP, 64, 5260.819824, 2631.800049, 433.324005, 3.054330),   -- Flag on tower 
(@GUID+31, 192501, @MAP, 128, 5260.819824, 2631.800049, 433.324005, 3.054330),   -- Flag on tower
(@GUID+32, 192488, @MAP, 64, 5278.379883, 2613.830078, 433.408997, -1.58825),   -- Flag on tower 
(@GUID+33, 192501, @MAP, 128, 5278.379883, 2613.830078, 433.408997, -1.58825),   -- Flag on tower
(@GUID+34, 192364, @MAP, 64, 5350.879883, 2622.719971, 444.686005, -1.57080),   -- Flag on wall intersect 
(@GUID+35, 192416, @MAP, 128, 5350.879883, 2622.719971, 444.686005, -1.57080),   -- Flag on wall intersect
(@GUID+36, 192370, @MAP, 64, 5392.270020, 2639.739990, 435.330994, 1.509710),   -- Flag on wall intersect 
(@GUID+37, 192416, @MAP, 128, 5392.270020, 2639.739990, 435.330994, 1.509710),   -- Flag on wall intersect
(@GUID+38, 192369, @MAP, 64, 5350.950195, 2640.360107, 435.407990, 1.570800),   -- Flag on wall intersect 
(@GUID+39, 192416, @MAP, 128, 5350.950195, 2640.360107, 435.407990, 1.570800),   -- Flag on wall intersect
(@GUID+40, 192368, @MAP, 64, 5289.459961, 2704.679932, 435.875000, -0.01745),   -- Flag on wall intersect 
(@GUID+41, 192416, @MAP, 128, 5289.459961, 2704.679932, 435.875000, -0.01745),   -- Flag on wall intersect
(@GUID+42, 192362, @MAP, 64, 5322.120117, 2763.610107, 444.973999, -1.55334),   -- Flag on wall intersect 
(@GUID+43, 192416, @MAP, 128, 5322.120117, 2763.610107, 444.973999, -1.55334),   -- Flag on wall intersect
(@GUID+44, 192363, @MAP, 64, 5363.609863, 2763.389893, 445.023987, -1.54462),   -- Flag on wall intersect 
(@GUID+45, 192416, @MAP, 128, 5363.609863, 2763.389893, 445.023987, -1.54462),   -- Flag on wall intersect
(@GUID+46, 192379, @MAP, 64, 5363.419922, 2781.030029, 435.763000, 1.570800),   -- Flag on wall intersect 
(@GUID+47, 192416, @MAP, 128, 5363.419922, 2781.030029, 435.763000, 1.570800),   -- Flag on wall intersect
(@GUID+48, 192378, @MAP, 64, 5322.020020, 2781.129883, 435.811005, 1.570800),   -- Flag on wall intersect 
(@GUID+49, 192416, @MAP, 128, 5322.020020, 2781.129883, 435.811005, 1.570800),   -- Flag on wall intersect
(@GUID+50, 192355, @MAP, 64, 5288.919922, 2820.219971, 435.721008, 0.017452),   -- Flag on wall intersect 
(@GUID+51, 192416, @MAP, 128, 5288.919922, 2820.219971, 435.721008, 0.017452),   -- Flag on wall intersect
(@GUID+52, 192354, @MAP, 64, 5288.410156, 2861.790039, 435.721008, 0.017452),   -- Flag on wall intersect 
(@GUID+53, 192416, @MAP, 128, 5288.410156, 2861.790039, 435.721008, 0.017452),   -- Flag on wall intersect
(@GUID+54, 192358, @MAP, 64, 5322.229980, 2899.429932, 435.808014, -1.58825),   -- Flag on wall intersect 
(@GUID+55, 192416, @MAP, 128, 5322.229980, 2899.429932, 435.808014, -1.58825),   -- Flag on wall intersect
(@GUID+56, 192359, @MAP, 64, 5364.350098, 2899.399902, 435.838989, -1.57080),   -- Flag on wall intersect 
(@GUID+57, 192416, @MAP, 128, 5364.350098, 2899.399902, 435.838989, -1.57080),   -- Flag on wall intersect
(@GUID+58, 192338, @MAP, 64, 5397.759766, 2873.080078, 455.460999, 3.106650),   -- Flag on keep 
(@GUID+59, 192416, @MAP, 128, 5397.759766, 2873.080078, 455.460999, 3.106650),   -- Flag on keep
(@GUID+60, 192339, @MAP, 64, 5397.390137, 2809.330078, 455.343994, 3.106650),   -- Flag on keep 
(@GUID+61, 192416, @MAP, 128, 5397.390137, 2809.330078, 455.343994, 3.106650),   -- Flag on keep
(@GUID+62, 192284, @MAP, 64, 5372.479980, 2862.500000, 409.049011, 3.141590),   -- Flag on floor 
(@GUID+63, 192269, @MAP, 128, 5372.479980, 2862.500000, 409.049011, 3.141590),   -- Flag on floor
(@GUID+64, 192285, @MAP, 64, 5371.490234, 2820.800049, 409.177002, 3.141590),   -- Flag on floor 
(@GUID+65, 192269, @MAP, 128, 5371.490234, 2820.800049, 409.177002, 3.141590),   -- Flag on floor
(@GUID+66, 192371, @MAP, 64, 5364.290039, 2916.939941, 445.330994, 1.579520),   -- Flag on wall intersect 
(@GUID+67, 192416, @MAP, 128, 5364.290039, 2916.939941, 445.330994, 1.579520),   -- Flag on wall intersect
(@GUID+68, 192372, @MAP, 64, 5322.859863, 2916.949951, 445.153992, 1.562070),   -- Flag on wall intersect 
(@GUID+69, 192416, @MAP, 128, 5322.859863, 2916.949951, 445.153992, 1.562070),   -- Flag on wall intersect
(@GUID+70, 192373, @MAP, 64, 5290.350098, 2976.560059, 435.221008, 0.017452),   -- Flag on wall intersect 
(@GUID+71, 192416, @MAP, 128, 5290.350098, 2976.560059, 435.221008, 0.017452),   -- Flag on wall intersect
(@GUID+72, 192360, @MAP, 64, 5352.370117, 3037.090088, 435.252014, -1.57080),   -- Flag on wall intersect 
(@GUID+73, 192416, @MAP, 128, 5352.370117, 3037.090088, 435.252014, -1.57080),   -- Flag on wall intersect
(@GUID+74, 192361, @MAP, 64, 5392.649902, 3037.110107, 433.713013, -1.52716),   -- Flag on wall intersect 
(@GUID+75, 192416, @MAP, 128, 5392.649902, 3037.110107, 433.713013, -1.52716),   -- Flag on wall intersect
(@GUID+76, 192356, @MAP, 64, 5237.069824, 2757.030029, 435.795990, 1.518440),   -- Flag on wall intersect 
(@GUID+77, 192416, @MAP, 128, 5237.069824, 2757.030029, 435.795990, 1.518440),   -- Flag on wall intersect
(@GUID+78, 192352, @MAP, 64, 5173.020020, 2820.929932, 435.720001, 0.017452),   -- Flag on wall intersect 
(@GUID+79, 192416, @MAP, 128, 5173.020020, 2820.929932, 435.720001, 0.017452),   -- Flag on wall intersect
(@GUID+80, 192353, @MAP, 64, 5172.109863, 2862.570068, 435.721008, 0.017452),   -- Flag on wall intersect 
(@GUID+81, 192416, @MAP, 128, 5172.109863, 2862.570068, 435.721008, 0.017452),   -- Flag on wall intersect
(@GUID+82, 192357, @MAP, 64, 5235.339844, 2924.340088, 435.040009, -1.57080),   -- Flag on wall intersect 
(@GUID+83, 192416, @MAP, 128, 5235.339844, 2924.340088, 435.040009, -1.57080),   -- Flag on wall intersect
(@GUID+84, 192350, @MAP, 64, 5270.689941, 2861.780029, 445.058014, -3.11539),   -- Flag on wall intersect 
(@GUID+85, 192416, @MAP, 128, 5270.689941, 2861.780029, 445.058014, -3.11539),   -- Flag on wall intersect
(@GUID+86, 192351, @MAP, 64, 5271.279785, 2820.159912, 445.200989, -3.13286),   -- Flag on wall intersect 
(@GUID+87, 192416, @MAP, 128, 5271.279785, 2820.159912, 445.200989, -3.13286);   -- Flag on wall intersect
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=33115;
UPDATE `quest_template` SET `RequiredRaces` = 0 WHERE `id` = 8959;
REPLACE INTO `conditions` VALUES ('13', '1', '30207', '0', '0', '31', '0', '3', '21174', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '7', '30531', '0', '0', '31', '0', '3', '17256', '0', '0', '0', '', null);
# REPLACE INTO `conditions` VALUES ('13', '1', '30541', '0', '0', '31', '0', '3', '17474', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '30572', '0', '0', '31', '0', '3', '17474', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '7', '30657', '0', '0', '31', '0', '3', '17474', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '38015', '0', '0', '31', '0', '3', '21216', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '2', '41004', '0', '0', '31', '0', '5', '185928', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '1', '41537', '0', '0', '31', '0', '3', '23472', '0', '0', '0', '', null);
# REPLACE INTO `conditions` VALUES ('13', '0', '44659', '0', '0', '31', '0', '3', '23109', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7675', '9369', '0', '0', '8', '0', '10107', '0', '0', '0', '0', '', 'Show different gossip if player has rewarded quest 10107');
REPLACE INTO `conditions` VALUES ('14', '7675', '9369', '0', '1', '8', '0', '10108', '0', '0', '0', '0', '', 'Show different gossip if player has rewarded quest 10108');
DELETE FROM linked_respawn WHERE guid=71850;
DELETE FROM linked_respawn WHERE guid=85999;
DELETE FROM linked_respawn WHERE guid=86000;
DELETE FROM conditions WHERE ConditionValue2=401003;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=8088 AND SourceEntry=1;
DELETE FROM `db_script_string` WHERE entry = 2000000294;
DELETE FROM `db_script_string` WHERE entry = 2000000295;
DELETE FROM `db_script_string` WHERE entry = 2000000296;
DELETE FROM `db_script_string` WHERE entry = 2000000297;
DELETE FROM `db_script_string` WHERE entry = 2000000298;
DELETE FROM `db_script_string` WHERE entry = 2000000299;
DELETE FROM `db_script_string` WHERE entry = 2000000300;
DELETE FROM `db_script_string` WHERE entry = 2000000301;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` =28941;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` =28942;


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
`copy`.`unit_flags2`=`creature_template`.`unit_flags2`,
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
`copy`.`unit_flags2`=`creature_template`.`unit_flags2`,
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
`copy`.`unit_flags2`=`creature_template`.`unit_flags2`,
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
# update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 0;
# update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 3;
# update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 10;
# update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 25;
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

UPDATE version SET `cache_id`= '630';
UPDATE version SET `db_version`= 'YTDB_0.14.6_R630_TC_R117015_TDBAI_335_RuDB_R56';
