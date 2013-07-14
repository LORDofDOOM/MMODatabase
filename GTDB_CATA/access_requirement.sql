################################################################################
#####                                                                      #####
#####          GGGGGGGG    TTTTTTTTTT     DDDDDDD    BBBBBBB               #####
#####         GG               TT         D     DD   B      B              #####
#####        GG    GGG         TT         D      D   BBBBBBB               #####
#####         GG     GG        TT         D     DD   B      B              #####
#####          GGGGGGG         TT         DDDDDDD    BBBBBBB               #####
#####                             CREW                                     #####
################################################################################
# Copyright (C) 2007-2012 GMDB / GTDB <http://sourceforge.net/projects/gt-db>  #
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




#####	access_requirement	#####

SET NAMES 'utf8';

UPDATE access_requirement SET quest_failed_text='Ihr müsst die Quest "Rückkehr zu Andormu" abgeschlossen haben, bevor ihr den Schwarzen Morast betreten könnt.' WHERE mapid=269 and difficulty=0;
UPDATE access_requirement SET quest_failed_text='Ihr müsst die Quest "Rückkehr zu Andormu" abgeschlossen und das Level 70 erreicht haben, bevor ihr den Schwarzen Morast (Heroisch) betreten könnt.' WHERE mapid=269 and difficulty=1;

SET NAMES 'latin1';
