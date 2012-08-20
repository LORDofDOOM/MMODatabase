DELETE FROM `spell_script_names` WHERE `spell_id` IN (50546);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(50546,'spell_q12066_bunny_kill_credit');
DELETE FROM `spell_script_names` WHERE `spell_id`=49838;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(49838, "spell_gen_stop_time");
DELETE FROM `spell_script_names` WHERE `spell_id` IN (52941, -52941);
INSERT INTO `spell_script_names` VALUES (52941, 'spell_q12735_song_of_cleansing');
UPDATE `spell_script_names` SET `spell_id` = 42787 WHERE `spell_id` = 42784;
DELETE FROM `spell_script_names` WHERE `spell_id` IN (42787,42784);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(42783, 'spell_astromancer_wrath_of_the_astromancer');
