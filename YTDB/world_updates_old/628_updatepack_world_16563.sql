# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 627_FIX_16394 628_FIX_16563 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('628_FIX_16563');

# TC
-- Added trigger flags to triggers
UPDATE `creature_template` SET `flags_extra` = flags_extra | 128 WHERE `entry` = 34862;
UPDATE `creature_template` SET `unit_flags` = unit_flags | 256 WHERE `entry` = 34862;
DELETE FROM `spell_dbc` WHERE `Id`=35009;
INSERT INTO `spell_dbc` (`Id`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`Targets`,`CastingTimeIndex`,`ProcCharges`,`SpellLevel`,`RangeIndex`,`Effect1`,`EffectDieSides1`,`EffectBasePoints1`,`EffectImplicitTargetA1`,`EffectImplicitTargetB1`,`EffectRadiusIndex1`,`SpellFamilyName`,`SpellFamilyFlags2`,`DmgMultiplier1`,`SchoolMask`,`Comment`) VALUES
(35009,134545792,1024,268435460,65536,64,1,101,1,13,125,1,-11,22,16,27,10,4,1,6,'Invisibility - Reducing threat');
UPDATE `spell_dbc` SET `ProcChance`=101,`ProcCharges`=0,`SpellFamilyName`=3,`SpellFamilyFlags2`=0 WHERE `Id`=35009;
DELETE FROM `spell_dbc` WHERE `Id` IN (68184,68620);
INSERT INTO `spell_dbc` (`Id`, `Dispel`, `Mechanic`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `AttributesEx6`, `AttributesEx7`, `Stances`, `StancesNot`, `Targets`, `CastingTimeIndex`, `AuraInterruptFlags`, `ProcFlags`, `ProcChance`, `ProcCharges`, `MaxLevel`, `BaseLevel`, `SpellLevel`, `DurationIndex`, `RangeIndex`, `StackAmount`, `EquippedItemClass`, `EquippedItemSubClassMask`, `EquippedItemInventoryTypeMask`, `Effect1`, `Effect2`, `Effect3`, `EffectDieSides1`, `EffectDieSides2`, `EffectDieSides3`, `EffectRealPointsPerLevel1`, `EffectRealPointsPerLevel2`, `EffectRealPointsPerLevel3`, `EffectBasePoints1`, `EffectBasePoints2`, `EffectBasePoints3`, `EffectMechanic1`, `EffectMechanic2`, `EffectMechanic3`, `EffectImplicitTargetA1`, `EffectImplicitTargetA2`, `EffectImplicitTargetA3`, `EffectImplicitTargetB1`, `EffectImplicitTargetB2`, `EffectImplicitTargetB3`, `EffectRadiusIndex1`, `EffectRadiusIndex2`, `EffectRadiusIndex3`, `EffectApplyAuraName1`, `EffectApplyAuraName2`, `EffectApplyAuraName3`, `EffectAmplitude1`, `EffectAmplitude2`, `EffectAmplitude3`, `EffectMultipleValue1`, `EffectMultipleValue2`, `EffectMultipleValue3`, `EffectMiscValue1`, `EffectMiscValue2`, `EffectMiscValue3`, `EffectMiscValueB1`, `EffectMiscValueB2`, `EffectMiscValueB3`, `EffectTriggerSpell1`, `EffectTriggerSpell2`, `EffectTriggerSpell3`, `EffectSpellClassMaskA1`, `EffectSpellClassMaskA2`, `EffectSpellClassMaskA3`, `EffectSpellClassMaskB1`, `EffectSpellClassMaskB2`, `EffectSpellClassMaskB3`, `EffectSpellClassMaskC1`, `EffectSpellClassMaskC2`, `EffectSpellClassMaskC3`, `MaxTargetLevel`, `SpellFamilyName`, `SpellFamilyFlags1`, `SpellFamilyFlags2`, `SpellFamilyFlags3`, `MaxAffectedTargets`, `DmgClass`, `PreventionType`, `DmgMultiplier1`, `DmgMultiplier2`, `DmgMultiplier3`, `AreaGroupId`, `SchoolMask`, `Comment`) VALUES
(68184, 0, 0, 545259904, 0, 5, 268697856, 128, 0, 16777216, 0, 0, 0, 0, 1, 0, 0, 101, 0, 0, 0, 0, 0, 1, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 0, 0, 7, 0, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Faction Champions - credit marker'),
(68620, 0, 0, 545259904, 0, 5, 268697856, 128, 0, 16777216, 0, 0, 0, 0, 1, 0, 0, 101, 0, 0, 0, 0, 0, 1, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 0, 0, 7, 0, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Resilience Will Fix It - achievement credit marker');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 56575, 0, 0, 31, 0, 3, 27852, 0, 0, 0, '', NULL),
(13, 1, 56661, 0, 0, 31, 0, 3, 27852, 0, 0, 0, '', NULL),
(13, 1, 56663, 0, 0, 31, 0, 3, 27852, 0, 0, 0, '', NULL),
(13, 1, 61408, 0, 0, 31, 0, 3, 27852, 0, 0, 0, '', NULL);

UPDATE `creature_template` SET `exp`=0 WHERE `entry`=31841; -- Taunka Spirit Guide
UPDATE `creature_template` SET `exp`=0 WHERE `entry`=31842; -- Dwarven Spirit Guide
UPDATE `creature_template` SET `exp`=0 WHERE `entry`=31052; -- Bowyer Randolph
UPDATE `creature_template` SET `exp`=0 WHERE `entry`=31053; -- Primalist Mulfort
UPDATE `creature_template` SET `dynamicflags`=`dynamicflags`|4 WHERE `entry`=31107; -- Lieutenant Murp (?)
UPDATE `creature_template` SET `baseattacktime`=2000,`unit_flags`=`unit_flags`|768 WHERE `entry`=39173; -- Champion Ros'slai
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|16 WHERE `entry`=30740; -- Valiance Expedition Champion (?)
UPDATE `creature_template` SET `InhabitType`=7 WHERE `entry`=27852; -- Wintergrasp Control Arms
UPDATE `creature_template` SET `faction_A`=1732,`faction_H`=1735,`npcflag`=16777216, `spell1`=51421, /* Fire Cannon */ `spell2`=0,`spell3`=0,`spell4`=0,`spell5`=0,`spell6`=0,`spell7`=0,`spell8`=0 WHERE `entry`=28366; -- Wintergrasp Tower Cannon
UPDATE `creature_template` SET `faction_A`=1732,`faction_H`=1735,`npcflag`=16777216,`unit_flags`=16384,`unit_class`=4,`speed_walk`=1.2,`spell1`=57609, /* Fire Cannon */ `spell2`=0,`spell3`=0,`spell4`=0,`spell5`=0,`spell6`=0,`spell7`=0,`spell8`=0 WHERE `entry`=32629; -- Wintergrasp Siege Turret (H)
UPDATE `creature_template` SET `faction_A`=1732,`faction_H`=1735,`npcflag`=16777216,`unit_flags`=16384,`unit_class`=4,`speed_walk`=1.2, `spell1`=57609, /* Fire Cannon */ `spell2`=0,`spell3`=0,`spell4`=0,`spell5`=0,`spell6`=0,`spell7`=0,`spell8`=0 WHERE `entry`=28319; -- Wintergrasp Siege Turret (A)
UPDATE `creature_template` SET `faction_A`=1732,`faction_H`=1735,`npcflag`=16777216,`unit_flags`=16384,`unit_class`=4,`speed_walk`=1.2,`speed_run`=1, `spell1`=54109, /* Ram */ `spell2`=0,`spell3`=0,`spell4`=0,`spell5`=0,`spell6`=0,`spell7`=0,`spell8`=0 WHERE `entry`=32627; -- Wintergrasp Siege Engine (H)
UPDATE `creature_template` SET `faction_A`=1732,`faction_H`=1735,`npcflag`=16777216,`unit_flags`=16384,`unit_class`=4,`speed_walk`=1.2,`speed_run`=1, `spell1`=54109, /* Ram */ `spell2`=0,`spell3`=0,`spell4`=0,`spell5`=0,`spell6`=0,`spell7`=0,`spell8`=0 WHERE `entry`=28312; -- Wintergrasp Siege Engine (A)
UPDATE `creature_template` SET `faction_A`=1732,`faction_H`=1735,`npcflag`=16777216,`unit_flags`=16384,`speed_walk`=1.2,`speed_run`=1, `spell1`=54107, /* Ram */ `spell2`=50896, /* Hurl Boulder */ `spell3`=0,`spell4`=0,`spell5`=0,`spell6`=0,`spell7`=0,`spell8`=0 WHERE `entry`=28094; -- Wintergrasp Demolisher
UPDATE `creature_template` SET `faction_A`=1732,`faction_H`=1735,`npcflag`=16777216,`unit_flags`=16384,`unit_class`=4,`speed_walk`=2.8,`speed_run`=1.71429, `spell1`=57606, /* Plague Barrel */ `spell2`=50989, /* Flame Breath */ `spell3`=0,`spell4`=0,`spell5`=0,`spell6`=0,`spell7`=0,`spell8`=0 WHERE `entry`=27881; -- Wintergrasp Catapult

UPDATE `creature_model_info` SET `bounding_radius`=0.3366,`combat_reach`=1.65,`gender`=0 WHERE `modelid`=27894; -- Knight Dameron
UPDATE `creature_model_info` SET `bounding_radius`=0.3366,`combat_reach`=1.65,`gender`=0 WHERE `modelid`=31346; -- Marshal Magruder
UPDATE `creature_model_info` SET `bounding_radius`=0.3366,`combat_reach`=1.65,`gender`=0 WHERE `modelid`=31347; -- Champion Ros'slai
UPDATE `creature_model_info` SET `bounding_radius`=0.305,`combat_reach`=5,`gender`=2 WHERE `modelid`=25301; -- Wintergrasp Siege Turret

DELETE FROM `creature_template_addon` WHERE `entry` IN (31841,31842,30400,30499,30489,30869,31036,31051,31052,31054,31108,31109,31153,32294,39172,30870,31053,31091,31101,31102,31106,31107,31151,32296,39173,30740,32629,28319,28366,32627,28312,28094,27881,30739);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(31841,0,0,1,0, '58729'), -- Taunka Spirit Guide (Spiritual Immunity, Spirit Heal Channel) FIX: Do we need the spell that revives players here (22011)? It has a duration (found in sniffs). 
(31842,0,0,1,0, '58729'), -- Dwarven Spirit Guide                                               This spell (and the spell it triggers, are used in the "ressurect system" in Battleground.cpp
(30400,0,0,1,0, NULL), -- Goblin Mechanic
(30499,0,0,1,0, NULL), -- Gnomish Engineer
(30489,0,0,1,0, NULL), -- Morgan Day
(30869,0,0,1,0, NULL), -- Arzo Safeflight
(31036,14337,0,257,0, NULL), -- Commander Zanneth
(31051,0,0,1,0, NULL), -- Sorceress Kaylana
(31052,0,0,257,0, NULL), -- Bowyer Randolph
(31054,0,0,257,0, NULL), -- Anchorite Tessa
(31108,0,0,257,0, NULL), -- Siege Master Stouthandle
(31109,0,0,257,0, NULL), -- Senior Demolitionist Legoso
(31153,6569,0,257,0, NULL), -- Tactical Officer Ahbramis
(32294,27247,0,1,0, NULL), -- Knight Dameron
(39172,28912,0,1,0, NULL), -- Marshal Magruder
(30870,0,0,1,0, NULL), -- Herzo Safeflight
(31053,0,0,257,0, '18950'), -- Primalist Mulfort (Invisibility and Stealth Detection ... why?)
(31091,0,0,257,0, '18950'), -- Commander Dardosh (Invisibility and Stealth Detection)
(31101,0,0,1,0, NULL), -- Hoodoo Master Fu'jin
(31102,0,0,1,0, NULL), -- Vieron Blazefeather
(31106,0,0,257,0, NULL), -- Siegesmith Stronghoof
(31107,0,0,257,0, NULL), -- Lieutenant Murp
(31151,0,0,257,0, NULL), -- Tactical Officer Kilrath
(32296,27245,0,1,0, NULL), -- Stone Guard Mukar
(39173,29261,0,1,0, NULL), -- Champion Ros'slai
(30740,0,0,257,375, NULL), -- Valiance Expedition Champion
(32629,0,0,257,0, NULL), -- Wintergrasp Siege Turret
(28319,0,0,257,0, NULL), -- Wintergrasp Siege Turret
(28366,0,0,257,0, NULL), -- Wintergrasp Tower Cannon
(32627,0,0,257,0, NULL), -- Wintergrasp Siege Engine
(28312,0,0,257,0, NULL), -- Wintergrasp Siege Engine
(28094,0,0,257,0, NULL), -- Wintergrasp Demolisher
(27881,0,0,257,0, NULL), -- Wintergrasp Catapult
(30739,0,0,257,375, NULL); -- Warsong Champion

UPDATE `gameobject_template` SET `faction`=114 WHERE `entry` IN (192310,192312,192313,192314,192316,192317,192318,192319,192320,192321,192322,192323,192324,192325,192326,192327,192328,192329,
192330,192331,192332,192333,192334,192335,192286,192287,192292,192299,192304,192305,192306,192307,192308,192309); -- Alliance Banner

UPDATE `gameobject_template` SET `faction`=114 WHERE `entry` IN (192269,192284,192285,192338,192339,192349,192350,192351,192352,192353,192354,192355,192356,192357,192358,192359,192360,192361,
192362,192363,192364,192366,192367,192368,192369,192370,192371,192372,192373,192374,192375,192376,192377,192378,192379,192254,
192255,192336); -- Horde Banner

UPDATE `gameobject_template` SET `faction`=114 WHERE `entry` IN (193096,193097,193098,193099,193100,193101,193102,193103,193104,193105,193106,193107,193108,193109,193124,193125,193126,193127,
193128,193129,193130,193131,193132,193133,193134,193135,193136,193137,193138,193139,193140,193141,193142,193143,193144,193145,
193146,193147,193148,193149,193150,193151,193152,193153,193154,193155,193156,193157,193158,193159,193160,193161,193162,193163,
193164,193165); -- nameless GOs

-- Gossip Menu
DELETE FROM `gossip_menu` WHERE `entry`=9904 AND `text_id`=13759;
DELETE FROM `gossip_menu` WHERE `entry`=9904 AND `text_id`=13761;
DELETE FROM `gossip_menu` WHERE `entry`=9923 AND `text_id`=14172;
DELETE FROM `gossip_menu` WHERE `entry`=10229 AND `text_id`=14221;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(9904,13759),
(9904,13761),
(9923,14172),
(10229,14221);

-- Gossip Menu Option
DELETE FROM `gossip_menu_option` WHERE `menu_id`=9904;
DELETE FROM `gossip_menu_option` WHERE `menu_id`=10129 AND `id` IN (2,4);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`) VALUES
(9904,0,0, 'I would like to build a catapult.',1,1,0,0,0,0, ''),
(9904,1,0, 'I would like to build a demolisher.',1,1,0,0,0,0, ''),
(9904,2,0, 'I would like to build a siege engine.',1,1,0,0,0,0, ''),
(10129,2,0, 'Guide me to the Broken Temple Graveyard.',1,1,0,0,0,0, ''),
(10129,4,0, 'Guide me to the Eastspark Graveyard.',1,1,0,0,0,0, '');

-- Conditions
-- Add gossip_menu condition for 9904 Horde
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup` IN (9904,9923);
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`) VALUES
(14,9904,13759,0,1,33280), -- Must have Rank 1: Corporal
(14,9904,13759,1,1,55629), -- Or must have Rank 2: First Lieutenant
(14,9904,13761,0,11,33280), -- Must not have Rank 1: Corporal
(14,9904,13761,0,11,55629), -- Must not have Rank 2: First Lieutenant
-- Add gossip_menu condition for 9923 Alliance
(14,9923,13798,0,1,33280), -- Must have Rank 1: Corporal
(14,9923,13798,1,1,55629), -- Or must have Rank 2: First Lieutenant
(14,9923,14172,0,11,33280), -- Must not have Rank 1: Corporal
(14,9923,14172,0,11,55629), -- Must not have Rank 2: First Lieutenant
-- Add conditions to gossip options horde
(15,9904,0,0,1,33280), -- Must have reached Rank 1: Corporal
(15,9904,0,1,1,55629), -- Or must have reached Rank 2: First Lieutenant
(15,9904,1,0,1,55629), -- Must have reached Rank 2: First Lieutenant
(15,9904,2,0,1,55629), -- Must have reached Rank 2: First Lieutenant
-- Add conditions to gossip options alliance
(15,9923,0,0,1,33280), -- Must have reached Rank 1: Corporal
(15,9923,0,1,1,55629), -- Or must have reached Rank 2: First Lieutenant
(15,9923,1,0,1,55629), -- Must have reached Rank 2: First Lieutenant
(15,9923,2,0,1,55629); -- Must have reached Rank 2: First Lieutenant

DELETE FROM gameobject WHERE id IN (190475,190487,194959,194962);
INSERT INTO gameobject (guid,id,position_x,position_y,position_z,orientation,map) VALUES
(72867, 190475, 4949.344238, 2432.585693, 320.176971, 1.386214, 571), -- ne
(103205, 190487, 4948.524414, 3342.337891, 376.875366, 4.400566, 571), -- nw
(103250, 194959, 4398.076660, 2356.503662, 376.190491, 0.525406, 571), -- se
(103251, 194962, 4390.776367, 3304.094482, 372.429077, 6.097023, 571); -- sw
UPDATE `gameobject` SET `phaseMask` = 128 WHERE `id` IN (193096,193097,193098,193099,193100,193101,193102,193103,193104,193105,193106,193107,193108,193109,193124,193125,193126,193127,193128,193129,193130,193131,193132,193133,193134,193135,193136,193137,193138,193139,193140,193141,193142,193143,193144,193145,193146,193147,193148,193149,193150,193151,193152,193153,193154,193155,193156,193157,193158,193159,193160,193161,193162,193163,193164,193165);
UPDATE `gameobject` SET `phaseMask` = 1 WHERE `id` IN (193125,193126);
UPDATE `gameobject` SET `phaseMask` = 64 WHERE `id` IN (193127,193139,193140,193141,193142,193143,193144,193145,193146,193160,193161);

--  54640 Teleport (Teleports defenders behind the walls on the Isle of Ulduran, Strand of the Ancients) - FIX THIS?
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=54640;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(54640,54643,0, 'WG teleporter');

-- Spell area
DELETE FROM `spell_area` WHERE `spell` IN (58730,57940);
INSERT INTO `spell_area` (`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES
(58730,4581,0,0,0,0,0,2,1), -- Restricted Flight Area (Wintergrasp Eject)
(58730,4539,0,0,0,0,0,2,1),
(58730,4197,0,0,0,0,0,2,1),
(58730,4585,0,0,0,0,0,2,1),
(58730,4612,0,0,0,0,0,2,1),
(58730,4582,0,0,0,0,0,2,1),
(58730,4583,0,0,0,0,0,2,1),
(58730,4589,0,0,0,0,0,2,1),
(58730,4575,0,0,0,0,0,2,1),
(58730,4538,0,0,0,0,0,2,1),
(58730,4577,0,0,0,0,0,2,1),
(57940,65,0,0,0,0,0,2,1), -- Essence of Wintergrasp
(57940,66,0,0,0,0,0,2,1),
(57940,67,0,0,0,0,0,2,1),
(57940,206,0,0,0,0,0,2,1),
(57940,210,0,0,0,0,0,2,1),
(57940,394,0,0,0,0,0,2,1),
(57940,395,0,0,0,0,0,2,1),
(57940,1196,0,0,0,0,0,2,1),
(57940,2817,0,0,0,0,0,2,1),
(57940,3456,0,0,0,0,0,2,1),
(57940,3477,0,0,0,0,0,2,1),
(57940,3537,0,0,0,0,0,2,1),
(57940,3711,0,0,0,0,0,2,1),
(57940,4100,0,0,0,0,0,2,1),
(57940,4196,0,0,0,0,0,2,1),
(57940,4228,0,0,0,0,0,2,1),
(57940,4264,0,0,0,0,0,2,1),
(57940,4265,0,0,0,0,0,2,1),
(57940,4272,0,0,0,0,0,2,1),
(57940,4273,0,0,0,0,0,2,1),
(57940,4395,0,0,0,0,0,2,1),
(57940,4415,0,0,0,0,0,2,1),
(57940,4416,0,0,0,0,0,2,1),
(57940,4493,0,0,0,0,0,2,1),
(57940,4494,0,0,0,0,0,2,1),
(57940,4603,0,0,0,0,0,2,1);

DELETE FROM `spell_area` WHERE `spell` IN (56618, 56617);
INSERT INTO `spell_area` (`spell`,`area`,`autocast`) VALUES
(56618, 4538, 1),
(56617, 4538, 1),
(56618, 4539, 1),
(56617, 4539, 1),
(56618, 4611, 1),
(56617, 4611, 1),
(56618, 4612, 1),
(56617, 4612, 1);

-- Spell scripts. replace with SAI
DELETE FROM `spell_scripts` WHERE `id`=49899;
INSERT INTO `spell_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(49899,0,1,406,0,0,0,0,0,0); -- Activate Robotic Arms 

-- Spell Target position for Wintergrasp Graveyard spells
DELETE FROM `spell_target_position` WHERE `id` IN (59760,59762,59763,59765,59766,59767,59769);
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(59760,571,5537.986,2897.493,517.057,4.819249), -- Teleport: Fortress Graveyard 
(59762,571,5104.750,2300.940,368.579,0.733038), -- Teleport: Sunken Ring "area 4538"
(59763,571,5099.120,3466.036,368.484,5.317802), -- Teleport: Broken Temple "area 4539 & 4589"
(59765,571,5032.454,3711.382,372.468,3.971623), -- Teleport: Horde Landing Zone
(59766,571,4331.716,3235.695,390.251,0.008500), -- Teleport: Westspark Factory Graveyard "area 4611"
(59767,571,4314.648,2408.522,392.642,6.268125), -- Teleport: Eastspark Factory Graveyard "area 4612"
(59769,571,5140.790,2179.120,390.950,1.972220); -- Teleport: Alliance Landing Zone

DELETE FROM `spell_script_names` WHERE `spell_id` IN (61409, 56662, 56664, 56659, 49899, 61178);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(61409, 'spell_wintergrasp_force_building'),
(56659, 'spell_wintergrasp_force_building'),
(56662, 'spell_wintergrasp_force_building'),
(56664, 'spell_wintergrasp_force_building'),
(49899, 'spell_wintergrasp_force_building'),
(61178, 'spell_wintergrasp_grab_passenger');

DELETE FROM `achievement_criteria_data` WHERE criteria_id = 7703;
INSERT INTO `achievement_criteria_data` VALUES
(7703, 6, 4197, 0, ''),
(7703, 11, 0, 0, 'achievement_wg_didnt_stand_a_chance');
DELETE FROM `disables` WHERE `entry` = 7703 AND `sourceType` = 4;
DELETE FROM `spell_proc_event` WHERE `entry`=64752;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(64752,0,7,8392704,256,2097152,0,0,0,0,0);

-- Conditions
-- Add gossip_menu condition for 9904 Horde
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup` IN (9904,9923);
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`NegativeCondition`) VALUES
(14,9904,13759,0,1,33280,0), -- Must have Rank 1: Corporal
(14,9904,13759,1,1,55629,0), -- Or must have Rank 2: First Lieutenant
(14,9904,13761,0,1,33280,1), -- Must not have Rank 1: Corporal
(14,9904,13761,0,1,55629,1), -- Must not have Rank 2: First Lieutenant
-- Add gossip_menu condition for 9923 Alliance
(14,9923,13798,0,1,33280,0), -- Must have Rank 1: Corporal
(14,9923,13798,1,1,55629,0), -- Or must have Rank 2: First Lieutenant
(14,9923,14172,0,1,33280,1), -- Must not have Rank 1: Corporal
(14,9923,14172,0,1,55629,1), -- Must not have Rank 2: First Lieutenant
-- Add conditions to gossip options horde
(15,9904,0,0,1,33280,0), -- Must have reached Rank 1: Corporal
(15,9904,0,1,1,55629,0), -- Or must have reached Rank 2: First Lieutenant
(15,9904,1,0,1,55629,0), -- Must have reached Rank 2: First Lieutenant
(15,9904,2,0,1,55629,0), -- Must have reached Rank 2: First Lieutenant
-- Add conditions to gossip options alliance
(15,9923,0,0,1,33280,0), -- Must have reached Rank 1: Corporal
(15,9923,0,1,1,55629,0), -- Or must have reached Rank 2: First Lieutenant
(15,9923,1,0,1,55629,0), -- Must have reached Rank 2: First Lieutenant
(15,9923,2,0,1,55629,0); -- Must have reached Rank 2: First Lieutenant

-- Wintergrasp Siege Turret
UPDATE `creature_template` SET `faction_A`=1732,`faction_H`=1732 WHERE `entry`=28319; -- Alliance
UPDATE `creature_template` SET `faction_A`=1735,`faction_H`=1735 WHERE `entry`=32629; -- Horde
UPDATE `creature_template` SET `faction_A`=103,`faction_H`=103 WHERE `entry` IN (30890,31540); -- Twilight Whelp
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,7,61632,0,0,31,0,3,30449,0,0,0,'','Sartharion Berserk - Only hit Tenebron, Shadron & Vesperon'),
(13,7,61632,0,1,31,0,3,30451,0,0,0,'','Sartharion Berserk - Only hit Tenebron, Shadron & Vesperon'),
(13,7,61632,0,2,31,0,3,30452,0,0,0,'','Sartharion Berserk - Only hit Tenebron, Shadron & Vesperon');
UPDATE `creature` SET `phaseMask`=256 WHERE `id`=34300;
DELETE FROM `spell_area` WHERE spell=58045;
INSERT INTO `spell_area` (`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES
(58045,4197,0,0,0,0,0,2,1);
DELETE FROM `spell_area` WHERE spell=74411 AND `area`=4197;
INSERT INTO `spell_area` (`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES
(74411,4197,0,0,0,0,0,2,1);
-- Spell script name linking for Defending Wyrmrest Temple: Character Script Cast From Gossip ID: 49123
DELETE FROM `spell_script_names` WHERE `spell_id`=49213;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(49213,'spell_q12372_cast_from_gossip_trigger');
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=17398;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=17398;
INSERT IGNORE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(-92486, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 9, 29607, 0, 0, 0, 0, 0, 14, 22299, 0, 0, 0, 0, 0, 0, 'Blood Furnace - First Cell'),
(-92483, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 9, 29607, 0, 0, 0, 0, 0, 14, 22297, 0, 0, 0, 0, 0, 0, 'Blood Furnace - Second Cell'),
(-92491, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 9, 29607, 0, 0, 0, 0, 0, 14, 22298, 0, 0, 0, 0, 0, 0, 'Blood Furnace - Third Cell'),
(-92478, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 9, 29607, 0, 0, 0, 0, 0, 14, 22296, 0, 0, 0, 0, 0, 0, 'Blood Furnace - Fourth Cell');
DELETE FROM `gameobject_scripts` WHERE `id`=40065;
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(40065, 3, 11, 66582, 0, 0, 0, 0, 0, 0);
DELETE FROM `playercreateinfo_spell` WHERE `Spell` IN (59221,59535,59536,59538,59539,59540,59541);
INSERT INTO `playercreateinfo_spell` (`race`, `class`, `Spell`, `Note`) VALUES
(11,1,59221,'Shadow Resistance'),
(11,2,59535,'Shadow Resistance'),
(11,3,59536,'Shadow Resistance'),
(11,5,59538,'Shadow Resistance'),
(11,6,59539,'Shadow Resistance'),
(11,7,59540,'Shadow Resistance'),
(11,8,59541,'Shadow Resistance');
-- A Race Against Time (11671)

SET @NPC_SALRAND                := 25584; -- Inquisitor Salrand
SET @NPC_BERYL_INVISMAN         := 25594; -- Beryl Point InvisMan
SET @GOB_BERYL_SHIELD           := 187773; -- Beryl Shield
SET @GOB_BERYL_SHIELD_FOCUS     := 300176; -- TEMP Beryl Force Shield
SET @SPELL_BEAM                 := 45777; -- Salrand's Beam
SET @SPELL_THROW_DETONATOR      := 45780; -- Throw Beryl Shield Detonator
SET @SPELL_SUMMON_DETONATOR     := 45791; -- Summon Beryl Detonator
SET @SPELL_EXPLOSION            := 45796; -- Beryl Shield Explosion
SET @SPELL_LOCKBOX              := 45809; -- Summon Salrand's Lockbox

UPDATE `gameobject_template` SET `data1`=80 WHERE  `entry`=300176; -- spell focus radius
UPDATE `gameobject_template` SET `flags`=32 WHERE  `entry`=187773; -- shield:nodespawn flag

UPDATE `creature_template` SET `InhabitType`=0x4,`unit_flags`=0x100,`AIName`='SmartAI' WHERE `entry`=@NPC_SALRAND;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@NPC_BERYL_INVISMAN;

DELETE FROM `creature_template_addon` WHERE `entry`=@NPC_SALRAND;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`auras`) VALUES
(@NPC_SALRAND,0,0x0,0x1,'45775');

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@NPC_SALRAND;
DELETE FROM `smart_scripts` WHERE (`source_type`=0 AND `entryorguid` IN (@NPC_SALRAND,@NPC_BERYL_INVISMAN)) OR (`source_type`=9 AND `entryorguid` IN (@NPC_SALRAND*100,@NPC_BERYL_INVISMAN*100));
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC_SALRAND,0,0,0,38,0,100,1,1,1,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On data 1 1 - Say'),
(@NPC_SALRAND,0,1,2,38,0,100,1,1,2,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'On data 1 2 - Say'),
(@NPC_SALRAND,0,2,0,61,0,100,1,0,0,0,0,80,@NPC_SALRAND*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'On link - Run script'),
(@NPC_SALRAND,0,3,4,6,0,100,1,0,0,0,0,11,@SPELL_LOCKBOX,0,0,0,0,0,1,0,0,0,0,0,0,0,'On death - Cast spell'),
(@NPC_SALRAND,0,4,0,61,0,100,1,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'On death - Say'),
(@NPC_SALRAND,0,5,0,11,0,100,1,0,0,0,0,24,0,0,0,0,0,0,15,0,0,0,0,0,0,0,'On respawn - Evade'),
(@NPC_SALRAND*100,9,0,0,0,0,100,0,0,0,0,0,60,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'On script - set fly off'),
(@NPC_SALRAND*100,9,1,0,0,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,3392.852,6161.092,79.83095,0,'On script - Move to pos'),
(@NPC_SALRAND*100,9,2,0,0,0,100,0,3000,3000,0,0,19,256,0,0,0,0,0,1,0,0,0,0,0,0,0,'On script - Set unit flags'),
--
(@NPC_BERYL_INVISMAN,0,0,0,8,0,100,0,@SPELL_THROW_DETONATOR,0,0,0,80,@NPC_BERYL_INVISMAN*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'On spellhit - Run Script'),
(@NPC_BERYL_INVISMAN*100,9,0,0,0,0,100,0,0,0,0,0,11,@SPELL_SUMMON_DETONATOR,0,0,0,0,0,1,0,0,0,0,0,0,0,'On script - Cast Spell'),
(@NPC_BERYL_INVISMAN*100,9,1,0,0,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,@NPC_SALRAND,100,0,0,0,0,0,'On script - Set Data'),
(@NPC_BERYL_INVISMAN*100,9,2,0,0,0,100,0,8000,8000,0,0,45,1,2,0,0,0,0,19,@NPC_SALRAND,100,0,0,0,0,0,'On script - Set Data'),
(@NPC_BERYL_INVISMAN*100,9,3,0,0,0,100,0,2000,2000,0,0,11,@SPELL_EXPLOSION,0,0,0,0,0,1,0,0,0,0,0,0,0,'On script - Cast Spell');

DELETE FROM `creature_text` WHERE `entry`=@NPC_SALRAND;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@NPC_SALRAND,0,0,'What is the meaning of this disturbance?!',14,0,100,0,0,0,'Inquisitor Salrand to Beryl Point InvisMan'),
(@NPC_SALRAND,1,0,'Who dares interrupt my work!? Show yourself, coward!',14,0,100,0,0,0,'Inquisitor Salrand to Beryl Point InvisMan'),
(@NPC_SALRAND,2,0,'I''ve destroyed the key! Your cherished archmage belongs to Malygos!',12,0,100,0,0,0,'Inquisitor Salrand');

INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,@SPELL_THROW_DETONATOR,0,0,31,0,3,@NPC_BERYL_INVISMAN,0,0,0,'','Throw Beryl Shield Detonator target npc');

-- Fix {Q/A} The Shining Light ID: 11288
-- Makes it blizzlike timed 10 minutes
UPDATE `quest_template` SET `LimitTime`=600 WHERE `id`=11288;
-- Decomposing Ghoul SAI
SET @Ghoul := 24177;
SET @SpellTrigger := 43202;
SET @Spell := 43203;
SET @Ares  := 24189;
UPDATE `creature_template` SET `AIname`='SmartAI' WHERE `entry`=@Ghoul;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Ghoul;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Ghoul,0,0,0,1,0,100,0,20000,300000,50000,350000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Decomposing Ghoul - Occ - Say random text'),
(@Ghoul,0,1,2,8,0,100,0,@Spell,0,0,0,18,33685506,0,0,0,0,0,1,0,0,0,0,0,0,0,'Decomposing Ghoul - On hit by spell - Set unit flag for not targetable'),
(@Ghoul,0,2,3,61,0,100,0,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,'Decomposing Ghoul - Linked with previous event - Switch faction to clear aggro'),
(@Ghoul,0,3,0,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Decomposing Ghoul - Linked with previous event - Say random text'),
(@Ghoul,0,4,5,1,0,100,0,3500,3500,3500,3500,19,33685506,0,0,0,0,0,1,0,0,0,0,0,0,0,'Decomposing Ghoul - OOC for 3,5 sec - Remove unit flag'),
(@Ghoul,0,5,0,61,0,100,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,'Decomposing Ghoul - Linked with previous event - Change faction back to 14');
-- Add SAI for Ares - quest giver
UPDATE `creature_template` SET `AIname`='SmartAI' WHERE `entry`=@Ares;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@Ares;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Ares,0,0,0,19,0,100,0,11288,0,0,0,85,@SpellTrigger,0,0,0,0,0,7,0,0,0,0,0,0,0,'Ares - On target quest accepted 11288 - Cast spell Shining Light');
-- Decomposing Ghoul texts
DELETE FROM `creature_text` WHERE `entry`=@Ghoul;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@Ghoul,0,1,'Light... light so bright...',12,0,50,0,0,0,'Decomposing Ghoul - On spell hit'),
(@Ghoul,0,2,'ARGHHHH...',12,0,50,0,0,0,'Decomposing Ghoul - On spell hit'),
(@Ghoul,0,3,'Away... go...',12,0,50,0,0,0,'Decomposing Ghoul - On spell hit'),
(@Ghoul,0,4,'Bad light... hurt...',12,0,50,0,0,0,'Decomposing Ghoul - On spell hit'),
(@Ghoul,0,5,'BURNS! IT BURNS!',12,0,50,0,0,0,'Decomposing Ghoul - On spell hit'),
(@Ghoul,1,1,'So... Hungry...',12,0,50,0,0,0,'Decomposing Ghoul - OOC'),
(@Ghoul,1,2,'Closer... come closer...',12,0,50,0,0,0,'Decomposing Ghoul - OOC'),
(@Ghoul,1,3,'FEED ME...',12,0,50,0,0,0,'Decomposing Ghoul - OOC'),
(@Ghoul,1,4,'FOOD! EAT YOU!',12,0,50,0,0,0,'Decomposing Ghoul - OOC'),
(@Ghoul,1,5,'BRAINNNS!',12,0,50,0,0,0,'Decomposing Ghoul - OOC');
-- Add conditions for spell Shining Light to hit only Ghouls
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13,1,@Spell,0,0,31,0,3,@Ghoul,0,0,0,'', 'Shinning Light can only hit Decomposing Ghouls');
-- Add conditions for spell Shining Light to be available only, if on quest
DELETE FROM `conditions` WHERE `SourceEntry`=@Spell AND `SourceTypeOrReferenceId`=17;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17,0,@Spell,0,0,9,0,11288,0,0,0,0,'', 'Shinning Light can only hit targets on the quest');
-- Fix quest - The Angry Gorloc ID: 12578
DELETE FROM `spell_area` WHERE `spell`=54057;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES
(54057, 4297, 12578, 1, 12578, 0, 0, 2, 1);
-- Fire Upon the Waters (12243) quest fix
-- add Fire Upon the Waters Kill Credit Bunny at sail locations
DELETE FROM `creature` WHERE `id`=28013;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(199950,28013,571,1,1,0,0,2488.86,-400.017,19.0803,2.99498,300,0,0,42,0,0,0,33554432,0),
(199951,28013,571,1,1,0,0,2458.96,-401.066,20.7778,0.108631,300,0,0,42,0,0,0,33554432,0);

-- SAI
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 28013;
DELETE FROM `smart_scripts` WHERE `entryorguid`=28013 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(28013,0,0,0,8,0,100,0,48455,0,0,0,33,28013,0,0,0,0,0,7,0,0,0,0,0,0,0,"Fire Upon the Waters Kill Credit Bunny - On SpellHit Apothecary's Burning Water - Call KilledMonster Fire Upon the Waters Kill Credit Bunny");

-- Ensure spell only works on Fire Upon the Waters Kill Credit Bunny
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,48455,0,0,31,0,3,28013,0,0,0,'',"Fire Upon the Waters - spell to Fire Upon the Waters Kill Credit Bunny");

INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13,3,62973,0,0, 1,0,62972,0,0,0,0,'','Foam Sword Attack'),
(13,3,62973,0,0,31,0,4,0,0,0,0,'','Foam Sword Attack'),
(13,3,62973,0,0,33,0,1,0,0,1,0,'','Foam Sword Attack'),
(13,3,62991,0,0, 1,0,62972,0,0,0,0,'','Bonked!'),
(13,3,62991,0,0,31,0,4,0,0,0,0,'','Bonked!'),
(13,3,62991,0,0,33,0,1,0,0,1,0,'','Bonked!');

DELETE FROM `creature_ai_scripts` WHERE (`id`='1054151');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='10541');
INSERT IGNORE INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES (10541,0,0,0,8,0,100,0,16378,0,0,0,33,10541,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"Krakle's Thermometer - On Spellhit - Call Killed Monster");

# NeatElves
UPDATE `creature_template_addon` SET `auras`='51589 52215' WHERE `entry`=28114;
UPDATE `quest_template` SET `NextQuestId`='3764' WHERE `id`=3763;
UPDATE `gossip_menu_option` SET `action_menu_id`='7974' WHERE `menu_id`=7768 AND `id`=1;
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES
('7974', '9821'),
('7979', '9822'),
('7978', '9823'),
('7977', '9824'),
('7976', '9825');
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 7675 AND `id` = 1;
UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE `guid`=69710;
DELETE FROM `quest_start_scripts` WHERE `id` = 9991;
REPLACE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`) VALUES
(9991, 5, 30, 532),
(9991, 111, 7, 9991);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES
(7719, 9427);
UPDATE `creature_template` SET `gossip_menu_id`='8047' WHERE `entry`=19879;
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES
(8047, 9936);
UPDATE `creature_template` SET `InhabitType` = 7 WHERE `entry` IN (36853, 38265, 38266, 38267);
UPDATE `creature_template` SET `flags_extra`='2' WHERE `entry`=23373;
DELETE FROM `game_graveyard_zone` WHERE `id` = 969 AND `ghost_zone` in (3715,3716,3717,3607);
REPLACE INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES
(928, 3715, 67),
(928, 3716, 67),
(928, 3717, 67),
(928, 3607, 67),
(970, 3715, 469),
(970, 3716, 469),
(970, 3717, 469),
(970, 3607, 469);
UPDATE `creature` SET `spawndist`='0', `MovementType`='0' WHERE `guid`=64663;
UPDATE creature_template SET unit_flags=unit_flags|33554432, MovementType=0 WHERE entry IN (19523,19524);
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 5675 AND `id` = 1;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 5675 AND `id` = 1;
UPDATE creature SET position_x = '-8020.283691', position_y = '1107.984985', position_z = '2.854700', orientation = '0.042761' WHERE guid = '20636';
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES
(6545, 7761),
(6546, 7760),
(6547, 7759),
(6548, 7758),
(6549, 7757),
(6550, 7756),
(6551, 7755),
(6552, 7768),
(6553, 7767),
(6554, 7766),
(6555, 7765),
(6556, 7764),
(6557, 7763),
(6558, 7762);
UPDATE creature_template SET MovementType=0 WHERE entry=385;
DELETE FROM creature WHERE id IN (27758,27759,29252,27760,29250,27748,27708,29253,27730,29251,385,5774) AND position_z < 20 AND map=571;
DELETE FROM creature_template_addon WHERE entry IN (18759,18757);
UPDATE gameobject SET spawntimesecs = 0 WHERE id IN (181899, 182096, 182097, 182098, 182173, 182174, 182175, 182522, 182523, 182528, 182529, 183104, 183411, 183412, 183413, 183414, 182210);
UPDATE gameobject SET spawnTimeSecs = -300 WHERE id IN (182528,182527);
DELETE FROM creature_template_addon WHERE entry=17209;
UPDATE creature_template SET InhabitType=InhabitType|4 WHERE entry IN (18757,18759);
DELETE FROM creature WHERE id = 17209;
DELETE FROM creature WHERE id IN (17635,17995);
DELETE FROM creature WHERE id IN (18817,18822,21485,21487,21488,18256,18816,18821,21474,21484,21483,18192);
UPDATE `quest_template` SET `NextQuestId`='4493', `ExclusiveGroup`='-162', `NextQuestIdChain`='4493' WHERE `id`=162;
UPDATE `quest_template` SET `NextQuestId`='4493', `ExclusiveGroup`='-162', `NextQuestIdChain`='4493' WHERE `id`=4267;
UPDATE `quest_template` SET `NextQuestId`='4494', `ExclusiveGroup`='-32', `NextQuestIdChain`='4494' WHERE `id`=32;
UPDATE `quest_template` SET `NextQuestId`='4494', `ExclusiveGroup`='-32', `NextQuestIdChain`='4494' WHERE `id`=7732;
UPDATE `locales_gossip_menu_option` SET `id`='0' WHERE `menu_id`=21 AND `id`=1;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 21;
UPDATE `locales_gossip_menu_option` SET `id`='0' WHERE `menu_id`=922 AND `id`=3;
DELETE FROM `gossip_menu_option` WHERE `menu_id` in (922,1423);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES
(3241, 3997),
(3241, 3998);
UPDATE `gossip_menu_option` SET `id`='1' WHERE `menu_id`=3441 AND `id`=2;
DELETE FROM `gossip_menu_option` WHERE `menu_id` in (3651);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES
(9904,13759),(9923,14172),(9923,13786);
INSERT IGNORE INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`) VALUES
(9904,0,0, 'I would like to build a catapult.',1,1,0,0,0,0),
(9904,1,0, 'I would like to build a demolisher.',1,1,0,0,0,0),
(9904,2,0, 'I would like to build a siege engine.',1,1,0,0,0,0);
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES
(10567,14624),(10567,14625);
UPDATE `quest_template` SET `PrevQuestId`='4289' WHERE `id`=4301;
UPDATE `quest_template` SET `PrevQuestId`='1119', `NextQuestId`='1122', `ExclusiveGroup`='1120', `NextQuestIdChain`='1122' WHERE `id`=1120;
UPDATE `quest_template` SET `NextQuestId`='1122', `ExclusiveGroup`='1120', `NextQuestIdChain`='1122' WHERE `id`=1121;
UPDATE `quest_template` SET `RequiredRaces`='0' WHERE `id`=1127;
UPDATE `quest_template` SET `PrevQuestId`='1122' WHERE `id`=1127;
DELETE FROM `creature_loot_template` WHERE `item` = 5798;
UPDATE `quest_template` SET `PrevQuestId`='1111' WHERE `id`=1111;
UPDATE `gameobject_template` SET `data1`='19868' WHERE `entry`=19869;
UPDATE `gameobject_template` SET `data1`='19868' WHERE `entry`=19870;
UPDATE `gameobject_template` SET `data1`='19868' WHERE `entry`=19871;
UPDATE `gameobject_template` SET `data1`='19868' WHERE `entry`=19872;
UPDATE `gameobject_template` SET `data1`='19868' WHERE `entry`=19873;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 19869;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 19870;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 19871;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 19872;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 19873;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 68865 AND `item` = 5880;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 21530 AND `item` = 5880;
UPDATE creature_template SET unit_flags=unit_flags|33600 WHERE entry IN (17862,18096,23175,23177,23179,18092,18093,18094);
UPDATE creature_template SET unit_flags=unit_flags|33024 WHERE entry=18764;
UPDATE creature_template SET MovementType=0 WHERE entry IN (19438,17833,17860,17862,18096,18092,18093,18094);
UPDATE creature_template SET unit_flags=unit_flags|512 WHERE entry=17876;
UPDATE gameobject_template SET faction=1375, flags=flags|32 WHERE entry=184393;
UPDATE creature_template SET unit_flags=unit_flags|33554432 WHERE entry=18798;
UPDATE creature_template SET unit_flags=unit_flags|32832 WHERE entry in (18092,18093,18094);
UPDATE creature_template SET npcflag=npcflag&~1 WHERE entry=18887;
UPDATE creature_template SET unit_flags=unit_flags|33600 WHERE entry IN (20521,20531,23182,23184,23186,20545,20547,20546);
UPDATE creature_template SET unit_flags=unit_flags|33024 WHERE entry=20523;
UPDATE creature_template SET MovementType=0 WHERE entry IN (20530,20529,20521,20531,20545,20547,20546);
UPDATE creature_template SET unit_flags=unit_flags|512 WHERE entry=20548;
UPDATE creature_template SET unit_flags=unit_flags|33554432 WHERE entry=20544;
UPDATE creature_template SET unit_flags=unit_flags|32832 WHERE entry in (20545,20547,20546);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(93406, 18764, 560, 3, 1, 0, 0, 2185.32, 116.593, 89.4548, 0.981246, 7200, 0, 0, 5914, 0, 0);
DELETE FROM `creature_addon` WHERE `guid` = 93406;
DELETE FROM `creature_addon` WHERE `guid` = 126112;
Update gameobject set spawnmask=3 where map=560;
delete from creature where id IN (18646,18092,18093,18094);
UPDATE `creature_template` SET `gossip_menu_id`='2951' WHERE `entry`=10776;
REPLACE INTO `gossip_menu` (`entry`,`text_id`) VALUES (2951,3659),(2950,3660),(2949,3661),(2948,3662),(2947,3663),(2946,3664),(2945,3665);
DELETE FROM `creature` WHERE `guid` = 6399;
DELETE FROM `creature` WHERE `id` = 8477;
UPDATE `creature_template` SET `lootid`='0', `mingold`='0', `maxgold`='0' WHERE `entry`=8477;
DELETE FROM `creature_loot_template` WHERE `entry` = 8477;
UPDATE creature_template SET faction_A=16, faction_H=16 WHERE entry IN (17533,17534);

# Fix
DELETE FROM `gameobject` WHERE `id`=184080;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(1197, 184080, 566, 1, 1, 2050.49, 1372.24, 1194.56, 1.71042, 0, 0, 0.754709, 0.65606, 180, 100, 1);
DELETE FROM `gameobject` WHERE `id`=184081;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(1198, 184081, 566, 1, 1, 2024.6, 1742.82, 1195.16, 2.44346, 0, 0, 0.939692, 0.342021, 180, 100, 1);
DELETE FROM `gameobject` WHERE `id`=184082;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(1135, 184082, 566, 1, 1, 2282.12, 1760.01, 1189.71, 1.91986, 0, 0, 0.819151, 0.573577, 180, 100, 1);
DELETE FROM `gameobject` WHERE `id`=184083;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(1193, 184083, 566, 1, 1, 2301.01, 1386.93, 1197.18, 1.5708, 0, 0, 0.707108, 0.707106, 180, 100, 1);
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(14625, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

# Conditions
REPLACE INTO `conditions` VALUES ('15', '21', '1', '0', '0', '9', '0', '6981', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '922', '0', '0', '0', '8', '0', '2662', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3651', '0', '0', '0', '8', '0', '5213', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3651', '1', '0', '0', '8', '0', '5213', '0', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3651', '0', '0', '0', '2', '0', '13209', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3651', '1', '0', '0', '2', '0', '19812', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3651', '0', '0', '0', '2', '0', '19812', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3651', '1', '0', '0', '2', '0', '13209', '1', '1', '1', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '7675', '9369', '0', '0', '8', '0', '10107', '0', '0', '0', '0', '', 'Show different gossip if player has rewarded quest 10107');
REPLACE INTO `conditions` VALUES ('14', '7675', '9369', '0', '1', '8', '0', '10108', '0', '0', '0', '0', '', 'Show different gossip if player has rewarded quest 10108');
REPLACE INTO `gossip_menu_option` VALUES ('7974', '0', '0', 'I have done all that I could, Greatmother. I thank you for your kind words.', '1', '1', '7979', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7979', '0', '0', 'Greatmother, you are the mother of Durotan?', '1', '1', '7978', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7978', '0', '0', 'Greatmother, I never had the honor. Durotan died long before my time, but his heroics are known to all on my world. The orcs of Azeroth reside in a place known as Durotar, named after your son. And... (You take a moment to breathe and think through what you are about to tell the Greatmother.)', '1', '1', '7977', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7977', '0', '0', 'It is my Warchief, Greatmother. The leader of my people. From my world. He... He is the son of Durotan. He is your grandchild.', '1', '1', '7976', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7976', '0', '0', 'I will return to Azeroth at once, Greatmother.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('7719', '0', '0', 'I see twisted steel and smell sundered earth.', '1', '1', '7718', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('8047', '0', '1', 'Initiative, please do my stuff.', '3', '128', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6533', '0', '0', 'Hello, Frankal. I\'ve heard that you might have some information as to the whereabouts of Mistress Natalia Mar\'alith.', '1', '1', '6558', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6558', '0', '0', 'That\'s what I like to hear.', '1', '1', '6557', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6557', '0', '0', 'That\'s odd.', '1', '1', '6556', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6556', '0', '0', 'You couldn\'t handle a lone night elf priestess?', '1', '1', '6555', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6555', '0', '0', 'I\'ve been meaning to ask out about that monkey.', '1', '1', '6554', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6554', '0', '0', 'Then what?', '1', '1', '6553', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6553', '0', '0', 'What a story! So she went into Hive\'Regal and that was the last you saw of her?', '1', '1', '6552', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6552', '0', '0', 'Thanks for the information, Frankal.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6534', '0', '0', 'Hello, Rutgar. The Commander has sent me here to gather some information about his missing wife.', '1', '1', '6551', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6551', '0', '0', 'That sounds dangerous.', '1', '1', '6550', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6550', '0', '0', 'What happened to her after that?', '1', '1', '6549', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6549', '0', '0', 'Natalia?', '1', '1', '6548', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6548', '0', '0', 'What demands?', '1', '1', '6547', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6547', '0', '0', 'Lost it? What do you mean?', '1', '1', '6546', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6546', '0', '0', 'Possessed by what?', '1', '1', '6545', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6545', '0', '0', 'I\'ll be back once I straighten this mess out.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('21', '0', '0', 'Than I can help?', '1', '1', '22', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('21', '1', '0', 'Can you tell me about this shard?', '1', '1', '50023', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('922', '0', '1', 'Yes! I want more of that fabulous Noggenfogger Elixir!', '3', '128', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('922', '1', '0', 'Seen any strange things in the desert lately?', '1', '1', '1423', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3183', '0', '0', 'What our successes in neutralization of cauldrons?', '1', '1', '3241', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3651', '0', '0', 'Betina, I need a new Seal of the Dawn.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3651', '1', '0', 'Betina, I need a new Rune of the Dawn.', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('2951', '0', '0', 'How the hell did you get in there to begin with?', '1', '1', '2950', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('2950', '0', '0', 'I\'m all ears.', '1', '1', '2949', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('2949', '0', '0', 'So let me get this straight. You were swimming, nay, doing backstrokes in molten lava with this... this lava suit of yours? Yes? And out of nowhere, this here beast swallowed you whole?', '1', '1', '2948', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('2948', '0', '0', 'I must know something: How did you go to the bathroom with that thing on?', '1', '1', '2947', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('2947', '0', '0', 'Oh?', '1', '1', '2946', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9610', '0', '0', 'What do you think they\'re up to?', '1', '1', '9611', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9611', '0', '0', 'What do you want me to do?', '1', '1', '9612', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9612', '0', '0', 'Excellent, Chromie.', '1', '1', '9613', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('2946', '0', '0', 'I\'ll consider that the next time I run into one of these things.', '1', '1', '2945', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('2945', '0', '0', 'To Malyfous, I assume.', '1', '1', '1', '0', '0', '0', null);
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=7675;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=7675;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=3651;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=3651;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=5675;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=5675;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=922;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=922;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=21;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=21;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=5675;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=5675;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=3651;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=3651;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=5675;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=5675;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=3651;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=3651;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=9923;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=9923;



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

UPDATE version SET `cache_id`= '628';
UPDATE version SET `db_version`= 'YTDB_0.14.5_R628_TC_R16563_TDBAI_335_RuDB_R54';
