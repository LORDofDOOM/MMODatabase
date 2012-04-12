DROP TABLE IF EXISTS ip2nation;

CREATE TABLE ip2nation (
  ip int(11) unsigned NOT NULL default '0',
  country char(2) NOT NULL default '',
  KEY ip (ip)
);

DROP TABLE IF EXISTS ip2nationCountries;

CREATE TABLE ip2nationCountries (
  code varchar(4) NOT NULL default '',
  iso_code_2 varchar(2) NOT NULL default '',
  iso_code_3 varchar(3) default '',
  iso_country varchar(255) NOT NULL default '',
  country varchar(255) NOT NULL default '',
  lat float NOT NULL default '0',
  lon float NOT NULL default '0',
  PRIMARY KEY  (code),
  KEY code (code)
);

ALTER TABLE `battleground_template` CHANGE `Weight` `Weight` tinyint(3) unsigned NOT NULL DEFAULT '1';
ALTER TABLE `conditions` CHANGE `SourceId` `SourceId` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `creature` CHANGE `equipment_id` `equipment_id` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `creature_addon` CHANGE `path_id` `path_id` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `creature_ai_scripts` CHANGE `id` `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier';
ALTER TABLE `creature_ai_scripts` CHANGE `creature_id` `creature_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Creature Template Identifier';
ALTER TABLE `creature_ai_scripts` CHANGE `event_type` `event_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Event Type';
ALTER TABLE `creature_ai_scripts` CHANGE `event_chance` `event_chance` int(10) unsigned NOT NULL DEFAULT '100';
ALTER TABLE `creature_ai_scripts` CHANGE `event_flags` `event_flags` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `creature_ai_scripts` CHANGE `action1_type` `action1_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Action Type';
ALTER TABLE `creature_ai_scripts` CHANGE `action2_type` `action2_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Action Type';
ALTER TABLE `creature_ai_scripts` CHANGE `action3_type` `action3_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Action Type';
ALTER TABLE `creature_ai_summons` CHANGE `id` `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Location Identifier';
ALTER TABLE `creature_ai_summons` CHANGE `spawntimesecs` `spawntimesecs` int(10) unsigned NOT NULL DEFAULT '120';
ALTER TABLE `creature_classlevelstats` CHANGE `level` `level` tinyint(4) NOT NULL;
ALTER TABLE `creature_classlevelstats` CHANGE `class` `class` tinyint(4) NOT NULL;
ALTER TABLE `creature_classlevelstats` CHANGE `basehp0` `basehp0` smallint(6) NOT NULL;
ALTER TABLE `creature_classlevelstats` CHANGE `basehp1` `basehp1` smallint(6) NOT NULL;
ALTER TABLE `creature_classlevelstats` CHANGE `basehp2` `basehp2` smallint(6) NOT NULL;
ALTER TABLE `creature_classlevelstats` CHANGE `basemana` `basemana` smallint(6) NOT NULL;
ALTER TABLE `creature_classlevelstats` CHANGE `basearmor` `basearmor` smallint(6) NOT NULL;
ALTER TABLE `creature_formations` CHANGE `leaderGUID` `leaderGUID` int(10) unsigned NOT NULL;
ALTER TABLE `creature_formations` CHANGE `memberGUID` `memberGUID` int(10) unsigned NOT NULL;
ALTER TABLE `creature_formations` CHANGE `groupAI` `groupAI` int(10) unsigned NOT NULL;
ALTER TABLE `creature_loot_template` CHANGE `mincountOrRef` `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1';
ALTER TABLE `creature_onkill_reputation` CHANGE `RewOnKillRepValue1` `RewOnKillRepValue1` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `KillCredit1` `KillCredit1` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `KillCredit2` `KillCredit2` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `exp` `exp` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `resistance1` `resistance1` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `resistance2` `resistance2` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `resistance3` `resistance3` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `resistance4` `resistance4` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `resistance5` `resistance5` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `resistance6` `resistance6` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `questItem1` `questItem1` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `questItem2` `questItem2` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `questItem3` `questItem3` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `questItem4` `questItem4` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `questItem5` `questItem5` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `questItem6` `questItem6` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `WDBVerified` `WDBVerified` smallint(6) NULL DEFAULT '1';
ALTER TABLE `creature_template_addon` CHANGE `path_id` `path_id` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `creature_transport` CHANGE `guid` `guid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'GUID of NPC on transport - not the same as creature.guid';
ALTER TABLE `creature_transport` CHANGE `transport_entry` `transport_entry` int(11) NOT NULL COMMENT 'Transport entry';
ALTER TABLE `creature_transport` CHANGE `npc_entry` `npc_entry` int(11) NOT NULL COMMENT 'NPC entry';
ALTER TABLE `creature_transport` CHANGE `emote` `emote` int(11) NOT NULL;
ALTER TABLE `db_script_string` CHANGE `entry` `entry` int(10) unsigned NOT NULL DEFAULT '0';  
ALTER TABLE `exploration_basexp` CHANGE `level` `level` tinyint(3) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `exploration_basexp` CHANGE `basexp` `basexp` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `fishing_loot_template` CHANGE `mincountOrRef` `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1';
ALTER TABLE `game_event_creature` CHANGE `eventEntry` `eventEntry` tinyint(4) NOT NULL COMMENT 'Entry of the game event. Put negative entry to remove during event.';
ALTER TABLE `game_event_gameobject` CHANGE `eventEntry` `eventEntry` tinyint(4) NOT NULL COMMENT 'Entry of the game event. Put negative entry to remove during event.';
ALTER TABLE `game_event_model_equip` CHANGE `eventEntry` `eventEntry` tinyint(4) NOT NULL COMMENT 'Entry of the game event.';
ALTER TABLE `game_event_npc_vendor` CHANGE `eventEntry` `eventEntry` tinyint(4) NOT NULL COMMENT 'Entry of the game event.';
ALTER TABLE `game_event_pool` CHANGE `eventEntry` `eventEntry` tinyint(4) NOT NULL COMMENT 'Entry of the game event. Put negative entry to remove during event.';
ALTER TABLE `gameobject_loot_template` CHANGE `mincountOrRef` `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1';
ALTER TABLE `gameobject_template` CHANGE `WDBVerified` `WDBVerified` smallint(6) NULL DEFAULT '1';
ALTER TABLE `gossip_menu` CHANGE `entry` `entry` smallint(5) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `gossip_menu_option` CHANGE `menu_id` `menu_id` smallint(5) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `gossip_menu_option` CHANGE `id` `id` smallint(5) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `gossip_menu_option` CHANGE `box_money` `box_money` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `gossip_menu_option` CHANGE `action_menu_id` `action_menu_id` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `instance_template` CHANGE `allowMount` `allowMount` tinyint(3) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `ip2nation` CHANGE `ip` `ip` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `item_loot_template` CHANGE `mincountOrRef` `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1';
ALTER TABLE `item_set_names` CHANGE `WDBVerified` `WDBVerified` smallint(6) NOT NULL DEFAULT '1';
ALTER TABLE `item_template` CHANGE `spellcharges_1` `spellcharges_1` smallint(6) NULL DEFAULT NULL;
ALTER TABLE `item_template` CHANGE `spellcharges_2` `spellcharges_2` smallint(6) NULL DEFAULT NULL;
ALTER TABLE `item_template` CHANGE `spellcharges_3` `spellcharges_3` smallint(6) NULL DEFAULT NULL;
ALTER TABLE `item_template` CHANGE `spellcharges_4` `spellcharges_4` smallint(6) NULL DEFAULT NULL;
ALTER TABLE `item_template` CHANGE `spellcharges_5` `spellcharges_5` smallint(6) NULL DEFAULT NULL;
ALTER TABLE `item_template` CHANGE `BagFamily` `BagFamily` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `item_template` CHANGE `TotemCategory` `TotemCategory` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `item_template` CHANGE `socketContent_1` `socketContent_1` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `item_template` CHANGE `socketContent_2` `socketContent_2` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `item_template` CHANGE `socketContent_3` `socketContent_3` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `item_template` CHANGE `socketBonus` `socketBonus` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `item_template` CHANGE `GemProperties` `GemProperties` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `item_template` CHANGE `WDBVerified` `WDBVerified` smallint(6) NULL DEFAULT '1';
ALTER TABLE `item_template` CHANGE `ScalingStatValue` `ScalingStatValue` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `mail_loot_template` CHANGE `mincountOrRef` `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1';
ALTER TABLE `milling_loot_template` CHANGE `mincountOrRef` `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1';
ALTER TABLE `npc_spellclick_spells` CHANGE `user_type` `user_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'relation with summoner: 0-no 1-friendly 2-raid 3-party player can click';
ALTER TABLE `outdoorpvp_template` CHANGE `TypeId` `TypeId` tinyint(3) unsigned NOT NULL;
ALTER TABLE `page_text` CHANGE `WDBVerified` `WDBVerified` smallint(6) NULL DEFAULT '1';
ALTER TABLE `pet_name_generation` CHANGE `half` `half` tinyint(3) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `pickpocketing_loot_template` CHANGE `mincountOrRef` `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1';
ALTER TABLE `player_factionchange_achievement` CHANGE `alliance_id` `alliance_id` int(10) unsigned NOT NULL; -- also changed to unsigned
ALTER TABLE `player_factionchange_achievement` CHANGE `horde_id` `horde_id` int(10) unsigned NOT NULL; -- also changed to unsigned
ALTER TABLE `player_factionchange_items` CHANGE `race_A` `race_A` int(10) unsigned NOT NULL; -- also changed to unsigned
ALTER TABLE `player_factionchange_items` CHANGE `alliance_id` `alliance_id` int(10) unsigned NOT NULL; -- also changed to unsigned
ALTER TABLE `player_factionchange_items` CHANGE `race_H` `race_H` int(10) unsigned NOT NULL; -- also changed to unsigned
ALTER TABLE `player_factionchange_items` CHANGE `horde_id` `horde_id` int(10) unsigned NOT NULL; -- also changed to unsigned
ALTER TABLE `player_factionchange_reputations` CHANGE `alliance_id` `alliance_id` int(10) unsigned NOT NULL; -- also changed to unsigned
ALTER TABLE `player_factionchange_reputations` CHANGE `horde_id` `horde_id` int(10) unsigned NOT NULL; -- also changed to unsigned
ALTER TABLE `player_factionchange_spells` CHANGE `alliance_id` `alliance_id` int(10) unsigned NOT NULL; -- also changed to unsigned
ALTER TABLE `player_factionchange_spells` CHANGE `horde_id` `horde_id` int(10) unsigned NOT NULL; -- also changed to unsigned
ALTER TABLE `player_xp_for_level` CHANGE `lvl` `lvl` tinyint(3) unsigned NOT NULL; -- also changed from int to tinyint
ALTER TABLE `playercreateinfo_action` CHANGE `action` `action` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `playercreateinfo_item` CHANGE `amount` `amount` tinyint(4) NOT NULL DEFAULT '1';
ALTER TABLE `playercreateinfo_spell_custom` DROP `Active`; -- delete field, it's not used anywhere
ALTER TABLE `prospecting_loot_template` CHANGE `mincountOrRef` `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1';
ALTER TABLE `quest_poi` CHANGE `objIndex` `objIndex` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `quest_poi_points` CHANGE `x` `x` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `quest_poi_points` CHANGE `y` `y` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RequiredFactionValue1` `RequiredFactionValue1` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RequiredFactionValue2` `RequiredFactionValue2` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RequiredMinRepValue` `RequiredMinRepValue` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RequiredMinRepValue` `RequiredMinRepValue` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RequiredMaxRepValue` `RequiredMaxRepValue` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `PrevQuestId` `PrevQuestId` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `NextQuestId` `NextQuestId` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `ExclusiveGroup` `ExclusiveGroup` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RewardSpellCast` `RewardSpellCast` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RewardHonor` `RewardHonor` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RewardXPId` `RewardXPId` tinyint(3) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RewardFactionValueId1` `RewardFactionValueId1` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RewardFactionValueId2` `RewardFactionValueId2` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RewardFactionValueId3` `RewardFactionValueId3` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RewardFactionValueId4` `RewardFactionValueId4` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RewardFactionValueId5` `RewardFactionValueId5` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RewardFactionValueIdOverride1` `RewardFactionValueIdOverride1` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RewardFactionValueIdOverride2` `RewardFactionValueIdOverride2` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RewardFactionValueIdOverride3` `RewardFactionValueIdOverride3` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RewardFactionValueIdOverride4` `RewardFactionValueIdOverride4` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RewardFactionValueIdOverride5` `RewardFactionValueIdOverride5` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RequiredNpcOrGo1` `RequiredNpcOrGo1` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RequiredNpcOrGo2` `RequiredNpcOrGo2` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RequiredNpcOrGo3` `RequiredNpcOrGo3` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RequiredNpcOrGo4` `RequiredNpcOrGo4` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `Unknown0` `Unknown0` tinyint(3) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `DetailsEmoteDelay1` `DetailsEmoteDelay1` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `DetailsEmoteDelay2` `DetailsEmoteDelay2` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `DetailsEmoteDelay3` `DetailsEmoteDelay3` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `DetailsEmoteDelay4` `DetailsEmoteDelay4` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `OfferRewardEmoteDelay1` `OfferRewardEmoteDelay1` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `OfferRewardEmoteDelay2` `OfferRewardEmoteDelay2` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `OfferRewardEmoteDelay3` `OfferRewardEmoteDelay3` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `OfferRewardEmoteDelay4` `OfferRewardEmoteDelay4` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `WDBVerified` `WDBVerified` smallint(6) NOT NULL DEFAULT '1';
ALTER TABLE `reference_loot_template` CHANGE `mincountOrRef` `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1';
ALTER TABLE `reputation_spillover_template` CHANGE `faction` `faction` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction entry';
ALTER TABLE `reputation_spillover_template` CHANGE `faction1` `faction1` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction to give spillover for';
ALTER TABLE `reputation_spillover_template` CHANGE `faction2` `faction2` smallint(5) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `reputation_spillover_template` CHANGE `faction3` `faction3` smallint(5) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `reputation_spillover_template` CHANGE `faction4` `faction4` smallint(5) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `skinning_loot_template` CHANGE `mincountOrRef` `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1';
ALTER TABLE `spell_area` CHANGE `quest_start_active` `quest_start_active` tinyint(3) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_area` CHANGE `gender` `gender` tinyint(3) unsigned NOT NULL DEFAULT '2';
ALTER TABLE `spell_area` CHANGE `autocast` `autocast` tinyint(3) unsigned NOT NULL DEFAULT '0';
-- All the fields in spell_dbc where changed to full int32 since the DBC structure is used
ALTER TABLE `spell_dbc` CHANGE `Dispel` `Dispel` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `Mechanic` `Mechanic` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `CastingTimeIndex` `CastingTimeIndex` int(10) unsigned NOT NULL DEFAULT '1';
ALTER TABLE `spell_dbc` CHANGE `DurationIndex` `DurationIndex` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `ProcChance` `ProcChance` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `ProcCharges` `ProcCharges` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `BaseLevel` `BaseLevel` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `MaxLevel` `MaxLevel` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `SpellLevel` `SpellLevel` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `RangeIndex` `RangeIndex` int(10) unsigned NOT NULL DEFAULT '1';
ALTER TABLE `spell_dbc` CHANGE `Effect1` `Effect1` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `Effect2` `Effect2` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `Effect3` `Effect3` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectMechanic1` `EffectMechanic1` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectMechanic2` `EffectMechanic2` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectMechanic3` `EffectMechanic3` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectImplicitTargetA1` `EffectImplicitTargetA1` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectImplicitTargetA2` `EffectImplicitTargetA2` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectImplicitTargetA3` `EffectImplicitTargetA3` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectImplicitTargetB1` `EffectImplicitTargetB1` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectImplicitTargetB2` `EffectImplicitTargetB2` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectImplicitTargetB3` `EffectImplicitTargetB3` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectRadiusIndex1` `EffectRadiusIndex1` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectRadiusIndex2` `EffectRadiusIndex2` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectRadiusIndex3` `EffectRadiusIndex3` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectApplyAuraName1` `EffectApplyAuraName1` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectApplyAuraName2` `EffectApplyAuraName2` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectApplyAuraName3` `EffectApplyAuraName3` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `MaxTargetLevel` `MaxTargetLevel` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `SpellFamilyName` `SpellFamilyName` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `MaxAffectedTargets` `MaxAffectedTargets` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `DmgClass` `DmgClass` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `PreventionType` `PreventionType` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_group` CHANGE `id` `id` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_loot_template` CHANGE `mincountOrRef` `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1';
ALTER TABLE `spell_proc` CHANGE `spellPhaseMask` `spellPhaseMask` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `spell_proc` CHANGE `hitMask` `hitMask` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `spell_enchant_proc_data` CHANGE `procEx` `procEx` int(10) unsigned NOT NULL DEFAULT '0'; -- changed from float to int
ALTER TABLE `spell_required` CHANGE `spell_id` `spell_id` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `spell_required` CHANGE `req_spell` `req_spell` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `spell_threat` CHANGE `flatMod` `flatMod` int(11) NULL DEFAULT NULL;
ALTER TABLE `vehicle_accessory` CHANGE `seat_id` `seat_id` tinyint(4) NOT NULL DEFAULT '0';
ALTER TABLE `vehicle_accessory` CHANGE `minion` `minion` tinyint(3) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `vehicle_template_accessory` CHANGE `seat_id` `seat_id` tinyint(4) NOT NULL DEFAULT '0';
ALTER TABLE `vehicle_template_accessory` CHANGE `minion` `minion` tinyint(3) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `version` CHANGE `cache_id` `cache_id` int(11) NULL DEFAULT '0';
ALTER TABLE `waypoint_data` CHANGE `move_flag` `move_flag` tinyint(4) NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `StackAmount` `StackAmount` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `waypoint_data` CHANGE `action_chance` `action_chance` smallint(6) NOT NULL DEFAULT '100';
ALTER TABLE `item_loot_template` CHANGE `maxcount` `maxcount` tinyint(3) unsigned NOT NULL DEFAULT '1';
