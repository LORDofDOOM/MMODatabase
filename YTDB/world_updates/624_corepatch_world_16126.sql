DELETE FROM `spell_script_names` WHERE `spell_id` IN (-633,781,-746,1515,6495,-8050,-16972,31789,-34914,-44457,-48181,-30108,34438,34439,35183,43522,65812,68154,68155,68156,52610,61336,-33763,40133,40132,43421,52551,53608,57762,59990,66093,67957,67958,67959,7057,28832,28833,28834,28835,27831,55638,31447,32960,33654,33671,50810,61546,50811,61547,52942,59837,63322,47977,48025,54729,71342,72286,74856,75614,75973);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(-633,  'spell_pal_lay_on_hands'),
(781,   'spell_hun_disengage'),
(-746,  'spell_gen_bandage'),
(1515,  'spell_hun_tame_beast'),
(6495,  'spell_sha_sentry_totem'),
(-8050, 'spell_sha_flame_shock'),
(-16972,'spell_dru_predatory_strikes'),
(31789, 'spell_pal_righteous_defense'),
(-34914,'spell_pri_vampiric_touch'),
(-44457,'spell_mage_living_bomb'),
(-48181,'spell_warl_haunt'),
(-30108,'spell_warl_unstable_affliction'),
(34438, 'spell_warl_unstable_affliction'), -- using class spell script for generic spell because it uses class spell effect
(34439, 'spell_warl_unstable_affliction'),
(35183, 'spell_warl_unstable_affliction'),
(43522, 'spell_hexlord_unstable_affliction'),
(65812, 'spell_faction_champion_warl_unstable_affliction'),
(68154, 'spell_faction_champion_warl_unstable_affliction'),
(68155, 'spell_faction_champion_warl_unstable_affliction'),
(68156, 'spell_faction_champion_warl_unstable_affliction'),
(52610, 'spell_dru_savage_roar'),
(61336, 'spell_dru_survival_instincts'),
(-33763,'spell_dru_lifebloom'),
(40133, 'spell_gen_summon_fire_elemental'),
(40132, 'spell_gen_summon_earth_elemental'),
(43421, 'spell_hexlord_lifebloom'),
(52551, 'spell_tur_ragepaw_lifebloom'),
(53608, 'spell_cenarion_scout_lifebloom'),
(57762, 'spell_twisted_visage_lifebloom'),
(59990, 'spell_twisted_visage_lifebloom'),
(66093, 'spell_faction_champion_dru_lifebloom'),
(67957, 'spell_faction_champion_dru_lifebloom'),
(67958, 'spell_faction_champion_dru_lifebloom'),
(67959, 'spell_faction_champion_dru_lifebloom'),
(7057,  'spell_shadowfang_keep_haunting_spirits'),
(28832, 'spell_four_horsemen_mark'),
(28833, 'spell_four_horsemen_mark'),
(28834, 'spell_four_horsemen_mark'),
(28835, 'spell_four_horsemen_mark'),
(27831, 'spell_gothik_shadow_bolt_volley'),
(55638, 'spell_gothik_shadow_bolt_volley'),
(31447, 'spell_mark_of_kazrogal'),
(32960, 'spell_mark_of_kazzak'),
(33654, 'spell_gruul_shatter'),
(33671, 'spell_gruul_shatter_effect'),
(50810, 'spell_krystallus_shatter'),
(61546, 'spell_krystallus_shatter'),
(50811, 'spell_krystallus_shatter_effect'),
(61547, 'spell_krystallus_shatter_effect'),
(52942, 'spell_loken_pulsing_shockwave'),
(59837, 'spell_loken_pulsing_shockwave'),
(63322, 'spell_general_vezax_saronite_vapors'),
(47977, 'spell_magic_broom'),
(48025, 'spell_headless_horseman_mount'),
(54729, 'spell_winged_steed_of_the_ebon_blade'),
(71342, 'spell_big_love_rocket'),
(72286, 'spell_invincible'),
(74856, 'spell_blazing_hippogryph'),
(75614, 'spell_celestial_steed'),
(75973, 'spell_x53_touring_rocket');
DELETE FROM `spell_script_names` WHERE `spell_id`=-139;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(-139,'spell_priest_renew');
DELETE FROM `spell_script_names` WHERE `spell_id` = 27819;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(27819, 'spell_kelthuzad_detonate_mana');
DELETE FROM `spell_script_names` WHERE `spell_id` = 23880;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(23880, 'spell_warr_bloodthirst_heal');
-- Add script to bonfires
UPDATE `gameobject_template` SET `ScriptName`= 'go_midsummer_bonfire' WHERE `entry` IN (187559,187564,187914,187916,187917,187919,187920,187921,187922,187923,187924,187925,187926,187927,187928,187929,187930,187931,187932,187933,187934,187935,187936,187937,187938,187939,187940,187941,187942,187943,187944,187945,187946,187947,187948,187949,187950,187951,187952,187953,187954,187955,187956,187957,187958,187959,187960,187961,187962,187963,187964,187965,187966,187967,187968,187969,187970,187971,187972,187973,187974,187975,194032,194033,194034,194035,194036,194037,194038,194039,194040,194042,194043,194044,194045,194046,194048,194049);
DELETE FROM `spell_script_names` WHERE `spell_id` = -66188;
UPDATE `creature_template` SET `InhabitType`=4,`flags_extra`=128,`unit_flags`=0x2000000,`ScriptName`='npc_arthas_teleport_visual' WHERE `entry`=30298; -- Invisible Stalker (Float, Uninteractible, LargeAOI)
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_icc_soul_missile';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(72585,'spell_icc_soul_missile');
