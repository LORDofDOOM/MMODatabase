DELETE FROM `spell_script_names` WHERE `spell_id` = 33110;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(33110,'spell_pri_prayer_of_mending_heal');
DELETE FROM `spell_scripts` WHERE `id` IN (15998,25952,29435,45980,51592,51910,52267,54420);
DELETE FROM `spell_script_names` WHERE `spell_id` IN (15998,25952,29435,45980,51592,51910,52267,54420);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(15998, 'spell_gen_despawn_self'),
(25952, 'spell_gen_despawn_self'),
(29435, 'spell_gen_despawn_self'),
(45980, 'spell_gen_despawn_self'),
(51592, 'spell_gen_despawn_self'),
(51910, 'spell_gen_despawn_self'),
(52267, 'spell_gen_despawn_self'),
(54420, 'spell_gen_despawn_self');
DELETE FROM `creature_text` WHERE `entry`=37813 AND `groupid`=14;
INSERT INTO `creature_text` (`entry`,`groupid`,`text`,`type`,`comment`) VALUES (37813,14,'%s''s Blood Beasts gain the scent of blood!',41,'Deathbringer Saurfang - EMOTE_SCENT_OF_BLOOD');
UPDATE `script_texts` SET `emote` = 432 WHERE `entry` IN (-1595111);
UPDATE `script_texts` SET `emote` = 396 WHERE `entry` IN (-1595070,-1595075,-1595078,-1595079,-1595088,-1595103,-1595106,-1595107,-1595108,-1595109,-1595113,-1595114,-1595115,-1595116);
UPDATE `script_texts` SET `emote` = 397 WHERE `entry` IN (-1595071,-1595084,-1595093);
UPDATE `script_texts` SET `emote` = 274 WHERE `entry` IN (-1595091);
UPDATE `script_texts` SET `emote` = 5 WHERE `entry` IN (-1595073,-1595118);
UPDATE `script_texts` SET `emote` = 6 WHERE `entry` IN (-1595076);
UPDATE `script_texts` SET `emote` = 1 WHERE `entry` IN (-1595083,-1595100,-1595104,-1595120);
UPDATE `script_texts` SET `emote` = 0 WHERE `entry` IN (-1595009,-1595010,-1595081,-1595082,-1595085,-1595119);

UPDATE `script_texts` SET `type` = 1 WHERE `entry` IN (-1595009,-1595010,-1595087,-1595094,-1595095,-1595093);
UPDATE `script_texts` SET `type` = 0 WHERE `entry` IN (-1595077,-1595078,-1595119);

UPDATE `script_texts` SET `content_default` = "Champions, meet me at the Town Hall at once. We must take the fight to Mal'Ganis." WHERE `entry` = -1595095;
UPDATE `script_texts` SET `content_default` = "Follow me, I know the way through." WHERE `entry` = -1595096;
UPDATE `script_texts` SET `content_default` = "Take position here, and I will lead a small force inside Stratholme to begin the culling. We must contain and purge the infected for the sake of all of Lordaeron!" WHERE entry = -1595087;
UPDATE `script_texts` SET `content_default` = "Ah, you've finally arrived Prince Arthas. You're here just in the nick of time." WHERE `entry` = -1595097;
UPDATE `script_texts` SET `content_default` = "Yes, I'm glad I could get to you before the plague." WHERE `entry` = -1595098;
UPDATE `script_texts` SET `content_default` = "As if I could forget. Listen, Uther, there's something about the plague you should know..." WHERE `entry` = -1595072;
UPDATE `script_texts` SET `content_default` = "There's no need for you to understand, Arthas. All you need to do is die." WHERE `entry` = -1595100;
UPDATE `script_texts` SET `content_default` = "More vile sorcery! Be ready for anything!" WHERE `entry` = -1595102;
UPDATE `script_texts` SET `content_default` = "Watch your backs: they have us surrounded in this hall." WHERE `entry` = -1595104;
UPDATE `script_texts` SET `content_default` = "Mal'Ganis is not making this easy." WHERE `entry` = -1595106;
UPDATE `script_texts` SET `content_default` = "What else can he put in my way?" WHERE `entry` = -1595108;
UPDATE `script_texts` SET `content_default` = "I do what I must for Lordaeron, and neither your words nor your actions will stop me." WHERE `entry` = -1595109;
UPDATE `script_texts` SET `content_default` = "The quickest path to Mal'Ganis lies behind that bookshelf ahead." WHERE `entry` = -1595110;
UPDATE `script_texts` SET `content_default` = "I'm relieved this secret passage still works." WHERE `entry` = -1595112;
UPDATE `script_texts` SET `content_default` = "Let's move through here as quickly as possible. If the undead don't kill us, the fires might." WHERE `entry` = -1595113;
UPDATE `script_texts` SET `content_default` = "Rest a moment and clear your lungs, but we must move again soon." WHERE `entry` = -1595114;
UPDATE `script_texts` SET `content_default` = "That's enough; we must move again. Mal'Ganis awaits." WHERE `entry` = -1595115;
UPDATE `script_texts` SET `content_default` = "At last some good luck. Market Row has not caught fire yet. Mal'Ganis is supposed to be in Crusaders' Square, which is just ahead. Tell me when you're ready to move forward." WHERE `entry` = -1595116;
UPDATE `script_texts` SET `content_default` = "Justice will be done." WHERE `entry` = -1595117;
UPDATE `script_texts` SET `content_default` = "We're going to finish this right now, Mal'Ganis. Just you... and me." WHERE `entry` = -1595118;
UPDATE `script_texts` SET `comment` = concat(`comment`,". NEEDS VERIFICATION") WHERE `entry` IN (-1595101,-1595105);
DELETE FROM `script_texts` WHERE entry BETWEEN -1595052 AND -1595048;
INSERT INTO `script_texts` (npc_entry,entry, content_default, comment) VALUES
(27913,-1595048, "Scourge forces have been spotted near the Elder's Square Gate!","Spawns near elder's square gate."),
(27913,-1595059, "Scourge forces have been spotted near the Town Hall!","Spawns near town hall."),
(27913,-1595050, "Scourge forces have been spotted near the King's Square fountain!","Spawns near king's square."),
(27913,-1595051, "Scourge forces have been spotted near the Market Row Gate!", "Spawns near market row gate."),
(27913,-1595052, "Scourge forces have been spotted near the Festival Lane Gate!", "Spawns near festval lane gate.");
UPDATE `spell_dbc` SET `Attributes` = '8388992', `AttributesEx2` = '5', `AttributesEx3` = '269484288' WHERE `Id` = 58630;
UPDATE `script_waypoint` SET location_x = 2449.32, location_y = 1191.09 WHERE entry = 26499 AND pointid = 26;
DELETE FROM `trinity_string` WHERE `entry` = 555;
INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES
(555,"SetData performed on [GUID: %u, entry: %u, name: %s] Field: %u, Data: %u, with %s");
DELETE FROM `command` WHERE `name` = "npc set data";
INSERT INTO `command` (`name`,`security`,`help`) VALUES
("npc set data", 3, "Syntax: .npc set data $field $data
Sets data for the selected creature. Used for testing Scripting");
-- fixes quest credit from Fel reaver no thanks! author: tREAk & shlomi1515 closes #3715
UPDATE `spell_dbc` SET `Effect1`=16,`EffectMiscValue1`=10855 WHERE `id`=38758;
