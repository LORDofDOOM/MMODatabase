ALTER TABLE `item_template` ADD `flagsCustom` INT(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `maxMoneyLoot`;
UPDATE `item_template` SET `flagsCustom`=`flagsCustom`|0x1 WHERE `Duration`<0;
UPDATE `item_template` SET `duration`=ABS(`duration`);
ALTER TABLE `item_template` CHANGE `Duration` `duration` INT(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ArmorDamageModifier`;

DELETE FROM `spell_script_names` WHERE `spell_id` IN (50341,50344);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(50341, 'spell_gen_touch_the_nightmare'),
(50344, 'spell_gen_dream_funnel');
-- Add Generic Harpoon gun script to prevent movement
UPDATE `creature_template` SET `ScriptName`= 'npc_generic_harpoon_cannon' WHERE `entry` IN (27714,30066,30337);
-- Assign script to spell
DELETE FROM `spell_script_names` WHERE `spell_id`=51330;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(51330, 'spell_q12589_shoot_rjr');
-- Assign scripts to spells
DELETE FROM `spell_script_names` WHERE `spell_id` IN (47575,47530);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(47575, 'spell_q12096_q12092_dummy'),
(47530, 'spell_q12096_q12092_bark');
-- Frostblade Shrine Script for Quest The Cleansing
UPDATE `gameobject_template` SET `ScriptName`= 'go_frostblade_shrine' WHERE `entry`=186649;
