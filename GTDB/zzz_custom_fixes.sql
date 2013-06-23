-- Fix pinfo crash
UPDATE trinity_string SET content_loc3=NULL WHERE entry IN (453, 548, 549, 550, 714, 716, 749, 752, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856); 

-- Translate
REPLACE INTO `trinity_string` (entry, content_loc3) VALUES
(453,'- Spieler %s %s (guid: %u)'),
(548,'-- GM Modus aktiv, Phase: -1'),
(549,'-─- Gebannt: (Typ: %s, Grund: %s, Zeit: %s, gebannt von: %s)'),
(550,'-─- Muted: (Grund: %s, Zeit: %s, By: %s)'),
(714,'- Account: %s (ID: %u), GMLevel: %u'),
(716,'- Letzter Login: %s (Fehlgeschlagene Logins: %u)'),
(749,'- OS: %s - Latenz: %u ms - Mail: %s'),
(752,'- Letzte IP: %s (Geperrt: %s)'),
(843,'- Level: %u (%u/%u XP (%u XP uebrig))'),
(844,'- Rasse: %s %s, %s'),
(845,'- Am Leben ?: %s'),
(846,'- Phase: %u'),
(847,'- Gold: %ug%us%uc'),
(848,'- Map: %s, Area: %s, Zone: %s'),
(849,'- Gilde: %s (ID: %u)'),
(850,'-─ Rang: %s'),
(851,'-─ Anmerkung: %s'),
(852,'-─ O. Anmerkung: %s'),
(853,'- Spielzeit: %s'),
(854,'- Mails: %d Gelesen/%I64u Gesamt'),
(855,'Maennlich'),
(856,'Weiblich');
