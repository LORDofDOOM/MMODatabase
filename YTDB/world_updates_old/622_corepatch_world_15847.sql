-- Add script to Dragonspire Hall Runes "UBRS"
UPDATE `gameobject_template` SET `ScriptName`= 'go_dragonspire_hall_rune' WHERE `entry` BETWEEN 175194 AND 175200;
-- Update mod rep command name
UPDATE `command` SET 
    `name` = 'modify reputation',
    `help` = 'Syntax: .modify reputation #repId (#repvalue | $rankname [#delta])\nSets the selected players reputation with faction #repId to #repvalue or to $reprank.\nIf the reputation rank name is provided, the resulting reputation will be the lowest reputation for that rank plus the delta amount, if specified.\nYou can use \'.pinfo rep\' to list all known reputation ids, or use \'.lookup faction $name\' to locate a specific faction id.'
WHERE `name` = 'modify rep';
-- Remove script to Dragonspire Hall Runes "UBRS"
UPDATE `gameobject_template` SET `ScriptName`= '' WHERE `entry` BETWEEN 175194 AND 175200;
