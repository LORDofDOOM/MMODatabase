UPDATE `command` SET `name`='reload waypoint_data',`help`='Syntax: .reload waypoint_data will reload waypoint_data table.' WHERE `name`='reload wp_data';
UPDATE `creature_template` SET `ScriptName`='npc_frost_tomb' WHERE `entry`=23965;
UPDATE `creature_template` SET `ScriptName`='npc_vrykul_skeleton' WHERE `entry`=23970;
DELETE FROM `spell_script_names` WHERE `spell_id`=48400;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(48400,'spell_frost_tomb');
-- Scriptname for Refocus spell
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_item_refocus';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(24531,'spell_item_refocus');
ALTER TABLE `conditions` ADD COLUMN `SourceId` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER SourceEntry;

-- Gushing Wound Removal spell
DELETE FROM `spell_dbc` WHERE `id`=30023;
INSERT INTO `spell_dbc` (`Id`,`Dispel`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`AttributesEx6`,`AttributesEx7`,`Stances`,`StancesNot`,`Targets`,`CastingTimeIndex`,`AuraInterruptFlags`,`ProcFlags`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`RangeIndex`,`StackAmount`,`EquippedItemClass`,`EquippedItemSubClassMask`,`EquippedItemInventoryTypeMask`,`Effect1`,`Effect2`,`Effect3`,`EffectDieSides1`,`EffectDieSides2`,`EffectDieSides3`,`EffectRealPointsPerLevel1`,`EffectRealPointsPerLevel2`,`EffectRealPointsPerLevel3`,`EffectBasePoints1`,`EffectBasePoints2`,`EffectBasePoints3`,`EffectMechanic1`,`EffectMechanic2`,`EffectMechanic3`,`EffectImplicitTargetA1`,`EffectImplicitTargetA2`,`EffectImplicitTargetA3`,`EffectImplicitTargetB1`,`EffectImplicitTargetB2`,`EffectImplicitTargetB3`,`EffectRadiusIndex1`,`EffectRadiusIndex2`,`EffectRadiusIndex3`,`EffectApplyAuraName1`,`EffectApplyAuraName2`,`EffectApplyAuraName3`,`EffectAmplitude1`,`EffectAmplitude2`,`EffectAmplitude3`,`EffectMultipleValue1`,`EffectMultipleValue2`,`EffectMultipleValue3`,`EffectMiscValue1`,`EffectMiscValue2`,`EffectMiscValue3`,`EffectMiscValueB1`,`EffectMiscValueB2`,`EffectMiscValueB3`,`EffectTriggerSpell1`,`EffectTriggerSpell2`,`EffectTriggerSpell3`,`EffectSpellClassMaskA1`,`EffectSpellClassMaskA2`,`EffectSpellClassMaskA3`,`EffectSpellClassMaskB1`,`EffectSpellClassMaskB2`,`EffectSpellClassMaskB3`,`EffectSpellClassMaskC1`,`EffectSpellClassMaskC2`,`EffectSpellClassMaskC3`,`MaxTargetLevel`,`SpellFamilyName`,`SpellFamilyFlags1`,`SpellFamilyFlags2`,`SpellFamilyFlags3`,`MaxAffectedTargets`,`DmgClass`,`PreventionType`,`DmgMultiplier1`,`DmgMultiplier2`,`DmgMultiplier3`,`AreaGroupId`,`SchoolMask`,`Comment`) VALUES
(30023,0,0,256,0,0,0,0,0,0,0,0,0,0,1,0,0,101,0,0,0,0,26,1,0,-1,0,0,164,164,164,0,0,0,0,0,0,0,0,0,0,0,0,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,35321,38363,39215,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,"Gushing Wound Removal");
DELETE FROM `spell_bonus_data` WHERE `entry` = 63544;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(63544, -1, -1, 0, 0, 'Priest - Empowered Renew');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 57908 AND `spell_effect` = 57915;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(57908,57915,0,'q13129 - Give quest item');

ALTER TABLE `conditions` CHANGE `SourceId` `SourceId` INT(10) NOT NULL DEFAULT '0';
ALTER TABLE `conditions` DROP PRIMARY KEY,
    ADD PRIMARY KEY (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`);

DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_putricide_clear_mutated_plague';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(72618,'spell_putricide_clear_mutated_plague');
DELETE FROM `spell_script_names` WHERE `spell_id`=63399;
INSERT INTO `spell_script_names`(`spell_id`,`ScriptName`) VALUES
(63399, 'spell_gen_tournament_pennant');
DELETE FROM `spell_script_names` WHERE `spell_id`=62709;
INSERT INTO `spell_script_names` VALUES (62709, 'spell_gen_tournament_counterattack');
