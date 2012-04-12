# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 613_FIX_14136 614_FIX_14424 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('614_FIX_14424');

# TC
UPDATE `game_event` SET `start_time`='2012-02-05 00:01:00' WHERE `eventEntry`=3;
UPDATE `game_event` SET `start_time`='2012-03-04 00:01:00' WHERE `eventEntry`=4;
UPDATE `game_event` SET `start_time`='2012-04-01 00:01:00' WHERE `eventEntry`=5;
UPDATE `game_event` SET `start_time`='2012-12-15 08:00:00' WHERE `evententry` = 2;
UPDATE `game_event` SET `start_time`='2012-12-25 05:00:00' WHERE `evententry` = 49;

UPDATE creature SET position_x = '4494.99', position_y = '2551.42', orientation = '0.784295', curhealth = '1', curmana = '0' WHERE id =37534;
UPDATE creature SET position_x = '4506.76', position_y = '2449.72', orientation = '0.853605', curhealth = '1', curmana = '0' WHERE id =37533;
UPDATE `creature_template` SET `speed_walk` = 2, `MovementType` = 2, `InhabitType` = 5 WHERE `entry` IN (37534,38219,37533,38220);
UPDATE `creature_template_addon` SET `bytes2` = '1',`auras` = NULL WHERE `entry` =28782;
UPDATE `creature_template` SET `flags_extra`= `flags_extra`|64 WHERE `entry` IN (30661,30961,30662,30962,30663,30918,30664,30963,31487,31494,31483,31497,31484,31488,31495,31498);

# WDB
INSERT IGNORE INTO `npc_text` VALUES ('15931', 'Be wary, allies. There are bound to be traps to protect the Firelord from our incursion.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('15776', '', 'A decade ago, a great battle took place here on the summit of Mount Hyjal. Archimonde the Defiler commanded a swarm of demons to march upon the World Tree and claim its power for his own.$B$BHis defeat signaled the end of the Legion\'s invasion of Azeroth... But many of his corrupted supporters remained behind.', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('15777', '', 'Yes and no. He may be a demon now, but Tyrus Blackhorn was a night elf once. Like many of his brothers he was wooed and transformed by the promises of power the demonic army whispered in his ear.$B$BHe was captured after his master\'s defeat and imprisoned here on the summit, his immortal form bound by sacred energies.$B$BBut perhaps the dimmest flicker of a soul still burns within him... We must at least reach out to know for sure.', '0', '1', '0', '274', '0', '1', '0', '273', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('16121', '', 'We mortal races know so little of Aessina, the spirit of the wilderness who lurks in dense untamed woods. She is the soul of the forest, its beating heart, the source of life energy that breaks down stone, devours ancient ruins, and fills dense thickets with mystery and fear. Aessina is the center of the web of life.$B$BThe night elves have built shrines to her throughout Kalimdor. She is revered, yes... But not understood.$B$BWhat would it be like, do you think, to get even a glimpse of this reclusive, powerful ancient?  ', '0', '1', '0', '1', '0', '6', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('16105', 'This place isn\'t quite as cool as the ruins, and the air in here is a bit humid if I do say so myself, but it does have a comfy, home feel to it.$B$BDon\'t you think?', '', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('16008', 'You can teach a soldier how to kill, but you can\'t teach him to want to kill.  That is one thing we don\'t have to worry about down here.  Every single one of my boys can\'t wait to take a piece out of those naga for what they did to us, and I can\'t say I feel  much different.$B$BWe need to find a way to make contact with the surface, but before that, I want to make a bit of \"contact\" with these naga.  We have some brothers to avenge.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('16194', 'I don\'t care if I die inside this husk, $n.  I\'ll pay these naga back for every one of my fellow soldiers they\'ve killed or enslaved!$b$bThe others can worry about escape.  I\'ll worry about doling out punishment to these snakes.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('16195', '', 'Why are they doing this?  For pearls?  For war?  This ancient, Nespirah, is far more powerful than the naga understand.  If they\'re able to turn her towards their will... the damage they could cause would be tremendous.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('16114', 'It was during those darkest of days that Goldrinn\'s tenacity in war became legendary. While others quaked at the visage of those demon hordes, their multitudes only spurred the great wolf ancient to ever greater feats of strength. He would wade into their ranks, fangs bared and spattered with their vile ichor, his great claws thrashing them by the dozen...$B$BIt was said he stayed behind to cover the Night Elf retreat from Eldre\'Thalas, the ancient city we know now as Dire Maul.$B$BDid he die? I\'m not certain the spirit of animal ferocity can ever truly die, $N.', '', '0', '1', '0', '5', '0', '1', '0', '274', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('16014', 'Amazing materials down here. Amazing! Substitutes for everything. Substitutes for substitutes. Everything\'s possible!', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('16193', 'We\'ve killed dozens of naga to get this far, but they still keep coming.  What will it take to escape this wretched cavern?', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('16631', 'In the Command Center, just outside of Old Town\'s southeast gates, you\'ll find the quartermasters.', 'In the Command Center, just outside of Old Town\'s southeast gates, you\'ll find the quartermasters.', '7', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('17152', 'I\'m not surprised.$b$bSo many questions, I cannot ignore...$b$bWhy all these weapons for an archaeological dig? And what is being done with the unearthed relics? Under what authority is the excavation being conducted?$b$bThe answers don\'t seem to be forthcoming. I\'ll just have to find out for myself, I suppose.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('17157', 'Speculation, my dear $gboy:girl;!$b$bOnce our eager little furrier has unearthed enough treasure, he\'ll be one of Azeroth\'s most influential figures.$b$bWe\'ll all be properly positioned when that comes to pass.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('17305', 'The ambassador lies dead in a pool of his own gore.$b$bThrough his rent clothing, you can make out a row of enormous, deep teethmarks.$b$bEven stranger, the wounds appear to be cauterized, even charred in places.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('17150', 'I must admit, I am intrigued by this ambitious little upstart.$b$bI\'m not rushing to judgement, mind you, but I\'ve heard some unsettling rumors.$b$bTime will tell if his motives are just.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('17148', 'This is quite an operation here, wouldn\'t you say?', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('17156', 'Why, just look at the treasure he has accumulated!$b$bI\'m not always comfortable with his methods, but there\'s no denying the results...$b$bBest not to dwell upon unpleasant thoughts. It\'s bad manners, you know.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('17160', 'I see what you mean, I suppose...$b$bYou know, I\'m just here because I want to expand my horizons a bit, see the world and whatnot.$b$bI\'m not terribly concerned with the goings on of others.$b$bNice to meet you, though.$B', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('16736', '', 'The materials I offer are rare and powerful.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('17308', 'Terrible business!$b$bThere was a horrific growling noise that seemed to echo throught the region.$b$bPoor fellow...$b$bYou\'ll excuse me - I do believe I need a drink.', '', '0', '1', '0', '0', '0', '0', '0', '0', 'I cannot be certain of what I saw.$b$bIt was over before I realized what was happening.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('17161', '', 'Exquisite weather here, wouldn\'t you say, $c?', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('17159', 'He\'s a bit animated for my tastes, but the world needs all kinds, I suppose.$b$bWhy do you ask?$B', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('17105', 'The gryphon appears to be trapped. It looks like it would be easily possible to break its bonds though.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('17164', '', 'Word has it that some of the relics in these parts hold mystical power!$b$bHe seems to be fascinated with such things...', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('17165', '', 'I\'m sorry, $c.$b$bI really don\'t know enough to discuss such things. And honestly, I would prefer to keep it that way.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('17155', 'I say! Raise a glass, my friend!$b$bTake in the sights here.$b$bThis entire region has been hidden away for ages, you know.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('17742', '', 'The admiral and his forces pushed forward to take one of the bases you scouted for him earlier. You should go and meet them.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('17410', 'Woohoo!$b$bWe\'ll have to do that again sometime!$b$bWell, I\'m off to do some more research. I\'ll catch up to you when I\'m ready.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('17251', 'This Schnottz fellow is proving to be a wise investment.$b$bGood that I was insightful enough to get in on the ground floor.', '', '0', '1', '0', '0', '0', '0', '0', '0', 'Like father always said; it takes a shrewd mind, sharp instincts, and unfailing courage to become a successful investor.$b$bI must admit, I smelled this opportunity a mile away.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('17158', 'Now, isn\'t this the place to be?$b$bTouring unexplored corners of the world with likeminded fellows?$b$bWhat could be better?', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('17111', 'Dad always told me the big fellas hit hard, but that they\'re slow...$b$bI\'m pretty sure dad never met this guy!', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('16840', 'I cannot. I merely collect.$B$BIbdil may help you. His way is to mend.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('17370', 'I was blinded by all of the excitement.$b$bI should have seen this coming from a mile away...', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('17163', '', 'Oh, it\'s been wonderful!$b$bThe commander is so confident, and that accent! I must admit, he\'s quite captivating.$b$bDo you know if he\'s married?', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('17014', 'I\'ll be headin\' back shortly, $glad:lass;. Just one more go, for good time\'s sake.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');
INSERT IGNORE INTO `npc_text` VALUES ('16113', 'From the moment the wild creatures first stirred on Azeroth, Goldrinn was there. His is the spirit of the hunter, the animal instinct that kicks in when wild things smell food or feel their children are in jeopardy. He appears as a great white wolf, ferocious and cunning.$B$BHe\'s known across all cultures. The orcs even have their own name for him: \"Lo\'Gosh.\"$B$BTen thousand years ago, when demons first breached Azeroth, Goldrinn stood with the other ancients to mount a desperate defense.', '', '0', '1', '0', '1', '0', '273', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '1');

# Herurg
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=26570);
DELETE FROM `creature_template_addon` WHERE (`entry`=26570);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=26570;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=26570 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(26570, 0, 0, 0, 8, 0, 100, 0, 47214, 0, 0, 0, 11, 42726, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Famished Scourge Troll in Spellhit Cast Cosmetic Immolation (Whole Body)'),
(26570, 0, 1, 0, 8, 0, 100, 0, 47214, 0, 0, 0, 11, 47208, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Famished Scourge Troll in Spell Hit Cast Kill Credit Spell For Player'),
(26570, 0, 2, 0, 8, 0, 100, 0, 47214, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Famished Scourge Troll Dies In Spell Hit'),
(26570, 0, 3, 0, 1, 0, 100, 0, 100, 100, 5000, 5000, 11, 47178, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Famished Scourge Troll Cast Cosmetic Plague in Self ICC');
DELETE FROM `conditions` WHERE `SourceEntry` = 47214;
INSERT INTO `conditions` VALUES ('13', '0', '47214', '0', '18', '1', '26570', '0', '0', '', 'Spell Burninate Effect only Famished Scourge Troll');
UPDATE `quest_template` SET `RequiredNpcOrGo1` =26612,`RequiredNpcOrGoCount1` =20 WHERE `Id` =12029;
UPDATE `quest_template` SET `RequiredNpcOrGo1` =26612,`RequiredNpcOrGoCount1` =30 WHERE `Id` =12038;
UPDATE `creature` SET `spawntimesecs` = 60, `MovementType` = 1, `spawndist` = 10 WHERE `id` =26570;
UPDATE `creature_template` SET `speed_run` = 6, `spell1` = 51744 WHERE `entry` =26570;

# TC
-- Kill xp exploit, mobs spawned by portal keepers don't gives xp on retail. (ie mobs 30662, 30664)
UPDATE `creature_template` SET `flags_extra`= `flags_extra`|64 WHERE `entry` IN (
-- NORMAL
30661, --  CREATURE_AZURE_INVADER_1
30961, -- CREATURE_AZURE_INVADER_2 
30662, -- CREATURE_AZURE_SPELLBREAKER_1 
30962, -- CREATURE_AZURE_SPELLBREAKER_2 
30663, -- CREATURE_AZURE_BINDER_1 
30918, -- CREATURE_AZURE_BINDER_2 
30664, -- CREATURE_AZURE_MAGE_SLAYER_1 
30963, -- CREATURE_AZURE_MAGE_SLAYER_2
-- HEROIC:
31487, -- Azure Invader
31494, -- Azure Spellbreaker
31483, -- Azure Binder
31497, -- Azure Mage Slayer
31484, -- Azure Binder
31488, -- Azure Invader
31495, -- Azure Spellbreaker
31498  -- Azure Mage Slayer
); 

-- The Oculus hero
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (31558, 31561, 31560, 31559, 30901, 30902, 30903, 30904, 30905, 30906, 30907, 30908, 30909, 30910, 30911, 30912, 30913, 30914, 30991, 30915, 30916, 30879);
INSERT INTO `creature_onkill_reputation` VALUES
(31558, 1037, 1052, 7, 0, 250, 7, 0, 250, 1),
(31561, 1037, 1052, 7, 0, 250, 7, 0, 250, 1),
(31560, 1037, 1052, 7, 0, 250, 7, 0, 250, 1),
(31559, 1037, 1052, 7, 0, 250, 7, 0, 250, 1),
(30901, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30902, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),
(30903, 1037, 1052, 7, 0, 30, 7, 0, 30, 1),
(30904, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30905, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30991, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30906, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30907, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30908, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30909, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30910, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30911, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30912, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30913, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30914, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30879, 1037, 1052, 7, 0, 0, 7, 0, 0, 1),
(30915, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30916, 1037, 1052, 7, 0, 15, 7, 0, 15, 1);

-- Utgarde Pinnacle hero
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (30774, 30788, 30807, 30810, 30756, 30762, 30764, 30765, 30766, 30767, 30770, 30772, 30779, 30790, 30803, 30775, 30791, 30804, 30806, 30809, 30816, 30817, 30818, 30819, 30820, 30821, 30822, 30823);
INSERT INTO `creature_onkill_reputation` VALUES
(30774, 1037, 1052, 7, 0, 250, 7, 0, 250, 1),
(30788, 1037, 1052, 7, 0, 250, 7, 0, 250, 1),
(30807, 1037, 1052, 7, 0, 250, 7, 0, 250, 1),
(30810, 1037, 1052, 7, 0, 250, 7, 0, 250, 1),
(30756, 1037, 1052, 7, 0, 0, 7, 0, 0, 1),
(30762, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30764, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30765, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30766, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30767, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),
(30770, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30772, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30779, 1037, 1052, 7, 0, 0, 7, 0, 0, 1),
(30790, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30803, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30775, 1037, 1052, 7, 0, 0, 7, 0, 0, 1),
(30791, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),
(30804, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),
(30806, 1037, 1052, 7, 0, 30, 7, 0, 30, 1),
(30809, 1037, 1052, 7, 0, 0, 7, 0, 0, 1),
(30816, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30817, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30818, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30819, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),
(30820, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30821, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),
(30822, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),
(30823, 1037, 1052, 7, 0, 2, 7, 0, 2, 1);

-- put Brother Keltan on the correct ship
UPDATE `creature_transport` SET `guid`=1, `transport_entry`=192241, `TransOffsetX`=-24.08398, `TransOffsetY`=-22.21777, `TransOffsetZ`=24.37781 WHERE `guid`=66 AND `transport_entry`=192242;

-- [Q] Plan B (11658)
SET @ENTRY_GUARD := 25342; -- Dead Caravan Guard
SET @ENTRY_WORKER := 25343; -- Dead Caravan Worker
SET @ITEM := 34842; -- Warsong Outfit
SET @GOSSIP_1 := 9155;
SET @GOSSIP_2 := 9156;
SET @QUEST := 11658; -- Plan B

DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP_1;
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP_2;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(@GOSSIP_1, 12388),
(@GOSSIP_2, 12389);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=@GOSSIP_1;
DELETE FROM `gossip_menu_option` WHERE `menu_id`=@GOSSIP_2;
INSERT INTO `gossip_menu_option` VALUES
(@GOSSIP_1, 0, 0, 'Retrieve Warsong Outfit.', 1, 1, 0, 0, 0, 0, ''),
(@GOSSIP_2, 0, 0, 'Retrieve Warsong Outfit.', 1, 1, 0, 0, 0, 0, '');

UPDATE `creature_template` SET `npcflag`=`npcflag`|1 WHERE `entry` IN (@ENTRY_GUARD, @ENTRY_WORKER);
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=25342 AND `id`=2534201;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=25343 AND `id`=2534301;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@ENTRY_GUARD, @ENTRY_WORKER);
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY_GUARD AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY_WORKER AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(@ENTRY_GUARD, 0, 0, 1, 62, 0, 100, 0, @GOSSIP_1, 0, 0, 0, 56, @ITEM, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Dead Caravan Guard - On Gossip Select - Add Item Warsong Outfit'),
(@ENTRY_GUARD, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Dead Caravan Guard - On Gossip Select - Forced Despawn'),
(@ENTRY_WORKER, 0, 0, 1, 62, 0, 100, 0, @GOSSIP_2, 0, 0, 0, 56, @ITEM, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Dead Caravan Worker - On Gossip Select - Add Item Warsong Outfit'),
(@ENTRY_WORKER, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Dead Caravan Worker - On Gossip Select - Forced Despawn');

-- Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=@GOSSIP_1;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=@GOSSIP_2;
INSERT INTO `conditions` VALUES
(15, @GOSSIP_1, 0, 0, 9, @QUEST, 0, 0, 0, '', 'Only show gossip if player has quest Plan B'),
(15, @GOSSIP_2, 0, 0, 9, @QUEST, 0, 0, 0, '', 'Only show gossip if player has quest Plan B'),
(15, @GOSSIP_1, 0, 0, 2, @ITEM, 10, 0, 0, '', 'Only show gossip if player has less then 10 outfits'),
(15, @GOSSIP_2, 0, 0, 2, @ITEM, 10, 0, 0, '', 'Only show gossip if player has less then 10 outfits');

-- Add text for Lynn Hyal
DELETE FROM `creature_text` WHERE `entry`=23768;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
(23768, 1, 0, 'James? James... No, you\'re not James, but I know who you are...', 12, 0, 100, 0, 0, 0, 'Lynn Hyal'),
(23768, 2, 0, 'You\'re the one who tracked down the brutes who did this to us.', 12, 0, 100, 0, 0, 0, 'Lynn Hyal'),
(23768, 3, 0, 'I tried so hard to tell Jim... to tell anyone... who was behind this, but I couldn\'t find a way...', 12, 0, 100, 0, 0, 0, 'Lynn Hyal'),
(23768, 4, 0, 'Thank you for helping us and for helping Jim. If you see him, tell him little Jimmy and I love him and that we\'re waiting for him.', 12, 0, 100, 0, 0, 0, 'Lynn Hyal'),
(23768, 5, 0, 'I don\'t know when we\'ll see Daddy again, Jimmy, but I know he loves you and he misses you very much.', 12, 0, 100, 0, 0, 0, 'Lynn Hyal');
-- Add text for Jimmy Hyal
DELETE FROM `creature_text` WHERE `entry`=23769;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
(23769, 1, 0, 'Mommy, when will we see Daddy again?', 12, 0, 100, 0, 0, 0, 'Jimmy Hyal');
-- add smart ai dialog for Lynn Hyal and quest credit at end of dialog
UPDATE `creature_template` SET AIName="SmartAI" WHERE `entry`=23768;
DELETE FROM `smart_scripts` WHERE `entryorguid`=23768;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(23768, 0, 0, 0, 1, 0, 100, 1, 0, 0, 0, 0, 84, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lynn Hyal - on spawn - talk 1'),
(23768, 0, 1, 0, 1, 0, 100, 1, 2000, 2000, 0, 0, 84, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lynn Hyal - after 2 sec - talk 2'),
(23768, 0, 2, 0, 1, 0, 100, 1, 5000, 5000, 0, 0, 84, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lynn Hyal - after 5 sec - talk 3'),
(23768, 0, 3, 0, 1, 0, 100, 1, 8000, 8000, 0, 0, 84, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lynn Hyal - after 8 sec - talk 4'),
(23768, 0, 4, 0, 1, 0, 100, 1, 12000, 12000, 0, 0, 84, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lynn Hyal - after 12 sec - reply to jimmy'),
(23768, 0, 5, 0, 1, 0, 100, 1, 12000, 12000, 0, 0, 33, 23768, 0, 0, 0, 0, 0, 18, 5, 0, 0, 0, 0, 0, 0, 'Lynn Hyal - after 12 sec - kill credit quest complete');
-- add smart ai dialog for Jimmy Hyal
UPDATE `creature_template` SET AIName="SmartAI" WHERE `entry`=23769;
DELETE FROM `smart_scripts` WHERE `entryorguid`=23769;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(23769, 0, 0, 0, 1, 0, 100, 1, 10000, 10000, 0, 0, 84, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Jimmy Hyal - after 10 sec - talk 1');

-- Smart AI for Wildspawn Shadowstalker
SET @ENTRY := 11456;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,11,22766,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Shadowstalker - On Spawn - cast Sneak on self'),
(@ENTRY,0,1,0,0,0,100,0,4000,8000,5000,8000,11,22416,0,0,0,0,0,2,0,0,0,0,0,0,0,'Wildspawn Shadowstalker - In Combat - Cast Backstab'),
(@ENTRY,0,2,0,0,0,100,0,6000,7000,8000,9000,11,7992,0,0,0,0,0,2,0,0,0,0,0,0,0,'Wildspawn Shadowstalker - In Combat - Cast Slowing Posion');

SET @NPC_WILDSPAWN_SATYR = 11451;
SET @NPC_WILDSPAWN_ROGUE := 11452;
SET @NPC_WILDSPAWN_BETRAYER := 11454;
SET @NPC_WILDSPAWN_FELSWORN := 11455;
SET @NPC_WILDSPAWN_SHADOWSTALKER := 11456;
SET @NPC_WILDSPAWN_HELLCALLER := 11457;
SET @NPC_WARPWOOD_TREANT = 11462;
SET @NPC_WARPWOOD_CRUSHER := 13021;
SET @NPC_WHIP_LASHER := 13022;
SET @NPC_PHASE_LASHER := 13196;
SET @NPC_FEL_LASH := 13197;

-- SmartAI for Wildspawn Hellcaller
SET @ENTRY := @NPC_WILDSPAWN_HELLCALLER;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Hellcaller - On Aggro - Prevent Combat Movement'),
(@ENTRY,0,1,2,4,0,100,0,0,0,0,0,11,15228,0,0,0,0,0,2,0,0,0,0,0,0,0,'Wildspawn Hellcaller - On Aggro - Cast Fireball '),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Hellcaller - On Aggro - Set Phase 1'),
(@ENTRY,0,3,0,9,1,100,0,0,40,2400,3800,11,15228,0,0,0,0,0,2,0,0,0,0,0,0,0,'Wildspawn Hellcaller - Phase 1 - Cast Fireball'),
(@ENTRY,0,4,5,3,1,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Hellcaller -In Phase 1 - Start Combat Movement'),
(@ENTRY,0,5,0,61,1,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Hellcaller - Mana at 15% (Phase 1) - Set Phase 2'),
(@ENTRY,0,6,0,9,1,100,0,35,80,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wildspawn Hellcaller - At 35 Yards  (Phase 1) - Start Combat Movement'),
(@ENTRY,0,7,0,9,1,100,0,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Hellcaller - at 15 Yards (Phase 1) - Prevent Combat Movement '),
(@ENTRY,0,8,0,9,1,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Hellcaller - Below 5 Yards (Phase 1) - Start Combat Movement'),
(@ENTRY,0,9,0,3,2,100,0,0,30,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Hellcaller - Mana is above 30% (Phase 2) - Set Phase 1'),
(@ENTRY,0,10,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wildspawn Hellcaller - Set Phase 1 when Mana is above 30% (Phase 2)'),
(@ENTRY,0,11,0,0,0,100,0,8000,14000,18000,25000,11,20754,3,0,0,0,0,2,0,0,0,0,0,0,0,'Wildspawn Hellcaller - In Combat - Cast Rain of Fire'),
(@ENTRY,0,12,0,2,0,100,1,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Hellcaller - At 15% HP - Start Combat Movement'),
(@ENTRY,0,13,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Betrayer - At 15% HP - Flee'),
(@ENTRY,0,14,0,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Felsworn - On Evade - Set Phase to 0');

-- SmartAI for Wildspawn Felsworn
SET @ENTRY := @NPC_WILDSPAWN_FELSWORN;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,1800000,1800000,11,12542,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Felsworn - Cast Chaotic Focus'),
(@ENTRY,0,1,0,4,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Felsworn - On Aggro - Prevent Combat Movement'),
(@ENTRY,0,2,3,4,0,100,0,0,0,0,0,11,15537,0,0,0,0,0,2,0,0,0,0,0,0,0,'Wildspawn Felsworn - On Aggro - Cast Shadow Bolt'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Felsworn - On Aggro - Set Phase 1'),
(@ENTRY,0,4,0,9,1,100,0,0,40,2400,3800,11,15537,0,0,0,0,0,2,0,0,0,0,0,0,0,'Wildspawn Felsworn - Phase 1 - Cast Shadow Bolt'),
(@ENTRY,0,5,6,3,1,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Felsworn -In Phase 1 - Start Combat Movement'),
(@ENTRY,0,6,0,61,1,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Felsworn - Mana at 15% (Phase 1) - Set Phase 2'),
(@ENTRY,0,7,0,9,1,100,0,35,80,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wildspawn Felsworn - At 35 Yards  (Phase 1) - Start Combat Movement'),
(@ENTRY,0,8,0,9,1,100,0,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Felsworn - at 15 Yards (Phase 1) - Prevent Combat Movement '),
(@ENTRY,0,9,0,9,1,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Felsworn - Below 5 Yards (Phase 1) - Start Combat Movement'),
(@ENTRY,0,10,0,3,2,100,0,0,30,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Felsworn - Mana is above 30% (Phase 2) - Set Phase 1'),
(@ENTRY,0,11,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wildspawn Felsworn - Set Phase 1 when Mana is above 30% (Phase 2)'),
(@ENTRY,0,12,0,0,0,100,0,7000,12000,38000,45000,11,22417,1,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Felsworn - In Phase 1 - Cast Shadow Shield'),
(@ENTRY,0,13,0,0,1,100,0,11000,17000,23000,30000,11,15654,0,0,0,0,0,2,0,0,0,0,0,0,0,'Wildspawn Felsworn - In Phase 1 - Cast Shadow Word: Pain'),
(@ENTRY,0,14,0,0,0,100,0,6000,10000,10000,15000,11,12542,1,0,0,0,0,5,0,0,0,0,0,0,0,'Wildspawn Felsworn - In Combat - Cast Fear (on random target)'),
(@ENTRY,0,15,0,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Felsworn - On Evade - Set Phase to 0');

-- Smart AI for Wildspawn Shadowstalker
SET @ENTRY := @NPC_WILDSPAWN_SHADOWSTALKER;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,11,22766,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Shadowstalker - On Spawn - cast Sneak on self'),
(@ENTRY,0,1,0,0,0,100,0,4000,8000,5000,8000,11,22416,0,0,0,0,0,2,0,0,0,0,0,0,0,'Wildspawn Shadowstalker - In Combat - Cast Backstab'),
(@ENTRY,0,2,0,0,0,100,0,6000,7000,8000,9000,11,7992,0,0,0,0,0,2,0,0,0,0,0,0,0,'Wildspawn Shadowstalker - In Combat - Cast Slowing Posion');

-- The Undying
DELETE FROM `disables` WHERE `sourceType` = 4 AND `entry` IN (13237, 13238, 13239, 13240, 7617); -- Enable criteria
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (13237, 13238, 13239, 13240, 7617); -- Enable instance script execution for achievement criteria
INSERT INTO `achievement_criteria_data` VALUES
(13237, 12, 0, 0, ''),
(13237, 18, 0, 0, ''),
(13238, 12, 0, 0, ''),
(13238, 18, 0, 0, ''),
(13239, 12, 0, 0, ''),
(13239, 18, 0, 0, ''),
(13240, 12, 0, 0, ''),
(13240, 18, 0, 0, ''),
(7617, 12, 0, 0, ''),
(7617, 18, 0, 0, '');

-- The Immortal
DELETE FROM `disables` WHERE `sourceType` = 4 AND `entry` IN (13233, 13234, 13235, 13236, 7616); -- Enable criteria
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (13233, 13234, 13235, 13236, 7616); -- Enable instance script execution for achievement criteria
INSERT INTO `achievement_criteria_data` VALUES
(13233, 12, 1, 0, ''),
(13233, 18, 0, 0, ''),
(13234, 12, 1, 0, ''),
(13234, 18, 0, 0, ''),
(13235, 12, 1, 0, ''),
(13235, 18, 0, 0, ''),
(13236, 12, 1, 0, ''),
(13236, 18, 0, 0, ''),
(7616, 12, 1, 0, ''),
(7616, 18, 0, 0, '');

SET @NPC_WILDSPAWN_SATYR = 11451;
SET @NPC_WILDSPAWN_ROGUE := 11452;
SET @NPC_WILDSPAWN_BETRAYER := 11454;
SET @NPC_WILDSPAWN_FELSWORN := 11455;
SET @NPC_WILDSPAWN_SHADOWSTALKER := 11456;
SET @NPC_WILDSPAWN_HELLCALLER := 11457;
SET @NPC_WARPWOOD_TREANT = 11462;
SET @NPC_WARPWOOD_CRUSHER := 13021;
SET @NPC_WHIP_LASHER := 13022;
SET @NPC_PHASE_LASHER := 13196;
SET @NPC_FEL_LASH := 13197;

-- SmartAI for Warpwood Treant
SET @ENTRY := @NPC_WARPWOOD_TREANT;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,5000,5000,7000,11,18368,0,0,0,0,0,2,0,0,0,0,0,0,0,'Warpwood Treant - In Combat - Cast Strike'),
(@ENTRY,0,1,0,0,0,100,0,7000,9000,18000,22000,11,14331,0,0,0,0,0,2,0,0,0,0,0,0,0,'Warpwood Treant - In Combat - Cast Vicious Rend'),
(@ENTRY,0,2,0,0,0,100,0,10000,12000,9000,14000,11,11428,0,0,0,0,0,2,0,0,0,0,0,0,0,'Warpwood Treant - In Combat - Cast Knockdown');

-- SmartAI for Warpwood Crusher
SET @ENTRY := @NPC_WARPWOOD_CRUSHER;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,7000,8000,12000,11,22426,0,0,0,0,0,2,0,0,0,0,0,0,0,'Warpwood Crusher - In Combat - Cast Crush Armor');

-- SmartAI for Whip Lasher
SET @ENTRY := @NPC_WHIP_LASHER;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
UPDATE creature SET `MovementType`=1,`spawndist`=15 WHERE `id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,5000,7000,9000,11,21987,0,0,0,0,0,2,0,0,0,0,0,0,0,'Whip Lasher - In Combat - Cast Lash of Pain');

-- Fel Lash
SET @ENTRY := @NPC_FEL_LASH;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
UPDATE creature SET `MovementType`=1,`spawndist`=15 WHERE `id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Fel Lash - On Aggro - Prevent Combat Movement'),
(@ENTRY,0,1,2,4,0,100,0,0,0,0,0,11,15230,0,0,0,0,0,2,0,0,0,0,0,0,0,'Fel Lash - On Aggro - Cast Arcane Bolt'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Fel Lash - On Aggro - Set Phase 1'),
(@ENTRY,0,3,0,9,1,100,0,0,40,2400,3800,11,15230,0,0,0,0,0,2,0,0,0,0,0,0,0,'Fel Lash - In Phase 1 - Cast Arcane Bolt '),
(@ENTRY,0,4,5,3,1,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Fel Lash - In Phase 1 and Mana at 15% - Start Combat Movement'),
(@ENTRY,0,5,0,61,1,100,0,0,0,0,0,22,2,0,0,0,0,0,0,0,0,0,0,0,0,0,'Fel Lash - In Phase 1 and  Mana is at 15% - set Phase 2'),
(@ENTRY,0,6,0,9,1,100,0,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Fel Lash - In Phase 1 - Start Combat Movement at 35 Yards'),
(@ENTRY,0,7,0,9,1,100,0,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Fel Lash - In Phase 1 - Prevent Combat Movement at 15 Yards'),
(@ENTRY,0,8,0,9,1,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Fel Lash - In Phase 1 - Start Combat Movement Below 5 Yards'),
(@ENTRY,0,9,0,3,2,100,0,30,100,100,100,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Fel Lash - Phase 2 - Set Phase 1 when Mana is above 30%'),
(@ENTRY,0,10,0,0,0,100,0,9000,15000,11000,16000,11,22271,1,0,0,0,0,1,0,0,0,0,0,0,0,'Fel Lash - In Combat - Cast Arcane Explosion'),
(@ENTRY,0,11,0,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Fel Lash - On Evade - Set Phase to 0');

-- Phase Lasher
SET @ENTRY := @NPC_PHASE_LASHER;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
UPDATE creature SET `MovementType`=1,`spawndist`=15 WHERE `id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Phase Lasher - On Aggro - Prevent Combat Movement'),
(@ENTRY,0,1,0,4,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Phase Lasher - On Aggro - Set Phase 1'),
(@ENTRY,0,2,0,9,1,100,0,0,30,3400,4800,11,17228,2,0,0,0,0,2,0,0,0,0,0,0,0,'Phase Lasher - On Range - Cast Shadow Bolt Volley (Phase 1)'),
(@ENTRY,0,3,0,0,1,100,0,5000,5000,6000,6000,31,2,4,8,16,0,0,1,0,0,0,0,0,0,0,'Phase Lasher - In Phase 1 - Random Select Phase'),
(@ENTRY,0,4,5,9,2,100,0,0,40,3400,4800,11,15285,2,0,0,0,0,2,0,0,0,0,0,0,0,'Phase Lasher - In Phase 2 - Cast Fireball Volley'),
(@ENTRY,0,5,0,61,2,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Phase Lasher - In Phase 2 - Set Phase 1'),
(@ENTRY,0,6,7,0,4,100,0,4000,8000,8000,10000,11,22519,2,0,0,0,0,2,0,0,0,0,0,0,0,'Phase Lasher - In Phase 3 - Cast Ice Nova'),
(@ENTRY,0,7,0,61,4,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Phase Lasher - In Phase 3 - Set Phase 1'),
(@ENTRY,0,8,0,0,8,100,0,4000,8000,10000,13000,11,22356,2,0,0,0,0,2,0,0,0,0,0,0,0,'Phase Lasher - In Phase 4 - Cast Slow'),
(@ENTRY,0,9,0,61,8,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Phase Lasher - In Phase 4 - Set Phase 1'),
(@ENTRY,0,10,11,0,16,100,0,4000,8000,6000,8000,11,21749,2,0,0,0,0,2,0,0,0,0,0,0,0,'Phase Lasher - In Phase 5 - Cast Thorn Volley'),
(@ENTRY,0,11,0,61,16,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Phase Lasher - In Phase 5  - Set Phase 1'),
(@ENTRY,0,12,0,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Phase Lasher - On Evade - Set Phase to 0'),
(@ENTRY,0,13,0,6,0,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Phase Lasher - On Death - Set Phase to 0');

-- SmartAI for Wildspawn Satyr
SET @ENTRY := @NPC_WILDSPAWN_SATYR;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
UPDATE creature SET `MovementType`=1,`spawndist`=3 WHERE `id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,3000,4000,6000,11,15580,0,0,0,0,0,2,0,0,0,0,0,0,0,'Wildspawn Satyr - In Combat - Cast Strike'),
(@ENTRY,0,1,0,0,0,100,0,7000,9000,14000,18000,11,9080,0,0,0,0,0,2,0,0,0,0,0,0,0,'Wildspawn Satyr - In Combat - Cast Hamstring'),
(@ENTRY,0,2,0,0,0,100,0,5000,7000,15000,25000,11,9128,0,0,0,0,0,2,0,0,0,0,0,0,0,'Wildspawn Satyr - In Combat - Cast Battle Shout'),
(@ENTRY,0,3,0,2,0,100,1,0,30,0,0,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Satyr - At 30% HP - Cast Enrage'),
(@ENTRY,0,4,0,2,0,100,1,0,30,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wildspawn Satyr - At 30% HP - Say Line 0');

-- Text for Wildspawn Satyr
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,'%s becomes enraged!',16,0,100,0,0,0,'Wildspawn Satyr - At 30% HP - Enraged Text');

-- SmartAI for Wildspawn Rogue
SET @ENTRY := @NPC_WILDSPAWN_ROGUE;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
UPDATE creature SET `MovementType`=1,`spawndist`=3 WHERE `id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,7000,12000,16000,11,15583,0,0,0,0,0,2,0,0,0,0,0,0,0,'Wildspawn Rogue - In Combat - Cast Rupture'),
(@ENTRY,0,1,0,0,0,100,0,11000,15000,10000,13000,11,15667,0,0,0,0,0,2,0,0,0,0,0,0,0,'Wildspawn Rogue - In Combat - Cast Sinister Strike');

-- SmartAI for Wildspawn Betrayer
SET @ENTRY := @NPC_WILDSPAWN_BETRAYER;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
UPDATE creature SET `MovementType`=1,`spawndist`=3 WHERE `id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Betrayer - On Spawn - Prevent Combat Movement'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wildspawn Betrayer - On Spawn - Prevent Melee'),
(@ENTRY,0,2,3,4,0,100,0,0,0,0,0,11,16100,0,0,0,0,0,2,0,0,0,0,0,0,0,'Wildspawn Betrayer - On Aggro - Cast Shoot'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Betrayer - On Aggro - Set Phase 1'),
(@ENTRY,0,4,5,9,1,100,0,5,30,2300,3900,11,16100,0,0,0,0,0,2,0,0,0,0,0,0,0,'Wildspawn Betrayer - In Combat (Phase 1) - Cast Shoot'),
(@ENTRY,0,5,0,61,1,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Betrayer - In Combat (Phase 1) - Set Ranged Weapon Model'),
(@ENTRY,0,6,7,9,1,100,1,25,80,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wildspawn Betrayer - At 25 Yards (Phase 1) - Start Combat Movement'),
(@ENTRY,0,7,0,61,1,100,1,0,0,0,0,20,1,0,0,0,0,0,2,0,0,0,0,0,0,0,'Wildspawn Betrayer - At 25 Yards (Phase 1) - Start Melee'),
(@ENTRY,0,8,9,9,1,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Betrayer - Below 5 Yards (Phase 1) - Start Combat Movement'),
(@ENTRY,0,9,10,61,1,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Betrayer - Below 5 Yards (Phase 1) - Set Melee Weapon'),
(@ENTRY,0,10,0,61,1,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Betrayer - Below 5 Yards (Phase 1) - Start Melee'),
(@ENTRY,0,11,12,9,1,100,0,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Betrayer - At 15 Yards (Phase 1) - Prevent Combat Movement'),
(@ENTRY,0,12,0,61,1,100,0,0,0,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Betrayer - At 15 Yards (Phase 1) - Prevent Melee'),
(@ENTRY,0,13,0,9,1,100,0,5,30,7800,11400,11,18649,40,0,0,0,0,2,0,0,0,0,0,0,0,'Wildspawn Betrayer - In Combat (Phase 1) - Cast Shadow Shot'),
(@ENTRY,0,14,0,9,1,100,0,5,30,9900,13600,11,7896,40,0,0,0,0,2,0,0,0,0,0,0,0,'Wildspawn Betrayer - In Combat (Phase 1) - Cast Exploding Shot'),
(@ENTRY,0,15,0,0,1,100,0,5000,8000,8000,11000,11,11428,0,0,0,0,0,2,0,0,0,0,0,0,0,'Wildspawn Betrayer - In Combat (Phase 1) - Cast Knockdown'),
(@ENTRY,0,16,0,2,0,100,1,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Betrayer - At 15% HP - Start Combat Movement'),
(@ENTRY,0,17,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Betrayer - At 15% HP - Flee'),
(@ENTRY,0,18,19,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Betrayer - On Evade - Set Phase to 0'),
(@ENTRY,0,19,0,61,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Betrayer - On Evade -  Set Melee Weapon Model');

-- SmartAI for Wildspawn Hellcaller
SET @ENTRY := @NPC_WILDSPAWN_HELLCALLER;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
UPDATE creature SET `MovementType`=1,`spawndist`=3 WHERE `id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Hellcaller - On Aggro - Prevent Combat Movement'),
(@ENTRY,0,1,2,4,0,100,0,0,0,0,0,11,15228,0,0,0,0,0,2,0,0,0,0,0,0,0,'Wildspawn Hellcaller - On Aggro - Cast Fireball '),(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Hellcaller - On Aggro - Set Phase 1'),(@ENTRY,0,3,0,9,1,100,0,0,40,2400,3800,11,15228,0,0,0,0,0,2,0,0,0,0,0,0,0,'Wildspawn Hellcaller - Phase 1 - Cast Fireball'),
(@ENTRY,0,4,5,3,1,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Hellcaller -In Phase 1 - Start Combat Movement'),
(@ENTRY,0,5,0,61,1,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Hellcaller - Mana at 15% (Phase 1) - Set Phase 2'),
(@ENTRY,0,6,0,9,1,100,0,35,80,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wildspawn Hellcaller - At 35 Yards  (Phase 1) - Start Combat Movement'),
(@ENTRY,0,7,0,9,1,100,0,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Hellcaller - at 15 Yards (Phase 1) - Prevent Combat Movement '),
(@ENTRY,0,8,0,9,1,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Hellcaller - Below 5 Yards (Phase 1) - Start Combat Movement'),
(@ENTRY,0,9,0,3,2,100,0,0,30,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Hellcaller - Mana is above 30% (Phase 2) - Set Phase 1'),
(@ENTRY,0,10,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wildspawn Hellcaller - Set Phase 1 when Mana is above 30% (Phase 2)'),
(@ENTRY,0,11,0,0,0,100,0,8000,14000,18000,25000,11,20754,3,0,0,0,0,2,0,0,0,0,0,0,0,'Wildspawn Hellcaller - In Combat - Cast Rain of Fire'),
(@ENTRY,0,12,0,2,0,100,1,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Hellcaller - At 15% HP - Start Combat Movement'),
(@ENTRY,0,13,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Betrayer - At 15% HP - Flee'),(@ENTRY,0,14,0,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Felsworn - On Evade - Set Phase to 0');

-- SmartAI for Wildspawn Felsworn
SET @ENTRY := @NPC_WILDSPAWN_FELSWORN;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
UPDATE creature SET `MovementType`=1,`spawndist`=3 WHERE `id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES(@ENTRY,0,0,0,1,0,100,1,1000,1000,1800000,1800000,11,12542,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Felsworn - Cast Chaotic Focus'),
(@ENTRY,0,1,0,4,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Felsworn - On Aggro - Prevent Combat Movement'),
(@ENTRY,0,2,3,4,0,100,0,0,0,0,0,11,15537,0,0,0,0,0,2,0,0,0,0,0,0,0,'Wildspawn Felsworn - On Aggro - Cast Shadow Bolt'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Felsworn - On Aggro - Set Phase 1'),(@ENTRY,0,4,0,9,1,100,0,0,40,2400,3800,11,15537,0,0,0,0,0,2,0,0,0,0,0,0,0,'Wildspawn Felsworn - Phase 1 - Cast Shadow Bolt'),
(@ENTRY,0,5,6,3,1,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Felsworn -In Phase 1 - Start Combat Movement'),
(@ENTRY,0,6,0,61,1,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Felsworn - Mana at 15% (Phase 1) - Set Phase 2'),
(@ENTRY,0,7,0,9,1,100,0,35,80,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wildspawn Felsworn - At 35 Yards  (Phase 1) - Start Combat Movement'),
(@ENTRY,0,8,0,9,1,100,0,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Felsworn - at 15 Yards (Phase 1) - Prevent Combat Movement '),
(@ENTRY,0,9,0,9,1,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Felsworn - Below 5 Yards (Phase 1) - Start Combat Movement'),
(@ENTRY,0,10,0,3,2,100,0,0,30,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Felsworn - Mana is above 30% (Phase 2) - Set Phase 1'),
(@ENTRY,0,11,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Wildspawn Felsworn - Set Phase 1 when Mana is above 30% (Phase 2)'),
(@ENTRY,0,12,0,0,0,100,0,7000,12000,38000,45000,11,22417,1,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Felsworn - In Phase 1 - Cast Shadow Shield'),(@ENTRY,0,13,0,0,1,100,0,11000,17000,23000,30000,11,15654,0,0,0,0,0,2,0,0,0,0,0,0,0,'Wildspawn Felsworn - In Phase 1 - Cast Shadow Word: Pain'),(@ENTRY,0,14,0,0,0,100,0,6000,10000,10000,15000,11,12542,1,0,0,0,0,5,0,0,0,0,0,0,0,'Wildspawn Felsworn - In Combat - Cast Fear (on random target)'),
(@ENTRY,0,15,0,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Wildspawn Felsworn - On Evade - Set Phase to 0');

UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`unit_flags`=`unit_flags`|16777216,`spell1`=50978,`spell2`=50980,`spell3`=50985,`spell4`=50983,`spell5`=54166,`VehicleId`=111,`Health_mod`=18,`Mana_mod`=12,`questItem1`=0,`AIName`='',`ScriptName`='' WHERE `entry`=28222;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=28222;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(28222,52082,12546,1,12546,1,0,0,0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=16 AND `SourceEntry`=28222;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(16,0,28222,0,23,4282,0,0,0,'','Ride vehicle only in Area');

UPDATE `creature_template` SET `mechanic_immune_mask` = mechanic_immune_mask|1|2|4|16|32|64|128|256|512|1024|2048|4096|8192|131072|4194304|8388608|67108864|536870912 WHERE `entry` in (36658,36938);
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = 1500 WHERE `creature_id` IN (36597,39166,39167,39168); 
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = 45 WHERE `creature_id` IN (36829,37007);
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = 15 WHERE `creature_id` IN (36619,36724,36725,36791,36805,36807,36808,36811,36880,36957,36960,36968,36982,37011,37012,37022,37029,37030,37031,37032,37033,37034,37035,37117,37125,37127,37132,37133,37134,37146,37149,37228,37229,37232,37501,37502,37531,37532,37546,37571,37595,37662,37663,37664,37665,37666,37695,37782,37886,37890,37919,37934,37949,38125,38159,38184,38369,38472,38485,38508,38711,38712);

SET @NPC_SIMON_BUNNY           := 22923;
SET @GO_APEXIS_RELIC           := 185890;
SET @GO_APEXIS_MONUMENT        := 185944;

SET @SPELL_SIMON_BLUE_VISUAL   := 40244;
SET @SPELL_SIMON_GREEN_VISUAL  := 40245;
SET @SPELL_SIMON_RED_VISUAL    := 40246;
SET @SPELL_SIMON_YELLOW_VISUAL := 40247;

SET @ITEM_APEXIS_SHARD         := 32569;
SET @QUEST_THE_CRYSTALS        := 11025;
SET @QUEST_GUARDIAN_MONUMENT   := 11059;
SET @GOSSIP_MENU_ID_NORMAL     := 8703;
SET @GOSSIP_MENU_ID_LARGE      := 8704;

SET @ID_SPELL_GROUP            := 1115;

UPDATE `creature_template` SET `ScriptName` = 'npc_simon_bunny',`flags_extra` = 130 WHERE `entry` = @NPC_SIMON_BUNNY;
UPDATE `gameobject_template` SET `ScriptName` = 'go_apexis_relic' WHERE `entry` IN (@GO_APEXIS_MONUMENT,@GO_APEXIS_RELIC);
-- Update is done via displayid since there are 28 entries for each color
UPDATE `gameobject_template` SET `flags` = 16,`ScriptName` = 'go_simon_cluster' WHERE `displayId` IN (7364,7365,7366,7367,7369,7371,7373,7375);

-- Spell stacking rules for Introspection and Apexis reward spells
DELETE FROM `spell_group` WHERE `spell_id` IN (40055,40165,40166,40167,40623,40625,40626);
INSERT INTO `spell_group` (`id`,`spell_id`) VALUES
(@ID_SPELL_GROUP+0,40055),
(@ID_SPELL_GROUP+0,40165),
(@ID_SPELL_GROUP+0,40166),
(@ID_SPELL_GROUP+0,40167),
(@ID_SPELL_GROUP+1,40623),
(@ID_SPELL_GROUP+1,40625),
(@ID_SPELL_GROUP+1,40626);

DELETE FROM `spell_group_stack_rules` WHERE `group_id` IN (@ID_SPELL_GROUP,@ID_SPELL_GROUP+1);
INSERT INTO `spell_group_stack_rules` (`group_id`,`stack_rule`) VALUES
(@ID_SPELL_GROUP+0,1),
(@ID_SPELL_GROUP+1,1);
--

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` IN (@SPELL_SIMON_BLUE_VISUAL,@SPELL_SIMON_GREEN_VISUAL,@SPELL_SIMON_RED_VISUAL,@SPELL_SIMON_YELLOW_VISUAL);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` IN (@GOSSIP_MENU_ID_NORMAL,@GOSSIP_MENU_ID_LARGE);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
-- Apexis Relic gossip option conditions
(15,@GOSSIP_MENU_ID_NORMAL,0,0,8,@QUEST_THE_CRYSTALS ,0,0,0,'','Apexis Relic Gossip Condition - Must have completed quest The Crystals'),
(15,@GOSSIP_MENU_ID_NORMAL,0,0,2,@ITEM_APEXIS_SHARD,1,0,0,'','Apexis Relic Gossip Condition - Must have an Apexis Shard'),
-- Apexis Monument gossip option conditions
(15,@GOSSIP_MENU_ID_LARGE,0,0,9,@QUEST_GUARDIAN_MONUMENT ,0,0,0,'','Apexis Monument Gossip Condition - Must be on quest Guardian of the Monument'),
(15,@GOSSIP_MENU_ID_LARGE,0,0,2,@ITEM_APEXIS_SHARD,35,0,0,'','Apexis Monument Gossip Condition - Must have 35 Apexis Shard'),
-- Visual color spells should target their correspondant cluster color
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185604,0,0,'','Simon Game - Blue visual target Large Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185609,0,0,'','Simon Game - Blue visual target Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185617,0,0,'','Simon Game - Blue visual target Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185625,0,0,'','Simon Game - Blue visual target Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185637,0,0,'','Simon Game - Blue visual target Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185640,0,0,'','Simon Game - Blue visual target Large Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185647,0,0,'','Simon Game - Blue visual target Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185649,0,0,'','Simon Game - Blue visual target Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185652,0,0,'','Simon Game - Blue visual target Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185659,0,0,'','Simon Game - Blue visual target Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185660,0,0,'','Simon Game - Blue visual target Large Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185665,0,0,'','Simon Game - Blue visual target Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185669,0,0,'','Simon Game - Blue visual target Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185673,0,0,'','Simon Game - Blue visual target Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185770,0,0,'','Simon Game - Blue visual target Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185772,0,0,'','Simon Game - Blue visual target Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185776,0,0,'','Simon Game - Blue visual target Large Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185780,0,0,'','Simon Game - Blue visual target Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185784,0,0,'','Simon Game - Blue visual target Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185791,0,0,'','Simon Game - Blue visual target Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185795,0,0,'','Simon Game - Blue visual target Large Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185796,0,0,'','Simon Game - Blue visual target Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185807,0,0,'','Simon Game - Blue visual target Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185808,0,0,'','Simon Game - Blue visual target Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185812,0,0,'','Simon Game - Blue visual target Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185816,0,0,'','Simon Game - Blue visual target Large Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185820,0,0,'','Simon Game - Blue visual target Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185824,0,0,'','Simon Game - Blue visual target Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185828,0,0,'','Simon Game - Blue visual target Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185832,0,0,'','Simon Game - Blue visual target Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185836,0,0,'','Simon Game - Blue visual target Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185840,0,0,'','Simon Game - Blue visual target Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185844,0,0,'','Simon Game - Blue visual target Large Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185848,0,0,'','Simon Game - Blue visual target Blue Cluster'),
(13,0,@SPELL_SIMON_BLUE_VISUAL,0,18,0,185853,0,0,'','Simon Game - Blue visual target Blue Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185605,0,0,'','Simon Game - Green visual target Large Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185611,0,0,'','Simon Game - Green visual target Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185619,0,0,'','Simon Game - Green visual target Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185627,0,0,'','Simon Game - Green visual target Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185639,0,0,'','Simon Game - Green visual target Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185641,0,0,'','Simon Game - Green visual target Large Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185646,0,0,'','Simon Game - Green visual target Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185651,0,0,'','Simon Game - Green visual target Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185654,0,0,'','Simon Game - Green visual target Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185658,0,0,'','Simon Game - Green visual target Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185661,0,0,'','Simon Game - Green visual target Large Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185667,0,0,'','Simon Game - Green visual target Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185671,0,0,'','Simon Game - Green visual target Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185675,0,0,'','Simon Game - Green visual target Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185768,0,0,'','Simon Game - Green visual target Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185774,0,0,'','Simon Game - Green visual target Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185777,0,0,'','Simon Game - Green visual target Large Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185781,0,0,'','Simon Game - Green visual target Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185786,0,0,'','Simon Game - Green visual target Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185789,0,0,'','Simon Game - Green visual target Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185793,0,0,'','Simon Game - Green visual target Large Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185798,0,0,'','Simon Game - Green visual target Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185805,0,0,'','Simon Game - Green visual target Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185810,0,0,'','Simon Game - Green visual target Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185814,0,0,'','Simon Game - Green visual target Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185818,0,0,'','Simon Game - Green visual target Large Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185822,0,0,'','Simon Game - Green visual target Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185826,0,0,'','Simon Game - Green visual target Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185830,0,0,'','Simon Game - Green visual target Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185834,0,0,'','Simon Game - Green visual target Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185838,0,0,'','Simon Game - Green visual target Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185842,0,0,'','Simon Game - Green visual target Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185846,0,0,'','Simon Game - Green visual target Large Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185850,0,0,'','Simon Game - Green visual target Green Cluster'),
(13,0,@SPELL_SIMON_GREEN_VISUAL,0,18,0,185855,0,0,'','Simon Game - Green visual target Green Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185606,0,0,'','Simon Game - Red visual target Large Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185613,0,0,'','Simon Game - Red visual target Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185621,0,0,'','Simon Game - Red visual target Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185626,0,0,'','Simon Game - Red visual target Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185638,0,0,'','Simon Game - Red visual target Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185642,0,0,'','Simon Game - Red visual target Large Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185645,0,0,'','Simon Game - Red visual target Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185650,0,0,'','Simon Game - Red visual target Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185655,0,0,'','Simon Game - Red visual target Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185657,0,0,'','Simon Game - Red visual target Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185662,0,0,'','Simon Game - Red visual target Large Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185666,0,0,'','Simon Game - Red visual target Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185670,0,0,'','Simon Game - Red visual target Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185674,0,0,'','Simon Game - Red visual target Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185771,0,0,'','Simon Game - Red visual target Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185773,0,0,'','Simon Game - Red visual target Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185778,0,0,'','Simon Game - Red visual target Large Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185782,0,0,'','Simon Game - Red visual target Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185785,0,0,'','Simon Game - Red visual target Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185788,0,0,'','Simon Game - Red visual target Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185794,0,0,'','Simon Game - Red visual target Large Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185797,0,0,'','Simon Game - Red visual target Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185804,0,0,'','Simon Game - Red visual target Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185809,0,0,'','Simon Game - Red visual target Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185815,0,0,'','Simon Game - Red visual target Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185817,0,0,'','Simon Game - Red visual target Large Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185823,0,0,'','Simon Game - Red visual target Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185827,0,0,'','Simon Game - Red visual target Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185831,0,0,'','Simon Game - Red visual target Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185835,0,0,'','Simon Game - Red visual target Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185839,0,0,'','Simon Game - Red visual target Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185843,0,0,'','Simon Game - Red visual target Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185845,0,0,'','Simon Game - Red visual target Large Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185851,0,0,'','Simon Game - Red visual target Red Cluster'),
(13,0,@SPELL_SIMON_RED_VISUAL,0,18,0,185854,0,0,'','Simon Game - Red visual target Red Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185607,0,0,'','Simon Game - Yellow visual target Large Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185615,0,0,'','Simon Game - Yellow visual target Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185623,0,0,'','Simon Game - Yellow visual target Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185624,0,0,'','Simon Game - Yellow visual target Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185636,0,0,'','Simon Game - Yellow visual target Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185643,0,0,'','Simon Game - Yellow visual target Large Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185644,0,0,'','Simon Game - Yellow visual target Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185648,0,0,'','Simon Game - Yellow visual target Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185653,0,0,'','Simon Game - Yellow visual target Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185656,0,0,'','Simon Game - Yellow visual target Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185663,0,0,'','Simon Game - Yellow visual target Large Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185664,0,0,'','Simon Game - Yellow visual target Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185668,0,0,'','Simon Game - Yellow visual target Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185672,0,0,'','Simon Game - Yellow visual target Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185769,0,0,'','Simon Game - Yellow visual target Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185775,0,0,'','Simon Game - Yellow visual target Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185779,0,0,'','Simon Game - Yellow visual target Large Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185783,0,0,'','Simon Game - Yellow visual target Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185787,0,0,'','Simon Game - Yellow visual target Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185790,0,0,'','Simon Game - Yellow visual target Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185792,0,0,'','Simon Game - Yellow visual target Large Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185803,0,0,'','Simon Game - Yellow visual target Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185806,0,0,'','Simon Game - Yellow visual target Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185811,0,0,'','Simon Game - Yellow visual target Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185813,0,0,'','Simon Game - Yellow visual target Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185819,0,0,'','Simon Game - Yellow visual target Large Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185821,0,0,'','Simon Game - Yellow visual target Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185825,0,0,'','Simon Game - Yellow visual target Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185829,0,0,'','Simon Game - Yellow visual target Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185833,0,0,'','Simon Game - Yellow visual target Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185837,0,0,'','Simon Game - Yellow visual target Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185841,0,0,'','Simon Game - Yellow visual target Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185847,0,0,'','Simon Game - Yellow visual target Large Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185849,0,0,'','Simon Game - Yellow visual target Yellow Cluster'),
(13,0,@SPELL_SIMON_YELLOW_VISUAL,0,18,0,185852,0,0,'','Simon Game - Yellow visual target Yellow Cluster');

-- spell interrupt is loaded from DBC so can be removed from mechanic_immune_mask 
UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask` &~33554432;

DELETE FROM `achievement_criteria_data` WHERE criteria_id IN (5220, 5215, 5218, 5221, 5216, 5219, 5213, 5018, 5217, 5214, 5233, 5235, 5232, 5234, 5238, 5236, 5229, 5237, 5230, 5231);
INSERT INTO `achievement_criteria_data` VALUES 
-- Classes
(5220,21, 1,0,''), -- Realm First! Level 80 Warrior
(5215,21, 2,0,''), -- Realm First! Level 80 Paladin
(5218,21, 3,0,''), -- Realm First! Level 80 Hunter
(5221,21, 4,0,''), -- Realm First! Level 80 Rogue
(5216,21, 5,0,''), -- Realm First! Level 80 Priest
(5219,21, 6,0,''), -- Realm First! Level 80 Death Knight
(5213,21, 7,0,''), -- Realm First! Level 80 Shaman
(5018,21, 8,0,''), -- Realm First! Level 80 Mage
(5217,21, 9,0,''), -- Realm First! Level 80 Warlock
(5214,21,11,0,''), -- Realm First! Level 80 Druid
-- Races
(5233,21,0,1,''), -- Realm First! Level 80 Human
(5235,21,0,2,''), -- Realm First! Level 80 Orc
(5232,21,0,3,''), -- Realm First! Level 80 Dwarf
(5234,21,0,4,''), -- Realm First! Level 80 Night Elf
(5238,21,0,5,''), -- Realm First! Level 80 Undead
(5236,21,0,6,''), -- Realm First! Level 80 Tauren
(5229,21,0,7,''), -- Realm First! Level 80 Gnome
(5237,21,0,8,''), -- Realm First! Level 80 Troll
(5230,21,0,10,''), -- Realm First! Level 80 Blood Elf
(5231,21,0,11,''); -- Realm First! Level 80 Draenei

-- Fix Quest 11795, 11887 'Emergency Protocol: Section 8.2, Paragraph C', 'Emergency Supplies' 
SET @NPC    :=25841; -- Fizzcrank Recon Pilot
SET @Gossip :=9190;

DELETE FROM `gossip_menu_option` WHERE (`menu_id`=@Gossip AND `id`=1);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`) VALUES
(@Gossip,1,0,"Search the body for the pilot's insignia.",1,1,0,0,0,0,'');

DELETE FROM `conditions` WHERE `SourceGroup`=21248;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,@Gossip,0,0,9,11887,0,0,0,'',''),
(15,@Gossip,1,0,9,11795,0,0,0,'','');

DELETE FROM `smart_scripts` WHERE `entryorguid`=@NPC AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC,0,0,0,11,0,100,0,0,0,0,0,82,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Fizzcrank Recon Pilot - On spawn - set gossip flag'),
(@NPC,0,1,2,62,0,100,0,@Gossip,0,0,0,11,46362,2,0,0,0,0,7,0,0,0,0,0,0,0,'Fizzcrank Recon Pilot - On gossip option 0 select - cast spell'),
(@NPC,0,2,3,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Fizzcrank Recon Pilot - close gossip'),
(@NPC,0,3,7,61,0,100,0,0,0,0,0,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Fizzcrank Recon Pilot - remove gossip flag'),
(@NPC,0,4,5,62,0,100,0,@Gossip,1,0,0,11,46166,2,0,0,0,0,7,0,0,0,0,0,0,0,'Fizzcrank Recon Pilot - On gossip option 1 select - cast spell'),
(@NPC,0,5,6,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Fizzcrank Recon Pilot - close gossip'),
(@NPC,0,6,7,61,0,100,0,0,0,0,0,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Fizzcrank Recon Pilot - remove gossip flag'),
(@NPC,0,7,0,61,0,100,0,0,0,0,0,41,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Fizzcrank Recon Pilot - Despawn');

-- Drowned Guardian & Phylactery Guardian summoned NPC should not give XP
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|64 WHERE `entry` IN (26225,26224);

-- Quest "Torgos!" 10035 (A) - 10036 (H)
-- Converted to SAI
SET @TRACHELA := 21515;
SET @TORGOS := 18707;
DELETE FROM `creature` WHERE `id`=@TORGOS; -- Torgos must to appear only by quest
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~256 WHERE `entry`=@TORGOS; -- removing OOC
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@TORGOS,@TRACHELA);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (@TORGOS,@TRACHELA);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@TORGOS,@TRACHELA);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@TRACHELA,0,0,0,0,0,100,0,5000,8000,10000,14000,11,32903,1,0,0,0,0,5,0,0,0,0,0,0,0, 'Trachela - On combat - Cast Fevered Disease'),
(@TORGOS,0,0,0,0,0,100,0,2000,5000,12000,20000,11,32022,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Torgos - On combat - Cast Gut Rip'),
(@TORGOS,0,1,0,0,0,100,0,8000,10000,20000,25000,11,13579,1,0,0,0,0,3,0,0,0,0,0,0,0, 'Torgos - On combat - Cast Gouge'),
(@TORGOS,0,2,0,0,0,100,0,5000,8000,10000,14000,11,32903,1,0,0,0,0,5,0,0,0,0,0,0,0, 'Torgos - On combat - Cast Fevered Disease');
UPDATE smart_scripts SET action_param2 = action_param3 WHERE action_type = 80;
UPDATE smart_scripts SET action_param3 = 0 WHERE action_type = 80;

-- Set standard immunities to The Nexus bosses.
UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask`|1|2|4|8|16|32|64|256|512|1024|2048|4096|8192|65536|131072|262144|524288|4194304|8388608|67108864|536870912 WHERE `entry` IN 
(26731,30510, -- Grand Magus Telestra
 26763,30529, -- Anomalus
 26794,30532, -- Ormorok the Tree-Shaper
 26723,30540, -- Keristrasza
 26796,30398, -- Commander Stoutbeard
 26798,30397); -- Commander Kolurg

-- UPDATE Blood Knight Dawnstar Gossip
SET @ENTRY    := 17832;
SET @GOSSIPID := 7486;
SET @TEXTID   := 9070;
-- Creature Gossip_menu_id Update from sniff    
UPDATE `creature_template` SET `gossip_menu_id`=@GOSSIPID WHERE `entry`=@ENTRY; 
-- Gossip Menu insert from sniff
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIPID AND `text_id`=@TEXTID;    
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIPID,@TEXTID);
-- Creature Gossip_menu_option Update from sniff
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (@GOSSIPID) AND `id` IN (0);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`) VALUES   
(@GOSSIPID,0,0, 'Take Blood Knight Insignia',1,1,0,0,0,0, '');
-- Gossip option Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=@GOSSIPID;    
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES   
(15,@GOSSIPID,0,0,9,9692,0,0,0,'','Show gossip option if player has quest 9692 but not complete'),  
(15,@GOSSIPID,0,0,26,24226,1,0,0,'','Show gossip option if player does not have item 24226');
-- SAI for Blood Knight Dawnstar
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIPID,0,0,0,56,24226,1,0,0,0,0,7,0,0,0,0,0,0,0,'Blood Knight Dawnstar - On Gossip option select - Create Blood Knight Insignia'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Blood Knight Dawnstar - On Gossip option select - Close Gossip');

-- Remove old script text for boss_balinda.cpp "Not sure if the text actually exist"
DELETE FROM `script_texts` WHERE `entry` IN (-1810023,-1810024);
-- Add new creature_text for Captain Balinda Stonehearth <Stormpike Captain>
DELETE FROM `creature_text` WHERE `entry`=11949;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(11949,0,0, 'Begone, uncouth scum! The Alliance shall prevail in Alterac Valley!',14,0,100,0,0,0, 'Captain Balinda Stonehearth'), -- Aggro
(11949,1,0, 'Filthy Frostwolf cowards! If you want a fight, you''ll have to come to me!',14,0,100,0,0,0, 'Captain Balinda Stonehearth'), -- Reset
-- (Alliance players receives Stormpike's Salvation buff (+20% health points for 2 minutes))
(11949,2,0, 'Take heart, Alliance! Throw these villains from Alterac Valley!',14,0,100,0,0,0, 'Captain Balinda Stonehearth');
-- Remove old script text for boss_galvangar.cpp "Not sure if the text actually exist"
DELETE FROM `script_texts` WHERE `entry` IN (-1810021,-1810022);
-- Add new creature_text for Captain Galvangar
DELETE FROM `creature_text` WHERE `entry`=11947;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(11947,0,0, 'Die! Your kind has no place in Alterac Valley!',14,0,100,0,0,0, 'Captain Galvangar'), -- Aggro
(11947,1,0, 'I''ll never fall for that, fool! If you want a battle it will be on my terms and in my lair!',14,0,100,0,0,0, 'Captain Galvangar'), -- Reset
(11947,2,0, 'Now is the time to attack! For the Horde!',14,0,100,0,0,0, 'Captain Galvangar'); -- Casting Fury of the Frostwolf
-- Remove old script text for boss_drekthar.cpp "Not sure if the text actually exist"
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1810007 AND -1810000;
-- Add new creature_text for Drek'Thar
DELETE FROM `creature_text` WHERE `entry`=11946;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
-- Aggro
(11946,0,0, 'Stormpike filth! In my keep?! Slay them all!',14,0,100,0,0,0, 'Drek''Thar'),
-- Reset
(11946,1,0, 'You seek to draw the General of the Frostwolf legion out from his fortress? PREPOSTEROUS!',14,0,100,0,0,0, 'Drek''Thar'),
-- Raid wipe
(11946,2,0, 'Stormpike weaklings, face me in my fortress - if you dare!',14,0,100,0,0,0, 'Drek''Thar'),
-- Combat
(11946,3,0, 'Your attacks are slowed by the cold, I think!',14,0,100,0,0,0, 'Drek''Thar'),
(11946,3,1, 'Today, you will meet your ancestors!',14,0,100,0,0,0, 'Drek''Thar'),
(11946,3,2, 'If you will not leave Alterac Valley on your own, then the Frostwolves will force you out!',14,0,100,0,0,0, 'Drek''Thar'),
(11946,3,3, 'You cannot defeat the Frostwolf clan!',14,0,100,0,0,0, 'Drek''Thar'),
(11946,3,4, 'You are no match for the strength of the Horde!',14,0,100,0,0,0, 'Drek''Thar');
-- Remove old script text for boss_vanndar.cpp "Not sure if the text actually exist"
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1810018 AND -1810008;
-- Add new creature_text for Vanndar Stormpike
DELETE FROM `creature_text` WHERE `entry`=11948;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
-- Aggro
(11948,0,0, 'Soldiers of Stormpike, your General is under attack! I require aid! Come! Come! Slay these mangy Frostwolf dogs.',14,0,100,0,0,0, 'Vanndar Stormpike'),
-- Reset
(11948,1,0, 'You''ll never get me out of me bunker, heathens!',14,0,100,0,0,0, 'Vanndar Stormpike'),
(11948,1,1, 'Why don''t ya try again without yer cheap tactics, pansies! Or are you too chicken?',14,0,100,0,0,0, 'Vanndar Stormpike'),
-- Combat
(11948,2,0, 'I will tell you this much...Alterac Valley will be ours.',14,0,100,0,0,0, 'Vanndar Stormpike'),
(11948,2,1, 'Your attacks are weak! Go practice on some rabbits and come back when you''re stronger.',14,0,100,0,0,0, 'Vanndar Stormpike'),
(11948,2,2, 'We will not be swayed from our mission!',14,0,100,0,0,0, 'Vanndar Stormpike'),
(11948,2,3, 'It''ll take more than you rabble to bring me down!',14,0,100,0,0,0, 'Vanndar Stormpike'),
(11948,2,4, 'We, the Alliance, will prevail!',14,0,100,0,0,0, 'Vanndar Stormpike'),
(11948,2,5, 'The Stormpike clan bows to no one, especially the horde!',14,0,100,0,0,0, 'Vanndar Stormpike'),
(11948,2,6, 'Is that the best you can do?',14,0,100,0,0,0, 'Vanndar Stormpike'),
-- Said with a spell cast (Alliance players receive 10/20/30% damage/size increases, gained by turning in [Polished Armor Scraps]
(11948,3,0, 'Take no prisoners! Drive these heathens from our lands!',14,0,100,0,0,0, 'Vanndar Stormpike');
-- Remove old script text for eversong_woods.cpp
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000640 AND -1000637;
-- Master Kelerun Bloodmourn <Blood Knight> say text
DELETE FROM `creature_text` WHERE `entry`=17807;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(17807,0,0, 'Let the trial begin, Bloodwrath, attack!',14,0,100,0,0,0, 'Master Kelerun Bloodmourn'),
(17807,1,0, 'Champion Lightrend, make me proud!',14,0,100,0,0,0, 'Master Kelerun Bloodmourn'),
(17807,2,0, 'Show this upstart how a real Blood Knight fights, Swiftblade!',14,0,100,0,0,0, 'Master Kelerun Bloodmourn'),
(17807,3,0, 'Show $N the meaning of pain, Sunstriker!',14,0,100,0,0,0, 'Master Kelerun Bloodmourn');
-- Twilight Corrupter say text
DELETE FROM `creature_text` WHERE `entry`=15625;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(15625,0,0, 'Come, $N. See what the Nightmare brings...',14,0,100,0,0,0, 'Twilight Corrupter'),
(15625,1,0, 'The Nightmare cannot be stopped!',14,0,100,0,0,0, 'Twilight Corrupter'),
(15625,2,0, 'Twilight Corrupter squeezes the last bit of life out of $N and swallows their soul.',16,0,100,0,0,0, 'Twilight Corrupter');
-- NPC talk text insert from sniff "Orgrimmar Zeppelin Masters"
DELETE FROM `creature_text` WHERE `entry` IN (12136,26537,9564,34765) AND `groupid`=0;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(12136,0,0, 'The zeppelin to Grom''gol has just arrived! All aboard for Stranglethorn!',14,0,100,0,0,0, 'Snurk Bucksquick'),
(26537,0,0, 'The zeppelin to Warsong Hold has just arrived! All aboard for Borean Tundra!',14,0,100,0,0,0, 'Greeb Ramrocket'),
(9564,0,0, 'The zeppelin to Undercity has just arrived! All aboard for Tirisfal Glades!',14,0,100,0,0,0, 'Frezza'),
(34765,0,0, 'The zeppelin to Thunder Bluff has arrived! All aboard for a smooth ride across the Barrens!',14,0,100,0,0,0, 'Zelli Hotnozzle');
-- Remove old script text for arathi_highlands.cpp
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000273 AND -1000264;
-- Add new creature_text for Professor Phizzlethorpe <Blackwater Raiders>
DELETE FROM `creature_text` WHERE `entry`=2768;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(2768,0,0, 'Ok, $N. Follow me to the cave where I''ll attempt to harness the power of the rune stone into these goggles.',12,0,100,0,0,0, 'Professor Phizzlethorpe - SAY_PROGRESS_1'),
(2768,1,0, 'I discovered this cave on our first day here. I believe the energy in the stone can be used to our advantage.',12,0,100,0,0,0, 'Professor Phizzlethorpe - SAY_PROGRESS_2'),
(2768,2,0, 'I''ll begin drawing energy from the stone. Your job, $N, is to defend me. This place is cursed... trust me.',12,0,100,0,0,0, 'Professor Phizzlethorpe - SAY_PROGRESS_3'),
(2768,3,0, '%s begins tinkering with the goggles before the stone.',16,0,100,0,0,0, 'Professor Phizzlethorpe - EMOTE_PROGRESS_4'),
(2768,4,0, 'Help!!! Get these things off me so I can get my work done!',12,0,100,0,0,0, 'Professor Phizzlethorpe - SAY_AGGRO'),
(2768,5,0, 'Almost done! Just a little longer!',12,0,100,0,0,0, 'Professor Phizzlethorpe - SAY_PROGRESS_5'),
(2768,6,0, 'I''ve done it! I have harnessed the power of the stone into the goggles! Let''s get out of here!',12,0,100,0,0,0, 'Professor Phizzlethorpe - SAY_PROGRESS_6'),
(2768,7,0, 'Phew! Glad to be back from that creepy cave.',12,0,100,0,0,0, 'Professor Phizzlethorpe - SAY_PROGRESS_7'),
(2768,8,0, '%s hands one glowing goggles over to Doctor Draxlegauge.',16,0,100,0,0,0, 'Professor Phizzlethorpe - EMOTE_PROGRESS_8'),
(2768,9,0, 'Doctor Draxlegauge will give you further instructions, $N. Many thanks for your help!',12,0,100,0,0,0, 'Professor Phizzlethorpe - SAY_PROGRESS_9');
DELETE FROM `script_texts` WHERE `entry` IN (-1000000,-1000001,-1000004,-1000005,-1000100,-1000101,-1000102,-1000103,-1000104,-1000105,-1000106,-1000107,-1000108,-1000109,-1000110,-1000111,-1000112,-1000113,-1000114,-1000115,-1000116,-1000117,-1000118,-1000119,-1000120,-1000121,-1000122,-1000123,-1000124,-1000125,-1000126,-1000127,-1000128,-1000129,-1000130,-1000131,-1000132,-1000133,-1000134,-1000135,-1000136,-1000137,-1000138,-1000139,-1000140,-1000141,-1000142,-1000143,-1000144,-1000145,-1000146,-1603209,-1603219,-1000174,-1000175,-1000176,-1000177,-1000178,-1000179,-1000180,-1000181,-1000182,-1000183,-1000184,-1000185,-1000186,-1000188,-1000189,-1000190,-1000191,-1000192,-1000193,-1000194,-1000195,-1000196,-1000197,-1000198,-1000199,-1000200,-1000201,-1000202,-1000203,-1000204,-1000205,-1000206,-1000207,-1000208,-1000209,-1000210,-1000211,-1000212,-1000213,-1000214,-1000215,-1000216,-1000217,-1000218,-1000219,-1000220,-1000221,-1000222,-1000223,-1000224,-1000225,-1000226,-1000227,-1000228,-1000229,-1000230,-1000231,-1000232,-1000233,-1000234,-1000235,-1000236,-1000237,-1000238,-1000239,-1000240,-1000241,-1000242,-1000243,-1000244,-1000245,-1000246,-1000247,-1000248,-1000249,-1000250,-1000251,-1000252,-1000253,-1000254,-1000255,-1000256,-1000257,-1000258,-1000259,-1000260,-1000261,-1000262,-1000263,-1000274,-1000275,-1000276,-1000277,-1000278,-1000279,-1000280,-1000281,-1000282,-1000283,-1000284,-1000285,-1000286,-1000287,-1000288,-1000289,-1000290,-1000291,-1000292,-1000293,-1000294,-1000295,-1000296,-1000297,-1000298,-1000299,-1000300,-1000301,-1000302,-1000303,-1000304,-1000305,-1000306,-1000307,-1000308,-1000309,-1000310,-1000311,-1000312,-1000313,-1000314,-1000315,-1000316,-1000317,-1000318,-1000319,-1000320,-1000321,-1000322,-1000323,-1000324,-1000325,-1000326,-1000327,-1000328,-1000329,-1000330,-1000331,-1000332,-1000333,-1000334,-1000335,-1000336,-1000337,-1000338,-1000339,-1000340,-1000341,-1000342,-1000343,-1000344,-1000345,-1000346,-1000347,-1000348,-1000349,-1000350,-1000351,-1000352,-1000353,-1000354,-1000355,-1000356,-1000357,-1000358,-1000359,-1000362,-1000363,-1000364,-1000365,-1000366,-1000367,-1000368,-1000369,-1000370,-1000371,-1000372,-1000373,-1000374,-1000375,-1000376,-1000377,-1000378,-1000379,-1000380,-1000381,-1000382,-1000383,-1000384,-1000385,-1000386,-1000387,-1000388,-1000389,-1000390,-1000391,-1000392,-1000393,-1000394,-1000395,-1000396,-1000397,-1000398,-1603056,-1603055,-1000403,-1000404,-1000405,-1000406,-1000407,-1000408,-1000409,-1000410,-1000411,-1000412,-1000413,-1000414,-1000415,-1000416,-1000417,-1000418,-1000419,-1000420,-1000421,-1000422,-1000423,-1000424,-1000425,-1000426,-1000427,-1000428,-1000429,-1000430,-1000431,-1000432,-1000433,-1000434,-1000435,-1000436,-1000437,-1000438,-1000439,-1000440,-1000441,-1000442,-1000443,-1000444,-1000445,-1000482,-1000483,-1000484,-1000485,-1000486,-1000487,-1000488,-1000496,-1000497,-1000498,-1000499,-1000450,-1000451,-1000452,-1000453,-1000454,-1000455,-1000456,-1000457,-1000458,-1000459,-1000460,-1000461,-1000462,-1000463,-1033000,-1033001,-1033002,-1033003,-1033004,-1033005,-1033006,-1033007,-1033008,-1036000,-1036001,-1043000,-1043001,-1043002,-1043003,-1043004,-1043005,-1043006,-1043007,-1043008,-1043009,-1043010,-1043011,-1043012,-1043013,-1043014,-1043015,-1043016,-1043017,-1047000,-1047001,-1047002,-1047003,-1047004,-1047005,-1047006,-1047007,-1047008,-1047009,-1047010,-1060005,-1060004,-1060003,-1060002,-1060001,-1060000,-1070000,-1070001,-1070002,-1070003,-1070004,-1070005,-1070006,-1129000,-1129001,-1129002,-1129003,-1129004,-1189000,-1189001,-1189002,-1189003,-1189004,-1189005,-1189006,-1189007,-1189008,-1189009,-1189010,-1189011,-1189012,-1189013,-1189014,-1189015,-1189016,-1189017,-1189018,-1189019,-1189020,-1189021,-1230000,-1230001,-1230002,-1249000,-1249001,-1249002,-1249003,-1249004,-1269000,-1269001,-1269002,-1269003,-1269004,-1269005,-1269006,-1269007,-1269008,-1269009,-1269010,-1269011,-1269012,-1269013,-1269014,-1269015,-1269016,-1269017,-1269018,-1269019,-1269020,-1269021,-1269022,-1269023,-1269024,-1269025,-1269026,-1269027,-1269028,-1309002,-1309003,-1309004,-1309005,-1309006,-1309007,-1309008,-1309009,-1309010,-1309011,-1309012,-1309013,-1309014,-1309015,-1309016,-1309017,-1309018,-1309019,-1309020,-1309021,-1309022,-1309023,-1329000,-1329001,-1329002,-1329003,-1350000,-1350001,-1350002,-1350003,-1350004,-1350005,-1350006,-1350007,-1350008,-1350009,-1350010,-1350011,-1350012,-1350013,-1350014,-1350015,-1350016,-1350017,-1350018,-1350019,-1350020,-1350021,-1350022,-1350023,-1350024,-1350025,-1350026,-1350027,-1350028,-1350029,-1350030,-1409000,-1409001,-1409002,-1409003,-1409004,-1409005,-1409006,-1409007,-1409008,-1409009,-1409010,-1409011,-1409012,-1409013,-1409014,-1409015,-1409016,-1409017,-1409018,-1469000,-1469001,-1469002,-1469003,-1469004,-1469005,-1469006,-1469007,-1469008,-1469009,-1469010,-1469011,-1469012,-1469013,-1469014,-1469015,-1469016,-1469017,-1469018,-1469019,-1469020,-1469021,-1469022,-1469023,-1469024,-1469025,-1469026,-1469027,-1469028,-1469029,-1469030,-1469031,-1509000,-1509001,-1509002,-1509003,-1509004,-1509005,-1509006,-1509007,-1509008,-1509009,-1509010,-1509011,-1509012,-1509013,-1509014,-1509015,-1509016,-1509017,-1509018,-1509019,-1509020,-1509021,-1509022,-1509023,-1509024,-1509025,-1509026,-1509027,-1531000,-1531001,-1531002,-1531003,-1531004,-1531005,-1531006,-1531007,-1531008,-1531009,-1531010,-1531011,-1532000,-1532001,-1532002,-1532003,-1532004,-1532005,-1532006,-1532007,-1532008,-1532009,-1532010,-1532011,-1532012,-1532013,-1532014,-1532015,-1532016,-1532017,-1532018,-1532019,-1532020,-1532021,-1532022,-1532023,-1532024,-1532025,-1532026,-1532027,-1532028,-1532029,-1532030,-1532031,-1532032,-1532033,-1532034,-1532035,-1532036,-1532037,-1532038,-1532039,-1532040,-1532041,-1532042,-1532043,-1532044,-1532045,-1532046,-1532047,-1532048,-1532049,-1532050,-1532051,-1532052,-1532053,-1532054,-1532055,-1532056,-1532057,-1532058,-1532059,-1532060,-1532061,-1532062,-1532063,-1532064,-1532065,-1532066,-1532067,-1532068,-1532069,-1532070,-1532071,-1532072,-1532073,-1532074,-1532075,-1532076,-1532077,-1532078,-1532079,-1532080,-1532081,-1532082,-1532083,-1532084,-1532085,-1532086,-1532087,-1532088,-1532089,-1532090,-1532091,-1532092,-1532093,-1532094,-1532095,-1532096,-1532097,-1532098,-1532099,-1532100,-1532101,-1532102,-1532103,-1532104,-1532105,-1532106,-1532107,-1532108,-1532109,-1532110,-1532111,-1532112,-1532113,-1532114,-1533000,-1533001,-1533002,-1533003,-1533004,-1533005,-1533006,-1533007,-1533008,-1533009,-1533010,-1533011,-1533012,-1533013,-1533014,-1533015,-1533016,-1533017,-1533018,-1533019,-1533020,-1533021,-1533022,-1533023,-1533024,-1533025,-1533026,-1533027,-1533028,-1533029,-1533030,-1533031,-1533032,-1533033,-1533034,-1533035,-1533036,-1533037,-1533038,-1533039,-1533040,-1533041,-1533042,-1533043,-1533044,-1533045,-1533046,-1533047,-1533048,-1533049,-1533050,-1533051,-1533052,-1533053,-1533054,-1533055,-1533056,-1533057,-1533058,-1533059,-1533060,-1533061,-1533062,-1533063,-1533064,-1533065,-1533066,-1533067,-1533068,-1533069,-1533070,-1533071);
DELETE FROM `script_texts` WHERE `entry` IN (-1533072,-1533073,-1533074,-1533075,-1533076,-1533077,-1533078,-1533079,-1533080,-1533081,-1533082,-1533083,-1533084,-1533085,-1533086,-1533087,-1533088,-1533089,-1533090,-1533091,-1533092,-1533093,-1533094,-1533095,-1533096,-1533097,-1533098,-1533099,-1533100,-1533101,-1533102,-1533103,-1533104,-1533105,-1533106,-1533107,-1533108,-1533109,-1533110,-1533111,-1533112,-1533113,-1533114,-1533115,-1533116,-1533117,-1533118,-1534000,-1534001,-1534002,-1534003,-1534004,-1534005,-1534006,-1534007,-1534008,-1534009,-1534010,-1534011,-1534012,-1534013,-1534014,-1534015,-1534016,-1534017,-1534018,-1534019,-1534020,-1534021,-1534022,-1534023,-1534024,-1534025,-1534026,-1534027,-1534028,-1534029,-1534030,-1540000,-1540001,-1540002,-1540003,-1540004,-1540005,-1540006,-1540007,-1540008,-1540009,-1540010,-1540011,-1540012,-1540013,-1540014,-1540015,-1540016,-1540017,-1540018,-1540019,-1540020,-1540021,-1540022,-1540023,-1540024,-1540025,-1540026,-1540027,-1540028,-1540029,-1540030,-1540031,-1540032,-1540033,-1540034,-1540035,-1540036,-1540037,-1540038,-1540039,-1540040,-1540041,-1540042,-1540043,-1540044,-1540045,-1540046,-1540047,-1542000,-1542001,-1542002,-1542003,-1542004,-1542005,-1542006,-1542007,-1542008,-1542009,-1542010,-1542011,-1542012,-1542013,-1542014,-1543000,-1543001,-1543002,-1543003,-1543004,-1543005,-1543006,-1543007,-1543008,-1543009,-1543010,-1543011,-1543012,-1543013,-1543014,-1543015,-1543016,-1543017,-1543018,-1543019,-1543020,-1543021,-1543022,-1543023,-1543024,-1543025,-1544000,-1544001,-1544002,-1544003,-1544004,-1544005,-1544006,-1544007,-1544008,-1544009,-1544010,-1544011,-1544012,-1544013,-1544014,-1544015,-1545000,-1545001,-1545002,-1545003,-1545004,-1545005,-1545006,-1545007,-1545008,-1545009,-1545010,-1545011,-1545012,-1545013,-1545014,-1545015,-1545016,-1545017,-1545018,-1545019,-1545020,-1545021,-1545022,-1545023,-1548000,-1548001,-1548002,-1548003,-1548004,-1548005,-1548006,-1548007,-1548008,-1548009,-1548010,-1548011,-1548012,-1548013,-1548014,-1548015,-1548016,-1548017,-1548018,-1548019,-1548020,-1548021,-1548022,-1548023,-1548024,-1548025,-1548026,-1548027,-1548028,-1548029,-1548030,-1548031,-1548032,-1548033,-1548034,-1548035,-1548036,-1548037,-1548038,-1548039,-1548040,-1548041,-1548042,-1548043,-1548044,-1548045,-1548046,-1548047,-1548048,-1548049,-1548050,-1548051,-1548052,-1548053,-1548054,-1548055,-1550000,-1550001,-1550002,-1550003,-1550004,-1550005,-1550006,-1550007,-1550008,-1550009,-1550010,-1550011,-1550012,-1550013,-1550014,-1550015,-1550016,-1550017,-1550018,-1550019,-1550020,-1550021,-1550022,-1550023,-1550024,-1550025,-1550026,-1550027,-1550028,-1550029,-1550030,-1550031,-1550032,-1550033,-1550034,-1550035,-1550036,-1550037,-1550038,-1550039,-1550040,-1550041,-1550042,-1550043,-1552000,-1552001,-1552002,-1552003,-1552004,-1552005,-1552006,-1552007,-1552008,-1552009,-1552010,-1552011,-1552012,-1552013,-1552014,-1552015,-1552016,-1552017,-1552018,-1552019,-1552020,-1552021,-1552022,-1552023,-1552024,-1552025,-1552026,-1552027,-1552028,-1552029,-1552030,-1553000,-1553001,-1553002,-1553003,-1553004,-1553005,-1553006,-1553007,-1553008,-1553009,-1553010,-1553011,-1553012,-1554000,-1554001,-1554002,-1554003,-1554004,-1554005,-1554006,-1554007,-1554008,-1554009,-1554010,-1554011,-1554012,-1554013,-1554014,-1554015,-1554016,-1554017,-1554018,-1554019,-1554020,-1554021,-1554022,-1554023,-1554024,-1554025,-1554026,-1554027,-1555000,-1555001,-1555002,-1555003,-1555004,-1555005,-1555006,-1555007,-1555008,-1555009,-1555010,-1555011,-1555012,-1555013,-1555014,-1555015,-1555016,-1555017,-1555018,-1555019,-1555020,-1555021,-1555022,-1555023,-1555024,-1555025,-1555026,-1555027,-1555028,-1555029,-1555030,-1555031,-1555032,-1555033,-1555034,-1555035,-1555036,-1556000,-1556001,-1556002,-1556003,-1556004,-1556005,-1556006,-1556007,-1556008,-1556009,-1556010,-1556011,-1556012,-1556013,-1556015,-1557000,-1557001,-1557002,-1557003,-1557004,-1557005,-1557006,-1557007,-1557008,-1557009,-1557010,-1557011,-1557012,-1557013,-1557014,-1558000,-1558001,-1558002,-1558003,-1558004,-1558005,-1558006,-1558007,-1558008,-1558009,-1560000,-1560001,-1560002,-1560003,-1560004,-1560005,-1560006,-1560007,-1560008,-1560009,-1560010,-1560011,-1560012,-1560013,-1560014,-1560015,-1560016,-1560017,-1560018,-1560019,-1560020,-1560021,-1560022,-1560023,-1560024,-1560025,-1560026,-1560027,-1560028,-1560029,-1560030,-1560031,-1560032,-1560033,-1560034,-1560035,-1560036,-1560037,-1560038,-1560039,-1560040,-1560041,-1560042,-1560043,-1560044,-1560045,-1560046,-1560047,-1560048,-1560049,-1564000,-1564001,-1564002,-1564003,-1564004,-1564005,-1564006,-1564007,-1564008,-1564009,-1564010,-1564011,-1564012,-1564013,-1564014,-1564015,-1564016,-1564017,-1564018,-1564019,-1564020,-1564021,-1564022,-1564023,-1564024,-1564025,-1564026,-1564027,-1564028,-1564029,-1564030,-1564031,-1564032,-1564033,-1564034,-1564035,-1564036,-1564037,-1564038,-1564039,-1564040,-1564041,-1564042,-1564043,-1564044,-1564045,-1564046,-1564047,-1564048,-1564049,-1564050,-1564051,-1564052,-1564053,-1564054,-1564055,-1564056,-1564057,-1564058,-1564059,-1564060,-1564061,-1564062,-1564063,-1564064,-1564065,-1564066,-1564067,-1564068,-1564069,-1564070,-1564071,-1564072,-1564073,-1564074,-1564075,-1564076,-1564077,-1564078,-1564079,-1564080,-1564081,-1564082,-1564083,-1564084,-1564085,-1564086,-1564087,-1564088,-1564089,-1564090,-1564091,-1564092,-1564093,-1564094,-1564095,-1564096,-1565000,-1565001,-1565002,-1565003,-1565004,-1565005,-1565006,-1565007,-1565008,-1565009,-1565010,-1565011,-1565012,-1565013,-1565014,-1565015,-1565016,-1565017,-1565018,-1565019,-1568000,-1568001,-1568002,-1568003,-1568004,-1568005,-1568006,-1568007,-1568008,-1568009,-1568010,-1568011,-1568012,-1568013,-1568014,-1568015,-1568016,-1568017,-1568018,-1568019,-1568020,-1568021,-1568022,-1568023,-1571000,-1571001,-1571002,-1571003,-1571004,-1571005,-1571006,-1571007,-1571008,-1571009,-1571010,-1571011,-1571012,-1571013,-1571014,-1571015,-1571016,-1571017,-1571018,-1571019,-1571020,-1571021,-1571022,-1571023,-1571024,-1571025,-1571026,-1571027,-1571028,-1571029,-1571030,-1571031,-1571032,-1571033,-1571034,-1574000,-1574001,-1574002,-1574003,-1574004,-1574005,-1574006,-1574007,-1574008,-1574009,-1574010,-1574011,-1574012,-1574013,-1574014,-1574015,-1574016,-1574017,-1574018,-1574019,-1574020,-1576000,-1576001,-1576002,-1576003,-1576004,-1576005,-1576010,-1576011,-1576012,-1576013,-1576020,-1576021,-1576022,-1576023,-1576024,-1576040,-1576041,-1576042,-1576043,-1576044,-1580000,-1580001,-1580002,-1580003,-1580004,-1580005,-1580006,-1580007,-1580008,-1580009,-1580010,-1580011,-1580012,-1580013,-1580014,-1580015,-1580016,-1580017,-1580018,-1580019,-1580020,-1580021,-1580022,-1580023,-1580024,-1580025,-1580026,-1580027,-1580028,-1580029,-1580030,-1580031,-1580032,-1580033,-1580034,-1580035,-1580036,-1580037,-1580038,-1580039,-1580040,-1580041,-1580042,-1580043,-1580044,-1580045,-1580046,-1580047,-1580048,-1580049,-1580050,-1580051,-1580052,-1580053,-1580054,-1580055,-1580056,-1580057,-1580058,-1580059,-1580060,-1580061,-1580062,-1580063);
DELETE FROM `script_texts` WHERE `entry` IN (-1580064,-1580065,-1580066,-1580067,-1580068,-1580069,-1580070,-1580071,-1580072,-1580073,-1580074,-1580075,-1580076,-1580077,-1580078,-1580079,-1580080,-1580081,-1580082,-1580083,-1580084,-1580085,-1580086,-1580087,-1580088,-1580089,-1580090,-1580091,-1580092,-1580093,-1580094,-1580095,-1580096,-1580097,-1580098,-1580099,-1580100,-1580101,-1580102,-1580103,-1580104,-1580105,-1580106,-1580107,-1580108,-1580109,-1585000,-1585001,-1585002,-1585003,-1585004,-1585005,-1585006,-1585007,-1585008,-1585009,-1585010,-1585011,-1585012,-1585013,-1585014,-1585015,-1585016,-1585017,-1585018,-1585019,-1585020,-1585021,-1585022,-1585023,-1585024,-1585025,-1585026,-1585027,-1585028,-1585029,-1590000,-1590001,-1590002,-1601003,-1601002,-1601000,-1601001,-1602000,-1602001,-1602002,-1602003,-1602004,-1602005,-1602006,-1602007,-1602008,-1602009,-1602010,-1602011,-1602012,-1602013,-1602014,-1602015,-1602016,-1602017,-1602018,-1602019,-1602020,-1602021,-1602022,-1602023,-1602024,-1602025,-1602026,-1602027,-1602028,-1602029,-1602030,-1602031,-1602032,-1602033,-1602034,-1602035,-1602036,-1602037,-1602038,-1602039,-1602040,-1602041,-1602042,-1599000,-1599001,-1599002,-1599003,-1599004,-1599005,-1599006,-1599007,-1599008,-1599009,-1599010,-1599011,-1599012,-1599013,-1603000,-1599015,-1599016,-1599017,-1599018,-1599019,-1599020,-1599021,-1599022,-1599023,-1599024,-1599025,-1599026,-1599027,-1599028,-1599029,-1599030,-1599031,-1599032,-1599033,-1599034,-1599035,-1599036,-1599037,-1599038,-1599039,-1599040,-1599041,-1599042,-1599043,-1599044,-1599064,-1599046,-1599047,-1599048,-1599049,-1599050,-1599051,-1599052,-1599053,-1599054,-1599055,-1599056,-1599057,-1599058,-1599059,-1599060,-1599061,-1599062,-1599063,-1599045,-1599065,-1599066,-1599067,-1599068,-1604010,-1604012,-1604013,-1604014,-1604015,-1604016,-1604017,-1608000,-1615000,-1615001,-1615002,-1615003,-1615004,-1615005,-1615006,-1615007,-1615008,-1615009,-1615010,-1615011,-1615012,-1615013,-1615014,-1615015,-1615016,-1615017,-1615018,-1615019,-1615020,-1615021,-1615022,-1615023,-1615024,-1615025,-1615026,-1615027,-1615028,-1615029,-1615030,-1615031,-1615032,-1615033,-1615034,-1615035,-1615036,-1615037,-1615038,-1615039,-1615040,-1615041,-1615042,-1619021,-1619022,-1619023,-1619024,-1619025,-1619026,-1619027,-1619028,-1999900,-1999901,-1999902,-1999903,-1999904,-1999905,-1999906,-1999907,-1999908,-1999909,-1999910,-1999911,-1999912,-1999913,-1999914,-1999915,-1999916,-1999917,-1999918,-1999919,-1999920,-1999921,-1999922,-1999923,-1999924,-1999925,-1609000,-1609001,-1609002,-1609003,-1609004,-1609005,-1609006,-1609007,-1609008,-1609009,-1609010,-1609011,-1609012,-1609013,-1609014,-1609015,-1609016,-1609025,-1609026,-1609027,-1609028,-1609029,-1609030,-1609031,-1609032,-1609033,-1609034,-1609035,-1609036,-1609037,-1609038,-1609039,-1609040,-1609041,-1609042,-1609043,-1609044,-1609045,-1609046,-1609047,-1609048,-1609049,-1609050,-1609051,-1609052,-1609053,-1609054,-1609055,-1609056,-1609057,-1609058,-1609059,-1609060,-1609061,-1609062,-1609063,-1609064,-1609065,-1609066,-1609067,-1609068,-1609069,-1609070,-1609071,-1609072,-1609073,-1609074,-1609075,-1609076,-1609077,-1609078,-1609080,-1609081,-1609082,-1609083,-1609084,-1609085,-1609086,-1609087,-1609088,-1609089,-1609090,-1609091,-1609092,-1609093,-1609094,-1609095,-1609096,-1609097,-1609098,-1609501,-1609502,-1609503,-1609504,-1609505,-1609506,-1609507,-1609508,-1609509,-1609510,-1609511,-1609512,-1609513,-1609514,-1609515,-1609516,-1609517,-1609518,-1609519,-1609531,-1609532,-1609561,-1609562,-1609563,-1609564,-1609565,-1609566,-1609567,-1609568,-1609569,-1609570,-1609581,-1609582,-1609583,-1609584,-1609585,-1609586,-1609201,-1609202,-1609203,-1609204,-1609205,-1609206,-1609207,-1609208,-1609209,-1609210,-1609211,-1609212,-1609213,-1609214,-1609215,-1609216,-1609217,-1609218,-1609219,-1609220,-1609221,-1609222,-1609223,-1609224,-1609225,-1609226,-1609227,-1609228,-1609229,-1609230,-1609231,-1609232,-1609233,-1609234,-1609235,-1609236,-1609237,-1609238,-1609239,-1609240,-1609241,-1609242,-1609243,-1609244,-1609245,-1609246,-1609247,-1609248,-1609249,-1609250,-1609251,-1609252,-1609253,-1609254,-1609255,-1609256,-1609257,-1609258,-1609259,-1609260,-1609261,-1609262,-1609263,-1609264,-1609265,-1609266,-1609267,-1609268,-1609269,-1609270,-1609271,-1609272,-1609273,-1609274,-1609275,-1609276,-1609277,-1609278,-1609279,-1609280,-1609281,-1609282,-1609283,-1609284,-1609285,-1609286,-1048000,-1048001,-1048002,-1571035,-1750040,-1750041,-1750042,-1750043,-1750044,-1700003,-1700002,-1700001,-1000464,-1000465,-1000466,-1000467,-1000468,-1048003,-1048004,-1033009,-1090000,-1090001,-1090002,-1090003,-1090004,-1090005,-1090006,-1090007,-1090008,-1090009,-1090010,-1090011,-1090012,-1090013,-1090014,-1090015,-1090016,-1090017,-1090018,-1090019,-1090020,-1090021,-1090022,-1090023,-1090024,-1090025,-1090026,-1090027,-1090028,-1000469,-1000470,-1000471,-1000472,-1000473,-1600000,-1600001,-1600002,-1600003,-1600004,-1600005,-1600006,-1600007,-1600008,-1600009,-1600010,-1600011,-1600012,-1600013,-1600014,-1600015,-1600016,-1600017,-1600018,-1608001,-1608002,-1608003,-1608004,-1608005,-1608006,-1608007,-1608008,-1608009,-1608010,-1608011,-1608012,-1608013,-1608014,-1608015,-1608016,-1608017,-1608018,-1608019,-1608020,-1608021,-1608022,-1608023,-1608024,-1608025,-1608026,-1608027,-1608028,-1608029,-1608030,-1608031,-1608032,-1608033,-1608034,-1608035,-1608036,-1608037,-1608038,-1608039,-1608040,-1608041,-1608042,-1608043,-1608044,-1608045,-1800013,-1800012,-1800011,-1800010,-1800009,-1800008,-1800007,-1800006,-1800005,-1800004,-1800003,-1800002,-1800001,-1571036,-1571037,-1571038,-1603001,-1603002,-1603003,-1603004,-1603005,-1603006,-1603007,-1603008,-1603009,-1603010,-1603011,-1603012,-1603013,-1603014,-1603015,-1603016,-1603017,-1603018,-1603019,-1603020,-1603021,-1603022,-1603023,-1603024,-1603025,-1603026,-1603030,-1603031,-1603032,-1603033,-1603034,-1603035,-1603036,-1603037,-1603040,-1603041,-1603042,-1603043,-1603044,-1603045,-1603046,-1603047,-1603050,-1603051,-1603052,-1603053,-1603054,-1603060,-1603061,-1603062,-1603063,-1603064,-1603065,-1603066,-1603067,-1603068,-1603069,-1603070,-1603071,-1603072,-1603073,-1603074,-1603075,-1603180,-1603181,-1603182,-1603183,-1603184,-1603185,-1603186,-1603187,-1603188,-1603189,-1603190,-1603191,-1603192,-1603193,-1603194,-1603195,-1603196,-1603197,-1603198,-1603199,-1603200,-1603201,-1603210,-1603211,-1603212,-1603213,-1603214,-1603215,-1603216,-1603217,-1603218,-1603220,-1603221,-1603222,-1603223,-1603224,-1603225,-1603226,-1603227,-1603228,-1603230,-1603231,-1603232,-1603233,-1603234,-1603235,-1603236,-1603237,-1603238,-1603240,-1603241,-1603242,-1603243,-1603244,-1603245,-1603246,-1603247,-1603248,-1603249,-1603250,-1603251,-1603252,-1603253,-1603254,-1603255,-1603256,-1603257,-1603258,-1603259,-1603260,-1603261,-1603270,-1603271,-1603272,-1603273,-1603274,-1603275,-1603276,-1603277,-1603278,-1603279,-1603280,-1603281,-1603282,-1603283,-1603284,-1603285,-1603286,-1603287,-1603290,-1603291,-1603292,-1603293,-1603294,-1603295,-1603296,-1603300);
DELETE FROM `script_texts` WHERE `entry` IN (-1603301,-1603302,-1603303,-1603304,-1603305,-1603306,-1603307,-1603308,-1603310,-1603311,-1603312,-1603313,-1603314,-1603315,-1603316,-1603317,-1603318,-1603319,-1603330,-1603331,-1603332,-1603333,-1603334,-1603335,-1603336,-1603337,-1603338,-1603339,-1603340,-1603341,-1595000,-1595001,-1595002,-1595003,-1595004,-1595005,-1595006,-1595007,-1595008,-1595009,-1595010,-1595011,-1595012,-1595013,-1595014,-1595015,-1595016,-1595017,-1595018,-1595019,-1595020,-1595021,-1595022,-1595023,-1595024,-1595025,-1595026,-1595027,-1595028,-1595029,-1595030,-1595031,-1595032,-1595033,-1595034,-1595035,-1595036,-1595037,-1595038,-1595039,-1595040,-1595041,-1595042,-1595043,-1595044,-1595045,-1595046,-1595047,-1595070,-1595071,-1595072,-1595073,-1595074,-1595075,-1595076,-1595077,-1595078,-1595079,-1595080,-1595081,-1595082,-1595083,-1595084,-1595085,-1595086,-1595087,-1595088,-1595089,-1595090,-1595091,-1595092,-1595093,-1595094,-1595095,-1595096,-1595097,-1595098,-1595099,-1595100,-1595101,-1595102,-1595103,-1595104,-1595105,-1595106,-1595107,-1595108,-1595109,-1595110,-1595111,-1595112,-1595113,-1595114,-1595115,-1595116,-1595117,-1595118,-1595119,-1595120,-1658001,-1658002,-1658003,-1658004,-1658005,-1658006,-1658007,-1658010,-1658011,-1658012,-1658013,-1658014,-1658015,-1658016,-1658017,-1658018,-1658020,-1658021,-1658030,-1658031,-1658032,-1658033,-1658034,-1658035,-1658036,-1658037,-1658038,-1658039,-1658040,-1658041,-1658065,-1658064,-1658062,-1658063,-1658061,-1658060,-1658059,-1658058,-1658057,-1658056,-1658055,-1658054,-1658053,-1658052,-1658051,-1658050,-1632001,-1632002,-1632003,-1632004,-1632005,-1632006,-1632010,-1632011,-1632012,-1632013,-1632014,-1632015,-1632016,-1632017,-1632018,-1632019,-1632020,-1632021,-1632022,-1632023,-1632024,-1632025,-1632026,-1632027,-1632028,-1632029,-1632030,-1632040,-1632041,-1632042,-1632043,-1632044,-1632045,-1632046,-1632047,-1632050,-1632051,-1632052,-1632053,-1632054,-1632055,-1601004,-1601005,-1601006,-1601007,-1601008,-1601009,-1601010,-1601011,-1601012,-1601013,-1601014,-1601015,-1601016,-1601017,-1601018,-1601019,-1601020,-1601021,-1601022,-1800038,-1800037,-1800035,-1800034,-1800032,-1800028,-1800025,-1800020,-1800019,-1800018,-1800046,-1800045,-1800044,-1800042,-1800043,-1800047,-1800048,-1800049,-1800050,-1800051,-1800052,-1800053,-1800054,-1800055,-1800056,-1800057,-1800058,-1800059,-1800060,-1800061,-1800062,-1800063,-1571039,-1571040,-1571041,-1668001,-1668002,-1668003,-1668004,-1668005,-1668006,-1668007,-1668008,-1668009,-1668010,-1668011,-1668012,-1668013,-1668014,-1668015,-1668016,-1668017,-1668018,-1668019,-1668020,-1668021,-1668022,-1668023,-1668024,-1668025,-1668026,-1668027,-1668028,-1668029,-1668030,-1668031,-1668032,-1668033,-1668034,-1668035,-1668036,-1668037,-1668038,-1668039,-1668040,-1668041,-1668042,-1668043,-1668050,-1668051,-1668052,-1668053,-1668054,-1668055,-1668060,-1668061,-1668062,-1668063,-1668064,-1668065,-1578000,-1578001,-1578002,-1578003,-1578004,-1575028,-1575029,-1575030,-1575031,-1575032,-1575033,-1575034,-1575035,-1575036,-1575037,-1575004,-1575005,-1575006,-1575007,-1575008,-1575009,-1575010,-1575011,-1575012,-1575013,-1000474,-1000475,-1000476,-1209000,-1209001,-1209002,-1209003,-1649000,-1649010,-1649011,-1649012,-1649020,-1649021,-1649022,-1649030,-1649031,-1649032,-1649033,-1649034,-1649035,-1649036,-1649037,-1649038,-1649039,-1649115,-1649116,-1649117,-1649118,-1649120,-1649121,-1649122,-1649123,-1649040,-1649041,-1649042,-1649043,-1649044,-1649045,-1649046,-1649047,-1649048,-1649049,-1649050,-1649055,-1649056,-1649057,-1649058,-1649059,-1649060,-1649061,-1649062,-1649063,-1649070,-1649071,-1649072,-1649073,-1649074,-1649075,-1649076,-1649077,-1649080,-1649081,-1649082,-1649083,-1649084,-1649085,-1649086,-1649087,-1649088,-1649089,-1649090,-1649091,-1649092,-1649093,-1649094,-1649095,-1649096,-1649097,-1649098,-1649099,-1649100,-1649101,-1649102,-1649103,-1649104,-1649105,-1649106,-1649107,-1649108,-1649109,-1649110,-1000500,-1000501,-1000502,-1000503,-1000504,-1000505,-1000506,-1000575,-1000576,-1000577,-1000578,-1000507,-1000508,-1000509,-1000510,-1000511,-1000512,-1000513,-1000514,-1000515,-1000516,-1000517,-1000518,-1000519,-1000520,-1000521,-1000522,-1000523,-1000524,-1000525,-1000571,-1000572,-1000573,-1000574,-1000606,-1000607,-1000609,-1000610,-1000611,-1000612,-1000613,-1000614,-1000615,-1000616,-1000617,-1000618,-1000619,-1000620,-1000621,-1000629,-1000630,-1000631,-1000632,-1000633,-1000634,-1000635,-1000636,-1800064,-1800065,-1800066,-1800067,-1800068,-1800069,-1800070,-1000600,-1571042,-1571043,-1575015,-1575016,-1575017,-1575018,-1575022,-1575000,-1575001,-1575002,-1599014,-1604018,-1604019,-1604020,-1604021,-1604022,-1604023,-1604000,-1604001,-1604003,-1604004,-1604005,-1604006,-1604007,-1604008,-1619017,-1619018,-1619019,-1619000,-1619001,-1619002,-1619008,-1619009,-1619030,-1619034,-1603229,-1575019,-1575020,-1604002,-1604009,-1619003,-1619004,-1619005,-1619007,-1619010,-1619011,-1619012,-1619013,-1619020,-1619031,-1619032,-1619033,-1603268,-1603267,-1603266,-1603265,-1603264,-1603263,-1603262,-1000002,-1000003,-1575023,-1575024,-1575025,-1575026,-1575027,-1619015,-1619006,-1575021,-1619016,-1571047,-1571046,-1571045,-1571044,-1603502,-1603503,-1603504,-1603505,-1603506,-1603507,-1603508,-1603509,-1603510,-1603535,-1603536,-1603537,-1603538,-1603539,-1603289,-1603297,-1603298,-1603299,-1658066,-1658067,-1658068,-1658069,-1658070,-1800071,-1800072,-1800073,-1800074,-1230003,-1230004,-1230005,-1230006,-1230007,-1230008,-1578005,-1578006,-1578007,-1578008,-1578009,-1578010,-1578011,-1578012,-1578013,-1578014,-1578015,-1578016);

INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(0, -1000000, '<TrinityScript Text Entry Missing!>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'DEFAULT_TEXT'),
(0, -1000001, '%s goes into a killing frenzy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'EMOTE_GENERIC_FRENZY_KILL'),
(0, -1000004, '%s goes into a berserker rage!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'EMOTE_GENERIC_BERSERK'),
(0, -1000005, '%s goes into a berserker rage!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'EMOTE_GENERIC_BERSERK_RAID'),
(6109, -1000100, 'Come, little ones. Face me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'azuregos SAY_TELEPORT'),
(467, -1000101, 'Follow me, $N. I''ll take you to the Defias hideout. But you better protect me or I am as good as dead.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'defias traitor SAY_START'),
(467, -1000102, 'The entrance is hidden here in Moonbrook. Keep your eyes peeled for thieves. They want me dead.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'defias traitor SAY_PROGRESS'),
(467, -1000103, 'You can go tell Stoutmantle this is where the Defias Gang is holed up, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'defias traitor SAY_END'),
(467, -1000104, '%s coming in fast! Prepare to fight!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'defias traitor SAY_AGGRO_1'),
(467, -1000105, 'Help!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'defias traitor SAY_AGGRO_2'),
(12858, -1000106, 'Everyone ready?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'torek SAY_READY'),
(12858, -1000107, 'Ok, Lets move out!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'torek SAY_MOVE'),
(12858, -1000108, 'Prepare yourselves. Silverwing is just around the bend.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'torek SAY_PREPARE'),
(12858, -1000109, 'Silverwing is ours!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'torek SAY_WIN'),
(12858, -1000110, 'Go report that the outpost is taken. We will remain here.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'torek SAY_END'),
(17312, -1000111, 'Our house is this way, through the thicket.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'magwin SAY_START'),
(17312, -1000112, 'Help me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'magwin SAY_AGGRO'),
(17312, -1000113, 'My poor family. Everything has been destroyed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'magwin SAY_PROGRESS'),
(17312, -1000114, 'Father! Father! You''re alive!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'magwin SAY_END1'),
(17312, -1000115, 'You can thank $N for getting me back here safely, father.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'magwin SAY_END2'),
(17312, -1000116, '%s hugs her father.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 7, 0, 'magwin EMOTE_HUG'),
(16993, -1000117, 'Thank you for agreeing to help. Now, let''s get out of here $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'wounded elf SAY_ELF_START'),
(16993, -1000118, 'Over there! They''re following us!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'wounded elf SAY_ELF_SUMMON1'),
(16993, -1000119, 'Allow me a moment to rest. The journey taxes what little strength I have.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 16, 'wounded elf SAY_ELF_RESTING'),
(16993, -1000120, 'Did you hear something?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'wounded elf SAY_ELF_SUMMON2'),
(16993, -1000121, 'Falcon Watch, at last! Now, where''s my... Oh no! My pack, it''s missing! Where has -', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'wounded elf SAY_ELF_COMPLETE'),
(16993, -1000122, 'You won''t keep me from getting to Falcon Watch!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'wounded elf SAY_ELF_AGGRO'),
(0, -1000123, 'Ready when you are, $c.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 15, 'big will SAY_BIG_WILL_READY'),
(0, -1000124, 'The Affray has begun. $n, get ready to fight!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'twiggy SAY_TWIGGY_BEGIN'),
(0, -1000125, 'You! Enter the fray!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'twiggy SAY_TWIGGY_FRAY'),
(0, -1000126, 'Challenger is down!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'twiggy SAY_TWIGGY_DOWN'),
(0, -1000127, 'The Affray is over.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'twiggy SAY_TWIGGY_OVER'),
(19831, -1000128, 'We need you to send reinforcements to Manaforge Duro, Ardonis. This is not a request, it''s an order.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'dawnforge SAY_COMMANDER_DAWNFORGE_1'),
(19831, -1000129, 'You cannot be serious! We are severely understaffed and can barely keep this manaforge functional!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'dawnforge SAY_ARCANIST_ARDONIS_1'),
(19831, -1000130, 'You will do as ordered. Manaforge Duro has come under heavy attack by mana creatures and the situation is out of control. Failure to comply will not be tolerated!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'dawnforge SAY_COMMANDER_DAWNFORGE_2'),
(19831, -1000131, 'Indeed, it is not a request.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'dawnforge SAY_PATHALEON_CULATOR_IMAGE_1'),
(19831, -1000132, 'My lord!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'dawnforge SAY_COMMANDER_DAWNFORGE_3'),
(19831, -1000133, 'Duro will be reinforced! Ultris was a complete disaster. I will NOT have that mistake repeated!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'dawnforge PATHALEON_CULATOR_IMAGE_2'),
(19831, -1000134, 'We''ve had too many setbacks along the way: Hellfire Citadel, Fallen Sky Ridge, Firewing Point... Prince Kael''thas will tolerate no further delays. I will tolerate nothing other than complete success!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'dawnforge PATHALEON_CULATOR_IMAGE_2_1'),
(19831, -1000135, 'I am returning to Tempest Keep. See to it that I do not have reason to return!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'dawnforge PATHALEON_CULATOR_IMAGE_2_2'),
(19831, -1000136, 'Yes, my lord.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'dawnforge COMMANDER_DAWNFORGE_4 SAY_ARCANIST_ARDONIS_2'),
(19831, -1000137, 'See to it, Ardonis!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'dawnforge COMMANDER_DAWNFORGE_5'),
(17085, -1000138, 'Avruu''s magic... it still controls me. You must fight me, mortal. It''s the only way to break the spell!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'aeranas SAY_SUMMON'),
(17085, -1000139, 'Avruu''s magic is broken! I''m free once again!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'aeranas SAY_FREE'),
(16295, -1000140, 'Let''s go.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'lilatha SAY_START'),
(16295, -1000141, '$N, let''s use the antechamber to the right.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'lilatha SAY_PROGRESS1'),
(16295, -1000142, 'I can see the light at the end of the tunnel!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'lilatha SAY_PROGRESS2'),
(16295, -1000143, 'There''s Farstrider Enclave now, $C. Not far to go... Look out! Troll ambush!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'lilatha SAY_PROGRESS3'),
(16295, -1000144, 'Thank you for saving my life and bringing me back to safety, $N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'lilatha SAY_END1'),
(16295, -1000145, 'Captain Helios, I''ve been rescued from the Amani Catacombs. Reporting for duty, sir!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'lilatha SAY_END2'),
(16295, -1000146, 'Liatha, get someone to look at those injuries. Thank you for bringing her back safely.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'lilatha CAPTAIN_ANSWER'),
(32845, -1603209, 'Hodir begins to cast Flash Freeze!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'Hodir - EMOTE_FREEZE'),
(32845, -1603219, 'Hodir gains Frozen Blows!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'Hodir - EMOTE_BLOW'),
(21469, -1000174, 'Good $N, you are under the spell''s influence. I must analyze it quickly, then we can talk.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'daranelle SAY_SPELL_INFLUENCE'),
(0, -1000175, 'Thank you, mortal.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 11, 0, ' SAY_JUST_EATEN'),
(0, -1000176, 'The last thing I remember is the ship falling and us getting into the pods. I''ll go see how I can help. Thank you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'draenei_survivor SAY_HEAL1'),
(0, -1000177, '$C, Where am I? Who are you? Oh no! What happened to the ship?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'draenei_survivor SAY_HEAL2'),
(0, -1000178, '$C You saved me! I owe you a debt that I can never repay. I''ll go see if I can help the others.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'draenei_survivor SAY_HEAL3'),
(0, -1000179, 'Ugh... what is this place? Is that all that''s left of the ship over there?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'draenei_survivor SAY_HEAL4'),
(0, -1000180, 'Oh, the pain...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'draenei_survivor SAY_HELP1'),
(0, -1000181, 'Everything hurts, Please make it stop...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'draenei_survivor SAY_HELP2'),
(0, -1000182, 'Ughhh... I hurt. Can you help me?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'draenei_survivor SAY_HELP3'),
(0, -1000183, 'I don''t know if I can make it, please help me...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'draenei_survivor SAY_HELP4'),
(0, -1000184, 'Yes Master, all goes along as planned.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'engineer_spark SAY_TEXT'),
(0, -1000185, '%s puts the shell to his ear.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 7, 0, 'engineer_spark EMOTE_SHELL'),
(0, -1000186, 'Now I cut you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 7, 0, 'engineer_spark SAY_ATTACK'),
(0, -1000188, 'Deployment sucessful. Trespassers will be neutralized.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'converted_sentry SAY_CONVERTED_1'),
(0, -1000189, 'Objective acquired. Initiating security routines.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'converted_sentry SAY_CONVERTED_2'),
(0, -1000190, 'In Nagrand, food hunt ogre!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ' SAY_LUMP_0'),
(0, -1000191, 'You taste good with maybe a little salt and pepper.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ' SAY_LUMP_1'),
(0, -1000192, 'OK, OK! Lump give up!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ' SAY_LUMP_DEFEAT'),
(0, -1000193, 'Thank you, dear $C, you just saved my life.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'stillblade SAY_HEAL'),
(0, -1000194, 'I give up! Please don''t kill me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'unkor SAY_SUBMIT'),
(0, -1000195, 'I choose the third option: KILLING YOU!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'floon SAY_FLOON_ATTACK'),
(0, -1000196, 'Belore...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'lady_sylvanas SAY_LAMENT_END'),
(0, -1000197, '%s kneels down and pick up the amulet.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 1, 0, 'lady_sylvanas EMOTE_LAMENT_END'),
(0, -1000198, 'Taste blade, mongrel!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_GUARD_SIL_AGGRO1'),
(0, -1000199, 'Please tell me that you didn''t just do what I think you just did. Please tell me that I''m not going to have to hurt you...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_GUARD_SIL_AGGRO2'),
(9623, -1000200, 'As if we don''t have enough problems, you go and create more!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_GUARD_SIL_AGGRO3'),
(9623, -1000201, 'I''m saved! Thank you, doctor!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'injured_patient SAY_DOC1'),
(9623, -1000202, 'HOORAY! I AM SAVED!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'injured_patient SAY_DOC2'),
(9623, -1000203, 'Sweet, sweet embrace... take me...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'injured_patient SAY_DOC3'),
(9623, -1000204, '%s looks up at you quizzically. Maybe you should inspect it?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'cluck EMOTE_A_HELLO'),
(9623, -1000205, '%s looks at you unexpectadly.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'cluck EMOTE_H_HELLO'),
(23139, -1000206, '%s starts pecking at the feed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'cluck EMOTE_CLUCK_TEXT2'),
(23139, -1000207, 'You have my blessing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'ashyen_and_keleth SAY_REWARD_BLESS'),
(28315, -1000208, 'Frenzyheart kill you if you come back. You no welcome here no more!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'vekjik SAY_TEXTID_VEKJIK1'),
(15420, -1000209, 'Very well. Let''s see what you have to show me, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'anvilward SAY_ANVIL1'),
(15420, -1000210, 'What manner of trick is this, $R? If you seek to ambush me, I warn you I will not go down quietly!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'anvilward SAY_ANVIL2'),
(23139, -1000211, 'Warning! %s emergency shutdown process initiated by $N. Shutdown will complete in two minutes.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'manaforge_control EMOTE_START'),
(23139, -1000212, 'Emergency shutdown will complete in one minute.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'manaforge_control EMOTE_60'),
(23139, -1000213, 'Emergency shutdown will complete in thirty seconds.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'manaforge_control EMOTE_30'),
(22083, -1000214, 'Emergency shutdown will complete in ten seconds.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'manaforge_control EMOTE_10'),
(22083, -1000215, 'Emergency shutdown complete.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'manaforge_control EMOTE_COMPLETE'),
(22083, -1000216, 'Emergency shutdown aborted.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'manaforge_control EMOTE_ABORT'),
(22083, -1000217, 'Greetings, $N. I will guide you through the cavern. Please try and keep up.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'WHISPER_CUSTODIAN_1'),
(22083, -1000218, 'We do not know if the Caverns of Time have always been accessible to mortals. Truly, it is impossible to tell as the Timeless One is in perpetual motion, changing our timeways as he sees fit. What you see now may very well not exist tomorrow. You may wake up and have no memory of this place.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'WHISPER_CUSTODIAN_2'),
(22083, -1000219, 'It is strange, I know... Most mortals cannot actually comprehend what they see here, as often, what they see is not anchored within their own perception of reality.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'WHISPER_CUSTODIAN_3'),
(22083, -1000220, 'Follow me, please.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'WHISPER_CUSTODIAN_4'),
(23141, -1000221, 'There are only two truths to be found here: First, that time is chaotic, always in flux, and completely malleable and second, perception does not dictate reality.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'WHISPER_CUSTODIAN_5'),
(21648, -1000222, 'As custodians of time, we watch over and care for Nozdormu''s realm. The master is away at the moment, which means that attempts are being made to dramatically alter time. The master never meddles in the affairs of mortals but instead corrects the alterations made to time by others. He is reactionary in this regard.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'WHISPER_CUSTODIAN_6'),
(0, -1000223, 'For normal maintenance of time, the Keepers of Time are sufficient caretakers. We are able to deal with most ordinary disturbances. I speak of little things, such as rogue mages changing something in the past to elevate their status or wealth in the present.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'WHISPER_CUSTODIAN_7'),
(0, -1000224, 'These tunnels that you see are called timeways. They are infinite in number. The ones that currently exist in your reality are what the master has deemed as ''trouble spots.'' These trouble spots may differ completely in theme but they always share a cause. That is, their existence is a result of the same temporal disturbance. Remember that should you venture inside one...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'WHISPER_CUSTODIAN_8'),
(0, -1000225, 'This timeway is in great disarray! We have agents inside right now attempting to restore order. What information I have indicates that Thrall''s freedom is in jeopardy. A malevolent organization known as the Infinite Dragonflight is trying to prevent his escape. I fear without outside assistance, all will be lost.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'WHISPER_CUSTODIAN_9'),
(0, -1000226, 'We have very little information on this timeway. Sa''at has been dispatched and is currently inside. The data we have gathered from his correspondence is that the Infinite Dragonflight are once again attempting to alter time. Could it be that the opening of the Dark Portal is being targeted for sabotage? Let us hope not...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'WHISPER_CUSTODIAN_10'),
(0, -1000227, 'This timeway is currently collapsing. What that may hold for the past, present and future is currently unknown...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'WHISPER_CUSTODIAN_11'),
(0, -1000228, 'The timeways are currently ranked in order from least catastrophic to most catastrophic. Note that they are all classified as catastrophic, meaning that any single one of these timeways collapsing would mean that your world would end. We only classify them in such a way so that the heroes and adventurers that are sent here know which timeway best suits their abilities.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'WHISPER_CUSTODIAN_12'),
(0, -1000229, 'All we know of this timeway is that it leads to Mount Hyjal. The Infinite Dragonflight have gone to great lengths to prevent our involvement. We know next to nothing, mortal. Soridormi is currently attempting to break through the timeway''s defenses but has thus far been unsuccessful. You might be our only hope of breaking through and resolving the conflict.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'WHISPER_CUSTODIAN_13'),
(0, -1000230, 'Our time is at an end $N. I would wish you luck, if such a thing existed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'WHISPER_CUSTODIAN_14'),
(0, -1000231, 'Ah, $GPriest:Priestess; you came along just in time. I appreciate it.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 20, 'garments SAY_COMMON_HEALED'),
(0, -1000232, 'Thank you! Thank you, $GPriest:Priestess;. Now I can take on those gnolls with your power to back me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 4, 'garments SAY_DG_KEL_THANKS'),
(0, -1000233, 'Farewell to you, and may shadow always protect you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 3, 'garments SAY_DG_KEL_GOODBYE'),
(0, -1000234, 'Follow me, stranger. This won''t take long.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_KHAD_SERV_0'),
(2768, -1000235, 'Shattrath was once the draenei capital of this world. Its name means "dwelling of light."', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 'SAY_KHAD_SERV_1'),
(2768, -1000236, 'When the Burning Legion turned the orcs against the draenei, the fiercest battle was fought here. The draenei fought tooth and nail, but in the end the city fell.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 'SAY_KHAD_SERV_2'),
(2768, -1000237, 'The city was left in ruins and darkness... until the Sha''tar arrived.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 'SAY_KHAD_SERV_3'),
(2768, -1000238, 'Let us go into the Lower City. I will warn you that as one of the only safe havens in Outland, Shattrath has attracted droves of refugees from all wars, current and past.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 'SAY_KHAD_SERV_4'),
(2768, -1000239, 'The Sha''tar, or "born from light" are the naaru that came to Outland to fight the demons of the Burning Legion.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 'SAY_KHAD_SERV_5'),
(2768, -1000240, 'They were drawn to the ruins of Shattrath City where a small remnant of the draenei priesthood conducted its rites inside a ruined temple on this very spot.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 'SAY_KHAD_SERV_6'),
(2768, -1000241, 'The priesthood, known as the Aldor, quickly regained its strength as word spread that the naaru had returned and reconstruction soon began. The ruined temple is now used as an infirmary for injured refugees.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 'SAY_KHAD_SERV_7'),
(2768, -1000242, 'It wouldn''t be long, however, before the city came under attack once again. This time, the attack came from Illidan''s armies. A large regiment of blood elves had been sent by Illidan''s ally, Kael''thas Sunstrider, to lay waste to the city.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 'SAY_KHAD_SERV_8'),
(2768, -1000243, 'As the regiment of blood elves crossed this very bridge, the Aldor''s exarchs and vindicators lined up to defend the Terrace of Light. But then the unexpected happened.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 'SAY_KHAD_SERV_9'),
(2768, -1000244, 'The blood elves laid down their weapons in front of the city''s defenders; their leader, a blood elf elder known as Voren''thal, stormed into the Terrace of Light and demanded to speak to A''dal.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 'SAY_KHAD_SERV_10'),
(23002, -1000245, 'As the naaru approached him, Voren''thal kneeled before him and uttered the following words: "I''ve seen you in a vision, naaru. My race''s only hope for survival lies with you. My followers and I are here to serve you."', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 'SAY_KHAD_SERV_11'),
(23002, -1000246, 'The defection of Voren''thal and his followers was the largest loss ever incurred by Kael''s forces. And these weren''t just any blood elves. Many of the best and brightest amongst Kael''s scholars and magisters had been swayed by Voren''thal''s influence.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 'SAY_KHAD_SERV_12'),
(23002, -1000247, 'The naaru accepted the defectors, who would become known as the Scryers; their dwelling lies in the platform above. Only those initiated with the Scryers are allowed there.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 'SAY_KHAD_SERV_13'),
(16483, -1000248, 'The Aldor are followers of the Light and forgiveness and redemption are values they understand. However, they found hard to forget the deeds of the blood elves while under Kael''s command.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 'SAY_KHAD_SERV_14'),
(16483, -1000249, 'Many of the priesthood had been slain by the same magisters who now vowed to serve the naaru. They were not happy to share the city with their former enemies.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 'SAY_KHAD_SERV_15'),
(16483, -1000250, 'The Aldor''s most holy temple and its surrounding dwellings lie on the terrace above. As a holy site, only the initiated are welcome inside.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 'SAY_KHAD_SERV_16'),
(16483, -1000251, 'The attacks against Shattrath continued, but the city did not fall, as you can see. On the contrary, the naaru known as Xi''ri led a successful incursion into Shadowmoon Valley - Illidan''s doorstep.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 'SAY_KHAD_SERV_17'),
(16483, -1000252, 'There he continues to wage war on Illidan with the assistance of the Aldor and the Scryers. The two factions have not given up on their old feuds, though.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 'SAY_KHAD_SERV_18'),
(16483, -1000253, 'Such is their animosity that they vie for the honor of being sent to assist the naaru there. Each day, that decision is made here by A''dal. The armies gather here to receive A''dal''s blessing before heading to Shadowmoon.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 'SAY_KHAD_SERV_19'),
(16483, -1000254, 'Khadgar should be ready to see you again. Just remember that to serve the Sha''tar you will most likely have to ally with the Aldor or the Scryers. And seeking the favor of one group will cause the others'' dislike.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 'SAY_KHAD_SERV_20'),
(16483, -1000255, 'Good luck stranger, and welcome to Shattrath City.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 'SAY_KHAD_SERV_21'),
(17243, -1000256, 'Thank you! Thank you, $GPriest:Priestess;. Now I can take on those murlocs with the Light on my side!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 4, 'garments SAY_ROBERTS_THANKS'),
(17243, -1000257, 'Farewell to you, and may the Light be with you always.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 3, 'garments SAY_ROBERTS_GOODBYE'),
(17243, -1000258, 'Thank you! Thank you, $GPriest:Priestess;. Now I can take on those humans with your power to back me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 4, 'garments SAY_KORJA_THANKS'),
(17318, -1000259, 'Farewell to you, and may our ancestors be with you always!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 3, 'garments SAY_KORJA_GOODBYE'),
(17318, -1000260, 'Thank you! Thank you, $GPriest:Priestess;. Now I can take on those wendigo with the Light on my side!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 4, 'garments SAY_DOLF_THANKS'),
(17318, -1000261, 'Farewell to you, and may the Light be with you always.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 3, 'garments SAY_DOLF_GOODBYE'),
(17318, -1000262, 'Thank you! Thank you, $GPriest:Priestess;. Now I can take on those corrupt timberlings with Elune''s power behind me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 2, 4, 'garments SAY_SHAYA_THANKS'),
(17318, -1000263, 'Farewell to you, and may Elune be with you always.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 2, 3, 'garments SAY_SHAYA_GOODBYE'),
(3439, -1000274, 'Time to teach you a lesson in manners, little $Gboy:girl;!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'larry SAY_START'),
(3439, -1000275, 'Now I''m gonna give you to the count of ''3'' to get out of here before I sick the dogs on you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'larry SAY_COUNT'),
(3439, -1000276, '1...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'larry SAY_COUNT_1'),
(3439, -1000277, '2...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'larry SAY_COUNT_2'),
(3439, -1000278, 'Time to meet your maker!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'larry SAY_ATTACK_5'),
(3439, -1000279, 'Alright, we give up! Don''t hurt us!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'larry SAY_GIVEUP'),
(6172, -1000280, 'A shadowy, sinister presence has invaded the Emerald Dream. Its power is poised to spill over into our world, $N. We must oppose it! That''s why I cannot accompany you in person.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'clintar SAY_START'),
(15420, -1000281, 'The Emerald Dream will never be yours!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'clintar SAY_AGGRO_1'),
(15420, -1000282, 'Begone from this place!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'clintar SAY_AGGRO_2'),
(0, -1000283, 'That''s the first relic, but there are still two more. Follow me, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'clintar SAY_RELIC1'),
(24981, -1000284, 'I''ve recovered the second relic. Take a moment to rest, and then we''ll continue to the last reliquary.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'clintar SAY_RELIC2'),
(0, -1000285, 'We have all three of the relics, but my energy is rapidly fading. We must make our way back to Dreamwarden Lurosa! He will let you know what to do next.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'clintar SAY_RELIC3'),
(22916, -1000286, 'Lurosa, I am entrusting the Relics of Aviana to $N, who will take them to Morthis Whisperwing. I must return completely to the Emerald Dream now. Do not let $N fail!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'clintar SAY_END'),
(7806, -1000287, 'Emergency power activated! Initializing ambulanory motor! CLUCK!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'oox SAY_OOX_START'),
(7806, -1000288, 'Physical threat detected! Evasive action! CLUCK!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'oox SAY_OOX_AGGRO1'),
(7806, -1000289, 'Thread analyzed! Activating combat plan beta! CLUCK!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'oox SAY_OOX_AGGRO2'),
(7806, -1000290, 'CLUCK! Sensors detect spatial anomaly - danger imminent! CLUCK!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'oox SAY_OOX_AMBUSH'),
(7806, -1000291, 'No one challanges the Wastewander nomads - not even robotic chickens! ATTACK!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'oox SAY_OOX17_AMBUSH_REPLY'),
(0, -1000292, 'Cloaking systems online! CLUCK! Engaging cloak for transport to Booty Bay!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'oox SAY_OOX_END'),
(18351, -1000293, 'To the house! Stay close to me, no matter what! I have my gun and ammo there!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'stilwell SAY_DS_START'),
(18351, -1000294, 'We showed that one!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'stilwell SAY_DS_DOWN_1'),
(18351, -1000295, 'One more down!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'stilwell SAY_DS_DOWN_2'),
(20209, -1000296, 'We''ve done it! We won!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'stilwell SAY_DS_DOWN_3'),
(20209, -1000297, 'Meet me down by the orchard-- I just need to put my gun away.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'stilwell SAY_DS_PROLOGUE'),
(20209, -1000298, 'Alright, alright I think I can figure out how to operate this thing...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 393, 'wizzlecrank SAY_START'),
(20209, -1000299, 'Arrrgh! This isn''t right!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'wizzlecrank SAY_STARTUP1'),
(20209, -1000300, 'Okay, I think I''ve got it, now. Follow me, $n!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'wizzlecrank SAY_STARTUP2'),
(20209, -1000301, 'There''s the stolen shredder! Stop it or Lugwizzle will have our hides!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'wizzlecrank SAY_MERCENARY'),
(20907, -1000302, 'Looks like we''re out of woods, eh? Wonder what this does...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'wizzlecrank SAY_PROGRESS_1'),
(18879, -1000303, 'Come on, don''t break down on me now!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 393, 'wizzlecrank SAY_PROGRESS_2'),
(20415, -1000304, 'That was a close one! Well, let''s get going, it''s still a ways to Ratchet!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'wizzlecrank SAY_PROGRESS_3'),
(20415, -1000305, 'Hmm... I don''t think this blinking red light is a good thing...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'wizzlecrank SAY_END'),
(19685, -1000306, 'Let''s get to the others, and keep an eye open for those wolves cutside...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'erland SAY_START_1'),
(19685, -1000307, 'Be careful, $N. Those wolves like to hide among the trees.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'erland SAY_START_2'),
(19685, -1000308, 'A $C attacks!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'erland SAY_AGGRO_1'),
(19685, -1000309, 'Beware! I am under attack!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'erland SAY_AGGRO_2'),
(19685, -1000310, 'Oh no! A $C is upon us!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'erland SAY_AGGRO_3'),
(19685, -1000311, 'We''re almost there!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'erland SAY_PROGRESS'),
(19685, -1000312, 'We made it! Thanks, $N. I couldn''t have gotten without you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'erland SAY_END'),
(19685, -1000313, 'It''s good to see you again, Erland. What is your report?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 33, 1, 'erland SAY_RANE'),
(19685, -1000314, 'Masses of wolves are to the east, and whoever lived at Malden''s Orchard is gone.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 'erland SAY_RANE_REPLY'),
(19685, -1000315, 'If I am excused, then I''d like to check on Quinn...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 'erland SAY_CHECK_NEXT'),
(19685, -1000316, 'Hello, Quinn. How are you faring?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 'erland SAY_QUINN'),
(19685, -1000317, 'I''ve been better. Ivar the Foul got the better of me...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 33, 1, 'erland SAY_QUINN_REPLY'),
(19685, -1000318, 'Try to take better care of yourself, Quinn. You were lucky this time.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 'erland SAY_BYE'),
(19685, -1000319, 'Let the trial begin, Bloodwrath, attack!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 'kelerun SayId1'),
(19685, -1000320, 'Champion Lightrend, make me proud!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 'kelerun SayId2'),
(19685, -1000321, 'Show this upstart how a real Blood Knight fights, Swiftblade!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 'kelerun SayId3'),
(19685, -1000322, 'Show $n the meaning of pain, Sunstriker!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0, 'kelerun SayId4'),
(19685, -1000323, 'Mist! I feared I would never see you again! Yes, I am well, do not worry for me. You must rest and recover your health.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'mist SAY_AT_HOME'),
(19685, -1000324, '%s growls in acknowledgement before straightening and making her way off into the forest.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'mist EMOTE_AT_HOME'),
(19685, -1000325, '"Threshwackonator First Mate unit prepared to follow"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'threshwackonator EMOTE_START'),
(19685, -1000326, 'YARRR! Swabie, what have ye done?! He''s gone mad! Baton him down the hatches! Hoist the mast! ARRRR! Every man for hi''self!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'threshwackonator SAY_AT_CLOSE'),
(19685, -1000327, 'Ok, $n, let''s go find where I left that mysterious fossil. Follow me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'remtravel SAY_REM_START'),
(19720, -1000328, 'Now where did I put that mysterious fossil? Ah, maybe up there...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'remtravel SAY_REM_RAMP1_1'),
(19720, -1000329, 'Hrm, nothing up here.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'remtravel SAY_REM_RAMP1_2'),
(19720, -1000330, 'No mysterious fossil here... Ah, but my copy of Green Hills of Stranglethorn. What a good book!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'remtravel SAY_REM_BOOK'),
(19720, -1000331, 'I bet you I left it in the tent!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'remtravel SAY_REM_TENT1_1'),
(19720, -1000332, 'Oh wait, that''s Hollee''s tent... and it''s empty.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'remtravel SAY_REM_TENT1_2'),
(19720, -1000333, 'Interesting... I hadn''t noticed this earlier...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'remtravel SAY_REM_MOSS'),
(17768, -1000334, '%s inspects the ancient, mossy stone.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 7, 0, 'remtravel EMOTE_REM_MOSS'),
(1978, -1000335, 'Oh wait! I''m supposed to be looking for that mysterious fossil!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'remtravel SAY_REM_MOSS_PROGRESS'),
(1978, -1000336, 'Nope. didn''t leave the fossil back here!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'remtravel SAY_REM_PROGRESS'),
(1978, -1000337, 'Ah. I remember now! I gave the mysterious fossil to Hollee! Check with her.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'remtravel SAY_REM_REMEMBER'),
(1978, -1000338, '%s goes back to work, oblivious to everything around him.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 7, 0, 'remtravel EMOTE_REM_END'),
(1978, -1000339, 'Something tells me this $r wants the mysterious fossil too. Help!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'remtravel SAY_REM_AGGRO'),
(1978, -1000340, '%s howls in delight at the sight of his lunch!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'kyle EMOTE_SEE_LUNCH'),
(1978, -1000341, '%s eats his lunch.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'kyle EMOTE_EAT_LUNCH'),
(1978, -1000342, '%s thanks you with a special dance.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'kyle EMOTE_DANCE'),
(1978, -1000343, 'Is the way clear? Let''s get out while we can, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'kayra SAY_START'),
(1978, -1000344, 'Looks like we won''t get away so easy. Get ready!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'kayra SAY_AMBUSH1'),
(1978, -1000345, 'Let''s keep moving. We''re not safe here!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'kayra SAY_PROGRESS'),
(1978, -1000346, 'Look out, $N! Enemies ahead!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'kayra SAY_AMBUSH2'),
(11856, -1000347, 'We''re almost to the refuge! Let''s go.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'kayra SAY_END'),
(11856, -1000348, 'Ah...the wondrous sound of kodos. I love the way they make the ground shake... inspect the beast for me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'kodo round SAY_SMEED_HOME_1'),
(11856, -1000349, 'Hey, look out with that kodo! You had better inspect that beast before I give you credit!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'kodo round SAY_SMEED_HOME_2'),
(9453, -1000350, 'That kodo sure is a beauty. Wait a minute, where are my bifocals? Perhaps you should inspect the beast for me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'kodo round SAY_SMEED_HOME_3'),
(18262, -1000351, 'You, there! Hand over that moonstone and nobody gets hurt!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'sprysprocket SAY_START'),
(18588, -1000352, '%s takes the Southfury moonstone and escapes into the river. Follow her!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'sprysprocket EMOTE_START'),
(18760, -1000353, 'Just chill!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 'sprysprocket SAY_WHISPER_CHILL'),
(18760, -1000354, 'Stupid grenade picked a fine time to backfire! So much for high quality goblin engineering!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'sprysprocket SAY_GRENADE_FAIL'),
(18760, -1000355, 'All right, you win! I surrender! Just don''t hurt me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'sprysprocket SAY_END'),
(18760, -1000356, 'Okay, okay... gimme a minute to rest now. You gone and beat me up good.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 14, 'calvin SAY_COMPLETE'),
(10181, -1000357, 'Let''s go before they find out I''m free!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'KAYA_SAY_START'),
(10181, -1000358, 'Look out! We''re under attack!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'KAYA_AMBUSH'),
(17900, -1000359, 'Thank you for helping me. I know my way back from here.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'KAYA_END'),
(17969, -1000362, 'Let''s go $N. I am ready to reach Whitereach Post.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'paoka SAY_START'),
(17969, -1000363, 'Now this looks familiar. If we keep heading east, I think we can... Ahh, Wyvern on the attack!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'paoka SAY_WYVERN'),
(17969, -1000364, 'Thanks a bunch... I can find my way back to Whitereach Post from here. Be sure to talk with Motega Firemane; perhaps you can keep him from sending me home.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'paoka SAY_COMPLETE'),
(10646, -1000365, 'Be on guard... Arnak has some strange power over the Grimtotem... they will not be happy to see me escape.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'lakota SAY_LAKO_START'),
(10646, -1000366, 'Look out, the Grimtotem are upon us!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'lakota SAY_LAKO_LOOK_OUT'),
(10646, -1000367, 'Here they come.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'lakota SAY_LAKO_HERE_COME'),
(10646, -1000368, 'More Grimtotems are coming this way!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'lakota SAY_LAKO_MORE'),
(10646, -1000369, 'Finally, free at last... I must be going now, thanks for helping me escape. I can get back to Freewind Post by myself.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'lakota SAY_LAKO_END'),
(3465, -1000370, 'Stay close, $n. I''ll need all the help I can get to break out of here. Let''s go!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 'gilthares SAY_GIL_START'),
(3465, -1000371, 'At last! Free from Northwatch Hold! I need a moment to catch my breath...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 5, 'gilthares SAY_GIL_AT_LAST'),
(3465, -1000372, 'Now I feel better. Let''s get back to Ratchet. Come on, $n.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 23, 'gilthares SAY_GIL_PROCEED'),
(3465, -1000373, 'Looks like the Southsea Freeboters are heavily entrenched on the coast. This could get rough.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 25, 'gilthares SAY_GIL_FREEBOOTERS'),
(3465, -1000374, 'Help! $C attacking!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'gilthares SAY_GIL_AGGRO_1'),
(3465, -1000375, '$C heading this way fast! Time for revenge!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'gilthares SAY_GIL_AGGRO_2'),
(3465, -1000376, '$C coming right at us!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'gilthares SAY_GIL_AGGRO_3'),
(3465, -1000377, 'Get this $C off of me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'gilthares SAY_GIL_AGGRO_4'),
(3465, -1000378, 'Almost back to Ratchet! Let''s keep up the pace...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'gilthares SAY_GIL_ALMOST'),
(3465, -1000379, 'Ah, the sweet salt air of Ratchet.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'gilthares SAY_GIL_SWEET'),
(3465, -1000380, 'Captain Brightsun, $N here has freed me! $N, I am certain the Captain will reward your bravery.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 66, 'gilthares SAY_GIL_FREED'),
(21027, -1000381, 'I sense the tortured spirits, $n. They are this way, come quickly!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'wilda SAY_WIL_START'),
(21027, -1000382, 'Watch out!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'wilda SAY_WIL_AGGRO1'),
(21027, -1000383, 'Naga attackers! Defend yourself!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'wilda SAY_WIL_AGGRO2'),
(21027, -1000384, 'Grant me protection $n, I must break trough their foul magic!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'wilda SAY_WIL_PROGRESS1'),
(21027, -1000385, 'The naga of Coilskar are exceptionally cruel to their prisoners. It is a miracle that I survived inside that watery prison for as long as I did. Earthmother be praised.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'wilda SAY_WIL_PROGRESS2'),
(21027, -1000386, 'Now we must find the exit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'wilda SAY_WIL_FIND_EXIT'),
(21027, -1000387, 'Lady Vashj must answer for these atrocities. She must be brought to justice!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'wilda SAY_WIL_PROGRESS4'),
(21027, -1000388, 'The tumultuous nature of the great waterways of Azeroth and Draenor are a direct result of tormented water spirits.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'wilda SAY_WIL_PROGRESS5'),
(21027, -1000389, 'It shouldn''t be much further, $n. The exit is just up ahead.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'wilda SAY_WIL_JUST_AHEAD'),
(21027, -1000390, 'Thank you, $n. Please return to my brethren at the Altar of Damnation, near the Hand of Gul''dan, and tell them that Wilda is safe. May the Earthmother watch over you...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'wilda SAY_WIL_END'),
(5955, -1000391, 'I''m Thirsty.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'tooga SAY_TOOG_THIRST'),
(5955, -1000392, 'Torta must be so worried.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'tooga SAY_TOOG_WORRIED'),
(5955, -1000393, 'Torta, my love! I have returned at long last.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'tooga SAY_TOOG_POST_1'),
(5955, -1000394, 'You have any idea how long I''ve been waiting here? And where''s dinner? All that time gone and nothing to show for it?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'tooga SAY_TORT_POST_2'),
(5955, -1000395, 'My dearest Torta. I have been gone for so long. Finally we are reunited. At long last our love can blossom again.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'tooga SAY_TOOG_POST_3'),
(5955, -1000396, 'Enough with the rambling. I am starving! Now, get your dusty shell into that ocean and bring momma some grub.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'tooga SAY_TORT_POST_4'),
(5955, -1000397, 'Yes Torta. Whatever your heart desires...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'tooga SAY_TOOG_POST_5'),
(5955, -1000398, 'And try not to get lost this time...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'tooga SAY_TORT_POST_6'),
(33515, -1603056, 'Auriaya begins to activate the Feral Defender!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'Auriaya - EMOTE_DEFENDER'),
(33515, -1603055, 'Auriaya begins to cast Terrifying Screech.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'Auriaya - EMOTE_FEAR'),
(6182, -1000403, 'Rin''ji is free!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_RIN_FREE'),
(6182, -1000404, 'Attack my sisters! The troll must not escape!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_RIN_BY_OUTRUNNER'),
(6182, -1000405, 'Rin''ji needs help!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'SAY_RIN_HELP_1'),
(6182, -1000406, 'Rin''ji is being attacked!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'SAY_RIN_HELP_2'),
(7780, -1000407, 'Rin''ji can see road now, $n. Rin''ji knows the way home.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'SAY_RIN_COMPLETE'),
(7780, -1000408, 'Rin''ji will tell you secret now... $n, should go to the Overlook Cliffs. Rin''ji hid something on island there', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'SAY_RIN_PROGRESS_1'),
(7780, -1000409, 'You find it, you keep it! Don''t tell no one that Rin''ji talked to you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'SAY_RIN_PROGRESS_2'),
(10638, -1000410, 'Here they come! Defend yourself!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 5, 'kanati SAY_KAN_START'),
(3568, -1000411, 'Why don''t we deal with you now, Hendel? Lady Proudmoore will speak for you back in the tower.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'hendel SAY_PROGRESS_1_TER'),
(3568, -1000412, 'Please... please... Miss Proudmore. I didn''t mean to...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'hendel SAY_PROGRESS_2_HEN');
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(4966, -1000413, 'I apologize for taking so long to get here. I wanted Lady Proudmoore to be present also.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'hendel SAY_PROGRESS_3_TER'),
(4966, -1000414, 'We can only stay a few moments before returning to the tower. If you wish to speak to us more you may find us there.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'hendel SAY_PROGRESS_4_TER'),
(4966, -1000415, '%s, too injured, gives up the chase.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'hendel EMOTE_SURRENDER'),
(9999, -1000416, 'Well, I''m not sure how far I''ll make it in this state... I''m feeling kind of faint...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'ringo SAY_RIN_START_1'),
(9999, -1000417, 'Remember, if I faint again, the water that Spraggle gave you will revive me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'ringo SAY_RIN_START_2'),
(9999, -1000418, 'The heat... I can''t take it...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'ringo SAY_FAINT_1'),
(9999, -1000419, 'Maybe... you could carry me?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'ringo SAY_FAINT_2'),
(9999, -1000420, 'Uuuuuuggggghhhhh....', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'ringo SAY_FAINT_3'),
(9999, -1000421, 'I''m not feeling so well...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'ringo SAY_FAINT_4'),
(9999, -1000422, 'Where... Where am I?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'ringo SAY_WAKE_1'),
(9999, -1000423, 'I am feeling a little better now, thank you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'ringo SAY_WAKE_2'),
(9999, -1000424, 'Yes, I must go on.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'ringo SAY_WAKE_3'),
(9999, -1000425, 'How am I feeling? Quite soaked, thank you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'ringo SAY_WAKE_4'),
(9999, -1000426, 'Spraggle! I didn''t think I''d make it back!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'ringo SAY_RIN_END_1'),
(9999, -1000427, 'Ringo! You''re okay!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'ringo SAY_SPR_END_2'),
(9999, -1000428, 'Oh... I''m feeling faint...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'ringo SAY_RIN_END_3'),
(9999, -1000429, '%s collapses onto the ground.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'ringo EMOTE_RIN_END_4'),
(9999, -1000430, '%s stands up after a short pause.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'ringo EMOTE_RIN_END_5'),
(6784, -1000431, 'Ugh.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'ringo SAY_RIN_END_6'),
(9999, -1000432, 'Ringo? Wake up! Don''t worry, I''ll take care of you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'ringo SAY_SPR_END_7'),
(9999, -1000433, '%s fades away after a long pause.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'ringo EMOTE_RIN_END_8'),
(11218, -1000434, 'Liladris has been waiting for me at Maestra''s Post, so we should make haste, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'kerlonian SAY_KER_START'),
(11218, -1000435, '%s looks very sleepy...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'kerlonian EMOTE_KER_SLEEP_1'),
(11218, -1000436, '%s suddenly falls asleep', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'kerlonian EMOTE_KER_SLEEP_2'),
(11218, -1000437, '%s begins to drift off...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'kerlonian EMOTE_KER_SLEEP_3'),
(11218, -1000438, 'This looks like the perfect place for a nap...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'kerlonian SAY_KER_SLEEP_1'),
(11218, -1000439, 'Yaaaaawwwwwnnnn...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'kerlonian SAY_KER_SLEEP_2'),
(11218, -1000440, 'Oh, I am so tired...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'kerlonian SAY_KER_SLEEP_3'),
(11218, -1000441, 'You don''t mind if I stop here for a moment, do you?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'kerlonian SAY_KER_SLEEP_4'),
(11218, -1000442, 'Be on the alert! The Blackwood furbolgs are numerous in the area...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'kerlonian SAY_KER_ALERT_1'),
(11218, -1000443, 'It''s quiet... Too quiet...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'kerlonian SAY_KER_ALERT_2'),
(11218, -1000444, 'Oh, I can see Liladris from here... Tell her I''m here, won''t you?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'kerlonian SAY_KER_END'),
(11218, -1000445, '%s wakes up!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'kerlonian EMOTE_KER_AWAKEN'),
(18210, -1000482, 'Look out!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'maghar captive SAY_MAG_START'),
(18210, -1000483, 'Don''t let them escape! Kill the strong one first!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'maghar captive SAY_MAG_NO_ESCAPE'),
(18210, -1000484, 'More of them coming! Watch out!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'maghar captive SAY_MAG_MORE'),
(18210, -1000485, 'Where do you think you''re going? Kill them all!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'maghar captive SAY_MAG_MORE_REPLY'),
(18210, -1000486, 'Ride the lightning, filth!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'maghar captive SAY_MAG_LIGHTNING'),
(18210, -1000487, 'FROST SHOCK!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'maghar captive SAY_MAG_SHOCK'),
(18210, -1000488, 'It is best that we split up now, in case they send more after us. Hopefully one of us will make it back to Garrosh. Farewell stranger.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'maghar captive SAY_MAG_COMPLETE'),
(17077, -1000496, '%s lifts its head into the air, as if listening for something.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'ancestral wolf EMOTE_WOLF_LIFT_HEAD'),
(17077, -1000497, '%s lets out a howl that rings across the mountains to the north and motions for you to follow.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'ancestral wolf EMOTE_WOLF_HOWL'),
(17077, -1000498, 'Welcome, kind spirit. What has brought you to us?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'ancestral wolf SAY_WOLF_WELCOME'),
(8856, -1000499, 'By your command!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(7766, -1000450, 'Wait here. Spybot will make Lescovar come out as soon as possible. Be ready! Attack only after you''ve overheard their conversation.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(8856, -1000451, 'Good day to you both. I would speak to Lord Lescovar.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(1756, -1000452, 'Of course. He awaits you in the library.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(8856, -1000453, 'Thank you. The Light be with you both.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(8856, -1000454, 'Milord, your guest has arrived. He awaits your presence.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(1754, -1000455, 'Ah, thank you kindly. I will leave you to the library while I tend to this small matter.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(8856, -1000456, 'I shall use the time wisely, milord. Thank you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(1754, -1000457, 'It''s time for my meditation, leave me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(1756, -1000458, 'Yes, sir!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(1754, -1000459, 'There you are. What news from Westfall?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(1755, -1000460, 'VanCleef sends word that the plans are underway. But he''s hear rumors about someone snooping about.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(1754, -1000461, 'Hmm, it could be that meddle Shaw. I will see what I can discover. Be off with you. I''ll contact you again soon.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(7766, -1000462, 'That''s it! That''s what you were waiting for! KILL THEM!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, ''),
(1755, -1000463, 'The Defias shall succeed! No meek adventurer will stop us!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(0, -1033000, 'Follow me and I''ll open the courtyard door for you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 1, 'prisoner ashcrombe SAY_FREE_AS'),
(0, -1033001, 'I have just the spell to get this door open. Too bad the cell doors weren''t locked so haphazardly.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 1, 'prisoner ashcrombe SAY_OPEN_DOOR_AS'),
(0, -1033002, 'There it is! Wide open. Good luck to you conquering what lies beyond. I must report back to the Kirin Tor at once!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 1, 'prisoner ashcrombe SAY_POST_DOOR_AS'),
(0, -1033003, 'Free from this wretched cell at last! Let me show you to the courtyard....', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 'prisoner adamant SAY_FREE_AD'),
(0, -1033004, 'You are indeed courageous for wanting to brave the horrors that lie beyond this door.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 'prisoner adamant SAY_OPEN_DOOR_AD'),
(0, -1033005, 'There we go!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 'prisoner adamant SAY_POST1_DOOR_AD'),
(0, -1033006, 'Good luck with Arugal. I must hurry back to Hadrec now.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 'prisoner adamant SAY_POST2_DOOR_AD'),
(3849, -1033007, 'About time someone killed the wretch.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 'prisoner adamant SAY_BOSS_DIE_AD'),
(3850, -1033008, 'For once I agree with you... scum.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 1, 'prisoner ashcrombe SAY_BOSS_DIE_AS'),
(0, -1036000, 'You there, check out that noise!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5775, 1, 7, 0, 'smite INST_SAY_ALARM1'),
(0, -1036001, 'We''re under attack! A vast, ye swabs! Repel the invaders!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5777, 1, 7, 0, 'smite INST_SAY_ALARM2'),
(3678, -1043000, 'At last! Naralex can be awakened! Come aid me, brave adventurers!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Disciple SAY_AT_LAST'),
(3678, -1043001, 'I must make the necessary preparations before the awakening ritual can begin. You must protect me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Disciple SAY_MAKE_PREPARATIONS'),
(3678, -1043002, 'These caverns were once a temple of promise for regrowth in the Barrens. Now, they are the halls of nightmares.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Disciple SAY_TEMPLE_OF_PROMISE'),
(3678, -1043003, 'Come. We must continue. There is much to be done before we can pull Naralex from his nightmare.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Disciple SAY_MUST_CONTINUE'),
(3678, -1043004, 'Within this circle of fire I must cast the spell to banish the spirits of the slain Fanglords.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Disciple SAY_BANISH_THE_SPIRITS'),
(3678, -1043005, 'The caverns have been purified. To Naralex''s chamber we go!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Disciple SAY_CAVERNS_PURIFIED'),
(3678, -1043006, 'Beyond this corridor, Naralex lies in fitful sleep. Let us go awaken him before it is too late.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Disciple SAY_BEYOND_THIS_CORRIDOR'),
(3678, -1043007, 'Protect me brave souls as I delve into this Emerald Dream to rescue Naralex and put an end to this corruption!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Disciple SAY_EMERALD_DREAM'),
(3678, -1043008, '%s begins to perform the awakening ritual on Naralex.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Disciple EMOTE_AWAKENING_RITUAL'),
(3678, -1043009, '%s tosses fitfully in troubled sleep.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Naralex EMOTE_TROUBLED_SLEEP'),
(3678, -1043010, '%s writhes in agony. The Disciple seems to be breaking through.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Naralex EMOTE_WRITHE_IN_AGONY'),
(3678, -1043011, '%s dreams up a horrendous vision. Something stirs beneath the murky waters.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Naralex EMOTE_HORRENDOUS_VISION'),
(3678, -1043012, 'This Mutanus the Devourer is a minion from Naralex''s nightmare no doubt!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Disciple SAY_MUTANUS_THE_DEVOURER'),
(3678, -1043013, 'I AM AWAKE, AT LAST!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Naralex SAY_I_AM_AWAKE'),
(3678, -1043014, 'At last! Naralex awakes from the nightmare.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Disciple SAY_NARALEX_AWAKES'),
(3678, -1043015, 'Ah, to be pulled from the dreaded nightmare! I thank you, my loyal Disciple, along with your brave companions.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Naralex SAY_THANK_YOU'),
(3678, -1043016, 'We must go and gather with the other Disciples. There is much work to be done before I can make another attempt to restore the Barrens. Farewell, brave souls!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Naralex SAY_FAREWELL'),
(3678, -1043017, 'Attacked! Help get this $N off of me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Disciple SAY_ATTACKED'),
(4508, -1047000, 'Phew! Finally, out here. However, it will not become easy. Detain your eyes after annoyance.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Willix'),
(4508, -1047001, 'There on top resides Charlga Razorflank. The damned old Crone.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Willix'),
(4508, -1047002, 'Help! Get this Raging Agam''ar from me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Willix'),
(4508, -1047003, 'In this ditch there are Blueleaf Tuber! As if the gold waited only to be dug out, I say it you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Willix'),
(4508, -1047004, 'Danger is behind every corner.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Willix'),
(4508, -1047005, 'I do not understand how these disgusting animals can live at such a place.... puh as this stinks!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Willix'),
(4508, -1047006, 'I think, I see a way how we come out of this damned thorn tangle.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Willix'),
(4508, -1047007, 'I am glad that we are out again from this damned ditch. However, up here it is not much better!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Willix'),
(4508, -1047008, 'Finally! I am glad that I come, finally out here.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Willix'),
(4508, -1047009, 'I will rather rest a moment and come again to breath, before I return to Ratchet.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Willix'),
(4508, -1047010, 'Many thanks for your help.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Willix'),
(0, -1060005, 'REUSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'REUSE'),
(0, -1060004, 'REUSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'REUSE'),
(0, -1060003, 'REUSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'REUSE'),
(0, -1060002, 'REUSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'REUSE'),
(0, -1060001, 'REUSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'REUSE'),
(0, -1060000, 'REUSE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'REUSE'),
(7228, -1070000, 'None may steal the secrets of the makers!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5851, 1, 0, 0, 'ironaya SAY_AGGRO'),
(0, -1070001, 'Taste blade, mongrel!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_GUARD_SIL_AGGRO1'),
(0, -1070002, 'Please tell me that you didn''t just do what I think you just did. Please tell me that I''m not going to have to hurt you...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_GUARD_SIL_AGGRO2'),
(0, -1070003, 'As if we don''t have enough problems, you go and create more!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'SAY_GUARD_SIL_AGGRO3'),
(620, -1070004, 'looks up at you quizzically. Maybe you should inspect it?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'cluck EMOTE_A_HELLO'),
(0, -1070005, 'looks at you unexpectadly.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'cluck EMOTE_H_HELLO'),
(620, -1070006, 'starts pecking at the feed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'cluck EMOTE_CLUCK_TEXT2'),
(7358, -1129000, 'You''ll never leave this place... alive.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5825, 1, 0, 0, 'amnennar SAY_AGGRO'),
(7358, -1129001, 'To me, my servants!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5828, 1, 0, 0, 'amnennar SAY_SUMMON60'),
(7358, -1129002, 'Come, spirits, attend your master!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5829, 1, 0, 0, 'amnennar SAY_SUMMON30'),
(7358, -1129003, 'I am the hand of the Lich King!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5827, 1, 0, 0, 'amnennar SAY_HP'),
(7358, -1129004, 'Too...easy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5826, 1, 0, 0, 'amnennar SAY_KILL'),
(3975, -1189000, 'Ah, I have been waiting for a real challenge!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5830, 1, 0, 0, 'herod SAY_AGGRO'),
(3975, -1189001, 'Blades of Light!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5832, 1, 0, 0, 'herod SAY_WHIRLWIND'),
(3975, -1189002, 'Light, give me strength!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5833, 1, 0, 0, 'herod SAY_ENRAGE'),
(3975, -1189003, 'Hah, is that all?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5831, 1, 0, 0, 'herod SAY_KILL'),
(3975, -1189004, '%s becomes enraged!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'herod EMOTE_ENRAGE'),
(3976, -1189005, 'Infidels! They must be purified!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5835, 1, 0, 0, 'mograine SAY_MO_AGGRO'),
(3976, -1189006, 'Unworthy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5836, 1, 0, 0, 'mograine SAY_MO_KILL'),
(3976, -1189007, 'At your side, milady!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5837, 1, 0, 0, 'mograine SAY_MO_RESSURECTED'),
(3977, -1189008, 'What, Mograine has fallen? You shall pay for this treachery!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5838, 1, 0, 0, 'whitemane SAY_WH_INTRO'),
(3977, -1189009, 'The Light has spoken!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5839, 1, 0, 0, 'whitemane SAY_WH_KILL'),
(3977, -1189010, 'Arise, my champion!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5840, 1, 0, 0, 'whitemane SAY_WH_RESSURECT'),
(3983, -1189011, 'Tell me... tell me everything!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5847, 1, 0, 0, 'vishas SAY_AGGRO'),
(3983, -1189012, 'Naughty secrets!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5849, 1, 0, 0, 'vishas SAY_HEALTH1'),
(3983, -1189013, 'I''ll rip the secrets from your flesh!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5850, 1, 0, 0, 'vishas SAY_HEALTH2'),
(3983, -1189014, 'Purged by pain!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5848, 1, 0, 0, 'vishas SAY_KILL'),
(3983, -1189015, 'The monster got what he deserved.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'vishas SAY_TRIGGER_VORREL'),
(4543, -1189016, 'We hunger for vengeance.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5844, 1, 0, 0, 'thalnos SAY_AGGRO'),
(4543, -1189017, 'No rest, for the angry dead.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5846, 1, 0, 0, 'thalnos SAY_HEALTH'),
(4543, -1189018, 'More... More souls.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5845, 1, 0, 0, 'thalnos SAY_KILL'),
(6487, -1189019, 'You will not defile these mysteries!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5842, 1, 0, 0, 'doan SAY_AGGRO'),
(6487, -1189020, 'Burn in righteous fire!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5843, 1, 0, 0, 'doan SAY_SPECIALAE'),
(3974, -1189021, 'Release the hounds!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5841, 1, 0, 0, 'loksey SAY_AGGRO'),
(9503, -1230000, 'Ah, hits the spot!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'rocknot SAY_GOT_BEER'),
(9019, -1230001, 'Come to aid the Throne!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'dagran SAY_AGGRO'),
(9019, -1230002, 'Hail to the king, baby!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'dagran SAY_SLAY'),
(10184, -1249000, 'How fortuitous. Usually, I must leave my lair to feed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'onyxia SAY_AGGRO'),
(10184, -1249001, 'Learn your place mortal!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'onyxia SAY_KILL'),
(10184, -1249002, 'This meaningless exertion bores me. I''ll incinerate you all from above!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 254, 'onyxia SAY_PHASE_2_TRANS'),
(10184, -1249003, 'It seems you''ll need another lesson, mortals!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 293, 'onyxia SAY_PHASE_3_TRANS'),
(10184, -1249004, '%s takes in a deep breath...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'onyxia EMOTE_BREATH'),
(17880, -1269000, 'Why do you persist? Surely you can see the futility of it all. It is not too late! You may still leave with your lives ...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10442, 1, 0, 0, 'temporus SAY_ENTER'),
(17880, -1269001, 'So be it ... you have been warned.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10444, 1, 0, 0, 'temporus SAY_AGGRO'),
(17880, -1269002, 'Time... sands of time is run out for you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10443, 1, 0, 0, 'temporus SAY_BANISH'),
(17880, -1269003, 'You should have left when you had the chance.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10445, 1, 0, 0, 'temporus SAY_SLAY1'),
(17880, -1269004, 'Your days are done.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10446, 1, 0, 0, 'temporus SAY_SLAY2'),
(17880, -1269005, 'My death means ... little.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10447, 1, 0, 0, 'temporus SAY_DEATH'),
(17879, -1269006, 'Why do you aid the Magus? Just think of how many lives could be saved if the portal is never opened, if the resulting wars could be erased ...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10412, 1, 0, 0, 'chrono_lord_deja SAY_ENTER'),
(17879, -1269007, 'If you will not cease this foolish quest, then you will die!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10414, 1, 0, 0, 'chrono_lord_deja SAY_AGGRO'),
(17879, -1269008, 'You have outstayed your welcome, Timekeeper. Begone!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10413, 1, 0, 0, 'chrono_lord_deja SAY_BANISH'),
(17879, -1269009, 'I told you it was a fool''s quest!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10415, 1, 0, 0, 'chrono_lord_deja SAY_SLAY1'),
(17879, -1269010, 'Leaving so soon?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10416, 1, 0, 0, 'chrono_lord_deja SAY_SLAY2'),
(17879, -1269011, 'Time ... is on our side.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10417, 1, 0, 0, 'chrono_lord_deja SAY_DEATH'),
(17881, -1269012, 'The time has come to shatter this clockwork universe forever! Let us no longer be slaves of the hourglass! I warn you: those who do not embrace the greater path shall become victims of its passing!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10400, 1, 0, 0, 'aeonus SAY_ENTER'),
(17881, -1269013, 'Let us see what fate lays in store...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10402, 1, 0, 0, 'aeonus SAY_AGGRO'),
(17881, -1269014, 'Your time is up, slave of the past!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10401, 1, 0, 0, 'aeonus SAY_BANISH'),
(17881, -1269015, 'One less obstacle in our way!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10403, 1, 0, 0, 'aeonus SAY_SLAY1'),
(17881, -1269016, 'No one can stop us! No one!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10404, 1, 0, 0, 'aeonus SAY_SLAY2'),
(17881, -1269017, 'It is only a matter...of time.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10405, 1, 0, 0, 'aeonus SAY_DEATH'),
(17881, -1269018, 'goes into a frenzy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'aeonus EMOTE_FRENZY'),
(20201, -1269019, 'Stop! Do not go further, mortals. You are ill-prepared to face the forces of the Infinite Dragonflight. Come, let me help you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'saat SAY_SAAT_WELCOME'),
(15608, -1269020, 'The time has come! Gul''dan, order your warlocks to double their efforts! Moments from now the gateway will open, and your Horde will be released upon this ripe, unsuspecting world!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10435, 1, 0, 0, 'medivh SAY_ENTER'),
(15608, -1269021, 'What is this? Champions, coming to my aid? I sense the hand of the dark one in this. Truly this sacred event bears his blessing?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10436, 1, 0, 0, 'medivh SAY_INTRO'),
(15608, -1269022, 'Champions, my shield grows weak!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10437, 1, 0, 0, 'medivh SAY_WEAK75'),
(15608, -1269023, 'My powers must be concentrated on the portal! I do not have time to hold the shield!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10438, 1, 0, 0, 'medivh SAY_WEAK50'),
(15608, -1269024, 'The shield is nearly gone! All that I have worked for is in danger!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10439, 1, 0, 0, 'medivh SAY_WEAK25'),
(15608, -1269025, 'No... damn this feeble mortal coil...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10441, 1, 0, 0, 'medivh SAY_DEATH'),
(15608, -1269026, 'I am grateful for your aid, champions. Now, Gul''dan''s Horde will sweep across this world, like a locust swarm, and all my designs, all my carefully laid plans will at last fall into place.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10440, 1, 0, 0, 'medivh SAY_WIN'),
(15608, -1269027, 'Orcs of the Horde! This portalis the gateway to your new destiny! Azeroth lies before you, ripe for the taking!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'medivh SAY_ORCS_ENTER'),
(15608, -1269028, 'Gul''dan speaks the truth! We should return at once to tell our brothers of the news! Retreat back trought the portal!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'medivh SAY_ORCS_ANSWER'),
(14517, -1309002, 'Lord Hir''eek, grant me wings of vengance!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8417, 1, 0, 0, 'jeklik SAY_AGGRO'),
(14517, -1309003, 'I command you to rain fire down upon these invaders!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'jeklik SAY_RAIN_FIRE'),
(14517, -1309004, 'Finally ...death. Curse you Hakkar! Curse you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8422, 1, 0, 0, 'jeklik SAY_DEATH'),
(14510, -1309005, 'Draw me to your web mistress Shadra. Unleash your venom!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8418, 1, 0, 0, 'marli SAY_AGGRO'),
(14510, -1309006, 'Shadra, make of me your avatar!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'marli SAY_TRANSFORM'),
(14510, -1309007, 'Aid me my brood!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'marli SAY_SPIDER_SPAWN'),
(14510, -1309008, 'Bless you mortal for this release. Hakkar controls me no longer...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8423, 1, 0, 0, 'marli SAY_DEATH'),
(14509, -1309009, 'Shirvallah, fill me with your RAGE!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8419, 1, 0, 0, 'thekal SAY_AGGRO'),
(14509, -1309010, 'Hakkar binds me no more! Peace at last!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8424, 1, 0, 0, 'thekal SAY_DEATH'),
(14515, -1309011, 'Bethekk, your priestess calls upon your might!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8416, 1, 0, 0, 'arlokk SAY_AGGRO'),
(14515, -1309012, 'Feast on $n, my pretties!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'arlokk SAY_FEAST_PANTHER'),
(14515, -1309013, 'At last, I am free of the Soulflayer!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8412, 1, 0, 0, 'arlokk SAY_DEATH'),
(11380, -1309014, 'Welcome to da great show friends! Step right up to die!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8425, 1, 0, 0, 'jindo SAY_AGGRO'),
(11382, -1309015, 'I''ll feed your souls to Hakkar himself!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8413, 1, 0, 0, 'mandokir SAY_AGGRO'),
(11382, -1309016, 'DING!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'mandokir SAY_DING_KILL'),
(11382, -1309017, 'GRATS!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'mandokir SAY_GRATS_JINDO'),
(11382, -1309018, 'I''m keeping my eye on you, $N!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'mandokir SAY_WATCH'),
(11382, -1309019, 'Don''t make me angry. You won''t like it when I''m angry.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'mandokir SAY_WATCH_WHISPER'),
(14834, -1309020, 'PRIDE HERALDS THE END OF YOUR WORLD. COME, MORTALS! FACE THE WRATH OF THE SOULFLAYER!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8414, 1, 0, 0, 'hakkar SAY_AGGRO'),
(14834, -1309021, 'Fleeing will do you no good, mortals!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'hakkar SAY_FLEEING'),
(14834, -1309022, 'You dare set foot upon Hakkari holy ground? Minions of Hakkar, destroy the infidels!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'hakkar SAY_MINION_DESTROY'),
(14834, -1309023, 'Minions of Hakkar, hear your God. The sanctity of this temple has been compromised. Invaders encroach upon holy ground! The Altar of Blood must be protected. Kill them all!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'hakkar SAY_PROTECT_ALTAR'),
(11136, -1329000, 'Thanks to Egan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'freed_soul SAY_ZAPPED0'),
(11136, -1329001, 'Rivendare must die', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'freed_soul SAY_ZAPPED1'),
(11136, -1329002, 'Who you gonna call?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'freed_soul SAY_ZAPPED2'),
(11136, -1329003, 'Don''t cross those beams!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'freed_soul SAY_ZAPPED3'),
(15381, -1350000, 'We must act quickly or all shall be lost!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'ANACHRONOS_SAY_1'),
(15381, -1350001, 'NOW, STAGHELM! WE GO NOW! Prepare your magic!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 81, 'ANACHRONOS_SAY_2'),
(15381, -1350002, 'Stay close...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'ANACHRONOS_SAY_3'),
(15381, -1350003, 'The sands of time will halt, but only for a moment! I will now conjure the barrier.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'ANACHRONOS_SAY_4'),
(15381, -1350004, 'FINISH THE SPELL STAGHELM! I CANNOT HOLD THE GLYPHS OF WARDING IN PLACE MUCH LONGER! CALL FORTH THE ROOTS!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 53, 'ANACHRONOS_SAY_5'),
(15381, -1350005, 'It... It is over, Lord Staghelm. We are victorious. Albeit the cost for this victory was great.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'ANACHRONOS_SAY_6'),
(15381, -1350006, 'There is but one duty that remains...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'ANACHRONOS_SAY_7'),
(15381, -1350007, 'Before I leave this place, I make one final offreing to you, Lord Staghelm. Should a time arise in which you must gain entry to this accursed fortress, use the Scepter of the Shifting Sands on the sacred gong. The magic holding the barrier together will dissipate and the horrors of Ahn''Qiraj will be unleashed upon the world once more.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'ANACHRONOS_SAY_8'),
(15381, -1350008, 'Lord Staghelm, where are you going? You would shatter our bond for the sake of pride?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'ANACHRONOS_SAY_9'),
(15381, -1350009, 'And now you know all that there is to know, mortal...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'ANACHRONOS_SAY_10'),
(15381, -1350010, 'hands the Scepter of the Shifting Sands to Fandral Staghelm.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 1, 'ANACHRONOS_EMOTE_1'),
(15381, -1350011, 'shakes his head in dissapointment.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 274, 'ANACHRONOS_EMOTE_2'),
(15381, -1350012, 'kneels down to pick up the fragments of the shattered scepter.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 87, 'ANACHRONOS_EMOTE_3'),
(15382, -1350013, 'My forces cannot overcome the Qiraji defenses. We will not be able to get close enough to place your precious barrier, dragon.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'FANDRAL_SAY_1'),
(15382, -1350014, 'It is done dragon. Lead the way...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'FANDRAL_SAY_2'),
(15382, -1350015, 'Ancient ones guide my hand... Wake from your slumber! WAKE AND SEAL THIS CURSED PLACE!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'FANDRAL_SAY_3'),
(15382, -1350016, 'After the savagery that my people have witnessed and felt, you expect me to accept another burden, dragon? Surely you are mad.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 25, 'FANDRAL_SAY_4'),
(15382, -1350017, 'I want nothing to do with Silithus, the Qiraji and least of all, any damned dragons!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'FANDRAL_SAY_5'),
(15382, -1350018, 'My son''s soul will find no comfort in this hollow victory, dragon. I will have him back.Thought it takes a millennia, I WILL have my son back!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 254, 'FANDRAL_SAY_6'),
(15382, -1350019, 'falls to one knee - exhausted.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 16, 'FANDRAL_EMOTE_1'),
(15382, -1350020, 'hurls the Scepter of the Shifting Sands into the barrier, shattering it.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'FANDRAL_EMOTE_2'),
(15379, -1350021, 'Aye, Fandral, remember these words: Let not your grief guide your faith. These thoughts you hold... dark places you go, night elf. Absolution cannot be had through misguided vengeance.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'CAELESTRASZ_SAY_1'),
(15379, -1350022, 'Do not forget the sacrifices made on this day, night elf. We have all suffered immensely at the hands of these beasts.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'CAELESTRASZ_SAY_2'),
(15379, -1350023, 'Alexstrasza grant me the resolve to drive our enemies back!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 53, 'CAELESTRASZ_YELL_1'),
(15380, -1350024, 'This distraction will give you and the young druid time enough to seal the gate. Do not falter. Now, let us see how they deal with chaotic magic.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'ARYGOS_SAY_1'),
(15380, -1350025, 'Let them feel the wrath of the Blue Flight! May Malygos protect me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 53, 'ARYGOS_YELL_1'),
(15380, -1350026, 'nods knowingly.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 273, 'ARYGOS_EMOTE_1'),
(15378, -1350027, 'There is a way...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'MERITHRA_SAY_1'),
(15378, -1350028, 'We will push them back, Anachronos. This I vow. Uphold the end of this task. Let not your hands falter as you seal our fates behind the barrier.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'MERITHRA_SAY_2'),
(15378, -1350029, 'Succumb to the endless dream, little ones. Let it consume you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 53, 'MERITHRA_YELL_1'),
(15378, -1350030, 'glances at her compatriots.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 2, 'MERITHRA_EMOTE_1'),
(12056, -1409000, '%s performs one last service for Ragnaros.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'geddon EMOTE_SERVICE'),
(11982, -1409001, '%s goes into a killing frenzy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'magmadar EMOTE_FRENZY'),
(11988, -1409002, '%s refuses to die while its master is in trouble.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'core rager EMOTE_LOWHP'),
(12018, -1409003, 'Reckless mortals, none may challenge the sons of the living flame!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8035, 1, 0, 0, 'majordomo SAY_AGGRO'),
(12018, -1409004, 'The runes of warding have been destroyed! Hunt down the infedels my bretheren.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8039, 1, 0, 0, 'majordomo SAY_SPAWN'),
(12018, -1409005, 'Ashes to Ashes!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8037, 1, 0, 0, 'majordomo SAY_SLAY'),
(12018, -1409006, 'Burn mortals! Burn for this transgression!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8036, 1, 0, 0, 'majordomo SAY_SPECIAL'),
(12018, -1409007, 'Impossible! Stay your attack mortals! I submitt! I submitt! Brashly you have come to rest the secrets of the living flame. You will soon regret the recklessness of your quest. I go now to summon the lord whos house this is. Should you seek an audiance with him your paltry lives will surly be forfit. Nevertheless seek out his lair if you dare!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8038, 1, 0, 0, 'majordomo SAY_DEFEAT'),
(12018, -1409008, 'Behold Ragnaros, the Firelord! He who was ancient when this world was young! Bow before him, mortals! Bow before your ending!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8040, 1, 0, 0, 'ragnaros SAY_SUMMON_MAJ'),
(12018, -1409009, 'TOO SOON! YOU HAVE AWAKENED ME TOO SOON, EXECUTUS! WHAT IS THE MEANING OF THIS INTRUSION?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8043, 1, 0, 0, 'ragnaros SAY_ARRIVAL1_RAG'),
(12018, -1409010, 'These mortal infidels, my lord! They have invaded your sanctum, and seek to steal your secrets!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8041, 1, 0, 0, 'ragnaros SAY_ARRIVAL2_MAJ'),
(12018, -1409011, 'FOOL! YOU ALLOWED THESE INSECTS TO RUN RAMPANT THROUGH THE HALLOWED CORE, AND NOW YOU LEAD THEM TO MY VERY LAIR? YOU HAVE FAILED ME, EXECUTUS! JUSTICE SHALL BE MET, INDEED!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8044, 1, 0, 0, 'ragnaros SAY_ARRIVAL3_RAG'),
(12018, -1409012, 'NOW FOR YOU, INSECTS. BOLDLY YOU SAUGHT THE POWER OF RAGNAROS NOW YOU SHALL SEE IT FIRST HAND.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8045, 1, 0, 0, 'ragnaros SAY_ARRIVAL5_RAG'),
(11502, -1409013, 'COME FORTH, MY SERVANTS! DEFEND YOUR MASTER!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8049, 1, 0, 0, 'ragnaros SAY_REINFORCEMENTS1'),
(11502, -1409014, 'YOU CANNOT DEFEAT THE LIVING FLAME! COME YOU MINIONS OF FIRE! COME FORTH YOU CREATURES OF HATE! YOUR MASTER CALLS!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8050, 1, 0, 0, 'ragnaros SAY_REINFORCEMENTS2'),
(11502, -1409015, 'BY FIRE BE PURGED!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8046, 1, 0, 0, 'ragnaros SAY_HAND'),
(11502, -1409016, 'TASTE THE FLAMES OF SULFURON!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8047, 1, 0, 0, 'ragnaros SAY_WRATH'),
(11502, -1409017, 'DIE INSECT!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8051, 1, 0, 0, 'ragnaros SAY_KILL'),
(11502, -1409018, 'MY PATIENCE IS DWINDLING! COME, GNATS, TO YOUR DEATH!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8048, 1, 0, 0, 'ragnaros SAY_MAGMABURST'),
(12017, -1469000, 'None of your kind should be here! You''ve doomed only yourselves!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8286, 1, 0, 0, 'broodlord SAY_AGGRO'),
(12017, -1469001, 'Clever Mortals but I am not so easily lured away from my sanctum!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8287, 1, 0, 0, 'broodlord SAY_LEASH'),
(14020, -1469002, 'goes into a killing frenzy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'chromaggus EMOTE_FRENZY'),
(14020, -1469003, 'flinches as its skin shimmers.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'chromaggus EMOTE_SHIMMER'),
(10162, -1469004, 'In this world where time is your enemy, it is my greatest ally. This grand game of life that you think you play in fact plays you. To that I say...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'victor_nefarius SAY_GAMESBEGIN_1'),
(10162, -1469005, 'Let the games begin!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8280, 1, 0, 0, 'victor_nefarius SAY_GAMESBEGIN_2'),
(10162, -1469006, 'Ah, the heroes. You are persistent, aren''t you. Your allied attempted to match his power against mine, and had to pay the price. Now he shall serve me, by slaughtering you. Get up little red wyrm and destroy them!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8279, 1, 0, 0, 'victor_nefarius SAY_VAEL_INTRO'),
(11583, -1469007, 'Well done, my minions. The mortals'' courage begins to wane! Now, let''s see how they contend with the true Lord of Blackrock Spire!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8288, 1, 0, 0, 'nefarian SAY_AGGRO'),
(11583, -1469008, 'Enough! Now you vermin shall feel the force of my birthright, the fury of the earth itself.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8289, 1, 0, 0, 'nefarian SAY_XHEALTH'),
(11583, -1469009, 'Burn, you wretches! Burn!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8290, 1, 0, 0, 'nefarian SAY_SHADOWFLAME'),
(11583, -1469010, 'Impossible! Rise my minions! Serve your master once more!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8291, 1, 0, 0, 'nefarian SAY_RAISE_SKELETONS'),
(11583, -1469011, 'Worthless $N! Your friends will join you soon enough!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8293, 1, 0, 0, 'nefarian SAY_SLAY'),
(11583, -1469012, 'This cannot be! I am the Master here! You mortals are nothing to my kind! DO YOU HEAR? NOTHING!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8292, 1, 0, 0, 'nefarian SAY_DEATH'),
(11583, -1469013, 'Mages too? You should be more careful when you play with magic...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'nefarian SAY_MAGE'),
(11583, -1469014, 'Warriors, I know you can hit harder than that! Let''s see it!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'nefarian SAY_WARRIOR'),
(11583, -1469015, 'Druids and your silly shapeshifting. Let''s see it in action!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'nefarian SAY_DRUID'),
(11583, -1469016, 'Priests! If you''re going to keep healing like that, we might as well make it a little more interesting!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'nefarian SAY_PRIEST'),
(11583, -1469017, 'Paladins, I''ve heard you have many lives. Show me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'nefarian SAY_PALADIN'),
(11583, -1469018, 'Shamans, show me what your totems can do!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'nefarian SAY_SHAMAN'),
(11583, -1469019, 'Warlocks, you shouldn''t be playing with magic you don''t understand. See what happens?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'nefarian SAY_WARLOCK'),
(11583, -1469020, 'Hunters and your annoying pea-shooters!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'nefarian SAY_HUNTER'),
(11583, -1469021, 'Rogues? Stop hiding and face me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'nefarian SAY_ROGUE'),
(12435, -1469022, 'You''ll pay for forcing me to do this.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8275, 1, 0, 0, 'razorgore SAY_EGGS_BROKEN1'),
(12435, -1469023, 'Fools! These eggs are more precious than you know.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8276, 1, 0, 0, 'razorgore SAY_EGGS_BROKEN2'),
(12435, -1469024, 'No! Not another one! I''ll have your heads for this atrocity.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8277, 1, 0, 0, 'razorgore SAY_EGGS_BROKEN3'),
(12435, -1469025, 'If I fall into the abyss I''ll take all of you mortals with me...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8278, 1, 0, 0, 'razorgore SAY_DEATH'),
(13020, -1469026, 'Too late...friends. Nefarius'' corruption has taken hold. I cannot...control myself.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8281, 1, 0, 0, 'vaelastrasz SAY_LINE1'),
(13020, -1469027, 'I beg you Mortals, flee! Flee before I lose all control. The Black Fire rages within my heart. I must release it!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8282, 1, 0, 0, 'vaelastrasz SAY_LINE2'),
(13020, -1469028, 'FLAME! DEATH! DESTRUCTION! COWER MORTALS BEFORE THE WRATH OF LORD....NO! I MUST FIGHT THIS!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8283, 1, 0, 0, 'vaelastrasz SAY_LINE3'),
(13020, -1469029, 'Nefarius'' hate has made me stronger than ever before. You should have fled, while you could, mortals! The fury of Blackrock courses through my veins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8285, 1, 0, 0, 'vaelastrasz SAY_HALFLIFE'),
(13020, -1469030, 'Forgive me $N, your death only adds to my failure.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8284, 1, 0, 0, 'vaelastrasz SAY_KILLTARGET'),
(11981, -1469031, 'goes into a frenzy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'flamegor EMOTE_FRENZY'),
(0, -1509000, 'senses your fear.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'moam EMOTE_AGGRO'),
(0, -1509001, 'bristles with energy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'moan EMOTE_MANA_FULL'),
(0, -1509002, 'sets eyes on $N!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'buru EMOTE_TARGET'),
(0, -1509003, 'They come now. Try not to get yourself killed, young blood.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'andorov SAY_ANDOROV_INTRO'),
(0, -1509004, 'Remember, Rajaxx, when I said I''d kill you last? I lied...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'andorov SAY_ANDOROV_ATTACK'),
(0, -1509005, 'The time of our retribution is at hand! Let darkness reign in the hearts of our enemies!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8612, 1, 0, 0, 'rajaxx SAY_WAVE3'),
(0, -1509006, 'No longer will we wait behind barred doors and walls of stone! No longer will our vengeance be denied! The dragons themselves will tremble before our wrath!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8610, 1, 0, 0, 'rajaxx SAY_WAVE4'),
(0, -1509007, 'Fear is for the enemy! Fear and death!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8608, 1, 0, 0, 'rajaxx SAY_WAVE5'),
(0, -1509008, 'Staghelm will whimper and beg for his life, just as his whelp of a son did! One thousand years of injustice will end this day!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8611, 1, 0, 0, 'rajaxx SAY_WAVE6'),
(0, -1509009, 'Fandral! Your time has come! Go and hide in the Emerald Dream and pray we never find you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8607, 1, 0, 0, 'rajaxx SAY_WAVE7'),
(0, -1509010, 'Impudent fool! I will kill you myself!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8609, 1, 0, 0, 'rajaxx SAY_INTRO'),
(0, -1509011, 'Attack and make them pay dearly!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8603, 1, 0, 0, 'rajaxx SAY_UNK1'),
(0, -1509012, 'Crush them! Drive them out!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8605, 1, 0, 0, 'rajaxx SAY_UNK2'),
(0, -1509013, 'Do not hesitate! Destroy them!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8606, 1, 0, 0, 'rajaxx SAY_UNK3'),
(0, -1509014, 'Warriors! Captains! Continue the fight!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8613, 1, 0, 0, 'rajaxx SAY_UNK4'),
(0, -1509015, 'You are not worth my time $N!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8614, 1, 0, 0, 'rajaxx SAY_DEAGGRO'),
(0, -1509016, 'Breath your last!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8604, 1, 0, 0, 'rajaxx SAY_KILLS_ANDOROV'),
(0, -1509017, 'Soon you will know the price of your meddling, mortals... The master is nearly whole... And when he rises, your world will be cease!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'rajaxx SAY_COMPLETE_QUEST'),
(0, -1509018, 'I am rejuvinated!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8593, 1, 0, 0, 'ossirian SAY_SURPREME1'),
(0, -1509019, 'My powers are renewed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8595, 1, 0, 0, 'ossirian SAY_SURPREME2'),
(0, -1509020, 'My powers return!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8596, 1, 0, 0, 'ossirian SAY_SURPREME3'),
(0, -1509021, 'Protect the city at all costs!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8597, 1, 0, 0, 'ossirian SAY_RAND_INTRO1'),
(0, -1509022, 'The walls have been breached!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8599, 1, 0, 0, 'ossirian SAY_RAND_INTRO2'),
(0, -1509023, 'To your posts. Defend the city.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8600, 1, 0, 0, 'ossirian SAY_RAND_INTRO3');
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(0, -1509024, 'Tresspassers will be terminated.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8601, 1, 0, 0, 'ossirian SAY_RAND_INTRO4'),
(0, -1509025, 'Sands of the desert rise and block out the sun!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8598, 1, 0, 0, 'ossirian SAY_AGGRO'),
(0, -1509026, 'You are terminated.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8602, 1, 0, 0, 'ossirian SAY_SLAY'),
(0, -1509027, 'I...have...failed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8594, 1, 0, 0, 'ossirian SAY_DEATH'),
(15263, -1531000, 'Are you so eager to die? I would be happy to accomodate you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8615, 1, 0, 0, 'skeram SAY_AGGRO1'),
(15263, -1531001, 'Cower mortals! The age of darkness is at hand.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8616, 1, 0, 0, 'skeram SAY_AGGRO2'),
(15263, -1531002, 'Tremble! The end is upon you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8621, 1, 0, 0, 'skeram SAY_AGGRO3'),
(15263, -1531003, 'Let your death serve as an example!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8617, 1, 0, 0, 'skeram SAY_SLAY1'),
(15263, -1531004, 'Spineless wretches! You will drown in rivers of blood!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8619, 1, 0, 0, 'skeram SAY_SLAY2'),
(15263, -1531005, 'The screams of the dying will fill the air. A symphony of terror is about to begin!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8620, 1, 0, 0, 'skeram SAY_SLAY3'),
(15263, -1531006, 'Prepare for the return of the ancient ones!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8618, 1, 0, 0, 'skeram SAY_SPLIT'),
(15263, -1531007, 'You only delay... the inevetable.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8622, 1, 0, 0, 'skeram SAY_DEATH'),
(15516, -1531008, 'You will be judged for defiling these sacred grounds! The laws of the Ancients will not be challenged! Trespassers will be annihilated!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8646, 1, 0, 0, 'sartura SAY_AGGRO'),
(15516, -1531009, 'I sentence you to death!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8647, 1, 0, 0, 'sartura SAY_SLAY'),
(15516, -1531010, 'I serve to the last!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8648, 1, 0, 0, 'sartura SAY_DEATH'),
(15727, -1531011, 'is weakened!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'cthun EMOTE_WEAKENED'),
(16151, -1532000, 'Well done Midnight!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9173, 1, 0, 0, 'attumen SAY_MIDNIGHT_KILL'),
(16151, -1532001, 'Cowards! Wretches!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9167, 1, 0, 0, 'attumen SAY_APPEAR1'),
(16151, -1532002, 'Who dares attack the steed of the Huntsman?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9298, 1, 0, 0, 'attumen SAY_APPEAR2'),
(16151, -1532003, 'Perhaps you would rather test yourselves against a more formidable opponent?!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9299, 1, 0, 0, 'attumen SAY_APPEAR3'),
(16151, -1532004, 'Come, Midnight, let''s disperse this petty rabble!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9168, 1, 0, 0, 'attumen SAY_MOUNT'),
(15550, -1532005, 'It was... inevitable.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9169, 1, 0, 0, 'attumen SAY_KILL1'),
(15550, -1532006, 'Another trophy to add to my collection!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9300, 1, 0, 0, 'attumen SAY_KILL2'),
(15550, -1532007, 'Weapons are merely a convenience for a warrior of my skill!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9166, 1, 0, 0, 'attumen SAY_DISARMED'),
(15550, -1532008, 'I always knew... someday I would become... the hunted.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9165, 1, 0, 0, 'attumen SAY_DEATH'),
(15550, -1532009, 'Such easy sport.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9170, 1, 0, 0, 'attumen SAY_RANDOM1'),
(15550, -1532010, 'Amateurs! Do not think you can best me! I kill for a living.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9304, 1, 0, 0, 'attumen SAY_RANDOM2'),
(15687, -1532011, 'Hmm, unannounced visitors? Preparations must be made.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9211, 1, 0, 0, 'moroes SAY_AGGRO'),
(15687, -1532012, 'Now, where was I? Oh yes...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9215, 1, 0, 0, 'moroes SAY_SPECIAL_1'),
(15687, -1532013, 'You rang?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9316, 1, 0, 0, 'moroes SAY_SPECIAL_2'),
(15687, -1532014, 'One more for dinner this evening.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9214, 1, 0, 0, 'moroes SAY_KILL_1'),
(15687, -1532015, 'Time... Never enough time.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9314, 1, 0, 0, 'moroes SAY_KILL_2'),
(15687, -1532016, 'I''ve gone and made a mess.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9315, 1, 0, 0, 'moroes SAY_KILL_3'),
(15687, -1532017, 'How terribly clumsy of me...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9213, 1, 0, 0, 'moroes SAY_DEATH'),
(16457, -1532018, 'Your behavior will not be tolerated!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9204, 1, 0, 0, 'maiden SAY_AGGRO'),
(16457, -1532019, 'Ah ah ah...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9207, 1, 0, 0, 'maiden SAY_SLAY1'),
(16457, -1532020, 'This is for the best.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9312, 1, 0, 0, 'maiden SAY_SLAY2'),
(16457, -1532021, 'Impure thoughts lead to profane actions.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9311, 1, 0, 0, 'maiden SAY_SLAY3'),
(16457, -1532022, 'Cast out your corrupt thoughts.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9313, 1, 0, 0, 'maiden SAY_REPENTANCE1'),
(16457, -1532023, 'Your impurity must be cleansed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9208, 1, 0, 0, 'maiden SAY_REPENTANCE2'),
(16457, -1532024, 'Death comes. Will your conscience be clear?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9206, 1, 0, 0, 'maiden SAY_DEATH'),
(17535, -1532025, 'Oh at last, at last. I can go home.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9190, 1, 0, 0, 'dorothee SAY_DOROTHEE_DEATH'),
(17535, -1532026, 'Don''t let them hurt us, Tito! Oh, you won''t, will you?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9191, 1, 0, 0, 'dorothee SAY_DOROTHEE_SUMMON'),
(17535, -1532027, 'Tito, oh Tito, no!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9192, 1, 0, 0, 'dorothee SAY_DOROTHEE_TITO_DEATH'),
(17535, -1532028, 'Oh dear, we simply must find a way home! The old wizard could be our only hope! Strawman, Roar, Tinhead, will you... wait! Oh golly, look! We have visitors!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9195, 1, 0, 0, 'dorothee SAY_DOROTHEE_AGGRO'),
(17546, -1532029, 'Wanna fight? Huh? Do ya? C''mon, I''ll fight you with both claws behind my back!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9227, 1, 0, 0, 'roar SAY_ROAR_AGGRO'),
(17546, -1532030, 'You didn''t have to go and do that.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9229, 1, 0, 0, 'roar SAY_ROAR_DEATH'),
(17546, -1532031, 'I think I''m going to go take fourty winks.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9230, 1, 0, 0, 'roar SAY_ROAR_SLAY'),
(17543, -1532032, 'Now what should I do with you? I simply can''t make up my mind.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9254, 1, 0, 0, 'strawman SAY_STRAWMAN_AGGRO'),
(17543, -1532033, 'Don''t let them make a mattress... out of me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9256, 1, 0, 0, 'strawman SAY_STRAWMAN_DEATH'),
(17543, -1532034, 'I guess I''m not a failure after all.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9257, 1, 0, 0, 'strawman SAY_STRAWMAN_SLAY'),
(17547, -1532035, 'I could really use a heart. Say, can I have yours?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9268, 1, 0, 0, 'tinhead SAY_TINHEAD_AGGRO'),
(17547, -1532036, 'Back to being an old rustbucket.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9270, 1, 0, 0, 'tinhead SAY_TINHEAD_DEATH'),
(17547, -1532037, 'Guess I''m not so rusty, after all.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9271, 1, 0, 0, 'tinhead SAY_TINHEAD_SLAY'),
(17547, -1532038, 'begins to rust.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'tinhead EMOTE_RUST'),
(18168, -1532039, 'Woe to each and every one of you my pretties! <cackles>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9179, 1, 0, 0, 'crone SAY_CRONE_AGGRO'),
(18168, -1532040, 'It will all be over soon! <cackles>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9307, 1, 0, 0, 'crone SAY_CRONE_AGGRO2'),
(18168, -1532041, 'How could you? What a cruel, cruel world!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9178, 1, 0, 0, 'crone SAY_CRONE_DEATH'),
(18168, -1532042, 'Fixed you, didn''t I? <cackles>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9180, 1, 0, 0, 'crone SAY_CRONE_SLAY'),
(17521, -1532043, 'All the better to own you with!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9276, 1, 0, 0, 'wolf SAY_WOLF_AGGRO'),
(17521, -1532044, 'Mmmm... delicious.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9277, 1, 0, 0, 'wolf SAY_WOLF_SLAY'),
(17521, -1532045, 'Run away little girl, run away!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9278, 1, 0, 0, 'wolf SAY_WOLF_HOOD'),
(17534, -1532046, 'What devil art thou, that dost torment me thus?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9196, 1, 0, 0, 'julianne SAY_JULIANNE_AGGRO'),
(17534, -1532047, 'Where is my lord? Where is my Romulo?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9199, 1, 0, 0, 'julianne SAY_JULIANNE_ENTER'),
(17534, -1532048, 'Romulo, I come! Oh... this do I drink to thee!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9198, 1, 0, 0, 'julianne SAY_JULIANNE_DEATH01'),
(17534, -1532049, 'Where is my Lord? Where is my Romulo? Ohh, happy dagger! This is thy sheath! There rust, and let me die!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9310, 1, 0, 0, 'julianne SAY_JULIANNE_DEATH02'),
(17534, -1532050, 'Come, gentle night; and give me back my Romulo!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9200, 1, 0, 0, 'julianne SAY_JULIANNE_RESURRECT'),
(17534, -1532051, 'Parting is such sweet sorrow.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9201, 1, 0, 0, 'julianne SAY_JULIANNE_SLAY'),
(17533, -1532052, 'Wilt thou provoke me? Then have at thee, boy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9233, 1, 0, 0, 'romulo SAY_ROMULO_AGGRO'),
(17533, -1532053, 'Thou smilest... upon the stroke that... murders me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9235, 1, 0, 0, 'romulo SAY_ROMULO_DEATH'),
(17533, -1532054, 'This day''s black fate on more days doth depend. This but begins the woe. Others must end.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9236, 1, 0, 0, 'romulo SAY_ROMULO_ENTER'),
(17533, -1532055, 'Thou detestable maw, thou womb of death; I enforce thy rotten jaws to open!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9237, 1, 0, 0, 'romulo SAY_ROMULO_RESURRECT'),
(17533, -1532056, 'How well my comfort is revived by this!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9238, 1, 0, 0, 'romulo SAY_ROMULO_SLAY'),
(15691, -1532057, 'The Menagerie is for guests only.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9183, 1, 0, 0, 'curator SAY_AGGRO'),
(15691, -1532058, 'Gallery rules will be strictly enforced.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9188, 1, 0, 0, 'curator SAY_SUMMON1'),
(15691, -1532059, 'This curator is equipped for gallery protection.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9309, 1, 0, 0, 'curator SAY_SUMMON2'),
(15691, -1532060, 'Your request cannot be processed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9186, 1, 0, 0, 'curator SAY_EVOCATE'),
(15691, -1532061, 'Failure to comply will result in offensive action.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9185, 1, 0, 0, 'curator SAY_ENRAGE'),
(15691, -1532062, 'Do not touch the displays.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9187, 1, 0, 0, 'curator SAY_KILL1'),
(15691, -1532063, 'You are not a guest.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9308, 1, 0, 0, 'curator SAY_KILL2'),
(15691, -1532064, 'This Curator is no longer op... er... ation... al.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9184, 1, 0, 0, 'curator SAY_DEATH'),
(15688, -1532065, 'Your blood will anoint my circle.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9264, 1, 0, 0, 'terestian SAY_SLAY1'),
(15688, -1532066, 'The great one will be pleased.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9329, 1, 0, 0, 'terestian SAY_SLAY2'),
(15688, -1532067, 'My life, is yours. Oh great one.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9262, 1, 0, 0, 'terestian SAY_DEATH'),
(15688, -1532068, 'Ah, you''re just in time. The rituals are about to begin.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9260, 1, 0, 0, 'terestian SAY_AGGRO'),
(15688, -1532069, 'Please, accept this humble offering, oh great one.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9263, 1, 0, 0, 'terestian SAY_SACRIFICE1'),
(15688, -1532070, 'Let the sacrifice serve his testament to my fealty.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9330, 1, 0, 0, 'terestian SAY_SACRIFICE2'),
(15688, -1532071, 'Come, you dwellers in the dark. Rally to my call!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9265, 1, 0, 0, 'terestian SAY_SUMMON1'),
(15688, -1532072, 'Gather, my pets. There is plenty for all.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9331, 1, 0, 0, 'terestian SAY_SUMMON2'),
(16524, -1532073, 'Please, no more. My son... he''s gone mad!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9241, 1, 0, 0, 'aran SAY_AGGRO1'),
(16524, -1532074, 'I''ll not be tortured again!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9323, 1, 0, 0, 'aran SAY_AGGRO2'),
(16524, -1532075, 'Who are you? What do you want? Stay away from me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9324, 1, 0, 0, 'aran SAY_AGGRO3'),
(16524, -1532076, 'I''ll show you this beaten dog still has some teeth!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9245, 1, 0, 0, 'aran SAY_FLAMEWREATH1'),
(16524, -1532077, 'Burn you hellish fiends!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9326, 1, 0, 0, 'aran SAY_FLAMEWREATH2'),
(16524, -1532078, 'I''ll freeze you all!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9246, 1, 0, 0, 'aran SAY_BLIZZARD1'),
(16524, -1532079, 'Back to the cold dark with you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9327, 1, 0, 0, 'aran SAY_BLIZZARD2'),
(16524, -1532080, 'Yes, yes, my son is quite powerful... but I have powers of my own!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9242, 1, 0, 0, 'aran SAY_EXPLOSION1'),
(16524, -1532081, 'I am not some simple jester! I am Nielas Aran!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9325, 1, 0, 0, 'aran SAY_EXPLOSION2'),
(16524, -1532082, 'Surely you would not deny an old man a replenishing drink? No, no I thought not.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9248, 1, 0, 0, 'aran SAY_DRINK'),
(16524, -1532083, 'I''m not finished yet! No, I have a few more tricks up me sleeve.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9251, 1, 0, 0, 'aran SAY_ELEMENTALS'),
(16524, -1532084, 'I want this nightmare to be over!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9250, 1, 0, 0, 'aran SAY_KILL1'),
(16524, -1532085, 'Torment me no more!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9328, 1, 0, 0, 'aran SAY_KILL2'),
(16524, -1532086, 'You''ve wasted enough of my time. Let these games be finished!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9247, 1, 0, 0, 'aran SAY_TIMEOVER'),
(16524, -1532087, 'At last... The nightmare is.. over...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9244, 1, 0, 0, 'aran SAY_DEATH'),
(16524, -1532088, 'Where did you get that?! Did HE send you?!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9249, 1, 0, 0, 'aran SAY_ATIESH'),
(15689, -1532089, 'cries out in withdrawal, opening gates to the warp.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'netherspite EMOTE_PHASE_PORTAL'),
(15689, -1532090, 'goes into a nether-fed rage!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'netherspite EMOTE_PHASE_BANISH'),
(15690, -1532091, 'Madness has brought you here to me. I shall be your undoing!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9218, 1, 0, 0, 'malchezaar SAY_AGGRO'),
(15690, -1532092, 'Simple fools! Time is the fire in which you''ll burn!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9220, 1, 0, 0, 'malchezaar SAY_AXE_TOSS1'),
(15690, -1532093, 'I see the subtlety of conception is beyond primitives such as you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9317, 1, 0, 0, 'malchezaar SAY_AXE_TOSS2'),
(15690, -1532094, 'Who knows what secrets hide in the dark.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9223, 1, 0, 0, 'malchezaar SAY_SPECIAL1'),
(15690, -1532095, 'The cerestial forces are mine to manipulate.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9320, 1, 0, 0, 'malchezaar SAY_SPECIAL2'),
(15690, -1532096, 'How can you hope to withstand against such overwhelming power?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9321, 1, 0, 0, 'malchezaar SAY_SPECIAL3'),
(15690, -1532097, 'Surely you did not think you could win.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9222, 1, 0, 0, 'malchezaar SAY_SLAY1'),
(15690, -1532098, 'Your greed, your foolishness has brought you to this end.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9318, 1, 0, 0, 'malchezaar SAY_SLAY2'),
(15690, -1532099, 'You are, but a plaything, unfit even to amuse.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9319, 1, 0, 0, 'malchezaar SAY_SLAY3'),
(15690, -1532100, 'All realities, all dimensions are open to me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9224, 1, 0, 0, 'malchezaar SAY_SUMMON1'),
(15690, -1532101, 'You face not Malchezaar alone, but the legions I command!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9322, 1, 0, 0, 'malchezaar SAY_SUMMON2'),
(15690, -1532102, 'I refuse to concede defeat. I am a prince of the Eredar! I am...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9221, 1, 0, 0, 'malchezaar SAY_DEATH'),
(16812, -1532103, 'Welcome Ladies and Gentlemen, to this evening''s presentation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9174, 1, 0, 0, 'barnes OZ1'),
(16812, -1532104, 'Tonight we plumb the depths of the human soul as we join a lost, lonely girl trying desperately -- with the help of her loyal companions -- to find her way home!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9338, 1, 0, 0, 'barnes OZ2'),
(16812, -1532105, 'But she is pursued... by a wicked malevolent crone!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9339, 1, 0, 0, 'barnes OZ3'),
(16812, -1532106, 'Will she survive? Will she prevail? Only time will tell. And now ... on with the show!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9340, 1, 0, 0, 'barnes OZ4'),
(16812, -1532107, 'Good evening, Ladies and Gentlemen! Welcome to this evening''s presentation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9175, 1, 0, 0, 'barnes HOOD1'),
(16812, -1532108, 'Tonight, things are not what they seem. For tonight, your eyes may not be trusted', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9335, 1, 0, 0, 'barnes HOOD2'),
(16812, -1532109, 'Take for instance, this quiet, elderly woman, waiting for a visit from her granddaughter. Surely there is nothing to fear from this sweet, grey-haired, old lady.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9336, 1, 0, 0, 'barnes HOOD3'),
(16812, -1532110, 'But don''t let me pull the wool over your eyes. See for yourself what lies beneath those covers! And now... on with the show!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9337, 1, 0, 0, 'barnes HOOD4'),
(16812, -1532111, 'Welcome, Ladies and Gentlemen, to this evening''s presentation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9176, 1, 0, 0, 'barnes RAJ1'),
(16812, -1532112, 'Tonight, we explore a tale of forbidden love!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9341, 1, 0, 0, 'barnes RAJ2'),
(16812, -1532113, 'But beware, for not all love stories end happily, as you may find out. Sometimes, love pricks like a thorn.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9342, 1, 0, 0, 'barnes RAJ3'),
(16812, -1532114, 'But don''t take it from me, see for yourself what tragedy lies ahead when the paths of star-crossed lovers meet. And now...on with the show!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9343, 1, 0, 0, 'barnes RAJ4'),
(15956, -1533000, 'Ahh... welcome to my parlor.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8788, 1, 0, 0, 'anubrekhan SAY_GREET'),
(15956, -1533001, 'Just a little taste...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8785, 1, 0, 0, 'anubrekhan SAY_AGGRO1'),
(15956, -1533002, 'There is no way out.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8786, 1, 0, 0, 'anubrekhan SAY_AGGRO2'),
(15956, -1533003, 'Yes, Run! It makes the blood pump faster!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8787, 1, 0, 0, 'anubrekhan SAY_AGGRO3'),
(15956, -1533004, 'I hear little hearts beating. Yesss... beating faster now. Soon the beating will stop.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8790, 1, 0, 0, 'anubrekhan SAY_TAUNT1'),
(15956, -1533005, 'Where to go? What to do? So many choices that all end in pain, end in death.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8791, 1, 0, 0, 'anubrekhan SAY_TAUNT2'),
(15956, -1533006, 'Which one shall I eat first? So difficult to choose... the all smell so delicious.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8792, 1, 0, 0, 'anubrekhan SAY_TAUNT3'),
(15956, -1533007, 'Closer now... tasty morsels. I''ve been too long without food. Without blood to drink.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8793, 1, 0, 0, 'anubrekhan SAY_TAUNT4'),
(15956, -1533008, 'Shh... it will all be over soon.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8789, 1, 0, 0, 'anubrekhan SAY_SLAY'),
(15953, -1533009, 'Your old lives, your mortal desires, mean nothing. You are acolytes of the master now, and you will serve the cause without question! The greatest glory is to die in the master''s service!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8799, 1, 0, 0, 'faerlina SAY_GREET'),
(15953, -1533010, 'Slay them in the master''s name!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8794, 1, 0, 0, 'faerlina SAY_AGGRO1'),
(15953, -1533011, 'You cannot hide from me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8795, 1, 0, 0, 'faerlina SAY_AGGRO2'),
(15953, -1533012, 'Kneel before me, worm!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8796, 1, 0, 0, 'faerlina SAY_AGGRO3'),
(15953, -1533013, 'Run while you still can!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8797, 1, 0, 0, 'faerlina SAY_AGGRO4'),
(15953, -1533014, 'You have failed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8800, 1, 0, 0, 'faerlina SAY_SLAY1'),
(15953, -1533015, 'Pathetic wretch!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8801, 1, 0, 0, 'faerlina SAY_SLAY2'),
(15953, -1533016, 'The master... will avenge me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8798, 1, 0, 0, 'faerlina SAY_DEATH'),
(16028, -1533017, 'Patchwerk want to play!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8909, 1, 0, 0, 'patchwerk SAY_AGGRO1'),
(16028, -1533018, 'Kel''Thuzad make Patchwerk his Avatar of War!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8910, 1, 0, 0, 'patchwerk SAY_AGGRO2'),
(16028, -1533019, 'No more play?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8912, 1, 0, 0, 'patchwerk SAY_SLAY'),
(16028, -1533020, 'What happened to... Patch...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8911, 1, 0, 0, 'patchwerk SAY_DEATH'),
(16028, -1533021, 'goes into a berserker rage!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'patchwerk EMOTE_BERSERK'),
(16028, -1533022, '%s becomes enraged!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'patchwerk EMOTE_ENRAGE'),
(0, -1533023, 'Stalagg crush you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8864, 1, 0, 0, 'stalagg SAY_STAL_AGGRO'),
(0, -1533024, 'Stalagg kill!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8866, 1, 0, 0, 'stalagg SAY_STAL_SLAY'),
(0, -1533025, 'Master save me...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8865, 1, 0, 0, 'stalagg SAY_STAL_DEATH'),
(0, -1533026, 'Feed you to master!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8802, 1, 0, 0, 'feugen SAY_FEUG_AGGRO'),
(0, -1533027, 'Feugen make master happy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8804, 1, 0, 0, 'feugen SAY_FEUG_SLAY'),
(0, -1533028, 'No... more... Feugen...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8803, 1, 0, 0, 'feugen SAY_FEUG_DEATH'),
(0, -1533029, 'You are too late... I... must... OBEY!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8872, 1, 0, 0, 'thaddius SAY_GREET'),
(15928, -1533030, 'KILL!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8867, 1, 0, 0, 'thaddius SAY_AGGRO1'),
(15928, -1533031, 'EAT YOUR BONES!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8868, 1, 0, 0, 'thaddius SAY_AGGRO2'),
(15928, -1533032, 'BREAK YOU!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8869, 1, 0, 0, 'thaddius SAY_AGGRO3'),
(15928, -1533033, 'You die now!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8877, 1, 0, 0, 'thaddius SAY_SLAY'),
(0, -1533034, 'Now YOU feel pain!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8871, 1, 0, 0, 'thaddius SAY_ELECT'),
(15928, -1533035, 'Thank... you...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8870, 1, 0, 0, 'thaddius SAY_DEATH'),
(0, -1533036, 'Pleeease!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8873, 1, 0, 0, 'thaddius SAY_SCREAM1'),
(0, -1533037, 'Stop, make it stop!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8874, 1, 0, 0, 'thaddius SAY_SCREAM2'),
(0, -1533038, 'Help me! Save me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8875, 1, 0, 0, 'thaddius SAY_SCREAM3'),
(0, -1533039, 'Please, nooo!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8876, 1, 0, 0, 'thaddius SAY_SCREAM4'),
(16060, -1533040, 'Foolishly you have sought your own demise. Brazenly you have disregarded powers beyond your understanding. You have fought hard to invade the realm of the harvester. Now there is only one way out - to walk the lonely path of the damned.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8807, 1, 0, 0, 'gothik SAY_SPEECH'),
(16060, -1533041, 'Death is the only escape.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8806, 1, 0, 0, 'gothik SAY_KILL'),
(16060, -1533042, 'I... am... undone!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8805, 1, 0, 0, 'gothik SAY_DEATH'),
(16060, -1533043, 'I have waited long enough! Now, you face the harvester of souls!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8808, 1, 0, 0, 'gothik SAY_TELEPORT'),
(16063, -1533044, 'Defend youself!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8892, 1, 0, 0, 'blaumeux SAY_BLAU_AGGRO'),
(16063, -1533045, 'Come, Zeliek, do not drive them out. Not before we''ve had our fun.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8896, 1, 0, 0, 'blaumeux SAY_BLAU_TAUNT1'),
(16063, -1533046, 'I do hope they stay alive long enough for me to... introduce myself.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8897, 1, 0, 0, 'blaumeux SAY_BLAU_TAUNT2'),
(16063, -1533047, 'The first kill goes to me! Anyone care to wager?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8898, 1, 0, 0, 'blaumeux SAY_BLAU_TAUNT3'),
(16063, -1533048, 'Your life is mine!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8895, 1, 0, 0, 'blaumeux SAY_BLAU_SPECIAL'),
(16063, -1533049, 'Who''s next?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8894, 1, 0, 0, 'blaumeux SAY_BLAU_SLAY'),
(16063, -1533050, 'Tou... che!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8893, 1, 0, 0, 'blaumeux SAY_BLAU_DEATH'),
(16063, -1533051, 'Come out and fight, ye wee ninny!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8899, 1, 0, 0, 'korthazz SAY_KORT_AGGRO'),
(16063, -1533052, 'To arms, ye roustabouts! We''ve got company!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8903, 1, 0, 0, 'korthazz SAY_KORT_TAUNT1'),
(16063, -1533053, 'I heard about enough of yer sniveling. Shut yer fly trap ''afore I shut it for ye!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8904, 1, 0, 0, 'korthazz SAY_KORT_TAUNT2'),
(16063, -1533054, 'I''m gonna enjoy killin'' these slack-jawed daffodils!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8905, 1, 0, 0, 'korthazz SAY_KORT_TAUNT3'),
(16063, -1533055, 'I like my meat extra crispy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8902, 1, 0, 0, 'korthazz SAY_KORT_SPECIAl'),
(16063, -1533056, 'Next time, bring more friends!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8901, 1, 0, 0, 'korthazz SAY_KORT_SLAY'),
(16063, -1533057, 'What a bloody waste this is!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8900, 1, 0, 0, 'korthazz SAY_KORT_DEATH'),
(16063, -1533058, 'Flee, before it''s too late!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8913, 1, 0, 0, 'zeliek SAY_ZELI_AGGRO'),
(16063, -1533059, 'Invaders, cease this foolish venture at once! Turn away while you still can!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8917, 1, 0, 0, 'zeliek SAY_ZELI_TAUNT1'),
(16063, -1533060, 'Perhaps they will come to their senses, and run away as fast as they can!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8918, 1, 0, 0, 'zeliek SAY_ZELI_TAUNT2'),
(16063, -1533061, 'Do not continue! Turn back while there''s still time!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8919, 1, 0, 0, 'zeliek SAY_ZELI_TAUNT3'),
(16063, -1533062, 'I- I have no choice but to obey!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8916, 1, 0, 0, 'zeliek SAY_ZELI_SPECIAL'),
(16063, -1533063, 'Forgive me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8915, 1, 0, 0, 'zeliek SAY_ZELI_SLAY'),
(16063, -1533064, 'It is... as it should be.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8914, 1, 0, 0, 'zeliek SAY_ZELI_DEATH'),
(16063, -1533065, 'You seek death?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14571, 1, 0, 0, 'rivendare_naxx SAY_RIVE_AGGRO1'),
(16063, -1533066, 'None shall pass!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14572, 1, 0, 0, 'rivendare_naxx SAY_RIVE_AGGRO2'),
(16063, -1533067, 'Be still!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14573, 1, 0, 0, 'rivendare_naxx SAY_RIVE_AGGRO3'),
(16063, -1533068, 'You will find no peace in death.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14574, 1, 0, 0, 'rivendare_naxx SAY_RIVE_SLAY1'),
(16063, -1533069, 'The master''s will is done.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14575, 1, 0, 0, 'rivendare_naxx SAY_RIVE_SLAY2'),
(16063, -1533070, 'Bow to the might of the scourge!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14576, 1, 0, 0, 'rivendare_naxx SAY_RIVE_SPECIAL'),
(16063, -1533071, 'Enough prattling. Let them come! We shall grind their bones to dust.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14577, 1, 0, 0, 'rivendare_naxx SAY_RIVE_TAUNT1'),
(16063, -1533072, 'Conserve your anger! Harness your rage! You will all have outlets for your frustration soon enough.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14578, 1, 0, 0, 'rivendare_naxx SAY_RIVE_TAUNT2'),
(16063, -1533073, 'Life is meaningless. It is in death that we are truly tested.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14579, 1, 0, 0, 'rivendare_naxx SAY_RIVE_TAUNT3'),
(16063, -1533074, 'Death... will not stop me...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14580, 1, 0, 0, 'rivendare_naxx SAY_RIVE_DEATH'),
(15954, -1533075, 'Glory to the master!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8845, 1, 0, 0, 'noth SAY_AGGRO1'),
(15954, -1533076, 'Your life is forfeit!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8846, 1, 0, 0, 'noth SAY_AGGRO2'),
(15954, -1533077, 'Die, trespasser!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8847, 1, 0, 0, 'noth SAY_AGGRO3'),
(15954, -1533078, 'Rise, my soldiers! Rise and fight once more!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8851, 1, 0, 0, 'noth SAY_SUMMON'),
(15954, -1533079, 'My task is done!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8849, 1, 0, 0, 'noth SAY_SLAY1'),
(15954, -1533080, 'Breathe no more!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8850, 1, 0, 0, 'noth SAY_SLAY2'),
(15954, -1533081, 'I will serve the master... in... death!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8848, 1, 0, 0, 'noth SAY_DEATH'),
(15989, -1533082, 'takes in a deep breath...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'sapphiron EMOTE_BREATH'),
(15989, -1533083, '%s enrages!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'sapphiron EMOTE_ENRAGE'),
(0, -1533084, 'Our preparations continue as planned, master.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14467, 1, 0, 0, 'kelthuzad SAY_SAPP_DIALOG1'),
(0, -1533085, 'It is good that you serve me so faithfully. Soon, all will serve the Lich King and in the end, you shall be rewarded...so long as you do not falter.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8881, 1, 0, 0, 'kelthuzad SAY_SAPP_DIALOG2_LICH'),
(0, -1533086, 'I see no complications... Wait... What is this?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14468, 1, 0, 0, 'kelthuzad SAY_SAPP_DIALOG3'),
(0, -1533087, 'Your security measures have failed! See to this interruption immediately!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8882, 1, 0, 0, 'kelthuzad SAY_SAPP_DIALOG4_LICH'),
(0, -1533088, 'Yes, master!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14469, 1, 0, 0, 'kelthuzad SAY_SAPP_DIALOG5'),
(0, -1533089, 'No!!! A curse upon you, interlopers! The armies of the Lich King will hunt you down. You will not escape your fate...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14484, 1, 0, 0, 'kelthuzad SAY_CAT_DIED'),
(0, -1533090, 'Who dares violate the sanctity of my domain? Be warned, all who trespass here are doomed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14463, 1, 0, 0, 'kelthuzad SAY_TAUNT1'),
(0, -1533091, 'Fools, you think yourselves triumphant? You have only taken one step closer to the abyss! ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14464, 1, 0, 0, 'kelthuzad SAY_TAUNT2'),
(0, -1533092, 'I grow tired of these games. Proceed, and I will banish your souls to oblivion!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14465, 1, 0, 0, 'kelthuzad SAY_TAUNT3'),
(0, -1533093, 'You have no idea what horrors lie ahead. You have seen nothing! The frozen heart of Naxxramas awaits you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14466, 1, 0, 0, 'kelthuzad SAY_TAUNT4'),
(15990, -1533094, 'Pray for mercy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14475, 1, 0, 0, 'kelthuzad SAY_AGGRO1'),
(15990, -1533095, 'Scream your dying breath!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14476, 1, 0, 0, 'kelthuzad SAY_AGGRO2'),
(15990, -1533096, 'The end is upon you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14477, 1, 0, 0, 'kelthuzad SAY_AGGRO3'),
(15990, -1533097, 'The dark void awaits you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14478, 1, 0, 0, 'kelthuzad SAY_SLAY1'),
(15990, -1533098, '<Kel''Thuzad cackles maniacally!>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14479, 1, 0, 0, 'kelthuzad SAY_SLAY2'),
(15990, -1533099, 'AAAAGHHH!... Do not rejoice... your victory is a hollow one... for I shall return with powers beyond your imagining!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14480, 1, 0, 0, 'kelthuzad SAY_DEATH'),
(15990, -1533100, 'Your soul, is bound to me now!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14472, 1, 0, 0, 'kelthuzad SAY_CHAIN1'),
(15990, -1533101, 'There will be no escape!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14473, 1, 0, 0, 'kelthuzad SAY_CHAIN2'),
(15990, -1533102, 'I will freeze the blood in your veins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14474, 1, 0, 0, 'kelthuzad SAY_FROST_BLAST'),
(15990, -1533103, 'Master! I require aid! ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14470, 1, 0, 0, 'kelthuzad SAY_REQUEST_AID'),
(15990, -1533104, 'Very well... warriors of the frozen wastes, rise up! I command you to fight, kill, and die for your master. Let none survive...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'kelthuzad SAY_ANSWER_REQUEST'),
(0, -1533105, 'Minions, servants, soldiers of the cold dark, obey the call of Kel''Thuzad!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14471, 1, 0, 0, 'kelthuzad SAY_SUMMON_MINIONS'),
(15990, -1533106, 'Your petty magics are no challenge to the might of the Scourge! ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14481, 1, 0, 0, 'kelthuzad SAY_SPECIAL1_MANA_DET'),
(15990, -1533107, 'Enough! I grow tired of these distractions! ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14483, 1, 0, 0, 'kelthuzad SAY_SPECIAL3_MANA_DET'),
(15990, -1533108, 'Fools, you have spread your powers too thin. Be free, my minions!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14482, 1, 0, 0, 'kelthuzad SAY_SPECIAL2_DISPELL'),
(15936, -1533109, 'You are mine now!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8825, 1, 0, 0, 'heigan SAY_AGGRO1'),
(15936, -1533110, 'I see you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8826, 1, 0, 0, 'heigan SAY_AGGRO2'),
(15936, -1533111, 'You...are next!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8827, 1, 0, 0, 'heigan SAY_AGGRO3'),
(15936, -1533112, 'Close your eyes... sleep!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8829, 1, 0, 0, 'heigan SAY_SLAY'),
(15936, -1533113, 'The races of the world will perish. It is only a matter of time.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8830, 1, 0, 0, 'heigan SAY_TAUNT1'),
(15936, -1533114, 'I see endless suffering, I see torment, I see rage. I see... everything!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8831, 1, 0, 0, 'heigan SAY_TAUNT2'),
(15936, -1533115, 'Soon... the world will tremble!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8832, 1, 0, 0, 'heigan SAY_TAUNT3'),
(15936, -1533116, 'The end is upon you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8833, 1, 0, 0, 'heigan SAY_TAUNT4'),
(15936, -1533117, 'Hungry worms will feast on your rotten flesh!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8834, 1, 0, 0, 'heigan SAY_TAUNT5'),
(15936, -1533118, 'Noo... o...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8828, 1, 0, 0, 'heigan SAY_DEATH'),
(17772, -1534000, 'I''m in jeopardy, help me if you can!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11007, 1, 0, 0, 'jaina hyjal ATTACKED 1'),
(17772, -1534001, 'They''ve broken through!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11049, 1, 0, 0, 'jaina hyjal ATTACKED 2'),
(17772, -1534002, 'Stay alert! Another wave approaches.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11008, 1, 0, 0, 'jaina hyjal INCOMING'),
(17772, -1534003, 'Don''t give up! We must prevail!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11006, 1, 0, 0, 'jaina hyjal BEGIN'),
(17772, -1534004, 'Hold them back as long as possible.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11050, 1, 0, 0, 'jaina hyjal RALLY 1'),
(17772, -1534005, 'We must hold strong!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11051, 1, 0, 0, 'jaina hyjal RALLY 2'),
(17772, -1534006, 'We are lost. Fall back!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11009, 1, 0, 0, 'jaina hyjal FAILURE'),
(17772, -1534007, 'We have won valuable time. Now we must pull back!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11011, 1, 0, 0, 'jaina hyjal SUCCESS'),
(17772, -1534008, 'I did... my best.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11010, 1, 0, 0, 'jaina hyjal DEATH'),
(17852, -1534009, 'I will lie down for no one!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11031, 1, 0, 0, 'thrall hyjal ATTACKED 1'),
(17852, -1534010, 'Bring the fight to me and pay with your lives!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11061, 1, 0, 0, 'thrall hyjal ATTACKED 2'),
(17852, -1534011, 'Make ready for another wave! LOK-TAR OGAR!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11032, 1, 0, 0, 'thrall hyjal INCOMING'),
(17852, -1534012, 'Hold them back! Do not falter!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11030, 1, 0, 0, 'thrall hyjal BEGIN'),
(17852, -1534013, 'Victory or death!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11059, 1, 0, 0, 'thrall hyjal RALLY 1'),
(17852, -1534014, 'Do not give an inch of ground!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11060, 1, 0, 0, 'thrall hyjal RALLY 2'),
(17852, -1534015, 'It is over. Withdraw! We have failed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11033, 1, 0, 0, 'thrall hyjal FAILURE'),
(17852, -1534016, 'We have played our part and done well. It is up to the others now.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11035, 1, 0, 0, 'thrall hyjal SUCCESS'),
(17852, -1534017, 'Uraaa...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11034, 1, 0, 0, 'thrall hyjal DEATH'),
(0, -1534018, 'All of your efforts have been in vain, for the draining of the World Tree has already begun. Soon the heart of your world will beat no more.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10986, 1, 0, 0, 'archimonde SAY_PRE_EVENTS_COMPLETE'),
(17968, -1534019, 'Your resistance is insignificant.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10987, 1, 0, 0, 'archimonde SAY_AGGRO'),
(17968, -1534020, 'This world will burn!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10990, 1, 0, 0, 'archimonde SAY_DOOMFIRE1'),
(17968, -1534021, 'Manach sheek-thrish!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11041, 1, 0, 0, 'archimonde SAY_DOOMFIRE2'),
(17968, -1534022, 'A-kreesh!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10989, 1, 0, 0, 'archimonde SAY_AIR_BURST1'),
(17968, -1534023, 'Away vermin!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11043, 1, 0, 0, 'archimonde SAY_AIR_BURST2'),
(17968, -1534024, 'All creation will be devoured!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11044, 1, 0, 0, 'archimonde SAY_SLAY1'),
(17968, -1534025, 'Your soul will languish for eternity.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10991, 1, 0, 0, 'archimonde SAY_SLAY2'),
(17968, -1534026, 'I am the coming of the end!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11045, 1, 0, 0, 'archimonde SAY_SLAY3'),
(17968, -1534027, 'At last it is here. Mourn and lament the passing of all you have ever known and all that would have been! Akmin-kurai!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10993, 1, 0, 0, 'archimonde SAY_ENRAGE'),
(17968, -1534028, 'No, it cannot be! Nooo!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10992, 1, 0, 0, 'archimonde SAY_DEATH'),
(17968, -1534029, 'You are mine now.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10988, 1, 0, 0, 'archimonde SAY_SOUL_CHARGE1'),
(17968, -1534030, 'Bow to my will.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11042, 1, 0, 0, 'archimonde SAY_SOUL_CHARGE2'),
(16807, -1540000, 'You wish to fight us all at once? This should be amusing!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10262, 1, 0, 0, 'nethekurse SAY_INTRO'),
(16807, -1540001, 'You can have that one. I no longer need him.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10263, 1, 0, 0, 'nethekurse PEON_ATTACK_1'),
(16807, -1540002, 'Yes, beat him mercilessly. His skull is a thick as an ogres.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10264, 1, 0, 0, 'nethekurse PEON_ATTACK_2'),
(16807, -1540003, 'Don''t waste your time on that one. He''s weak!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10265, 1, 0, 0, 'nethekurse PEON_ATTACK_3'),
(16807, -1540004, 'You want him? Very well, take him!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10266, 1, 0, 0, 'nethekurse PEON_ATTACK_4'),
(16807, -1540005, 'One pitiful wretch down. Go on, take another one.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10267, 1, 0, 0, 'nethekurse PEON_DIE_1'),
(16807, -1540006, 'Ahh, what a waste... Next!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10268, 1, 0, 0, 'nethekurse PEON_DIE_2'),
(16807, -1540007, 'I was going to kill him anyway!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10269, 1, 0, 0, 'nethekurse PEON_DIE_3'),
(16807, -1540008, 'Thank you for saving me the trouble! Now it''s my turn to have some fun...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10270, 1, 0, 0, 'nethekurse PEON_DIE_4'),
(16807, -1540009, 'Beg for your pittyfull life!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10259, 1, 0, 0, 'nethekurse SAY_TAUNT_1'),
(16807, -1540010, 'Run covad, ruun!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10260, 1, 0, 0, 'nethekurse SAY_TAUNT_2'),
(16807, -1540011, 'Your pain amuses me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10261, 1, 0, 0, 'nethekurse SAY_TAUNT_3'),
(16807, -1540012, 'I''m already bored.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10271, 1, 0, 0, 'nethekurse SAY_AGGRO_1'),
(16807, -1540013, 'Come on! ... Show me a real fight.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10272, 1, 0, 0, 'nethekurse SAY_AGGRO_2'),
(16807, -1540014, 'I had more fun torturing the peons.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10273, 1, 0, 0, 'nethekurse SAY_AGGRO_3'),
(16807, -1540015, 'You Loose.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10274, 1, 0, 0, 'nethekurse SAY_SLAY_1'),
(16807, -1540016, 'Ohh! Just die.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10275, 1, 0, 0, 'nethekurse SAY_SLAY_2'),
(16807, -1540017, 'What a ... a shame.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10276, 1, 0, 0, 'nethekurse SAY_DIE'),
(16809, -1540018, 'Smash!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10306, 1, 0, 0, 'omrogg GoCombat_1'),
(16809, -1540019, 'If you nice me let you live.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10308, 1, 0, 0, 'omrogg GoCombat_2'),
(16809, -1540020, 'Me hungry!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10309, 1, 0, 0, 'omrogg GoCombat_3'),
(16809, -1540021, 'Why don''t you let me do the talking?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10317, 1, 0, 0, 'omrogg GoCombatDelay_1'),
(16809, -1540022, 'No, we will NOT let you live!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10318, 1, 0, 0, 'omrogg GoCombatDelay_2'),
(16809, -1540023, 'You always hungry. That why we so fat!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10319, 1, 0, 0, 'omrogg GoCombatDelay_3'),
(16809, -1540024, 'You stay here. Me go kill someone else!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10303, 1, 0, 0, 'omrogg Threat_1'),
(16809, -1540025, 'What are you doing!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10315, 1, 0, 0, 'omrogg Threat_2'),
(16809, -1540026, 'Me kill someone else...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10302, 1, 0, 0, 'omrogg Threat_3'),
(16809, -1540027, 'Me not like this one...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10300, 1, 0, 0, 'omrogg Threat_4'),
(16809, -1540028, 'That''s not funny!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10314, 1, 0, 0, 'omrogg ThreatDelay1_1'),
(16809, -1540029, 'Me get bored...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10305, 1, 0, 0, 'omrogg ThreatDelay1_2'),
(16809, -1540030, 'I''m not done yet, idiot!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10313, 1, 0, 0, 'omrogg ThreatDelay1_3'),
(16809, -1540031, 'Hey you numbskull!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10312, 1, 0, 0, 'omrogg ThreatDelay1_4'),
(16809, -1540032, 'Ha ha ha.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10304, 1, 0, 0, 'omrogg ThreatDelay2_1'),
(16809, -1540033, 'Whhy! He almost dead!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10316, 1, 0, 0, 'omrogg ThreatDelay2_2'),
(16809, -1540034, 'H''ey...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10307, 1, 0, 0, 'omrogg ThreatDelay2_3'),
(16809, -1540035, 'We kill his friend!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10301, 1, 0, 0, 'omrogg ThreatDelay2_4'),
(16809, -1540036, 'This one die easy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10310, 1, 0, 0, 'omrogg Killing_1'),
(16809, -1540037, 'I''m tired. You kill next one!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10320, 1, 0, 0, 'omrogg Killing_2'),
(16809, -1540038, 'That''s because I do all the hard work!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10321, 1, 0, 0, 'omrogg KillingDelay_1'),
(16809, -1540039, 'This all...your fault!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10311, 1, 0, 0, 'omrogg YELL_DIE_L'),
(16809, -1540040, 'I...hate...you...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10322, 1, 0, 0, 'omrogg YELL_DIE_R'),
(16809, -1540041, '%s enrages', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'omrogg EMOTE_ENRAGE'),
(16808, -1540042, 'Ours is the true Horde! The only Horde!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10323, 1, 0, 0, 'kargath SAY_AGGRO1'),
(16808, -1540043, 'I''ll carve the meat from your bones!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10324, 1, 0, 0, 'kargath SAY_AGGRO2'),
(16808, -1540044, 'I am called Bladefist for a reason, as you will see!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10325, 1, 0, 0, 'kargath SAY_AGGRO3'),
(16808, -1540045, 'For the real Horde!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10326, 1, 0, 0, 'kargath SAY_SLAY1'),
(16808, -1540046, 'I am the only Warchief!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10327, 1, 0, 0, 'kargath SAY_SLAY2'),
(16808, -1540047, 'The true Horde... will.. prevail...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10328, 1, 0, 0, 'kargath SAY_DEATH'),
(17377, -1542000, 'Who dares interrupt... What is this? What have you done? You ruin everything!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10164, 1, 0, 0, 'kelidan SAY_WAKE'),
(17377, -1542001, 'You mustn''t let him loose!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10166, 1, 0, 0, 'kelidan SAY_ADD_AGGRO_1'),
(17377, -1542002, 'Ignorant whelps!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10167, 1, 0, 0, 'kelidan SAY_ADD_AGGRO_2');
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(17377, -1542003, 'You fools! He''ll kill us all!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10168, 1, 0, 0, 'kelidan SAY_ADD_AGGRO_3'),
(17377, -1542004, 'Just as you deserve!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10169, 1, 0, 0, 'kelidan SAY_KILL_1'),
(17377, -1542005, 'Your friends will soon be joining you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10170, 1, 0, 0, 'kelidan SAY_KILL_2'),
(17377, -1542006, 'Closer... Come closer.. and burn!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10165, 1, 0, 0, 'kelidan SAY_NOVA'),
(17377, -1542007, 'Good luck... you''ll need it..', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10171, 1, 0, 0, 'kelidan SAY_DIE'),
(17380, -1542008, 'Come intruders....', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'broggok SAY_AGGRO'),
(17381, -1542009, 'My work must not be interrupted.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10286, 1, 0, 0, 'the_maker SAY_AGGRO_1'),
(17381, -1542010, 'Perhaps I can find a use for you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10287, 1, 0, 0, 'the_maker SAY_AGGRO_2'),
(17381, -1542011, 'Anger... Hate... These are tools I can use.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10288, 1, 0, 0, 'the_maker SAY_AGGRO_3'),
(17381, -1542012, 'Let''s see what I can make of you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10289, 1, 0, 0, 'the_maker SAY_KILL_1'),
(17381, -1542013, 'It is pointless to resist.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10290, 1, 0, 0, 'the_maker SAY_KILL_2'),
(17381, -1542014, 'Stay away from... me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10291, 1, 0, 0, 'the_maker SAY_DIE'),
(17306, -1543000, 'Do you smell that? Fresh meat has somehow breached our citadel. Be wary of any intruders.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'gargolmar SAY_TAUNT'),
(17306, -1543001, 'Heal me! QUICKLY!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10329, 1, 0, 0, 'gargolmar SAY_HEAL'),
(17306, -1543002, 'Back off, pup!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10330, 1, 0, 0, 'gargolmar SAY_SURGE'),
(17306, -1543003, 'What have we here...?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10331, 1, 0, 0, 'gargolmar SAY_AGGRO_1'),
(17306, -1543004, 'Heh... this may hurt a little.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10332, 1, 0, 0, 'gargolmar SAY_AGGRO_2'),
(17306, -1543005, 'I''m gonna enjoy this.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10333, 1, 0, 0, 'gargolmar SAY_AGGRO_3'),
(17306, -1543006, 'Say farewell!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10334, 1, 0, 0, 'gargolmar SAY_KILL_1'),
(17306, -1543007, 'Much too easy...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10335, 1, 0, 0, 'gargolmar SAY_KILL_2'),
(17306, -1543008, 'Hahah.. <cough> ..argh!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10336, 1, 0, 0, 'gargolmar SAY_DIE'),
(17308, -1543009, 'You dare stand against me?!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10280, 1, 0, 0, 'omor SAY_AGGRO_1'),
(17308, -1543010, 'I will not be defeated!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10279, 1, 0, 0, 'omor SAY_AGGRO_2'),
(17308, -1543011, 'Your insolence will be your death.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10281, 1, 0, 0, 'omor SAY_AGGRO_3'),
(17308, -1543012, 'Achor-she-ki! Feast my pet! Eat your fill!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10277, 1, 0, 0, 'omor SAY_SUMMON'),
(17308, -1543013, 'A-Kreesh!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10278, 1, 0, 0, 'omor SAY_CURSE'),
(17308, -1543014, 'Die, weakling!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10282, 1, 0, 0, 'omor SAY_KILL_1'),
(17308, -1543015, 'It is... not over.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10284, 1, 0, 0, 'omor SAY_DIE'),
(17308, -1543016, 'I am victorious!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10283, 1, 0, 0, 'omor SAY_WIPE'),
(17307, -1543017, 'You have faced many challenges, pity they were all in vain. Soon your people will kneel to my lord!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10292, 1, 0, 0, 'vazruden SAY_INTRO'),
(17537, -1543018, 'Is there no one left to test me?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10293, 1, 0, 0, 'vazruden SAY_WIPE'),
(17537, -1543019, 'Your time is running out!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10294, 1, 0, 0, 'vazruden SAY_AGGRO_1'),
(17537, -1543020, 'You are nothing, I answer a higher call!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10295, 1, 0, 0, 'vazruden SAY_AGGRO_2'),
(17537, -1543021, 'The Dark Lord laughs at you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10296, 1, 0, 0, 'vazruden SAY_AGGRO_3'),
(17537, -1543022, 'It is over. Finished!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10297, 1, 0, 0, 'vazruden SAY_KILL_1'),
(17537, -1543023, 'Your days are done!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10298, 1, 0, 0, 'vazruden SAY_KILL_2'),
(17537, -1543024, 'My lord will be the end you all...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10299, 1, 0, 0, 'vazruden SAY_DIE'),
(17537, -1543025, 'descends from the sky', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'vazruden EMOTE'),
(17257, -1544000, 'Wretched, meddling insects. Release me and perhaps I will grant you a merciful death!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10247, 1, 0, 0, 'magtheridon SAY_TAUNT1'),
(17257, -1544001, 'Vermin! Leeches! Take my blood and choke on it!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10248, 1, 0, 0, 'magtheridon SAY_TAUNT2'),
(17257, -1544002, 'Illidan is an arrogant fool. I will crush him and reclaim Outland as my own.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10249, 1, 0, 0, 'magtheridon SAY_TAUNT3'),
(17257, -1544003, 'Away, you mindless parasites. My blood is my own!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10250, 1, 0, 0, 'magtheridon SAY_TAUNT4'),
(17257, -1544004, 'How long do you believe your pathetic sorcery can hold me?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10251, 1, 0, 0, 'magtheridon SAY_TAUNT5'),
(17257, -1544005, 'My blood will be the end of you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10252, 1, 0, 0, 'magtheridon SAY_TAUNT6'),
(17257, -1544006, 'I...am...UNLEASHED!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10253, 1, 0, 0, 'magtheridon SAY_FREED'),
(17257, -1544007, 'Thank you for releasing me. Now...die!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10254, 1, 0, 0, 'magtheridon SAY_AGGRO'),
(17257, -1544008, 'Not again...NOT AGAIN!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10256, 1, 0, 0, 'magtheridon SAY_BANISH'),
(17257, -1544009, 'I will not be taken so easily. Let the walls of this prison tremble...and FALL!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10257, 1, 0, 0, 'magtheridon SAY_CHAMBER_DESTROY'),
(17257, -1544010, 'Did you think me weak? Soft? Who is the weak one now?!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10255, 1, 0, 0, 'magtheridon SAY_PLAYER_KILLED'),
(17257, -1544011, 'The Legion...will consume you...all...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10258, 1, 0, 0, 'magtheridon SAY_DEATH'),
(17257, -1544012, '%s becomes enraged!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'magtheridon EMOTE_BERSERK'),
(17257, -1544013, 'begins to cast Blast Nova!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'magtheridon EMOTE_BLASTNOVA'),
(17257, -1544014, 'bonds begin to weaken!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'magtheridon EMOTE_BEGIN'),
(0, -1544015, 'breaks free!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'magtheridon EMOTE_FREED'),
(17797, -1545000, 'Surge forth my pets!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10360, 1, 0, 0, 'thespia SAY_SUMMON'),
(17797, -1545001, 'The depths will consume you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10361, 1, 0, 0, 'thespia SAY_AGGRO_1'),
(17797, -1545002, 'Meet your doom, surface dwellers!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10362, 1, 0, 0, 'thespia SAY_AGGRO_2'),
(17797, -1545003, 'You will drown in blood!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10363, 1, 0, 0, 'thespia SAY_AGGRO_3'),
(17797, -1545004, 'To the depths of oblivion with you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10364, 1, 0, 0, 'thespia SAY_SLAY_1'),
(17797, -1545005, 'For my lady and master!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10365, 1, 0, 0, 'thespia SAY_SLAY_2'),
(17797, -1545006, 'Our matron will be.. the end of.. you..', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10366, 1, 0, 0, 'thespia SAY_DEAD'),
(17796, -1545007, 'I''m bringin'' the pain!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10367, 1, 0, 0, 'mekgineer SAY_MECHANICS'),
(17796, -1545008, 'You''re in for a world of hurt!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10368, 1, 0, 0, 'mekgineer SAY_AGGRO_1'),
(17796, -1545009, 'Eat hot metal, scumbag!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10369, 1, 0, 0, 'mekgineer SAY_AGGRO_2'),
(17796, -1545010, 'I''ll come over there!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10370, 1, 0, 0, 'mekgineer SAY_AGGRO_3'),
(17796, -1545011, 'I''m bringin'' the pain!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10371, 1, 0, 0, 'mekgineer SAY_AGGRO_4'),
(17796, -1545012, 'You just got served, punk!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10372, 1, 0, 0, 'mekgineer SOUND_SLAY_1'),
(17796, -1545013, 'I own you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10373, 1, 0, 0, 'mekgineer SOUND_SLAY_2'),
(17796, -1545014, 'Have fun dyin'', cupcake!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10374, 1, 0, 0, 'mekgineer SOUND_SLAY_3'),
(17796, -1545015, 'Mommy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10375, 1, 0, 0, 'mekgineer SAY_DEATH'),
(17798, -1545016, 'You deem yourselves worthy simply because you bested my guards? Our work here will not be compromised!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10390, 1, 0, 0, 'kalithresh SAY_INTRO'),
(17798, -1545017, 'This is not nearly over...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10391, 1, 0, 0, 'kalithresh SAY_REGEN'),
(17798, -1545018, 'Your head will roll!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10392, 1, 0, 0, 'kalithresh SAY_AGGRO1'),
(17798, -1545019, 'I despise all of your kind!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10393, 1, 0, 0, 'kalithresh SAY_AGGRO2'),
(17798, -1545020, 'Ba''ahntha sol''dorei!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10394, 1, 0, 0, 'kalithresh SAY_AGGRO3'),
(17798, -1545021, 'Scram, surface filth!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10395, 1, 0, 0, 'kalithresh SAY_SLAY1'),
(17798, -1545022, 'Ah ha ha ha ha ha ha!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10396, 1, 0, 0, 'kalithresh SAY_SLAY2'),
(17798, -1545023, 'For her Excellency... for... Vashj!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10397, 1, 0, 0, 'kalithresh SAY_DEATH'),
(21216, -1548000, 'I cannot allow you to interfere!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11289, 1, 0, 0, 'hydross SAY_AGGRO'),
(21216, -1548001, 'Better, much better.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11290, 1, 0, 0, 'hydross SAY_SWITCH_TO_CLEAN'),
(21216, -1548002, 'They have forced me to this...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11291, 1, 0, 0, 'hydross SAY_CLEAN_SLAY1'),
(21216, -1548003, 'I have no choice.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11292, 1, 0, 0, 'hydross SAY_CLEAN_SLAY2'),
(21216, -1548004, 'I am... released...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11293, 1, 0, 0, 'hydross SAY_CLEAN_DEATH'),
(21216, -1548005, 'Aaghh, the poison...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11297, 1, 0, 0, 'hydross SAY_SWITCH_TO_CORRUPT'),
(21216, -1548006, 'I will purge you from this place.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11298, 1, 0, 0, 'hydross SAY_CORRUPT_SLAY1'),
(21216, -1548007, 'You are no better than they!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11299, 1, 0, 0, 'hydross SAY_CORRUPT_SLAY2'),
(21216, -1548008, 'You are the disease, not I', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11300, 1, 0, 0, 'hydross SAY_CORRUPT_DEATH'),
(21215, -1548009, 'Finally, my banishment ends!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11312, 1, 0, 0, 'leotheras SAY_AGGRO'),
(21215, -1548010, 'Be gone, trifling elf. I am in control now!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11304, 1, 0, 0, 'leotheras SAY_SWITCH_TO_DEMON'),
(21215, -1548011, 'We all have our demons...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11305, 1, 0, 0, 'leotheras SAY_INNER_DEMONS'),
(21215, -1548012, 'I have no equal.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11306, 1, 0, 0, 'leotheras SAY_DEMON_SLAY1'),
(21215, -1548013, 'Perish, mortal.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11307, 1, 0, 0, 'leotheras SAY_DEMON_SLAY2'),
(21215, -1548014, 'Yes, YES! Ahahah!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11308, 1, 0, 0, 'leotheras SAY_DEMON_SLAY3'),
(21215, -1548015, 'Kill! KILL!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11314, 1, 0, 0, 'leotheras SAY_NIGHTELF_SLAY1'),
(21215, -1548016, 'That''s right! Yes!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11315, 1, 0, 0, 'leotheras SAY_NIGHTELF_SLAY2'),
(21215, -1548017, 'Who''s the master now?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11316, 1, 0, 0, 'leotheras SAY_NIGHTELF_SLAY3'),
(21215, -1548018, 'No... no! What have you done? I am the master! Do you hear me? I am... aaggh! Can''t... contain him...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11313, 1, 0, 0, 'leotheras SAY_FINAL_FORM'),
(21215, -1548019, 'At last I am liberated. It has been too long since I have tasted true freedom!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11309, 1, 0, 0, 'leotheras SAY_FREE'),
(21215, -1548020, 'You cannot kill me! Fools, I''ll be back! I''ll... aarghh...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11317, 1, 0, 0, 'leotheras SAY_DEATH'),
(21214, -1548021, 'Guards, attention! We have visitors...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11277, 1, 0, 0, 'karathress SAY_AGGRO'),
(21214, -1548022, 'Your overconfidence will be your undoing! Guards, lend me your strength!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11278, 1, 0, 0, 'karathress SAY_GAIN_BLESSING'),
(21214, -1548023, 'Go on, kill them! I''ll be the better for it!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11279, 1, 0, 0, 'karathress SAY_GAIN_ABILITY1'),
(21214, -1548024, 'I am more powerful than ever!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11280, 1, 0, 0, 'karathress SAY_GAIN_ABILITY2'),
(21214, -1548025, 'More knowledge, more power!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11281, 1, 0, 0, 'karathress SAY_GAIN_ABILITY3'),
(21214, -1548026, 'Land-dwelling scum!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11282, 1, 0, 0, 'karathress SAY_SLAY1'),
(21214, -1548027, 'Alana be''lendor!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11283, 1, 0, 0, 'karathress SAY_SLAY2'),
(21214, -1548028, 'I am rid of you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11284, 1, 0, 0, 'karathress SAY_SLAY3'),
(21214, -1548029, 'Her ... excellency ... awaits!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11285, 1, 0, 0, 'karathress SAY_DEATH'),
(21213, -1548030, 'Flood of the deep, take you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11321, 1, 0, 0, 'morogrim SAY_AGGRO'),
(21213, -1548031, 'By the Tides, kill them at once!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11322, 1, 0, 0, 'morogrim SAY_SUMMON1'),
(21213, -1548032, 'Destroy them my subjects!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11323, 1, 0, 0, 'morogrim SAY_SUMMON2'),
(21213, -1548033, 'There is nowhere to hide!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11324, 1, 0, 0, 'morogrim SAY_SUMMON_BUBL1'),
(21213, -1548034, 'Soon it will be finished!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11325, 1, 0, 0, 'morogrim SAY_SUMMON_BUBL2'),
(21213, -1548035, 'It is done!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11326, 1, 0, 0, 'morogrim SAY_SLAY1'),
(21213, -1548036, 'Strugging only makes it worse.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11327, 1, 0, 0, 'morogrim SAY_SLAY2'),
(21213, -1548037, 'Only the strong survive.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11328, 1, 0, 0, 'morogrim SAY_SLAY3'),
(21213, -1548038, 'Great... currents of... Ageon.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11329, 1, 0, 0, 'morogrim SAY_DEATH'),
(21213, -1548039, 'sends his enemies to their watery graves!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'morogrim EMOTE_WATERY_GRAVE'),
(21213, -1548040, 'The violent earthquake has alerted nearby murlocs!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'morogrim EMOTE_EARTHQUAKE'),
(21213, -1548041, 'summons Watery Globules!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'morogrim EMOTE_WATERY_GLOBULES'),
(21212, -1548042, 'Water is life. It has become a rare commodity here in Outland. A commodity that we alone shall control. We are the Highborne, and the time has come at last for us to retake our rightful place in the world!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11531, 1, 0, 0, 'vashj SAY_INTRO'),
(21212, -1548043, 'I''ll split you from stem to stern!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11532, 1, 0, 0, 'vashj SAY_AGGRO1'),
(21212, -1548044, 'Victory to Lord Illidan!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11533, 1, 0, 0, 'vashj SAY_AGGRO2'),
(21212, -1548045, 'I spit on you, surface filth!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11534, 1, 0, 0, 'vashj SAY_AGGRO3'),
(21212, -1548046, 'Death to the outsiders!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11535, 1, 0, 0, 'vashj SAY_AGGRO4'),
(21212, -1548047, 'I did not wish to lower myself by engaging your kind, but you leave me little choice!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11538, 1, 0, 0, 'vashj SAY_PHASE1'),
(21212, -1548048, 'The time is now! Leave none standing!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11539, 1, 0, 0, 'vashj SAY_PHASE2'),
(21212, -1548049, 'You may want to take cover.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11540, 1, 0, 0, 'vashj SAY_PHASE3'),
(21212, -1548050, 'Straight to the heart!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11536, 1, 0, 0, 'vashj SAY_BOWSHOT1'),
(21212, -1548051, 'Seek your mark!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11537, 1, 0, 0, 'vashj SAY_BOWSHOT2'),
(21212, -1548052, 'Your time ends now!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11541, 1, 0, 0, 'vashj SAY_SLAY1'),
(21212, -1548053, 'You have failed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11542, 1, 0, 0, 'vashj SAY_SLAY2'),
(21212, -1548054, 'Be''lamere an''delay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11543, 1, 0, 0, 'vashj SAY_SLAY3'),
(21212, -1548055, 'Lord Illidan, I... I am... sorry.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11544, 1, 0, 0, 'vashj SAY_DEATH'),
(19516, -1550000, 'Alert, you are marked for extermination!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11213, 1, 0, 0, 'voidreaver SAY_AGGRO'),
(19516, -1550001, 'Extermination, successful.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11215, 1, 0, 0, 'voidreaver SAY_SLAY1'),
(19516, -1550002, 'Imbecile life form, no longer functional.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11216, 1, 0, 0, 'voidreaver SAY_SLAY2'),
(19516, -1550003, 'Threat neutralized.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11217, 1, 0, 0, 'voidreaver SAY_SLAY3'),
(19516, -1550004, 'Systems... shutting... down...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11214, 1, 0, 0, 'voidreaver SAY_DEATH'),
(19516, -1550005, 'Alternative measure commencing...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11218, 1, 0, 0, 'voidreaver SAY_POUNDING1'),
(19516, -1550006, 'Calculating force parameters...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11219, 1, 0, 0, 'voidreaver SAY_POUNDING2'),
(18805, -1550007, 'Tal anu''men no Sin''dorei!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11134, 1, 0, 0, 'solarian SAY_AGGRO'),
(18805, -1550008, 'Ha ha ha! You are hopelessly outmatched!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11139, 1, 0, 0, 'solarian SAY_SUMMON1'),
(18805, -1550009, 'I will crush your delusions of grandeur!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11140, 1, 0, 0, 'solarian SAY_SUMMON2'),
(18805, -1550010, 'Your soul belongs to the Abyss!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11136, 1, 0, 0, 'solarian SAY_KILL1'),
(18805, -1550011, 'By the blood of the Highborne!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11137, 1, 0, 0, 'solarian SAY_KILL2'),
(18805, -1550012, 'For the Sunwell!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11138, 1, 0, 0, 'solarian SAY_KILL3'),
(18805, -1550013, 'The warmth of the sun... awaits.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11135, 1, 0, 0, 'solarian SAY_DEATH'),
(18805, -1550014, 'Enough of this! Now I call upon the fury of the cosmos itself.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'solarian SAY_VOIDA'),
(18805, -1550015, 'I become ONE... with the VOID!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'solarian SAY_VOIDB'),
(19622, -1550016, 'Energy. Power. My people are addicted to it... a dependence made manifest after the Sunwell was destroyed. Welcome... to the future. A pity you are too late to stop it. No one can stop me now! Selama ashal''anore!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11256, 1, 0, 0, 'kaelthas SAY_INTRO'),
(19622, -1550017, 'Capernian will see to it that your stay here is a short one.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11257, 1, 0, 0, 'kaelthas SAY_INTRO_CAPERNIAN'),
(19622, -1550018, 'Well done, you have proven worthy to test your skills against my master engineer, Telonicus.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11258, 1, 0, 0, 'kaelthas SAY_INTRO_TELONICUS'),
(19622, -1550019, 'Let us see how your nerves hold up against the Darkener, Thaladred.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11259, 1, 0, 0, 'kaelthas SAY_INTRO_THALADRED'),
(19622, -1550020, 'You have persevered against some of my best advisors... but none can withstand the might of the Blood Hammer. Behold, Lord Sanguinar!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11260, 1, 0, 0, 'kaelthas SAY_INTRO_SANGUINAR'),
(19622, -1550021, 'As you see, I have many weapons in my arsenal...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11261, 1, 0, 0, 'kaelthas SAY_PHASE2_WEAPON'),
(19622, -1550022, 'Perhaps I underestimated you. It would be unfair to make you fight all four advisors at once, but... fair treatment was never shown to my people. I''m just returning the favor.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11262, 1, 0, 0, 'kaelthas SAY_PHASE3_ADVANCE'),
(19622, -1550023, 'Alas, sometimes one must take matters into one''s own hands. Balamore shanal!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11263, 1, 0, 0, 'kaelthas SAY_PHASE4_INTRO2'),
(19622, -1550024, 'I have not come this far to be stopped! The future I have planned will not be jeopardized! Now you will taste true power!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11273, 1, 0, 0, 'kaelthas SAY_PHASE5_NUTS'),
(19622, -1550025, 'You will not prevail.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11270, 1, 0, 0, 'kaelthas SAY_SLAY1'),
(19622, -1550026, 'You gambled...and lost.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11271, 1, 0, 0, 'kaelthas SAY_SLAY2'),
(19622, -1550027, 'This was Child''s play.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11272, 1, 0, 0, 'kaelthas SAY_SLAY3'),
(19622, -1550028, 'Obey me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11268, 1, 0, 0, 'kaelthas SAY_MINDCONTROL1'),
(19622, -1550029, 'Bow to my will.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11269, 1, 0, 0, 'kaelthas SAY_MINDCONTROL2'),
(19622, -1550030, 'Let us see how you fare when your world is turned upside down.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11264, 1, 0, 0, 'kaelthas SAY_GRAVITYLAPSE1'),
(19622, -1550031, 'Having trouble staying grounded?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11265, 1, 0, 0, 'kaelthas SAY_GRAVITYLAPSE2'),
(19622, -1550032, 'Anara''nel belore!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11267, 1, 0, 0, 'kaelthas SAY_SUMMON_PHOENIX1'),
(19622, -1550033, 'By the power of the sun!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11266, 1, 0, 0, 'kaelthas SAY_SUMMON_PHOENIX2'),
(19622, -1550034, 'For...Quel...thalas!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11274, 1, 0, 0, 'kaelthas SAY_DEATH'),
(20064, -1550035, 'Prepare yourselves!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11203, 1, 0, 0, 'thaladred SAY_THALADRED_AGGRO'),
(20064, -1550036, 'Forgive me, my prince! I have... failed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11204, 1, 0, 0, 'thaladred SAY_THALADRED_DEATH'),
(20064, -1550037, 'sets his gaze on $N!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'thaladred EMOTE_THALADRED_GAZE'),
(20060, -1550038, 'Blood for blood!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11152, 1, 0, 0, 'sanguinar SAY_SANGUINAR_AGGRO'),
(20060, -1550039, 'NO! I ...will... not...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11153, 1, 0, 0, 'sanguinar SAY_SANGUINAR_DEATH'),
(20062, -1550040, 'The sin''dore reign supreme!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11117, 1, 0, 0, 'capernian SAY_CAPERNIAN_AGGRO'),
(20062, -1550041, 'This is not over!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11118, 1, 0, 0, 'capernian SAY_CAPERNIAN_DEATH'),
(20063, -1550042, 'Anar''alah belore!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11157, 1, 0, 0, 'telonicus SAY_TELONICUS_AGGRO'),
(20063, -1550043, 'More perils... await', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11158, 1, 0, 0, 'telonicus SAY_TELONICUS_DEATH'),
(20912, -1552000, 'It is a small matter to control the mind of the weak... for I bear allegiance to powers untouched by time, unmoved by fate. No force on this world or beyond harbors the strength to bend our knee... not even the mighty Legion!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11122, 1, 0, 0, 'skyriss SAY_INTRO'),
(20912, -1552001, 'Bear witness to the agent of your demise!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11123, 1, 0, 0, 'skyriss SAY_AGGRO'),
(20912, -1552002, 'Your fate is written!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11124, 1, 0, 0, 'skyriss SAY_KILL_1'),
(20912, -1552003, 'The chaos I have sown here is but a taste...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11125, 1, 0, 0, 'skyriss SAY_KILL_2'),
(20912, -1552004, 'You will do my bidding, weakling.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11127, 1, 0, 0, 'skyriss SAY_MIND_1'),
(20912, -1552005, 'Your will is no longer your own.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11128, 1, 0, 0, 'skyriss SAY_MIND_2'),
(20912, -1552006, 'Flee in terror!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11129, 1, 0, 0, 'skyriss SAY_FEAR_1'),
(20912, -1552007, 'I will show you horrors undreamed of!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11130, 1, 0, 0, 'skyriss SAY_FEAR_2'),
(20912, -1552008, 'We span the universe, as countless as the stars!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11131, 1, 0, 0, 'skyriss SAY_IMAGE'),
(20912, -1552009, 'I am merely one of... infinite multitudes.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11126, 1, 0, 0, 'skyriss SAY_DEATH'),
(20977, -1552010, 'Where in Bonzo''s brass buttons am I? And who are-- yaaghh, that''s one mother of a headache!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11171, 1, 0, 0, 'millhouse SAY_INTRO_1'),
(20977, -1552011, '"Lowly"? I don''t care who you are friend, no one refers to the mighty Millhouse Manastorm as "Lowly"! I have no idea what goes on here, but I will gladly join your fight against this impudent imbecile! Prepare to defend yourself, cretin!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11172, 1, 0, 0, 'millhouse SAY_INTRO_2'),
(20977, -1552012, 'I just need to get some things ready first. You guys go ahead and get started. I need to summon up some water...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11173, 1, 0, 0, 'millhouse SAY_WATER'),
(20977, -1552013, 'Fantastic! Next, some protective spells. Yes! Now we''re cookin''', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11174, 1, 0, 0, 'millhouse SAY_BUFFS'),
(20977, -1552014, 'And of course i''ll need some mana. You guys are gonna love this, just wait.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11175, 1, 0, 0, 'millhouse SAY_DRINK'),
(20977, -1552015, 'Aaalllriiiight!! Who ordered up an extra large can of whoop-ass?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11176, 1, 0, 0, 'millhouse SAY_READY'),
(20977, -1552016, 'I didn''t even break a sweat on that one.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11177, 1, 0, 0, 'millhouse SAY_KILL_1'),
(20977, -1552017, 'You guys, feel free to jump in anytime.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11178, 1, 0, 0, 'millhouse SAY_KILL_2'),
(20977, -1552018, 'I''m gonna light you up, sweet cheeks!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11179, 1, 0, 0, 'millhouse SAY_PYRO'),
(20977, -1552019, 'Ice, ice, baby!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11180, 1, 0, 0, 'millhouse SAY_ICEBLOCK'),
(20977, -1552020, 'Heal me! Oh, for the love of all that is holy, HEAL me! I''m dying!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11181, 1, 0, 0, 'millhouse SAY_LOWHP'),
(20977, -1552021, 'You''ll be hearing from my lawyer...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11182, 1, 0, 0, 'millhouse SAY_DEATH'),
(20977, -1552022, 'Who''s bad? Who''s bad? That''s right: we bad!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11183, 1, 0, 0, 'millhouse SAY_COMPLETE'),
(20904, -1552023, 'I knew the prince would be angry but, I... I have not been myself. I had to let them out! The great one speaks to me, you see. Wait--outsiders. Kael''thas did not send you! Good... I''ll just tell the prince you released the prisoners!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11222, 1, 0, 0, 'mellichar YELL_INTRO1'),
(20904, -1552024, 'The naaru kept some of the most dangerous beings in existence here in these cells. Let me introduce you to another...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11223, 1, 0, 0, 'mellichar YELL_INTRO2'),
(20904, -1552025, 'Yes, yes... another! Your will is mine!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11224, 1, 0, 0, 'mellichar YELL_RELEASE1'),
(20904, -1552026, 'Behold another terrifying creature of incomprehensible power!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11225, 1, 0, 0, 'mellichar YELL_RELEASE2A'),
(20904, -1552027, 'What is this? A lowly gnome? I will do better, O''great one.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11226, 1, 0, 0, 'mellichar YELL_RELEASE2B'),
(20904, -1552028, 'Anarchy! Bedlam! Oh, you are so wise! Yes, I see it now, of course!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11227, 1, 0, 0, 'mellichar YELL_RELEASE3'),
(20904, -1552029, 'One final cell remains. Yes, O''great one, right away!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11228, 1, 0, 0, 'mellichar YELL_RELEASE4'),
(20904, -1552030, 'Welcome, O''great one. I am your humble servant.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11229, 1, 0, 0, 'mellichar YELL_WELCOME'),
(17975, -1553000, 'What are you doing? These specimens are very delicate!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11144, 1, 0, 0, 'freywinn SAY_AGGRO'),
(17975, -1553001, 'Your life cycle is now concluded!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11145, 1, 0, 0, 'freywinn SAY_KILL_1'),
(17975, -1553002, 'You will feed the worms.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11146, 1, 0, 0, 'freywinn SAY_KILL_2'),
(17975, -1553003, 'Endorel aluminor!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11147, 1, 0, 0, 'freywinn SAY_TREE_1'),
(17975, -1553004, 'Nature bends to my will!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11148, 1, 0, 0, 'freywinn SAY_TREE_2'),
(17975, -1553005, 'The specimens...must be preserved.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11149, 1, 0, 0, 'freywinn SAY_DEATH'),
(17980, -1553006, 'emits a strange noise.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'laj EMOTE_SUMMON'),
(17977, -1553007, 'Who disturbs this sanctuary?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11230, 1, 0, 0, 'warp SAY_AGGRO'),
(17977, -1553008, 'You must die! But wait: this does not-- No, no... you must die!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11231, 1, 0, 0, 'warp SAY_SLAY_1'),
(17977, -1553009, 'What am I doing? Why do I...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11232, 1, 0, 0, 'warp SAY_SLAY_2'),
(17977, -1553010, 'Children, come to me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11233, 1, 0, 0, 'warp SAY_SUMMON_1'),
(17977, -1553011, 'Maybe this is not-- No, we fight! Come to my aid.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11234, 1, 0, 0, 'warp SAY_SUMMON_2'),
(17977, -1553012, 'So... confused. Do not... belong here!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11235, 1, 0, 0, 'warp SAY_DEATH'),
(0, -1554000, 'I predict a painful death.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11101, 1, 0, 0, 'gyro SAY_AGGRO'),
(0, -1554001, 'Measure twice; cut once!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11104, 1, 0, 0, 'gyro SAY_SAW_ATTACK1'),
(0, -1554002, 'If my division is correct, you should be quite dead.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11105, 1, 0, 0, 'gyro SAY_SAW_ATTACK2'),
(0, -1554003, 'Your strategy was flawed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11102, 1, 0, 0, 'gyro SAY_SLAY1'),
(0, -1554004, 'Yes, the only logical outcome.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11103, 1, 0, 0, 'gyro SAY_SLAY2'),
(0, -1554005, 'An unforseen... contingency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11106, 1, 0, 0, 'gyro SAY_DEATH'),
(19710, -1554006, 'You have approximately five seconds to live.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11109, 1, 0, 0, 'ironhand SAY_AGGRO_1'),
(19710, -1554007, 'With the precise angle and velocity...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11112, 1, 0, 0, 'ironhand SAY_HAMMER_1'),
(19710, -1554008, 'Low tech yet quiet effective!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11113, 1, 0, 0, 'ironhand SAY_HAMMER_2'),
(19710, -1554009, 'A foregone conclusion.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11110, 1, 0, 0, 'ironhand SAY_SLAY_1'),
(19710, -1554010, 'The processing will continue a schedule!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11111, 1, 0, 0, 'ironhand SAY_SLAY_2'),
(19710, -1554011, 'My calculations did not...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11114, 1, 0, 0, 'ironhand SAY_DEATH_1'),
(19710, -1554012, 'raises his hammer menacingly...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'ironhand EMOTE_HAMMER'),
(19221, -1554013, 'Don''t value your life very much, do you?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11186, 1, 0, 0, 'sepethrea SAY_AGGRO'),
(19221, -1554014, 'I am not alone.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11191, 1, 0, 0, 'sepethrea SAY_SUMMON'),
(19221, -1554015, 'Think you can take the heat?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11189, 1, 0, 0, 'sepethrea SAY_DRAGONS_BREATH_1'),
(19221, -1554016, 'Anar''endal dracon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11190, 1, 0, 0, 'sepethrea SAY_DRAGONS_BREATH_2'),
(19221, -1554017, 'And don''t come back!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11187, 1, 0, 0, 'sepethrea SAY_SLAY1'),
(19221, -1554018, 'En''dala finel el''dal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11188, 1, 0, 0, 'sepethrea SAY_SLAY2'),
(19221, -1554019, 'Anu... bala belore...alon.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11192, 1, 0, 0, 'sepethrea SAY_DEATH'),
(19220, -1554020, 'We are on a strict timetable. You will not interfere!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11193, 1, 0, 0, 'pathaleon SAY_AGGRO'),
(19220, -1554021, 'I''m looking for a team player...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11197, 1, 0, 0, 'pathaleon SAY_DOMINATION_1'),
(19220, -1554022, 'You work for me now!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11198, 1, 0, 0, 'pathaleon SAY_DOMINATION_2'),
(19220, -1554023, 'Time to supplement my work force.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11196, 1, 0, 0, 'pathaleon SAY_SUMMON'),
(19220, -1554024, 'I prefeer to be hands-on...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11199, 1, 0, 0, 'pathaleon SAY_ENRAGE'),
(19220, -1554025, 'A minor inconvenience.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11194, 1, 0, 0, 'pathaleon SAY_SLAY_1'),
(19220, -1554026, 'Looks like you lose.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11195, 1, 0, 0, 'pathaleon SAY_SLAY_2'),
(19220, -1554027, 'The project will... continue.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11200, 1, 0, 0, 'pathaleon SAY_DEATH'),
(18731, -1555000, 'Infidels have invaded the sanctuary! Sniveling pests...You have yet to learn the true meaning of agony!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10473, 1, 0, 0, 'hellmaw SAY_INTRO'),
(18731, -1555001, 'Pathetic mortals! You will pay dearly!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10475, 1, 0, 0, 'hellmaw SAY_AGGRO1'),
(18731, -1555002, 'I will break you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10476, 1, 0, 0, 'hellmaw SAY_AGGRO2'),
(18731, -1555003, 'Finally! Something to relieve the tedium!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10477, 1, 0, 0, 'hellmaw SAY_AGGRO3'),
(18731, -1555004, 'Aid me, you fools, before it''s too late!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10474, 1, 0, 0, 'hellmaw SAY_HELP'),
(18731, -1555005, 'Do you fear death?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10478, 1, 0, 0, 'hellmaw SAY_SLAY1'),
(18731, -1555006, 'This is the part I enjoy most.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10479, 1, 0, 0, 'hellmaw SAY_SLAY2'),
(18731, -1555007, 'Do not...grow...overconfident, mortal.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10480, 1, 0, 0, 'hellmaw SAY_DEATH'),
(0, -1555008, 'All flesh must burn.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10482, 1, 0, 0, 'blackhearth SAY_INTRO1'),
(0, -1555009, 'All creation must be unmade!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10483, 1, 0, 0, 'blackhearth SAY_INTRO2'),
(0, -1555010, 'Power will be yours!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10484, 1, 0, 0, 'blackhearth SAY_INTRO3'),
(18667, -1555011, 'You''ll be sorry!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10486, 1, 0, 0, 'blackhearth SAY_AGGRO1'),
(18667, -1555012, 'Time for fun!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10487, 1, 0, 0, 'blackhearth SAY_AGGRO2'),
(18667, -1555013, 'I see dead people!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10488, 1, 0, 0, 'blackhearth SAY_AGGRO3'),
(18667, -1555014, 'No comin'' back for you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10489, 1, 0, 0, 'blackhearth SAY_SLAY1'),
(18667, -1555015, 'Nice try!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10490, 1, 0, 0, 'blackhearth SAY_SLAY2'),
(0, -1555016, 'Help us, hurry!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10485, 1, 0, 0, 'blackhearth SAY_HELP'),
(18667, -1555017, 'This... no... good...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10491, 1, 0, 0, 'blackhearth SAY_DEATH'),
(0, -1555018, 'Be ready for Dark One''s return.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10492, 1, 0, 0, 'blackhearth SAY2_INTRO1'),
(0, -1555019, 'So we have place in new universe.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10493, 1, 0, 0, 'blackhearth SAY2_INTRO2'),
(0, -1555020, 'Dark one promise!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10494, 1, 0, 0, 'blackhearth SAY2_INTRO3'),
(0, -1555021, 'You''ll be sorry!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10496, 1, 0, 0, 'blackhearth SAY2_AGGRO1'),
(0, -1555022, 'Time to kill!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10497, 1, 0, 0, 'blackhearth SAY2_AGGRO2'),
(0, -1555023, 'You be dead people!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10498, 1, 0, 0, 'blackhearth SAY2_AGGRO3'),
(0, -1555024, 'Now you gone for good.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10499, 1, 0, 0, 'blackhearth SAY2_SLAY1'),
(0, -1555025, 'You failed, haha haha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10500, 1, 0, 0, 'blackhearth SAY2_SLAY2'),
(0, -1555026, 'Help us, hurry!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10495, 1, 0, 0, 'blackhearth SAY2_HELP'),
(0, -1555027, 'Arrgh, aah...ahhh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10501, 1, 0, 0, 'blackhearth SAY2_DEATH'),
(18732, -1555028, 'Keep your minds focused for the days of reckoning are close at hand. Soon, the destroyer of worlds will return to make good on his promise. Soon the destruction of all that is will begin!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10522, 1, 0, 0, 'vorpil SAY_INTRO'),
(18732, -1555029, 'I''ll make an offering of your blood!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10524, 1, 0, 0, 'vorpil SAY_AGGRO1'),
(18732, -1555030, 'You''ll be a fine example, for the others.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10525, 1, 0, 0, 'vorpil SAY_AGGRO2'),
(18732, -1555031, 'Good, a worthy sacrifice.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10526, 1, 0, 0, 'vorpil SAY_AGGRO3'),
(18732, -1555032, 'Come to my aid, heed your master now!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10523, 1, 0, 0, 'vorpil SAY_HELP'),
(18732, -1555033, 'I serve with pride.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10527, 1, 0, 0, 'vorpil SAY_SLAY1'),
(18732, -1555034, 'Your death is for the greater cause!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10528, 1, 0, 0, 'vorpil SAY_SLAY2'),
(18732, -1555035, 'I give my life... Gladly.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10529, 1, 0, 0, 'vorpil SAY_DEATH'),
(18708, -1555036, 'draws energy from the air.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'murmur EMOTE_SONIC_BOOM'),
(18472, -1556000, 'I have pets..<squawk>..of my own!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10502, 1, 0, 0, 'syth SAY_SUMMON'),
(18472, -1556001, 'Hrrmm.. Time to.. hrrm.. make my move.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10503, 1, 0, 0, 'syth SAY_AGGRO_1'),
(18472, -1556002, 'Nice pets..hrm.. Yes! <squawking>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10504, 1, 0, 0, 'syth SAY_AGGRO_2'),
(18472, -1556003, 'Nice pets have.. weapons. Not so..<squawk>..nice.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10505, 1, 0, 0, 'syth SAY_AGGRO_3'),
(18472, -1556004, 'Death.. meeting life is.. <squawking>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10506, 1, 0, 0, 'syth SAY_SLAY_1'),
(18472, -1556005, 'Uhn.. Be free..<squawk>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10507, 1, 0, 0, 'syth SAY_SLAY_2'),
(18472, -1556006, 'No more life..hrm. No more pain. <squawks weakly>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10508, 1, 0, 0, 'syth SAY_DEATH'),
(18473, -1556007, '<squawk>..Trinkets yes pretty Trinkets..<squawk>..power, great power. <squawk>..power in Trinkets..<squawk>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10557, 1, 0, 0, 'ikiss SAY_INTRO'),
(18473, -1556008, 'You make war on Ikiss?..<squawk>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10554, 1, 0, 0, 'ikiss SAY_AGGRO_1'),
(18473, -1556009, 'Ikiss cut you pretty..<squawk>..slice you. Yes!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10555, 1, 0, 0, 'ikiss SAY_AGGRO_2'),
(18473, -1556010, 'No escape for..<squawk>..for you', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10556, 1, 0, 0, 'ikiss SAY_AGGRO_3'),
(18473, -1556011, 'You die..<squawk>..stay away from Trinkets', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10558, 1, 0, 0, 'ikiss SAY_SLAY_1'),
(18473, -1556012, '<squawk>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10559, 1, 0, 0, 'ikiss SAY_SLAY_2'),
(18473, -1556013, 'Ikiss will not..<squawk>..die', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10560, 1, 0, 0, 'ikiss SAY_DEATH'),
(18473, -1556015, 'begins to channel arcane energy...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'ikiss EMOTE_ARCANE_EXP'),
(18344, -1557000, 'What is this? You must forgive me, but I was not expecting company. As you can see, we are somewhat preoccupied right now. But no matter. As I am a gracious host, I will tend to you... personally.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10539, 1, 0, 0, 'shaffar SAY_INTRO'),
(18344, -1557001, 'We have not yet been properly introduced.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10541, 1, 0, 0, 'shaffar SAY_AGGRO_1'),
(18344, -1557002, 'An epic battle. How exciting!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10542, 1, 0, 0, 'shaffar SAY_AGGRO_2'),
(18344, -1557003, 'I have longed for a good adventure.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10543, 1, 0, 0, 'shaffar SAY_AGGRO_3'),
(18344, -1557004, 'It has been... entertaining.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10544, 1, 0, 0, 'shaffar SAY_SLAY_1'),
(18344, -1557005, 'And now we part company.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10545, 1, 0, 0, 'shaffar SAY_SLAY_2'),
(18344, -1557006, 'I have such fascinating things to show you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10540, 1, 0, 0, 'shaffar SAY_SUMMON'),
(18344, -1557007, 'I must bid you... farewell.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10546, 1, 0, 0, 'shaffar SAY_DEAD'),
(18341, -1557008, 'I will feed on your soul.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10561, 1, 0, 0, 'pandemonius SAY_AGGRO_1'),
(18341, -1557009, 'So... full of life!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10562, 1, 0, 0, 'pandemonius SAY_AGGRO_2'),
(18341, -1557010, 'Do not... resist.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10563, 1, 0, 0, 'pandemonius SAY_AGGRO_3'),
(18341, -1557011, 'Yes! I am... empowered!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10564, 1, 0, 0, 'pandemonius SAY_KILL_1'),
(18341, -1557012, 'More... I must have more!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10565, 1, 0, 0, 'pandemonius SAY_KILL_2'),
(18341, -1557013, 'To the void... once... more..', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10566, 1, 0, 0, 'pandemonius SAY_DEATH'),
(18341, -1557014, 'shifts into the void...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'pandemonius EMOTE_DARK_SHELL'),
(18373, -1558000, 'You have defiled the resting place of our ancestors. For this offense, there can be but one punishment. It is fitting that you have come to a place of the dead... for you will soon be joining them.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10509, 1, 0, 0, 'maladaar SAY_INTRO'),
(18373, -1558001, 'Rise my fallen brothers. Take form and fight!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10512, 1, 0, 0, 'maladaar SAY_SUMMON'),
(18373, -1558002, 'You will pay with your life!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10513, 1, 0, 0, 'maladaar SAY_AGGRO_1'),
(18373, -1558003, 'There''s no turning back now!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10514, 1, 0, 0, 'maladaar SAY_AGGRO_2'),
(18373, -1558004, 'Serve your penitence!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10515, 1, 0, 0, 'maladaar SAY_AGGRO_3'),
(18373, -1558005, 'Let your mind be clouded.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10510, 1, 0, 0, 'maladaar SAY_ROAR'),
(18373, -1558006, 'Stare into the darkness of your soul.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10511, 1, 0, 0, 'maladaar SAY_SOUL_CLEAVE'),
(18373, -1558007, 'These walls will be your doom.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10516, 1, 0, 0, 'maladaar SAY_SLAY_1'),
(18373, -1558008, '<laugh> Now, you''ll stay for eternity!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10517, 1, 0, 0, 'maladaar SAY_SLAY_2'),
(18373, -1558009, 'This is... where.. I belong...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10518, 1, 0, 0, 'maladaar SAY_DEATH'),
(17862, -1560000, 'Thrall! You didn''t really think you would escape did you? You and your allies shall answer to Blackmoore - after I''ve had my fun!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10406, 1, 0, 0, 'skarloc SAY_ENTER'),
(17862, -1560001, 'You''re a slave. That''s all you''ll ever be.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10407, 1, 0, 0, 'skarloc SAY_TAUNT1'),
(17862, -1560002, 'I don''t know what Blackmoore sees in you. For my money, you''re just another ignorant savage!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10408, 1, 0, 0, 'skarloc SAY_TAUNT2'),
(17862, -1560003, 'Thrall will never be free!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10409, 1, 0, 0, 'skarloc SAY_SLAY1'),
(17862, -1560004, 'Did you really think you would leave here alive?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10410, 1, 0, 0, 'skarloc SAY_SLAY2'),
(17862, -1560005, 'Guards! Urgh..Guards..!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10411, 1, 0, 0, 'skarloc SAY_DEATH'),
(17848, -1560006, 'You there, fetch water quickly! Get these flames out before they spread to the rest of the keep! Hurry, damn you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10428, 1, 0, 0, 'lieutenant_drake SAY_ENTER'),
(17848, -1560007, 'I know what you''re up to, and I mean to put an end to it, permanently!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10429, 1, 0, 0, 'lieutenant_drake SAY_AGGRO'),
(17848, -1560008, 'No more middling for you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10432, 1, 0, 0, 'lieutenant_drake SAY_SLAY1');
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(17848, -1560009, 'You will not interfere!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10433, 1, 0, 0, 'lieutenant_drake SAY_SLAY2'),
(17848, -1560010, 'Time to bleed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10430, 1, 0, 0, 'lieutenant_drake SAY_MORTAL'),
(17848, -1560011, 'Run, you blasted cowards!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10431, 1, 0, 0, 'lieutenant_drake SAY_SHOUT'),
(17848, -1560012, 'Thrall... must not... go free.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10434, 1, 0, 0, 'lieutenant_drake SAY_DEATH'),
(18096, -1560013, 'Thrall! Come outside and face your fate!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10418, 1, 0, 0, 'epoch_hunter SAY_ENTER1'),
(18096, -1560014, 'Taretha''s life hangs in the balance. Surely you care for her. Surely you wish to save her...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10419, 1, 0, 0, 'epoch_hunter SAY_ENTER2'),
(18096, -1560015, 'Ah, there you are. I had hoped to accomplish this with a bit of subtlety, but I suppose direct confrontation was inevitable. Your future, Thrall, must not come to pass and so...you and your troublesome friends must die!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10420, 1, 0, 0, 'epoch_hunter SAY_ENTER3'),
(18096, -1560016, 'Enough! I will erase your very existence!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10421, 1, 0, 0, 'epoch_hunter SAY_AGGRO1'),
(18096, -1560017, 'You cannot fight fate!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10422, 1, 0, 0, 'epoch_hunter SAY_AGGRO2'),
(18096, -1560018, 'You are...irrelevant.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10425, 1, 0, 0, 'epoch_hunter SAY_SLAY1'),
(18096, -1560019, 'Thrall will remain a slave. Taretha will die. You have failed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10426, 1, 0, 0, 'epoch_hunter SAY_SLAY2'),
(18096, -1560020, 'Not so fast!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10423, 1, 0, 0, 'epoch_hunter SAY_BREATH1'),
(18096, -1560021, 'Struggle as much as you like!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10424, 1, 0, 0, 'epoch_hunter SAY_BREATH2'),
(18096, -1560022, 'No!...The master... will not... be pleased.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10427, 1, 0, 0, 'epoch_hunter SAY_DEATH'),
(17876, -1560023, 'Very well then. Let''s go!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10465, 1, 0, 0, 'thrall hillsbrad SAY_TH_START_EVENT_PART1'),
(17876, -1560024, 'As long as we''re going with a new plan, I may aswell pick up a weapon and some armor.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'thrall hillsbrad SAY_TH_ARMORY'),
(17876, -1560025, 'A rider approaches!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10466, 0, 0, 0, 'thrall hillsbrad SAY_TH_SKARLOC_MEET'),
(17876, -1560026, 'I''ll never be chained again!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10467, 1, 0, 0, 'thrall hillsbrad SAY_TH_SKARLOC_TAUNT'),
(17876, -1560027, 'Very well. Tarren Mill lies just west of here. Since time is of the essence...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10468, 1, 0, 0, 'thrall hillsbrad SAY_TH_START_EVENT_PART2'),
(17876, -1560028, 'Let''s ride!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10469, 0, 0, 1, 'thrall hillsbrad SAY_TH_MOUNTS_UP'),
(17876, -1560029, 'Taretha must be in the inn. Let''s go.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'thrall hillsbrad SAY_TH_CHURCH_END'),
(17876, -1560030, 'Taretha! What foul magic is this?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'thrall hillsbrad SAY_TH_MEET_TARETHA'),
(17876, -1560031, 'Who or what was that?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10470, 1, 0, 1, 'thrall hillsbrad SAY_TH_EPOCH_WONDER'),
(17876, -1560032, 'No!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10471, 1, 0, 5, 'thrall hillsbrad SAY_TH_EPOCH_KILL_TARETHA'),
(17876, -1560033, 'Goodbye, Taretha. I will never forget your kindness.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10472, 1, 0, 0, 'thrall hillsbrad SAY_TH_EVENT_COMPLETE'),
(17876, -1560034, 'Things are looking grim...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10458, 1, 0, 0, 'thrall hillsbrad SAY_TH_RANDOM_LOW_HP1'),
(17876, -1560035, 'I will fight to the last!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10459, 1, 0, 0, 'thrall hillsbrad SAY_TH_RANDOM_LOW_HP2'),
(17876, -1560036, 'Taretha...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10460, 1, 0, 0, 'thrall hillsbrad SAY_TH_RANDOM_DIE1'),
(17876, -1560037, 'A good day...to die...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10461, 1, 0, 0, 'thrall hillsbrad SAY_TH_RANDOM_DIE2'),
(17876, -1560038, 'I have earned my freedom!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10448, 1, 0, 0, 'thrall hillsbrad SAY_TH_RANDOM_AGGRO1'),
(17876, -1560039, 'This day is long overdue. Out of my way!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10449, 1, 0, 0, 'thrall hillsbrad SAY_TH_RANDOM_AGGRO2'),
(17876, -1560040, 'I am a slave no longer!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10450, 1, 0, 0, 'thrall hillsbrad SAY_TH_RANDOM_AGGRO3'),
(17876, -1560041, 'Blackmoore has much to answer for!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10451, 1, 0, 0, 'thrall hillsbrad SAY_TH_RANDOM_AGGRO4'),
(17876, -1560042, 'You have forced my hand!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10452, 1, 0, 0, 'thrall hillsbrad SAY_TH_RANDOM_KILL1'),
(17876, -1560043, 'It should not have come to this!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10453, 1, 0, 0, 'thrall hillsbrad SAY_TH_RANDOM_KILL2'),
(17876, -1560044, 'I did not ask for this!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10454, 1, 0, 0, 'thrall hillsbrad SAY_TH_RANDOM_KILL3'),
(17876, -1560045, 'I am truly in your debt, strangers.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10455, 1, 0, 0, 'thrall hillsbrad SAY_TH_LEAVE_COMBAT1'),
(17876, -1560046, 'Thank you, strangers. You have given me hope.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10456, 1, 0, 0, 'thrall hillsbrad SAY_TH_LEAVE_COMBAT2'),
(17876, -1560047, 'I will not waste this chance. I will seek out my destiny.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10457, 1, 0, 0, 'thrall hillsbrad SAY_TH_LEAVE_COMBAT3'),
(18887, -1560048, 'I''m free! Thank you all!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'taretha SAY_TA_FREE'),
(18887, -1560049, 'Thrall, you escaped!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'taretha SAY_TA_ESCAPED'),
(22887, -1564000, 'You will die in the name of Lady Vashj!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11450, 1, 0, 0, 'SAY_AGGRO'),
(22887, -1564001, 'Stick around!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11451, 1, 0, 0, 'SAY_NEEDLE1'),
(22887, -1564002, 'I''ll deal with you later!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11452, 1, 0, 0, 'SAY_NEEDLE2'),
(22887, -1564003, 'Your success was short lived!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11455, 1, 0, 0, 'SAY_SLAY1'),
(22887, -1564004, 'Time for you to go!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11456, 1, 0, 0, 'SAY_SLAY2'),
(22887, -1564005, 'Bel''anen dal''lorei!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11453, 1, 0, 0, 'SAY_SPECIAL1'),
(22887, -1564006, 'Blood will flow!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11454, 1, 0, 0, 'SAY_SPECIAL2'),
(22887, -1564007, 'Bal''amer ch''itah!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11457, 1, 0, 0, 'SAY_ENRAGE1'),
(22887, -1564008, 'My patience has ran out! Die, DIE!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11458, 1, 0, 0, 'SAY_ENRAGE2'),
(22887, -1564009, 'Lord Illidan will... crush you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11459, 1, 0, 0, 'SAY_DEATH'),
(22898, -1564010, '%s acquires a new target!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'supremus EMOTE_NEW_TARGET'),
(22898, -1564011, '%s punches the ground in anger!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'supremus EMOTE_PUNCH_GROUND'),
(22898, -1564012, 'The ground begins to crack open!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'supremus EMOTE_GROUND_CRACK'),
(22990, -1564013, 'No! Not yet...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11385, 1, 0, 0, 'akama shade SAY_LOW_HEALTH'),
(22990, -1564014, 'I will not last much longer...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11386, 1, 0, 0, 'akama shade SAY_DEATH'),
(22990, -1564015, 'Come out from the shadows! I''ve returned to lead you against our true enemy! Shed your chains and raise your weapons against your Illidari masters!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'akama shade SAY_FREE'),
(22990, -1564016, 'Hail our leader! Hail Akama!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'akama shade broken SAY_BROKEN_FREE_01'),
(22990, -1564017, 'Hail Akama!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'akama shade broken SAY_BROKEN_FREE_02'),
(22947, -1564018, 'You play, you pay.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11501, 1, 0, 0, 'shahraz SAY_TAUNT1'),
(22947, -1564019, 'I''m not impressed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11502, 1, 0, 0, 'shahraz SAY_TAUNT2'),
(22947, -1564020, 'Enjoying yourselves?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11503, 1, 0, 0, 'shahraz SAY_TAUNT3'),
(22947, -1564021, 'So... business or pleasure?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11504, 1, 0, 0, 'shahraz SAY_AGGRO'),
(22947, -1564022, 'You seem a little tense.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11505, 1, 0, 0, 'shahraz SAY_SPELL1'),
(22947, -1564023, 'Don''t be shy.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11506, 1, 0, 0, 'shahraz SAY_SPELL2'),
(22947, -1564024, 'I''m all... yours.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11507, 1, 0, 0, 'shahraz SAY_SPELL3'),
(22947, -1564025, 'Easy come, easy go.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11508, 1, 0, 0, 'shahraz SAY_SLAY1'),
(22947, -1564026, 'So much for a happy ending.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11509, 1, 0, 0, 'shahraz SAY_SLAY2'),
(22947, -1564027, 'Stop toying with my emotions!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11510, 1, 0, 0, 'shahraz SAY_ENRAGE'),
(22947, -1564028, 'I wasn''t... finished.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11511, 1, 0, 0, 'shahraz SAY_DEATH'),
(22948, -1564029, 'Horde will... crush you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11432, 1, 0, 0, 'bloodboil SOUND_AGGRO'),
(22948, -1564030, 'Time to feast!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11433, 1, 0, 0, 'bloodboil SAY_SLAY1'),
(22948, -1564031, 'More! I want more!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11434, 1, 0, 0, 'bloodboil SAY_SLAY2'),
(22948, -1564032, 'Drink your blood! Eat your flesh!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11435, 1, 0, 0, 'bloodboil SAY_SPECIAL1'),
(22948, -1564033, 'I hunger!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11436, 1, 0, 0, 'bloodboil SAY_SPECIAL2'),
(22948, -1564034, '<babbling>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11437, 1, 0, 0, 'bloodboil SAY_ENRAGE1'),
(22948, -1564035, 'I''ll rip the meat from your bones!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11438, 1, 0, 0, 'bloodboil SAY_ENRAGE2'),
(22948, -1564036, 'Aaaahrg...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11439, 1, 0, 0, 'bloodboil SAY_DEATH'),
(22871, -1564037, 'I was the first, you know. For me, the wheel of death has spun many times. <laughs> So much time has passed. I have a lot of catching up to do...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11512, 1, 0, 0, 'teron SAY_INTRO'),
(22871, -1564038, 'Vengeance is mine!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11513, 1, 0, 0, 'teron SAY_AGGRO'),
(22871, -1564039, 'I have use for you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11514, 1, 0, 0, 'teron SAY_SLAY1'),
(22871, -1564040, 'It gets worse...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11515, 1, 0, 0, 'teron SAY_SLAY2'),
(22871, -1564041, 'What are you afraid of?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11517, 1, 0, 0, 'teron SAY_SPELL1'),
(22871, -1564042, 'Death... really isn''t so bad.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11516, 1, 0, 0, 'teron SAY_SPELL2'),
(22871, -1564043, 'Give in!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11518, 1, 0, 0, 'teron SAY_SPECIAL1'),
(22871, -1564044, 'I have something for you...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11519, 1, 0, 0, 'teron SAY_SPECIAL2'),
(22871, -1564045, 'YOU WILL SHOW THE PROPER RESPECT!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11520, 1, 0, 0, 'teron SAY_ENRAGE'),
(22871, -1564046, 'The wheel...spins...again....', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11521, 1, 0, 0, 'teron SAY_DEATH'),
(23418, -1564047, 'Pain and suffering are all that await you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11415, 1, 0, 0, 'essence SUFF_SAY_FREED'),
(23418, -1564048, 'Don''t leave me alone!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11416, 1, 0, 0, 'essence SUFF_SAY_AGGRO'),
(23418, -1564049, 'Look at what you make me do!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11417, 1, 0, 0, 'essence SUFF_SAY_SLAY1'),
(23418, -1564050, 'I didn''t ask for this!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11418, 1, 0, 0, 'essence SUFF_SAY_SLAY2'),
(23418, -1564051, 'The pain is only beginning!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11419, 1, 0, 0, 'essence SUFF_SAY_SLAY3'),
(23418, -1564052, 'I don''t want to go back!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11420, 1, 0, 0, 'essence SUFF_SAY_RECAP'),
(23418, -1564053, 'Now what do I do?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11421, 1, 0, 0, 'essence SUFF_SAY_AFTER'),
(23418, -1564054, '%s becomes enraged!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'essence SUFF_EMOTE_ENRAGE'),
(23419, -1564055, 'You can have anything you desire... for a price.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11408, 1, 0, 0, 'essence DESI_SAY_FREED'),
(23419, -1564056, 'Fulfilment is at hand!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11409, 1, 0, 0, 'essence DESI_SAY_SLAY1'),
(23419, -1564057, 'Yes... you''ll stay with us now...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11410, 1, 0, 0, 'essence DESI_SAY_SLAY2'),
(23419, -1564058, 'Your reach exceeds your grasp.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11412, 1, 0, 0, 'essence DESI_SAY_SLAY3'),
(23419, -1564059, 'Be careful what you wish for...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11411, 1, 0, 0, 'essence DESI_SAY_SPEC'),
(23419, -1564060, 'I''ll be waiting...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11413, 1, 0, 0, 'essence DESI_SAY_RECAP'),
(23419, -1564061, 'I won''t be far...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11414, 1, 0, 0, 'essence DESI_SAY_AFTER'),
(23420, -1564062, 'Beware: I live!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11399, 1, 0, 0, 'essence ANGER_SAY_FREED'),
(23420, -1564063, 'So... foolish.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11400, 1, 0, 0, 'essence ANGER_SAY_FREED2'),
(23420, -1564064, '<maniacal cackle>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11401, 1, 0, 0, 'essence ANGER_SAY_SLAY1'),
(23420, -1564065, 'Enough. No more.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11402, 1, 0, 0, 'essence ANGER_SAY_SLAY2'),
(23420, -1564066, 'On your knees!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11403, 1, 0, 0, 'essence ANGER_SAY_SPEC'),
(23420, -1564067, 'Beware, coward.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11405, 1, 0, 0, 'essence ANGER_SAY_BEFORE'),
(23420, -1564068, 'I won''t... be... ignored.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11404, 1, 0, 0, 'essence ANGER_SAY_DEATH'),
(0, -1564069, 'You wish to test me?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11524, 1, 0, 0, 'council vera AGGRO'),
(0, -1564070, 'I have better things to do...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11422, 1, 0, 0, 'council gath AGGRO'),
(0, -1564071, 'Flee or die!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11482, 1, 0, 0, 'council mala AGGRO'),
(0, -1564072, 'Common... such a crude language. Bandal!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11440, 1, 0, 0, 'council zere AGGRO'),
(0, -1564073, 'Enough games!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11428, 1, 0, 0, 'council gath ENRAGE'),
(0, -1564074, 'You wish to kill me? Hahaha, you first!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11530, 1, 0, 0, 'council vera ENRAGE'),
(0, -1564075, 'For Quel''Thalas! For the Sunwell!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11488, 1, 0, 0, 'council mala ENRAGE'),
(0, -1564076, 'Sha''amoor sine menoor!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11446, 1, 0, 0, 'council zere ENRAGE'),
(22949, -1564077, 'Enjoy your final moments!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11426, 1, 0, 0, 'council gath SPECIAL1'),
(22952, -1564078, 'You''re not caught up for this!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11528, 1, 0, 0, 'council vera SPECIAL1'),
(22951, -1564079, 'No second chances!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11486, 1, 0, 0, 'council mala SPECIAL1'),
(22950, -1564080, 'Diel fin''al', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11444, 1, 0, 0, 'council zere SPECIAL1'),
(22949, -1564081, 'You are mine!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11427, 1, 0, 0, 'council gath SPECIAL2'),
(22952, -1564082, 'Anar''alah belore!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11529, 1, 0, 0, 'council vera SPECIAL2'),
(22951, -1564083, 'I''m full of surprises!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11487, 1, 0, 0, 'council mala SPECIAL2'),
(22950, -1564084, 'Sha''amoor ara mashal?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11445, 1, 0, 0, 'council zere SPECIAL2'),
(22949, -1564085, 'Selama am''oronor!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11423, 1, 0, 0, 'council gath SLAY'),
(22952, -1564086, 'Valiant effort!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11525, 1, 0, 0, 'council vera SLAY'),
(22951, -1564087, 'My work is done.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11483, 1, 0, 0, 'council mala SLAY'),
(22950, -1564088, 'Shorel''aran.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11441, 1, 0, 0, 'council zere SLAY'),
(22949, -1564089, 'Well done!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11424, 1, 0, 0, 'council gath SLAY_COMT'),
(22951, -1564090, 'A glorious kill!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11526, 1, 0, 0, 'council vera SLAY_COMT'),
(22950, -1564091, 'As it should be!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11484, 1, 0, 0, 'council mala SLAY_COMT'),
(0, -1564092, 'Belesa menoor!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11442, 1, 0, 0, 'council zere SLAY_COMT'),
(22949, -1564093, 'Lord Illidan... I...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11425, 1, 0, 0, 'council gath DEATH'),
(22952, -1564094, 'You got lucky!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11527, 1, 0, 0, 'council vera DEATH'),
(22951, -1564095, 'Destiny... awaits.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11485, 1, 0, 0, 'council mala DEATH'),
(22950, -1564096, 'Diel ma''ahn... oreindel''o', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11443, 1, 0, 0, 'council zere DEATH'),
(18831, -1565000, 'Gronn are the real power in outland.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11367, 1, 0, 0, 'maulgar SAY_AGGRO'),
(18831, -1565001, 'You will not defeat the hand of Gruul!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11368, 1, 0, 0, 'maulgar SAY_ENRAGE'),
(18831, -1565002, 'You won''t kill next one so easy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11369, 1, 0, 0, 'maulgar SAY_OGRE_DEATH1'),
(18831, -1565003, 'Pah! Does not prove anything!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11370, 1, 0, 0, 'maulgar SAY_OGRE_DEATH2'),
(18831, -1565004, 'I''m not afraid of you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11371, 1, 0, 0, 'maulgar SAY_OGRE_DEATH3'),
(18831, -1565005, 'Good, now you fight me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11372, 1, 0, 0, 'maulgar SAY_OGRE_DEATH4'),
(18831, -1565006, 'You not so tough afterall!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11373, 1, 0, 0, 'maulgar SAY_SLAY1'),
(18831, -1565007, 'Aha-ha ha ha!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11374, 1, 0, 0, 'maulgar SAY_SLAY2'),
(18831, -1565008, 'Mulgar is king!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11375, 1, 0, 0, 'maulgar SAY_SLAY3'),
(18831, -1565009, 'Gruul... will crush you...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11376, 1, 0, 0, 'maulgar SAY_DEATH'),
(19044, -1565010, 'Come... and die.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11355, 1, 0, 0, 'gruul SAY_AGGRO'),
(19044, -1565011, 'Scurry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11356, 1, 0, 0, 'gruul SAY_SLAM1'),
(19044, -1565012, 'No escape', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11357, 1, 0, 0, 'gruul SAY_SLAM2'),
(19044, -1565013, 'Stay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11358, 1, 0, 0, 'gruul SAY_SHATTER1'),
(19044, -1565014, 'Beg... for life', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11359, 1, 0, 0, 'gruul SAY_SHATTER2'),
(19044, -1565015, 'No more', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11360, 1, 0, 0, 'gruul SAY_SLAY1'),
(19044, -1565016, 'Unworthy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11361, 1, 0, 0, 'gruul SAY_SLAY2'),
(19044, -1565017, 'Die', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11362, 1, 0, 0, 'gruul SAY_SLAY3'),
(19044, -1565018, 'Aaargh...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11363, 1, 0, 0, 'gruul SAY_DEATH'),
(19044, -1565019, '%s grows in size!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'gruul EMOTE_GROW'),
(23578, -1568000, 'Spirits of da wind be your doom!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12031, 1, 0, 0, 'janalai SAY_AGGRO'),
(23578, -1568001, 'I burn ya now!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12032, 1, 0, 0, 'janalai SAY_FIRE_BOMBS'),
(23578, -1568002, 'Where ma hatcha? Get to work on dem eggs!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12033, 1, 0, 0, 'janalai SAY_SUMMON_HATCHER'),
(23578, -1568003, 'I show you strength... in numbers.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12034, 1, 0, 0, 'janalai SAY_ALL_EGGS'),
(23578, -1568004, 'You done run outta time!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12035, 1, 0, 0, 'janalai SAY_BERSERK'),
(23578, -1568005, 'It all be over now, mon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12036, 1, 0, 0, 'janalai SAY_SLAY_1'),
(23578, -1568006, 'Tazaga-choo!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12037, 1, 0, 0, 'janalai SAY_SLAY_2'),
(23578, -1568007, 'Zul''jin... got a surprise for you...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12038, 1, 0, 0, 'janalai SAY_DEATH'),
(23578, -1568008, 'Come, strangers. The spirit of the dragonhawk hot be hungry for worthy souls.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12039, 1, 0, 0, 'janalai SAY_EVENT_STRANGERS'),
(23578, -1568009, 'Come, friends. Your bodies gonna feed ma hatchlings, and your souls are going to feed me with power!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12040, 1, 0, 0, 'janalai SAY_EVENT_FRIENDS'),
(0, -1568010, 'Get da move on, guards! It be killin'' time!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12066, 1, 0, 0, 'nalorakk SAY_WAVE1_AGGRO'),
(0, -1568011, 'Guards, go already! Who you more afraid of, dem... or me?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12067, 1, 0, 0, 'nalorakk SAY_WAVE2_STAIR1'),
(0, -1568012, 'Ride now! Ride out dere and bring me back some heads!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12068, 1, 0, 0, 'nalorakk SAY_WAVE3_STAIR2'),
(0, -1568013, 'I be losin'' me patience! Go on: make dem wish dey was never born!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12069, 1, 0, 0, 'nalorakk SAY_WAVE4_PLATFORM'),
(0, -1568014, 'What could be better than servin'' da bear spirit for eternity? Come closer now. Bring your souls to me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12078, 1, 0, 0, 'nalorakk SAY_EVENT1_SACRIFICE'),
(0, -1568015, 'Don''t be delayin'' your fate. Come to me now. I make your sacrifice quick.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12079, 1, 0, 0, 'nalorakk SAY_EVENT2_SACRIFICE'),
(0, -1568016, 'You be dead soon enough!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12070, 1, 0, 0, 'nalorakk SAY_AGGRO'),
(0, -1568017, 'I bring da pain!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12071, 1, 0, 0, 'nalorakk SAY_SURGE'),
(0, -1568018, 'You call on da beast, you gonna get more dan you bargain for!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12072, 1, 0, 0, 'nalorakk SAY_TOBEAR'),
(0, -1568019, 'Make way for Nalorakk!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12073, 1, 0, 0, 'nalorakk SAY_TOTROLL'),
(0, -1568020, 'You had your chance, now it be too late!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12074, 1, 0, 0, 'nalorakk SAY_BERSERK'),
(0, -1568021, 'Mua-ha-ha! Now whatchoo got to say?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12075, 1, 0, 0, 'nalorakk SAY_SLAY1'),
(0, -1568022, 'Da Amani gonna rule again!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12076, 1, 0, 0, 'nalorakk SAY_SLAY2'),
(0, -1568023, 'I... be waitin'' on da udda side....', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12077, 1, 0, 0, 'nalorakk SAY_DEATH'),
(28217, -1571000, 'You save me! We thank you. We going to go back to village now. You come too... you can stay with us! Puppy-men kind of mean anyway. ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'npc_injured_rainspeaker_oracle SAY_END_IRO'),
(28217, -1571001, 'Let me know when you ready to go, okay?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'npc_injured_rainspeaker_oracle SAY_QUEST_ACCEPT_IRO '),
(28217, -1571002, 'Home time!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'npc_injured_rainspeaker_oracle SAY_START_IRO'),
(30154, -1571003, 'I''m not afraid of anything -- bring it on!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'aggro_Agnetta'),
(25301, -1571004, 'My liege, the infiltration and control of the Alliance power structure by our cultists is well underway.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(26203, -1571005, 'Your progress in this region has been impressive, Blood Prince. I am pleased...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(26203, -1571006, 'The power you''ve bestowed upon me has allowed me great mental influence over human minds. I bear these offerings as proof of my progress.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(26170, -1571007, 'Leryssa!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, ''),
(26170, -1571008, 'What have you done to my sister, you motherless elf scum!?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, ''),
(26203, -1571009, 'Now this is a surprise, Thassarian. I hadn''t heard from Mograine or the other death knights for months. You''ve come to rejoin the Scourge, I take it?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(26170, -1571010, 'I would sooner slit my own throat. You will pay for what you did to your own men, Arthas... for what you did to me! I swear it.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(25301, -1571011, 'Allow me to take care of the intruders, lord. I will feed their entrails to the maggots.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(26203, -1571012, 'Do not fail me, San''layn. Return to Icecrown with this fool''s head or do not bother to return.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(25301, -1571013, 'Yes, my lord!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(25250, -1571014, 'What... what happened to me?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(25250, -1571015, 'Ugh! My head won''t stop spinning...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(25251, -1571016, 'Thassarian, you''re alive!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, ''),
(26170, -1571017, 'Leryssa... you... you''re all right!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(25251, -1571018, 'I thought... I thought you were... dead.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(26170, -1571019, 'I cannot return home with you just yet, Leryssa. I am not quite done with the Scourge.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(25251, -1571020, 'Don''t leave me again! You want to fight for your country, but they don''t even want you! They sent you here to die!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(26170, -1571021, 'You might be right, sister. My obligations to my land and King have been fulfilled. But there is still something that I owe to myself.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(26170, -1571022, 'I know that look in your eye... I''m not going to be able to talk you out of this. If you die on me again...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(26170, -1571023, 'Do not worry, Leryssa. I will come back to you when I''m done. Nothing in the world will stop me from coming home to the only family that I have left.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(25478, -1571024, 'Pathetic fool! A servant of Malygos would sooner die than aid an enemy...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(25478, -1571025, 'Aargh! Do your worst, $C ! I''ll tell you NOTHING!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(25478, -1571026, 'Aahhhh! Release me! I am of no use to you. I swear it!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(25478, -1571027, 'Stop! I beg you, please stop. Please...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(25478, -1571028, 'Alright! I am beaten. Your previous archmage is held in a prison, elevated and sealed. Even if you manage to reach her, Salrand herself holds the key. Your mission is folly!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(25478, -1571029, 'I''ve given you the information, $C ! You''re wasting your time....', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(25478, -1571030, 'Noooo! This torture is inhumane! You have what you want... why don''t you just kill me?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(30007, -1571031, 'This battle must be seen to be believed! Once a mild-mannered tuskarr fisherman, our next fighter turned to the life of a soulless mercenary when his entire family was wiped out by a vicious pack of lion seals and III-tempered penguins! Now he''s just In It for the gold! Ladies and gentlemen, ORINOKO TUSKBREAKER!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13363, 1, 0, 0, ''),
(30020, -1571032, 'Whisker! Where are you? Assist me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, ''),
(30007, -1571033, 'The champion of the Winterax trolls has challenged you, Treeofdoom! I hope you''re ready!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(30007, -1571034, 'Hailling from the distant mountains of Alterac, one of the fiercest competitors this arena has ever seen: KORRAK THE BLOODRAGER!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13363, 1, 0, 0, ''),
(23953, -1574000, 'Your blood is mine!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13221, 1, 0, 0, 'keleseth SAY_AGGRO'),
(23953, -1574001, 'Not so fast.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13222, 1, 0, 0, 'keleseth SAY_FROST_TOMB'),
(23953, -1574002, 'Aranal, lidel! Their fate shall be yours!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13224, 1, 0, 0, 'keleseth SAY_SKELETONS'),
(23953, -1574003, 'Darkness waits', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13223, 1, 0, 0, 'keleseth SAY_KILL'),
(23953, -1574004, 'I join... the night.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13225, 1, 0, 0, 'keleseth SAY_DEATH'),
(23954, -1574005, 'I''ll paint my face with your blood!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13207, 1, 0, 0, 'ingvar SAY_AGGRO_FIRST'),
(23954, -1574006, 'I return! A second chance to carve out your skull!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13209, 1, 0, 0, 'ingvar SAY_AGGRO_SECOND'),
(23954, -1574007, 'My life for the... death god!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13213, 1, 0, 0, 'ingvar SAY_DEATH_FIRST'),
(23954, -1574008, 'No! I can do... better! I can...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13211, 1, 0, 0, 'ingvar SAY_DEATH_SECOND'),
(23954, -1574009, 'Mjul orm agn gjor!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13212, 1, 0, 0, 'ingvar SAY_KILL_FIRST'),
(23954, -1574010, 'I am a warrior born!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13214, 1, 0, 0, 'ingvar SAY_KILL_SECOND'),
(24200, -1574011, 'Dalronn! See if you can muster the nerve to join my attack!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13229, 1, 0, 0, 'skarvald YELL_SKARVALD_AGGRO'),
(24200, -1574012, 'Not... over... yet.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13230, 1, 0, 0, 'skarvald YELL_SKARVALD_DAL_DIED'),
(24200, -1574013, 'A warrior''s death.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13231, 1, 0, 0, 'skarvald YELL_SKARVALD_SKA_DIEDFIRST'),
(24200, -1574014, '???', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13232, 1, 0, 0, 'skarvald YELL_SKARVALD_KILL'),
(24200, -1574015, 'Pagh! What sort of necromancer lets death stop him? I knew you were worthless!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13233, 1, 0, 0, 'skarvald YELL_SKARVALD_DAL_DIEDFIRST'),
(24201, -1574016, 'By all means, don''t assess the situation, you halfwit! Just jump into the fray!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13199, 1, 0, 0, 'dalronn YELL_DALRONN_AGGRO'),
(24201, -1574017, 'See... you... soon.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13200, 1, 0, 0, 'dalronn YELL_DALRONN_SKA_DIED'),
(24201, -1574018, 'There''s no... greater... glory.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13201, 1, 0, 0, 'dalronn YELL_DALRONN_DAL_DIEDFIRST'),
(24201, -1574019, 'You may serve me yet.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13202, 1, 0, 0, 'dalronn YELL_DALRONN_KILL'),
(24201, -1574020, 'Skarvald, you incompetent slug! Return and make yourself useful!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13203, 1, 0, 0, 'dalronn YELL_DALRONN_SKA_DIEDFIRST'),
(26731, -1576000, 'You know what they say about curiosity.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13319, 1, 0, 0, 'grand magus telestra SAY_AGGRO'),
(26731, -1576001, 'Death becomes you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13324, 1, 0, 0, 'grand magus telestra SAY_KILL'),
(26731, -1576002, 'Damn the... luck.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13320, 1, 0, 0, 'grand magus telestra SAY_DEATH'),
(26731, -1576003, 'Now to finish the job!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13323, 1, 0, 0, 'grand magus telestra SAY_MERGE'),
(26731, -1576004, 'There''s plenty of me to go around.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13321, 1, 0, 0, 'grand magus telestra SAY_SPLIT_1'),
(26731, -1576005, 'I''ll give you more than you can handle.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13322, 1, 0, 0, 'grand magus telestra SAY_SPLIT_2'),
(26763, -1576010, 'Chaos beckons.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13186, 1, 0, 0, 'anomalus SAY_AGGRO'),
(26763, -1576011, 'Of course.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13187, 1, 0, 0, 'anomalus SAY_DEATH'),
(26763, -1576012, 'Reality... unwoven.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13188, 1, 0, 0, 'anomalus SAY_RIFT'),
(26763, -1576013, 'Indestructible.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13189, 1, 0, 0, 'anomalus SAY_SHIELD'),
(26794, -1576020, 'Noo!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13328, 1, 0, 0, 'ormorok SAY_AGGRO'),
(26794, -1576021, 'Aaggh!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13330, 1, 0, 0, 'ormorok SAY_DEATH'),
(26794, -1576022, 'Back!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13331, 1, 0, 0, 'ormorok SAY_REFLECT'),
(26794, -1576023, 'Bleed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13332, 1, 0, 0, 'ormorok SAY_CRYSTAL_SPIKES'),
(26794, -1576024, 'Aaggh! Kill!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13329, 1, 0, 0, 'ormorok SAY_KILL'),
(26723, -1576040, 'Preserve? Why? There''s no truth in it. No no no... only in the taking! I see that now!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13450, 1, 0, 0, 'keristrasza SAY_AGGRO'),
(26723, -1576041, 'Now we''ve come to the truth!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13453, 1, 0, 0, 'keristrasza SAY_SLAY'),
(26723, -1576042, 'Finish it! FINISH IT! Kill me, or I swear by the Dragonqueen you''ll never see daylight again!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13452, 1, 0, 0, 'keristrasza SAY_ENRAGE'),
(26723, -1576043, 'Dragonqueen... Life-Binder... preserve... me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13454, 1, 0, 0, 'keristrasza SAY_DEATH'),
(26723, -1576044, 'Stay. Enjoy your final moments.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13451, 1, 0, 0, 'keristrasza SAY_CRYSTAL_NOVA'),
(24850, -1580000, 'Aggh! No longer will I be a slave to Malygos! Challenge me and you will be destroyed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12422, 1, 0, 0, 'kalecgos SAY_EVIL_AGGRO'),
(24850, -1580001, 'I will purge you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12423, 1, 0, 0, 'kalecgos SAY_EVIL_SPELL1'),
(24850, -1580002, 'Your pain has only begun!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12424, 1, 0, 0, 'kalecgos SAY_EVIL_SPELL2'),
(24850, -1580003, 'In the name of Kil''jaeden!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12425, 1, 0, 0, 'kalecgos SAY_EVIL_SLAY1'),
(24850, -1580004, 'You were warned!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12426, 1, 0, 0, 'kalecgos SAY_EVIL_SLAY2'),
(24850, -1580005, 'My awakening is complete! You shall all perish!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12427, 1, 0, 0, 'kalecgos SAY_EVIL_ENRAGE'),
(24891, -1580006, 'I need... your help... Cannot... resist him... much longer...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12428, 1, 0, 0, 'kalecgos humanoid SAY_GOOD_AGGRO'),
(24891, -1580007, 'Aaahhh! Help me, before I lose my mind!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12429, 1, 0, 0, 'kalecgos humanoid SAY_GOOD_NEAR_DEATH'),
(24891, -1580008, 'Hurry! There is not much of me left!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12430, 1, 0, 0, 'kalecgos humanoid SAY_GOOD_NEAR_DEATH2'),
(24891, -1580009, 'I am forever in your debt. Once we have triumphed over Kil''jaeden, this entire world will be in your debt as well.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12431, 1, 0, 0, 'kalecgos humanoid SAY_GOOD_PLRWIN'),
(24892, -1580010, 'There will be no reprieve. My work here is nearly finished.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12451, 1, 0, 0, 'sathrovarr SAY_SATH_AGGRO'),
(24892, -1580011, 'I''m... never on... the losing... side...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12452, 1, 0, 0, 'sathrovarr SAY_SATH_DEATH'),
(24892, -1580012, 'Your misery is my delight!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12453, 1, 0, 0, 'sathrovarr SAY_SATH_SPELL1'),
(24892, -1580013, 'I will watch you bleed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12454, 1, 0, 0, 'sathrovarr SAY_SATH_SPELL2'),
(24892, -1580014, 'Pitious mortal!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12455, 1, 0, 0, 'sathrovarr SAY_SATH_SLAY1'),
(24892, -1580015, 'Haven''t you heard? I always win!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12456, 1, 0, 0, 'sathrovarr SAY_SATH_SLAY2'),
(24892, -1580016, 'I have toyed with you long enough!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12457, 1, 0, 0, 'sathrovarr SAY_SATH_ENRAGE'),
(24882, -1580017, 'Puny lizard! Death is the only answer you''ll find here!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12458, 1, 0, 0, 'brutallus YELL_INTRO'),
(24882, -1580018, 'Grah! Your magic is weak!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12459, 1, 0, 0, 'brutallus YELL_INTRO_BREAK_ICE'),
(24882, -1580019, 'I will crush you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12460, 1, 0, 0, 'brutallus YELL_INTRO_CHARGE'),
(24882, -1580020, 'That was fun.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12461, 1, 0, 0, 'brutallus YELL_INTRO_KILL_MADRIGOSA'),
(24882, -1580021, 'Come, try your luck!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12462, 1, 0, 0, 'brutallus YELL_INTRO_TAUNT'),
(24882, -1580022, 'Ahh! More lambs to the slaughter!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12463, 1, 0, 0, 'brutallus YELL_AGGRO'),
(24882, -1580023, 'Perish, insect!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12464, 1, 0, 0, 'brutallus YELL_KILL1'),
(24882, -1580024, 'You are meat!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12465, 1, 0, 0, 'brutallus YELL_KILL2'),
(24882, -1580025, 'Too easy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12466, 1, 0, 0, 'brutallus YELL_KILL3'),
(24882, -1580026, 'Bring the fight to me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12467, 1, 0, 0, 'brutallus YELL_LOVE1'),
(24882, -1580027, 'Another day, another glorious battle!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12468, 1, 0, 0, 'brutallus YELL_LOVE2'),
(24882, -1580028, 'I live for this!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12469, 1, 0, 0, 'brutallus YELL_LOVE3'),
(24882, -1580029, 'So much for a real challenge... Die!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12470, 1, 0, 0, 'brutallus YELL_BERSERK'),
(24882, -1580030, 'Gah! Well done... Now... this gets... interesting...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12471, 1, 0, 0, 'brutallus YELL_DEATH'),
(24882, -1580031, 'Hold, friends! There is information to be had before this devil meets his fate!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12472, 1, 0, 0, 'madrigosa YELL_MADR_ICE_BARRIER'),
(24882, -1580032, 'Where is Anveena, demon? What has become of Kalec?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12473, 1, 0, 0, 'madrigosa YELL_MADR_INTRO'),
(24882, -1580033, 'You will tell me where they are!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12474, 1, 0, 0, 'madrigosa YELL_MADR_ICE_BLOCK'),
(24882, -1580034, 'Speak, I grow weary of asking!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12475, 1, 0, 0, 'madrigosa YELL_MADR_TRAP'),
(24882, -1580035, 'Malygos, my lord! I did my best!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12476, 1, 0, 0, 'madrigosa YELL_MADR_DEATH'),
(25038, -1580036, 'Glory to Kil''jaeden! Death to all who oppose!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12477, 1, 0, 0, 'felmyst - YELL_BIRTH'),
(25038, -1580037, 'I kill for the master!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12480, 1, 0, 0, 'felmyst - YELL_KILL1'),
(25038, -1580038, 'The end has come!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12481, 1, 0, 0, 'felmyst - YELL_KILL2'),
(25038, -1580039, 'Choke on your final breath!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12478, 1, 0, 0, 'felmyst - YELL_BREATH'),
(25038, -1580040, 'I am stronger than ever before!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12479, 1, 0, 0, 'felmyst- YELL_TAKEOFF'),
(25038, -1580041, 'No more hesitation! Your fates are written!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12482, 1, 0, 0, 'felmyst - YELL_BERSERK'),
(25038, -1580042, 'Kil''jaeden... will... prevail...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12483, 1, 0, 0, 'felmyst - YELL_DEATH'),
(25038, -1580043, 'Madrigosa deserved a far better fate. You did what had to be done, but this battle is far from over.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12439, 1, 0, 0, 'felmyst - YELL_KALECGOS'),
(25166, -1580044, 'Fire to the aid of shadow!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12489, 1, 0, 0, 'eredar - YELL_CANFLAGRATION'),
(25166, -1580045, 'Sacrolash!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12492, 1, 0, 0, 'eredar - YELL_SISTER_SACROLASH_DEAD'),
(25166, -1580046, 'Fire consume.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12490, 1, 0, 0, 'eredar - YELL_ALY_KILL_1'),
(25166, -1580047, 'Ed-ir Halach!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12491, 1, 0, 0, 'eredar - YELL_ALY_KILL_2'),
(25166, -1580048, 'De-ek Anur!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12494, 1, 0, 0, 'eredar - YELL_ALY_DEAD'),
(25166, -1580049, 'Your luck has run its curse!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12493, 1, 0, 0, 'eredar - YELL_BERSERK'),
(25165, -1580050, 'Shadow to the aid of fire!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12485, 1, 0, 0, 'eredar - YELL_SHADOW_NOVA'),
(25165, -1580051, 'Alythess! Your fire burns within me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12488, 1, 0, 0, 'eredar - YELL_SISTER_ALYTHESS_DEAD'),
(25165, -1580052, 'Shadow engulf.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12486, 1, 0, 0, 'eredar - YELL_SAC_KILL_1'),
(25165, -1580053, 'Ee-nok Kryul!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12487, 1, 0, 0, 'eredar - YELL_SAC_KILL_2'),
(25165, -1580054, 'I... fade.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'eredar - YELL_SAC_DEAD'),
(25165, -1580055, 'Time is a luxury you no longer possess!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'eredar - YELL_ENRAGE'),
(25166, -1580056, 'Misery...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12484, 1, 0, 0, 'eredar - YELL_INTRO_SAC_1'),
(25166, -1580057, 'Depravity...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'eredar - YELL_INTRO_ALY_2'),
(25166, -1580058, 'Confusion...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'eredar - YELL_INTRO_SAC_3'),
(25166, -1580059, 'Hatred...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'eredar - YELL_INTRO_ALY_4'),
(25166, -1580060, 'Mistrust...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'eredar - YELL_INTRO_SAC_5'),
(25166, -1580061, 'Chaos...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'eredar - YELL_INTRO_ALY_6'),
(25166, -1580062, 'These are the hallmarks...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'eredar - YELL_INTRO_SAC_7'),
(25166, -1580063, 'These are the pillars...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'eredar - YELL_INTRO_ALY_8'),
(25165, -1580064, '%s directs Shadow Nova at $N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'eredar - emote shadow nova'),
(25166, -1580065, '%s directs Conflagration at $N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'eredar - emote conflagration'),
(25608, -1580066, 'All my plans have led to this!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12495, 1, 0, 0, 'KJ - SAY_KJ_OFFCOMBAT1'),
(25608, -1580067, 'Stay on task! Do not waste time!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12496, 1, 0, 0, 'KJ - SAY_KJ_OFFCOMBAT2'),
(25608, -1580068, 'I have waited long enough!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12497, 1, 0, 0, 'KJ - SAY_KJ_OFFCOMBAT3'),
(25608, -1580069, 'Fail me and suffer for eternity!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12498, 1, 0, 0, 'KJ - SAY_KJ_OFFCOMBAT4'),
(25608, -1580070, 'Drain the girl! Drain her power until there is nothing but a vacant shell!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12499, 1, 0, 0, 'KJ - SAY_KJ_OFFCOMBAT5'),
(25315, -1580071, 'The expendible have perished... So be it! Now I shall succeed where Sargeras could not! I will bleed this wretched world and secure my place as the true master of the Burning Legion. The end has come! Let the unraveling of this world commence!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12500, 1, 0, 0, 'KJ - SAY_KJ_EMERGE'),
(25315, -1580072, 'Another step towards destruction!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12501, 1, 0, 0, 'KJ - SAY_KJ_SLAY1'),
(25315, -1580073, 'Anak-ky''ri!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12502, 1, 0, 0, 'KJ - SAY_KJ_SLAY2'),
(25315, -1580074, 'Who can you trust?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12503, 1, 0, 0, 'KJ - SAY_KJ_REFLECTION1'),
(25315, -1580075, 'The enemy is among you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12504, 1, 0, 0, 'KJ - SAY_KJ_REFLECTION2'),
(25315, -1580076, 'Chaos!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12505, 1, 0, 0, 'KJ - SAY_KJ_DARKNESS1'),
(25315, -1580077, 'Destruction!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12506, 1, 0, 0, 'KJ - SAY_KJ_DARKNESS2'),
(25315, -1580078, 'Oblivion!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12507, 1, 0, 0, 'KJ - SAY_KJ_DARKNESS3'),
(25315, -1580079, 'I will not be denied! This world shall fall!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12508, 1, 0, 0, 'KJ - SAY_KJ_PHASE3'),
(25315, -1580080, 'Do not harbor false hope. You cannot win!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12509, 1, 0, 0, 'KJ - SAY_KJ_PHASE4'),
(25315, -1580081, 'Aggghh! The powers of the Sunwell... turned... against me! What have you done? WHAT HAVE YOU DONE?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12510, 1, 0, 0, 'KJ - SAY_KJ_PHASE5'),
(25315, -1580082, 'Anveena, you must awaken, this world needs you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12445, 1, 0, 0, 'KJ - SAY_KALECGOS_AWAKEN'),
(25315, -1580083, 'I serve only the Master now.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12511, 1, 0, 0, 'KJ - SAY_ANVEENA_IMPRISONED');
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(25315, -1580084, 'You must let go! You must become what you were always meant to be! The time is now, Anveena!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12446, 1, 0, 0, 'KJ - SAY_KALECGOS_LETGO'),
(25315, -1580085, 'But I''m... lost... I cannot find my way back!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12512, 1, 0, 0, 'KJ - SAY_ANVEENA_LOST'),
(25315, -1580086, 'Anveena, I love you! Focus on my voice, come back for me now! Only you can cleanse the Sunwell!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12447, 1, 0, 0, 'KJ - SAY_KALECGOS_FOCUS'),
(25315, -1580087, 'Kalec... Kalec?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12513, 1, 0, 0, 'KJ - SAY_ANVEENA_KALEC'),
(25315, -1580088, 'Yes, Anveena! Let fate embrace you now!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12448, 1, 0, 0, 'KJ - SAY_KALECGOS_FATE'),
(25315, -1580089, 'The nightmare is over, the spell is broken! Goodbye, Kalec, my love!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12514, 1, 0, 0, 'KJ - SAY_ANVEENA_GOODBYE'),
(25315, -1580090, 'Goodbye, Anveena, my love. Few will remember your name, yet this day you change the course of destiny. What was once corrupt is now pure. Heroes, do not let her sacrifice be in vain.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12450, 1, 0, 0, 'KJ - SAY_KALECGOS_GOODBYE'),
(25315, -1580091, 'Strike now, heroes, while he is weakened! Vanquish the Deceiver!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12449, 1, 0, 0, 'KJ - SAY_KALECGOS_ENCOURAGE'),
(25319, -1580092, 'You are not alone. The Blue Dragonflight shall help you vanquish the Deceiver.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12438, 1, 0, 0, 'KJ - SAY_KALECGOS_JOIN'),
(25315, -1580093, 'Nooooooooooooo!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12527, 1, 0, 0, 'KJ - SAY_KJ_DEATH'),
(25315, -1580094, '%s begins to channel dark energy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'KJ - EMOTE_KJ_DARKNESS'),
(25319, -1580095, 'I will channel my power into the orbs, be ready!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12440, 1, 0, 0, 'KJ - SAY_KALEC_ORB_READY1'),
(25319, -1580096, 'I have empowered another orb! Use it quickly!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12441, 1, 0, 0, 'KJ - SAY_KALEC_ORB_READY2'),
(25319, -1580097, 'Another orb is ready! Make haste!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12442, 1, 0, 0, 'KJ - SAY_KALEC_ORB_READY3'),
(25319, -1580098, 'I have channeled all I can! The power is in your hands!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12443, 1, 0, 0, 'KJ - SAY_KALEC_ORB_READY4'),
(0, -1580099, 'Mortal heroes, your victory here today was foretold long ago. My brother''s anguished cry of defeat will echo across the universe, bringing renewed hope to all those who still stand against the Burning Crusade.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12515, 0, 0, 0, 'prophet velen - SAY1'),
(0, -1580100, 'As the Legion''s final defeat draws ever-nearer, stand proud in the knowledge that you have saved worlds without number from the flame. Just as this day marks an ending, so too does it herald a new beginning...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12516, 0, 0, 0, 'prophet velen - SAY2'),
(0, -1580101, 'The creature Entropius, whom you were forced to destroy, was once the noble naaru, M''uru. In life, M''uru channeled vast energies of LIGHT and HOPE. For a time, a misguided few sought to steal those energies...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12518, 0, 0, 0, 'prophet velen - SAY3'),
(0, -1580102, 'Then fortunate it is, that I have reclaimed the noble naaru''s spark from where it fell! Where faith dwells, hope is never lost, young blood elf.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12519, 0, 0, 0, 'prophet velen - SAY4'),
(0, -1580103, 'Gaze now, mortals - upon the HEART OF M''URU! Unblemished. Bathed by the light of Creation - just as it was at the Dawn.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12520, 0, 0, 0, 'prophet velen - SAY5'),
(0, -1580104, 'In time, the light and hope held within - will rebirth more than this mere fount of power... Mayhap, they will rebirth the soul of a nation.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12521, 0, 0, 0, 'prophet velen - SAY6'),
(0, -1580105, 'Salvation, young one. It waits for us all.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12522, 0, 0, 0, 'prophet velen - SAY7'),
(0, -1580106, 'Farewell...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12523, 0, 0, 0, 'prophet velen - SAY8'),
(0, -1580107, 'Our arrogance was unpardonable. We damned one of the most noble beings of all. We may never atone for this sin.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12524, 0, 0, 0, 'lady liadrinn - SAY1'),
(0, -1580108, 'Can it be?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12525, 0, 0, 0, 'lady liadrinn - SAY2'),
(0, -1580109, 'Blessed ancestors! I feel it... so much love... so much grace... there are... no words... impossible to describe...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12525, 0, 0, 0, 'lady liadrinn - SAY3'),
(24723, -1585000, 'You only waste my time!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12378, 1, 0, 0, 'selin SAY_AGGRO'),
(24723, -1585001, 'My hunger knows no bounds!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12381, 1, 0, 0, 'selin SAY_ENERGY'),
(24723, -1585002, 'Yes! I am a god!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12382, 1, 0, 0, 'selin SAY_EMPOWERED'),
(24723, -1585003, 'Enough distractions!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12388, 1, 0, 0, 'selin SAY_KILL_1'),
(24723, -1585004, 'I am invincible!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12385, 1, 0, 0, 'selin SAY_KILL_2'),
(24723, -1585005, 'No! More... I must have more!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12383, 1, 0, 0, 'selin SAY_DEATH'),
(24723, -1585006, '%s begins to channel from the nearby Fel Crystal...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'selin EMOTE_CRYSTAL'),
(24744, -1585007, 'Drain...life!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12389, 1, 0, 0, 'vexallus SAY_AGGRO'),
(24744, -1585008, 'Un...con...tainable.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12392, 1, 0, 0, 'vexallus SAY_ENERGY'),
(24744, -1585009, 'Un...leash...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12390, 1, 0, 0, 'vexallus SAY_OVERLOAD'),
(24744, -1585010, 'Con...sume.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12393, 1, 0, 0, 'vexallus SAY_KILL'),
(24744, -1585011, 'discharges pure energy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'vexallus EMOTE_DISCHARGE_ENERGY'),
(24560, -1585012, 'Annihilate them!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12395, 1, 0, 0, 'delrissa SAY_AGGRO'),
(24560, -1585013, 'Oh, the horror.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12398, 1, 0, 0, 'delrissa LackeyDeath1'),
(24560, -1585014, 'Well, aren''t you lucky?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12400, 1, 0, 0, 'delrissa LackeyDeath2'),
(24560, -1585015, 'Now I''m getting annoyed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12401, 1, 0, 0, 'delrissa LackeyDeath3'),
(24560, -1585016, 'Lackies be damned! I''ll finish you myself!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12403, 1, 0, 0, 'delrissa LackeyDeath4'),
(24560, -1585017, 'I call that a good start.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12405, 1, 0, 0, 'delrissa PlayerDeath1'),
(24560, -1585018, 'I could have sworn there were more of you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12407, 1, 0, 0, 'delrissa PlayerDeath2'),
(24560, -1585019, 'Not really much of a group, anymore, is it?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12409, 1, 0, 0, 'delrissa PlayerDeath3'),
(24560, -1585020, 'One is such a lonely number.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12410, 1, 0, 0, 'delrissa PlayerDeath4'),
(24560, -1585021, 'It''s been a kick, really.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12411, 1, 0, 0, 'delrissa PlayerDeath5'),
(24560, -1585022, 'Not what I had... planned...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12397, 1, 0, 0, 'delrissa SAY_DEATH'),
(24664, -1585023, 'Don''t look so smug! I know what you''re thinking, but Tempest Keep was merely a set back. Did you honestly believe I would trust the future to some blind, half-night elf mongrel? Oh no, he was merely an instrument, a stepping stone to a much larger plan! It has all led to this, and this time, you will not interfere!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12413, 1, 0, 0, 'kaelthas MT SAY_AGGRO'),
(24664, -1585024, 'Vengeance burns!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12415, 1, 0, 0, 'kaelthas MT SAY_PHOENIX'),
(24664, -1585025, 'Felomin ashal!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12417, 1, 0, 0, 'kaelthas MT SAY_FLAMESTRIKE'),
(24664, -1585026, 'I''ll turn your world... upside... down...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12418, 1, 0, 0, 'kaelthas MT SAY_GRAVITY_LAPSE'),
(24664, -1585027, 'Master... grant me strength.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12419, 1, 0, 0, 'kaelthas MT SAY_TIRED'),
(24664, -1585028, 'Do not... get too comfortable.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12420, 1, 0, 0, 'kaelthas MT SAY_RECAST_GRAVITY'),
(24664, -1585029, 'My demise accomplishes nothing! The Master will have you! You will drown in your own blood! This world shall burn! Aaaghh!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12421, 1, 0, 0, 'kaelthas MT SAY_DEATH'),
(33993, -1590000, 'Emalon the Storm Watcher overcharges a Tempest Minion!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'emalon EMOTE_OVERCHARGE_TEMPEST_MINION'),
(33993, -1590001, 'A Tempest Minion appears to defend Emalon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'emalon EMOTE_MINION_RESPAWN'),
(33993, -1590002, 'Archavon the Stone Watcher goes into a berserker rage!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'archavon EMOTE_BERSERK'),
(29120, -1601003, 'You shall experience my torment, first-hand!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14055, 1, 0, 0, ''),
(29120, -1601002, 'You have made your choice.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14056, 1, 0, 0, ''),
(29120, -1601000, 'Eternal aggony awaits you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14054, 1, 0, 0, ''),
(29120, -1601001, 'Soon, the Master''s voice will call to you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14057, 1, 0, 0, ''),
(28586, -1602000, 'I am the greatest of my father''s sons! Your end has come!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14149, 1, 0, 0, 'bjarngrim SAY_AGGRO'),
(28586, -1602001, 'So ends your curse!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14153, 1, 0, 0, 'bjarngrim SAY_SLAY_1'),
(28586, -1602002, 'Flesh... is... weak!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14154, 1, 0, 0, 'bjarngrim SAY_SLAY_2'),
(28586, -1602003, '...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14155, 1, 0, 0, 'bjarngrim SAY_SLAY_3'),
(28586, -1602004, 'How can it be...? Flesh is not... stronger!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14156, 1, 0, 0, 'bjarngrim SAY_DEATH'),
(28586, -1602005, 'Defend yourself, for all the good it will do!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14151, 1, 0, 0, 'bjarngrim SAY_BATTLE_STANCE'),
(28586, -1602006, '%s switches to Battle Stance!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'bjarngrim EMOTE_BATTLE_STANCE'),
(28586, -1602007, 'GRAAAAAH! Behold the fury of iron and steel!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14152, 1, 0, 0, 'bjarngrim SAY_BERSEKER_STANCE'),
(28586, -1602008, '%s switches to Berserker Stance!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'bjarngrim EMOTE_BERSEKER_STANCE'),
(28586, -1602009, 'Give me your worst!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14150, 1, 0, 0, 'bjarngrim SAY_DEFENSIVE_STANCE'),
(28586, -1602010, '%s switches to Defensive Stance!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'bjarngrim EMOTE_DEFENSIVE_STANCE'),
(28546, -1602011, 'You wish to confront the master? You must weather the storm!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14453, 1, 0, 0, 'ionar SAY_AGGRO'),
(28546, -1602012, 'Shocking ... I know!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14456, 1, 0, 0, 'ionar SAY_SLAY_1'),
(28546, -1602013, 'You atempt the unpossible.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14457, 1, 0, 0, 'ionar SAY_SLAY_2'),
(28546, -1602014, 'Your spark of light is ... extinguish.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14458, 1, 0, 0, 'ionar SAY_SLAY_3'),
(28546, -1602015, 'Master... you have guests.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14459, 1, 0, 0, 'ionar SAY_DEATH'),
(28546, -1602016, 'The slightest spark shall be your undoing.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14454, 1, 0, 0, 'ionar SAY_SPLIT_1'),
(28546, -1602017, 'No one is safe!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14455, 1, 0, 0, 'ionar SAY_SPLIT_2'),
(28923, -1602018, 'What hope is there for you? None!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14162, 1, 0, 0, 'loken SAY_AGGRO0'),
(28923, -1602019, 'I have witnessed the rise and fall of empires. The birth and extinction of entire species. Over countless millennia the foolishness of mortals has remained beyond a constant. Your presence here confirms this.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14160, 1, 0, 0, 'loken SAY_INTRO_1'),
(28923, -1602020, 'My master has shown me the future, and you have no place in it. Azeroth will be reborn in darkness. Yogg-Saron shall be released! The Pantheon shall fall!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14162, 1, 0, 0, 'loken SAY_INTRO_2'),
(28923, -1602021, 'Only mortal...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14166, 1, 0, 0, 'loken SAY_SLAY_1'),
(28923, -1602022, 'I... am... FOREVER!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14167, 1, 0, 0, 'loken SAY_SLAY_2'),
(28923, -1602023, 'What little time you had, you wasted!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14168, 1, 0, 0, 'loken SAY_SLAY_3'),
(28923, -1602024, 'My death... heralds the end of this world.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14172, 1, 0, 0, 'loken SAY_DEATH'),
(28923, -1602025, 'You cannot hide from fate!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14163, 1, 0, 0, 'loken SAY_NOVA_1'),
(28923, -1602026, 'Come closer. I will make it quick.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14164, 1, 0, 0, 'loken SAY_NOVA_2'),
(28923, -1602027, 'Your flesh cannot hold out for long.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14165, 1, 0, 0, 'loken SAY_NOVA_3'),
(28923, -1602028, 'You stare blindly into the abyss!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14169, 1, 0, 0, 'loken SAY_75HEALTH'),
(28923, -1602029, 'Your ignorance is profound. Can you not see where this path leads?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14170, 1, 0, 0, 'loken SAY_50HEALTH'),
(28923, -1602030, 'You cross the precipice of oblivion!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14171, 1, 0, 0, 'loken SAY_25HEALTH'),
(28923, -1602031, '%s begins to cast Lightning Nova!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'loken EMOTE_NOVA'),
(28587, -1602032, 'It is you who have destroyed my children? You... shall... pay!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13960, 1, 0, 0, 'volkhan SAY_AGGRO'),
(28587, -1602033, 'The armies of iron will conquer all!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13965, 1, 0, 0, 'volkhan SAY_SLAY_1'),
(28587, -1602034, 'Ha, pathetic!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13966, 1, 0, 0, 'volkhan SAY_SLAY_2'),
(28587, -1602035, 'You have cost me too much work!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13967, 1, 0, 0, 'volkhan SAY_SLAY_3'),
(28587, -1602036, 'The master was right... to be concerned.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13968, 1, 0, 0, 'volkhan SAY_DEATH'),
(28587, -1602037, 'I will crush you beneath my boots!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13963, 1, 0, 0, 'volkhan SAY_STOMP_1'),
(28587, -1602038, 'All my work... undone!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13964, 1, 0, 0, 'volkhan SAY_STOMP_2'),
(28587, -1602039, 'Life from the lifelessness... death for you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13961, 1, 0, 0, 'volkhan SAY_FORGE_1'),
(28587, -1602040, 'Nothing is wasted in the process. You will see....', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13962, 1, 0, 0, 'volkhan SAY_FORGE_2'),
(28587, -1602041, '%s runs to his anvil!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'volkhan EMOTE_TO_ANVIL'),
(28587, -1602042, '%s prepares to shatter his Brittle Golems!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'volkhan EMOTE_SHATTER'),
(27975, -1599000, 'You shouldn''t have come...now you will die!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13487, 1, 0, 0, 'maiden of grief SAY_AGGRO'),
(27975, -1599001, 'Why must it be this way?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13488, 1, 0, 0, 'maiden of grief SAY_SLAY_1'),
(27975, -1599002, 'You had it coming!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13489, 1, 0, 0, 'maiden of grief SAY_SLAY_2'),
(27975, -1599003, 'My burden grows heavier.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13490, 1, 0, 0, 'maiden of grief SAY_SLAY_3'),
(27975, -1599004, 'This is your own fault!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13491, 1, 0, 0, 'maiden of grief SAY_SLAY_4'),
(27975, -1599005, 'I hope you all rot! I never...wanted...this.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13493, 1, 0, 0, 'maiden of grief SAY_DEATH'),
(27975, -1599006, 'So much lost time... that you''ll never get back!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13492, 1, 0, 0, 'maiden of grief SAY_STUN'),
(27977, -1599007, 'Crush....', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14176, 1, 0, 0, 'krystallus SAY_AGGRO'),
(27977, -1599008, 'Ha...ha...ha...ha...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14177, 1, 0, 0, 'krystallus SAY_KILL'),
(27977, -1599009, 'Uuuuhhhhhhhhhh......', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14179, 1, 0, 0, 'krystallus SAY_DEATH'),
(27977, -1599010, 'Break.... you....', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14178, 1, 0, 0, 'krystallus SAY_SHATTER'),
(27978, -1599011, 'Soft, vulnerable shells. Brief, fragile lives. You can not escape the curse of flesh!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14180, 1, 0, 0, 'Sjonnir SAY_AGGRO'),
(27978, -1599012, 'Flesh is no match for iron!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14182, 1, 0, 0, 'Sjonnir SAY_SLAY_1'),
(27978, -1599013, 'Armies of iron will smother the world!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14183, 1, 0, 0, 'Sjonnir SAY_SLAY_2'),
(32871, -1603000, 'Your actions are illogical. All possible results for this encounter have been calculated. The Pantheon will receive the Observer''s message regardless of outcome.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15386, 1, 0, 0, 'algalon SAY_AGGRO'),
(27978, -1599015, 'Loken will not rest, until the forge is retaken. You changed nothing!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14184, 1, 0, 0, 'Sjonnir SAY_DEATH'),
(28070, -1599016, 'Now that''s owning your supper!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14244, 1, 0, 0, 'brann SAY_KILL_1'),
(28070, -1599017, 'Press on, that''s the way!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14245, 1, 0, 0, 'brann SAY_KILL_2'),
(28070, -1599018, 'Keep it up now. Plenty of death-dealing for everyone!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14246, 1, 0, 0, 'brann SAY_KILL_3'),
(28070, -1599019, 'I''m all kinds of busted up. Might not... make it...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14257, 1, 0, 0, 'brann SAY_LOW_HEALTH'),
(28070, -1599020, 'Not yet, not... yet-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14258, 1, 0, 0, 'brann SAY_DEATH'),
(28070, -1599021, 'I''m doing everything I can!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14260, 1, 0, 0, 'brann SAY_PLAYER_DEATH_1'),
(28070, -1599022, 'Light preserve you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14261, 1, 0, 0, 'brann SAY_PLAYER_DEATH_2'),
(28070, -1599023, 'I hope this is all worth it!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14262, 1, 0, 0, 'brann SAY_PLAYER_DEATH_3'),
(28070, -1599024, 'Time to get some answers! Let''s get this show on the road!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14259, 1, 0, 0, 'brann SAY_ESCORT_START'),
(28070, -1599025, 'Don''t worry. Old Brann has got your back. Keep that metal monstrosity busy and I''ll see if I can sweet talk this machine into helping you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14274, 1, 0, 0, 'brann SAY_SPAWN_DWARF'),
(28070, -1599026, 'This is a wee bit trickier that before... Oh, bloody--incomin''!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14275, 1, 0, 0, 'brann SAY_SPAWN_TROGG'),
(28070, -1599027, 'What in the name o'' Madoran did THAT do? Oh! Wait: I just about got it...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14276, 1, 0, 0, 'brann SAY_SPAWN_OOZE'),
(28070, -1599028, 'Ha, that did it. Help''s a-coming. Take this you glow-eying brute!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14277, 1, 0, 0, 'brann SAY_SPAWN_EARTHEN'),
(28070, -1599029, 'Take a moment and relish this with me! Soon all will be revealed! Okay then, let''s do this!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14247, 1, 0, 0, 'brann SAY_EVENT_INTRO_1'),
(28070, -1599030, 'Now keep an eye out! I''ll have this licked in two shakes of a--', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14248, 1, 0, 0, 'brann SAY_EVENT_INTRO_2'),
(28070, -1599031, 'Warning! Life form pattern not recognized. Archival processing terminated. Continued interference will result in targeted response.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13765, 1, 0, 0, 'brann SAY_EVENT_INTRO_3_ABED'),
(28070, -1599032, 'Oh, that doesn''t sound good. We might have a complication or two...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14249, 1, 0, 0, 'brann SAY_EVENT_A_1'),
(28070, -1599033, 'Security breach in progress. Analysis of historical archives transferred to lower priority queue. Countermeasures engaged.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13756, 1, 0, 0, 'brann SAY_EVENT_A_2_KADD'),
(28070, -1599034, 'Ah, you want to play hardball, eh? That''s just my game!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14250, 1, 0, 0, 'brann SAY_EVENT_A_3'),
(28070, -1599035, 'Couple more minutes and I''ll--', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14251, 1, 0, 0, 'brann SAY_EVENT_B_1'),
(28070, -1599036, 'Threat index threshold exceeded. Celestial archive aborted. Security level heightened.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13761, 1, 0, 0, 'brann SAY_EVENT_B_2_MARN'),
(28070, -1599037, 'Heightened? What''s the good news?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14252, 1, 0, 0, 'brann SAY_EVENT_B_3'),
(28070, -1599038, 'So that was the problem? Now I''m makin'' progress...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14253, 1, 0, 0, 'brann SAY_EVENT_C_1'),
(28070, -1599039, 'Critical threat index. Void analysis diverted. Initiating sanitization protocol.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13767, 1, 0, 0, 'brann SAY_EVENT_C_2_ABED'),
(28070, -1599040, 'Hang on! Nobody''s gonna'' be sanitized as long as I have a say in it!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14254, 1, 0, 0, 'brann SAY_EVENT_C_3'),
(28070, -1599041, 'Ha! The old magic fingers finally won through! Now let''s get down to-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14255, 1, 0, 0, 'brann SAY_EVENT_D_1'),
(28070, -1599042, 'Alert! Security fail safes deactivated. Beginning memory purge...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13768, 1, 0, 0, 'brann SAY_EVENT_D_2_ABED'),
(28070, -1599043, 'Purge? No no no no no! Where did I-- Aha, this should do the trick...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14256, 1, 0, 0, 'brann SAY_EVENT_D_3'),
(28070, -1599044, 'System online. Life form pattern recognized. Welcome Branbronzan. Query?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13769, 1, 0, 0, 'brann SAY_EVENT_D_4_ABED'),
(28070, -1599064, 'Well now. That''s a lot to digest. I''m gonna need some time to take all of this in. Thank you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14273, 1, 0, 0, 'brann SAY_EVENT_END_20'),
(28070, -1599046, 'Tell me how that dwarfs came to be! And start at the beginning!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14264, 1, 0, 0, 'brann SAY_EVENT_END_02'),
(28070, -1599047, 'Accessing prehistoric data. Retrieved. In the beginning Earthen were created to-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13770, 1, 0, 0, 'brann SAY_EVENT_END_03_ABED'),
(28070, -1599048, 'Right, right! I know that the Earthen were made of stone to shape the deep reaches of the world but what about the anomalies? Matrix non-stabilizing and whatnot.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14265, 1, 0, 0, 'brann SAY_EVENT_END_04'),
(28070, -1599049, 'Accessing. In the early stages of its development cycle Azeroth suffered infection by parasitic, necrophotic symbiotes.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13771, 1, 0, 0, 'brann SAY_EVENT_END_05_ABED'),
(28070, -1599050, 'Necro-what? Speak bloody common will ya?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14266, 1, 0, 0, 'brann SAY_EVENT_END_06'),
(28070, -1599051, 'Designation: Old Gods. Old Gods rendered all systems, including Earthen defenseless in order to facilitate assimilation. This matrix destabilization has been termed the Curse of Flesh. Effects of destabilization increased over time.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13772, 1, 0, 0, 'brann SAY_EVENT_END_07_ABED'),
(28070, -1599052, 'Old Gods eh? So they zapped the Earthen with this Curse of Flesh. And then what?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14267, 1, 0, 0, 'brann SAY_EVENT_END_08'),
(28070, -1599053, 'Accessing. Creators arrived to extirpate symbiotic infection. Assessment revealed that Old God infestation had grown malignant. Excising parasites would result in loss of host.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13757, 1, 0, 0, 'brann SAY_EVENT_END_09_KADD'),
(28070, -1599054, 'If they killed the Old Gods Azeroth would have been destroyed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14268, 1, 0, 0, 'brann SAY_EVENT_END_10'),
(28070, -1599055, 'Correct. Creators neutralized parasitic threat and contained it within the host. Forge of Wills and other systems were instituted to create new Earthen. Safeguards were implemented and protectors were appointed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13758, 1, 0, 0, 'brann SAY_EVENT_END_11_KADD'),
(28070, -1599056, 'What protectors?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14269, 1, 0, 0, 'brann SAY_EVENT_END_12'),
(28070, -1599057, 'Designations: Aesir and Vanir or in common nomenclator Storm and Earth Giants. Sentinel Loken designated supreme. Dragon Aspects appointed to monitor evolution of Azeroth.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13759, 1, 0, 0, 'brann SAY_EVENT_END_13_KADD'),
(28070, -1599058, 'Aesir and Vanir. Okay. So the Forge of Wills started to make new Earthen. But what happened to the old ones?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14270, 1, 0, 0, 'brann SAY_EVENT_END_14'),
(28070, -1599059, 'Additional background is relevant to your query. Following global combat between-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13762, 1, 0, 0, 'brann SAY_EVENT_END_15_MARN'),
(28070, -1599060, 'Hold everything! The Aesir and Vanir went to war? Why?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14271, 1, 0, 0, 'brann SAY_EVENT_END_16'),
(28070, -1599061, 'Unknown. Data suggests that impetus for global combat originated with prime designate Loken who neutralized all remaining Aesir and Vanir affecting termination of conflict. Prime designate Loken then initiated stasis of several seed races including Earthen, Giant and Vrykul at designated holding facilities.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13763, 1, 0, 0, 'brann SAY_EVENT_END_17_MARN'),
(28070, -1599062, 'This Loken sounds like a nasty character. Glad we don''t have to worry about the likes of him anymore. So if I''m understanding you lads the original Earthen eventually woke up from this statis. And by that time this destabily-whatever had turned them into our brother dwarfs. Or at least dwarf ancestors. Hm?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14272, 1, 0, 0, 'brann SAY_EVENT_END_18'),
(28070, -1599063, 'Essentially that is correct.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13764, 1, 0, 0, 'brann SAY_EVENT_END_19_MARN'),
(28070, -1599045, 'Query? What do you think I''m here for? Tea and biscuits? Spill the beans already!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14263, 1, 0, 0, 'brann SAY_EVENT_END_01'),
(28070, -1599065, 'Acknowledged Branbronzan. Session terminated.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13773, 1, 0, 0, 'brann SAY_EVENT_END_21_ABED'),
(28070, -1599066, 'Loken?! That''s downright bothersome... We might''ve neutralized the iron dwarves, but I''d lay odds there''s another machine somewhere else churnin'' out a whole mess o'' these iron vrykul!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14278, 1, 0, 0, 'brann SAY_VICTORY_SJONNIR_1'),
(28070, -1599067, 'I''ll use the forge to make badtches o'' earthen to stand guard... But our greatest challenge still remains: find and stop Loken!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14279, 1, 0, 0, 'brann SAY_VICTORY_SJONNIR_2'),
(28070, -1599068, 'I think it''s time to see what''s behind the door near the entrance. I''m going to sneak over there, nice and quiet. Meet me at the door and I''ll get us in.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'brann SAY_ENTRANCE_MEET'),
(29305, -1604010, 'We fought back da Scourge. What chance joo be thinkin'' JOO got?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'SAY_AGGRO boss_moorabi'),
(29305, -1604012, 'Who gonna stop me; you? ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'SAY_SLAY_2 boss_moorabi'),
(29305, -1604013, 'Not so tough now.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'SAY_SLAY_3 boss_moorabi'),
(29305, -1604014, 'If our gods can die... den so can we... ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'SAY_DEATH boss_moorabi'),
(29305, -1604015, 'Get ready for somethin''... much... BIGGAH! ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'SAY_TRANSFORM boss_moorabi'),
(29305, -1604016, 'Da ground gonna swallow you up', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'SAY_QUAKE boss_moorabi'),
(29305, -1604017, '%s begins to transform!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'EMOTE_TRANSFORM boss_moorabi'),
(31134, -1608000, 'We finish this now, champions of Kirin Tor!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13947, 1, 0, 0, 'cyanigosa SAY_AGGRO'),
(30451, -1615000, 'I fear nothing! Least of all you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14111, 1, 0, 0, 'shadron SAY_SHADRON_AGGRO'),
(30451, -1615001, 'You are insignificant!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14112, 1, 0, 0, 'shadron SAY_SHADRON_SLAY_1'),
(30451, -1615002, 'Such mediocre resistance!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14113, 1, 0, 0, 'shadron SAY_SHADRON_SLAY_2'),
(30451, -1615003, 'We...are superior! How could this...be...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14118, 1, 0, 0, 'shadron SAY_SHADRON_DEATH'),
(30451, -1615004, 'You are easily bested! ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14114, 1, 0, 0, 'shadron SAY_SHADRON_BREATH'),
(30451, -1615005, 'I will take pity on you Sartharion, just this once.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14117, 1, 0, 0, 'shadron SAY_SHADRON_RESPOND'),
(30451, -1615006, 'Father tought me well!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14115, 1, 0, 0, 'shadron SAY_SHADRON_SPECIAL_1'),
(30451, -1615007, 'On your knees!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14116, 1, 0, 0, 'shadron SAY_SHADRON_SPECIAL_2'),
(28860, -1615008, 'A Shadron Disciple appears in the Twilight!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5, 0, 0, 'shadron WHISPER_SHADRON_DICIPLE'),
(30452, -1615009, 'You have no place here. Your place is among the departed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14122, 1, 0, 0, 'tenebron SAY_TENEBRON_AGGRO'),
(30452, -1615010, 'No contest.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14123, 1, 0, 0, 'tenebron SAY_TENEBRON_SLAY_1'),
(30452, -1615011, 'Typical... Just as I was having fun.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14124, 1, 0, 0, 'tenebron SAY_TENEBRON_SLAY_2'),
(30452, -1615012, 'I should not... have held back...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14129, 1, 0, 0, 'tenebron SAY_TENEBRON_DEATH'),
(30452, -1615013, 'To darkness I condemn you...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14125, 1, 0, 0, 'tenebron SAY_TENEBRON_BREATH'),
(30452, -1615014, 'It is amusing to watch you struggle. Very well, witness how it is done.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14128, 1, 0, 0, 'tenebron SAY_TENEBRON_RESPOND'),
(30452, -1615015, 'Arrogant little creatures! To challenge powers you do not yet understand...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14126, 1, 0, 0, 'tenebron SAY_TENEBRON_SPECIAL_1'),
(30452, -1615016, 'I am no mere dragon! You will find I am much, much, more...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14127, 1, 0, 0, 'tenebron SAY_TENEBRON_SPECIAL_2'),
(28860, -1615017, '%s begins to hatch eggs in the twilight!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5, 0, 0, 'tenebron WHISPER_HATCH_EGGS'),
(28860, -1615018, 'It is my charge to watch over these eggs. I will see you burn before any harm comes to them!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14093, 1, 0, 0, 'sartharion SAY_SARTHARION_AGGRO'),
(28860, -1615019, 'This pathetic siege ends NOW!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14103, 1, 0, 0, 'sartharion SAY_SARTHARION_BERSERK'),
(28860, -1615020, 'Burn, you miserable wretches!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14098, 1, 0, 0, 'sartharion SAY_SARTHARION_BREATH'),
(28860, -1615021, 'Shadron! Come to me, all is at risk!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14105, 1, 0, 0, 'sartharion SARTHARION_CALL_SHADRON'),
(28860, -1615022, 'Tenebron! The eggs are yours to protect as well!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14106, 1, 0, 0, 'sartharion SAY_SARTHARION_CALL_TENEBRON'),
(28860, -1615023, 'Vesperon! The clutch is in danger! Assist me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14104, 1, 0, 0, 'sartharion SAY_SARTHARION_CALL_VESPERON'),
(28860, -1615024, 'Such is the price... of failure...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14107, 1, 0, 0, 'sartharion SAY_SARTHARION_DEATH'),
(28860, -1615025, 'Such flammable little insects....', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14099, 1, 0, 0, 'sartharion SAY_SARTHARION_SPECIAL_1'),
(28860, -1615026, 'Your charred bones will litter the floor!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14100, 1, 0, 0, 'sartharion SAY_SARTHARION_SPECIAL_2'),
(28860, -1615027, 'How much heat can you take?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14101, 1, 0, 0, 'sartharion SAY_SARTHARION_SPECIAL_3'),
(28860, -1615028, 'All will be reduced to ash!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14102, 1, 0, 0, 'sartharion SAY_SARTHARION_SPECIAL_4'),
(28860, -1615029, 'You will make a fine meal for the hatchlings.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14094, 1, 0, 0, 'sartharion SAY_SARTHARION_SLAY_1'),
(28860, -1615030, 'You are the grave disadvantage.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14096, 1, 0, 0, 'sartharion SAY_SARTHARION_SLAY_2'),
(28860, -1615031, 'This is why we call you lesser beeings.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14097, 1, 0, 0, 'sartharion SAY_SARTHARION_SLAY_3'),
(28860, -1615032, 'The lava surrounding %s churns!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5, 0, 0, 'sartharion WHISPER_LAVA_CHURN'),
(30449, -1615033, 'You pose no threat, lesser beings...give me your worst!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14133, 1, 0, 0, 'vesperon SAY_VESPERON_AGGRO'),
(30449, -1615034, 'The least you could do is put up a fight...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14134, 1, 0, 0, 'vesperon SAY_VESPERON_SLAY_1'),
(30449, -1615035, 'Was that the best you can do?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14135, 1, 0, 0, 'vesperon SAY_VESPERON_SLAY_2'),
(30449, -1615036, 'I still have some...fight..in...me...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14140, 1, 0, 0, 'vesperon SAY_VESPERON_DEATH'),
(30449, -1615037, 'I will pick my teeth with your bones!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14136, 1, 0, 0, 'vesperon SAY_VESPERON_BREATH'),
(30449, -1615038, 'Father was right about you, Sartharion...You are a weakling!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14139, 1, 0, 0, 'vesperon SAY_VESPERON_RESPOND'),
(30449, -1615039, 'Aren''t you tricky...I have a few tricks of my own...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14137, 1, 0, 0, 'vesperon SAY_VESPERON_SPECIAL_1'),
(30449, -1615040, 'Unlike, I have many talents.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14138, 1, 0, 0, 'vesperon SAY_VESPERON_SPECIAL_2'),
(28860, -1615041, 'A Vesperon Disciple appears in the Twilight!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5, 0, 0, 'shadron WHISPER_VESPERON_DICIPLE'),
(28860, -1615042, '%s begins to open a Twilight Portal!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5, 0, 0, 'sartharion drake WHISPER_OPEN_PORTAL'),
(29308, -1619021, 'I will feast on your remains.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'prince taldaram SAY_AGGRO'),
(29308, -1619022, 'I will drink no blood before it''s time.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'prince taldaram SAY_SLAY_1'),
(29308, -1619023, 'One final embrace.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'prince taldaram SAY_SLAY_2'),
(29308, -1619024, 'Still I hunger, still I thirst.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'prince taldaram SAY_DEATH'),
(29308, -1619025, 'So appetizing.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'prince taldaram SAY_FEED1'),
(29308, -1619026, 'Fresh, warm blood. It has been too long.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'prince taldaram SAY_FEED2'),
(29308, -1619027, 'Your heartbeat is music to my ears.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'prince taldaram SAY_VANISH1'),
(29308, -1619028, 'I am nowhere. I am everywhere. I am the watcher, unseen.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'prince taldaram SAY_VANISH2'),
(0, -1999900, 'Let the games begin.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8280, 1, 0, 0, 'example_creature SAY_AGGRO'),
(0, -1999901, 'I see endless suffering. I see torment. I see rage. I see everything.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8831, 1, 0, 0, 'example_creature SAY_RANDOM_0'),
(0, -1999902, 'Muahahahaha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8818, 1, 0, 0, 'example_creature SAY_RANDOM_1'),
(0, -1999903, 'These mortal infedels my lord, they have invaded your sanctum and seek to steal your secrets.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8041, 1, 0, 0, 'example_creature SAY_RANDOM_2'),
(0, -1999904, 'You are already dead.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8581, 1, 0, 0, 'example_creature SAY_RANDOM_3'),
(0, -1999905, 'Where to go? What to do? So many choices that all end in pain, end in death.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8791, 1, 0, 0, 'example_creature SAY_RANDOM_4'),
(0, -1999906, '$N, I sentance you to death!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8588, 1, 0, 0, 'example_creature SAY_BESERK'),
(0, -1999907, 'The suffering has just begun!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'example_creature SAY_PHASE'),
(0, -1999908, 'I always thought I was a good dancer.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'example_creature SAY_DANCE'),
(0, -1999909, 'Move out Soldier!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'example_creature SAY_SALUTE'),
(0, -1999910, 'Help $N! I''m under attack!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'example_escort SAY_AGGRO1'),
(0, -1999911, 'Die scum!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'example_escort SAY_AGGRO2'),
(0, -1999912, 'Hmm a nice day for a walk alright', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'example_escort SAY_WP_1'),
(0, -1999913, 'Wild Felboar attack!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'example_escort SAY_WP_2'),
(0, -1999914, 'Time for me to go! See ya around $N!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 3, 'example_escort SAY_WP_3'),
(0, -1999915, 'Bye Bye!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 3, 'example_escort SAY_WP_4'),
(0, -1999916, 'How dare you leave me like that! I hate you! =*(', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'example_escort SAY_DEATH_1'),
(0, -1999917, '...no...how could you let me die $N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'example_escort SAY_DEATH_2'),
(0, -1999918, 'ugh...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'example_escort SAY_DEATH_3'),
(0, -1999919, 'Taste death!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'example_escort SAY_SPELL'),
(0, -1999920, 'Fireworks!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'example_escort SAY_RAND_1'),
(0, -1999921, 'Hmm, I think I could use a buff.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'example_escort SAY_RAND_2'),
(0, -1999922, 'Normal select, guess you''re not interested.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'example_gossip_codebox SAY_NOT_INTERESTED'),
(0, -1999923, 'Wrong!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'example_gossip_codebox SAY_WRONG'),
(0, -1999924, 'You''re right, you are allowed to see my inner secrets.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'example_gossip_codebox SAY_CORRECT'),
(0, -1999925, 'Hi!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'example_areatrigger SAY_HI'),
(29519, -1609000, 'You have made a grave error, fiend!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'unworthy_initiate SAY_EVENT_START_1'),
(29519, -1609001, 'I was a soldier of the Light once... Look at what I have become... ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'unworthy_initiate SAY_EVENT_START_2'),
(29519, -1609002, 'You are hopelessly outmatched, $R.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'unworthy_initiate SAY_EVENT_START_3'),
(29519, -1609003, 'They brand me unworthy? I will show them unmorthy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'unworthy_initiate SAY_EVENT_START_4'),
(29519, -1609004, 'You will allow me a weapon and armor, yes?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'unworthy_initiate SAY_EVENT_START_5'),
(29519, -1609005, 'I will win my freedom and leave this cursed place!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'unworthy_initiate SAY_EVENT_START_6'),
(29519, -1609006, 'I will dismantle this festering hellhole!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'unworthy_initiate SAY_EVENT_START_7'),
(29519, -1609007, 'There can be only one survivor!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'unworthy_initiate SAY_EVENT_START_8'),
(29519, -1609008, 'To battle!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'unworthy_initiate SAY_EVENT_ATTACK_1'),
(29519, -1609009, 'Let your fears consume you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'unworthy_initiate SAY_EVENT_ATTACK_2'),
(29519, -1609010, 'HAH! You can barely hold a blade! Yours will be a quick death.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'unworthy_initiate SAY_EVENT_ATTACK_3'),
(29519, -1609011, 'And now you die', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'unworthy_initiate SAY_EVENT_ATTACK_4'),
(29519, -1609012, 'To battle!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'unworthy_initiate SAY_EVENT_ATTACK_5'),
(29519, -1609013, 'There is no hope for our future...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'unworthy_initiate SAY_EVENT_ATTACK_6'),
(29519, -1609014, 'Sate your hunger on cold steel, $R', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'unworthy_initiate SAY_EVENT_ATTACK_7'),
(29519, -1609015, 'It ends here!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'unworthy_initiate SAY_EVENT_ATTACK_8'),
(29519, -1609016, 'Death is the only cure!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'unworthy_initiate SAY_EVENT_ATTACK_9'),
(29032, -1609025, 'Come to finish the job, have you?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'special_surprise SAY_EXEC_START_1'),
(29032, -1609026, 'Come to finish the job, have ye?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'special_surprise SAY_EXEC_START_2'),
(29032, -1609027, 'Come ta finish da job, mon?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'special_surprise SAY_EXEC_START_3'),
(29032, -1609028, 'You''ll look me in the eyes when...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 25, 'special_surprise SAY_EXEC_PROG_1'),
(29032, -1609029, 'Well this son o'' Ironforge would like...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 25, 'special_surprise SAY_EXEC_PROG_2'),
(29032, -1609030, 'Ironic, isn''t it? To be killed...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 25, 'special_surprise SAY_EXEC_PROG_3'),
(29032, -1609031, 'If you''d allow me just one...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 25, 'special_surprise SAY_EXEC_PROG_4'),
(29032, -1609032, 'I''d like to stand for...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 25, 'special_surprise SAY_EXEC_PROG_5'),
(29032, -1609033, 'I want to die like an orc...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 25, 'special_surprise SAY_EXEC_PROG_6'),
(29032, -1609034, 'Dis troll gonna stand for da...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 25, 'special_surprise SAY_EXEC_PROG_7'),
(29032, -1609035, '$N?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'special_surprise SAY_EXEC_NAME_1'),
(29032, -1609036, '$N? Mon?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'special_surprise SAY_EXEC_NAME_2'),
(29032, -1609037, '$N, I''d recognize that face anywhere... What... What have they done to you, $N?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'special_surprise SAY_EXEC_RECOG_1'),
(29032, -1609038, '$N, I''d recognize those face tentacles anywhere... What... What have they done to you, $N?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'special_surprise SAY_EXEC_RECOG_2'),
(29032, -1609039, '$N, I''d recognize that face anywhere... What... What have they done to ye, $Glad:lass;?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'special_surprise SAY_EXEC_RECOG_3'),
(29032, -1609040, '$N, I''d recognize that decay anywhere... What... What have they done to you, $N?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'special_surprise SAY_EXEC_RECOG_4'),
(29032, -1609041, '$N, I''d recognize those horns anywhere... What have they done to you, $N?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'special_surprise SAY_EXEC_RECOG_5'),
(29032, -1609042, '$N, I''d recognize dem tusks anywhere... What... What have dey done ta you, mon?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'special_surprise SAY_EXEC_RECOG_6'),
(29032, -1609043, 'You don''t remember me, do you? Blasted Scourge... They''ve tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a draenei!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'special_surprise SAY_EXEC_NOREM_1'),
(29032, -1609044, 'Ye don''t remember me, do ye? Blasted Scourge... They''ve tried to drain ye o'' everything that made ye a righteous force o'' reckoning. Every last ounce o'' good... Everything that made you a $Gson:daughter; of Ironforge!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'special_surprise SAY_EXEC_NOREM_2'),
(29032, -1609045, 'You don''t remember me, do you? We were humans once - long, long ago - until Lordaeron fell to the Scourge. Your transformation to a Scourge zombie came shortly after my own. Not long after that, our minds were freed by the Dark Lady.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'special_surprise SAY_EXEC_NOREM_3'),
(29032, -1609046, 'You don''t remember me, do you? Blasted Scourge... They''ve tried to drain you of everything that made you a pint-sized force of reckoning. Every last ounce of good... Everything that made you a gnome!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'special_surprise SAY_EXEC_NOREM_4');
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(29032, -1609047, 'You don''t remember me, do you? Blasted Scourge...They''ve tried to drain of everything that made you a righteous force of reckoning. Every last ounce of good...Everything that made you a human!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'special_surprise SAY_EXEC_NOREM_5'),
(29032, -1609048, 'You don''t remember me? When you were a child your mother would leave you in my care while she served at the Temple of the Moon. I held you in my arms and fed you with honey and sheep''s milk to calm you until she would return. You were my little angel. Blasted Scourge... What have they done to you, $N?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'special_surprise SAY_EXEC_NOREM_6'),
(29032, -1609049, 'You don''t recognize me, do you? Blasted Scourge... They''ve tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you an orc!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'special_surprise SAY_EXEC_NOREM_7'),
(29032, -1609050, 'You don''t remember me, do you? Blasted Scourge... They''ve tried to drain you of everything that made you a righteous force of reckoning. Every last ounce of good... Everything that made you a tauren!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'special_surprise SAY_EXEC_NOREM_8'),
(29032, -1609051, 'You don''t remember me, mon? Damn da Scourge! Dey gone ta drain you of everytin dat made ya a mojo masta. Every last ounce of good... Everytin'' dat made ya a troll hero, mon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'special_surprise SAY_EXEC_NOREM_9'),
(29032, -1609052, 'A pact was made, $Gbrother:sister;! We vowed vengeance against the Lich King! For what he had done to us! We battled the Scourge as Forsaken, pushing them back into the plaguelands and freeing Tirisfal! You and I were champions of the Forsaken!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'special_surprise SAY_EXEC_THINK_1'),
(29032, -1609053, 'You must remember the splendor of life, $Gbrother:sister;. You were a champion of the Kaldorei once! This isn''t you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'special_surprise SAY_EXEC_THINK_2'),
(29032, -1609054, 'Think, $N. Think back. Try and remember the majestic halls of Silvermoon City, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the sin''dorei once! This isn''t you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 6, 'special_surprise SAY_EXEC_THINK_3'),
(29032, -1609055, 'Think, $N. Think back. Try and remember the proud mountains of Argus, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the draenei once! This isn''t you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 6, 'special_surprise SAY_EXEC_THINK_4'),
(29032, -1609056, 'Think, $N. Think back. Try and remember the snow capped mountains o'' Dun Morogh! Ye were born there, $Glad:lass;. Remember the splendor o'' life, $N! Ye were a champion o'' the dwarves once! This isn''t ye!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 6, 'special_surprise SAY_EXEC_THINK_5'),
(29032, -1609057, 'Think, $N. Think back. Try and remember Gnomeregan before those damned troggs! Remember the feel of an [arclight spanner] $Gbrother:sister;. You were a champion of gnome-kind once! This isn''t you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 6, 'special_surprise SAY_EXEC_THINK_6'),
(29032, -1609058, 'Think, $N. Think back. Try and remember the hills and valleys of Elwynn, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the Alliance once! This isn''t you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 6, 'special_surprise SAY_EXEC_THINK_7'),
(29032, -1609059, 'Think, $N. Think back. Try and remember Durotar, $Gbrother:sister;! Remember the sacrifices our heroes made so that we could be free of the blood curse. Harken back to the Valley of Trials, where we were reborn into a world without demonic influence. We found the splendor of life, $N. Together! This isn''t you. You were a champion of the Horde once!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 6, 'special_surprise SAY_EXEC_THINK_8'),
(29032, -1609060, 'Think, $N. Think back. Try and remember the rolling plains of Mulgore, where you were born. Remember the splendor of life, $Gbrother:sister;. You were a champion of the tauren once! This isn''t you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 6, 'special_surprise SAY_EXEC_THINK_9'),
(29032, -1609061, 'TINK $N. Tink back, mon! We be Darkspear, mon! Bruddas and sistas! Remember when we fought the Zalazane and done took he head and freed da Echo Isles? MON! TINK! You was a champion of da Darkspear trolls!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 6, 'special_surprise SAY_EXEC_THINK_10'),
(29032, -1609062, 'Listen to me, $N. You must fight against the Lich King''s control. He is a monster that wants to see this world - our world - in ruin. Don''t let him use you to accomplish his goals. You were once a hero and you can be again. Fight, damn you! Fight his control!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 'special_surprise SAY_EXEC_LISTEN_1'),
(29032, -1609063, 'Listen to me, $N Ye must fight against the Lich King''s control. He''s a monster that wants to see this world - our world - in ruin. Don''t let him use ye to accomplish his goals. Ye were once a hero and ye can be again. Fight, damn ye! Fight his control!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 'special_surprise SAY_EXEC_LISTEN_2'),
(29032, -1609064, 'Listen to me, $N. You must fight against the Lich King''s control. He is a monster that wants to see this world - our world - in ruin. Don''t let him use you to accomplish his goals AGAIN. You were once a hero and you can be again. Fight, damn you! Fight his control!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 'special_surprise SAY_EXEC_LISTEN_3'),
(29032, -1609065, 'Listen ta me, $Gbrudda:sista;. You must fight against da Lich King''s control. He be a monstar dat want ta see dis world - our world - be ruined. Don''t let he use you ta accomplish he goals. You be a hero once and you be a hero again! Fight it, mon! Fight he control!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 'special_surprise SAY_EXEC_LISTEN_4'),
(29032, -1609066, 'What''s going on in there? What''s taking so long, $N?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'special_surprise SAY_PLAGUEFIST'),
(29032, -1609067, 'There... There''s no more time for me. I''m done for. Finish me off, $N. Do it or they''ll kill us both. $N... Remember Silvermoon. This world is worth saving!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 18, 'special_surprise SAY_EXEC_TIME_1'),
(29032, -1609068, 'There... There''s no more time for me. I''m done for. Finish me off, $N. Do it or they''ll kill us both. $N... Remember Argus. Don''t let that happen to this world.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 18, 'special_surprise SAY_EXEC_TIME_2'),
(29032, -1609069, 'There... There''s no more time for me. I''m done for. Finish me off, $N. Do it or they''ll kill us both $N... For KHAAAAAAAAZZZ MODAAAAAANNNNNN!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 18, 'special_surprise SAY_EXEC_TIME_3'),
(29032, -1609070, 'There... There''s no more time for me. I''m done for. Finish me off, $N. Do it or they''ll kill us both. $N... Remember Tirisfal! This world is worth saving!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 18, 'special_surprise SAY_EXEC_TIME_4'),
(29032, -1609071, 'There... There''s no more time for me. I''m done for. Finish me off, $N. Do it or they''ll kill us both. $N... Remember Gnomeregan! This world is worth saving.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 18, 'special_surprise SAY_EXEC_TIME_5'),
(29032, -1609072, 'There... There''s no more time for me. I''m done for. FInish me off, $N. Do it or they''ll kill us both. $N...Remember Elwynn. This world is worth saving.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 18, 'special_surprise SAY_EXEC_TIME_6'),
(29032, -1609073, 'There... There''s no more time for me. I''m done for. Finish me off, $N. Do it or they''ll kill us both. $N... Remember Teldrassil, our beloved home. This world is worth saving.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 18, 'special_surprise SAY_EXEC_TIME_7'),
(29032, -1609074, 'There... There''s no more time for me. I''m done for. Finish me off, $N. Do it or they''ll kill us both. $N... For the Horde! This world is worth saving.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 18, 'special_surprise SAY_EXEC_TIME_8'),
(29032, -1609075, 'There... There''s no more time for me. I''m done for. Finish me off, $N. Do it or they''ll kill us both. $N... Remember Mulgore. This world is worth saving.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 18, 'special_surprise SAY_EXEC_TIME_9'),
(29032, -1609076, 'Der... Der''s no more time for me. I be done for. Finish me off $N. Do it or they''ll kill us both. $N... Remember Sen''jin Village, mon! Dis world be worth saving!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 18, 'special_surprise SAY_EXEC_TIME_10'),
(29032, -1609077, 'Do it, $N! Put me out of my misery!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'special_surprise SAY_EXEC_WAITING'),
(29032, -1609078, '%s dies from his wounds.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'special_surprise EMOTE_DIES'),
(28406, -1609080, 'No potions!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'dk_initiate SAY_DUEL_A'),
(28406, -1609081, 'Remember this day, $n, for it is the day that you will be thoroughly owned.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'dk_initiate SAY_DUEL_B'),
(28406, -1609082, 'I''m going to tear your heart out, cupcake!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'dk_initiate SAY_DUEL_C'),
(28406, -1609083, 'Don''t make me laugh.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'dk_initiate SAY_DUEL_D'),
(28406, -1609084, 'Here come the tears...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'dk_initiate SAY_DUEL_E'),
(28406, -1609085, 'You have challenged death itself!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'dk_initiate SAY_DUEL_F'),
(28406, -1609086, 'The Lich King will see his true champion on this day!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'dk_initiate SAY_DUEL_G'),
(28406, -1609087, 'You''re going down!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'dk_initiate SAY_DUEL_H'),
(28406, -1609088, 'You don''t stand a chance, $n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'dk_initiate SAY_DUEL_I'),
(0, -1609089, 'I''ll need to get my runeblade and armor... Just need a little more time.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 399, 'koltira SAY_BREAKOUT1'),
(0, -1609090, 'I''m still weak, but I think I can get an anti-magic barrier up. Stay inside it or you''ll be destroyed by their spells.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'koltira SAY_BREAKOUT2'),
(0, -1609091, 'Maintaining this barrier will require all of my concentration. Kill them all!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 16, 'koltira SAY_BREAKOUT3'),
(0, -1609092, 'There are more coming. Defend yourself! Don''t fall out of the anti-magic field! They''ll tear you apart without its protection!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'koltira SAY_BREAKOUT4'),
(0, -1609093, 'I can''t keep barrier up much longer... Where is that coward?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'koltira SAY_BREAKOUT5'),
(0, -1609094, 'The High Inquisitor comes! Be ready, death knight! Do not let him draw you out of the protective bounds of my anti-magic field! Kill him and take his head!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'koltira SAY_BREAKOUT6'),
(0, -1609095, 'Stay in the anti-magic field! Make them come to you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'koltira SAY_BREAKOUT7'),
(0, -1609096, 'The death of the High Inquisitor of New Avalon will not go unnoticed. You need to get out of here at once! Go, before more of them show up. I''ll be fine on my own.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'koltira SAY_BREAKOUT8'),
(0, -1609097, 'I''ll draw their fire, you make your escape behind me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'koltira SAY_BREAKOUT9'),
(0, -1609098, 'Your High Inquisitor is nothing more than a pile of meat, Crusaders! There are none beyond the grasp of the Scourge!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'koltira SAY_BREAKOUT10'),
(28939, -1609501, 'I''ll tear the secrets from your soul! Tell me about the "Crimson Dawn" and your life may be spared!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'player SAY_PERSUADE1'),
(28939, -1609502, 'Tell me what you know about "Crimson Dawn" or the beatings will continue!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'player SAY_PERSUADE2'),
(28939, -1609503, 'I''m through being courteous with your kind, human! What is the "Crimson Dawn?"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'player SAY_PERSUADE3'),
(28939, -1609504, 'Is your life worth so little? Just tell me what I need to know about "Crimson Dawn" and I''ll end your suffering quickly.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'player SAY_PERSUADE4'),
(28939, -1609505, 'I can keep this up for a very long time, Scarlet dog! Tell me about the "Crimson Dawn!"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'player SAY_PERSUADE5'),
(28939, -1609506, 'What is the "Crimson Dawn?"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'player SAY_PERSUADE6'),
(28939, -1609507, '"Crimson Dawn!" What is it! Speak!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'player SAY_PERSUADE7'),
(28939, -1609508, 'You''ll be hanging in the gallows shortly, Scourge fiend!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'crusader SAY_CRUSADER1'),
(28939, -1609509, 'You''ll have to kill me, monster! I will tell you NOTHING!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'crusader SAY_CRUSADER2'),
(28939, -1609510, 'You hit like a girl. Honestly. Is that the best you can do?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'crusader SAY_CRUSADER3'),
(28939, -1609511, 'ARGH! You burned my last good tabard!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'crusader SAY_CRUSADER4'),
(28939, -1609512, 'Argh... The pain... The pain is almost as unbearable as the lashings I received in grammar school when I was but a child.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'crusader SAY_CRUSADER5'),
(28939, -1609513, 'I used to work for Grand Inquisitor Isillien! Your idea of pain is a normal mid-afternoon for me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'crusader SAY_CRUSADER6'),
(28939, -1609514, 'I''ll tell you everything! STOP! PLEASE!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 20, 'break crusader SAY_PERSUADED1'),
(28939, -1609515, 'We... We have only been told that the "Crimson Dawn" is an awakening. You see, the Light speaks to the High General. It is the Light...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 20, 'break crusader SAY_PERSUADED2'),
(28939, -1609516, 'The Light that guides us. The movement was set in motion before you came... We... We do as we are told. It is what must be done.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 20, 'break crusader SAY_PERSUADED3'),
(28939, -1609517, 'I know very little else... The High General chooses who may go and who must stay behind. There''s nothing else... You must believe me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 20, 'break crusader SAY_PERSUADED4'),
(28939, -1609518, 'LIES! The pain you are about to endure will be talked about for years to come!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'break crusader SAY_PERSUADED5'),
(28939, -1609519, 'NO! PLEASE! There is one more thing that I forgot to mention... A courier comes soon... From Hearthglen. It...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 20, 'break crusader SAY_PERSUADED6'),
(29076, -1609531, 'Hrm, what a strange tree. I must investigate.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Scarlet Courier SAY_TREE1'),
(29076, -1609532, 'What''s this!? This isn''t a tree at all! Guards! Guards!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Scarlet Courier SAY_TREE2'),
(28912, -1609561, 'I''ll need to get my runeblade and armor... Just need a little more time.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 399, 'Koltira Deathweaver SAY_BREAKOUT1'),
(28912, -1609562, 'I''m still weak, but I think I can get an anti-magic barrier up. Stay inside it or you''ll be destroyed by their spells.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Koltira Deathweaver SAY_BREAKOUT2'),
(28912, -1609563, 'Maintaining this barrier will require all of my concentration. Kill them all!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 16, 'Koltira Deathweaver SAY_BREAKOUT3'),
(28912, -1609564, 'There are more coming. Defend yourself! Don''t fall out of the anti-magic field! They''ll tear you apart without its protection!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Koltira Deathweaver SAY_BREAKOUT4'),
(28912, -1609565, 'I can''t keep barrier up much longer... Where is that coward?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Koltira Deathweaver SAY_BREAKOUT5'),
(28912, -1609566, 'The High Inquisitor comes! Be ready, death knight! Do not let him draw you out of the protective bounds of my anti-magic field! Kill him and take his head!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Koltira Deathweaver SAY_BREAKOUT6'),
(28912, -1609567, 'Stay in the anti-magic field! Make them come to you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Koltira Deathweaver SAY_BREAKOUT7'),
(28912, -1609568, 'The death of the High Inquisitor of New Avalon will not go unnoticed. You need to get out of here at once! Go, before more of them show up. I''ll be fine on my own.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Koltira Deathweaver SAY_BREAKOUT8'),
(28912, -1609569, 'I''ll draw their fire, you make your escape behind me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Koltira Deathweaver SAY_BREAKOUT9'),
(28912, -1609570, 'Your High Inquisitor is nothing more than a pile of meat, Crusaders! There are none beyond the grasp of the Scourge!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Koltira Deathweaver SAY_BREAKOUT10'),
(29001, -1609581, 'The Crusade will purge your kind from this world!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'High Inquisitor Valroth start'),
(29001, -1609582, 'It seems that I''ll need to deal with you myself. The High Inquisitor comes for you, Scourge!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'High Inquisitor Valroth aggro'),
(29001, -1609583, 'You have come seeking deliverance? I have come to deliver!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'High Inquisitor Valroth yell'),
(29001, -1609584, 'LIGHT PURGE YOU!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'High Inquisitor Valroth yell'),
(29001, -1609585, 'Coward!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'High Inquisitor Valroth yell'),
(29001, -1609586, 'High Inquisitor Valroth''s remains fall to the ground.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'High Inquisitor Valroth death'),
(29173, -1609201, 'Soldiers of the Scourge, stand ready! You will soon be able to unleash your fury upon the Argent Dawn!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14677, 1, 0, 0, 'Highlord Darion Mograine'),
(29173, -1609202, 'The sky weeps at the devastation of sister earth! Soon, tears of blood will rain down upon us!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14678, 1, 0, 0, 'Highlord Darion Mograine'),
(29173, -1609203, 'Death knights of Acherus, the death march begins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14681, 1, 0, 0, 'Highlord Darion Mograine'),
(29173, -1609204, 'Soldiers of the Scourge, death knights of Acherus, minions of the darkness: hear the call of the Highlord!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14679, 1, 0, 22, 'Highlord Darion Mograine'),
(29173, -1609205, 'RISE!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14680, 1, 0, 15, 'Highlord Darion Mograine'),
(29173, -1609206, 'The skies turn red with the blood of the fallen! The Lich King watches over us, minions! Onward! Leave only ashes and misery in your destructive wake!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14682, 1, 0, 25, 'Highlord Darion Mograine'),
(29173, -1609207, 'Scourge armies approach!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Korfax, Champion of the Light'),
(29173, -1609208, 'Stand fast, brothers and sisters! The Light will prevail!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14487, 1, 0, 0, 'Lord Maxwell Tyrosus'),
(29173, -1609209, 'Kneel before the Highlord!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14683, 0, 0, 0, 'Highlord Darion Mograine'),
(29173, -1609210, 'You stand no chance!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14684, 0, 0, 0, 'Highlord Darion Mograine'),
(29173, -1609211, 'The Scourge will destroy this place!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14685, 0, 0, 0, 'Highlord Darion Mograine'),
(29173, -1609212, 'Your life is forfeit.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14686, 0, 0, 0, 'Highlord Darion Mograine'),
(29173, -1609213, 'Life is meaningless without suffering.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14687, 0, 0, 0, 'Highlord Darion Mograine'),
(29173, -1609214, 'How much longer will your forces hold out?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14688, 0, 0, 0, 'Highlord Darion Mograine'),
(29173, -1609215, 'The Argent Dawn is finished!"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14689, 0, 0, 0, 'Highlord Darion Mograine'),
(29173, -1609216, 'Spare no one!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14690, 0, 0, 0, 'Highlord Darion Mograine'),
(29173, -1609217, 'What is this?! My... I cannot strike...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14691, 0, 0, 0, 'Highlord Darion Mograine'),
(29173, -1609218, 'Obey me, blade!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14692, 1, 0, 0, 'Highlord Darion Mograine'),
(29173, -1609219, 'You will do as I command! I am in control here!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14693, 0, 0, 0, 'Highlord Darion Mograine'),
(29173, -1609220, 'I can not... the blade fights me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14694, 0, 0, 0, 'Highlord Darion Mograine'),
(29173, -1609221, 'What is happening to me?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14695, 0, 0, 0, 'Highlord Darion Mograine'),
(29173, -1609222, 'Power...wanes...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14696, 0, 0, 0, 'Highlord Darion Mograine'),
(29173, -1609223, 'Ashbringer defies me...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14697, 0, 0, 0, 'Highlord Darion Mograine'),
(29173, -1609224, 'Minions, come to my aid!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14698, 0, 0, 0, 'Highlord Darion Mograine'),
(29173, -1609225, 'You cannot win, Darion!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14584, 1, 0, 0, 'Highlord Tirion Fordring'),
(29173, -1609226, 'Bring them before the chapel!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14585, 1, 0, 0, 'Highlord Tirion Fordring'),
(29173, -1609227, 'Stand down, death knights. We have lost... The Light... This place... No hope...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14699, 0, 0, 68, 'Highlord Darion Mograine'),
(29173, -1609228, 'Have you learned nothing, boy? You have become all that your father fought against! Like that coward, Arthas, you allowed yourself to be consumed by the darkness...the hate... Feeding upon the misery of those you tortured and killed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14586, 0, 0, 378, 'Highlord Tirion Fordring'),
(29173, -1609229, 'Your master knows what lies beneath the chapel. It is why he dares not show his face! He''s sent you and your death knights to meet their doom, Darion.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14587, 0, 0, 25, 'Highlord Tirion Fordring'),
(29173, -1609230, 'What you are feeling right now is the anguish of a thousand lost souls! Souls that you and your master brought here! The Light will tear you apart, Darion!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14588, 0, 0, 1, 'Highlord Tirion Fordring'),
(29173, -1609231, 'Save your breath, old man. It might be the last you ever draw.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14700, 0, 0, 25, 'Highlord Darion Mograine'),
(29173, -1609232, 'My son! My dear, beautiful boy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14493, 0, 0, 0, 'Highlord Alexandros Mograine'),
(29173, -1609233, 'Father!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14701, 0, 0, 5, 'Highlord Darion Mograine'),
(29173, -1609234, 'Argh...what...is...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14702, 0, 0, 68, 'Highlord Darion Mograine'),
(29173, -1609235, 'Father, you have returned!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14703, 0, 0, 0, 'Darion Mograine'),
(29173, -1609236, 'You have been gone a long time, father. I thought...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14704, 0, 0, 0, 'Darion Mograine'),
(29173, -1609237, 'Nothing could have kept me away from here, Darion. Not from my home and family.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14494, 0, 0, 1, 'Highlord Alexandros Mograine'),
(29173, -1609238, 'Father, I wish to join you in the war against the undead. I want to fight! I can sit idle no longer!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14705, 0, 0, 6, 'Darion Mograine'),
(29173, -1609239, 'Darion Mograine, you are barely of age to hold a sword, let alone battle the undead hordes of Lordaeron! I couldn''t bear losing you. Even the thought...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14495, 0, 0, 1, 'Highlord Alexandros Mograine'),
(29173, -1609240, 'If I die, father, I would rather it be on my feet, standing in defiance against the undead legions! If I die, father, I die with you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14706, 0, 0, 6, 'Darion Mograine'),
(29173, -1609241, 'My son, there will come a day when you will command the Ashbringer and, with it, mete justice across this land. I have no doubt that when that day finally comes, you will bring pride to our people and that Lordaeron will be a better place because of you. But, my son, that day is not today.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14496, 0, 0, 1, 'Highlord Alexandros Mograine'),
(29173, -1609242, 'Do not forget...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14497, 0, 0, 6, 'Highlord Alexandros Mograine'),
(29173, -1609243, 'Touching...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14803, 1, 0, 0, 'The Lich King'),
(29173, -1609244, 'You have''ve betrayed me! You betrayed us all you monster! Face the might of Mograine!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14707, 1, 0, 0, 'Highlord Darion Mograine'),
(29173, -1609245, 'He''s mine now...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14805, 0, 0, 0, 'The Lich King'),
(29173, -1609246, 'Pathetic...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14804, 0, 0, 0, 'The Lich King'),
(29173, -1609247, 'You''re a damned monster, Arthas!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14589, 0, 0, 25, 'Highlord Tirion Fordring'),
(29173, -1609248, 'You were right, Fordring. I did send them in to die. Their lives are meaningless, but yours...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14806, 0, 0, 1, 'The Lich King'),
(29173, -1609249, 'How simple it was to draw the great Tirion Fordring out of hiding. You''ve left yourself exposed, paladin. Nothing will save you...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14807, 0, 0, 1, 'The Lich King'),
(29173, -1609250, 'ATTACK!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14488, 1, 0, 0, 'Lord Maxwell Tyrosus'),
(29173, -1609251, 'APOCALYPSE!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14808, 1, 0, 0, 'The Lich King'),
(29173, -1609252, 'That day is not today...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14708, 0, 0, 0, 'Highlord Darion Mograine'),
(29173, -1609253, 'Tirion!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14709, 1, 0, 0, 'Highlord Darion Mograine'),
(29173, -1609254, 'ARTHAS!!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14591, 1, 0, 0, 'Highlord Tirion Fordring'),
(29173, -1609255, 'What is this?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14809, 1, 0, 0, 'The Lich King'),
(29173, -1609256, 'Your end.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14592, 1, 0, 0, 'Highlord Tirion Fordring'),
(29173, -1609257, 'Impossible...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14810, 1, 0, 0, 'The Lich King'),
(29173, -1609258, 'This... isn''t... over...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14811, 1, 0, 25, 'The Lich King'),
(29173, -1609259, 'When next we meet it won''t be on holy ground, paladin.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14812, 1, 0, 1, 'The Lich King'),
(29173, -1609260, 'Rise, Darion, and listen...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14593, 0, 0, 0, 'Highlord Tirion Fordring'),
(29173, -1609261, 'We have all been witness to a terrible tragedy. The blood of good men has been shed upon this soil! Honorable knights, slain defending their lives - our lives!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14594, 0, 0, 0, 'Highlord Tirion Fordring'),
(29173, -1609262, 'And while such things can never be forgotten, we must remain vigilant in our cause!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14595, 0, 0, 0, 'Highlord Tirion Fordring'),
(29173, -1609263, 'The Lich King must answer for what he has done and must not be allowed to cause further destruction to our world.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14596, 0, 0, 0, 'Highlord Tirion Fordring'),
(29173, -1609264, 'I make a promise to you now, brothers and sisters: The Lich King will be defeated! On this day, I call for a union.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14597, 0, 0, 0, 'Highlord Tirion Fordring'),
(29173, -1609265, 'The Argent Dawn and the Order of the Silver Hand will come together as one! We will succeed where so many before us have failed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14598, 0, 0, 0, 'Highlord Tirion Fordring'),
(29173, -1609266, 'We will take the fight to Arthas and tear down the walls of Icecrown!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14599, 0, 0, 15, 'Highlord Tirion Fordring'),
(29173, -1609267, 'The Argent Crusade comes for you, Arthas!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14600, 1, 0, 15, 'Highlord Tirion Fordring'),
(29173, -1609268, 'So too do the Knights of the Ebon Blade... While our kind has no place in your world, we will fight to bring an end to the Lich King. This I vow!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14710, 0, 0, 1, 'Highlord Darion Mograine'),
(29173, -1609269, 'Thousands of Scourge rise up at the Highlord''s command.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, ''),
(29173, -1609270, 'The army marches towards Light''s Hope Chapel.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, ''),
(29173, -1609271, 'After over a hundred Defenders of the Light fall, Highlord Tirion Fordring arrives.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, ''),
(29173, -1609272, '%s flee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Orbaz'),
(29173, -1609273, '%s kneels in defeat before Tirion Fordring.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Highlord Darion Mograine'),
(29173, -1609274, '%s arrives.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Highlord Alexandros Mograine'),
(29173, -1609275, '%s becomes a shade of his past, and walks up to his father.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Highlord Darion Mograine'),
(29173, -1609276, '%s hugs his father.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Darion Mograine'),
(29173, -1609277, '%s disappears, and the Lich King appears.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Alexandros'),
(29173, -1609278, '%s becomes himself again...and is now angry.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Highlord Darion Mograine'),
(29173, -1609279, '%s casts a spell on Tirion.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'The Lich King'),
(29173, -1609280, '%s gasps for air.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Highlord Tirion Fordring'),
(29173, -1609281, '%s casts a powerful spell, killing the Defenders and knocking back the others.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'The Lich King'),
(29173, -1609282, '%s throws the Corrupted Ashbringer to Tirion, who catches it. Tirion becomes awash with Light, and the Ashbringer is cleansed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Highlord Darion Mograine'),
(29173, -1609283, '%s collapses.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Highlord Darion Mograine'),
(29173, -1609284, '%s charges towards the Lich King, Ashbringer in hand and strikes the Lich King.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Highlord Tirion Fordring'),
(29173, -1609285, '%s disappears. Tirion walks over to where Darion lay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'The Lich King'),
(29173, -1609286, 'Light washes over the chapel ? the Light of Dawn is uncovered.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, ''),
(4832, -1048000, 'Just...Dust...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5803, 1, 0, 0, ''),
(4832, -1048001, 'Sleep...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5804, 1, 0, 0, ''),
(4832, -1048002, 'Who dares disturb my meditation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5805, 1, 0, 0, ''),
(30007, -1571035, 'The battle is about to begin! Am I reading this card right It... It''s the nefarious magnataur lord, STINKBEARD! Yes, folks, STINKBEARD! Chitchat dosen''t stand a chance!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13363, 1, 0, 0, ''),
(25504, -1750040, 'My father''s aura is quite strong,he cannot be far. Could you be a doll and fight off the monsters wandering throught the mist?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'npc_mootoo_the_younger'),
(25504, -1750041, 'Watch out for the monsters!Which way should we go first? Let''s try this way...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'npc_mootoo_the_younger'),
(25504, -1750042, 'What could this be?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'npc_mootoo_the_younger'),
(25504, -1750043, 'There''s no sign of it ending! Where could my father be?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'npc_mootoo_the_younger'),
(25504, -1750044, 'Father! You''re safe!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'npc_mootoo_the_younger'),
(25589, -1700003, 'I''ll make you a deal: If you get me out of here alive,you''ll get a reward larger than you can imagine!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'npc_bonker_togglevolt'),
(25589, -1700002, 'I AM NOT AN APPETIZER!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'npc_bonker_togglevolt'),
(25589, -1700001, 'Right then,no time to waste. Lets get outa here!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'npc_bonker_togglevolt'),
(349, -1000464, 'My wounds are grave. Forgive my slow pace but my injuries won''t allow me to walk any faster.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(349, -1000465, 'Ah,fresh air,at last! I need a moment to reset.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(349, -1000466, 'The Blackrock infestation is thick in these parts. I will do my best to keep the pace. Let''s go!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(349, -1000467, 'Marshal Marris,sir. Corporal Keeshan of the 12th Sabre Regiment returned from battle and reporting for duty!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(349, -1000468, 'Brave adventurer,thank you for rescuing me! I am sure Marshal Marris will reward your kind deed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(6729, -1048003, 'Aku''mai is dead! At last,I can leave this wretched place.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, ''),
(6729, -1048004, 'Speak with me to hear my tale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(4275, -1033009, 'Who dares interfere with the Sons of Arugal?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, ''),
(7998, -1090000, 'With your help,I can evaluate these tunnels.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(7998, -1090001, 'Let''s see if we can find out where these Troggs are coming from... and put a stop to the invasion!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(7998, -1090002, 'Such devastation... what horrible mess...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(7998, -1090003, 'It''s quiet here...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(7998, -1090004, '...too quiet.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(7998, -1090005, 'Look! Over there at the tunnel wall!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(7998, -1090006, 'Trogg incrusion! Defend me while i blast the hole closed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(7998, -1090007, 'The charges are set. Get back before they blow!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(7998, -1090008, 'Incoming blast in 10 seconds!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, ''),
(7998, -1090009, 'Incoming blast in 5 seconds. Clear the tunnel!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, ''),
(7998, -1090010, 'FIRE IN THE HOLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, ''),
(7998, -1090011, 'Well done! Without your help I would have never been able to thwart that wave of troggs.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(7998, -1090012, 'Did you hear something?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(7998, -1090013, 'I heard something over there.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(7998, -1090014, 'More troggs! Ward them off as I prepare the explosives!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(7998, -1090015, 'The final charge is set. Stand back!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, ''),
(7998, -1090016, 'The final charge is set. Stand back!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(7998, -1090017, 'Incoming blast in 10 seconds!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, ''),
(7998, -1090018, 'Incoming blast in 5 seconds. Clear the tunnel!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, ''),
(7998, -1090019, 'I don''t think one charge is going to cut it. Keep fending them off!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(7998, -1090020, 'FIRE IN THE HOLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, ''),
(7998, -1090021, 'Well done! Without your help I would have never been able to thwart that wave of troggs.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(7998, -1090022, 'Did you hear something?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(7998, -1090023, 'I heard something over there.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(7998, -1090024, 'More troggs! Ward them off as I prepare the explosives!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(7998, -1090025, 'The final charge is set. Stand back!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(7998, -1090026, '10 seconds to blast! Stand back!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, ''),
(7998, -1090027, '5 seconds until detonation!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, ''),
(7361, -1090028, 'We come from below! You can never stop us!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, ''),
(23861, -1000469, 'It is too late for us,living one. Take yourself and your friend away from here before you both are... claimed...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(23861, -1000470, 'Go away,whoever you are! Witch Hill is mine... mine!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(23861, -1000471, 'It was... terrible... the demon...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, ''),
(23864, -1000472, 'This land was mine long before your wretched kind set foot here.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, ''),
(23864, -1000473, 'All who venture here belong to me,including you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, ''),
(26631, -1600000, 'The chill that you feel is the herald of your doom!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13173, 1, 0, 0, 'novos SAY_AGGRO'),
(26631, -1600001, 'Such is the fate of all who oppose the Lich King.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13175, 1, 0, 0, 'novos SAY_KILL'),
(26631, -1600002, 'Your efforts... are in vain.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13174, 1, 0, 0, 'novos SAY_DEATH'),
(26631, -1600003, 'Bolster my defenses! Hurry, curse you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13176, 1, 0, 0, 'novos SAY_NECRO_ADD'),
(26631, -1600004, 'Surely you can see the futility of it all!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13177, 1, 0, 0, 'novos SAY_REUBBLE_1'),
(26631, -1600005, 'Just give up and die already!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13178, 1, 0, 0, 'novos SAY_REUBBLE_2'),
(26630, -1600006, 'More grunts, more glands, more FOOD!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13181, 1, 0, 0, 'trollgore SAY_AGGRO'),
(26630, -1600007, 'You have gone, me gonna eat you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13185, 1, 0, 0, 'trollgore SAY_KILL'),
(26630, -1600008, 'So hungry! Must feed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13182, 1, 0, 0, 'trollgore SAY_CONSUME'),
(26630, -1600009, 'Corpse go boom!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13184, 1, 0, 0, 'trollgore SAY_EXPLODE'),
(26630, -1600010, 'Aaaargh...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13183, 1, 0, 0, 'trollgore SAY_DEATH'),
(26632, -1600011, 'Tharon''ja sees all! The work of mortals shall not end the eternal dynasty!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13862, 1, 0, 0, 'tharon''ja SAY_AGGRO'),
(26632, -1600012, 'As Tharon''ja predicted.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13863, 1, 0, 0, 'tharon''ja SAY_KILL_1'),
(26632, -1600013, 'As it was written.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13864, 1, 0, 0, 'tharon''ja SAY_KILL_2'),
(26632, -1600014, 'Your flesh serves Tharon''ja now!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13865, 1, 0, 0, 'tharon''ja SAY_FLESH_1'),
(26632, -1600015, 'Tharon''ja has a use for your mortal shell!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13866, 1, 0, 0, 'tharon''ja SAY_FLESH_2'),
(26632, -1600016, 'No! A taste... all too brief!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13867, 1, 0, 0, 'tharon''ja SAY_SKELETON_1'),
(26632, -1600017, 'Tharon''ja will have more!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13868, 1, 0, 0, 'tharon''ja SAY_SKELETON_2'),
(26632, -1600018, 'I''m... impossible! Tharon''ja is eternal! Tharon''ja... is...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13869, 1, 0, 0, 'tharon''ja SAY_DEATH'),
(31134, -1608001, 'I will end the Kirin Tor!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13952, 1, 0, 0, 'cyanigosa SAY_SLAY_1'),
(31134, -1608002, 'Dalaran will fall!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13953, 1, 0, 0, 'cyanigosa SAY_SLAY_2'),
(31134, -1608003, 'So ends your defiance of the Spell-Weaver!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13954, 1, 0, 0, 'cyanigosa SAY_SLAY_3'),
(31134, -1608004, 'Perhaps... we have... underestimated... you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13955, 1, 0, 0, 'cyanigosa SAY_DEATH'),
(31134, -1608005, 'A valiant defense, but this city must be razed. I will fulfill Malygos''s wishes myself!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13946, 1, 0, 0, 'cyanigosa SAY_SPAWN'),
(31134, -1608006, 'Am I interrupting?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13951, 1, 0, 0, 'cyanigosa SAY_DISRUPTION'),
(31134, -1608007, 'Shiver and die!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13948, 1, 0, 0, 'cyanigosa SAY_BREATH_ATTACK'),
(31134, -1608008, 'The world has forgotten what true magic is! Let this be a reminder!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13949, 1, 0, 0, 'cyanigosa SAY_SPECIAL_ATTACK_1'),
(31134, -1608009, 'Who among you can withstand my power?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13950, 1, 0, 0, 'cyanigosa SAY_SPECIAL_ATTACK_2'),
(29315, -1608010, 'Not--caww--get in way of--rrak-rrak--flee!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14219, 1, 0, 0, 'erekem SAY_AGGRO'),
(29315, -1608011, 'Ya ya ya yaaaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14222, 1, 0, 0, 'erekem SAY_SLAY_1'),
(29315, -1608012, 'Preeciouuss life---Ra-aak---Wasted!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14223, 1, 0, 0, 'erekem SAY_SLAY_2'),
(29315, -1608013, 'Only the strong---Ra-aak---Survive!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14224, 1, 0, 0, 'erekem SAY_SLAY_3'),
(29315, -1608014, 'No--kaw, kaw--flee...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14225, 1, 0, 0, 'erekem SAY_DEATH'),
(29315, -1608015, 'Free to--mm--fly now. Ra-aak... Not find us--ekh-ekh! Escape!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14218, 1, 0, 0, 'erekem SAY_SPAWN'),
(29315, -1608016, 'My---raaak--favorite! Awk awk awk! Raa-kaa!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14220, 1, 0, 0, 'erekem SAY_ADD_KILLED'),
(29315, -1608017, 'Nasty little...A-ak, kaw! Kill! Yes, kill you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14221, 1, 0, 0, 'erekem SAY_BOTH_ADDS_KILLED'),
(29313, -1608018, 'Stand aside, mortals!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14230, 1, 0, 0, 'ichoron SAY_AGGRO'),
(29313, -1608019, 'I am a force of nature!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14234, 1, 0, 0, 'ichoron SAY_SLAY_1'),
(29313, -1608020, 'I shall pass!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14235, 1, 0, 0, 'ichoron SAY_SLAY_2'),
(29313, -1608021, 'You can not stop the tide!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14236, 1, 0, 0, 'ichoron SAY_SLAY_3'),
(29313, -1608022, 'I... recede.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14237, 1, 0, 0, 'ichoron SAY_DEATH'),
(29313, -1608023, 'I... am fury... unrestrained!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14229, 1, 0, 0, 'ichoron SAY_SPAWN'),
(29313, -1608024, 'I shall consume, decimate, devastate, and destroy! Yield now to the wrath of the pounding sea!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14231, 1, 0, 0, 'ichoron SAY_ENRAGE'),
(29313, -1608025, 'I will not be contained! Ngyah!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14233, 1, 0, 0, 'ichoron SAY_SHATTER'),
(29313, -1608026, 'Water can hold any form, take any shape... overcome any obstacle.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14232, 1, 0, 0, 'ichoron SAY_BUBBLE'),
(29266, -1608027, 'It seems my freedom must be bought with blood...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14498, 1, 0, 0, 'Xevozz SAY_AGGRO'),
(29266, -1608028, 'Nothing personal.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14504, 1, 0, 0, 'Xevozz SAY_SLAY_1'),
(29266, -1608029, 'Business concluded.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14505, 1, 0, 0, 'Xevozz SAY_SLAY_2'),
(29266, -1608030, 'Profit!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14506, 1, 0, 0, 'Xevozz SAY_SLAY_3'),
(29266, -1608031, 'This is an... unrecoverable... loss.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14507, 1, 0, 0, 'Xevozz SAY_DEATH'),
(29266, -1608032, 'Back in business! Now to execute an exit strategy.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14498, 1, 0, 0, 'Xevozz SAY_SPAWN'),
(29266, -1608033, 'It would seem that a renegotiation is in order.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14503, 1, 0, 0, 'Xevozz SAY_CHARGED'),
(29266, -1608034, 'The air teems with latent energy... quite the harvest!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14501, 1, 0, 0, 'Xevozz SAY_REPEAT_SUMMON_1');
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(29266, -1608035, 'Plentiful, exploitable resources... primed for acquisition!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14502, 1, 0, 0, 'Xevozz SAY_REPEAT_SUMMON_2'),
(29266, -1608036, 'Intriguing... a high quantity of arcane energy is near. Time for some prospecting...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14500, 1, 0, 0, 'Xevozz SAY_SUMMON_ENERGY'),
(29314, -1608037, 'Eradicate.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13996, 1, 0, 0, 'zuramat SAY_AGGRO'),
(29314, -1608038, 'More... energy.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13999, 1, 0, 0, 'zuramat SAY_SLAY_1'),
(29314, -1608039, 'Relinquish.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14000, 1, 0, 0, 'zuramat SAY_SLAY_2'),
(29314, -1608040, 'Fall... to shadow.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14001, 1, 0, 0, 'zuramat SAY_SLAY_3'),
(29314, -1608041, 'Disperse.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14002, 1, 0, 0, 'zuramat SAY_DEATH'),
(29314, -1608042, 'I am... renewed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13995, 1, 0, 0, 'zuramat SAY_SPAWN'),
(29314, -1608043, 'Know... my... pain.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13997, 1, 0, 0, 'zuramat SAY_SHIELD'),
(29314, -1608044, 'Gaze... into the void.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13998, 1, 0, 0, 'zuramat SAY_WHISPER'),
(30658, -1608045, 'Prison guards, we are leaving! These adventurers are taking over! Go go go', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'sinclari SAY_SINCLARI_1'),
(26588, -1800013, 'Thank you for helping me get back to the camp. Go tell Walter that I''m safe now!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '12027'),
(26588, -1800012, 'Are you ready, Mr. Floppy? Stay close to me and watch out for those wolves!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '12027'),
(26588, -1800011, 'The Ravenous Worg chomps down on Mr. Floppy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, '12027'),
(26588, -1800010, 'Mr. Floppy revives', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, '12027'),
(26588, -1800009, 'I think I see the camp! We''re almost home, Mr. Floppy! Let''s go!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '12027'),
(26588, -1800008, 'Mr. Floppy, you''re ok! Thank you so much for saving Mr. Floppy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '12027'),
(26588, -1800007, 'Don''t go toward the light, Mr. Floppy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '12027'),
(26588, -1800006, 'Let''s get out of here before more wolves find us!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '12027'),
(26588, -1800005, 'There''s a big meanie attacking Mr. Floppy! Help! ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '12027'),
(26588, -1800004, 'He''s gonna eat Mr. Floppy! You gotta help Mr. Floppy! You just gotta!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '12027'),
(26588, -1800003, 'Oh, no! Look, it''s another wolf, and it''s a biiiiiig one!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '12027'),
(26588, -1800002, 'He''s going for Mr. Floppy! ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '12027'),
(26588, -1800001, 'Um... I think one of those wolves is back...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '12027'),
(28090, -1571036, 'We''ll cleanse this place! Arthas beware!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'crusade recruit RECRUIT_SAY1'),
(28090, -1571037, 'Your''re right! We can do this!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'crusade recruit RECRUIT_SAY2'),
(28090, -1571038, 'Your''re right! What was I thinking? Bring on the Scourge!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'crusade recruit RECRUIT_SAY3'),
(32871, -1603001, 'Loss of life, unavoidable.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15387, 1, 0, 0, 'algalon SAY_SLAY_1'),
(32871, -1603002, 'I do what I must.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15388, 1, 0, 0, 'algalon SAY_SLAY_2'),
(32871, -1603003, 'See your world through my eyes: A universe so vast as to be immeasurable - incomprehensible even to your greatest minds.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15390, 1, 0, 0, 'algalon SAY_ENGADED_FOR_FIRTS_TIME'),
(32871, -1603004, 'Beware!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15391, 1, 0, 0, 'algalon SAY_PHASE_2'),
(32871, -1603005, 'The stars come to my aid.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15392, 1, 0, 0, 'algalon SAY_SUMMON_COLLAPSING_STAR'),
(32871, -1603006, 'I have seen worlds bathed in the Makers'' flames. Their denizens fading without so much as a whimper. Entire planetary systems born and raised in the time that it takes your mortal hearts to beat once. Yet all throughout, my own heart, devoid of emotion... of empathy. I... have... felt... NOTHING! A million, million lives wasted. Had they all held within them your tenacity? Had they all loved life as you do?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15393, 1, 0, 0, 'algalon SAY_DEATH_1'),
(32871, -1603007, 'Perhaps it is your imperfection that which grants you free will. That allows you to persevere against cosmically calculated odds. You prevailed where the Titans'' own perfect creations have failed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15401, 1, 0, 0, 'algalon SAY_DEATH_2'),
(32871, -1603008, 'I''ve rearranged the reply code. Your planet will be spared. I cannot be certain of my own calculations anymore.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15402, 1, 0, 0, 'algalon SAY_DEATH_3'),
(32871, -1603009, 'I lack the strength to transmit the signal. You must hurry. Find a place of power close to the skies.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15403, 1, 0, 0, 'algalon SAY_DEATH_4'),
(32871, -1603010, 'Do not worry about my fate $N. If the signal is not transmitted in time re-origination will proceed regardless. Save. Your. World.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15404, 1, 0, 0, 'algalon SAY_DEATH_5'),
(32871, -1603011, 'You are... out of time.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15394, 1, 0, 0, 'algalon SAY_BERSERK'),
(32871, -1603012, 'Witness the fury of cosmos!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15396, 1, 0, 0, 'algalon SAY_BIGBANG_1'),
(32871, -1603013, 'Behold the tools of creation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15397, 1, 0, 0, 'algalon SAY_BIGBANG_2'),
(32871, -1603014, 'Analysis complete. There is partial corruption in the planet''s life-support systems as well as complete corruption in most of the planet''s defense mechanisms.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15398, 1, 0, 0, 'algalon SAY_TIMER_1'),
(32871, -1603015, 'Begin uplink: Reply Code: ''Omega''. Planetary re-origination requested.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15399, 1, 0, 0, 'algalon SAY_TIMER_2'),
(32871, -1603016, 'Farewell, mortals. Your bravery is admirable, for such flawed creatures.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15400, 1, 0, 0, 'algalon SAY_TIMER_3'),
(32871, -1603017, 'Trans-location complete. Commencing planetary analysis of Azeroth.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15405, 1, 0, 0, 'algalon SAY_SUMMON_1'),
(32871, -1603018, 'Stand back, mortals. I am not here to fight you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15406, 1, 0, 0, 'algalon SAY_SUMMON_2'),
(32871, -1603019, 'It is in the universe''s best interest to re-originate this planet should my analysis find systemic corruption. Do not interfere.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15407, 1, 0, 0, 'algalon SAY_SUMMON_3'),
(32867, -1603020, 'You will not defeat the Assembly of Iron so easily, invaders!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15674, 1, 0, 0, 'steelbreaker SAY_AGGRO'),
(32867, -1603021, 'So fragile and weak!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15675, 1, 0, 0, 'steelbreaker SAY_SLAY_1'),
(32867, -1603022, 'Flesh... such a hindrance.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15676, 1, 0, 0, 'steelbreaker SAY_SLAY_2'),
(32867, -1603023, 'You seek the secrets of Ulduar? Then take them!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15677, 1, 0, 0, 'steelbreaker SAY_POWER'),
(32867, -1603024, 'My death only serves to hasten your demise.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15678, 1, 0, 0, 'steelbreaker SAY_DEATH_1'),
(32867, -1603025, 'Impossible!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15679, 1, 0, 0, 'steelbreaker SAY_DEATH_2'),
(32867, -1603026, 'This meeting of the Assembly of Iron is adjourned!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15680, 1, 0, 0, 'steelbreaker SAY_BERSERK'),
(32927, -1603030, 'Nothing short of total decimation will suffice.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15657, 1, 0, 0, 'Molgeim SAY_AGGRO'),
(32927, -1603031, 'The world suffers yet another insignificant loss.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15658, 1, 0, 0, 'Molgeim SAY_SLAY_1'),
(32927, -1603032, 'Death is the price of your arrogance.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15659, 1, 0, 0, 'Molgeim SAY_SLAY_2'),
(32927, -1603033, 'Decipher this!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15660, 1, 0, 0, 'Molgeim SAY_RUNE_DEATH'),
(32927, -1603034, 'Face the lightning surge!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15661, 1, 0, 0, 'Molgeim SAY_SUMMON'),
(32927, -1603035, 'The legacy of storms shall not be undone.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15662, 1, 0, 0, 'Molgeim SAY_DEATH_1'),
(32927, -1603036, 'What have you gained from my defeat? You are no less doomed, mortals!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15663, 1, 0, 0, 'Molgeim SAY_DEATH_2'),
(32927, -1603037, 'This meeting of the Assembly of Iron is adjourned!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15664, 1, 0, 0, 'Molgeim SAY_BERSERK'),
(32857, -1603040, 'Whether the world''s greatest gnats or the world''s greatest heroes, you''re still only mortal!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15684, 1, 0, 0, 'Brundir SAY_AGGRO'),
(32857, -1603041, 'A merciful kill!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15685, 1, 0, 0, 'Brundir SAY_SLAY_1'),
(32857, -1603042, 'HAH!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15686, 1, 0, 0, 'Brundir SAY_SLAY_2'),
(32857, -1603043, 'Stand still and stare into the light!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15687, 1, 0, 0, 'Brundir SAY_SPECIAL'),
(32857, -1603044, 'Let the storm clouds rise and rain down death from above!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15688, 1, 0, 0, 'Brundir SAY_FLIGHT'),
(32857, -1603045, 'The power of the storm lives on...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15689, 1, 0, 0, 'Brundir SAY_DEATH_1'),
(32857, -1603046, 'You rush headlong into the maw of madness!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15690, 1, 0, 0, 'Brundir SAY_DEATH_2'),
(32857, -1603047, 'This meeting of the Assembly of Iron is adjourned!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15691, 1, 0, 0, 'Brundir SAY_BERSERK'),
(33515, -1603050, 'Some things are better left alone!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15473, 1, 0, 0, 'Auriaya SAY_AGGRO'),
(33515, -1603051, 'The secret dies with you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15474, 1, 0, 0, 'Auriaya SAY_SLAY_1'),
(33515, -1603052, 'There is no escape!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15475, 1, 0, 0, 'Auriaya SAY_SLAY_2'),
(33515, -1603053, 'Auriaya screams in agony.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 0, 15476, 'Auriaya SAY_DEATH'),
(33515, -1603054, 'You waste my time!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15477, 1, 0, 0, 'Auriaya SAY_BERSERK'),
(33113, -1603060, 'Hostile entities detected. Threat assessment protocol active. Primary target engaged. Time minus thirty seconds to re-evaluation.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15506, 1, 0, 0, 'Flame Leviathan SAY_AGGRO'),
(33113, -1603061, 'Threat assessment routine modified. Current target threat level: zero. Acquiring new target.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15521, 1, 0, 0, 'Flame Leviathan SAY_SLAY'),
(33113, -1603062, 'Total systems failure. Defense protocols breached. Leviathan Unit shutting down.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15520, 1, 0, 0, 'Flame Leviathan SAY_DEATH'),
(33113, -1603063, 'Threat re-evaluated. Target assessment complete. Changing course.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15507, 1, 0, 0, 'Flame Leviathan SAY_TARGET_1'),
(33113, -1603064, 'Pursuit objective modified. Changing course.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15508, 1, 0, 0, 'Flame Leviathan SAY_TARGET_2'),
(33113, -1603065, 'Hostile entity stratagem predicted. Rerouting battle function. Changing course.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15509, 1, 0, 0, 'Flame Leviathan SAY_TARGET_3'),
(33113, -1603066, 'Orbital countermeasures enabled.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15510, 1, 0, 0, 'Flame Leviathan SAY_HARDMODE'),
(33113, -1603067, 'Alert! Static defense system failure. Orbital countermeasures disabled.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15511, 1, 0, 0, 'Flame Leviathan SAY_TOWER_NONE'),
(33113, -1603068, '''Hodir''s Fury'' online. Acquiring target.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15512, 1, 0, 0, 'Flame Leviathan SAY_TOWER_FROST'),
(33113, -1603069, '''Mimiron''s Inferno'' online. Acquiring target.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15513, 1, 0, 0, 'Flame Leviathan SAY_TOWER_FLAME'),
(33113, -1603070, '''Freya''s Ward'' online. Acquiring target.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15514, 1, 0, 0, 'Flame Leviathan SAY_TOWER_NATURE'),
(33113, -1603071, '''Thorim''s Hammer'' online. Acquiring target.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15515, 1, 0, 0, 'Flame Leviathan SAY_TOWER_STORM'),
(33113, -1603072, 'Unauthorized entity attempting circuit overload. Activating anti-personnel countermeasures.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15516, 1, 0, 0, 'Flame Leviathan SAY_PLAYER_RIDING'),
(33113, -1603073, 'System malfunction. Diverting power to support systems.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15517, 1, 0, 0, 'Flame Leviathan SAY_OVERLOAD_1'),
(33113, -1603074, 'Combat matrix overload. Powering do-o-o-own...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15518, 1, 0, 0, 'Flame Leviathan SAY_OVERLOAD_2'),
(33113, -1603075, 'System restart required. Deactivating weapon systems.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15519, 1, 0, 0, 'Flame Leviathan SAY_OVERLOAD_3'),
(32906, -1603180, 'The Conservatory must be protected!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15526, 1, 0, 0, 'Freya SAY_AGGRO'),
(32906, -1603181, 'Elders, grant me your strength!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15527, 1, 0, 0, 'Freya SAY_AGGRO_WITH_ELDER'),
(32906, -1603182, 'Forgive me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15529, 1, 0, 0, 'Freya SAY_SLAY_1'),
(32906, -1603183, 'From your death springs life anew!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15530, 1, 0, 0, 'Freya SAY_SLAY_2'),
(32906, -1603184, 'His hold on me dissipates. I can see clearly once more. Thank you, heroes.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15531, 1, 0, 0, 'Freya SAY_DEATH'),
(32906, -1603185, 'You have strayed too far, wasted too much time!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15532, 1, 0, 0, 'Freya SAY_BERSERK'),
(32906, -1603186, 'Eonar, your servant requires aid!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15528, 1, 0, 0, 'Freya SAY_SUMMON_CONSERVATOR'),
(32906, -1603187, 'Children, assist me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15533, 1, 0, 0, 'Freya SAY_SUMMON_TRIO'),
(32906, -1603188, 'The swarm of the elements shall overtake you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15534, 1, 0, 0, 'Freya SAY_SUMMON_LASHERS'),
(32906, -1603189, 'Eonar, your servant calls for your blessing!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15535, 1, 0, 0, 'Freya SAY_YS_HELP'),
(32915, -1603190, 'Matron, the Conservatory has been breached!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15483, 1, 0, 0, 'Elder Brightleaf SAY_AGGRO'),
(32915, -1603191, 'Fertilizer.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15485, 1, 0, 0, 'Elder Brightleaf SAY_SLAY_1'),
(32915, -1603192, 'Your corpse will nourish the soil!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15486, 1, 0, 0, 'Elder Brightleaf SAY_SLAY_2'),
(32915, -1603193, 'Matron, one has fallen!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15487, 1, 0, 0, 'Elder Brightleaf SAY_DEATH'),
(32913, -1603194, 'Mortals have no place here!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15493, 1, 0, 0, 'Elder Ironbranch SAY_AGGRO'),
(32913, -1603195, 'I return you whence you came!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15494, 1, 0, 0, 'Elder Ironbranch SAY_SLAY_1'),
(32913, -1603196, 'BEGONE!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15495, 1, 0, 0, 'Elder Ironbranch SAY_SLAY_2'),
(32913, -1603197, 'Freya! They come for you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15496, 1, 0, 0, 'Elder Ironbranch SAY_DEATH'),
(32914, -1603198, 'This place will serve as your graveyard.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15500, 1, 0, 0, 'Elder Stonebark SAY_AGGRO'),
(32914, -1603199, '<Angry roar>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15501, 1, 0, 0, 'Elder Stonebark SAY_SLAY_1'),
(32914, -1603200, 'Such a waste.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15502, 1, 0, 0, 'Elder Stonebark SAY_SLAY_2'),
(32914, -1603201, 'Matron, flee! They are ruthless....', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15503, 1, 0, 0, 'Elder Stonebark SAY_DEATH'),
(32845, -1603210, 'You will suffer for this trespass!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15552, 1, 0, 0, 'Hodir SAY_AGGRO'),
(32845, -1603211, 'Tragic. To come so far, only to fail.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15553, 1, 0, 0, 'Hodir SAY_SLAY_1'),
(32845, -1603212, 'Welcome to the endless winter.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15554, 1, 0, 0, 'Hodir SAY_SLAY_2'),
(32845, -1603213, 'Winds of the north consume you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15555, 1, 0, 0, 'Hodir SAY_FLASH_FREEZE'),
(32845, -1603214, 'Hodir roars furious.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15556, 6, 0, 0, 'Hodir SAY_STALACTITE'),
(32845, -1603215, 'I... I am released from his grasp... at last.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15557, 1, 0, 0, 'Hodir SAY_DEATH'),
(32845, -1603216, 'Enough! This ends now!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15558, 1, 0, 0, 'Hodir SAY_BERSERK'),
(32845, -1603217, 'The veil of winter will protect you, champions!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15559, 1, 0, 0, 'Hodir SAY_YS_HELP'),
(32845, -1603218, 'Hodir shatters the Rare Cache of Hodir!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 0, 0, 'Hodir SAY_HARD_MODE_MISSED'),
(33118, -1603220, 'Insolent whelps! Your blood will temper the weapons used to reclaim this world!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15564, 1, 0, 0, 'Ignis SAY_AGGRO'),
(33118, -1603221, 'More scraps for the scrapheap!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15569, 1, 0, 0, 'Ignis SAY_SLAY_1'),
(33118, -1603222, 'Your bones will serve as kindling!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15570, 1, 0, 0, 'Ignis SAY_SLAY_2'),
(33118, -1603223, 'I. Have. Failed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15572, 1, 0, 0, 'Ignis SAY_DEATH'),
(33118, -1603224, 'Arise, soldiers of the Iron Crucible! The Makers'' will be done!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15565, 1, 0, 0, 'Ignis SAY_SUMMON'),
(33118, -1603225, 'I will burn away your impurities!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15566, 1, 0, 0, 'Ignis SAY_SLAG_POT'),
(33118, -1603226, 'Let the inferno consume you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15567, 1, 0, 0, 'Ignis SAY_SCORCH_1'),
(33118, -1603227, 'BURN! Burn in the makers fire!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15568, 1, 0, 0, 'Ignis SAY_SCORCH_2'),
(33118, -1603228, 'Let it be finished!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15571, 1, 0, 0, 'Ignis SAY_BERSERK'),
(32930, -1603230, 'None shall pass!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15586, 1, 0, 0, 'Kologarn SAY_AGGRO'),
(32930, -1603231, 'KOL-THARISH!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15587, 1, 0, 0, 'Kologarn SAY_SLAY_1'),
(32930, -1603232, 'YOU FAIL!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15588, 1, 0, 0, 'Kologarn SAY_SLAY_2'),
(32930, -1603233, 'Just a scratch!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15589, 1, 0, 0, 'Kologarn SAY_LEFT_ARM_GONE'),
(32930, -1603234, 'Only a flesh wound!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15590, 1, 0, 0, 'Kologarn SAY_RIGHT_ARM_GONE'),
(32930, -1603235, 'OBLIVION!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15591, 1, 0, 0, 'Kologarn SAY_SHOCKWAVE'),
(32930, -1603236, 'I will squeeze the life from you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15592, 1, 0, 0, 'Kologarn SAY_GRAB_PLAYER'),
(32930, -1603237, 'Master, they come...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15593, 1, 0, 0, 'Kologarn SAY_DEATH'),
(32930, -1603238, 'I am invincible!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15594, 1, 0, 0, 'Kologarn SAY_BERSERK'),
(33350, -1603240, 'Oh, my! I wasn''t expecting company! The workshop is such a mess! How embarrassing!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15611, 1, 0, 0, 'Mimiron SAY_AGGRO'),
(33350, -1603241, 'Now why would you go and do something like that? Didn''t you see the sign that said ''DO NOT PUSH THIS BUTTON!''? How will we finish testing with the self-destruct mechanism active?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15629, 1, 0, 0, 'Mimiron SAY_HARDMODE_ON'),
(33350, -1603242, 'We haven''t much time, friends! You''re going to help me test out my latest and greatest creation. Now, before you change your minds, remember, that you kind of owe it to me after the mess you made with the XT-002.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15612, 1, 0, 0, 'Mimiron SAY_MKII_ACTIVATE'),
(33350, -1603243, 'MEDIC!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15613, 1, 0, 0, 'Mimiron SAY_MKII_SLAY_1'),
(33350, -1603244, 'I can fix that... or, maybe not! Sheesh, what a mess...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15614, 1, 0, 0, 'Mimiron SAY_MKII_SLAY_2'),
(33350, -1603245, 'WONDERFUL! Positively marvelous results! Hull integrity at 98.9 percent! Barely a dent! Moving right along.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15615, 1, 0, 0, 'Mimiron SAY_MKII_DEATH'),
(33350, -1603246, 'Behold the VX-001 Anti-personnel Assault Cannon! You might want to take cover.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15616, 1, 0, 0, 'Mimiron SAY_VX001_ACTIVATE'),
(33350, -1603247, 'Fascinating. I think they call that a "clean kill".', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15617, 1, 0, 0, 'Mimiron SAY_VX001_SLAY_1'),
(33350, -1603248, 'Note to self: Cannon highly effective against flesh.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15618, 1, 0, 0, 'Mimiron SAY_VX001_SLAY_2'),
(33350, -1603249, 'Thank you, friends! Your efforts have yielded some fantastic data! Now, where did I put-- oh, there it is!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15619, 1, 0, 0, 'Mimiron SAY_VX001_DEATH'),
(33350, -1603250, 'Isn''t it beautiful? I call it the magnificent aerial command unit!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15620, 1, 0, 0, 'Mimiron SAY_AERIAL_ACTIVATE'),
(33350, -1603251, 'Outplayed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15621, 1, 0, 0, 'Mimiron SAY_AERIAL_SLAY_1'),
(33350, -1603252, 'You can do better than that!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15622, 1, 0, 0, 'Mimiron SAY_AERIAL_SLAY_2'),
(33350, -1603253, 'Preliminary testing phase complete. Now comes the true test!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15623, 1, 0, 0, 'Mimiron SAY_AERIAL_DEATH'),
(33350, -1603254, 'Gaze upon its magnificence! Bask in its glorious, um, glory! I present you... V-07-TR-0N!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15624, 1, 0, 0, 'Mimiron SAY_V07TRON_ACTIVATE'),
(33350, -1603255, 'Prognosis: Negative!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15625, 1, 0, 0, 'Mimiron SAY_V07TRON_SLAY_1'),
(33350, -1603256, 'You''re not going to get up from that one, friend.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15626, 1, 0, 0, 'Mimiron SAY_V07TRON_SLAY_2'),
(33350, -1603257, 'It would appear that I''ve made a slight miscalculation. I allowed my mind to be corrupted by the fiend in the prison, overriding my primary directive. All systems seem to be functional now. Clear.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15627, 1, 0, 0, 'Mimiron SAY_V07TRON_DEATH'),
(33350, -1603258, 'Oh, my! It would seem that we are out of time, my friends!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15628, 1, 0, 0, 'Mimiron SAY_BERSERK'),
(33350, -1603259, 'Combat matrix enhanced. Behold wonderous rapidity!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15630, 1, 0, 0, 'Mimiron SAY_YS_HELP'),
(33210, -1603260, 'Welcome, champions! All of our attempts at grounding her have failed. We could use a hand in bring her down with these harpoon guns.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15647, 0, 0, 0, 'Exp. Commander SAY_INTRO'),
(33210, -1603261, 'Move! Quickly! She won''t remain grounded for long.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15648, 1, 0, 0, 'Exp. Commander SAY_GROUND'),
(33413, -1603270, 'Interlopers! You mortals who dare to interfere with my sport will pay... Wait--you...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15733, 1, 0, 0, 'Thorim SAY_AGGRO_1'),
(33413, -1603271, 'I remember you... In the mountains... But you... what is this? Where am--', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15734, 1, 0, 0, 'Thorim SAY_AGGRO_2'),
(33413, -1603272, 'Behold the power of the storms and despair!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15735, 1, 0, 0, 'Thorim SAY_SPECIAL_1'),
(33413, -1603273, 'Do not hold back! Destroy them!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15736, 1, 0, 0, 'Thorim SAY_SPECIAL_2'),
(33413, -1603274, 'Have you begun to regret your intrusion?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15737, 1, 0, 0, 'Thorim SAY_SPECIAL_3'),
(33413, -1603275, 'Impertinent whelps! You dare challenge me atop my pedestal! I will crush you myself!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15738, 1, 0, 0, 'Thorim SAY_JUMPDOWN'),
(33413, -1603276, 'Can''t you at least put up a fight!?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15739, 1, 0, 0, 'Thorim SAY_SLAY_1'),
(33413, -1603277, 'Pathetic!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15740, 1, 0, 0, 'Thorim SAY_SLAY_2'),
(33413, -1603278, 'My patience has reached its limit!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15741, 1, 0, 0, 'Thorim SAY_BERSERK'),
(33413, -1603279, 'Failures! Weaklings!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15742, 1, 0, 0, 'Thorim SAY_WIPE'),
(33413, -1603280, 'Stay your arms! I yield!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15743, 1, 0, 0, 'Thorim SAY_DEATH'),
(33413, -1603281, 'I feel as though I am awakening from a nightmare, but the shadows in this place yet linger.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15744, 1, 0, 0, 'Thorim SAY_END_NORMAL_1'),
(33413, -1603282, 'Sif... was Sif here? Impossible--she died by my brother''s hand. A dark nightmare indeed....', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15745, 1, 0, 0, 'Thorim SAY_END_NORMAL_2'),
(33413, -1603283, 'I need time to reflect.... I will aid your cause if you should require it. I owe you at least that much. Farewell.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15746, 1, 0, 0, 'Thorim SAY_END_NORMAL_3'),
(33413, -1603284, 'You! Fiend! You are not my beloved! Be gone!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15747, 1, 0, 0, 'Thorim SAY_END_HARD_1'),
(33413, -1603285, 'Behold the hand behind all the evil that has befallen Ulduar! Left my kingdom in ruins, corrupted my brother and slain my wife!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15748, 1, 0, 0, 'Thorim SAY_END_HARD_2'),
(33413, -1603286, 'And now it falls to you, champions, to avenge us all! The task before you is great, but I will lend you my aid as I am able. You must prevail!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15749, 1, 0, 0, 'Thorim SAY_END_HARD_3'),
(33413, -1603287, 'Golganneth, lend me your strengh! Grant my mortal allies the power of thunder!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15750, 1, 0, 0, 'Thorim SAY_YS_HELP'),
(33271, -1603290, 'Your destruction will herald a new age of suffering!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15542, 1, 0, 0, 'Vezax SAY_AGGRO'),
(33271, -1603291, 'You thought to stand before the legions of death... and survive?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15543, 1, 0, 0, 'Vezax SAY_SLAY_1'),
(33271, -1603292, 'Defiance... a flaw of mortality.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15544, 1, 0, 0, 'Vezax SAY_SLAY_2'),
(33271, -1603293, 'The black blood of Yogg-Saron courses through me! I. AM. UNSTOPPABLE!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15545, 1, 0, 0, 'Vezax SAY_SURGE_DARKNESS'),
(33271, -1603294, 'Oh, what horrors await....', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15546, 1, 0, 0, 'Vezax SAY_DEATH'),
(33271, -1603295, 'Your defeat was inevitable!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15547, 1, 0, 0, 'Vezax SAY_BERSERK'),
(33271, -1603296, 'Behold, now! Terror, absolute!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15548, 1, 0, 0, 'Vezax SAY_HARDMODE_ON'),
(33293, -1603300, 'New toys? For me? I promise I won''t break them this time!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15724, 1, 0, 0, 'XT002 SAY_AGGRO'),
(33293, -1603301, 'So tired. I will rest for just a moment!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15725, 1, 0, 0, 'XT002 SAY_HEART_OPENED'),
(33293, -1603302, 'I''m ready to play!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15726, 1, 0, 0, 'XT002 SAY_HEART_CLOSED'),
(33293, -1603303, 'NO! NO! NO! NO! NO!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15727, 1, 0, 0, 'XT002 SAY_TYMPANIC_TANTRUM'),
(33293, -1603304, 'I... I think I broke it.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15728, 1, 0, 0, 'XT002 SAY_SLAY_1'),
(33293, -1603305, 'I guess it doesn''t bend that way.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15729, 1, 0, 0, 'XT002 SAY_SLAY_2'),
(33293, -1603306, 'I''m tired of these toys. I don''t want to play anymore!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15730, 1, 0, 0, 'XT002 SAY_BERSERK'),
(33293, -1603307, 'You are bad... Toys... Very... Baaaaad!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15731, 1, 0, 0, 'XT002 SAY_DEATH'),
(33293, -1603308, 'Time for a new game! My old toys will fight my new toys!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15732, 1, 0, 0, 'XT002 SAY_SUMMON'),
(33134, -1603310, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15771, 1, 0, 0, 'Sara SAY_PREFIGHT_1'),
(33134, -1603311, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15772, 1, 0, 0, 'Sara SAY_PREFIGHT_2'),
(33134, -1603312, 'The time to strike at the head of the beast will soon be upon us! Focus your anger and hatred on his minions!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15775, 1, 0, 0, 'Sara SAY_AGGRO_1'),
(33134, -1603313, 'Yes! YES! Show them no mercy! Give no pause to your attacks!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15773, 1, 0, 0, 'Sara SAY_AGGRO_2'),
(33134, -1603314, 'Let hatred and rage guide your blows!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15774, 1, 0, 0, 'Sara SAY_AGGRO_3'),
(33134, -1603315, 'Powerless to act...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15778, 1, 0, 0, 'Sara SAY_SLAY_1'),
(33134, -1603316, 'Could they have been saved?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15779, 1, 0, 0, 'Sara SAY_SLAY_2'),
(33134, -1603317, 'Weak-minded fools!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15780, 5, 0, 0, 'Sara WHISP_INSANITY'),
(33134, -1603318, 'Suffocate upon your own hate!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15776, 1, 0, 0, 'Sara SAY_PHASE2_1'),
(33134, -1603319, 'Tremble, mortals, before the coming of the end!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15777, 1, 0, 0, 'Sara SAY_PHASE2_2'),
(33288, -1603330, 'I am the lucid dream.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15754, 1, 0, 0, 'YoggSaron SAY_PHASE2_1'),
(33288, -1603331, 'The monster in your nightmares.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'YoggSaron SAY_PHASE2_2'),
(33288, -1603332, 'The fiend of a thousand faces.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'YoggSaron SAY_PHASE2_3'),
(33288, -1603333, 'Cower before my true form.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'YoggSaron SAY_PHASE2_4'),
(33288, -1603334, 'BOW DOWN BEFORE THE GOD OF DEATH!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'YoggSaron SAY_PHASE2_5'),
(33288, -1603335, 'Look upon the true face of death and know that your end comes soon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15755, 1, 0, 0, 'YoggSaron SAY_PHASE3'),
(33288, -1603336, 'MADNESS WILL CONSUME YOU!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15756, 1, 0, 0, 'YoggSaron SAY_VISION'),
(33288, -1603337, 'Hoohehehahahaha... AHAHAHAHAHAHA!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15757, 1, 0, 0, 'YoggSaron SAY_SLAY_1'),
(33288, -1603338, 'Eternal suffering awaits!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15758, 1, 0, 0, 'YoggSaron SAY_SLAY_2'),
(33288, -1603339, 'Your will is no longer you own...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15759, 5, 0, 0, 'YoggSaron WHISP_INSANITY_1'),
(33288, -1603340, 'Destroy them minion, your master commands it!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15760, 5, 0, 0, 'YoggSaron WHISP_INSANITY_2'),
(33288, -1603341, 'Your fate is sealed. The end of days is finally upon you and ALL who inhabit this miserable little seedling. Uulwi ifis halahs gag erh''ongg w''ssh.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15761, 1, 0, 0, 'YoggSaron SAY_DEATH'),
(26532, -1595000, 'Prince Arthas Menethil, on this day, a powerful darkness has taken hold of your soul. The death you are destined to visit upon others will this day be your own.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13408, 1, 0, 0, 'epoch SAY_INTRO | culling SAY_PHASE314'),
(26532, -1595001, 'We''ll see about that, young prince.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13409, 1, 0, 0, 'epoch SAY_AGGRO'),
(26532, -1595002, 'Tick tock, tick tock...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13410, 1, 0, 0, 'epoch SAY_TIME_WARP_1'),
(26532, -1595003, 'Not quick enough!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13411, 1, 0, 0, 'epoch SAY_TIME_WARP_2'),
(26532, -1595004, 'Let''s get this over with. ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13412, 1, 0, 0, 'epoch SAY_TIME_WARP_3'),
(26532, -1595005, 'There is no future for you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13413, 1, 0, 0, 'epoch SAY_SLAY_1'),
(26532, -1595006, 'This is the hour of our greatest triumph!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13414, 1, 0, 0, 'epoch SAY_SLAY_2'),
(26532, -1595007, 'You were destined to fail.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13415, 1, 0, 0, 'epoch SAY_SLAY_3'),
(26532, -1595008, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13416, 0, 0, 0, 'epoch SAY_DEATH'),
(26533, -1595009, 'Yes, this is the beginning. I''ve been waiting for you, young prince. I am Mal''Ganis.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14410, 0, 0, 1, 'mal_ganis SAY_INTRO_1 | culling SAY_PHASE206'),
(26533, -1595010, 'As you can see, your people are now mine. I will now turn this city household by household, until the flame of life has been snuffed out... forever.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14411, 0, 0, 1, 'mal_ganis SAY_INTRO_2 | culling SAY_PHASE207'),
(26533, -1595011, 'This will be a fine test...Prince Arthas...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14413, 1, 0, 0, 'mal_ganis SAY_AGGRO'),
(26533, -1595012, 'All too easy...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14416, 1, 0, 0, 'mal_ganis SAY_KILL_1'),
(26533, -1595013, 'The dark lord is displeased with your interference...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14417, 1, 0, 0, 'mal_ganis SAY_KILL_2'),
(26533, -1595014, 'It is Prince Arthas I want... not you...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14418, 1, 0, 0, 'mal_ganis SAY_KILL_3'),
(26533, -1595015, 'Anak''Keri...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14422, 1, 0, 0, 'mal_ganis SAY_SLAY_1'),
(26533, -1595016, 'My onslaught will wash over the Lich King''s forces...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14423, 1, 0, 0, 'mal_ganis SAY_SLAY_2'),
(26533, -1595017, 'Your death is in vain, tiny mortal...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14424, 1, 0, 0, 'mal_ganis SAY_SLAY_3'),
(26533, -1595018, 'Your time has come to an end!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14425, 1, 0, 0, 'mal_ganis SAY_SLAY_4'),
(26533, -1595019, 'Time out...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14414, 1, 0, 0, 'mal_ganis SAY_SLEEP_1'),
(26533, -1595020, 'You seem...tired...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14415, 1, 0, 0, 'mal_ganis SAY_SLEEP_2'),
(26533, -1595021, 'I spent too much time in that weak little shell...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14426, 1, 0, 0, 'mal_ganis SAY_30HEALTH'),
(26533, -1595022, '(Eredun) I AM MAL''GANIS! I AM ETERNAL!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14427, 1, 0, 0, 'mal_ganis SAY_15HEALTH'),
(26533, -1595023, 'ENOUGH! I waste my time here...I must gather my strength on the home world...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14428, 1, 0, 0, 'mal_ganis SAY_ESCAPE_SPEECH_1'),
(26533, -1595024, 'You''ll never defeat the Lich King without my forces! I''ll have my revenge...on him, AND you...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14429, 1, 0, 0, 'mal_ganis SAY_ESCAPE_SPEECH_2'),
(26533, -1595025, 'Your journey has just begun, young prince. Gather your forces and meet me in the artic land of Northrend. It is there that we shall settle the score between us. It is there that your true destiny will unfold.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14412, 1, 0, 1, 'mal_ganis SAY_OUTRO'),
(26529, -1595026, 'Play time!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13428, 1, 0, 0, 'meathook SAY_AGGRO'),
(26529, -1595027, 'Boring...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13430, 1, 0, 0, 'meathook SAY_SLAY_1'),
(26529, -1595028, 'Why you stop moving?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13431, 1, 0, 0, 'meathook SAY_SLAY_2'),
(26529, -1595029, 'Get up! Me not done!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13432, 1, 0, 0, 'meathook SAY_SLAY_3'),
(26529, -1595030, 'New toys!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13429, 1, 0, 0, 'meathook SAY_SPAWN'),
(26529, -1595031, 'This... not fun...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13433, 1, 0, 0, 'meathook SAY_DEATH'),
(26530, -1595032, 'Ah, the entertainment has arrived!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13472, 1, 0, 0, 'salramm SAY_AGGRO'),
(26530, -1595033, 'You are too late, champion of Lordaeron. The dead shall have their day.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13471, 1, 0, 0, 'salramm SAY_SPAWN'),
(26530, -1595034, 'The fun is just beginning!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13473, 1, 0, 0, 'salramm SAY_SLAY_1'),
(26530, -1595035, 'Aah, quality materials!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13474, 1, 0, 0, 'salramm SAY_SLAY_2'),
(26530, -1595036, 'Don''t worry, I''ll make good use of you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13475, 1, 0, 0, 'salramm SAY_SLAY_3'),
(26530, -1595037, 'You only advance... the master''s plan...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13483, 1, 0, 0, 'salramm SAY_DEATH'),
(26530, -1595038, 'BOOM! Hahahahah...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13478, 1, 0, 0, 'salramm SAY_EXPLODE_GHOUL_1'),
(26530, -1595039, 'Blood... destruction... EXHILARATING!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13479, 1, 0, 0, 'salramm SAY_EXPLODE_GHOUL_2'),
(26530, -1595040, 'I want a sample...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13480, 1, 0, 0, 'salramm SAY_STEAL_FLESH_1'),
(26530, -1595041, 'Such strength... it must be mine!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13481, 1, 0, 0, 'salramm SAY_STEAL_FLESH_2'),
(26530, -1595042, 'Your flesh betrays you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13482, 1, 0, 0, 'salramm SAY_STEAL_FLESH_3'),
(26530, -1595043, 'Say hello to some friends of mine.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13476, 1, 0, 0, 'salramm SAY_SUMMON_GHOULS_1'),
(26530, -1595044, 'Come, citizen of Stratholme! Meet your saviors.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13477, 1, 0, 0, 'salramm SAY_SUMMON_GHOULS_2'),
(32273, -1595045, 'How dare you interfere with our work here!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'infinite SAY_AGGRO'),
(32273, -1595046, 'My work here is finished!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'infinite SAY_FAIL'),
(32273, -1595047, 'My time... has run out...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'infinite SAY_DEATH'),
(26499, -1595070, 'Glad you could make it, Uther.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12828, 0, 0, 1, 'culling SAY_PHASE101'),
(26528, -1595071, 'Watch your tone with me, boy. You may be the prince, but I''m still your superior as a paladin!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12839, 0, 0, 25, 'culling SAY_PHASE102'),
(26499, -1595072, 'As if I could forget. Listen, Uther, there''s something about the plague you should know... ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12829, 0, 0, 0, 'culling SAY_PHASE103'),
(26499, -1595073, 'Oh, no. We''re too late. These people have all been infected! They may look fine now, but it''s just a matter of time before they turn into the undead!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12830, 0, 0, 1, 'culling SAY_PHASE104'),
(26528, -1595074, 'What?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12840, 0, 0, 5, 'culling SAY_PHASE105'),
(26499, -1595075, 'This entire city must be purged.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12831, 0, 0, 1, 'culling SAY_PHASE106'),
(26528, -1595076, 'How can you even consider that? There''s got to be some other way.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12841, 0, 0, 1, 'culling SAY_PHASE107'),
(26499, -1595077, 'Damn it, Uther! As your future king, I order you to purge this city!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12832, 1, 0, 5, 'culling SAY_PHASE108'),
(26528, -1595078, 'You are not my king yet, boy! Nor would I obey that command even if you were!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12842, 1, 0, 22, 'culling SAY_PHASE109'),
(26499, -1595079, 'Then I must consider this an act of treason.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12833, 0, 0, 0, 'culling SAY_PHASE110'),
(26528, -1595080, 'Treason? Have you lost your mind, Arthas?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12843, 0, 0, 5, 'culling SAY_PHASE111'),
(26499, -1595081, 'Have I? Lord Uther, by my right of succession and the sovereignty of my crown, I hereby relieve you of your command and suspend your paladins from service.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12834, 0, 0, 1, 'culling SAY_PHASE112'),
(26497, -1595082, 'Arthas! You can''t just--', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12837, 0, 0, 1, 'culling SAY_PHASE113'),
(26499, -1595083, 'It''s done! Those of you who have the will to save this land, follow me! The rest of you... get out of my sight!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12835, 0, 0, 0, 'culling SAY_PHASE114'),
(26528, -1595084, 'You''ve just crossed a terrible threshold, Arthas.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12844, 0, 0, 25, 'culling SAY_PHASE115'),
(26499, -1595085, 'Jaina?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12836, 0, 0, 1, 'culling SAY_PHASE116'),
(26497, -1595086, 'I''m sorry, Arthas. I can''t watch you do this.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12838, 0, 0, 1, 'culling SAY_PHASE117'),
(26499, -1595087, 'Take position here, and I will lead a small force inside Stratholme to begin the culling. We must contain and purge the infected for the sake of all Lordaeron!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14327, 0, 0, 1, 'culling SAY_PHASE118'),
(26499, -1595088, 'Everyone looks ready. Remember, these people are all infected with the plague and will die soon. We must purge Stratholme to protect the remainder of Lordaeron from the Scourge. Let''s go.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14293, 0, 0, 1, 'culling SAY_PHASE201'),
(0, -1595089, 'Prince Arthas, may the light be praised! Many people in the town have begun to fall seriously ill, can you help us?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'culling SAY_PHASE202'),
(26499, -1595090, 'I can only help you with a clean death.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14294, 0, 0, 0, 'culling SAY_PHASE203'),
(0, -1595091, 'What? This can''t be!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'culling SAY_PHASE204'),
(26499, -1595092, 'That was just the beginning.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14295, 0, 0, 1, 'culling SAY_PHASE205'),
(26499, -1595093, 'I won''t allow it, Mal''Ganis! Better that these people die by my hand than serve as your slaves in death!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14296, 0, 0, 5, 'culling SAY_PHASE208'),
(26499, -1595094, 'Mal''ganis will send out some of his Scourge minions to interfere with us. Those of you with the strongest steel and magic shall go forth and destroy them. I will lead the rest of my forces in purging Stratholme of the infected.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14885, 0, 0, 1, 'culling SAY_PHASE209'),
(26499, -1595095, 'Champions, meet me at town hall at once! We must take the fight to Mal''Ganis.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14297, 0, 0, 1, 'culling SAY_PHASE210'),
(26499, -1595096, 'Follow me. I know the way trought.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14298, 0, 0, 1, 'culling SAY_PHASE301'),
(0, -1595097, 'Ah, you''ve finally arrived Prince Arthas. You''re just in the nick of time.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'culling SAY_PHASE302'),
(26499, -1595098, 'Yes, I''m glad i could get you before the plague.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14299, 0, 0, 1, 'culling SAY_PHASE303'),
(26499, -1595099, 'What is this sorcery?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14300, 0, 0, 0, 'culling SAY_PHASE304'),
(0, -1595100, 'There''s no need for you to understand, Arthas. All you need to do is die!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'culling SAY_PHASE305'),
(26499, -1595101, 'Mal''Ganis appears to have more than scourge in his arsenal. We should make haste.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14301, 0, 0, 0, 'culling SAY_PHASE306'),
(26499, -1595102, 'More vile sorcery! Be ready for anything.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14302, 0, 0, 0, 'culling SAY_PHASE307'),
(26499, -1595103, 'Let''s move on.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14303, 0, 0, 0, 'culling SAY_PHASE308'),
(26499, -1595104, 'Watch your backs... they have us surrounded in this hall.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14304, 0, 0, 0, 'culling SAY_PHASE309'),
(26499, -1595105, 'One less obstacle to deal with.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'culling SAY_PHASE310'),
(26499, -1595106, 'Mal''Ganis is not making this easy...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14305, 0, 0, 0, 'culling SAY_PHASE311'),
(26499, -1595107, 'They''re very persistent.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14306, 0, 0, 0, 'culling SAY_PHASE312'),
(26499, -1595108, 'What else can be put in my way?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14307, 0, 0, 0, 'culling SAY_PHASE313'),
(26499, -1595109, 'I do what i must for Lordaeron. And neither your words nor your actions will stop me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14309, 0, 0, 5, 'culling SAY_PHASE315'),
(26499, -1595110, 'The quickest path to Mal''Ganis lays behind that bookshelf ahead.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14308, 0, 0, 0, 'culling SAY_PHASE401'),
(26499, -1595111, 'This will only take a moment.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14310, 0, 0, 0, 'culling SAY_PHASE402'),
(26499, -1595112, 'I believe that secret passage still works!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14311, 0, 0, 0, 'culling SAY_PHASE403'),
(26499, -1595113, 'Let''s move trought here as quickly as possible. If the undead don''t kill us the fires might.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14312, 0, 0, 0, 'culling SAY_PHASE404'),
(26499, -1595114, 'Rest a moment and clear your lungs. But we must move again soon.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14313, 0, 0, 0, 'culling SAY_PHASE405');
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(26499, -1595115, 'That''s enough, we must move again. Mal''Ganis awaits.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14314, 0, 0, 0, 'culling SAY_PHASE406'),
(26499, -1595116, 'At last some good luck, Market Row has not caught fire yet. Mal''Ganis is supposed to be on Crusader Square which is just ahead. Tell me when you''re ready to move forth.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14315, 0, 0, 0, 'culling SAY_PHASE407'),
(26499, -1595117, 'Justice will be done!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14316, 0, 0, 0, 'culling SAY_PHASE501'),
(26499, -1595118, 'We''re going to finish this right now Mal''Ganis... just you and me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14317, 0, 0, 0, 'culling SAY_PHASE502'),
(26499, -1595119, 'I''ll hunt you to the ends of the earth if I have to! Do you hear me? To the ends of the earth!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14318, 1, 0, 5, 'culling SAY_PHASE503'),
(26499, -1595120, 'You performed well this day. Anything that Mal''Ganis has left behind is yours. Take it as your reward. I must now begin plans for an expedition to Northrend.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14319, 0, 0, 5, 'culling SAY_PHASE504'),
(36494, -1658001, 'Tiny creatures under feet, you bring Garfrost something good to eat!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16912, 1, 0, 0, 'garfrost SAY_AGGRO'),
(36494, -1658002, 'Will save for snack. For later.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16913, 1, 0, 0, 'garfrost SAY_SLAY_1'),
(36494, -1658003, 'That one maybe not so good to eat now. Stupid Garfrost! BAD! BAD!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16914, 1, 0, 0, 'garfrost SAY_SLAY_2'),
(36494, -1658004, 'Garfrost hope giant underpants clean. Save boss great shame. For later.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16915, 1, 0, 0, 'garfrost SAY_DEATH'),
(36494, -1658005, 'Axe too weak. Garfrost make better and CRUSH YOU!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16916, 1, 0, 0, 'garfrost SAY_PHASE2'),
(36494, -1658006, 'Garfrost tired of puny mortals. Now your bones will freeze!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16917, 1, 0, 0, 'garfrost SAY_PHASE3'),
(36658, -1658007, 'Another shall take his place. You waste your time.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16752, 1, 0, 0, 'Tyrannus SAY_TYRANNUS_DEATH'),
(36477, -1658010, 'Our work must not be interrupted! Ick! Take care of them!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16926, 1, 0, 0, 'Krick SAY_AGGRO'),
(36477, -1658011, 'Ooh...We could probably use these parts!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16927, 1, 0, 0, 'Krick SAY_SLAY_1'),
(36477, -1658012, 'Arms and legs are in short supply...Thanks for your contribution!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16928, 1, 0, 0, 'Krick SAY_SLAY_2'),
(36477, -1658013, 'Enough moving around! Hold still while I blow them all up!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16929, 1, 0, 0, 'Krick SAY_BARRAGE_1'),
(36477, -1658014, 'Krick begins rapidly conjuring explosive mines!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'Krick SAY_BARRAGE_2'),
(36477, -1658015, 'Quickly! Poison them all while they''re still close!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16930, 1, 0, 0, 'Krick SAY_POISON_NOVA'),
(36477, -1658016, 'No! That one! That one! Get that one!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16931, 1, 0, 0, 'Krick SAY_CHASE_1'),
(36477, -1658017, 'I''ve changed my mind...go get that one instead!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16932, 1, 0, 0, 'Krick SAY_CHASE_2'),
(36477, -1658018, 'What are you attacking him for? The dangerous one is over there,fool!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16933, 1, 0, 0, 'Krick SAY_CHASE_3'),
(36476, -1658020, 'Ick begins to unleash a toxic poison cloud!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'Ick SAY_ICK_POISON_NOVA'),
(36476, -1658021, 'Ick is chasing you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'Ick SAY_ICK_CHASE_1'),
(36477, -1658030, 'Wait! Stop! Don''t kill me, please! I''ll tell you everything!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16934, 1, 0, 0, 'Krick SAY_KRICK_OUTRO_1'),
(36993, -1658031, 'I''m not so naive as to believe your appeal for clemency, but I will listen.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16611, 1, 0, 0, 'Jaina SAY_JAINA_OUTRO_2'),
(36990, -1658032, 'Why should the Banshee Queen spare your miserable life?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17033, 1, 0, 0, 'Sylvanas SAY_SYLVANAS_OUTRO_2'),
(36477, -1658033, 'What you seek is in the master''s lair, but you must destroy Tyrannus to gain entry. Within the Halls of Reflection you will find Frostmourne. It... it holds the truth.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16935, 1, 0, 0, 'Krick SAY_KRICK_OUTRO_3'),
(36993, -1658034, 'Frostmourne lies unguarded? Impossible!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16612, 1, 0, 0, 'Jaina SAY_JAINA_OUTRO_4'),
(36990, -1658035, 'Frostmourne? The Lich King is never without his blade! If you are lying to me...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17034, 1, 0, 0, 'Sylvanas SAY_SYLVANAS_OUTRO_4'),
(36477, -1658036, 'I swear it is true! Please, don''t kill me!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16936, 1, 0, 0, 'Krick SAY_KRICK_OUTRO_5'),
(36658, -1658037, 'Worthless gnat! Death is all that awaits you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16753, 1, 0, 0, 'Tyrannus SAY_TYRANNUS_OUTRO_7'),
(36477, -1658038, 'Urg... no!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16937, 1, 0, 0, 'Krick SAY_KRICK_OUTRO_8'),
(36658, -1658039, 'Do not think that I shall permit you entry into my master''s sanctum so easily. Pursue me if you dare.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16754, 1, 0, 0, 'Tyrannus SAY_TYRANNUS_OUTRO_9'),
(36993, -1658040, 'What a cruel end. Come, heroes. We must see if the gnome''s story is true. If we can separate Arthas from Frostmourne, we might have a chance at stopping him.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16613, 1, 0, 0, 'Jaina SAY_JAINA_OUTRO_10'),
(36990, -1658041, 'A fitting end for a traitor. Come, we must free the slaves and see what is within the Lich King''s chamber for ourselves.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17035, 1, 0, 0, 'Sylvanas SAY_SYLVANAS_OUTRO_10'),
(37592, -1658065, 'This day will stand as a testament not only to your valor, but to the fact that no foe, not even the Lich King himself, can stand when Alliance and Horde set aside their differences and ---', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Gorkun SAY_GORKUN_OUTRO_2'),
(37592, -1658064, 'Brave champions, we owe you our lives, our freedom... Though it be a tiny gesture in the face of this enormous debt, I pledge that from this day forth, all will know of your deeds, and the blazing path of light you cut through the shadow of this dark citadel.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'Gorkun SAY_GORKUN_OUTRO_1'),
(36658, -1658062, 'Power... overwhelming!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16765, 1, 0, 0, 'Tyrannus SAY_DARK_MIGHT_1'),
(36658, -1658063, 'Scourgelord Tyrannus roars and swells with dark might!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'Tyrannus SAY_DARK_MIGHT_2'),
(36658, -1658061, 'The frostwyrm Rimefang gazes at $N and readies an icy attack!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'Tyrannus SAY_MARK_RIMEFANG_2'),
(36658, -1658060, 'Rimefang, destroy this fool!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16764, 1, 0, 0, 'Tyrannus SAY_MARK_RIMEFANG_1'),
(36658, -1658059, 'Impossible! Rimefang... Warn...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16763, 1, 0, 0, 'Tyrannus SAY_DEATH'),
(36658, -1658058, 'Perhaps you should have stayed in the mountains!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16762, 1, 0, 0, 'Tyrannus SAY_SLAY_2'),
(36658, -1658057, 'Such a shameful display... You are better off dead!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16761, 1, 0, 0, 'Tyrannus SAY_SLAY_1'),
(36658, -1658056, 'I shall not fail The Lich King! Come and meet your end!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16760, 1, 0, 0, 'Tyrannus SAY_AGGRO'),
(36658, -1658055, 'Ha, such an amusing gesture from the rabble. When I have finished with you, my master''s blade will feast upon your souls. Die!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16759, 1, 0, 0, 'Tyrannus SAY_TYRANNUS_INTRO_3'),
(37592, -1658054, 'Heroes! We will hold off the undead as long as we can, even to our dying breath. Deal with the Scourgelord!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17150, 1, 0, 0, 'Gorkun SAY_GORKUN_INTRO_2'),
(36658, -1658053, 'Alas, brave, brave adventurers, your meddling has reached its end. Do you hear the clatter of bone and steel coming up the tunnel behind you? That is the sound of your impending demise.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16758, 1, 0, 0, 'Tyrannus SAY_TYRANNUS_INTRO_1'),
(36658, -1658052, 'Rimefang! Trap them within the tunnel! Bury them alive!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16757, 1, 0, 0, 'Tyrannus SAY_GAUNTLET_START'),
(36658, -1658051, 'Persistent whelps! You will not reach the entrance of my lord''s lair! Soldiers, destroy them!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16756, 1, 0, 0, 'Tyrannus SAY_AMBUSH_2'),
(36658, -1658050, 'Your pursuit shall be in vain, adventurers, for the Lich King has placed an army of undead at my command! Behold!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16755, 1, 0, 0, 'Tyrannus SAY_AMBUSH_1'),
(36497, -1632001, 'Finally...a captive audience!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16595, 1, 0, 0, 'Bronjham SAY_AGGRO'),
(36497, -1632002, 'Fodder for the engine!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16596, 1, 0, 0, 'Bronjham SAY_SLAY_1'),
(36497, -1632003, 'Another soul to strengthen the host!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16597, 1, 0, 0, 'Bronjham SAY_SLAY_2'),
(36497, -1632004, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16598, 1, 0, 0, 'Bronjham SAY_DEATH'),
(36497, -1632005, 'The vortex of the harvested calls to you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16599, 1, 0, 0, 'Bronjham SAY_SOUL_STORM'),
(36497, -1632006, 'I will sever the soul from your body!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16600, 1, 0, 0, 'Bronjham SAY_CORRUPT_SOUL'),
(36502, -1632010, 'You dare look upon the host of souls? I SHALL DEVOUR YOU WHOLE!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16884, 1, 0, 0, 'Devoureur SAY_FACE_ANGER_AGGRO'),
(36502, -1632011, 'You dare look upon the host of souls? I SHALL DEVOUR YOU WHOLE!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16890, 1, 0, 0, 'Devoureur SAY_FACE_DESIRE_AGGRO'),
(36502, -1632012, 'Damnation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16885, 1, 0, 0, 'Devoureur SAY_FACE_ANGER_SLAY_1'),
(36502, -1632013, 'Damnation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16896, 1, 0, 0, 'Devoureur SAY_FACE_SORROW_SLAY_1'),
(36502, -1632014, 'Damnation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16891, 1, 0, 0, 'Devoureur SAY_FACE_DESIRE_SLAY_1'),
(36502, -1632015, 'Doomed for eternity!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16886, 1, 0, 0, 'Devoureur SAY_FACE_ANGER_SLAY_2'),
(36502, -1632016, 'Doomed for eternity!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16897, 1, 0, 0, 'Devoureur SAY_FACE_SORROW_SLAY_2'),
(36502, -1632017, 'Doomed for eternity!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16892, 1, 0, 0, 'Devoureur SAY_FACE_DESIRE_SLAY_2'),
(36502, -1632018, 'The swell of souls will not be abated! You only delay the inevitable!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16887, 1, 0, 0, 'Devoureur SAY_FACE_ANGER_DEATH'),
(36502, -1632019, 'The swell of souls will not be abated! You only delay the inevitable!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16898, 1, 0, 0, 'Devoureur SAY_FACE_SORROW_DEATH'),
(36502, -1632020, 'The swell of souls will not be abated! You only delay the inevitable!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16893, 1, 0, 0, 'Devoureur SAY_FACE_DESIRE_DEATH'),
(36502, -1632021, 'Devourer of Souls begins to cast Mirrored Soul!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'Devoureur EMOTE_MIRRORED_SOUL'),
(36502, -1632022, 'Devourer of Souls begins to Unleash Souls!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'Devoureur EMOTE_UNLEASH_SOUL'),
(36502, -1632023, 'SUFFERING! ANGUISH! CHAOS! RISE AND FEED!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16888, 1, 0, 0, 'Devoureur SAY_FACE_ANGER_UNLEASH_SOUL'),
(36502, -1632024, 'SUFFERING! ANGUISH! CHAOS! RISE AND FEED!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16899, 1, 0, 0, 'Devoureur SAY_FACE_SORROW_UNLEASH_SOUL'),
(36502, -1632025, 'SUFFERING! ANGUISH! CHAOS! RISE AND FEED!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16894, 1, 0, 0, 'Devoureur SAY_FACE_DESIRE_UNLEASH_SOUL'),
(36502, -1632026, 'Devourer of Souls begins to cast Wailing Souls!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'Devoureur EMOTE_WAILING_SOUL'),
(36502, -1632027, 'Stare into the abyss, and see your end!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16889, 1, 0, 0, 'Devoureur SAY_FACE_ANGER_WAILING_SOUL'),
(36502, -1632028, 'Stare into the abyss, and see your end!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16895, 1, 0, 0, 'Devoureur SAY_FACE_DESIRE_WAILING_SOUL'),
(38160, -1632029, 'Excellent work, champions! We shall set up our base camp in these chambers. My mages will get the Scourge transport device working shortly. Step inside it when you''re ready for your next mission. I will meet you on the other side.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16625, 1, 0, 0, 'Jaina SAY_JAINA_OUTRO'),
(38161, -1632030, 'Excellent work, champions! We shall set up our base camp in these chambers. My mages will get the Scourge transport device working shortly. Step inside when you are ready for your next mission. I will meet you on the other side.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17044, 1, 0, 0, 'Sylvanas SAY_SYLVANAS_OUTRO'),
(37597, -1632040, 'Thank the light for seeing you here safely. We have much work to do if we are to defeat the Lich King and put an end to the Scourge.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16617, 0, 0, 0, 'Jaina SAY_INTRO_1'),
(37597, -1632041, 'Our allies within the Argent Crusade and the Knights of the Ebon Blade have broken through the front gate of Icecrown and are attempting to establish a foothold within the Citadel.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16618, 0, 0, 0, 'Jaina SAY_INTRO_2'),
(37597, -1632042, 'Their success hinges upon what we discover in these cursed halls. Although our mission is a wrought with peril, we must persevere!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16619, 0, 0, 0, 'Jaina SAY_INTRO_3'),
(37597, -1632043, 'With the attention of the Lich King drawn toward the front gate, we will be working our way through the side in search of information that will enable us to defeat the Scourge - once and for all.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16620, 0, 0, 0, 'Jaina SAY_INTRO_4'),
(37597, -1632044, 'King Varian''s SI7 agents have gathered information about a private sanctum of the Lich King''s deep within a place called the Halls of Reflection.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16621, 0, 0, 0, 'Jaina SAY_INTRO_5'),
(37597, -1632045, 'We will carve a path through this wretched place and find a way to enter the Halls of Reflection. I sense powerful magic hidden away within those walls... Magic that could be the key to destroy the Scourge.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16622, 0, 0, 0, 'Jaina SAY_INTRO_6'),
(37597, -1632046, 'Your first mission is to destroy the machines of death within this malevolent engine of souls, and clear a path for our soldiers.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16623, 0, 0, 0, 'Jaina SAY_INTRO_7'),
(37597, -1632047, 'Make haste, champions! I will prepare the troops to fall in behind you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16624, 0, 0, 0, 'Jaina SAY_INTRO_8'),
(37596, -1632050, 'The Argent Crusade and the Knights of the Ebon Blade have assaulted the gates of Icecrown Citadel and are preparing for a massive attack upon the Scourge. Our missition is a bit more subtle, but equally as important.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17038, 0, 0, 0, 'Sylvanas SAY_INTRO_1'),
(37596, -1632051, 'With the attention of the Lich King turned towards the front gate, we''ll be working our way through the side in search of information that will enable us to defeat the Lich King - once and for all.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17039, 0, 0, 0, 'Sylvanas SAY_INTRO_2'),
(37596, -1632052, 'Our scouts have reported that the Lich King has a private chamber, outside of the Frozen Throne, deep within a place called the Halls of Reflection. That is our target, champions.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17040, 0, 0, 0, 'Sylvanas SAY_INTRO_3'),
(37596, -1632053, 'We will cut a swath of destruction through this cursed place and find a way to enter the Halls of Reflection. If there is anything of value to be found here, it will be found in the Halls.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17041, 0, 0, 0, 'Sylvanas SAY_INTRO_4'),
(37596, -1632054, 'Your first mission is to destroy the machines of death within this wretched engine of souls, and clear a path for our soldiers.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17042, 0, 0, 0, 'Sylvanas SAY_INTRO_5'),
(37596, -1632055, 'The Dark Lady watches over you. Make haste!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17043, 0, 0, 0, 'Sylvanas SAY_INTRO_6'),
(29120, -1601004, 'Ahhh... RAAAAAGH! Never thought... I would be free of him...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14069, 1, 0, 0, ''),
(29120, -1601005, 'Your armor is useless againts my locusts.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14060, 1, 0, 0, ''),
(29120, -1601006, 'Uunak-hissss tik-k-k-k-k!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14067, 1, 0, 0, ''),
(29120, -1601007, 'The pestilence upon you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14068, 1, 0, 0, ''),
(29120, -1601008, 'Auum na-l ak-k-k-k, isshhh.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14058, 1, 0, 0, ''),
(29120, -1601009, 'Come forth my brethren! Feast on their flesh.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14059, 1, 0, 0, ''),
(29120, -1601010, 'I was king of this empire once, long ago. In life I stood as champion. In death I returned as conqueror. Now I protect the kingdom once more. Ironic, yes? ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14053, 1, 0, 0, ''),
(28684, -1601011, 'This kingdom belongs to the Scourge! Only the dead may enter.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14075, 1, 0, 0, ''),
(28684, -1601012, 'You were foolish to come.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14077, 1, 0, 0, ''),
(28684, -1601013, 'As Anub''Arak commands!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14078, 1, 0, 0, ''),
(28684, -1601014, 'I should be grateful. But I long ago lost the capacity.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14087, 1, 0, 0, ''),
(28684, -1601015, 'They hunger.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14085, 1, 0, 0, ''),
(28684, -1601016, 'Dinner time, my pets.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14086, 1, 0, 0, ''),
(28684, -1601017, 'Keep an eye on the tunnel. We must not let anyone through!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14082, 1, 0, 0, ''),
(28684, -1601018, 'I hear footsteps. Be on your guard.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14083, 1, 0, 0, ''),
(28684, -1601019, 'I sense the living. Be ready.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14084, 1, 0, 0, ''),
(28684, -1601020, 'We are besieged. Strike out and bring back their corpses!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14079, 1, 0, 0, ''),
(28684, -1601021, 'We must hold the gate. Attack! Tear them limb from limb!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14080, 1, 0, 0, ''),
(28684, -1601022, 'The gate must be protected at all costs. Rip them to shreds!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14081, 1, 0, 0, ''),
(27577, -1800038, 'You cannot stop Thel''zan! He bears the dark gift,bestowed upon him by the Lich King himself! ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(27577, -1800037, 'How? Humans truly are stupid,yes? Thel''zan the Duskbringer! Thel''zan the Lich! He who is born of human flesh and bone,sacrificed all power,protected by the Lich King! ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(27577, -1800035, 'Humans... Beneath the earth of Wintergarde Village you built a mausoleum! Why do you think Naxxramas attacked that spot? Thel''zan hides deep in your own crypt and sends a thousand-thousand corpses at you! Perish you will... ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(27577, -1800034, 'NOOOO!!! I tell you! I tell you everything! ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(27577, -1800032, 'It tells of the coming apocalypse. How this world will burn and be reborn from death. ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(27577, -1800028, 'Never felt hurt like this! ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(27577, -1800025, 'IT BURNSSSSS! ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(27577, -1800020, 'The book is your salvation,yes... but nothing will you know. NOTHING I SAY! NOTHING! ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(27577, -1800019, 'What can you do to me that Kel''Thuzad has not? That the Lich King will not? ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(27577, -1800018, 'Tell you nothing,preacher. ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(27463, -1800046, 'Thank you. $Class!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'RANDOM_SAY_3'),
(27463, -1800045, 'Whoa.. i nearly died there. Thank you, $Race!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'RANDOM_SAY_2'),
(27463, -1800044, 'Ahh..better..', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'RANDOM_SAY_1'),
(29434, -1800042, 'Let me know when you''re ready. I''d prefer sooner than later... what with the slowly dying from poison and all. ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'injured goblin SAY_QUEST_START'),
(29434, -1800043, 'I''m going to bring the venom sack to Ricket... and then... you know... collapse. Thank you for helping me! ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'injured goblin SAY_END_WP_REACHED'),
(28787, -1800047, 'Let''s get the hell out of here', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(28787, -1800048, 'Listen up, Venture Company goons! Rule #1: Never keep the prisoner near the explosives.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(28787, -1800049, 'Or THIS is what you get. ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(28787, -1800050, 'It''s getting a little hot over here. Shall we move on? ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(28787, -1800051, 'Oh, look, it''s another cartload of explosives! Let''s help them dispose of it. ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(28787, -1800052, 'You really shouldn''t play with this stuff. Someone could get hurt.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(28787, -1800053, 'We made it! Thank you for getting me out of that hell hole. Tell Hemet to expect me! ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(12717, -1800054, 'Are you sure that you are ready? If we do not have a group of your allies to aid us, we will surely fail.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'muglash SAY_MUG_START1'),
(12717, -1800055, 'This will be a though fight, $N. Follow me closely.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'muglash SAY_MUG_START2'),
(12717, -1800056, 'This is the brazier, $N. Put it out. Vorsha is a beast, worthy of praise from no one!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'muglash SAY_MUG_BRAZIER'),
(12717, -1800057, 'Now we must wait. It won''t be long before the naga realize what we have done.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'muglash SAY_MUG_BRAZIER_WAIT'),
(12717, -1800058, 'Be on your guard, $N!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'muglash SAY_MUG_ON_GUARD'),
(12717, -1800059, 'Perhaps we will get a moment to rest. But I will not give up until we have faced off against Vorsha!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'muglash SAY_MUG_REST'),
(12717, -1800060, 'We have done it!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'muglash SAY_MUG_DONE'),
(12717, -1800061, 'You have my deepest gratitude. I thank you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'muglash SAY_MUG_GRATITUDE'),
(12717, -1800062, 'I am going to patrol the area for a while longer and ensure that things are truly safe.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'muglash SAY_MUG_PATROL'),
(12717, -1800063, 'Please return to Zoram''gar and report our success to the Warsong runner.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'muglash SAY_MUG_RETURN'),
(30014, -1571039, 'Yggdras emerges!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, ''),
(30017, -1571040, 'Stinkbeard comin'' for you, little ones!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, ''),
(30007, -1571041, 'Do you fell that folks? The air is cracking with energy! Than can only mean one thing...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, ''),
(37221, -1668001, 'The chill of this place... Brr... I can feel my blood freezing.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16631, 1, 0, 0, 'Jaina SAY_JAINA_INTRO_1'),
(37221, -1668002, 'What is that? Up ahead! Could it be... ? Heroes at my side!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16632, 1, 0, 0, 'Jaina SAY_JAINA_INTRO_2'),
(37221, -1668003, 'Frostmourne! The blade that destroyed our kingdom...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16633, 1, 0, 0, 'Jaina SAY_JAINA_INTRO_3'),
(37221, -1668004, 'Stand back! Touch that blade and your soul will be scarred for all eternity! I must attempt to commune with the spirits locked away within Frostmourne. Give me space, back up please!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16634, 1, 0, 0, 'Jaina SAY_JAINA_INTRO_4'),
(37225, -1668005, 'Jaina! Could it truly be you?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16666, 1, 0, 0, 'Uther SAY_UTHER_INTRO_A2_1'),
(37221, -1668006, 'Uther! Dear Uther! ... I... I''m so sorry.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16635, 0, 0, 0, 'Jaina SAY_JAINA_INTRO_5'),
(37225, -1668007, 'Jaina you haven''t much time. The Lich King sees what the sword sees. He will be here shortly!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16667, 0, 0, 0, 'Uther SAY_UTHER_INTRO_A2_2'),
(37221, -1668008, 'Arthas is here? Maybe I...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16636, 0, 0, 0, 'Jaina SAY_JAINA_INTRO_6'),
(37225, -1668009, 'No, girl. Arthas is not here. Arthas is merely a presence within the Lich King''s mind. A dwindling presence...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16668, 0, 0, 0, 'Uther SAY_UTHER_INTRO_A2_3'),
(37221, -1668010, 'But Uther, if there''s any hope of reaching Arthas. I... I must try.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16637, 0, 0, 0, 'Jaina SAY_JAINA_INTRO_7'),
(37225, -1668011, 'Jaina, listen to me. You must destroy the Lich King. You cannot reason with him. He will kill you and your allies and raise you all as powerful soldiers of the Scourge.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16669, 0, 0, 0, 'Uther SAY_UTHER_INTRO_A2_4'),
(37221, -1668012, 'Tell me how, Uther? How do I destroy my prince? My...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16638, 0, 0, 0, 'Jaina SAY_JAINA_INTRO_8'),
(37225, -1668013, 'Snap out of it, girl. You must destroy the Lich King at the place where he merged with Ner''zhul - atop the spire, at the Frozen Throne. It is the only way.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16670, 0, 0, 0, 'Uther SAY_UTHER_INTRO_A2_5'),
(37221, -1668014, 'You''re right, Uther. Forgive me. I... I don''t know what got a hold of me. We will deliver this information to the King and the knights that battle the Scourge within Icecrown Citadel.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16639, 0, 0, 0, 'Jaina SAY_JAINA_INTRO_9'),
(37225, -1668015, 'There is... something else that you should know about the Lich King. Control over the Scourge must never be lost. Even if you were to strike down the Lich King, another would have to take his place. For without the control of its master, the Scourge would run rampant across the world - destroying all living things.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16671, 0, 0, 0, 'Uther SAY_UTHER_INTRO_A2_6'),
(37225, -1668016, 'A grand sacrifice by a noble soul...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16672, 0, 0, 0, 'Uther SAY_UTHER_INTRO_A2_7'),
(37221, -1668017, 'Who could bear such a burden?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16640, 0, 0, 0, 'Jaina SAY_JAINA_INTRO_10'),
(37225, -1668018, 'I do not know, Jaina. I suspect that the piece of Arthas that might be left inside the Lich King is all that holds the Scourge from annihilating Azeroth.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16673, 0, 0, 0, 'Uther SAY_UTHER_INTRO_A2_8'),
(37221, -1668019, 'Then maybe there is still hope...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16641, 0, 0, 0, 'Jaina SAY_JAINA_INTRO_11'),
(37225, -1668020, 'No, Jaina! Aargh! He... He is coming! You... You must...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16674, 0, 0, 0, 'Uther SAY_UTHER_INTRO_A2_9'),
(37223, -1668021, 'I... I don''t believe it! Frostmourne stands before us, unguarded! Just as the Gnome claimed. Come, heroes!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17049, 1, 0, 0, 'Sylvanas SAY_SYLVANAS_INTRO_1'),
(37223, -1668022, 'Standing this close to the blade that ended my life... The pain... It is renewed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17050, 1, 0, 0, 'Sylvanas SAY_SYLVANAS_INTRO_2'),
(37223, -1668023, 'I dare not touch it. Stand back! Stand back as I attempt to commune with the blade! Perhaps our salvation lies within...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17051, 1, 0, 0, 'Sylvanas SAY_SYLVANAS_INTRO_3'),
(37225, -1668024, 'Careful, girl. I''ve heard talk of that cursed blade saving us before. Look around you and see what has been born of Frostmourne.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16659, 0, 0, 0, 'Uther SAY_UTHER_INTRO_H2_1'),
(37223, -1668025, 'Uther...Uther the Lightbringer. How...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17052, 0, 0, 0, 'Sylvanas SAY_SYLVANAS_INTRO_4'),
(37225, -1668026, 'You haven''t much time. The Lich King sees what the sword sees. He will be here shortly.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16660, 0, 0, 0, 'Uther SAY_UTHER_INTRO_H2_2'),
(37223, -1668027, 'The Lich King is here? Then my destiny shall be fulfilled today!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17053, 0, 0, 0, 'Sylvanas SAY_SYLVANAS_INTRO_5'),
(37225, -1668028, 'You cannot defeat the Lich King. Not here. You would be a fool to try. He will kill those who follow you and raise them as powerful servants of the Scourge. But for you, Sylvanas, his reward for you would be worse than the last.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16661, 0, 0, 0, 'Uther SAY_UTHER_INTRO_H2_3'),
(37223, -1668029, 'There must be a way... ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17054, 0, 0, 0, 'Sylvanas SAY_SYLVANAS_INTRO_6'),
(37225, -1668030, 'Perhaps, but know this: there must always be a Lich King. Even if you were to strike down Arthas, another would have to take his place, for without the control of the Lich King, the Scourge would wash over this world like locusts, destroying all that they touched.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16662, 0, 0, 0, 'Uther SAY_UTHER_INTRO_H2_4'),
(37223, -1668031, 'Who could bear such a burden?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17055, 0, 0, 0, 'Sylvanas SAY_SYLVANAS_INTRO_7'),
(37225, -1668032, 'I do not know, Banshee Queen. I suspect that the piece of Arthas that might be left inside the Lich King is all that holds the Scourge from annihilating Azeroth.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16663, 0, 0, 0, 'Uther SAY_UTHER_INTRO_H2_5'),
(37225, -1668033, 'Alas, the only way to defeat the Lich King is to destroy him at the place he was created.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16664, 0, 0, 0, 'Uther SAY_UTHER_INTRO_H2_6'),
(37223, -1668034, 'The Frozen Throne...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17056, 0, 0, 0, 'Sylvanas SAY_SYLVANAS_INTRO_8'),
(37225, -1668035, 'I... Aargh... He... He is coming... You... You must...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16665, 0, 0, 0, 'Uther SAY_UTHER_INTRO_H2_7'),
(37226, -1668036, 'SILENCE, PALADIN!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17225, 1, 0, 0, 'Lich King SAY_LK_INTRO_1'),
(37226, -1668037, 'So you wish to commune with the dead? You shall have your wish.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17226, 1, 0, 0, 'Lich King SAY_LK_INTRO_2'),
(37226, -1668038, 'Falric. Marwyn. Bring their corpses to my chamber when you are through.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17227, 1, 0, 0, 'Lich King SAY_LK_INTRO_3'),
(38112, -1668039, 'As you wish, my lord.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16717, 1, 0, 0, 'Falric SAY_FALRIC_INTRO_1'),
(38113, -1668040, 'As you wish, my lord.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16741, 1, 0, 0, 'Marwyn SAY_MARWYN_INTRO_1'),
(38112, -1668041, 'Soldiers of Lordaeron, rise to meet your master''s call!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16714, 1, 0, 0, 'Falric SAY_FALRIC_INTRO_2'),
(37221, -1668042, 'You won''t deny me this Arthas! I must know! I must find out!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16642, 1, 0, 0, 'Jaina SAY_JAINA_INTRO_END'),
(37223, -1668043, 'You will not escape me that easily, Arthas! I will have my vengeance!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17057, 1, 0, 0, 'Sylvanas SAY_SYLVANAS_INTRO_END'),
(38112, -1668050, 'Men, women and children... None were spared the master''s wrath. Your death will be no different.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16710, 1, 0, 0, 'Falric SAY_AGGRO'),
(38112, -1668051, 'Sniveling maggot!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16711, 1, 0, 0, 'Falric SAY_SLAY_1'),
(38112, -1668052, 'The children of Stratholme fought with more ferocity!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16712, 1, 0, 0, 'Falric SAY_SLAY_2'),
(38112, -1668053, 'Marwyn, finish them...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16713, 1, 0, 0, 'Falric SAY_DEATH'),
(38112, -1668054, 'Despair... so delicious...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16715, 1, 0, 0, 'Falric SAY_IMPENDING_DESPAIR'),
(38112, -1668055, 'Fear... so exhilarating...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16716, 1, 0, 0, 'Falric SAY_DEFILING_HORROR'),
(38113, -1668060, 'Death is all that you will find here!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16734, 1, 0, 0, 'Marwyn SAY_AGGRO'),
(38113, -1668061, 'I saw the same look in his eyes when he died. Terenas could hardly believe it. Hahahaha!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16735, 1, 0, 0, 'Marwyn SAY_SLAY_1'),
(38113, -1668062, 'Choke on your suffering!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16736, 1, 0, 0, 'Marwyn SAY_SLAY_2'),
(38113, -1668063, 'Yes... Run... Run to meet your destiny... Its bitter, cold embrace, awaits you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16737, 1, 0, 0, 'Marwyn SAY_DEATH'),
(38113, -1668064, 'Your flesh has decayed before your very eyes!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16739, 1, 0, 0, 'Marwyn SAY_CORRUPTED_FLESH_1'),
(38113, -1668065, 'Waste away into nothingness!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16740, 1, 0, 0, 'Marwyn SAY_CORRUPTED_FLESH_2'),
(27655, -1578000, 'What do we have here... those that would defy the Spell-Weaver? Those without foresight our understanding. How can i make you see? Malygos is saving the world from itself! Bah! You are hardly worth my time!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, ''),
(27655, -1578001, 'Clearly my pets failed. Perhaps another demonstration is in order.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, ''),
(27655, -1578002, 'Still you fight. Still you cling to misguided principles. If you survive, you''ll find me in the center ring.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, ''),
(27655, -1578003, 'Poor blind fools!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, ''),
(27655, -1578004, 'A taste... just a small taste... of the Spell-Weaver''s power!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, ''),
(26861, -1575028, 'You invade my home and then dare to challenge me? I will tear the hearts from your chests and offer them as gifts to the death god! Rualg nja gaborr!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13609, 1, 0, 0, 'King Ymirom - SAY_AGGRO'),
(26861, -1575029, 'Your death is only the beginning!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13614, 1, 0, 0, 'King Ymirom - SAY_SLAY_1'),
(26861, -1575030, 'You have failed your people!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13615, 1, 0, 0, 'King Ymirom - SAY_SLAY_2'),
(26861, -1575031, 'There is a reason I am king!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13616, 1, 0, 0, 'King Ymirom - SAY_SLAY_3'),
(26861, -1575032, 'Bleed no more!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13617, 1, 0, 0, 'King Ymirom - SAY_SLAY_4'),
(26861, -1575033, 'What... awaits me... now?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13618, 1, 0, 0, 'King Ymirom - SAY_DEATH'),
(26861, -1575034, 'Bjorn of the Black Storm! Honor me now with your presence!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13610, 1, 0, 0, 'King Ymirom - SAY_SUMMON_BJORN'),
(26861, -1575035, 'Haldor of the Rocky Cliffs, grant me your strength!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13611, 1, 0, 0, 'King Ymirom - SAY_SUMMON_HALDOR'),
(26861, -1575036, 'Ranulf of the Screaming Abyss, snuff these maggots with darkest night! ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13612, 1, 0, 0, 'King Ymirom - SAY_SUMMON_RANULF'),
(26861, -1575037, 'Tor of the Brutal Siege! Bestow your might upon me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13613, 1, 0, 0, 'King Ymirom - SAY_SUMMON_TORGYN'),
(26693, -1575004, 'What mongrels dare intrude here? Look alive, my brothers! A feast for the one that brings me their heads!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13497, 1, 0, 0, 'Skadi - SAY_AGGRO'),
(26693, -1575005, 'Not so brash now, are you?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13504, 1, 0, 0, 'Skadi - SAY_KILL_1'),
(26693, -1575006, 'I''ll mount your skull from the highest tower!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13505, 1, 0, 0, 'Skadi - SAY_KILL_2'),
(26693, -1575007, '%s in within range of the harpoon launchers!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'Skadi - EMOTE_RANGE'),
(26693, -1575008, 'ARGH! You call that... an attack? I''ll... show... aghhhh...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13506, 1, 0, 0, 'Skadi - SAY_DEATH'),
(26693, -1575009, '%s in within range of the harpoon launchers!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'Skadi - EMOTE_RANGE'),
(26693, -1575010, 'You motherless knaves! Your corpses will make fine morsels for my new drake!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13507, 1, 0, 0, 'Skadi - SAY_DRAKE_DEATH'),
(26693, -1575011, 'Sear them to the bone!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13498, 1, 0, 0, 'Skadi - SAY_DRAKE_BREATH_1'),
(26693, -1575012, 'Go now! Leave nothing but ash in your wake!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13499, 1, 0, 0, 'Skadi - SAY_DRAKE_BREATH_2'),
(26693, -1575013, 'Cleanse our sacred halls with flame!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13500, 1, 0, 0, 'Skadi - SAY_DRAKE_BREATH_3'),
(17375, -1000474, '[Fulborg] The Stillpine furbolgs will not soon forget your bravery!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Stillpine Capitive free say text 1'),
(17375, -1000475, '[Fulborg] Thank you, $N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Stillpine Capitive free say text 2'),
(17375, -1000476, '[Fulborg] Those remaining at Stillpine Hold will welcome you as a hero!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Stillpine Capitive free say text 3'),
(7607, -1209000, 'Oh no! Here they come!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'Weegli Blastfuse SAY_WEEGLI_OHNO'),
(7607, -1209001, 'OK. Here I go.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'Weegli Blastfuse SAY_WEEGLI_OK_I_GO'),
(7604, -1209002, 'Placeholder 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'Sergeant Bly SAY_1'),
(7604, -1209003, 'Placeholder 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 'Sergeant Bly SAY_2'),
(0, -1649000, 'My slaves! Destroy the enemy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, '34796'),
(0, -1649010, '%s buries itself in the earth!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, '34564'),
(0, -1649011, '%s getting out of the ground!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, '34564'),
(0, -1649012, 'After the death of sister %s goes berserk!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, '34799'),
(0, -1649020, '%s looks at |3-3($n) and emits a guttural howl!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, '34797'),
(0, -1649021, '%s crashes into a wall of the Colosseum and lose focus!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, '34797'),
(0, -1649022, '|3-3(%s) covers boiling rage, and he tramples all in its path!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, '34797'),
(0, -1649030, 'Trifling gnome, your arrogance will be your undoing!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16143, 1, 0, 0, '34780'),
(0, -1649031, 'You face Jaraxxus, eredar lord of the Burning Legion!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16144, 1, 0, 0, '34780'),
(0, -1649032, 'Another will take my place. Your world is doomed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16147, 1, 0, 0, '34780'),
(0, -1649033, '$n has |cFF00FFFFIncinerate flesh!|R Heal $ghim:her;!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, '34780'),
(0, -1649034, 'FLESH FROM BONE!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16149, 1, 0, 0, '34780'),
(0, -1649035, '|cFFFF0000Legion Flame|R on $n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, '34780'),
(0, -1649036, '%s creates the gates of the Void!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, '34780'),
(0, -1649037, 'Come forth, sister! Your master calls!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16150, 1, 0, 0, '34780'),
(0, -1649038, '%s creates an |cFF00FF00Infernal Volcano!|R', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, '34780'),
(0, -1649039, 'INFERNO!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16151, 1, 0, 0, '34780'),
(0, -1649115, 'Weakling!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, '34995'),
(0, -1649116, 'Pathetic!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, '34995'),
(0, -1649117, 'Overpowered.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, '34995'),
(0, -1649118, 'Lok''tar!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, '34995'),
(0, -1649120, 'HAH!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, '34990'),
(0, -1649121, 'Hardly a challenge!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, '34990'),
(0, -1649122, 'Worthless scrub.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, '34990'),
(0, -1649123, 'Is this the best the Horde has to offer?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, '34990'),
(0, -1649040, 'In the name of our dark master. For the Lich King. You. Will. Die.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16272, 1, 0, 0, '34497'),
(0, -1649041, 'The Scourge cannot be stopped...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16275, 1, 0, 0, '34496'),
(0, -1649042, 'YOU ARE FINISHED!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16273, 1, 0, 0, '34497'),
(0, -1649043, '%s begins to read the spell Treaty twins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, '34497'),
(0, -1649044, 'CHAOS!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16274, 3, 0, 0, '34497'),
(0, -1649045, 'UNWORTHY!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16277, 1, 0, 0, '34496'),
(0, -1649046, 'You appreciated and acknowledged nothing.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16276, 1, 0, 0, '34497'),
(0, -1649047, '%s begins to read a spell |cFFFFFFFFLight Vortex!|R switch to |cFFFFFFFFLight|r essence!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, '34497'),
(0, -1649048, 'Let the light consume you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16279, 1, 0, 0, '34496'),
(0, -1649049, '%s begins to read a spell |cFF9932CDBlack Vortex!|R switch to |cFF9932CDBlack|r essence!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, '34496'),
(0, -1649050, 'Let the dark consume you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16278, 1, 0, 0, '34496'),
(0, -1649055, 'Ahhh... Our guests arrived, just as the master promised.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16235, 1, 0, 0, '34564'),
(0, -1649056, 'This place will serve as your tomb!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16234, 1, 0, 0, '34564'),
(0, -1649057, 'F-lakkh shir!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16236, 1, 0, 0, '34564'),
(0, -1649058, 'Another soul to sate the host.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16237, 1, 0, 0, '34564'),
(0, -1649059, 'I have failed you, master...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16238, 1, 0, 0, '34564'),
(0, -1649060, '%s spikes  pursuing $n!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, '34564'),
(0, -1649061, 'Auum na-l ak-k-k-k, isshhh. Rise, minions. Devour...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16240, 1, 0, 0, '34564'),
(0, -1649062, '%s produces a swarm of beetles Peon to restore your health!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, '34564'),
(0, -1649063, 'The swarm shall overtake you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16241, 1, 0, 0, '34564'),
(0, -1649070, 'Welcome champions, you have heard the call of the Argent Crusade and you have boldly answered. It is here in the crusaders coliseum that you will face your greatest challenges. Those of you who survive the rigors of the coliseum will join the Argent Crusade on its marsh to ice crown citadel.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16036, 1, 0, 0, '34996'),
(0, -1649071, 'Hailing from the deepest, darkest carverns of the storm peaks, Gormok the Impaler! Battle on, heroes!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16038, 1, 0, 0, '34996'),
(0, -1649072, 'Your beast will be no match for my champions Tirion!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16069, 1, 0, 0, '34990'),
(0, -1649073, 'I have seen  more  worthy  challenges in the ring of blood, you waste our time paladin.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16026, 1, 0, 0, '34995'),
(0, -1649074, 'Steel yourselves, heroes, for the twin terrors Acidmaw and Dreadscale. Enter the arena!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16039, 1, 0, 0, '34996'),
(0, -1649075, 'The air freezes with the introduction of our next combatant, Icehowl! Kill or be killed, champions!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16040, 1, 0, 0, '34996'),
(0, -1649076, 'The monstrous menagerie has been vanquished!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16041, 1, 0, 0, '34996'),
(0, -1649077, 'Tragic... They fought valiantly, but the beasts of Northrend triumphed. Let us observe a moment of silence for our fallen heroes.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16042, 1, 0, 0, '34996'),
(0, -1649080, 'Grand Warlock Wilfred Fizzlebang will summon forth your next challenge. Stand by for his entry!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16043, 1, 0, 0, '34996'),
(0, -1649081, 'Thank you, Highlord! Now challengers, I will begin the ritual of summoning! When I am done, a fearsome Doomguard will appear!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16268, 1, 0, 0, '35458'),
(0, -1649082, 'Prepare for oblivion!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16269, 1, 0, 0, '35458'),
(0, -1649083, 'Ah ha! Behold the absolute power of Wilfred Fizzlebang, master summoner! You are bound to ME, demon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16270, 1, 0, 0, '35458');
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(0, -1649084, 'But I am in charge here-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16271, 1, 0, 0, '35458'),
(0, -1649085, '...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, '35458'),
(0, -1649086, 'Quickly, heroes! Destroy the demon lord before it can open a portal to its twisted demonic realm!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16044, 1, 0, 0, '34996'),
(0, -1649087, 'The loss of Wilfred Fizzlebang, while unfortunate, should be a lesson to those that dare dabble in dark magic. Alas, you are victorious and must now face the next challenge.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16045, 1, 0, 0, '34996'),
(0, -1649088, 'Treacherous Alliance dogs! You summon a demon lord against warriors of the Horde!? Your deaths will be swift!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16021, 1, 0, 0, '34995'),
(0, -1649089, 'The Alliance doesnt need the help of a demon lord to deal with Horde filth. Come, pig!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16064, 1, 0, 0, '34990'),
(0, -1649090, 'Everyone, calm down! Compose yourselves! There is no conspiracy at play here. The warlock acted on his own volition - outside of influences from the Alliance. The tournament must go on!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16046, 1, 0, 0, '34996'),
(0, -1649091, 'The next battle will be against the Argent Crusades most powerful knights! Only by defeating them will you be deemed worthy...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16047, 1, 0, 0, '34996'),
(0, -1649092, 'Our honor has been besmirched! They make wild claims and false accusations against us. I demand justice! Allow my champions to fight in place of your knights, Tirion. We challenge the Horde!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16066, 1, 0, 0, '34990'),
(0, -1649093, 'The Horde demands justice! We challenge the Alliance. Allow us to battle in place of your knights, paladin. We will show these dogs what it means to insult the Horde!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16023, 1, 0, 0, '34995'),
(0, -1649094, 'Very well, I will allow it. Fight with honor!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16048, 1, 0, 0, '34996'),
(0, -1649095, 'Fight for the glory of the Alliance, heroes! Honor your king and your people!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16065, 1, 0, 0, '34990'),
(0, -1649096, 'Show them no mercy, Horde champions! LOK-TAR OGAR!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16022, 1, 0, 0, '34995'),
(0, -1649097, 'GLORY OF THE ALLIANCE!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16067, 1, 0, 0, '34990'),
(0, -1649098, 'LOK-TAR OGAR!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16024, 1, 0, 0, '34995'),
(0, -1649099, 'A shallow and tragic victory. We are weaker as a whole from the losses suffered today. Who but the Lich King could benefit from such foolishness? Great warriors have lost their lives. And for what? The true threat looms ahead - the Lich King awaits us all in death.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16049, 1, 0, 0, '34996'),
(0, -1649100, 'Only by working together will you overcome the final challenge. From the depths of Icecrown come two of the Scourges most powerful lieutenants: fearsome valkyr, winged harbingers of the Lich King!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16050, 1, 0, 0, '34996'),
(0, -1649101, 'Let the games begin!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16037, 1, 0, 0, '34996'),
(0, -1649102, 'Not even the Lich King most powerful minions can stand against the Alliance! All hail our victors!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16068, 1, 0, 0, '34990'),
(0, -1649103, 'Do you still question the might of the horde paladin? We will take on all comers.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16025, 1, 0, 0, '34995'),
(0, -1649104, 'A mighty blow has been dealt to the Lich King! You have proven yourselves able bodied champions of the Argent Crusade. Together we will strike at Icecrown Citadel and destroy what remains of the Scourge! There is no challenge that we cannot face united!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16051, 1, 0, 0, '34996'),
(0, -1649105, 'You will have your challenge, Fordring.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16321, 1, 0, 0, '35877'),
(0, -1649106, 'Arthas! You are hopelessly outnumbered! Lay down Frostmourne and I will grant you a just death.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16052, 1, 0, 0, '34996'),
(0, -1649107, 'The Nerubians built an empire beneath the frozen wastes of Northrend. An empire that you so foolishly built your structures upon. MY EMPIRE.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16322, 1, 0, 0, '35877'),
(0, -1649108, 'The souls of your fallen champions will be mine, Fordring.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16323, 1, 0, 0, '35877'),
(0, -1649109, 'Champions, you are alive! Not only have you defeated every challenge of the Trial of the Crusader, but thwarted Arthas directly! Your skill and cunning will prove to be a powerful weapon against the Scourge. Well done! Allow one of my mages to transport you back to the surface!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, '36095'),
(0, -1649110, 'Let me hand you the chests as a reward, and let its contents will serve you faithfully in the campaign against Arthas in the heart of the Icecrown Citadel!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, '36095'),
(5391, -1000500, 'Help! Please, You must help me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Galen - periodic say'),
(5391, -1000501, 'Let us leave this place.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Galen - quest accepted'),
(5391, -1000502, 'Look out! The $c attacks!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Galen - aggro 1'),
(5391, -1000503, 'Help! I''m under attack!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Galen - aggro 2'),
(5391, -1000504, 'Thank you $N. I will remember you always. You can find my strongbox in my camp, north of Stonard.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Galen - quest complete'),
(5391, -1000505, '%s whispers to $N the secret to opening his strongbox.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Galen - emote whisper'),
(5391, -1000506, '%s disappears into the swamp.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Galen - emote disapper'),
(19589, -1000575, 'All systems on-line. Prepare yourself, we leave shortly.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'max_a_million SAY_START'),
(19589, -1000576, 'Be careful in there and come back in one piece!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'bot-specialist_alley SAY_ALLEY_FAREWELL'),
(19589, -1000577, 'Proceed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'max_a_million SAY_CONTINUE'),
(19589, -1000578, 'You are back! Were you able to get all of the machines?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'bot-specialist_alley SAY_ALLEY_FINISH'),
(4880, -1000507, 'Ok, let''s get started.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'stinky - quest accepted'),
(4880, -1000508, 'Now let''s look for the herb.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'stinky - say1'),
(4880, -1000509, 'Nope, not here...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'stinky - say2'),
(4880, -1000510, 'There must be one around here somewhere...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'stinky - say3'),
(4880, -1000511, 'Ah, there''s one! ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'stinky - say4'),
(4880, -1000512, 'Come, $N!  Let''s go over there and collect it!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'stinky - say5'),
(4880, -1000513, 'Ok, now let''s get out of here! ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'stinky - say6'),
(4880, -1000514, 'I can make it from here.  Thanks, $N!  And talk to my employer about a reward!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'stinky - quest complete'),
(4880, -1000515, 'Help! The beast is on me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'stinky - aggro'),
(4880, -1000516, '%s disappears back into the swamp.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'stinky - emote disapper'),
(0, -1000517, 'A-Me good. Good, A-Me. Follow... follow A-Me. Home. A-Me go home.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'npc_ame - SAY_READY'),
(0, -1000518, '$c, no hurt A-Me. A-Me good.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'npc_ame - SAY_AGGRO1'),
(0, -1000519, 'Good... good, A-Me. A-Me good. Home. Find home.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'npc_ame - SAY_SEARCH'),
(0, -1000520, 'Danger. Danger! $c try hurt A-Me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'npc_ame - SAY_AGGRO2'),
(0, -1000521, 'Bad, $c. $c, bad!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'npc_ame - SAY_AGGRO3'),
(0, -1000522, 'A-Me home! A-Me good! Good A-Me. Home. Home. Home.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'npc_ame - SAY_FINISH'),
(0, -1000523, 'Saeed is currently engaged or awaiting orders to engage. You may check directly east of me and see if Saeed is ready for you. If he is not present then he is off fighting another battle. I recommend that you wait for him to return before attacking Dimensius.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 0, 0, 'npc_professor_dabiri - WHISPER_DABIRI'),
(0, -1000524, 'Bessy, is that you?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'npc_bessy - SAY_THADELL_1'),
(0, -1000525, 'Thank you for bringing back my Bessy, $N. I couldn''t live without her!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'npc_bessy - SAY_THADELL_2'),
(0, -1000571, 'Ok let''s get out of here!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'npc_isla_starmane - SAY_PROGRESS_1'),
(0, -1000572, 'You sure you''re ready? Take a moment.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'npc_isla_starmane - SAY_PROGRESS_2'),
(0, -1000573, 'Alright, let''s do this!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'npc_isla_starmane - SAY_PROGRESS_3'),
(0, -1000574, 'Ok, I think I can make it on my own from here. Thank you so much for breaking me out of there!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'npc_isla_starmane - SAY_PROGRESS_4'),
(0, -1000606, 'Come, $N. Lord Stormrage awaits.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'OVERLORD_SAY_1'),
(0, -1000607, 'Lord Illidan will be here shortly.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'OVERLORD_SAY_2'),
(0, -1000609, 'But... My lord, I do not understand. $N... He is the orc that has...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'OVERLORD_SAY_4'),
(0, -1000610, 'It will be done, my lord.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'OVERLORD_SAY_5'),
(0, -1000611, 'So you thought to make a fool of Mor''ghor, eh? Before you are delivered to Lord Illidan, you will feel pain that you could not know to exist. I will take pleasure in exacting my own vengeance.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 25, 'OVERLORD_SAY_6'),
(0, -1000612, 'Warriors of Dragonmaw, gather ''round! One among you has attained the rank of highlord! Bow your heads in reverence! Show your respect and allegiance to Highlord $N!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 22, 'OVERLORD_YELL_1'),
(0, -1000613, 'All hail Lord Illidan!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 66, 'OVERLORD_YELL_2'),
(0, -1000614, 'What is the meaning of this, Mor''ghor?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'LORD_ILLIDAN_SAY_1'),
(0, -1000615, 'SILENCE!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 22, 'LORD_ILLIDAN_SAY_2'),
(0, -1000616, 'Blathering idiot. You incomprehensibly incompetent buffoon...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'LORD_ILLIDAN_SAY_3'),
(0, -1000617, 'THIS is your hero?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 6, 'LORD_ILLIDAN_SAY_4'),
(0, -1000618, 'You have been deceived, imbecile.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'LORD_ILLIDAN_SAY_5'),
(0, -1000619, 'This... whole... operation... HAS BEEN COMPROMISED!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 22, 'LORD_ILLIDAN_SAY_6'),
(0, -1000620, 'I expect to see this insect''s carcass in pieces in my lair within the hour. Fail and you will suffer a fate so much worse than death.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'LORD_ILLIDAN_SAY_7'),
(0, -1000621, 'You will not harm the boy, Mor''ghor! Quickly, $N, climb on my back!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 22, 'YARZILL_THE_MERC_SAY'),
(0, -1000629, 'What''s the big idea, Spark?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'geezle - GEEZLE_SAY_1'),
(0, -1000630, 'What''s the big idea? You nearly blew my cover, idiot! I told you to put the compass and navigation maps somewhere safe - not out in the open for any fool to discover.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 4, 'geezle - SPARK_SAY_2'),
(0, -1000631, 'The Master has gone to great lengths to secure information about the whereabouts of the Exodar. You could have blown the entire operation, including the cover of our spy on the inside.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'geezle - SPARK_SAY_3'),
(0, -1000632, 'Relax, Spark! I have it all under control. We''ll strip mine the Exodar right out from under ''em - making both you and I very, very rich in the process.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 4, 'geezle - GEEZLE_SAY_4'),
(0, -1000633, 'Relax? Do you know what Kael''thas does to those that fail him, Geezle? Eternal suffering and pain... Do NOT screw this up, fool.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'geezle - SPARK_SAY_5'),
(0, -1000634, 'Our Bloodmyst scouts have located our contact. The fool, Velen, will soon leave himself open and defenseless -- long enough for us to strike! Now get out of my sight before I vaporize you...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'geezle - SPARK_SAY_6'),
(0, -1000635, 'Yes, sir. It won''t happen again...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'geezle - GEEZLE_SAY_7'),
(0, -1000636, 'picks up the naga flag.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'geezle - EMOTE_SPARK'),
(0, -1800064, 'Beware! We are attacked!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 1, 'npc_anchorite_truuen - SAY_WP_0'),
(0, -1800065, 'It must be the purity of the Mark of the Lightbringer that is drawing forth the Scourge to attack us. We must proceed with caution lest we be overwhelmed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 1, 'npc_anchorite_truuen - SAY_WP_1'),
(0, -1800066, 'This land truly needs to be cleansed by the Light! Let us continue on to the tomb. It isn''t far now...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 1, 'npc_anchorite_truuen - SAY_WP_2'),
(0, -1800067, 'Be welcome, friends!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 1, 'npc_anchorite_truuen - SAY_WP_3'),
(0, -1800068, 'Thank you for coming here in remembrance of me. Your efforts in recovering that symbol, while unnecessary, are certainly touching to an old man''s heart. ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 1, 'npc_anchorite_truuen - SAY_WP_4'),
(0, -1800069, 'Please, rise my friend. Keep the Blessing as a symbol of the strength of the Light and how heroes long gone might once again rise in each of us to inspire. ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 1, 'npc_anchorite_truuen - SAY_WP_5'),
(0, -1800070, 'Thank you my friend for making this possible. This is a day that I shall never forget! I think I will stay a while. Please return to High Priestess MacDonnell at the camp. I know that she''ll be keenly interested to know of what has transpired here.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 1, 'npc_anchorite_truuen - SAY_WP_6'),
(0, -1000600, 'Ow! OK, I''ll get back to work, $N!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'npc_lazy_peon - SAY_WP_0'),
(28604, -1571042, 'Ouch! Watch where you''re tugging!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'adventurous dwarf SAY_DWARF_OUCH'),
(28604, -1571043, 'Glad I could help!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'adventurous dwarf SAY_DWARF_HELP'),
(29281, -1575015, 'My liege! I have done as you asked, and now beseech you for your blessing!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Svala Sorrowgrave SAY_DIALOG_WITH_ARTHAS_1'),
(29281, -1575016, 'The sensation is... beyond my imagining. I am yours to command, my king.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Svala Sorrowgrave SAY_DIALOG_WITH_ARTHAS_2'),
(29281, -1575017, 'I will be happy to slaughter them in your name! Come, enemies of the Scourge! I will show you the might of the Lich King!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Svala Sorrowgrave SAY_DIALOG_WITH_ARTHAS_3'),
(26668, -1575018, 'I will vanquish your soul!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Svala Sorrowgrave SAY_AGGRO'),
(26668, -1575022, 'Nooo! I did not come this far... to...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Svala Sorrowgrave SAY_DEATH'),
(26687, -1575000, 'What this place? I will destroy you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Gortok Palehoof SAY_AGGRO'),
(26687, -1575001, 'You die! That what master wants!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Gortok Palehoof SAY_SLAY_1'),
(26687, -1575002, 'An easy task!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Gortok Palehoof SAY_SLAY_2'),
(27978, -1599014, 'Folvynn buul hrom onn!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Sjonnir The Ironshaper SAY_SLAY_3'),
(29304, -1604018, 'Ye not breathin''! Good.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Slad''ran SAY_SLAY_1'),
(29304, -1604019, 'You ssscared now?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Slad''ran SAY_SLAY_2'),
(29304, -1604020, 'I''ll eat you next, mon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Slad''ran SAY_SLAY_3'),
(29304, -1604021, 'I sssee now... Ssscourge wasss not... our greatessst enemy...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Slad''ran SAY_DEATH'),
(29304, -1604022, 'Minionsss of the scale, heed my call!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Slad''ran SAY_SUMMON_SNAKES'),
(29304, -1604023, 'A thousssand fangs gonna rend your flesh!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Slad''ran SAY_SUMMON_CONSTRICTORS'),
(29306, -1604000, 'I''m gonna spill your guts, mon!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Gal''darah SAY_AGGRO'),
(29306, -1604001, 'What a rush!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Gal''darah SAY_SLAY_1'),
(29306, -1604003, 'I told ya so!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Gal''darah SAY_SLAY_3'),
(29306, -1604004, 'Even the mighty... can fall.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Gal''darah SAY_DEATH'),
(29306, -1604005, 'Gut them! Impale them!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Gal''darah SAY_SUMMON_RHINO_1'),
(29306, -1604006, 'KILL THEM ALL!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Gal''darah SAY_SUMMON_RHINO_2'),
(29306, -1604007, 'Say hello to my BIG friend!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Gal''darah SAY_SUMMON_RHINO_3'),
(29306, -1604008, 'Ain''t gonna be nottin'' left after this!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Gal''darah SAY_TRANSFORM_1'),
(29309, -1619017, 'Perhaps we will be allies soon.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Elder Nadox SAY_SLAY_3'),
(29309, -1619018, 'Master, is my service complete?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Elder Nadox SAY_DEATH'),
(29309, -1619019, 'The young must not grow hungry...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Elder Nadox SAY_EGG_SAC_1'),
(29310, -1619000, 'These are sacred halls! Your intrusion will be met with death.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Jedoga Shadowseeker SAY_AGGRO'),
(29310, -1619001, 'Who among you is devoted?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Jedoga Shadowseeker SAY_SACRIFICE_1_1'),
(29310, -1619002, 'You there! Step forward!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Jedoga Shadowseeker SAY_SACRIFICE_1_2'),
(29310, -1619008, 'Do not expect your sacrilege... to go unpunished.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Jedoga Shadowseeker SAY_DEATH'),
(29310, -1619009, 'The elements themselves will rise up against the civilized world! Only the faithful will be spared!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Jedoga Shadowseeker SAY_PREACHING_1'),
(29311, -1619030, 'Shgla''yos plahf mh''naus.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Herald Volazj SAY_AGGRO'),
(29311, -1619034, 'Iilth vwah, uhn''agth fhssh za.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Herald Volazj SAY_DEATH_1'),
(33118, -1603229, 'Ignis the Furnace Master begins to cast Flame Jets!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'IGNIS EMOTE_JETS'),
(26668, -1575019, 'You were a fool to challenge the power of the Lich King!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Svala Sorrowgrave SAY_SLAY_1'),
(26668, -1575020, 'Your will is done, my king.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Svala Sorrowgrave SAY_SLAY_2'),
(29306, -1604002, 'Who needs gods, when WE ARE GODS!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Gal''darah SAY_SLAY_2'),
(29306, -1604009, 'You wanna see power? I''m gonna show you power!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Gal''darah SAY_TRANSFORM_2'),
(29310, -1619003, 'Yogg-Saron, grant me your power!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Jedoga Shadowseeker SAY_SACRIFICE_2_1'),
(29310, -1619004, 'Master, a gift for you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Jedoga Shadowseeker SAY_SACRIFICE_2_2'),
(29310, -1619005, 'Glory to Yogg-Saron!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Jedoga Shadowseeker SAY_SLAY_1'),
(29310, -1619007, 'Get up! You haven''t suffered enough.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Jedoga Shadowseeker SAY_SLAY_3'),
(29310, -1619010, 'Immortality can be yours. But only if you pledge yourself fully to Yogg-Saron!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Jedoga Shadowseeker SAY_PREACHING_2'),
(29310, -1619011, 'Here on the very borders of his domain. You will experience powers you would never have imagined!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Jedoga Shadowseeker SAY_PREACHING_3'),
(29310, -1619012, 'You have traveled long and risked much to be here. Your devotion shall be rewarded.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Jedoga Shadowseeker SAY_PREACHING_4'),
(29310, -1619013, 'The faithful shall be exalted! But there is more work to be done. We will press on until all of Azeroth lies beneath his shadow!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Jedoga Shadowseeker SAY_PREACHING_5'),
(29309, -1619020, 'Shhhad ak kereeesshh chak-k-k!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Elder Nadox SAY_EGG_SAC_2'),
(29311, -1619031, 'Ywaq puul skshgn: on''ma yeh''glu zuq.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Herald Volazj SAY_SLAY_1'),
(29311, -1619032, 'Ywaq ma phgwa''cul hnakf.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Herald Volazj SAY_SLAY_2'),
(29311, -1619033, 'Ywaq maq oou; ywaq maq ssaggh. Ywaq ma shg''fhn.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Herald Volazj SAY_SLAY_3'),
(33186, -1603268, 'Razorscale grounded permanently!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'EMOTE_PERMA'),
(33186, -1603267, 'Razorscale takes a deep breath...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'EMOTE_BREATH'),
(33287, -1603266, 'Harpoon Turret is ready for use!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'EMOTE_HARPOON'),
(33287, -1603265, 'Fires out! Let''s rebuild those turrets!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'SAY_TURRETS'),
(33287, -1603264, 'Ready to move out, keep those dwarves off of our backs!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'SAY_AGGRO_3'),
(33287, -1603263, 'Be on the lookout! Mole machines will be surfacing soon with those nasty Iron dwarves aboard!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'SAY_AGGRO_2'),
(33287, -1603262, 'Give us a moment to prepare to build the turrets.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'SAY_AGGRO_1'),
(0, -1000002, '%s goes into a frenzy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'EMOTE_GENERIC_FRENZY'),
(0, -1000003, '%s becomes enraged!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'EMOTE_GENERIC_ENRAGED'),
(26668, -1575023, 'Your death approaches.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13850, 1, 0, 0, 'svala SAY_SACRIFICE_1'),
(26668, -1575024, 'Go now to my master.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13851, 1, 0, 0, 'svala SAY_SACRIFICE_2'),
(26668, -1575025, 'Your end is inevitable.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13852, 1, 0, 0, 'svala SAY_SACRIFICE_3'),
(26668, -1575026, 'Yor-guul mak!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13853, 1, 0, 0, 'svala SAY_SACRIFICE_4'),
(26668, -1575027, 'Any last words?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13854, 1, 0, 0, 'svala SAY_SACRIFICE_5'),
(29309, -1619015, 'Sleep now, in the cold dark.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Elder Nadox SAY_SLAY_1'),
(29310, -1619006, 'You are unworthy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Jedoga Shadowseeker SAY_SLAY_2'),
(26668, -1575021, 'Another soul for my master.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Svala Sorrowgrave SAY_SLAY_3'),
(29309, -1619016, 'For the Lich King!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Elder Nadox SAY_SLAY_2'),
(25248, -1571047, 'I suppose this is it, then? I won''t go down quietly!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'npc_hidden_cultist SAY_HIDDEN_CULTIST_4'),
(25827, -1571046, 'You don''t know who you''re messing with! Death beckons!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'npc_hidden_cultist SAY_HIDDEN_CULTIST_3'),
(25828, -1571045, 'Finally! This charade is over... Arthas give me strength!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'npc_hidden_cultist SAY_HIDDEN_CULTIST_2'),
(25248, -1571044, 'Well...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'npc_hidden_cultist SAY_HIDDEN_CULTIST_1'),
(4979, -1603502, 'Hey, thanks.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Theramore Guard - SAY_QUEST1'),
(4979, -1603503, '...receive 50 percent off deserter undergarments? What is this garbage?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Theramore Guard - SAY_QUEST2'),
(4979, -1603504, '...to establish a fund for the purchase of hair gel? I like my hair the way it is, thanks!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Theramore Guard - SAY_QUEST3'),
(4979, -1603505, '...the deserters seek a Theramore where citizens will be free to juggle at all hours of the day? What is this nonsense?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Theramore Guard - SAY_QUEST4'),
(4979, -1603506, '...to establish the chicken as the official symbol of Theramore?! These guys are nuts!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Theramore Guard - SAY_QUEST5'),
(4979, -1603507, '...as a deserter, you''ll enjoy activities like tethered swimming and dog grooming? How ridiculous!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Theramore Guard - SAY_QUEST6'),
(4979, -1603508, 'This... this is a joke, right?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Theramore Guard - SAY_QUEST7'),
(4979, -1603509, 'I''d never join anything like this. Better keep this, though. It''ll come in handy in the privy...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Theramore Guard - SAY_QUEST8'),
(4979, -1603510, 'What a bunch of lunatics! You actually believe this stuff?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Theramore Guard - SAY_QUEST9'),
(27570, -1603535, 'We''re all gonna die!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Smoke ''Em Out - Say1'),
(27570, -1603536, 'Gotta get out of here!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Smoke ''Em Out - Say2'),
(27570, -1603537, 'No way I''m stickin'' around!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Smoke ''Em Out - Say3'),
(27570, -1603538, 'Forget this! I''m going home!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Smoke ''Em Out - Say4'),
(27570, -1603539, 'I didn''t sign up for this!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 'Smoke ''Em Out - Say5'),
(33271, -1603289, 'A cloud of saronite vapors coalesces nearby!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'General Vezax - Emote1'),
(33271, -1603297, 'The saronite vapors mass and swirl violently, merging into a monstrous form!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'General Vezax - Emote2'),
(33271, -1603298, 'A saronite barrier appears around General Vezax!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'General Vezax - Emote3'),
(33271, -1603299, 'General Vezax roars and surges with dark might!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 0, 0, 'General Vezax - Emote4'),
(36993, -1658066, 'Heroes, to me!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16614, 1, 0, 0, 'Jaina SAY_JAYNA_OUTRO_3'),
(36990, -1658067, 'Take cover behind me! Quickly!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17037, 1, 0, 0, 'Sylvanas SAY_SYLVANAS_OUTRO_3'),
(36993, -1658068, 'The Frost Queen is gone. We must keep moving - our objective is near.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16615, 0, 0, 0, 'Jaina SAY_JAYNA_OUTRO_4'),
(36990, -1658069, 'I thought he''d never shut up. At last, Sindragosa silenced that long-winded fool. To the Halls of Reflection, champions! Our objective is near... I can sense it.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17036, 0, 0, 0, 'Sylvanas SAY_SYLVANAS_OUTRO_4'),
(36993, -1658070, 'I... I could not save them... Damn you, Arthas! DAMN YOU!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16616, 0, 0, 0, 'Jaina SAY_JAYNA_OUTRO_5'),
(18445, -1800071, 'Thanks, $C! I''m sure my dad will reward you greatly! Bye!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(20812, -1800072, 'This is the last time I get caught!I promise! Bye!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(18369, -1800073, 'Thank you for saving me again!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(17682, -1800074, 'Go to the west', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(10096, -1230003, 'You have been sentenced to death for crimes against the Dark Iron nation!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'npc_grimstone SCRIPT_TEXT1'),
(10096, -1230004, 'The Sons of Thaurissan shall watch you perish in the Ring of the Law!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'npc_grimstone SCRIPT_TEXT2'),
(10096, -1230005, 'Unleash the fury and let it be done!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'npc_grimstone SCRIPT_TEXT3'),
(10096, -1230006, 'Haha! I bet you thought you were done!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'npc_grimstone SCRIPT_TEXT4'),
(10096, -1230007, 'But your real punishment lies ahead.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'npc_grimstone SCRIPT_TEXT5'),
(10096, -1230008, 'Good riddance!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 'npc_grimstone SCRIPT_TEXT6'),
(27654, -1578005, 'The prisoners shall not go free! The word of Malygos is law!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13594, 1, 0, 0, 'SAY_AGGRO'),
(27654, -1578006, 'A fitting punishment!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13602, 1, 0, 0, 'SAY_KILL_1'),
(27654, -1578007, 'Sentence: executed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13603, 1, 0, 0, 'SAY_KILL_2'),
(27654, -1578008, 'Another casualty of war!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13604, 1, 0, 0, 'SAY_KILL_3'),
(27654, -1578009, 'The war... goes on.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13605, 1, 0, 0, 'SAY_DEATH'),
(27654, -1578010, 'It is too late to run!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13598, 1, 0, 0, 'SAY_PULL_1'),
(27654, -1578011, 'Gather ''round....', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13599, 1, 0, 0, 'SAY_PULL_2'),
(27654, -1578012, 'None shall escape!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13600, 1, 0, 0, 'SAY_PULL_3'),
(27654, -1578013, 'I condemn you to death!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13601, 1, 0, 0, 'SAY_PULL_4'),
(27654, -1578014, 'Tremble, worms!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13595, 1, 0, 0, 'SAY_STOMP_1'),
(27654, -1578015, 'I will crush you!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13596, 1, 0, 0, 'SAY_STOMP_2'),
(27654, -1578016, 'Can you fly?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13597, 1, 0, 0, 'SAY_STOMP_3');
-- Move text used in Svala Sorrowgrave from script_texts to  creature_text
-- Remove old script text for boss_svala.cpp
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1575027 AND -1575015;
DELETE FROM `creature_text` WHERE `entry` IN (26668,29281);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(26668,0,0, 'The sensation is... beyond my imagining. I am yours to command, my king.',14,0,0,0,0,13857, 'Svala Sorrowgrave SAY_DIALOG_WITH_ARTHAS_2'),
(26668,1,0, 'I will be happy to slaughter them in your name! Come, enemies of the Scourge! I will show you the might of the Lich King!',14,0,0,0,0,13858, 'Svala Sorrowgrave SAY_DIALOG_WITH_ARTHAS_3'),
(26668,2,0, 'I will vanquish your soul!',14,0,0,0,0,13842, 'Svala Sorrowgrave SAY_AGGRO'),
(26668,3,0, 'You were a fool to challenge the power of the Lich King!',14,0,0,0,0,13845, 'Svala Sorrowgrave SAY_SLAY_1'),
(26668,3,1, 'Your will is done, my king.',14,0,0,0,0,13847, 'Svala Sorrowgrave SAY_SLAY_2'),
(26668,3,2, 'Another soul for my master.',14,0,0,0,0,13848, 'Svala Sorrowgrave SAY_SLAY_3'),
(26668,4,0, 'Nooo! I did not come this far... to...',14,0,0,0,0,13855, 'Svala Sorrowgrave SAY_DEATH'),
(26668,5,0, 'Your death approaches.',14,0,0,0,0,13850, 'Svala Sorrowgrave SAY_SACRIFICE_1'),
(26668,5,1, 'Go now to my master.',14,0,0,0,0,13851, 'Svala Sorrowgrave SAY_SACRIFICE_2'),
(26668,5,2, 'Your end is inevitable.',14,0,0,0,0,13852, 'Svala Sorrowgrave SAY_SACRIFICE_3'),
(26668,5,3, 'Yor-guul mak!',14,0,0,0,0,13853, 'Svala Sorrowgrave SAY_SACRIFICE_4'),
(26668,5,4, 'Any last words?',14,0,0,0,0,13854, 'Svala Sorrowgrave SAY_SACRIFICE_5'),
(29281,0,0, 'My liege! I have done as you asked, and now beseech you for your blessing!',14,0,0,0,0,13856, 'Svala SAY_DIALOG_WITH_ARTHAS_1');
UPDATE `creature_template` SET `unit_flags`=2 WHERE `entry` IN (29281, 30809); -- And this, fixes her flag so script can be started (credit to ric)
UPDATE `creature` SET `spawntimesecs`=86400 WHERE `id`=29281; -- Set Svala's  spawn time
UPDATE  `creature_template` SET `flags_extra`=`flags_extra`|1 WHERE `entry`=30809; -- Set flags_extra = 1 for Svala hero difficulty
UPDATE `creature_template` SET `InhabitType`=7, `flags_extra`=`flags_extra`|130 WHERE `entry`=30805; -- Set same data on heroic ver to triggers
UPDATE `creature_template` SET `InhabitType`=7, `flags_extra`=`flags_extra`|128 WHERE `entry`=30771; -- Set same data on heroic ver to triggers
UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask`
|1 -- CHARM
|2 -- DISORIENTED
|4 -- DISARM
|8 -- DISTRACT
|16 -- FEAR
|32 -- GRIP
|64 -- ROOT
|128 -- PACIFY
|256 -- SILENCE
|512 -- SLEEP
|1024 -- SNARE
|2048 -- STUN
|4096 -- FREEZE
|8192 -- KNOCKOUT
|65536 -- POLYMORPH
|131072 -- BANISH
|524288 -- SHACKLE
|4194304 -- TURN
|8388608 -- HORROR
|67108864 -- DAZE
|536870912 -- SAPPED
WHERE `entry` IN (29281, 30809, 26668, 30810);
DELETE FROM `creature_template_addon` WHERE `entry`=29280;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(29280, 0, 0, 0, 1, 0, '54134');
INSERT IGNORE INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
(48267, 575, 296.632, -346.075, 90.5474, 4.60767), -- Svala Ritual - Player teleport position
(48276, 575, 296.651, -346.293, 108.5474, 1.58), -- Svala Ritual - Svala teleport position
(48271, 575, 296.42, -355.01, 90.94, 1.58), -- Summon Ritual Channeler positions
(48274, 575, 302.36, -352.01, 90.54, 2.20), -- Summon Ritual Channeler positions
(48275, 575, 291.39, -352.01, 90.54, 0.91); -- Summon Ritual Channeler positions
DELETE FROM `conditions` WHERE `SourceEntry` IN (48331,48246,48277) AND `SourceTypeOrReferenceId`=13;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 0, 48331, 0, 18, 1, 27327, 0, 0, '', NULL), -- Spell script target for flying sword
(13, 0, 48246, 0, 18, 1, 0, 0, 0, '', NULL), -- Spell script target for Flame Brazier's (on players only)
(13, 0, 48277, 0, 18, 1, 26555, 0, 0, '', NULL), -- Spell script target for Ritual Strike DMG -- Players
(13, 0, 48277, 0, 18, 1, 27327, 0, 0, '', NULL); -- Spell script target for Ritual Strike DMG -- Ritual Target
DELETE FROM `disables` WHERE `sourceType`=4 AND `entry`=7322;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id`=7322 AND `type`=11;
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES 
(7322, 11, 0, 0, 'achievement_incredible_hulk');
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=26555; -- Scourge Hulk
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=27273; -- Flame Brazier
DELETE FROM `smart_scripts` WHERE `entryorguid`=27273 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(27273, 0, 0, 0, 1, 0, 100, 1, 100, 100, 100, 100, 11, 48246, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Flame Brazier - Ball of Flame');
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_scourge_hulk' WHERE `entry`=26555;
UPDATE `creature_template` SET `ScriptName`='' WHERE `entry`=26668; -- "boss_svala_sorrowgrave" script is now merged with "boss_svala" script
UPDATE `creature_template` SET `ScriptName`='npc_spectator' WHERE `entry`=26667; -- Spectators escape script
UPDATE `creature_template` SET `ScriptName`='npc_ritual_channeler' WHERE `entry`=27281; -- Change 'mob_ritual_channeler' to 'npc_ritual_channeler'
DELETE FROM `spell_script_names` WHERE `spell_id`=48278;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(48278, 'spell_paralyze_pinnacle');
DELETE FROM `disables` WHERE `sourceType`=4 AND `entry`=6835;
DELETE FROM `achievement_criteria_data` WHERE `type`=11 AND `criteria_id`=6835;
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES
(6835, 11, 0, 0, 'achievement_lightning_struck');
-- Lightning Struck achievement move from criteria script to DB thx Vincent-Michael
DELETE FROM `achievement_criteria_data` WHERE `ScriptName`='achievement_lightning_struck';
DELETE FROM `achievement_criteria_data` WHERE `type`=7 AND `criteria_id`=6835;
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES
(6835, 7, 52092, 0, '');
DELETE FROM `creature_text` WHERE `entry`=16011;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(16011,0,0, 'An aura of necrotic energy blocks all healing!',41,0,100,0,0,0, 'Loatheb'),
(16011,1,0, 'The aura fades away, allowing for healing once more!',41,0,100,0,0,0, 'Loatheb'),
(16011,2,0, 'The aura''s power begins to wane!',41,0,100,0,0,0, 'Loatheb');
DELETE FROM `disables` WHERE `sourceType`=4 AND `entry` IN (7612,7613);
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (7612,7613);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(7612,11,0,0, 'achievement_spore_loser'),
(7612,12,0,0,''),
(7613,11,0,0, 'achievement_spore_loser'),
(7613,12,1,0,'');
-- Missing Image of Arthas say text
DELETE FROM `creature_text` WHERE `entry`=29280;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(29280,0,0, 'Your sacrifice is a testament to your obedience. Indeed you are worthy of this charge. Arise, and forever be known as Svala Sorrowgrave!',14,0,0,0,0,14732, 'Image of Arthas SAY_DIALOG_OF_ARTHAS_1'),
(29280,1,0, 'Your first test awaits you. Destroy our uninvited guests.',14,0,0,0,0,14733, 'Image of Arthas SAY_DIALOG_OF_ARTHAS_2');
-- Fix spamming of spell Ball of Flame (48246)
UPDATE `smart_scripts` SET `event_type`=54, `event_param1`=0, `event_param2`=0, `event_param3`=0, `event_param4`=0 WHERE `entryorguid`=27273;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (7604, 7605) AND `type` = 18;
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `scriptname`) VALUES
(7604, 18, 0, 0, ""),
(7605, 18, 0, 0, "");
DELETE FROM `disables` WHERE `sourcetype` = 4 AND `entry` IN (7604, 7605);
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (7604, 7605) AND `type` IN (18,11);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(7604,11,0,0, 'achievement_polarity_switch'),
(7605,11,0,0, 'achievement_polarity_switch');

-- Enraged Felbat SAI
SET @ENTRY := 9521;
SET @SPELL_POISON := 744;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,5000,12000,15000,11,@SPELL_POISON,1,0,0,0,0,2,0,0,0,0,0,0,0,"Enraged Felbat - In Combat - Cast Poison");

-- Enraged Gryphon SAI
SET @ENTRY := 9526;
SET @SPELL_REND := 18106;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,6000,12000,15000,11,@SPELL_REND,1,0,0,0,0,2,0,0,0,0,0,0,0,"Enraged Gryphon - In Combat - Cast Rend");

-- Enraged Wyvern SAI
SET @ENTRY := 9297;
SET @SPELL_POISON := 744;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,5000,12000,15000,11,@SPELL_POISON,1,0,0,0,0,2,0,0,0,0,0,0,0,"Enraged Wyvern - In Combat - Cast Poison");

-- Enraged Hippogryph SAI
SET @ENTRY := 9527;
SET @SPELL_REND := 18106;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,6000,12000,15000,11,@SPELL_REND,1,0,0,0,0,2,0,0,0,0,0,0,0,"Enraged Hippogryph - In Combat - Cast Rend");

-- Dungar Longdrink SAI
SET @ENTRY := 352;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Dungar Longdrink - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Dungar Longdrink - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dungar Longdrink - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Dungar Longdrink");

-- Thor SAI
SET @ENTRY := 523;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Thor - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Thor - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thor - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Thor");

-- Ariena Stormfeather SAI
SET @ENTRY := 931;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Ariena Stormfeather - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Ariena Stormfeather - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ariena Stormfeather - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Ariena Stormfeather");

-- Thysta SAI
SET @ENTRY := 1387;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Thysta - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Thysta - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thysta - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Thysta");

-- Shellei Brondir SAI
SET @ENTRY := 1571;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Shellei Brondir - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Shellei Brondir - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shellei Brondir - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Shellei Brondir");

-- Thorgrum Borrelson SAI
SET @ENTRY := 1572;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Thorgrum Borrelson - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Thorgrum Borrelson - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thorgrum Borrelson - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Thorgrum Borrelson");

-- Gryth Thurden SAI
SET @ENTRY := 1573;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Gryth Thurden - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Gryth Thurden - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gryth Thurden - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Gryth Thurden");

-- Karos Razok SAI
SET @ENTRY := 2226;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9521,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Karos Razok - On Aggro - Summon Enraged Felbat"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9521,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Karos Razok - On Aggro - Summon Enraged Felbat"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Karos Razok - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Karos Razok");

-- Borgus Stoutarm SAI
SET @ENTRY := 2299;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Borgus Stoutarm - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Borgus Stoutarm - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Borgus Stoutarm - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Borgus Stoutarm");

-- Zarise SAI
SET @ENTRY := 2389;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9521,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Zarise - On Aggro - Summon Enraged Felbat"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9521,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Zarise - On Aggro - Summon Enraged Felbat"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Zarise - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Zarise");

-- Felicia Maline SAI
SET @ENTRY := 2409;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Felicia Maline - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Felicia Maline - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Felicia Maline - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Felicia Maline");

-- Darla Harris SAI
SET @ENTRY := 2432;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Darla Harris - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Darla Harris - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Darla Harris - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Darla Harris");

-- Cedrik Prose SAI
SET @ENTRY := 2835;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Cedrik Prose - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Cedrik Prose - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cedrik Prose - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Cedrik Prose");

-- Urda SAI
SET @ENTRY := 2851;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Urda - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Urda - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Urda - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Urda");

-- Gringer SAI
SET @ENTRY := 2858;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Gringer - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Gringer - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gringer - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Gringer");

-- Gyll SAI
SET @ENTRY := 2859;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Gyll - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Gyll - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gyll - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Gyll");

-- Gorrik SAI
SET @ENTRY := 2861;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Gorrik - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Gorrik - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gorrik - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Gorrik");

-- Lanie Reed SAI
SET @ENTRY := 2941;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Lanie Reed - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Lanie Reed - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lanie Reed - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Lanie Reed");

-- Tal SAI
SET @ENTRY := 2995;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Tal - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Tal - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tal - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Tal");

-- Grisha SAI
SET @ENTRY := 3305;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Grisha - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Grisha - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grisha - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Grisha");

-- Doras SAI
SET @ENTRY := 3310;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Doras - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Doras - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Doras - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Doras");

-- Devrak SAI
SET @ENTRY := 3615;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Devrak - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Devrak - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Devrak - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Devrak");

-- Vesprystus SAI
SET @ENTRY := 3838;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Vesprystus - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Vesprystus - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vesprystus - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Vesprystus");

-- Caylais Moonfeather SAI
SET @ENTRY := 3841;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Caylais Moonfeather - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Caylais Moonfeather - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Caylais Moonfeather - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Caylais Moonfeather");

-- Daelyshia SAI
SET @ENTRY := 4267;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Daelyshia - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Daelyshia - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daelyshia - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Daelyshia");

-- Tharm SAI
SET @ENTRY := 4312;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Tharm - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Tharm - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tharm - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Tharm");

-- Gorkas SAI
SET @ENTRY := 4314;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Gorkas - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Gorkas - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gorkas - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Gorkas");

-- Nyse SAI
SET @ENTRY := 4317;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Nyse - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Nyse - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nyse - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Nyse");

-- Thyssiana SAI
SET @ENTRY := 4319;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Thyssiana - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Thyssiana - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thyssiana - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Thyssiana");

-- Baldruc SAI
SET @ENTRY := 4321;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Baldruc - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Baldruc - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Baldruc - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Baldruc");

-- Teloren SAI
SET @ENTRY := 4407;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Teloren - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Teloren - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Teloren - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Teloren");

-- Michael Garrett SAI
SET @ENTRY := 4551;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9521,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Michael Garrett - On Aggro - Summon Enraged Felbat"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9521,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Michael Garrett - On Aggro - Summon Enraged Felbat"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Michael Garrett - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Michael Garrett");

-- Breyk SAI
SET @ENTRY := 6026;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Breyk - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Breyk - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Breyk - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Breyk");

-- Baritanas Skyriver SAI
SET @ENTRY := 6706;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Baritanas Skyriver - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Baritanas Skyriver - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Baritanas Skyriver - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Baritanas Skyriver");

-- Thalon SAI
SET @ENTRY := 6726;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Thalon - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Thalon - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thalon - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Thalon");

-- Bera Stonehammer SAI
SET @ENTRY := 7823;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Bera Stonehammer - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Bera Stonehammer - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bera Stonehammer - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Bera Stonehammer");

-- Bulkrek Ragefist SAI
SET @ENTRY := 7824;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Bulkrek Ragefist - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Bulkrek Ragefist - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bulkrek Ragefist - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Bulkrek Ragefist");

-- Guthrum Thunderfist SAI
SET @ENTRY := 8018;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Guthrum Thunderfist - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Guthrum Thunderfist - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Guthrum Thunderfist - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Guthrum Thunderfist");

-- Fyldren Moonfeather SAI
SET @ENTRY := 8019;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Fyldren Moonfeather - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Fyldren Moonfeather - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fyldren Moonfeather - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Fyldren Moonfeather");

-- Shyn SAI
SET @ENTRY := 8020;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Shyn - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Shyn - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shyn - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Shyn");

-- Alexandra Constantine SAI
SET @ENTRY := 8609;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Alexandra Constantine - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Alexandra Constantine - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Alexandra Constantine - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Alexandra Constantine");

-- Kroum SAI
SET @ENTRY := 8610;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Kroum - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Kroum - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kroum - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Kroum");

-- Omusa Thunderhorn SAI
SET @ENTRY := 10378;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Omusa Thunderhorn - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Omusa Thunderhorn - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Omusa Thunderhorn - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Omusa Thunderhorn");

-- Gryfe SAI
SET @ENTRY := 10583;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Gryfe - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Gryfe - On Aggro - Summon Enraged Wyvern");

-- Sindrayl SAI
SET @ENTRY := 10897;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Sindrayl - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Sindrayl - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sindrayl - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Sindrayl");

-- Maethrya SAI
SET @ENTRY := 11138;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Maethrya - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Maethrya - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Maethrya - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Maethrya");

-- Yugrek SAI
SET @ENTRY := 11139;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Yugrek - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Yugrek - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Yugrek - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Yugrek");

-- Shardi SAI
SET @ENTRY := 11899;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Shardi - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Shardi - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shardi - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Shardi");

-- Brakkar SAI
SET @ENTRY := 11900;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Brakkar - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Brakkar - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Brakkar - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Shardi");

-- Andruk SAI
SET @ENTRY := 11901;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Andruk - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Andruk - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Andruk - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Andruk");

-- Jarrodenus SAI
SET @ENTRY := 12577;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Jarrodenus - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Jarrodenus - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jarrodenus - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Jarrodenus");

-- Mishellena SAI
SET @ENTRY := 12578;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Mishellena - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Mishellena - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mishellena - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Mishellena");

-- Bibilfaz Featherwhistle SAI
SET @ENTRY := 12596;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Bibilfaz Featherwhistle - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Bibilfaz Featherwhistle - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bibilfaz Featherwhistle - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Bibilfaz Featherwhistle");

-- Vhulgra SAI
SET @ENTRY := 12616;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Vhulgra - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Vhulgra - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vhulgra - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Vhulgra");

-- Khaelyn Steelwing SAI
SET @ENTRY := 12617;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Khaelyn Steelwing - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Khaelyn Steelwing - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Khaelyn Steelwing - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Khaelyn Steelwing");

-- Georgia SAI
SET @ENTRY := 12636;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9521,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Georgia - On Aggro - Summon Enraged Felbat"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9521,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Georgia - On Aggro - Summon Enraged Felbat"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Georgia - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Georgia");

-- Faustron SAI
SET @ENTRY := 12740;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Faustron - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Faustron - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Faustron - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Faustron");

-- Vahgruk SAI
SET @ENTRY := 13177;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Vahgruk - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Vahgruk - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vahgruk - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Vahgruk");

-- Cloud Skydancer SAI
SET @ENTRY := 15177;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Cloud Skydancer - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Cloud Skydancer - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cloud Skydancer - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Cloud Skydancer");

-- Runk Windtamer SAI
SET @ENTRY := 15178;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Runk Windtamer - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Runk Windtamer - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Runk Windtamer - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Runk Windtamer");

-- Skymaster Sunwing SAI
SET @ENTRY := 16189;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9521,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Skymaster Sunwing - On Aggro - Summon Enraged Felbat"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9521,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Skymaster Sunwing - On Aggro - Summon Enraged Felbat"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Skymaster Sunwing - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Skymaster Sunwing");

-- Skymistress Gloaming SAI
SET @ENTRY := 16192;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9521,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Skymistress Gloaming - On Aggro - Summon Enraged Felbat"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9521,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Skymistress Gloaming - On Aggro - Summon Enraged Felbat"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Skymistress Gloaming - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Skymistress Gloaming");

-- Bragok SAI
SET @ENTRY := 16227;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Bragok - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Bragok - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bragok - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Skymistress Gloaming");

-- Barley SAI
SET @ENTRY := 16587;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Barley - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Barley - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Barley - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Barley");

-- Flightmaster Krill Bitterhue SAI
SET @ENTRY := 16822;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Flightmaster Krill Bitterhue - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Flightmaster Krill Bitterhue - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Flightmaster Krill Bitterhue - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Flightmaster Krill Bitterhue");

-- Laando SAI
SET @ENTRY := 17554;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Laando - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Laando - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Laando - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Laando");

-- Stephanos SAI
SET @ENTRY := 17555;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Stephanos - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Stephanos - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stephanos - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Stephanos");

-- Kuma SAI
SET @ENTRY := 18785;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Kuma - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Kuma - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kuma - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Kuma");

-- Munci SAI
SET @ENTRY := 17555;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Munci - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Munci - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Munci - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Munci");

-- Furgu SAI
SET @ENTRY := 18789;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Furgu - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Furgu - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Furgu - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Furgu");

-- Du'ga SAI
SET @ENTRY := 18791;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Du'ga - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Du'ga - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Du'ga - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Du'ga");

-- Kerna SAI
SET @ENTRY := 18807;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Kerna - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Kerna - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kerna - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Kerna");

-- Gursha SAI
SET @ENTRY := 18808;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Gursha - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Gursha - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gursha - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Gursha");

-- Furnan Skysoar SAI
SET @ENTRY := 18809;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Furnan Skysoar - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Furnan Skysoar - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Furnan Skysoar - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Furnan Skysoar");

-- Amerun Leafshade SAI
SET @ENTRY := 18937;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Amerun Leafshade - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Amerun Leafshade - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Amerun Leafshade - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Amerun Leafshade");

-- Krexcil SAI
SET @ENTRY := 18938;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Krexcil - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Krexcil - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Krexcil - On Aggro - Say Line 0");

-- Brubeck Stormfoot SAI
SET @ENTRY := 18939;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Brubeck Stormfoot - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Brubeck Stormfoot - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Brubeck Stormfoot - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Brubeck Stormfoot");

-- Nutral SAI
SET @ENTRY := 18940;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Nutral - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Nutral - On Aggro - Summon Enraged Wyvern");

-- Innalia SAI
SET @ENTRY := 18942;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Innalia - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Innalia - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Innalia - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Innalia");

-- Unoke Tenderhoof SAI
SET @ENTRY := 18953;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Unoke Tenderhoof - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Unoke Tenderhoof - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Unoke Tenderhoof - On Aggro - Say Line 0");

DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Unoke Tenderhoof");

-- Drek'Gol SAI
SET @ENTRY := 19317;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Drek'Gol - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Drek'Gol - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Drek'Gol - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Drek'Gol");

-- Amilya Airheart SAI
SET @ENTRY := 19558;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Amilya Airheart - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Amilya Airheart - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Amilya Airheart - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Amilya Airheart");

-- Maddix SAI
SET @ENTRY := 19581;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Maddix - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Maddix - On Aggro - Summon Enraged Wyvern");

-- Grennik SAI
SET @ENTRY := 19583;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Grennik - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Grennik - On Aggro - Summon Enraged Wyvern");

-- Harpax SAI
SET @ENTRY := 20515;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Harpax - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Harpax - On Aggro - Summon Enraged Wyvern");

-- Alieshor SAI
SET @ENTRY := 21766;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Alieshor - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Alieshor - On Aggro - Summon Enraged Wyvern");

-- Fhyn Leafshadow SAI
SET @ENTRY := 22216;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Fhyn Leafshadow - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Fhyn Leafshadow - On Aggro - Summon Enraged Wyvern");

-- Sky-Master Maxxor SAI
SET @ENTRY := 22455;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Sky-Master Maxxor - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Sky-Master Maxxor - On Aggro - Summon Enraged Wyvern");

-- Gorrim SAI
SET @ENTRY := 22931;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Gorrim - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Gorrim - On Aggro - Summon Enraged Wyvern");

-- Dyslix Silvergrub SAI
SET @ENTRY := 23612;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Dyslix Silvergrub - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Dyslix Silvergrub - On Aggro - Summon Enraged Wyvern");

-- Kiz Coilspanner SAI
SET @ENTRY := 24851;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Kiz Coilspanner - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Kiz Coilspanner - On Aggro - Summon Enraged Wyvern");

-- Ohura SAI
SET @ENTRY := 26560;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9521,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Ohura - On Aggro - Summon Enraged Felbat"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9521,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Ohura - On Aggro - Summon Enraged Felbat");

-- Grimwing SAI
SET @ENTRY := 29480;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Grimwing - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Grimwing - On Aggro - Summon Enraged Wyvern");

-- Nutral SAI
SET @ENTRY := 18940;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Nutral - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Nutral - On Aggro - Summon Enraged Wyvern");

-- Runetog Wildhammer SAI
SET @ENTRY := 20234;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Runetog Wildhammer - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Runetog Wildhammer - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Runetog Wildhammer - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Runetog Wildhammer");

-- Gur'zil SAI
SET @ENTRY := 20762;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Gur'zil - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Gur'zil - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gur'zil - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Gur'zil");

-- Rip Pedalslam SAI
SET @ENTRY := 21107;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Rip Pedalslam - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Rip Pedalslam - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Rip Pedalslam - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Rip Pedalslam");

-- Halu SAI
SET @ENTRY := 22485;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Halu - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Halu - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Halu - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Halu");

-- Suralais Farwind SAI
SET @ENTRY := 22935;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Suralais Farwind - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Suralais Farwind - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Suralais Farwind - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Suralais Farwind");

-- Nizzle SAI
SET @ENTRY := 24366;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Nizzle - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Nizzle - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nizzle - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Nizzle");

-- Tomas Riverwell SAI
SET @ENTRY := 26879;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Tomas Riverwell - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Tomas Riverwell - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tomas Riverwell - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Tomas Riverwell");

-- Pricilla Winterwind SAI
SET @ENTRY := 23736;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Pricilla Winterwind - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Pricilla Winterwind - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Pricilla Winterwind - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Pricilla Winterwind");

-- Celea Frozenmane SAI
SET @ENTRY := 24032;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Celea Frozenmane - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Celea Frozenmane - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Celea Frozenmane - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,2,100,0,0,0,"Celea Frozenmane");

-- James Ormsby SAI
SET @ENTRY := 24061;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"James Ormsby - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"James Ormsby - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"James Ormsby - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"James Ormsby");

-- Tobias Sarkhoff SAI
SET @ENTRY := 24155;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9521,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Tobias Sarkhoff - On Aggro - Summon Enraged Felbat"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9521,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Tobias Sarkhoff - On Aggro - Summon Enraged Felbat"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tobias Sarkhoff - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Tobias Sarkhoff");

-- Turida Coldwind SAI
SET @ENTRY := 25288;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Turida Coldwind - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Turida Coldwind - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Turida Coldwind - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Turida Coldwind");

-- Narzun Skybreaker SAI
SET @ENTRY := 26566;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Narzun Skybreaker - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Narzun Skybreaker - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Narzun Skybreaker - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Narzun Skybreaker");

-- Kara Thricestar SAI
SET @ENTRY := 26602;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Kara Thricestar - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Kara Thricestar - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kara Thricestar - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Kara Thricestar");

-- Lilleth Radescu SAI
SET @ENTRY := 26844;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9521,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Lilleth Radescu - On Aggro - Summon Enraged Felbat"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9521,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Lilleth Radescu - On Aggro - Summon Enraged Felbat"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lilleth Radescu - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Lilleth Radescu");

-- Junter Weiss SAI
SET @ENTRY := 26845;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9521,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Junter Weiss - On Aggro - Summon Enraged Felbat"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9521,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Junter Weiss - On Aggro - Summon Enraged Felbat"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Junter Weiss - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Junter Weiss");

-- Kareg SAI
SET @ENTRY := 26846;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Kareg - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Kareg - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kareg - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Kareg");

-- Omu Spiritbreeze SAI
SET @ENTRY := 26847;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Omu Spiritbreeze - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Omu Spiritbreeze - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Omu Spiritbreeze - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Omu Spiritbreeze");

-- Kimbiza SAI
SET @ENTRY := 26848;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Kimbiza - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Kimbiza - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kimbiza - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Kimbiza");

-- Numo Spiritbreeze SAI
SET @ENTRY := 26850;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Numo Spiritbreeze - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Numo Spiritbreeze - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Numo Spiritbreeze - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Numo Spiritbreeze");

-- Kragh SAI
SET @ENTRY := 26852;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Kragh - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Kragh - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kragh - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Kragh");

-- Makki Wintergale SAI
SET @ENTRY := 26853;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Makki Wintergale - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Makki Wintergale - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Makki Wintergale - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Makki Wintergale");

-- Samuel Clearbook SAI
SET @ENTRY := 26876;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Samuel Clearbook - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Samuel Clearbook - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Samuel Clearbook - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Samuel Clearbook");

-- Derek Rammel SAI
SET @ENTRY := 26877;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Derek Rammel - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Derek Rammel - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Derek Rammel - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Derek Rammel");

-- Rodney Wells SAI
SET @ENTRY := 26878;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Rodney Wells - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Rodney Wells - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Rodney Wells - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Rodney Wells");

-- Vana Grey SAI
SET @ENTRY := 26880;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Vana Grey - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Vana Grey - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Vana Grey - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,7,100,0,0,0,"Vana Grey");

-- Palena Silvercloud SAI
SET @ENTRY := 26881;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Palena Silvercloud - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Palena Silvercloud - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Palena Silvercloud - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Palena Silvercloud");

-- Warmage Adami SAI
SET @ENTRY := 27046;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Warmage Adami - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Warmage Adami - On Aggro - Summon Enraged Wyvern");

-- Bat Handler Adeline SAI
SET @ENTRY := 27344;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9521,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Bat Handler Adeline - On Aggro - Summon Enraged Felbat"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9521,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Bat Handler Adeline - On Aggro - Summon Enraged Felbat"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bat Handler Adeline - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Bat Handler Adeline");

-- The Spirit of Gnomeregan SAI
SET @ENTRY := 28037;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"The Spirit of Gnomeregan - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"The Spirit of Gnomeregan - On Aggro - Summon Enraged Wyvern");

-- Bilko Driftspark SAI
SET @ENTRY := 28195;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Bilko Driftspark - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Bilko Driftspark - On Aggro - Summon Enraged Wyvern");

-- Cid Flounderfix SAI
SET @ENTRY := 28196;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Cid Flounderfix - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Cid Flounderfix - On Aggro - Summon Enraged Wyvern");

-- Kip Trawlskip SAI
SET @ENTRY := 28197;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Kip Trawlskip - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Kip Trawlskip - On Aggro - Summon Enraged Wyvern");

-- Marvin Wobblesprocket SAI
SET @ENTRY := 28574;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Marvin Wobblesprocket - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Marvin Wobblesprocket - On Aggro - Summon Enraged Wyvern");

-- Baneflight SAI
SET @ENTRY := 28615;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Baneflight - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Baneflight - On Aggro - Summon Enraged Wyvern");

-- Danica Saint SAI
SET @ENTRY := 28618;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Danica Saint - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Danica Saint - On Aggro - Summon Enraged Wyvern");

-- Gurric SAI
SET @ENTRY := 28623;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Gurric - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Gurric - On Aggro - Summon Enraged Wyvern");

-- Maaka SAI
SET @ENTRY := 28624;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Maaka - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Maaka - On Aggro - Summon Enraged Wyvern");

-- Aludane Whitecloud SAI
SET @ENTRY := 28674;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Aludane Whitecloud - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Aludane Whitecloud - On Aggro - Summon Enraged Wyvern");

-- Skizzle Slickslide SAI
SET @ENTRY := 29721;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Skizzle Slickslide - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Skizzle Slickslide - On Aggro - Summon Enraged Wyvern");

-- Faldorf Bitterchill SAI
SET @ENTRY := 29750;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Faldorf Bitterchill - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Faldorf Bitterchill - On Aggro - Summon Enraged Wyvern");

-- Kabarg Windtamer SAI
SET @ENTRY := 29757;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Kabarg Windtamer - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Kabarg Windtamer - On Aggro - Summon Enraged Wyvern");

-- Breck Rockbrow SAI
SET @ENTRY := 29950;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Breck Rockbrow - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Breck Rockbrow - On Aggro - Summon Enraged Wyvern");

-- Shavalius the Fancy SAI
SET @ENTRY := 29951;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Shavalius the Fancy - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Shavalius the Fancy - On Aggro - Summon Enraged Wyvern");

-- Morlia Doomwing SAI
SET @ENTRY := 30314;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Morlia Doomwing - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Morlia Doomwing - On Aggro - Summon Enraged Wyvern");

-- Aedan Moran SAI
SET @ENTRY := 30433;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Aedan Moran - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Aedan Moran - On Aggro - Summon Enraged Wyvern");

-- Rafae SAI
SET @ENTRY := 30569;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Rafae - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Rafae - On Aggro - Summon Enraged Wyvern");

-- Arzo Safeflight SAI
SET @ENTRY := 30869;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Arzo Safeflight - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Arzo Safeflight - On Aggro - Summon Enraged Wyvern");

-- Herzo Safeflight SAI
SET @ENTRY := 30870;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Herzo Safeflight - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Herzo Safeflight - On Aggro - Summon Enraged Wyvern");

-- Penumbrius SAI
SET @ENTRY := 31069;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Penumbrius - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Penumbrius - On Aggro - Summon Enraged Wyvern");

-- Dreadwind SAI
SET @ENTRY := 31078;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Dreadwind - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Dreadwind - On Aggro - Summon Enraged Wyvern");

-- Halvdan SAI
SET @ENTRY := 32571;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Halvdan - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Halvdan - On Aggro - Summon Enraged Wyvern");

-- Helidan Lightwing SAI
SET @ENTRY := 33849;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Helidan Lightwing - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Helidan Lightwing - On Aggro - Summon Enraged Wyvern");

-- Frax Bucketdrop SAI
SET @ENTRY := 37888;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9526,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Frax Bucketdrop - On Aggro - Summon Enraged Gryphon"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Frax Bucketdrop - On Aggro - Summon Enraged Wyvern");

-- Galendror Whitewing SAI
SET @ENTRY := 30271;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Galendror Whitewing - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9527,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Galendror Whitewing - On Aggro - Summon Enraged Hippogryph"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Galendror Whitewing - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Galendror Whitewing");

-- Doras SAI
SET @ENTRY := 31426;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Doras - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9297,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Doras - On Aggro - Summon Enraged Wyvern"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Doras - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Doras");

-- Timothy Cunningham SAI
SET @ENTRY := 37915;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,12,9521,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Timothy Cunningham - On Aggro - Summon Enraged Felbat"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,9521,4,30000,0,0,0,1,0,0,0,0,0,0,0,"Timothy Cunningham - On Aggro - Summon Enraged Felbat"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Timothy Cunningham - On Aggro - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Guards!",14,1,100,0,0,0,"Timothy Cunningham");

-- Gossip for npc 6497 Astor Hadren from sniff
UPDATE `creature_template` SET `gossip_menu_id`=126,`AIName`='SmartAI',`ScriptName`='' WHERE `entry`=6497;
DELETE FROM `gossip_menu` WHERE `entry`=126 AND `text_id`=623;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (126,623);
DELETE FROM `gossip_menu` WHERE `entry`=125 AND `text_id`=624;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (125,624);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (126,125);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`) VALUES 
(126,0,0, "You''re Astor Hadren, right?",1,1,125),
(125,0,0, "You''ve got something I need, Astor. And I''ll be taking it now.",1,1,0);
-- SAI for npc 6497 Astor Hadren
DELETE FROM `smart_scripts` WHERE `entryorguid`=6497;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(6497,0,0,0,62,0,100,0,125,0,0,0,2,21,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Astor Hadren - Make Hostile on Gossip Select');
-- Gossip option condition
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=126;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`Comment`) VALUES 
(15,126,0,0,9,14420, 'Show Gossip Option If quest The Deathstalkers(new) is Incomplete');

-- Quest 12180 "The Captive Prospectors" 37013
-- Creature updates
UPDATE `creature` SET `spawntimesecs`=120 WHERE `id` IN (27113,27114,27115);
UPDATE `creature_template` SET `InhabitType`=1 WHERE `entry` IN (27113,27114,27115);
-- SAI for Prospector Gann
SET @ENTRY := 27113; -- NPC entry
SET @SPELL := 47978; -- Open Dun Argol Cage
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,8,0,100,0,@SPELL,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Prospector Gann - On Spellhit - Run script'),
(@ENTRY*100,9,0,0,0,0,100,0,1000,1000,1000,1000,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Prospector Gann - Script - set run'),
(@ENTRY*100,9,1,0,0,0,100,0,1000,1000,1000,1000,69,0,0,0,0,0,0,1,0,0,0,3579.263,-5125.724,167.1185,0,'Prospector Gann - Script - Moveto'),
(@ENTRY*100,9,2,0,0,0,100,0,2000,2000,2000,2000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Prospector Gann - Script - Say 0'),
(@ENTRY*100,9,3,0,0,0,100,0,5000,5000,5000,5000,69,0,0,0,0,0,0,1,0,0,0,3600.135,-5119.964,166.4886,0,'Prospector Gann - Script - Moveto'),
(@ENTRY*100,9,4,0,0,0,100,0,2000,2000,2000,2000,32,0,0,0,0,0,0,14,59407,188554,0,0,0,0,0,'Prospector Gann - Script - reset go'),
(@ENTRY*100,9,5,0,0,0,100,0,1000,1000,1000,1000,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Prospector Gann - Script - despawn');
-- SAI for Prospector Torgan
SET @ENTRY := 27114; -- NPC entry
SET @SPELL := 47978; -- Open Dun Argol Cage
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,8,0,100,0,@SPELL,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Prospector Torgan - On Spellhit - Run script'),
(@ENTRY*100,9,0,0,0,0,100,0,1000,1000,1000,1000,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Prospector Torgan - Script - set run'),
(@ENTRY*100,9,1,0,0,0,100,0,1000,1000,1000,1000,69,0,0,0,0,0,0,1,0,0,0,3467.921,-5114.096,236.9127,0,'Prospector Torgan - Script - Moveto'),
(@ENTRY*100,9,2,0,0,0,100,0,2000,2000,2000,2000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Prospector Torgan - Script - Say 0'),
(@ENTRY*100,9,3,0,0,0,100,0,5000,5000,5000,5000,69,0,0,0,0,0,0,1,0,0,0,3489.064,-5102.472,236.8901,0,'Prospector Torgan - Script - Moveto'),
(@ENTRY*100,9,4,0,0,0,100,0,2000,2000,2000,2000,32,0,0,0,0,0,0,14,59409,188554,0,0,0,0,0,'Prospector Torgan - Script - reset go'),
(@ENTRY*100,9,5,0,0,0,100,0,1000,1000,1000,1000,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Prospector Torgan - Script - despawn');
-- SAI for Prospector Varana
SET @ENTRY := 27115; -- NPC entry
SET @SPELL := 47978; -- Open Dun Argol Cage
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,8,0,100,0,@SPELL,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Prospector Varana - On Spellhit - Run script'),
(@ENTRY*100,9,0,0,0,0,100,0,1000,1000,1000,1000,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Prospector Varana - Script - set run'),
(@ENTRY*100,9,1,0,0,0,100,0,1000,1000,1000,1000,69,0,0,0,0,0,0,1,0,0,0,3379.451,-5100.344,326.5531,0,'Prospector Varana - Script - Moveto'),
(@ENTRY*100,9,2,0,0,0,100,0,2000,2000,2000,2000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Prospector Varana - Script - Say 0'),
(@ENTRY*100,9,3,0,0,0,100,0,5000,5000,5000,5000,69,0,0,0,0,0,0,1,0,0,0,3375.131,-5065.586,326.4890,0,'Prospector Varana - Script - Moveto'),
(@ENTRY*100,9,4,0,0,0,100,0,2000,2000,2000,2000,32,0,0,0,0,0,0,14,59408,188554,0,0,0,0,0,'Prospector Varana - Script - reset go'),
(@ENTRY*100,9,5,0,0,0,100,0,1000,1000,1000,1000,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Prospector Varana - Script - despawn');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry` IN (27113,27114,27115) AND `groupid` IN (0);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(27113,0,0, 'Thank you for rescuing me, but the others are still held on the tiers above!',12,0,100,1,0,0, 'Prospector Gann'),
(27114,0,0, 'Thank goodness! I was worried they were going to press me into service in their war against the stone giants!',12,0,100,1,0,0, 'Prospector Torgan'),
(27115,0,0, 'These irons are crazy! They keep talking about serving their ''master Loken'' but from what I can tell, only a few receive orders from him.',12,0,100,1,0,0, 'Prospector Varana');
-- Made in Canada. Export to EU forbidden.
-- SAI for Murkblood Overseer
SET @ENTRY := 23309; -- NPC entry
SET @SPELL := 41121; -- Giving a Hand
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,62,0,100,0,8697,0,0,0,11,@SPELL,0,0,0,0,0,7,0,0,0,0,0,0,0,'Murkblood Overseer - On gossip Option select - cast spell');
-- Remove old script text for npc_millhouse_manastorm
DELETE FROM `script_texts` WHERE `entry` IN (-1552010, -1552022);
-- Add new creature_text for Millhouse ManaStorm
DELETE FROM `creature_text` WHERE `entry`=20977;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(20977, 0, 0, 'Where in Bonzo''s brass buttons am I? And who are-- yaaghh, that''s one mother of a headache!', 12, 0, 100, 0, 0, 0, 'Millhouse Manastorm'),
(20977, 1, 0, '"Lowly"? I don''t care who you are friend, no one refers to the mighty Millhouse Manastorm as "Lowly"! I have no idea what goes on here, but I will gladly join your fight against this impudent imbecile! Prepare to defend yourself, cretin!', 12, 0, 100, 0, 0, 0, 'Millhouse Manastorm'),
(20977, 2, 0, 'I just need to get some things ready first. You guys go ahead and get started. I need to summon up some water...', 12, 0, 100, 0, 0, 0, 'Millhouse Manastorm'),
(20977, 3, 0, 'Fantastic! Next, some protective spells. Yes! Now we''re cookin''', 12, 0, 100, 0, 0, 0, 'Millhouse Manastorm'),
(20977, 4, 0, 'And of course I''ll need some mana. You guys are gonna love this, just wait.', 12, 0, 100, 0, 0, 0, 'Millhouse Manastorm'),
(20977, 5, 0, 'Aaalllriiiight!! Who ordered up an extra large can of whoop-ass?', 12, 0, 100, 0, 0, 0, 'Millhouse Manastorm'),
(20977, 6, 0, 'I didn''t even break a sweat on that one.', 12, 0, 100, 0, 0, 0, 'Millhouse Manastorm'),
(20977, 6, 1, 'You guys, feel free to jump in anytime.', 12, 0, 100, 0, 0, 0, 'Millhouse Manastorm'),
(20977, 7, 0, 'I''m gonna light you up, sweet cheeks!', 12, 0, 100, 0, 0, 0, 'Millhouse Manastorm'),
(20977, 8, 0, 'Ice, ice, baby!', 12, 0, 100, 0, 0, 0, 'Millhouse Manastorm'),
(20977, 9, 0, 'Heal me! Oh, for the love of all that is holy, HEAL me! I''m dying!', 12, 0, 100, 0, 0, 0, 'Millhouse Manastorm'),
(20977, 10, 0, 'You''ll be hearing from my lawyer...', 12, 0, 100, 0, 0, 0, 'Millhouse Manastorm'),
(20977, 11, 0, 'Who''s bad? Who''s bad? That''s right: we bad!', 12, 0, 100, 0, 0, 0, 'Millhouse Manastorm');
-- Remove old script text for npc_warden_mellichar
DELETE FROM `script_texts` WHERE `entry` IN (-1552023, -1552030);
-- Add new creature_text for Warden Mellichar
DELETE FROM `creature_text` WHERE `entry`=20904;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(20904, 0, 0, 'I knew the prince would be angry but, I... I have not been myself. I had to let them out! The great one speaks to me, you see. Wait--outsiders. Kael''thas did not send you! Good... I''ll just tell the prince you released the prisoners!', 14, 0, 100, 0, 0, 0, 'Warden Mellichar'),
(20904, 1, 0, 'The naaru kept some of the most dangerous beings in existence here in these cells. Let me introduce you to another...', 14, 0, 100, 0, 0, 0, 'Warden Mellichar'),
(20904, 2, 0, 'Yes, yes... another! Your will is mine!', 14, 0, 100, 0, 0, 0, 'Warden Mellichar'),
(20904, 3, 0, 'Behold another terrifying creature of incomprehensible power!', 14, 0, 100, 0, 0, 0, 'Warden Mellichar'),
(20904, 4, 0, 'What is this? A lowly gnome? I will do better, O great one.', 14, 0, 100, 0, 0, 0, 'Warden Mellichar'),
(20904, 5, 0, 'Anarchy! Bedlam! Oh, you are so wise! Yes, I see it now, of course!', 14, 0, 100, 0, 0, 0, 'Warden Mellichar'),
(20904, 6, 0, 'One final cell remains. Yes, O great one, right away!', 14, 0, 100, 0, 0, 0, 'Warden Mellichar'),
(20904, 7, 0, 'Welcome, O great one. I am your humble servant.', 14, 0, 100, 0, 0, 0, 'Warden Mellichar');
-- Remove old script text for npc_torek
DELETE FROM `script_texts` WHERE `entry` IN (-1000106, -1000110);
-- Add creature texts for Torek
DELETE FROM `creature_text` WHERE `entry`=12858;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(12858, 0, 0, 'Everyone ready?', 12, 0, 100, 0, 0, 0, 'Torek'),
(12858, 1, 0, 'Ok, Lets move out!', 12, 0, 100, 0, 0, 0, 'Torek'),
(12858, 2, 0, 'Prepare yourselves. Silverwing is just around the bend.', 12, 0, 100, 0, 0, 0, 'Torek'),
(12858, 3, 0, 'Silverwing is ours!', 12, 0, 100, 0, 0, 0, 'Torek'),
(12858, 4, 0, 'Go report that the outpost is taken. We will remain here.', 12, 0, 100, 0, 0, 0, 'Torek');
-- SmartAIs
SET @NPC_ORSONN := 27274;
SET @NPC_KODIAN := 27275;
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry` IN (@NPC_ORSONN,@NPC_KODIAN); -- script npc_orsonn_and_kodian, the defines and enums in grizzly_hills.cpp have to be deleted
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC_ORSONN,@NPC_KODIAN) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC_ORSONN,0,0,1,62,0,100,0,9503,0,0,0,33,27322,0,0,0,0,0,7,0,0,0,0,0,0,0,'Orsonn - On gossip select - Quest credit'),
(@NPC_ORSONN,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Orsonn - On gossip select - Close gossip'),
(@NPC_KODIAN,0,0,1,62,0,100,0,9505,0,0,0,33,27321,0,0,0,0,0,7,0,0,0,0,0,0,0,'Kodian - On gossip select - Quest credit'),
(@NPC_KODIAN,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Kodian - On gossip select - Close gossip');
-- [Q] [A] Report to Goldshire
-- Also moved the emote to creature_text
-- Doesn't work because it's auto-accept..
-- Marshal McBride SAI
SET @ENTRY := 197;
SET @QUEST := 54;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
UPDATE `quest_template` SET `StartScript`=0,`CompleteScript`=0 WHERE `id`=@QUEST;
DELETE FROM `quest_start_scripts` WHERE `id`=@QUEST;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,@QUEST,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Marshal McBride - On Quest Accept - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"You are dismissed, $N.",12,0,100,113,0,0,"Marshal McBride");
-- [Q] [A/H] The Completed Orb of Noh'Orahil
-- Menara Voidrender SAI
SET @ENTRY := 6266;
SET @QUEST := 4975;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
UPDATE `quest_template` SET `StartScript`=0,`CompleteScript`=0 WHERE `id`=@QUEST;
DELETE FROM `quest_start_scripts` WHERE `id`=@QUEST;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,@QUEST,0,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0,"Menara Voidrender - On Quest Accept - Run Script"),
(@ENTRY*100,9,0,0,0,0,100,0,10000,10000,0,0,15,@QUEST,0,0,0,0,0,7,0,0,0,0,0,0,0,"Menara Voidrender - On Script - Quest Credit"); -- After ten seconds
-- [Q] [A/H] Proving Allegiance
-- Also moved the emote to creature_text
-- Gunther Arcanus SAI
SET @ENTRY := 1497;
SET @QUEST := 409;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
UPDATE `quest_template` SET `StartScript`=0,`CompleteScript`=0 WHERE `id`=@QUEST;
DELETE FROM `quest_start_scripts` WHERE `id`=@QUEST;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,@QUEST,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gunther Arcanus - On Quest Accept - Say Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Take a Candle of Beckoning from this crate, $N.",12,0,100,25,0,0,"Gunther Arcanus");
-- [Q] [A/H] Hope Within the Emerald Nightmare
-- This NPC already had SAI so we're only adding additional lines
-- Keeper Remulos SAI
SET @ENTRY := 11832;
SET @QUEST := 13074;
SET @SPELL_FITFUL_DREAM := 57413;
UPDATE `quest_template` SET `StartScript`=0,`CompleteScript`=0 WHERE `id`=@QUEST;
DELETE FROM `quest_start_scripts` WHERE `id`=@QUEST;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `id`=4;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,4,0,19,0,100,0,@QUEST,0,0,0,11,@SPELL_FITFUL_DREAM,0,0,0,0,0,7,0,0,0,0,0,0,0,"Keeper Remulos - On Quest Accept - Cast Fitful Dream");
-- [Q] [A] A Humble Task
-- Greatmother Hawkwind SAI
SET @ENTRY := 2991;
SET @QUEST := 753;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
UPDATE `quest_template` SET `StartScript`=0,`CompleteScript`=0 WHERE `id`=@QUEST;
DELETE FROM `quest_start_scripts` WHERE `id`=@QUEST;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,@QUEST,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Greatmother Hawkwind - On Script - Emote Line 0");
-- Texts
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"%s gestures to the pitcher of water sitting on the edge of the well.",16,0,100,0,0,0,"Greatmother Hawkwind");
-- [Q] [A/H] The Boon of A'dal
-- A'dal SAI
SET @ENTRY := 18481;
SET @QUEST := 13082;
SET @SPELL_BLESSING := 35076;
SET @SPELL_TP_DALARAN := 53141;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
UPDATE `quest_template` SET `StartScript`=0,`CompleteScript`=0 WHERE `id`=@QUEST;
DELETE FROM `quest_start_scripts` WHERE `id`=@QUEST;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,0,0,0,0,11,@SPELL_BLESSING,0,0,0,0,0,1,0,0,0,0,0,0,0,"A'dal - Out of Combat - Cast Blessing of A'dal"), -- From EAI
(@ENTRY,0,1,0,19,0,100,0,@QUEST,0,0,0,11,@SPELL_TP_DALARAN,0,0,0,0,0,7,0,0,0,0,0,0,0,"A'dal - On Quest Accept - Cast Teleport Dalaran");
-- [Q] [A] The Missing Diplomat
-- Dashel Stonefist SAI
SET @ENTRY := 4961;
SET @QUEST := 1447;
SET @SPELL_PUMMEL := 12555;
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
UPDATE `quest_template` SET `StartScript`=0,`CompleteScript`=0,`EmoteOnComplete`=11 WHERE `id`=@QUEST; -- ONESHOT_LAUGH
UPDATE `quest_template` SET `EmoteOnComplete`=14 WHERE `id`=1246; -- Previous version should make him rude against player
DELETE FROM `quest_start_scripts` WHERE `id`=@QUEST;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100,@ENTRY*100+1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,13,0,100,0,6000,21000,0,0,11,@SPELL_PUMMEL,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dashel Stonefist - Player Casting - Cast Pummel"),
(@ENTRY,0,1,0,19,0,100,0,@QUEST,0,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0,"Dashel Stonefist - On Quest Accept - Run Script"),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dashel Stonefist - On Script - Say Line 0"),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,2,168,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dashel Stonefist - On Script - Set Faction Hostile"),
(@ENTRY*100,9,2,0,0,0,100,0,0,0,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Dashel Stonefist - On Script - Attack Player"),
(@ENTRY*100,9,3,0,0,0,100,0,2000,2000,0,0,12,4969,1,300000,0,0,0,8,0,0,0,-8678.246094,440.952606,99.620926,4.364815,"Dashel Stonefist - On Script - Summon Old Town Thug"),
(@ENTRY*100,9,4,0,0,0,100,0,0,0,0,0,12,4969,1,300000,0,0,0,8,0,0,0,-8682.465820,441.471161,99.531319,4.871392,"Dashel Stonefist - On Script - Summon Old Town Thug"),
(@ENTRY,0,2,0,2,0,100,0,0,15,0,0,80,@ENTRY*100+1,0,2,0,0,0,1,0,0,0,0,0,0,0,"Dashel Stonefist - On 15% HP - Run Script"),
(@ENTRY*100+1,9,0,0,0,0,100,0,0,0,0,0,15,@QUEST,0,0,0,0,0,7,0,0,0,0,0,0,0,"Dashel Stonefist - On Script - Quest Credit"), -- We are putting this before evade else we lose our target
(@ENTRY*100+1,9,1,0,0,0,100,0,0,0,0,0,20,9,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dashel Stonefist - On Script - Stop Attacking"),
(@ENTRY*100+1,9,2,0,0,0,100,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dashel Stonefist - On Script - Evade"),
(@ENTRY*100+1,9,3,0,0,0,100,0,0,0,0,0,2,84,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dashel Stonefist - On Script - Set Faction Back"),
(@ENTRY*100+1,9,4,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dashel Stonefist - On Script - Say Line 1"),
(@ENTRY*100+1,9,5,0,0,0,100,0,6000,6000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dashel Stonefist - On Script - Say Line 2");
-- Texts
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Now you're going to get it good!",12,0,100,0,0,0,"Dashel Stonefist"),
(@ENTRY,1,0,"Okay, okay! Enough fighting. No one else needs to get hurt.",12,0,100,0,0,0,"Dashel Stonefist"),
(@ENTRY,2,0,"It's okay, boys. Back off. You've done enough. I'll meet up with you later.",12,0,100,0,0,0,"Dashel Stonefist");
-- [Q] [A/H] In Service Of The Lich King
-- The Lich King SAI
SET @ENTRY := 25462;
SET @QUEST := 12593;
SET @SPELL_EXLOSION := 58024;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100);
UPDATE `quest_template` SET `StartScript`=0,`CompleteScript`=0 WHERE `id`=@QUEST;
DELETE FROM `quest_start_scripts` WHERE `id`=@QUEST;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,@QUEST,0,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0,"The Lich King - On Quest Accept - Run Script"),
(@ENTRY*100,9,0,0,0,0,100,0,3000,3000,0,0,11,@SPELL_EXLOSION,0,0,0,0,0,7,0,0,0,0,0,0,0,"The Lich King - On Script - Cast 'Icecrown Airship - A - Attack - 02b Cannon Explosion, Shield'"); -- After three seconds
-- [Q] [A] The Legend of Stalvan
-- Sealed Crate SAI
SET @ENTRY := 1561;
SET @QUEST := 74;
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=@ENTRY;
UPDATE `quest_template` SET `StartScript`=0,`CompleteScript`=0 WHERE `id`=@QUEST;
DELETE FROM `quest_start_scripts` WHERE `id`=@QUEST;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,19,0,100,0,@QUEST,0,0,0,12,2044,1,30000,0,0,0,8,0,0,0,-10953.3,988.509,98.984,5.349,"Sealed Crate - On Quest Accept - Summon Forlorn Spirit"); -- What's wrong with those stupid co-ords? ..
-- Update spells used on script. Now they are always casting the female spell,
-- since the spell script is fixed we should cast now the correct spell.
UPDATE `smart_scripts` SET `action_param1`=69672 WHERE `entryorguid`=36669 AND `action_type`=11 AND `action_param1`=70973;
UPDATE `smart_scripts` SET `action_param1`=69673 WHERE `entryorguid`=36670 AND `action_type`=11 AND `action_param1`=70971;
-- Set correct gossip menus ids for renewing the disguise
UPDATE `smart_scripts` SET `event_param1`=10858 WHERE `entryorguid`=36669 AND `event_param1`=10857;
UPDATE `smart_scripts` SET `event_param1`=10857 WHERE `entryorguid`=36670 AND `event_param1`=10858;

# NeatElves
UPDATE `gameobject` SET `spawntimesecs` = '-43200' WHERE `guid` =19053;
UPDATE `gameobject` SET `spawntimesecs` = '-43200' WHERE `guid` =38612;
UPDATE `gameobject_template` SET `faction` = 114, `flags` = 32 WHERE `entry` = 13965;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '25' WHERE `item` =34597;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '100' WHERE `entry` =187367 AND `item` =34597;
UPDATE `gameobject` SET `spawntimesecs` = '300' WHERE `guid` = 40494;
UPDATE `gameobject` SET `spawntimesecs` = '300' WHERE `guid` = 40493;
UPDATE `gameobject` SET `spawntimesecs` = '300' WHERE `guid` = 40492;
UPDATE `gameobject` SET `spawntimesecs` = '300' WHERE `guid` = 40490;
UPDATE `gameobject` SET `spawntimesecs` = '300' WHERE `guid` = 40491;
UPDATE `gameobject` SET `spawntimesecs` = '300' WHERE `guid` = 60227;
UPDATE `gameobject` SET `spawntimesecs` = '300' WHERE `guid` = 59566;
UPDATE `gameobject` SET `spawntimesecs` = '300' WHERE `guid` = 40499;
UPDATE `gameobject` SET `spawntimesecs` = '300' WHERE `guid` = 40498;
UPDATE `gameobject` SET `spawntimesecs` = '300' WHERE `guid` = 40495;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '50' WHERE `item` in (21936,21935,21937);
UPDATE creature SET position_x = '1625.876343', position_y = '-4417.429688', position_z = '15.451848', orientation = '5.581781' WHERE guid = '39866';
UPDATE creature SET position_x = '1629.696289', position_y = '-4412.760254', position_z = '16.302666', orientation = '5.414491' WHERE guid = '39867';
UPDATE creature SET position_x = '1622.372437', position_y = '-4416.227539', position_z = '14.674357', orientation = '3.865685' WHERE guid = '39860';
UPDATE creature SET position_x = '1617.499023', position_y = '-4413.309570', position_z = '14.303246', orientation = '0.634556' WHERE guid = '126583';
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(15793, 15793, 0, 1, 1, 1),
(15793, 15794, 0, 1, 1, 1),
(15793, 15798, 0, 1, 1, 1);
DELETE FROM `gameobject_loot_template` WHERE `item` = 15794;
DELETE FROM `gameobject_loot_template` WHERE `item` = 15798;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '20',`mincountOrRef` = '-15793' WHERE `entry` =144064 AND `item` =15793;
DELETE FROM `creature` WHERE `id` = 15527;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-50' WHERE `item` =34908;
UPDATE `creature_template` SET `npcflag` = '0' WHERE `entry` =25610;
UPDATE `creature_template` SET `lootid` = '0' WHERE `entry` =22019;
DELETE FROM `creature_loot_template` WHERE `entry` = 22019;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '25' WHERE `item` =31121;
UPDATE `creature_template` SET `faction_A` = '16',`faction_H` = '16' WHERE `entry` in (21389,21492);
UPDATE `creature_template` SET `npcflag` = '0' WHERE `entry` in (22396,21383,21637,21810,22308);
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` =27212;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` =27212;
DELETE FROM `creature_ai_texts` WHERE `entry` = -272125;
DELETE FROM `creature_ai_texts` WHERE `entry` = -272124;
DELETE FROM `creature_ai_texts` WHERE `entry` = -272123;
DELETE FROM `creature_ai_texts` WHERE `entry` = -272122;
DELETE FROM `creature_ai_texts` WHERE `entry` = -272121;
REPLACE INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000000582, 'You''re late, overseer.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000583, 'Destiny will not wait. Your craftsmen must increase their production of the war golems before the stone giant leader and his army reach Ulduar.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000584, 'Tell your rune-smiths to continue converting what stone giants you can. Those that will not submit must be destroyed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000585, 'If the stone giants interfere with our work at Ulduar, I will hold you and your thane responsible. Mortals must not be allowed to come to the aid of the giants.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2000000586, 'Return to your duties, overseer. Be certain to impress upon your workers the urgency of their tasks.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
DELETE FROM `event_scripts` WHERE `id` =188596;
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(188596, 0, 10, 27212, 20000, 0, 3404.62, -5394.55, 270.199, 1.20872),
(188596, 2, 0, 0, 27212, 2000000582, 0, 0, 0, 0),
(188596, 4, 0, 0, 27212, 2000000583, 0, 0, 0, 0),
(188596, 6, 0, 0, 27212, 2000000584, 0, 0, 0, 0),
(188596, 8, 0, 0, 27212, 2000000585, 0, 0, 0, 0),
(188596, 10, 0, 0, 27212, 2000000586, 0, 0, 0, 0),
(188596, 11, 8, 27212, 0, 0, 0, 0, 0, 0);
UPDATE `creature` SET `spawndist` = '5',`MovementType` = '1' WHERE `id` in (33211,33224);
UPDATE `creature_template` SET `npcflag` = '0' WHERE `entry` =33220;
UPDATE `creature` SET `position_x` = '-3738.565',`position_y` = '-4442.265',`position_z` = '56.23981',`orientation` = '0.41887' WHERE `guid` =78829;
UPDATE `npc_text` SET `prob0`=1,`text0_0`='I wandered for the rest of my natural life in search of knowledge, seeing more wonder and meeting more strange and mysterious races than any of my people before me. I travelled across the length and breadth of ancient Kalimdor until there was no more to see, no new lands across the horizon.$B$BYet... there was still so much I did not know as I felt my final journey approaching and I wept for the things I would never know.$B$BAs I fell, my life at an end, that is when they found me.' WHERE `ID`=14121;
UPDATE `npc_text` SET `prob0`=1,`text0_0`='The bronze dragonflight. They snatched me from the brink of death and took me before their master, Nozdormu. He said they had been watching me and wanted me to continue my hunt. He granted me immortality as a watcher, tasked to bear witness to the history of Azeroth as one of his agents.$B$BI am Xarantaur the Witness, and it is my duty to preserve the true history of Azeroth lest it be forgotten.' WHERE `ID`=14122;
UPDATE `gossip_menu_option` SET `option_text` = 'Let me browse your goods.' WHERE `menu_id` =6059 AND `id` =3;
UPDATE `gossip_menu_option` SET `option_text` = 'What can you teach me?' WHERE `menu_id` =6087 AND `id` =0;
UPDATE `gossip_menu_option` SET `option_text` = 'I would like to buy from you.' WHERE `menu_id` =6087 AND `id` =1;
UPDATE `gossip_menu_option` SET `option_text` = 'I would like to buy from you.' WHERE `menu_id` =6086 AND `id` =0;
DELETE FROM `gossip_menu` WHERE `entry`=6088 AND `text_id`=7242;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (6088,7242);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 1541 AND `id` = 0;
DELETE FROM `gossip_menu` WHERE `entry`=9754 AND `text_id`=13397;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9754,13397);
UPDATE `gossip_menu_option` SET `option_text` = 'Yes, Hargus. I wish to purchase supplies.' WHERE `menu_id` =9735 AND `id` =0;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 9769 AND `id` = 0;
UPDATE `gossip_menu_option` SET `option_text` = 'Place 35 Apexis Shards near the dragon egg to crack it open.' WHERE `menu_id` =8689 AND `id` =0;
UPDATE `creature_template` SET `gossip_menu_id`=6768 WHERE `entry`=13418;
DELETE FROM `gossip_menu` WHERE `entry`=6768 AND `text_id`=6194;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (6768,6194);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (6768,8704,8673,8676) AND `id` IN (0);
UPDATE `gossip_menu` SET `text_id` = '10927' WHERE `entry` =8681 AND `text_id` =11011;
DELETE FROM `gossip_menu` WHERE `entry`=8673 AND `text_id`=10911;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8673,10911);
DELETE FROM `gossip_menu` WHERE `entry`=8676 AND `text_id`=10914;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8676,10914);
DELETE FROM `gossip_menu` WHERE `entry` = 50420;
DELETE FROM `gossip_menu` WHERE `entry` = 50421;
UPDATE `gossip_menu_option` SET `action_menu_id` = '8673' WHERE `menu_id` =8672 AND `id` =0;
UPDATE `gossip_menu_option` SET `action_menu_id` = '8673' WHERE `menu_id` =8672 AND `id` =1;
UPDATE `gossip_menu_option` SET `action_menu_id` = '8676' WHERE `menu_id` =8677 AND `id` =0;
UPDATE `gossip_menu_option` SET `action_menu_id` = '8676' WHERE `menu_id` =8677 AND `id` =1;
UPDATE `gossip_menu_option` SET `option_text` = 'I am interested in warlock training.' WHERE `menu_id` =2384 AND `id` =1;
UPDATE `gossip_menu_option` SET `option_text` = '<Reach down and pull the Injured Rainspeaker Oracle to its feet.>' WHERE `menu_id` =9677 AND `id` =1;
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (9713,9674,9684,9728) AND `id` IN (0);
DELETE FROM `gossip_menu` WHERE `entry`=9679 AND `text_id`=13124;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9679,13124);
DELETE FROM `gossip_menu` WHERE `entry`=9684 AND `text_id`=13124;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9684,13124);
DELETE FROM `gossip_menu` WHERE `entry`=9635 AND `text_id`=13322;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9635,13322);
DELETE FROM `gossip_menu` WHERE `entry`=8560 AND `text_id`=10723;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8560,10723);
DELETE FROM `gossip_menu` WHERE `entry`=8558 AND `text_id`=10722;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8558,10722);
DELETE FROM `gossip_menu` WHERE `entry`=9562 AND `text_id`=12881;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9562,12881);
DELETE FROM `gossip_menu` WHERE `entry`=9562 AND `text_id`=12882;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9562,12882);
DELETE FROM `gossip_menu` WHERE `entry`=10922 AND `text_id`=15171;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10922,15171);
DELETE FROM `gossip_menu` WHERE `entry`=10909 AND `text_id`=15157;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10909,15157);
UPDATE `creature_template` SET `gossip_menu_id`=10922 WHERE `entry`=37592;
UPDATE `creature_template` SET `gossip_menu_id`=10909 WHERE `entry`=37554;
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (10950) AND `id` IN (0,1);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (10909) AND `id` IN (0);
DELETE FROM `gossip_menu` WHERE `entry`=8805 AND `text_id`=11291;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8805,11291);
UPDATE `creature_template` SET `gossip_menu_id`=9879 WHERE `entry`=26916;
UPDATE `gossip_menu_option` SET `option_text` = 'I would like to buy from you.' WHERE `menu_id` =4005 AND `id` =0;
DELETE FROM `gossip_menu` WHERE `entry`=8310 AND `text_id`=10373;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8310,10373);
UPDATE `creature_template` SET `gossip_menu_id`=8310 WHERE `entry`=20977;
UPDATE `gossip_menu_option` SET `action_menu_id`=7829 WHERE `menu_id`=7830 AND `id`=0;
DELETE FROM `gossip_menu` WHERE `entry`=7840 AND `text_id`=9597;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7840,9597);
DELETE FROM `gossip_menu` WHERE `entry`=7852 AND `text_id`=9613;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7852,9613);
UPDATE `gossip_menu_option` SET `action_menu_id` = '7831' WHERE `menu_id` =7829 AND `id` =0;
UPDATE `creature_template` SET `gossip_menu_id`=8038 WHERE `entry`=19840;
DELETE FROM `gossip_menu` WHERE `entry`=8038 AND `text_id`=9925;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8038,9925);
DELETE FROM `gossip_menu` WHERE `entry`=5710 AND `text_id`=6878;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5710,6878);
DELETE FROM `gossip_menu` WHERE `entry`=5711 AND `text_id`=6879;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5711,6879);
DELETE FROM `gossip_menu` WHERE `entry`=5712 AND `text_id`=6880;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5712,6880);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (5710,5711,5712,5713) AND `id` IN (0);
UPDATE `creature_template` SET `gossip_menu_id`=5710 WHERE `entry`=14354;
DELETE FROM `gossip_menu` WHERE `entry`=10171 AND `text_id`=14115;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10171,14115);
UPDATE `creature_template` SET `gossip_menu_id`=10171 WHERE `entry`=32301;
DELETE FROM `gossip_menu` WHERE `entry`=8036 AND `text_id`=10045;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8036,10045);
DELETE FROM `gossip_menu` WHERE `entry`=8116 AND `text_id`=10045;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8116,10045);
DELETE FROM `gossip_menu` WHERE `entry`=8113 AND `text_id`=10045;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8113,10045);
DELETE FROM `gossip_menu` WHERE `entry`=8115 AND `text_id`=10045;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8115,10045);
DELETE FROM `gossip_menu` WHERE `entry`=940 AND `text_id`=1513;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (940,1513);
DELETE FROM `gossip_menu` WHERE `entry`=4005 AND `text_id`=4869;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (4005,4869);
UPDATE `creature_template` SET `gossip_menu_id` = '4004' WHERE `entry` =2357;
UPDATE `creature_template` SET `gossip_menu_id` = '4004' WHERE `entry` =4885;
UPDATE `locales_gossip_menu_option` SET `id` = '0' WHERE `menu_id` =4004 AND `id` =2;
UPDATE `gossip_menu_option` SET `id` = '0' WHERE `menu_id` =4004 AND `id` =2;
DELETE FROM `gossip_menu` WHERE `entry`=4004 AND `text_id`=5855;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (4004,5855);
DELETE FROM `gossip_menu` WHERE `entry`=4006 AND `text_id`=5843;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (4006,5843);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (8036,8113,8115,8116,7840,7852) AND `id` IN (0);
UPDATE `locales_gossip_menu_option` SET `id` = '0' WHERE `menu_id` =3161 AND `id` =1;
UPDATE `gossip_menu_option` SET `id` = '0' WHERE `menu_id` =3161 AND `id` =1;
DELETE FROM `gossip_menu` WHERE `entry`=3161 AND `text_id`=5841;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (3161,5841);
UPDATE `locales_gossip_menu_option` SET `id` = '0' WHERE `menu_id` =3185 AND `id` =1;
UPDATE `gossip_menu_option` SET `id` = '0' WHERE `menu_id` =3185 AND `id` =1;
DELETE FROM `gossip_menu` WHERE `entry`=3162 AND `text_id`=5842;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (3162,5842);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 3186 AND `id` = 2;
UPDATE `locales_gossip_menu_option` SET `id` = '0' WHERE `menu_id` =3186 AND `id` =1;
UPDATE `gossip_menu_option` SET `id` = '0' WHERE `menu_id` =3186 AND `id` =1;
UPDATE `locales_gossip_menu_option` SET `id` = '0' WHERE `menu_id` =8213 AND `id` =1;
UPDATE `gossip_menu_option` SET `id` = '0' WHERE `menu_id` =8213 AND `id` =1;
DELETE FROM `gossip_menu` WHERE `entry`=8213 AND `text_id`=10239;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8213,10239);
DELETE FROM `gossip_menu` WHERE `entry`=8098 AND `text_id`=10305;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8098,10305);
DELETE FROM `gossip_menu` WHERE `entry`=3185 AND `text_id`=3942;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (3185,3942);
DELETE FROM `gossip_menu` WHERE `entry`=3186 AND `text_id`=3945;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (3186,3945);
UPDATE `creature_template` SET `npcflag` = '1' WHERE `entry` =21602;
DELETE FROM `gossip_menu` WHERE `entry`=2801 AND `text_id`=3494;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (2801,3494);
UPDATE `creature_template` SET `gossip_menu_id`=6229 WHERE `entry`=7010;
DELETE FROM `gossip_menu` WHERE `entry`=6229 AND `text_id`=7403;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (6229,7403);
DELETE FROM `gossip_menu` WHERE `entry`=4486 AND `text_id`=538;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (4486,538);
UPDATE `gossip_menu_option` SET `option_text` = 'Gorzeeki, I wish to make a purchase.' WHERE `menu_id` =5818 AND `id` =0;
UPDATE `gossip_menu_option` SET `option_text` = 'I seek further druidic training to have a closer understanding of the Earth Mother''s will.' WHERE `menu_id` =4644 AND `id` =1;
UPDATE `gossip_menu_option` SET `option_text` = 'I seek training as a druid.' WHERE `menu_id` =3926 AND `id` =1;
UPDATE `gossip_menu_option` SET `option_text` = '<Push a random button.>' WHERE `menu_id` =8023 AND `id` =0;
UPDATE `gossip_menu_option` SET `option_text` = 'May I browse your epic gem recipes?' WHERE `menu_id` =9873 AND `id` =2;
UPDATE `gossip_menu_option` SET `option_text` = 'Train me.' WHERE `menu_id` =9873 AND `id` =1;
DELETE FROM `gossip_menu` WHERE `entry`=4185 AND `text_id`=5287;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (4185,5287);
DELETE FROM `gossip_menu` WHERE `entry`=3926 AND `text_id`=4786;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (3926,4786);
DELETE FROM `gossip_menu` WHERE `entry`=4644 AND `text_id`=5716;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (4644,5716);
UPDATE `creature_template` SET `gossip_menu_id`=705 WHERE `entry`=1326;
DELETE FROM `gossip_menu` WHERE `entry`=705 AND `text_id`=1257;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (705,1257);
UPDATE `creature_template` SET `gossip_menu_id`=341 WHERE `entry`=3628;
DELETE FROM `gossip_menu` WHERE `entry`=341 AND `text_id`=820;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (341,820);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (705) AND `id` IN (0);
UPDATE `creature_template` SET `lootid` = '0' WHERE `entry` =1257;
DELETE FROM `creature_loot_template` WHERE `entry` = 1257;
UPDATE `creature_template` SET `gossip_menu_id`=688 WHERE `entry`=1319;
UPDATE `creature_template` SET `gossip_menu_id`=689 WHERE `entry`=1339;
UPDATE `creature_template` SET `gossip_menu_id`=4139 WHERE `entry`=11026;
DELETE FROM `gossip_menu` WHERE `entry`=4139 AND `text_id`=5124;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (4139,5124);
DELETE FROM `gossip_menu` WHERE `entry` = 682 AND `text_id` = 6812;
UPDATE `creature_template` SET `skinloot` = '0',`flags_extra` = '64' WHERE `entry` =15554;
DELETE FROM `skinning_loot_template` WHERE `entry` = 15554;
DELETE FROM `creature` WHERE `guid` = 125111;
DELETE FROM `creature_loot_template` WHERE `entry` = 15552 AND `item` = 31889;
UPDATE `creature_template` SET `gossip_menu_id` = '17890' WHERE `entry` =17890;
UPDATE `creature_template` SET `gossip_menu_id` = '17885' WHERE `entry` =17885;
UPDATE `creature_template` SET `gossip_menu_id` = '7486' WHERE `entry` =17832;
#
UPDATE `creature_template` SET `lootid` = '0',`flags_extra` = '2' WHERE `entry` =17832;
DELETE FROM `creature_loot_template` WHERE `entry` = 17832;
UPDATE `creature_template` SET `unit_flags` = '64', `InhabitType` = '7' WHERE `entry` IN (37126, 38258);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-25' WHERE `item`= 22138;
DELETE FROM `gameobject_loot_template` WHERE `item` = 14047;
UPDATE `creature_template` SET `lootid` = '0' WHERE `entry` = 466;
DELETE FROM `creature_loot_template` WHERE `entry` = 466;
UPDATE `gameobject_template` SET `flags` = 4 WHERE `entry` = 201872;
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` IN (201872,201873,201874,201875,202177,202178,202179,202180);
UPDATE IGNORE `achievement_criteria_data` SET `type`='7', `value1`='52092' WHERE `criteria_id`=6835 AND `type`=18;
UPDATE `creature_template_addon` SET `auras`= NULL WHERE `entry` = 28586;
DELETE FROM `creature` WHERE `guid` = 114762;
DELETE FROM `creature` WHERE `guid` = 114763;
DELETE FROM `creature_ai_scripts` WHERE `id` = 2700353;
DELETE FROM `creature_ai_scripts` WHERE `id` = 2700351;
DELETE FROM `creature_ai_scripts` WHERE `id` = 2700352;
DELETE FROM `creature_ai_texts` WHERE `entry` = -50011;
DELETE FROM `creature_ai_texts` WHERE `entry` = -50010;
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(17841, 0, 10, 27273, 10000, 0, 285.6, -357.5, 91.0833, 5.75959),
(17841, 3, 10, 27273, 10000, 0, 307, -357.5, 91.0833, 6.02139),
(17841, 6, 10, 27273, 10000, 0, 285.6, -357.5, 91.0833, 5.75959);

# FIX
UPDATE creature_equip_template SET entry=40503 WHERE entry=101008;
UPDATE creature_equip_template SET entry=40504 WHERE entry=101009;
UPDATE creature_equip_template SET entry=40505 WHERE entry=101010;
UPDATE `creature_template` SET `equipment_id` = 40503 WHERE `equipment_id` = 101008;
UPDATE `creature_template` SET `equipment_id` = 40504 WHERE `equipment_id` = 101009;
UPDATE `creature_template` SET `equipment_id` = 40505 WHERE `equipment_id` = 101010;
DELETE FROM `creature_loot_template` WHERE (`entry`=19847) AND (`item`=28677);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (19847, 28677, -100, 0, 1, 1);

# Herurg
REPLACE INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(7306, 194905, 603, 3, 1, 147.036, -123.838, 409.805, 6.28083, 0, 0, 0.00117889, -0.999999, 604800, 0, 0),
(7308, 194905, 603, 3, 1, 147.831, -103.135, 409.805, 6.2769, 0, 0, 0.00314203, -0.999995, 604800, 0, 0),
(73313, 194905, 603, 3, 1, 401.308, -13.8236, 409.524, 3.14159, 0, 0, 0, 0, 604800, 0, 0),
(7309, 194905, 603, 3, 1, 148.213, -43.8613, 409.805, 0.00156927, 0, 0, 0.000784635, 1, 604800, 0, 0),
(7311, 194905, 603, 3, 1, 148.187, -27.1173, 409.805, 0.00156927, 0, 0, 0.000784635, 1, 604800, 0, 0),
(7315, 194905, 603, 3, 1, 148.043, 27.1395, 409.805, 0.0015707, 0, 0, 0.000785351, 1, 604800, 0, 0),
(7316, 194905, 603, 3, 1, 148.286, 51.8011, 409.804, 0.00942516, 0, 0, 0.00471256, 0.999989, 604800, 0, 0);

# NeatElves
UPDATE `creature` SET `MovementType` = 1, `spawndist` = 10 WHERE `id` =26570;
UPDATE `creature_template` SET `spell1` = 0, `ScriptName` = '' WHERE `entry` =26570;
UPDATE `creature_template` SET `flags_extra`='2' WHERE `entry`=23102;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`) VALUES 
(78318,23102,530,1,1,0,0,-2414.89038,4436.77,163.188354,0.209439516,120,0,0,881,0),
(78590,23102,530,1,1,0,0,-2414.979,4458.585,165.8086,2.80998015,120,0,0,881,0),
(78591,23102,530,1,1,0,0,-2418.69775,4446.772,165.705322,2.18166161,120,0,0,881,0),
(78592,23102,530,1,1,0,0,-2423.714,4453.51563,165.694977,0.575958669,120,0,0,881,0),
(79169,23102,530,1,1,0,0,-2426.56567,4437.25732,168.060211,3.63028479,120,0,0,881,0),
(80012,23102,530,1,1,0,0,-2428.65723,4460.04932,166.3208,0.7679449,120,0,0,881,0),
(82738,23102,530,1,1,0,0,-2432.37817,4444.567,170.260162,4.59021568,120,0,0,881,0),
(82740,23102,530,1,1,0,0,-2432.45435,4434.5835,170.945572,0.820304751,120,0,0,881,0),
(82741,23102,530,1,1,0,0,-2432.74561,4458.09668,166.1593,1.27409029,120,0,0,881,0),
(82742,23102,530,1,1,0,0,-2435.68359,4440.8667,171.700333,4.049164,120,0,0,881,0),
(82744,23102,530,1,1,0,0,-2443.70239,4634.14355,158.2777,0,120,0,0,881,0),
(82745,23102,530,1,1,0,0,-2466.943,4699.982,155.832977,0,120,0,0,881,0),
(82748,23102,530,1,1,0,0,-2482.24243,4661.68066,161.495926,0,120,0,0,881,0);
UPDATE `npc_trainer` SET `reqskill`='762', `reqskillvalue`='150' WHERE `spell`=34767;
DELETE FROM `npc_trainer` WHERE `entry` = 16275 AND `spell` = 23214;
DELETE FROM `npc_trainer` WHERE `entry` = 16679 AND `spell` = 23214;
DELETE FROM `npc_trainer` WHERE `entry` = 16680 AND `spell` = 23214;
DELETE FROM `npc_trainer` WHERE `entry` = 16681 AND `spell` = 23214;
DELETE FROM `npc_trainer` WHERE `entry` = 20406 AND `spell` = 23214;
DELETE FROM `npc_trainer` WHERE `entry` = 23128 AND `spell` = 23214;
UPDATE `gameobject` SET `spawntimesecs`='300' WHERE `guid`=49322;
UPDATE `gameobject` SET `spawntimesecs`='180' WHERE `guid`=67063;
REPLACE INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(7319, 182529, 530, 1, 1, 253.535, 7083.8, 36.9946, -0.0174535, 0, 0, -0.00872664, 0.999962, 300, 100, 1),
(7321, 182281, 530, 1, 1, -1385.07, 7779.34, -11.2055, 0.785398, 0, 0, 0.382683, 0.92388, 180, 100, 1),
(7322, 182282, 530, 1, 1, -1649.99, 7732.57, -15.4506, -2.40855, 0, 0, -0.93358, 0.35837, 180, 100, 1),
(7323, 182273, 530, 1, 1, -1389.53, 7782.51, -11.6257, -1.51844, 0, 0, -0.688356, 0.725373, 180, 100, 1),
(7325, 182274, 530, 1, 1, -1662.28, 7735, -15.9663, 1.88495, 0, 0, 0.809015, 0.587788, 180, 100, 1);
DELETE FROM `creature_template_addon` WHERE (`entry`=18757);
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES (18757, 32839);
UPDATE `gameobject_template` SET `faction` = 1314 WHERE `entry` = 181955;
UPDATE `gameobject` SET `state`='1' WHERE `guid`=49069;
UPDATE `gameobject` SET `spawntimesecs` = 180 WHERE `id` IN (182301,182302,182303,182304,182305,182306,182307,182308,182297,182298,182299,182300);
UPDATE `gameobject` SET `spawntimesecs` = 180 WHERE `id` IN (182267,182280,182281,182282,182222,182272,182273,182274,182266,182275,182276,182277);
DELETE FROM `creature` WHERE `guid` = 102409;
DELETE FROM `creature` WHERE `guid` = 102410;
DELETE FROM `creature` WHERE `guid` = 102415;
DELETE FROM `creature` WHERE `guid` = 102416;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
(75885, 21484, 530, 1, 1, 0, 0, -1524.84, 7930.34, -20.182, 3.6405, 600, 0, 0, 104790, 0, 0),
(62992, 18759, 530, 1, 1, 0, 0, 273.866, 7082.68, 87.0635, 3.01942, 180, 0, 0, 1, 0, 0),
(64420, 18759, 530, 1, 1, 0, 0, 375.806, 7332.96, 63.1065, 2.94961, 180, 0, 0, 1, 0, 0),
(64450, 18759, 530, 1, 1, 0, 0, 340.453, 6833.1, 61.798, 3.01942, 180, 0, 0, 1, 0, 0),
(123462, 18757, 530, 1, 1, 0, 0, 273.866, 7082.68, 87.0635, 3.01942, 180, 0, 0, 1, 0, 0),
(82794, 18757, 530, 1, 1, 0, 0, 375.806, 7332.96, 63.1065, 2.94961, 180, 0, 0, 1, 0, 0),
(77096, 18757, 530, 1, 1, 0, 0, 340.453, 6833.1, 61.798, 3.01942, 180, 0, 0, 1, 0, 0),
(78645, 21483, 530, 1, 1, 0, 0, -1570.01, 7993.8, -22.4505, 5.02655, 600, 0, 0, 104790, 0, 0);
DELETE FROM `creature_loot_template` WHERE `entry` = 6557 AND `item` = 12291;
DELETE FROM `creature` WHERE `guid` = 22149;
DELETE FROM `creature` WHERE `guid` = 22588;
DELETE FROM `creature` WHERE `guid` = 22987;
DELETE FROM `creature` WHERE `guid` = 23174;
DELETE FROM `creature` WHERE `guid` = 23180;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-50' WHERE `item`=12235;
DELETE FROM `creature` WHERE `id` = 9477;
DELETE FROM `creature` WHERE `guid` = 127171;
REPLACE INTO gossip_menu (entry, text_id) VALUES (4821, 5874);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(20518, 20518, 0, 1, 1, 1),
(20518, 20526, 0, 1, 1, 1),
(20518, 20527, 0, 1, 1, 1),
(20518, 20528, 0, 1, 1, 1),
(20531, 20531, 0, 1, 1, 1),
(20531, 20532, 0, 1, 1, 1),
(20531, 20533, 0, 1, 1, 1),
(20531, 20535, 0, 1, 1, 1),
(20540, 20540, 0, 1, 1, 1),
(20540, 20542, 0, 1, 1, 1),
(20540, 20543, 0, 1, 1, 1),
(20540, 20544, 0, 1, 1, 1);
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='1', `mincountOrRef`='-20518', `maxcount`='1' WHERE `entry`=20469 AND`item`=20518;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='1', `mincountOrRef`='-20531' WHERE `entry`=20469 AND`item`=20531;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='1', `mincountOrRef`='-20540' WHERE `entry`=20469 AND`item`=20540;
DELETE FROM `item_loot_template` WHERE `entry` = 20469 AND `item` = 20526;
DELETE FROM `item_loot_template` WHERE `entry` = 20469 AND `item` = 20527;
DELETE FROM `item_loot_template` WHERE `entry` = 20469 AND `item` = 20528;
DELETE FROM `item_loot_template` WHERE `entry` = 20469 AND `item` = 20532;
DELETE FROM `item_loot_template` WHERE `entry` = 20469 AND `item` = 20533;
DELETE FROM `item_loot_template` WHERE `entry` = 20469 AND `item` = 20535;
DELETE FROM `item_loot_template` WHERE `entry` = 20469 AND `item` = 20542;
DELETE FROM `item_loot_template` WHERE `entry` = 20469 AND `item` = 20543;
DELETE FROM `item_loot_template` WHERE `entry` = 20469 AND `item` = 20544;
DELETE FROM `item_loot_template` WHERE `entry` = 20469 AND `item` = 10305;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='40', `maxcount`='5' WHERE `item`=20404;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='20' WHERE `entry`=20469 AND `item`=27498;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE `entry` = 20469 AND `item` = 20541;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE `entry` = 20469 AND `item` = 20545;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1', `maxcount` = '3' WHERE `entry` = 20469 AND `item` = 20552;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE `entry` = 20469 AND `item` = 20676;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1', `maxcount` = '3' WHERE `entry` = 20469 AND `item` = 20677;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1', `maxcount` = '3' WHERE `entry` = 20469 AND `item` = 20678;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1', `maxcount` = '3' WHERE `entry` = 20469 AND `item` = 20679;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='5' WHERE `entry`=20469 AND`item`=20546;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='5' WHERE `entry`=20469 AND`item`=20547;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='5' WHERE `entry`=20469 AND`item`=20548;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='5' WHERE `entry`=20469 AND`item`=20553;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='5' WHERE `entry`=20469 AND`item`=20554;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='5' WHERE `entry`=20469 AND`item`=20555;
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='5' WHERE `entry`=20469 AND`item`in (20518,20531,20540);
UPDATE `item_loot_template` SET `ChanceOrQuestChance`='50' WHERE `entry`=20469 AND `item`=27498;

# Fix
DELETE FROM `creature` WHERE `id`=36841;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
(127651, 36841, 658, 3, 1, 30350, 0, 924.946, -60.1648, 591.879, 2.23727, 86400, 0, 0, 81900, 0, 0),
(127652, 36841, 658, 3, 1, 30350, 0, 1062.15, -29.8507, 633.879, 4.43314, 86400, 0, 0, 81900, 0, 0),
(127653, 36841, 658, 3, 1, 30350, 0, 1073.6, -31.0122, 633.409, 4.60767, 86400, 0, 0, 81900, 0, 0),
(127654, 36841, 658, 3, 1, 30350, 0, 997.253, -139.257, 615.875, 2.72271, 86400, 0, 0, 81900, 0, 0),
(127655, 36841, 658, 3, 1, 30350, 0, 1049.77, -113.33, 629.814, 4.10152, 86400, 0, 0, 81900, 0, 0),
(127657, 36841, 658, 3, 1, 30350, 0, 930.109, -56.8899, 591.849, 2.35398, 86400, 0, 0, 81900, 0, 0),
(127658, 36841, 658, 3, 1, 30350, 0, 928.118, -43.5252, 590.876, 2.24204, 86400, 0, 0, 81900, 0, 0),
(127659, 36841, 658, 3, 1, 30350, 0, 1069.91, 100.042, 631.062, 4.86947, 86400, 0, 0, 81900, 0, 0),
(127661, 36841, 658, 3, 1, 30350, 0, 1000.4, -127.873, 616.247, 3.40339, 86400, 0, 0, 81900, 0, 0),
(127662, 36841, 658, 3, 1, 30350, 0, 1059.17, 95.9063, 630.781, 4.93928, 86400, 0, 0, 81900, 0, 0),
(127663, 36841, 658, 3, 1, 30350, 0, 1042.16, -104.3, 630.038, 3.89208, 86400, 0, 0, 81900, 0, 0);
DELETE FROM `creature` WHERE `id`=36877;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
(127664, 36877, 658, 3, 1, 30363, 0, 1050, -69.6466, 633.079, 4.36332, 86400, 0, 0, 12600, 0, 0),
(127665, 36877, 658, 3, 1, 30363, 0, 1019.08, -121.824, 623.826, 3.7001, 86400, 0, 0, 12600, 0, 0),
(127666, 36877, 658, 3, 1, 30363, 0, 1069.39, -12.8058, 633.627, 4.53786, 86400, 0, 0, 12600, 0, 0),
(127667, 36877, 658, 3, 1, 30363, 0, 1069.37, -52.0087, 633.92, 4.5204, 86400, 0, 0, 12600, 0, 0),
(127668, 36877, 658, 3, 1, 30363, 0, 1068.93, -88.7526, 632.828, 4.2237, 86400, 0, 0, 12600, 0, 0),
(127669, 36877, 658, 3, 1, 30363, 0, 1043.91, -124.614, 627.748, 3.59538, 86400, 0, 0, 12600, 0, 0),
(127670, 36877, 658, 3, 1, 30363, 0, 1071.27, 38.0161, 629.829, 4.95674, 86400, 0, 0, 12600, 0, 0),
(127671, 36877, 658, 3, 1, 30363, 0, 1077.58, -14.7182, 632.726, 4.45059, 86400, 0, 0, 12600, 0, 0),
(127672, 36877, 658, 3, 1, 30363, 0, 1058.1, 92.9099, 630.413, 5.07441, 86400, 0, 0, 12600, 0, 0),
(127673, 36877, 658, 3, 1, 30363, 0, 1079.09, 34.3066, 629.8, 4.60767, 86400, 0, 0, 12600, 0, 0),
(127674, 36877, 658, 3, 1, 30363, 0, 1070.37, 96.1438, 631.075, 4.9102, 86400, 0, 0, 12600, 0, 0),
(127675, 36877, 658, 3, 1, 30363, 0, 1055.68, -52.7134, 633.511, 4.60767, 86400, 0, 0, 12600, 0, 0);
DELETE FROM `creature` WHERE `id`=37728;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
(127676, 37728, 658, 3, 1, 30363, 0, 1071.24, 49.4809, 630.71, 1.90241, 86400, 0, 0, 20160, 44070, 0),
(127677, 37728, 658, 3, 1, 30363, 0, 1067, 48.1719, 630.606, 2.02458, 86400, 0, 0, 20160, 44070, 0);
DELETE FROM `creature_loot_template` WHERE `entry` = 23290 AND `item` = 32724;

# NeatElves
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='50' WHERE `entry`=23286 AND`item`=32724;
DELETE FROM `creature` WHERE `id` = 23290;
UPDATE creature_template SET gossip_menu_id = 8234 WHERE entry = 19935;
REPLACE INTO gossip_menu (entry, text_id) VALUES (8234, 10324);
UPDATE `locales_gossip_menu_option` SET `box_text_loc8`=NULL WHERE `box_text_loc8`='';
DELETE FROM `gossip_menu` WHERE `entry` = 7985 AND `text_id` = 9837;
DELETE FROM `gossip_menu` WHERE `entry` = 7986 AND `text_id` = 9838;
DELETE FROM `gossip_menu` WHERE `entry` = 7987 AND `text_id` = 9839;
DELETE FROM `gossip_menu` WHERE `entry` = 7988 AND `text_id` = 9840;
DELETE FROM `gossip_menu` WHERE `entry` = 7989 AND `text_id` = 9841;
DELETE FROM `gossip_menu` WHERE `entry` = 7990 AND `text_id` = 9842;
DELETE FROM `gossip_menu` WHERE `entry` = 17885 AND `text_id` = 9121;
DELETE FROM `gossip_menu` WHERE `entry` = 17890 AND `text_id` = 9118;
DELETE FROM `gossip_menu` WHERE `entry` = 17893 AND `text_id` = 9119;
DELETE FROM `gossip_menu` WHERE `entry` = 30481 AND `text_id` = 13788;
UPDATE creature_template SET gossip_menu_id = 7521 WHERE entry = 17885;
REPLACE INTO gossip_menu (entry, text_id) VALUES (7521, 9121);
UPDATE creature_template SET gossip_menu_id = 7525 WHERE entry = 17827;
REPLACE INTO gossip_menu (entry, text_id) VALUES (7525, 9125);
UPDATE creature_template SET gossip_menu_id = 7519 WHERE entry = 17890;
REPLACE INTO gossip_menu (entry, text_id) VALUES (7519, 9118);
UPDATE creature_template SET gossip_menu_id = 7520 WHERE entry = 17893;
REPLACE INTO gossip_menu (entry, text_id) VALUES (7520, 9119);
UPDATE `gossip_menu_option` SET `menu_id`='7520' WHERE `menu_id`=17893;
UPDATE creature_template SET gossip_menu_id = 6802 WHERE entry = 15732;
REPLACE INTO gossip_menu (entry, text_id) VALUES (6802, 8125);
UPDATE creature_template SET gossip_menu_id = 9707 WHERE entry = 28016;
REPLACE INTO gossip_menu (entry, text_id) VALUES (9707, 13265);
UPDATE creature_template SET gossip_menu_id = 10932 WHERE entry = 36990;
REPLACE INTO gossip_menu (entry, text_id) VALUES (10932, 15191);
UPDATE creature_template SET gossip_menu_id = 10925 WHERE entry = 37581;
REPLACE INTO gossip_menu (entry, text_id) VALUES (10925, 15174);
UPDATE creature_template SET gossip_menu_id = 10224 WHERE entry = 24137;
REPLACE INTO gossip_menu (entry, text_id) VALUES (10224, 14215);
UPDATE creature_template SET gossip_menu_id = 6769 WHERE entry = 13433;
REPLACE INTO gossip_menu (entry, text_id) VALUES (6769, 6194);
UPDATE creature_template SET gossip_menu_id = 5181 WHERE entry = 13435;
UPDATE creature_template SET gossip_menu_id = 5181 WHERE entry = 13434;
REPLACE INTO gossip_menu (entry, text_id) VALUES (5181, 6194);
UPDATE creature_template SET gossip_menu_id = 9915 WHERE entry = 30481;
REPLACE INTO gossip_menu (entry, text_id) VALUES (9915, 13788);
UPDATE creature_template SET gossip_menu_id = 6795 WHERE entry = 15378;
REPLACE INTO gossip_menu (entry, text_id) VALUES (6795, 8113);
UPDATE creature_template SET gossip_menu_id = 6793 WHERE entry = 15380;
REPLACE INTO gossip_menu (entry, text_id) VALUES (6793, 8111);
UPDATE creature_template SET gossip_menu_id = 6644 WHERE entry = 15502;
REPLACE INTO gossip_menu (entry, text_id) VALUES (6644, 7899);
UPDATE creature_template SET gossip_menu_id = 6645 WHERE entry = 15503;
REPLACE INTO gossip_menu (entry, text_id) VALUES (6645, 7900);
UPDATE creature_template SET gossip_menu_id = 6655 WHERE entry = 15504;
REPLACE INTO gossip_menu (entry, text_id) VALUES (6655, 7911);
UPDATE `creature_template` SET `npcflag`='1' WHERE `entry`=20165;
UPDATE `creature_template` SET `gossip_menu_id`='0' WHERE `entry`=22938;
UPDATE creature_template SET gossip_menu_id = 7811 WHERE entry = 16616;
UPDATE creature_template SET gossip_menu_id = 9286 WHERE entry = 25632;
REPLACE INTO gossip_menu (entry, text_id) VALUES (7959, 9780);
REPLACE INTO gossip_menu (entry, text_id) VALUES (9586, 13470);
REPLACE INTO gossip_menu (entry, text_id) VALUES (9834, 16638);
REPLACE INTO gossip_menu (entry, text_id) VALUES (11874, 16642);
REPLACE INTO gossip_menu (entry, text_id) VALUES (8638, 10835);
UPDATE `gossip_menu` SET `text_id`='2318' WHERE `entry`=1665 AND `text_id`=2317;
REPLACE INTO gossip_menu (entry, text_id) VALUES (1667, 2317);
UPDATE `gossip_menu_option`SET`action_menu_id`='1667' WHERE `menu_id`=1664 AND `id`=0;
UPDATE `gossip_menu_option`SET`menu_id`='1667', `action_menu_id`='1665' WHERE `menu_id`=1665 AND `id`=0;
DELETE FROM `gossip_menu` WHERE `entry` = 1666 AND `text_id` = 2318;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='-30' WHERE `item`=11114;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(283, 161527, 1, 1, 1, -7879.14, -896.516, -271.63, 1.41372, 0, 0, 0.649449, 0.760405, 180, 100, 1),
(989, 161527, 1, 1, 1, -7741.71, -742.488, -262.382, 2.23402, 0, 0, 0.898794, 0.438372, 180, 100, 1),
(2448, 161527, 1, 1, 1, -7752.41, -750.97, -266.476, -1.67552, 0, 0, -0.743146, 0.669129, 180, 100, 1),
(2611, 161527, 1, 1, 1, -7760.56, -843.386, -269.013, 0.907571, 0, 0, 0.438371, 0.898794, 180, 100, 1),
(2879, 161527, 1, 1, 1, -7824.72, -917.786, -267.953, 0.663225, 0, 0, 0.325568, 0.945519, 180, 100, 1),
(4795, 161527, 1, 1, 1, -7889.81, -618.472, -259.848, -0.471239, 0, 0, -0.233445, 0.97237, 180, 100, 1),
(6236, 161527, 1, 1, 1, -7884.15, -618.194, -260.14, -0.087267, 0, 0, -0.0436197, 0.999048, 180, 100, 1),
(9172, 161527, 1, 1, 1, -7513.46, -682.216, -254.202, 1.88496, 0, 0, 0.809018, 0.587783, 180, 100, 1),
(11300, 161527, 1, 1, 1, -7874.33, -621.346, -260.631, -1.18682, 0, 0, -0.559191, 0.829039, 180, 100, 1),
(14057, 161527, 1, 1, 1, -7847.43, -648.261, -260.871, 1.55334, 0, 0, 0.700908, 0.713252, 180, 100, 1),
(15557, 161527, 1, 1, 1, -7876.51, -614.429, -261.048, 0.087266, 0, 0, 0.0436192, 0.999048, 180, 100, 1),
(7326, 161527, 1, 1, 1, -7890.34, -610.22, -259.979, 1.55334, 0, 0, 0.700908, 0.713252, 180, 100, 1),
(7327, 161527, 1, 1, 1, -7780.08, -675.24, -258.412, 0.244346, 0, 0, 0.121869, 0.992546, 180, 100, 1),
(7332, 161527, 1, 1, 1, -7746.34, -612.641, -267.134, -1.55334, 0, 0, -0.700909, 0.713251, 180, 100, 1),
(7339, 161527, 1, 1, 1, -7632.41, -753.307, -262.798, 2.16421, 0, 0, 0.882948, 0.469471, 180, 100, 1),
(7340, 161527, 1, 1, 1, -7665.87, -633.516, -266.971, 2.93214, 0, 0, 0.994521, 0.104536, 180, 100, 1),
(7343, 161527, 1, 1, 1, -7758.49, -548.042, -263.93, 0.052359, 0, 0, 0.0261765, 0.999657, 180, 100, 1),
(7345, 161527, 1, 1, 1, -7712.33, -586.951, -269.257, 0.59341, 0, 0, 0.292371, 0.956305, 180, 100, 1),
(7348, 161527, 1, 1, 1, -7837.3, -784.114, -272.911, -1.09956, 0, 0, -0.522498, 0.85264, 180, 100, 1),
(7333, 161527, 1, 1, 1, -7573.92, -808.227, -266.537, 2.26892, 0, 0, 0.906306, 0.422622, 180, 100, 1);
UPDATE `creature_template` SET `gossip_menu_id` = 7525, `npcflag` = 1 WHERE `entry` = 20165;
UPDATE `creature_template` SET `gossip_menu_id` = 8310, `npcflag` = 1 WHERE `entry` = 21602;

# Conditions
REPLACE INTO `conditions` VALUES ('14', '643', '1203', '0', '7', '182', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9635', '13042', '0', '8', '12523', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8560', '7778', '0', '5', '934', '6', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8558', '7778', '0', '5', '932', '6', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9562', '12882', '0', '8', '12311', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8036', '10045', '0', '2', '29366', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8116', '10045', '0', '2', '29411', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8113', '10045', '0', '2', '29396', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8115', '10045', '0', '2', '29397', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4005', '4869', '0', '5', '68', '7', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4004', '4859', '0', '5', '72', '7', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4006', '4862', '0', '5', '81', '7', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3161', '3893', '0', '5', '76', '7', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3162', '3896', '0', '5', '530', '7', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8213', '10208', '0', '5', '930', '7', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8098', '10011', '0', '5', '911', '7', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3185', '3942', '0', '5', '69', '7', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3186', '3945', '0', '5', '54', '7', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '1632', '2289', '0', '14', '256', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '2801', '3495', '0', '8', '385', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4185', '5285', '0', '7', '165', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '660', '1225', '0', '7', '186', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '648', '1210', '0', '7', '165', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '645', '6959', '0', '7', '356', '200', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '9627', '13024', '0', '6', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '646', '7017', '0', '7', '185', '200', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '10043', '14014', '0', '6', '67', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4005', '4869', '0', '14', '674', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4004', '4859', '0', '14', '1100', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '4006', '4862', '0', '14', '658', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3161', '3893', '0', '14', '688', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3162', '3896', '0', '14', '562', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8213', '10208', '0', '14', '77', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '8098', '10011', '0', '14', '178', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3185', '3942', '0', '14', '1093', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3186', '3945', '0', '14', '1037', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9674', '0', '0', '9', '12536', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9024', '0', '0', '9', '11485', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9024', '1', '0', '9', '11489', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9024', '2', '0', '9', '11491', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9024', '3', '0', '9', '11494', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9500', '1', '0', '9', '12231', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '9504', '1', '0', '9', '12231', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8560', '0', '0', '5', '934', '6', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8558', '0', '0', '5', '932', '6', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4005', '0', '0', '5', '68', '7', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4004', '0', '0', '5', '72', '7', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4006', '0', '0', '5', '81', '7', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3161', '0', '0', '5', '76', '7', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3185', '0', '0', '5', '69', '7', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3162', '0', '0', '5', '530', '7', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8213', '0', '0', '5', '930', '7', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8098', '0', '0', '5', '911', '7', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4005', '0', '0', '14', '674', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4004', '0', '0', '14', '1100', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '4006', '0', '0', '14', '658', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3161', '0', '0', '14', '688', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3185', '0', '0', '14', '1093', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3162', '0', '0', '14', '562', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8213', '0', '0', '14', '77', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '8098', '0', '0', '14', '178', '0', '0', '0', '', null);
REPLACE INTO `gossip_menu` VALUES ('643', '1203');
REPLACE INTO `gossip_menu` VALUES ('645', '6959');
REPLACE INTO `gossip_menu` VALUES ('646', '7017');
REPLACE INTO `gossip_menu` VALUES ('648', '1208');
REPLACE INTO `gossip_menu` VALUES ('648', '1210');
REPLACE INTO `gossip_menu` VALUES ('660', '1225');
REPLACE INTO `gossip_menu` VALUES ('682', '1232');
REPLACE INTO `gossip_menu` VALUES ('1632', '2289');
REPLACE INTO `gossip_menu` VALUES ('2801', '3495');
REPLACE INTO `gossip_menu` VALUES ('3161', '3893');
REPLACE INTO `gossip_menu` VALUES ('3162', '3896');
REPLACE INTO `gossip_menu` VALUES ('3185', '3942');
REPLACE INTO `gossip_menu` VALUES ('3186', '3945');
REPLACE INTO `gossip_menu` VALUES ('4004', '4859');
REPLACE INTO `gossip_menu` VALUES ('4005', '4869');
REPLACE INTO `gossip_menu` VALUES ('4006', '4862');
REPLACE INTO `gossip_menu` VALUES ('4185', '5285');
REPLACE INTO `gossip_menu` VALUES ('7486', '9070');
REPLACE INTO `gossip_menu` VALUES ('8036', '10045');
REPLACE INTO `gossip_menu` VALUES ('8098', '10011');
REPLACE INTO `gossip_menu` VALUES ('8113', '10045');
REPLACE INTO `gossip_menu` VALUES ('8115', '10045');
REPLACE INTO `gossip_menu` VALUES ('8116', '10045');
REPLACE INTO `gossip_menu` VALUES ('8213', '10208');
REPLACE INTO `gossip_menu` VALUES ('8558', '7778');
REPLACE INTO `gossip_menu` VALUES ('8560', '7778');
REPLACE INTO `gossip_menu` VALUES ('9562', '12882');
REPLACE INTO `gossip_menu` VALUES ('9627', '13024');
REPLACE INTO `gossip_menu` VALUES ('9635', '13042');
REPLACE INTO `gossip_menu` VALUES ('10043', '14014');
REPLACE INTO `gossip_menu` VALUES ('17885', '9121');
REPLACE INTO `gossip_menu` VALUES ('17890', '9118');
REPLACE INTO `gossip_menu_option` VALUES ('1541', '0', '0', 'I wish to face the Defiler.', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9769', '0', '0', 'I missed the gate to Acherus, Orbaz. Could you please open another?', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('6768', '0', '1', 'Let me browse your seasonal fare.', '3', '128', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8673', '0', '0', 'Use the fel crystalforge to make another purchase.', '1', '1', '8672', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8676', '0', '0', 'Use the Bash\'ir crystalforge to make another purchase.', '1', '1', '8677', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8704', '0', '0', 'Insert 35 Apexis Shards, and begin!', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9713', '0', '0', 'I\'m ready to start the distillation, uh, Tipsy.', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9684', '0', '0', 'I am ready to travel to your village now.', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9728', '0', '0', '<Check for a pulse...>', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9674', '0', '0', 'You look safe enough... let\'s do this.', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9024', '0', '0', '<Get on the work bench and let Walt put you in the golem suit.>', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9024', '1', '0', '<Get on the work bench and let Walt put you in the golem suit.>', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9024', '2', '0', '<Get on the work bench and let Walt put you in the golem suit.>', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9024', '3', '0', '<Get on the work bench and let Walt put you in the golem suit.>', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('10950', '0', '0', 'Can you remove the sword?', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('10950', '1', '0', 'Dark Lady, I think I hear Arthas coming. Whatever you\'re going to do, do it quickly.', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('10909', '0', '0', 'We\'re ready! Let\'s go!', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5710', '0', '0', 'Why you little...', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5711', '0', '0', 'Mark my words, I will catch you, imp. And when I do!', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5712', '0', '0', 'DIE!', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5713', '0', '0', 'Prepare to meet your maker.', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8036', '0', '0', '<Begin emergency shutdown.>', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8113', '0', '0', '<Begin emergency shutdown.>', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8115', '0', '0', '<Begin emergency shutdown.>', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8116', '0', '0', '<Begin emergency shutdown.>', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7840', '0', '0', 'We\'re ready, Thrall.', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('7852', '0', '0', 'We\'ll get you out, Taretha. Don\'t worry. I doubt the wizard would wander too far away.', '1', '1', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('705', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('9500', '1', '0', 'You\'re free to go Orsonn, but first tell me what\'s wrong with the furbolg.', '1', '1', '9502', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9504', '1', '0', 'Who was this stranger?', '1', '1', '9505', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('6769', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('5181', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('8560', '0', '2', 'Show me where I can fly.', '4', '8192', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('8558', '0', '2', 'Show me where I can fly.', '4', '8192', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4005', '0', '1', 'I would like to buy from you.', '3', '128', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4004', '0', '1', 'I want to browse your goods', '3', '128', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('4006', '0', '1', 'I would like to buy from you.', '3', '128', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3161', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3185', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3162', '0', '1', 'I would like to buy from you.', '3', '128', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('8213', '0', '1', 'I want to browse your goods.', '3', '128', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('8098', '0', '1', 'I wish to purchase one of these creatures.', '3', '128', '0', '0', '0', '0', null);
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=3186;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=3186;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=8681;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=8681;
INSERT IGNORE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(1, 51, 0, 0, 0, '2000000017', 0, 0, 0, 0),
(1, 52, 0, 0, 0, '2000000244', 0, 0, 0, 0),
(1, 53, 0, 0, 0, '2000000254', 0, 0, 0, 0);



# FIX
UPDATE `quest_template` SET `RequiredRaces` = 0 WHERE `Id` = 1486;
UPDATE `quest_template` SET `RequiredNpcOrGo1` = 25610 WHERE `Id` = 11676;
UPDATE `quest_template` SET `RequiredSpellCast1` = '45807' WHERE `Id` =11676;
UPDATE `quest_template` SET `PrevQuestId` = 10682 WHERE `Id` = 10717;
UPDATE `quest_template` SET `OfferRewardText`='<Getry looks you over.>$B$BThis is all Ickoris could send?' WHERE `id`=11703;
UPDATE `quest_template` SET `CompletedText` = 'Return to Chemist Fuely in Undercity.' WHERE `id` = 4642;

# FIX
# DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50314;
# DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50314;
# UPDATE conditions SET SourceGroup=9732 WHERE SourceTypeOrReferenceId=15 AND SourceGroup=28666;
# UPDATE conditions SET SourceGroup=9732 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=28666;

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
DELETE FROM `game_event_gameobject` WHERE `guid` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `game_event_creature` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
UPDATE creature_template SET unit_flags=unit_flags&~2048 WHERE unit_flags&2048=2048;
UPDATE creature_template SET unit_flags=unit_flags&~524288 WHERE unit_flags&524288=524288;
UPDATE creature_template SET unit_flags=unit_flags&~67108864 WHERE unit_flags&67108864=67108864;
UPDATE creature_template SET unit_flags=unit_flags&~8388608 WHERE unit_flags&8388608=8388608;
UPDATE `creature` SET `MovementType` = 0 WHERE `spawndist` = 0 AND `MovementType`=1;
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
UPDATE `gameobject_template` SET `flags`=`flags`&~4 WHERE `type` IN (2,19,17);
DELETE FROM `gameobject_scripts` WHERE `id` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `gameobject_scripts` WHERE `command` in (11, 12) and `datalong` NOT IN (SELECT `guid` FROM `gameobject`);
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

UPDATE version SET `cache_id`= '614';
UPDATE version SET `db_version`= 'YTDB_0.14.4_R614_TC_R14424_TDBAI_335.0.3_RuDB_R45';
