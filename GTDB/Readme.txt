################################################################################
#####                                                                      #####
#####          GGGGGGGG    TTTTTTTTTT     DDDDDDD    BBBBBBB               #####
#####         GG               TT         D     DD   B      B              #####
#####        GG    GGG         TT         D      D   BBBBBBB               #####
#####         GG     GG        TT         D     DD   B      B              #####
#####          GGGGGGG         TT         DDDDDDD    BBBBBBB               #####
#####                             CREW                                     #####
################################################################################
# Copyright (C) 2007-2011 GMDB / GTDB <http://sourceforge.net/projects/gt-db>  #
#                                                                              #
# This program is free software: you can redistribute it and/or modify         #
# it under the terms of the GNU General Public License as published by         #
# the Free Software Foundation, either version 3 of the License, or            #
# (at your option) any later version.                                          #
#                                                                              #
# This program is distributed in the hope that it will be useful,              #
# but WITHOUT ANY WARRANTY; without even the implied warranty of               #
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the                #
# GNU General Public License for more details.                                 #
#                                                                              #
# You should have received a copy of the GNU General Public License            #
# along with this program.  If not, see <http://www.gnu.org/licenses/>.        #
################################################################################


Hinweise zur Installation der deutschen Texte für Trinity.


1. Englische Datenbank installieren:
   Entweder die UDB + UDB-to-trinity Konverter oder TDB
   (Installationshinweise sind in den entsprechenden Foren zu finden)
   Bitte auch darauf achten, dass alle notwendigen SQL-Updates bis zur
   verwendeten Core-Revison und _anschließend_ die SQL-Scripte aus dem FULL 
   Verzeichnis eingespielt wurden. Die vorhandenen HowTo's machen da 
   leider teilweise falsche Angaben.
   Anmerkung: Die aktuelle TDB benötigt die "FULL" scripte nicht mehr.

2. Alle SQL-Scripte aus diesem Ordner einspielen
   (Entweder per Hand oder mit dem GTDB_Batcher)
   ACHTUNG die Datei locales_gossip_menu_option_tdb.sql muss nach der Datei
   locales_gossip_menu_option.sql eingespielt werden !!!

Der Schritt 2 kann jederzeit wiederholt werden, ohne das es zu 
Datenverlusten oder Fehlern kommt. 
Dies ist insbesondere nach Updates vom Core oder von GTDB sinnvoll.