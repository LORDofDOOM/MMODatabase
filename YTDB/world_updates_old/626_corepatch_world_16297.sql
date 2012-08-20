DELETE FROM `spell_script_names` WHERE (`spell_id`='-5570');
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(-5570, 'spell_dru_insect_swarm');
-- Fixing wrong text in Trial of the Crusader, Twin Valkyrs
UPDATE `script_texts` SET `content_default`='%s begins to read the spell Twin''s Pact!' WHERE `entry`=-1649043;
