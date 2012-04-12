# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 612_FIX_13911 613_FIX_14136 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('613_FIX_14136');

# SignFinder
UPDATE `quest_template` SET `RequiredClasses`=431, `RequiredRaces`=1101 WHERE `Id`=24553;
UPDATE `quest_template` SET `RequiredClasses`=431, `RequiredRaces`=178 WHERE `Id`=24564;
UPDATE `quest_template` SET `RequiredClasses`=1519, `RequiredRaces`=512 WHERE `Id`=24594;
UPDATE `quest_template` SET `RequiredClasses`=1104, `RequiredRaces`=1101 WHERE `Id`=24595;
UPDATE `quest_template` SET `RequiredClasses`=16, `RequiredRaces`=512 WHERE `Id`=24596;
UPDATE `quest_template` SET `RequiredClasses`=1104, `RequiredRaces`=178 WHERE `Id`=24598;
UPDATE `quest_template` SET `RequiredClasses`=35, `RequiredRaces`=0 WHERE `Id`=24545;
UPDATE `quest_template` SET `RequiredClasses`=256, `RequiredRaces`=595 WHERE `id`=10605;
UPDATE `smart_scripts` SET `event_param1`=6763 WHERE  `entryorguid` =15664;

# TC
UPDATE `quest_template` SET `RequiredClasses`=1279 WHERE `id`=792;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=7463;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=7498;
UPDATE `quest_template` SET `RequiredClasses`=1 WHERE `id`=7499;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=7500;
UPDATE `quest_template` SET `RequiredClasses`=2 WHERE `id`=7501;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=7502;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=7503;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=7504;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=7505;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=7506;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=8074;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=8073;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=8072;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=8070;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=8071;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=8069;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=8068;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=8067;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=8066;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=8064;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=8065;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=8063;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=8062;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=8061;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=8060;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=8059;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=8057;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=8056;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=8051;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=8052;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=8049;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=8050;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=9019;
UPDATE `quest_template` SET `RequiredClasses`=1 WHERE `id`=8544;
UPDATE `quest_template` SET `RequiredClasses`=1 WHERE `id`=8556;
UPDATE `quest_template` SET `RequiredClasses`=1 WHERE `id`=8557;
UPDATE `quest_template` SET `RequiredClasses`=1 WHERE `id`=8558;
UPDATE `quest_template` SET `RequiredClasses`=1 WHERE `id`=8559;
UPDATE `quest_template` SET `RequiredClasses`=1 WHERE `id`=8560;
UPDATE `quest_template` SET `RequiredClasses`=1 WHERE `id`=8561;
UPDATE `quest_template` SET `RequiredClasses`=1 WHERE `id`=8562;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=8592;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=8593;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=8594;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=8596;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=8602;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=8603;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=8621;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=8622;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=8623;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=8624;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=8625;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=8626;
UPDATE `quest_template` SET `RequiredClasses`=2 WHERE `id`=8627;
UPDATE `quest_template` SET `RequiredClasses`=2 WHERE `id`=8628;
UPDATE `quest_template` SET `RequiredClasses`=2 WHERE `id`=8629;
UPDATE `quest_template` SET `RequiredClasses`=2 WHERE `id`=8630;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=8631;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=8632;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=8633;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=8634;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=8637;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=8638;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=8639;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=8640;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=8641;
UPDATE `quest_template` SET `RequiredClasses`=2 WHERE `id`=8655;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=8656;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=8657;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=8658;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=8659;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=8660;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=8661;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=8662;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=8663;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=8664;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=8665;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=8666;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=8667;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=8668;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=8669;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=8689;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=8690;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=8691;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=8692;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=8693;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=8694;
UPDATE `quest_template` SET `RequiredClasses`=2 WHERE `id`=8695;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=8696;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=8697;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=8698;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=8699;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=8700;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=8701;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=8702;
UPDATE `quest_template` SET `RequiredClasses`=2 WHERE `id`=8703;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=8704;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=8705;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=8706;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=8707;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=8708;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=8709;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=8710;
UPDATE `quest_template` SET `RequiredClasses`=2 WHERE `id`=8711;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=8712;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=9018;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=9017;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=9016;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=8958;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=8957;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=8956;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=8955;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=8953;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=8952;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=8951;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=8943;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=8942;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=8940;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=8939;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=8938;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=8936;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=8935;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=8934;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=8931;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=8932;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=8926;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=8927;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=8919;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=8918;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=8917;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=8916;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=8915;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=8914;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=8913;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=8911;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=8910;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=8909;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=8907;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=8906;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=8905;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=8941;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=9086;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=9087;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=9088;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=9089;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=9090;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=9091;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=9092;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=9093;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=9095;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=9096;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=9097;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=9098;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=9099;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=9100;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=9101;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=9102;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=9103;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=9104;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=9105;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=9106;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=9107;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=9108;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=9109;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=9110;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=9111;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=9112;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=9113;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=9114;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=9115;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=9116;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=9117;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=9118;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=9054;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=9055;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=9056;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=9057;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=9058;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=9059;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=9060;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=9061;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=9068;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=9069;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=9070;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=9071;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=9072;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=9073;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=9074;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=9075;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=9077;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=9078;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=9079;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=9080;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=9081;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=9082;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=9083;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=9084;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=9020;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=9021;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=9270;
UPDATE `quest_template` SET `RequiredClasses`=129 WHERE `id`=8962;
UPDATE `quest_template` SET `RequiredClasses`=1280 WHERE `id`=8963;
UPDATE `quest_template` SET `RequiredClasses`=12 WHERE `id`=8964;
UPDATE `quest_template` SET `RequiredClasses`=82 WHERE `id`=8965;
UPDATE `quest_template` SET `RequiredClasses`=129 WHERE `id`=8966;
UPDATE `quest_template` SET `RequiredClasses`=1280 WHERE `id`=8967;
UPDATE `quest_template` SET `RequiredClasses`=12 WHERE `id`=8968;
UPDATE `quest_template` SET `RequiredClasses`=82 WHERE `id`=8969;
UPDATE `quest_template` SET `RequiredClasses`=9 WHERE `id`=8985;
UPDATE `quest_template` SET `RequiredClasses`=1090 WHERE `id`=8986;
UPDATE `quest_template` SET `RequiredClasses`=144 WHERE `id`=8987;
UPDATE `quest_template` SET `RequiredClasses`=260 WHERE `id`=8988;
UPDATE `quest_template` SET `RequiredClasses`=1090 WHERE `id`=8989;
UPDATE `quest_template` SET `RequiredClasses`=9 WHERE `id`=8990;
UPDATE `quest_template` SET `RequiredClasses`=144 WHERE `id`=8991;
UPDATE `quest_template` SET `RequiredClasses`=260 WHERE `id`=8992;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=8999;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=9000;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=9001;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=9003;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=9004;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=9005;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=9007;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=9008;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=9009;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=9010;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=9011;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=9012;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=9014;
UPDATE `quest_template` SET `RequiredClasses`=3 WHERE `id`=9234;
UPDATE `quest_template` SET `RequiredClasses`=3 WHERE `id`=9235;
UPDATE `quest_template` SET `RequiredClasses`=3 WHERE `id`=9236;
UPDATE `quest_template` SET `RequiredClasses`=400 WHERE `id`=9238;
UPDATE `quest_template` SET `RequiredClasses`=400 WHERE `id`=9239;
UPDATE `quest_template` SET `RequiredClasses`=400 WHERE `id`=9240;
UPDATE `quest_template` SET `RequiredClasses`=1032 WHERE `id`=9241;
UPDATE `quest_template` SET `RequiredClasses`=1032 WHERE `id`=9242;
UPDATE `quest_template` SET `RequiredClasses`=1032 WHERE `id`=9243;
UPDATE `quest_template` SET `RequiredClasses`=68 WHERE `id`=9244;
UPDATE `quest_template` SET `RequiredClasses`=68 WHERE `id`=9245;
UPDATE `quest_template` SET `RequiredClasses`=68 WHERE `id`=9246;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=8075;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=8076;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=8077;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=8101;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=8102;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=8103;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=8104;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=8106;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=8107;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=8108;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=8109;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=8110;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=8111;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=8112;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=8113;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=8116;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=8117;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=8118;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=8119;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=8141;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=8142;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=8143;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=8144;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=8145;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=8146;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=8147;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=8148;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=10492;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=8381;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=8186;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=8187;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=8188;
UPDATE `quest_template` SET `RequiredClasses`=128 WHERE `id`=8189;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=8190;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=8191;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=8192;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=9257;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=9269;
UPDATE `quest_template` SET `RequiredClasses`=256 WHERE `id`=9271;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=10494;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=10496;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=10498;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=11102;
UPDATE `quest_template` SET `RequiredClasses`=4 WHERE `id`=8377;
UPDATE `quest_template` SET `RequiredClasses`=8 WHERE `id`=8378;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=8379;
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id`=8380;
UPDATE `quest_template` SET `RequiredClasses`=1024 WHERE `id`=8382;
UPDATE `quest_template` SET `RequiredClasses`=32 WHERE `id`=13105;
UPDATE `quest_template` SET `RequiredClasses`=1503 WHERE `id`=13408;
UPDATE `quest_template` SET `RequiredClasses`=1503 WHERE `id`=13409;
UPDATE `quest_template` SET `RequiredClasses`=32 WHERE `id`=13410;
UPDATE `quest_template` SET `RequiredClasses`=32 WHERE `id`=13411;
UPDATE `quest_template` SET `RequiredClasses`=1503 WHERE `id`=13682;
UPDATE `quest_template` SET `RequiredClasses`=32 WHERE `id`=13788;
UPDATE `quest_template` SET `RequiredClasses`=1503 WHERE `id`=13789;
UPDATE `quest_template` SET `RequiredClasses`=1503 WHERE `id`=13790;
UPDATE `quest_template` SET `RequiredClasses`=32 WHERE `id`=13791;
UPDATE `quest_template` SET `RequiredClasses`=32 WHERE `id`=13793;
UPDATE `quest_template` SET `RequiredClasses`=1503 WHERE `id`=13794;
UPDATE `quest_template` SET `RequiredClasses`=32 WHERE `id`=13795;
UPDATE `quest_template` SET `RequiredClasses`=1503 WHERE `id`=13809;
UPDATE `quest_template` SET `RequiredClasses`=1503 WHERE `id`=13810;
UPDATE `quest_template` SET `RequiredClasses`=1503 WHERE `id`=13811;
UPDATE `quest_template` SET `RequiredClasses`=32 WHERE `id`=13812;
UPDATE `quest_template` SET `RequiredClasses`=32 WHERE `id`=13813;
UPDATE `quest_template` SET `RequiredClasses`=32 WHERE `id`=13814;
UPDATE `quest_template` SET `RequiredClasses`=1503 WHERE `id`=13861;
UPDATE `quest_template` SET `RequiredClasses`=1503 WHERE `id`=13862;
UPDATE `quest_template` SET `RequiredClasses`=32 WHERE `id`=13863;
UPDATE `quest_template` SET `RequiredClasses`=32 WHERE `id`=13864;
UPDATE `quest_template` SET `RequiredClasses`=35 WHERE `id`=24545;
UPDATE `quest_template` SET `RequiredClasses`=35 WHERE `id`=24547;
UPDATE `quest_template` SET `RequiredClasses`=35 WHERE `id`=24548;
UPDATE `quest_template` SET `RequiredClasses`=431 WHERE `id`=24553;
UPDATE `quest_template` SET `RequiredClasses`=431 WHERE `id`=24564;
UPDATE `quest_template` SET `RequiredClasses`=1519 WHERE `id`=24594;
UPDATE `quest_template` SET `RequiredClasses`=1104 WHERE `id`=24595;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=24596;
UPDATE `quest_template` SET `RequiredClasses`=1104 WHERE `id`=24598;
UPDATE `quest_template` SET `RequiredClasses`=35 WHERE `id`=24743;
UPDATE `quest_template` SET `RequiredClasses`=35 WHERE `id`=24748;
UPDATE `quest_template` SET `RequiredClasses`=35 WHERE `id`=24749;
UPDATE `quest_template` SET `RequiredClasses`=35 WHERE `id`=24756;
UPDATE `quest_template` SET `RequiredClasses`=35 WHERE `id`=24757;
UPDATE `quest_template` SET `RequiredClasses`=1104 WHERE `id`=24795;
UPDATE `quest_template` SET `RequiredClasses`=431 WHERE `id`=24796;
UPDATE `quest_template` SET `RequiredClasses`=16 WHERE `id`=24798;
UPDATE `quest_template` SET `RequiredClasses`=1104 WHERE `id`=24799;
UPDATE `quest_template` SET `RequiredClasses`=1519 WHERE `id`=24800;
UPDATE `quest_template` SET `RequiredClasses`=431 WHERE `id`=24801;
UPDATE `creature_template` SET `unit_flags` = 0 WHERE `entry` IN (36853,38265,38266,38267);
UPDATE `quest_template` SET `RequiredClasses`=256, `RequiredRaces`=0 WHERE `id`=10605;
DELETE FROM `creature` WHERE `id`=34816;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`) VALUES
(199968, 34816, 649, 15, 65535, 0, 0, 559.172, 90.5816, 395.273, 5.06145, 120, 0, 0, 1, 0);

# TC
-- Missing achievement data (checked via DBC files)
DELETE FROM `player_factionchange_achievement` WHERE `alliance_id` IN (35,41,58,202,206,220,225,230,246,388,433,434,435,436,437,438,439,440,441,442,470,471,472,473,707,764,907,908,1167,1169,1172,1262,1466,1563,1681,1737,1752,1757,1762,1782,2016,2194,2536,2760,2761,2762,2763,2764,2770,2777,2778,2779,2780,2781,2782,2817,3356,3478,3676,3846,3851,3856,3857,4156,4296,4298,4784,4786);
INSERT INTO `player_factionchange_achievement` (`alliance_id`,`horde_id`) VALUES
(35,1359),
(41,1360),
(58,593),
(202,1502),
(206,1252),
(220,873),
(225,1164),
(230,1175),
(246,1005),
(388,1006),
(433,443),
(434,445),
(435,444),
(436,447),
(437,448),
(438,469),
(439,451),
(440,452),
(441,450),
(442,454),
(470,468),
(471,453),
(472,449),
(473,446),
(707,706),
(764,763),
(907,714),
(908,909),
(1167,1168),
(1169,1170),
(1172,1173),
(1262,1274),
(1466,926),
(1563,1784),
(1681,1682),
(1737,2476),
(1752,2776),
(1757,2200),
(1762,2192),
(1782,1783),
(2016,2017),
(2194,2195),
(2536,2537),
(2760,2768),
(2761,2767),
(2762,2766),
(2763,2769),
(2764,2765),
(2770,2771),
(2777,2786),
(2778,2785),
(2779,2784),
(2780,2787),
(2781,2783),
(2782,2788),
(2817,2816),
(3356,3357),
(3478,3656),
(3676,3677),
(3846,4176),
(3851,4177),
(3856,4256),
(3857,3957),
(4156,4079),
(4296,3778),
(4298,4297),
(4784,4785),
(4786,4790);

-- fixing conflict in number of gossip_menu_option.menu_id -- compare 2011_10_23_04_world_sai.sql with 2011_10_23_07_world_sai.sql
SET @ENTRY := 18417;
SET @OLDGOSSIP := 21304;
SET @NEWGOSSIP := 21312;
SET @QUEST_PUPIL := 10646;
-- Fixing smart_scripts
UPDATE `smart_scripts` SET `event_param1`=@NEWGOSSIP WHERE `entryorguid`=@ENTRY AND `source_type`=0 AND `id`=2 AND `action_param1`=@QUEST_PUPIL;
-- Fixing gossip_menu_option
UPDATE `gossip_menu_option` SET `action_menu_id`=@NEWGOSSIP WHERE `menu_id`=@OLDGOSSIP+5;
DELETE FROM `gossip_menu_option` WHERE `menu_id`=@NEWGOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`) VALUES
(@NEWGOSSIP,0,0,"There was something else I wanted to ask you, Altruis.",1,3,@OLDGOSSIP+0);
-- Fix the HP sharing of Twin Valkyr - All Modes
DELETE FROM `creature_template_addon` WHERE `entry` IN (34497,35350,35351,35352,34496,35347,35348,35349);
INSERT INTO `creature_template_addon` (`entry`,`auras`) VALUES
(34497,'66133'),
(35350,'66133'),
(35351,'66133'),
(35352,'66133'),
(34496,'66132'),
(35347,'66132'),
(35348,'66132'),
(35349,'66132');
-- Bloodsurge
UPDATE `spell_proc_event` SET `procEx` = 0x0040000 WHERE `entry` = 46915;
DELETE FROM `achievement_criteria_data` WHERE criteria_id IN (5220, 5215, 5218, 5221, 5216, 5219, 5213, 5018, 5217, 5214, 5233, 5235, 5232, 5234, 5238, 5236, 5229, 5237, 5230, 5231);
-- Classes
INSERT INTO `achievement_criteria_data` VALUES (5220, 2, 1, 0, ''); -- Realm First! Level 80 Warrior
INSERT INTO `achievement_criteria_data` VALUES (5215, 2, 2, 0, ''); -- Realm First! Level 80 Paladin
INSERT INTO `achievement_criteria_data` VALUES (5218, 2, 3, 0, ''); -- Realm First! Level 80 Hunter
INSERT INTO `achievement_criteria_data` VALUES (5221, 2, 4, 0, ''); -- Realm First! Level 80 Rogue
INSERT INTO `achievement_criteria_data` VALUES (5216, 2, 5, 0, ''); -- Realm First! Level 80 Priest
INSERT INTO `achievement_criteria_data` VALUES (5219, 2, 6, 0, ''); -- Realm First! Level 80 Death Knight
INSERT INTO `achievement_criteria_data` VALUES (5213, 2, 7, 0, ''); -- Realm First! Level 80 Shaman
INSERT INTO `achievement_criteria_data` VALUES (5018, 2, 8, 0, ''); -- Realm First! Level 80 Mage
INSERT INTO `achievement_criteria_data` VALUES (5217, 2, 9, 0, ''); -- Realm First! Level 80 Warlock
INSERT INTO `achievement_criteria_data` VALUES (5214, 2, 11, 0, ''); -- Realm First! Level 80 Druid
-- Races
INSERT INTO `achievement_criteria_data` VALUES (5233, 2, 0, 1, ''); -- Realm First! Level 80 Human
INSERT INTO `achievement_criteria_data` VALUES (5235, 2, 0, 2, ''); -- Realm First! Level 80 Orc
INSERT INTO `achievement_criteria_data` VALUES (5232, 2, 0, 3, ''); -- Realm First! Level 80 Dwarf
INSERT INTO `achievement_criteria_data` VALUES (5234, 2, 0, 4, ''); -- Realm First! Level 80 Night Elf
INSERT INTO `achievement_criteria_data` VALUES (5238, 2, 0, 5, ''); -- Realm First! Level 80 Undead
INSERT INTO `achievement_criteria_data` VALUES (5236, 2, 0, 6, ''); -- Realm First! Level 80 Tauren
INSERT INTO `achievement_criteria_data` VALUES (5229, 2, 0, 7, ''); -- Realm First! Level 80 Gnome
INSERT INTO `achievement_criteria_data` VALUES (5237, 2, 0, 8, ''); -- Realm First! Level 80 Troll
INSERT INTO `achievement_criteria_data` VALUES (5230, 2, 0, 10, ''); -- Realm First! Level 80 Blood Elf
INSERT INTO `achievement_criteria_data` VALUES (5231, 2, 0, 11, ''); -- Realm First! Level 80 Draenei
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (7177,7178,7179);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(7177,5,49460,1,''),  -- Amber Drake
(7177,12,1,0, ''),    -- hc mode only
(7178,5,49346,1,''),  -- Emerald Drake
(7178,12,1,0, ''),    -- hc mode only
(7179,5,49464,1,''),  -- Ruby Drake
(7179,12,1,0, '');    -- hc mode only
-- Fix speed of oculus drakes
UPDATE `creature_template_addon` SET `auras`='50325' WHERE `entry` IN (27755,27692,27756);
-- Remove empty EAI Script call from the following entries
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (30243,30632);

-- Crimson Hammersmith summon from Blacksmithing Plans fix
-- Black Guard Swordsmith summon from Blacksmithing Plans fix
UPDATE `gameobject_template` SET `AIName` = 'SmartGameObjectAI' WHERE `entry` IN (176325, 176327);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (176325, 176327) AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(176325, 1, 0, 0, 64, 0, 100, 1, 0, 0, 0, 0, 12, 11120, 6, 60000, 0, 0, 0, 8, 0, 0, 0, 3585.5, -3000.15, 125, 2.19912, 'Blacksmithing Plans - summon Crimson Hammersmith'),
(176327, 1, 0, 0, 64, 0, 100, 1, 0, 0, 0, 0, 12, 11121, 6, 60000, 0, 0, 0, 8, 0, 0, 0, 3818.4, -3693.32, 144.242, 0.261799, 'Blacksmithing Plans - summon Black Guard Swordsmith');

-- Sleeping Giants fix
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 24669;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=24669 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(24669, 0, 0, 1, 8, 0, 100, 0, 44261, 1, 0, 0, 33, 24669, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Dormant Vrykul - Sleeping Giants quest credit'),
(24669, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Dormant Vrykul - Sleeping Giants despawn');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceEntry`=34083;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(18, 0, 34083, 0, 24, 1, 24669, 0, 63, '', 'Awakening Rod target limit to Dormant Vrykul'); -- changed to item script by Nay, not tested.

-- Culling of Stratholme Hemotoxin SAI spell fix version
SET @ENTRY := 28199;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=@ENTRY);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY);
INSERT INTO `smart_scripts` VALUES
(@ENTRY, 0, 0, 0, 9, 0, 25, 2, 0, 20, 5000, 8000, 11, 52522, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Tomb Stalker - Cast Hemotoxin Normal'),
(@ENTRY, 0, 1, 0, 9, 0, 40, 4, 0, 20, 5000, 8000, 11, 58782, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Tomb Stalker - Cast Hemotoxin Heroic');

-- Fix NPCs falling underground when killed by nelegalno
UPDATE `creature_template` SET `InhabitType` = 3 WHERE `entry` IN (5936, 24899); -- Orca and Scoodles

-- Removes wrong restriction from G.N.E.R.D. rage
DELETE FROM `achievement_criteria_data` WHERE `criteria_id`=3882 AND `type`=16;

-- Eitrigg's Wisdom fix
SET @GOSSIP = 21312;
SET @NPC = 3144;
SET @QUEST = 4941;
-- Add gossip options for each menu id
DELETE FROM `gossip_menu_option` WHERE `menu_id` BETWEEN @GOSSIP AND @GOSSIP+7;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES 
(@GOSSIP, 0, 0, 'Hello, Eitrigg. I bring news from Blackrock Spire.', 1, 1, @GOSSIP+1, 0, 0, 0, ''),
(@GOSSIP+1, 0, 0, 'There is only one Warchief, Eitrigg!', 1, 1, @GOSSIP+2, 0, 0, 0, ''),
(@GOSSIP+2, 0, 0, 'What do you mean?', 1, 1, @GOSSIP+3, 0, 0, 0, ''),
(@GOSSIP+3, 0, 0, 'Hearthglen? But...', 1, 1, @GOSSIP+4, 0, 0, 0, ''),
(@GOSSIP+4, 0, 0, 'I will take you up on that offer, Eitrigg.', 1, 1, @GOSSIP+5, 0, 0, 0, ''),
(@GOSSIP+5, 0, 0, 'Ah, so that is how they pushed the Dark Iron to the lower parts of the Spire.', 1, 1, @GOSSIP+6, 0, 0, 0, ''),
(@GOSSIP+6, 0, 0, 'Perhaps there exists a way?', 1, 1, @GOSSIP+7, 0, 0, 0, ''),
(@GOSSIP+7, 0, 0, 'As you wish, Eitrigg.', 1, 1, 0, 0, 0, 0, '');
-- Add gossip menus (text values already in db)
DELETE FROM `gossip_menu` WHERE `entry`BETWEEN @GOSSIP+1 AND @GOSSIP+7;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES 
(@GOSSIP+1, 3574),
(@GOSSIP+2, 3575),
(@GOSSIP+3, 3576),
(@GOSSIP+4, 3577),
(@GOSSIP+5, 3578),
(@GOSSIP+6, 3579),
(@GOSSIP+7, 3580);
-- Add Condtion so gossip only shows when on quest
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, @GOSSIP, 0, 0, 9, 4941, 0, 0, 0, '', NULL);
-- Add SAI for quest complete and close of gossip when last option selected
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@NPC;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@NPC;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC,0,0,1,62,0,100,0,@GOSSIP+7,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,'Eitrigg - Select As you wish, Eitrigg. - Close gossip'),
(@NPC,0,1,0,61,0,100,0,0,0,0,0,15,@QUEST,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,'Eitrigg - On link - Give credit quest (4941)');
-- Addon data
DELETE FROM `creature_template_addon` WHERE `entry` IN (33519,33537);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(33519,0,0,2049,0,NULL),-- Black Knight''s Gryphon
(33537,0,1,1,0,NULL); -- Cult Conspirator
-- SAI for Black Knight''s Gryphon
SET @entry :=33519;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@entry;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@entry;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@entry,0,0,0,27,0,100,0,0,0,0,0,53,0,@entry,0,13663,0,0,1,0,0,0,0,0,0,0,'Black Knight''s Gryphon - On passenger - Start WP movement'),
(@entry,0,1,0,40,0,100,0,40,@entry,0,0,33,33519,0,0,0,0,0,7,0,0,0,0,0,0,0,'Black Knight''s Gryphon - On WP 40 - Quest Credit'),
(@entry,0,2,0,40,0,100,0,43,@entry,0,0,11,50630,0,0,0,0,0,7,0,0,0,0,0,0,0,'Black Knight''s Gryphon - On WP 43 - Dismount Spell'),
(@entry,0,3,0,40,0,100,0,44,@entry,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Black Knight''s Gryphon - On WP 44 - Despawn');

DELETE FROM `waypoints` WHERE `entry`=33519;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(33519, 1,8521.271,569.5960,552.8375,'Black Knight''s Gryphon'),
(33519, 2,8517.864,579.1095,553.2125,'Black Knight''s Gryphon'),
(33519, 3,8513.146,594.6724,551.2125,'Black Knight''s Gryphon'),
(33519, 4,8505.263,606.5569,550.4177,'Black Knight''s Gryphon'),
(33519, 5,8503.017,628.4188,547.4177,'Black Knight''s Gryphon'),
(33519, 6,8480.271,652.7083,547.4177,'Black Knight''s Gryphon'),
(33519, 7,8459.121,686.1427,547.4177,'Black Knight''s Gryphon'),
(33519, 8,8436.802,713.8687,547.3428,'Black Knight''s Gryphon'),
(33519, 9,8405.380,740.0045,547.4177,'Black Knight''s Gryphon'),
(33519,10,8386.139,770.6009,547.5881,'Black Knight''s Gryphon'),
(33519,11,8374.297,802.2525,547.9304,'Black Knight''s Gryphon'),
(33519,12,8374.271,847.0363,548.0427,'Black Knight''s Gryphon'),
(33519,13,8385.988,868.9881,548.0491,'Black Knight''s Gryphon'),
(33519,14,8413.027,867.8573,547.2991,'Black Knight''s Gryphon'),
(33519,15,8452.552,869.0339,547.2991,'Black Knight''s Gryphon'),
(33519,16,8473.058,875.2012,547.2955,'Black Knight''s Gryphon'),
(33519,17,8472.278,912.3134,547.4169,'Black Knight''s Gryphon'),
(33519,18,8479.666,954.1650,547.3298,'Black Knight''s Gryphon'),
(33519,19,8477.349,1001.368,547.3372,'Black Knight''s Gryphon'),
(33519,20,8484.538,1025.797,547.4622,'Black Knight''s Gryphon'),
(33519,21,8525.363,1029.284,547.4177,'Black Knight''s Gryphon'),
(33519,22,8532.808,1052.904,548.1677,'Black Knight''s Gryphon'),
(33519,23,8537.356,1077.927,554.5791,'Black Knight''s Gryphon'),
(33519,24,8540.528,1083.379,569.6827,'Black Knight''s Gryphon'),
(33519,25,8563.641,1140.965,569.6827,'Black Knight''s Gryphon'),
(33519,26,8594.897,1205.458,569.6827,'Black Knight''s Gryphon'),
(33519,27,8617.104,1257.399,566.1833,'Black Knight''s Gryphon'),
(33519,28,8648.496,1329.349,558.0187,'Black Knight''s Gryphon'),
(33519,29,8667.723,1388.411,546.1880,'Black Knight''s Gryphon'),
(33519,30,8699.145,1474.898,528.2197,'Black Knight''s Gryphon'),
(33519,31,8726.869,1546.006,501.7741,'Black Knight''s Gryphon'),
(33519,32,8739.058,1592.157,478.5511,'Black Knight''s Gryphon'),
(33519,33,8750.799,1636.771,455.0797,'Black Knight''s Gryphon'),
(33519,34,8760.006,1669.482,423.2208,'Black Knight''s Gryphon'),
(33519,35,8783.310,1701.852,375.8872,'Black Knight''s Gryphon'),
(33519,36,8817.336,1735.731,343.3323,'Black Knight''s Gryphon'),
(33519,37,8882.320,1789.754,301.5807,'Black Knight''s Gryphon'),
(33519,38,8958.597,1841.807,259.9141,'Black Knight''s Gryphon'),
(33519,39,9045.891,1908.076,233.4143,'Black Knight''s Gryphon'),
(33519,40,9107.177,1964.594,215.9704,'Black Knight''s Gryphon'),
(33519,41,9134.763,2036.925,175.1925,'Black Knight''s Gryphon'),
(33519,42,9128.608,2089.091,141.3593,'Black Knight''s Gryphon'),
(33519,43,9093.364,2128.384,99.38685,'Black Knight''s Gryphon'),
(33519,44,9050.709,2123.656,60.24802,'Black Knight''s Gryphon');
SET @JEEVES := 35642;
SET @SPELL_GOODBYE := 68052;
DELETE FROM `spell_linked_spell` WHERE `spell_effect`=@SPELL_GOODBYE AND  `spell_trigger`=-68054 AND `type`=0;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(-68054,@SPELL_GOODBYE,0, 'Jeeves - Say Goodbye');

UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@JEEVES;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@JEEVES AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@JEEVES,0,0,0,8,0,100,0,@SPELL_GOODBYE,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jeeves - On Spellhit - Say Line 0");

DELETE FROM `creature_text` WHERE `entry`=@JEEVES;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@JEEVES,0,0,"If you'll excuse me, I'm afraid I have other business I must attend to. Please call on me again in the future.",12,0,100,3,0,0, 'Jeeves');

-- Fix condition for Bom'bay's npc_text, gossip_menu and gossip_menu_option
-- Player must to complete quest 826 'Zalazane' to see gossip_menu_option
DELETE FROM `gossip_menu` WHERE `entry`=3062 AND `text_id` IN (3794,3795);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(3062,3794), -- text before to complete quest 826
(3062,3795); -- text after to complete quest 826
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=3062;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,3062,3794,0,14,826,0,0,0,'', "Bom'bay - show text 3794 if player does not have quest Zalazane"),
(14,3062,3795,0,8,826,0,0,0,'', "Bom'bay - show text 3795 if player has quest Zalazane rewarded"),
(15,3062,0,0,8,826,0,0,0,'', "Bom'bay - show gossip option 0 if player has quest Zalazane rewarded"),
(15,3062,1,0,8,826,0,0,0,'', "Bom'bay - show gossip option 1 if player has quest Zalazane rewarded"),
(15,3062,2,0,8,826,0,0,0,'', "Bom'bay - show gossip option 2 if player has quest Zalazane rewarded"),
(15,3062,3,0,8,826,0,0,0,'', "Bom'bay - show gossip option 3 if player has quest Zalazane rewarded"),
(15,3062,4,0,8,826,0,0,0,'', "Bom'bay - show gossip option 4 if player has quest Zalazane rewarded"),
(15,3062,5,0,8,826,0,0,0,'', "Bom'bay - show gossip option 5 if player has quest Zalazane rewarded"),
(15,3062,6,0,8,826,0,0,0,'', "Bom'bay - show gossip option 6 if player has quest Zalazane rewarded");
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 13 AND SourceEntry IN (61863, 68663);
INSERT INTO conditions (SourceTypeOrReferenceId, SourceEntry, ConditionTypeOrReference, ConditionValue1, Comment) VALUES
(13, 61863, 18, 1, 'The Prophet Tharon''ja - Achievement Check'),
(13, 68663, 18, 1, 'The Black Knight - Kill Credit'),
(13, 58630, 18, 1, 'Mal''Ganis - Kill Credit');
-- Achievement Fa-la-la-la-Ogri'la 
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (3936,3937,3938);
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES
-- requires aura
(3936, 5, 44827, 0, ''),
(3937, 5, 44825, 0, ''),
(3938, 5, 44824, 0, ''),
-- requires Holiday Winter Veil
(3936, 16, 141, 0, ''),
(3937, 16, 141, 0, ''),
(3938, 16, 141, 0, '');

-- Bloodfen Raptor SAI
SET @ENTRY := 4351;
SET @SPELL_ROPE := 42325;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,@SPELL_ROPE,0,0,0,33,23727,0,0,0,0,0,7,0,0,0,0,0,0,0,"Bloodfen Raptor - On Spellhit - Quest Credit"),
(@ENTRY,0,1,0,2,0,100,1,0,20,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bloodfen Raptor - At 20% HP - Say Line 0");

-- Bloodfen Screecher SAI
SET @ENTRY := 4352;
SET @SPELL_ROPE := 42325;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,@SPELL_ROPE,0,0,0,33,23727,0,0,0,0,0,7,0,0,0,0,0,0,0,"Bloodfen Screecher - On Spellhit - Quest Credit"),
(@ENTRY,0,1,0,2,0,100,1,0,20,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bloodfen Screecher - At 20% HP - Say Line 0");

-- Texts
DELETE FROM `creature_text` WHERE `entry` IN (4351,4352);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(4351,0,0,"%s looks weak enough to capture.",16,0,100,0,0,0,"Bloodfen Raptor"),
(4352,0,0,"%s looks weak enough to capture.",16,0,100,0,0,0,"Bloodfen Screecher");

-- Acidic Swamp Ooze SAI
SET @ENTRY := 4393;
SET @SPELL_END_CHANNEL := 42485;
SET @SPELL_BUBBLING_OOZE := 43135;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,@SPELL_END_CHANNEL,0,0,0,33,23797,0,0,0,0,0,7,0,0,0,0,0,0,0,"Acidic Swamp Ooze - On Spellhit - Quest Credit"),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,11,@SPELL_BUBBLING_OOZE,0,0,0,0,0,2,0,0,0,0,0,0,0,"Acidic Swamp Ooze - At 15% HP - Cast Bubbling Ooze");

-- Bubbling Swamp Ooze SAI
SET @ENTRY := 4394;
SET @SPELL_END_CHANNEL := 42485;
SET @SPELL_BUBBLING_OOZE := 43135;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,@SPELL_END_CHANNEL,0,0,0,33,23797,0,0,0,0,0,7,0,0,0,0,0,0,0,"Bubbling Swamp Ooze - On Spellhit - Quest Credit"),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,11,@SPELL_BUBBLING_OOZE,0,0,0,0,0,2,0,0,0,0,0,0,0,"Bubbling Swamp Ooze - At 15% HP - Cast Bubbling Ooze");

-- Terenthis SAI
SET @ENTRY := 3693;
SET @QUEST := 986;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100,@ENTRY*100+1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- Start quest
(@ENTRY,0,0,0,19,0,100,0,@QUEST,0,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0,"Terenthis - On Quest Accept - Run Script"),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,12,6086,1,25000,0,0,0,8,0,0,0,6435.25,368.004,13.9412,1.09956,"Terenthis - On Script - Summon Auberdine Sentinel"),
(@ENTRY*100,9,1,0,0,0,100,0,5000,5000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Terenthis - On Script - Say Line 0"),
(@ENTRY*100,9,2,0,0,0,100,0,7000,7000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Terenthis - On Script - Say Line 1"),
(@ENTRY*100,9,3,0,0,0,100,0,9000,9000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Terenthis - On Script - Say Line 2"),
-- End quest
(@ENTRY,0,1,0,20,0,100,0,@QUEST,0,0,0,80,@ENTRY*100+1,0,2,0,0,0,1,0,0,0,0,0,0,0,"Terenthis - On Quest Finish - Run Script"),
(@ENTRY*100+1,9,0,0,0,0,100,0,0,0,0,0,12,3695,1,50000,0,0,0,8,0,0,0,6435.25,368.004,13.9412,1.09956,"Terenthis - On Script - Summon Grimclaw"),
(@ENTRY*100+1,9,1,0,0,0,100,0,5000,5000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Terenthis - On Script - Say Line 3"),
(@ENTRY*100+1,9,2,0,0,0,100,0,7000,7000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Terenthis - On Script - Say Line 4"),
(@ENTRY*100+1,9,3,0,0,0,100,0,9000,9000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Terenthis - On Script - Say Line 5"),
(@ENTRY*100+1,9,4,0,0,0,100,0,11000,11000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Terenthis - On Script - Say Line 6"),
(@ENTRY*100+1,9,5,0,0,0,100,0,14000,14000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Terenthis - On Script - Say Line 7");

-- Grimclaw SAI
SET @ENTRY := 3695;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,22,0,100,0,101,5000,5000,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grimclaw - Emote Receive 'Wave' - Emote Line 0");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Grimclaw growls in your direction before taking time to sniff you.",16,0,0,0,0,0,"Grimclaw");

-- [Q] [A] Escape Through Force
-- [Q] [A] Escape Through Stealth
-- Volcor SAI
SET @ENTRY := 3692;
SET @QUEST_FORCE := 994;
SET @QUEST_STEALTH := 995;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100,@ENTRY*100+1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,@QUEST_FORCE,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Volcor - On Quest Accept - Run Script"),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Volcor - On Script - Say Line 0"),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,53,0,@ENTRY,0,0,0,2,1,0,0,0,0,0,0,0,"Volcor - On Script - Start WP"),
(@ENTRY*100,9,2,0,0,0,100,0,135000,135000,0,0,1,2,0,0,0,0,0,7,0,0,0,0,0,0,0,"Volcor - On Script - Say Line 2"),
(@ENTRY*100,9,3,0,0,0,100,0,0,0,0,0,15,@QUEST_FORCE,0,0,0,0,7,0,0,0,0,0,0,0,0,"Volcor - On Script - Quest Credit"),
(@ENTRY,0,1,0,19,0,100,0,@QUEST_STEALTH,0,0,0,80,@ENTRY*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Volcor - On Quest Accept - Run Script"),
(@ENTRY*100+1,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,3,0,0,0,0,0,0,"Volcor - On Script - Say Line 0"),
(@ENTRY*100+1,9,1,0,0,0,100,0,0,0,0,0,53,0,@ENTRY,0,0,0,2,1,0,0,0,0,0,0,0,"Volcor - On Script  - Start WP"),
(@ENTRY*100+1,9,2,0,0,0,100,0,135000,135000,0,0,1,3,0,0,0,0,0,7,0,0,0,0,0,0,0,"Volcor - On Script - Say Line 3"),
(@ENTRY*100+1,9,3,0,0,0,100,0,0,0,0,0,15,@QUEST_STEALTH,0,0,0,0,7,0,0,0,0,0,0,0,0,"Volcor - On Script - Quest Credit"),
(@ENTRY,0,2,0,40,0,100,0,15,@ENTRY*100,0,0,41,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Volcor - On WP 15 - Forced Despawn"),
(@ENTRY,0,3,0,4,0,100,0,0,0,0,0,1,1,0,0,0,0,1,0,0,0,0,0,0,0,0,"Volcor - On Aggro - Say Line 1");

-- Waypoints
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4606.61,2.96905,69.909,"Volcor"),
(@ENTRY,2,4615.56,19.7957,70.7951,"Volcor"),
(@ENTRY,3,4626.26,38.1105,69.0281,"Volcor"),
(@ENTRY,4,4633.11,48.379,67.5631,"Volcor"),
(@ENTRY,5,4637.2,71.7156,63.3412,"Volcor"),
(@ENTRY,6,4645.39,88.5048,60.3851,"Volcor"),
(@ENTRY,7,4660.2,104.218,58.4603,"Volcor"),
(@ENTRY,8,4675.33,115.93,56.8969,"Volcor"),
(@ENTRY,9,4688.21,131.397,55.5033,"Volcor"),
(@ENTRY,10,4701.45,145.562,53.2203,"Volcor"),
(@ENTRY,11,4709.21,155.279,52.0846,"Volcor"),
(@ENTRY,12,4716.9,169.528,53.5005,"Volcor"),
(@ENTRY,13,4725.44,180.07,54.7346,"Volcor"),
(@ENTRY,14,4734.01,194.431,55.3888,"Volcor"),
(@ENTRY,15,4747.92,209.436,53.1076,"Volcor");

-- [Q] [A/H] Therylune's Escape
-- Therylune SAI
SET @ENTRY := 3584;
SET @QUEST := 945;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,19,0,100,0,@QUEST,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Therylune - On Quest Accept - Say Line 0"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,53,0,@ENTRY,0,0,0,2,1,0,0,0,0,0,0,0,"Therylune - On Quest Accept - Start WP"),
(@ENTRY,0,2,3,40,0,100,0,20,@ENTRY,0,0,1,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Therylune - On WP 20 - Say Line 1"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,15,@QUEST,0,0,0,0,7,0,0,0,0,0,0,0,0,"Therylune - On WP 20 - Quest Credit"),
(@ENTRY,0,4,0,40,0,100,0,21,@ENTRY,0,0,41,5000,0,0,0,0,1,0,0,0,0,0,0,0,0,"Therylune - On WP 21 - Forced Despawn");
-- Waypoints
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,4520.4,420.235,33.5284,"Therylune"),
(@ENTRY,2,4512.26,408.881,32.9308,"Therylune"),
(@ENTRY,3,4507.94,396.47,32.9476,"Therylune"),
(@ENTRY,4,4507.53,383.781,32.995,"Therylune"),
(@ENTRY,5,4512.1,374.02,33.166,"Therylune"),
(@ENTRY,6,4519.75,373.241,33.1574,"Therylune"),
(@ENTRY,7,4592.41,369.127,31.4893,"Therylune"),
(@ENTRY,8,4598.55,364.801,31.4947,"Therylune"),
(@ENTRY,9,4602.76,357.649,32.9265,"Therylune"),
(@ENTRY,10,4597.88,352.629,34.0317,"Therylune"),
(@ENTRY,11,4590.23,350.9,36.2977,"Therylune"),
(@ENTRY,12,4581.5,348.254,38.3878,"Therylune"),
(@ENTRY,13,4572.05,348.059,42.3539,"Therylune"),
(@ENTRY,14,4564.75,344.041,44.2463,"Therylune"),
(@ENTRY,15,4556.63,341.003,47.6755,"Therylune"),
(@ENTRY,16,4554.38,334.968,48.8003,"Therylune"),
(@ENTRY,17,4557.63,329.783,49.9532,"Therylune"),
(@ENTRY,18,4563.32,316.829,53.2409,"Therylune"),
(@ENTRY,19,4566.09,303.127,55.0396,"Therylune"),
(@ENTRY,20,4561.65,295.456,57.0984,"Therylune"),
(@ENTRY,21,4551.03,293.333,57.1534,"Therylune");

-- [Q] [A/H] Enchanted Azsharite Fel Weaponry
-- [Q] [A/H] Expert Blacksmith!
-- Galvan the Ancient SAI
SET @ENTRY := 7802;
SET @QUEST_ENCHANTED := 3625;
SET @QUEST_EXPERT_BS := 2765;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
UPDATE `creature` SET `position_x`=-12033.400391,`position_y`=-1003.859985,`position_z`=49.779499,`orientation`=3.910880 WHERE `guid`=384 AND `id`=@ENTRY; -- Galvan the Ancient should be at a different position..
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100,@ENTRY*100+1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,@QUEST_ENCHANTED,0,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0,"Galvan the Ancient - On Quest Accept - Run Script"),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,-12040.5,-1008.7,49.4,3.66,"Galvan the Ancient - On Script - Move To Anvil"),
(@ENTRY*100,9,1,0,0,0,100,0,4000,4000,0,0,5,28,0,0,0,0,0,1,0,0,0,0,0,0,0,"Galvan the Ancient - On Script - Emote STATE_WORK_SHEATHED"),
(@ENTRY*100,9,2,0,0,0,100,0,1500,1500,0,0,5,28,0,0,0,0,0,1,0,0,0,0,0,0,0,"Galvan the Ancient - On Script - Emote STATE_WORK_SHEATHED"),
(@ENTRY*100,9,3,0,0,0,100,0,1500,1500,0,0,5,28,0,0,0,0,0,1,0,0,0,0,0,0,0,"Galvan the Ancient - On Script - Emote STATE_WORK_SHEATHED"),
(@ENTRY*100,9,4,0,0,0,100,0,1500,1500,0,0,5,28,0,0,0,0,0,1,0,0,0,0,0,0,0,"Galvan the Ancient - On Script - Emote STATE_WORK_SHEATHED"),
(@ENTRY*100,9,5,0,0,0,100,0,2000,2000,0,0,69,0,0,0,0,0,0,8,0,0,0,-12040.988281,-1007.649170,49.481323,2.364430,"Galvan the Ancient - On Script - Move To Forge"),
(@ENTRY*100,9,6,0,0,0,100,0,1000,1000,0,0,5,28,0,0,0,0,0,1,0,0,0,0,0,0,0,"Galvan the Ancient - On Script - Emote STATE_WORK_SHEATHED"),
(@ENTRY*100,9,7,0,0,0,100,0,1500,1500,0,0,5,28,0,0,0,0,0,1,0,0,0,0,0,0,0,"Galvan the Ancient - On Script - Emote STATE_WORK_SHEATHED"),
(@ENTRY*100,9,8,0,0,0,100,0,1500,1500,0,0,5,28,0,0,0,0,0,1,0,0,0,0,0,0,0,"Galvan the Ancient - On Script - Emote STATE_WORK_SHEATHED"),
(@ENTRY*100,9,9,0,0,0,100,0,2000,2000,0,0,15,@QUEST_ENCHANTED,0,0,0,0,0,7,0,0,0,0,0,0,0,"Galvan the Ancient - On Script - Quest Credit"),
(@ENTRY*100,9,10,0,0,0,100,0,5000,5000,0,0,69,0,0,0,0,0,0,8,0,0,0,-12033.400391,-1003.859985,49.779499,3.910880,"Galvan the Ancient - On Script - Move To Homeposition"),
(@ENTRY,0,1,0,19,0,100,0,@QUEST_EXPERT_BS,0,0,0,80,@ENTRY*100+1,0,2,0,0,0,1,0,0,0,0,0,0,0,"Galvan the Ancient - On Quest Accept - Run Script"),
(@ENTRY*100+1,9,0,0,0,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,-12040.5,-1008.7,49.4,3.66,"Galvan the Ancient - On Script - Move To Anvil"),
(@ENTRY*100+1,9,1,0,0,0,100,0,4000,4000,0,0,5,28,0,0,0,0,0,1,0,0,0,0,0,0,0,"Galvan the Ancient - On Script - Emote STATE_WORK_SHEATHED"),
(@ENTRY*100+1,9,2,0,0,0,100,0,1500,1500,0,0,5,28,0,0,0,0,0,1,0,0,0,0,0,0,0,"Galvan the Ancient - On Script - Emote STATE_WORK_SHEATHED"),
(@ENTRY*100+1,9,3,0,0,0,100,0,1500,1500,0,0,5,28,0,0,0,0,0,1,0,0,0,0,0,0,0,"Galvan the Ancient - On Script - Emote STATE_WORK_SHEATHED"),
(@ENTRY*100+1,9,4,0,0,0,100,0,1500,1500,0,0,5,28,0,0,0,0,0,1,0,0,0,0,0,0,0,"Galvan the Ancient - On Script - Emote STATE_WORK_SHEATHED"),
(@ENTRY*100+1,9,5,0,0,0,100,0,2000,2000,0,0,69,0,0,0,0,0,0,8,0,0,0,-12040.988281,-1007.649170,49.481323,2.364430,"Galvan the Ancient - On Script - Move To Forge"),
(@ENTRY*100+1,9,6,0,0,0,100,0,1000,1000,0,0,5,28,0,0,0,0,0,1,0,0,0,0,0,0,0,"Galvan the Ancient - On Script - Emote STATE_WORK_SHEATHED"),
(@ENTRY*100+1,9,7,0,0,0,100,0,1500,1500,0,0,5,28,0,0,0,0,0,1,0,0,0,0,0,0,0,"Galvan the Ancient - On Script - Emote STATE_WORK_SHEATHED"),
(@ENTRY*100+1,9,8,0,0,0,100,0,1500,1500,0,0,5,28,0,0,0,0,0,1,0,0,0,0,0,0,0,"Galvan the Ancient - On Script - Emote STATE_WORK_SHEATHED"),
(@ENTRY*100+1,9,9,0,0,0,100,0,2000,2000,0,0,15,@QUEST_EXPERT_BS,0,0,0,0,0,7,0,0,0,0,0,0,0,"Galvan the Ancient - On Script - Quest Credit"),
(@ENTRY*100+1,9,10,0,0,0,100,0,5000,5000,0,0,69,0,0,0,0,0,0,8,0,0,0,-12033.400391,-1003.859985,49.779499,3.910880,"Galvan the Ancient - On Script - Move To Homeposition");

-- [Q] [A/H] The Summoning
-- Bath'rah the Windwatcher SAI
SET @ENTRY := 6176;
SET @QUEST := 1713;
SET @SPELL_SUMMON := 8606;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100,@ENTRY*100+1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,@QUEST,0,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0,"Bath'rah the Windwatcher - On Quest Accept - Run Script"),
(@ENTRY*100,9,0,0,0,0,100,0,1000,1000,0,0,53,0,@ENTRY,0,0,0,2,1,0,0,0,0,0,0,0,"Bath'rah the Windwatcher - On Script - Start WP"),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Bath'rah the Windwatcher - On Script - Say Line 0"),
(@ENTRY,0,1,0,0,0,100,0,7,@ENTRY,0,0,80,@ENTRY*100+1,0,2,0,0,0,1,0,0,0,0,0,0,0,"Bath'rah the Windwatcher - On WP 7 - Run Script"),
(@ENTRY*100+1,9,0,0,0,0,100,0,0,0,0,0,11,@SPELL_SUMMON,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bath'rah the Windwatcher - On Script - Cast Summon Cyclonian"),
(@ENTRY*100+1,9,1,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bath'rah the Windwatcher - On Script - Say Line 1"),
(@ENTRY*100+1,9,2,0,0,0,100,0,15000,15000,0,0,53,0,@ENTRY*10,0,0,0,2,1,0,0,0,0,0,0,0,"Bath'rah the Windwatcher - On Script - Start WP");
-- Waypoints
DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY,@ENTRY*10);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,253.05,-1459.09,52.09,"Bath'rah the Windwatcher"),
(@ENTRY,2,256.87,-1440.35,50.09,"Bath'rah the Windwatcher"),
(@ENTRY,3,273.74,-1433.18,50.29,"Bath'rah the Windwatcher"),
(@ENTRY,4,297.77,-1436.7,46.96,"Bath'rah the Windwatcher"),
(@ENTRY,5,329.59,-1442.08,40.31,"Bath'rah the Windwatcher"),
(@ENTRY,6,332.73,-1455.6,42.24,"Bath'rah the Windwatcher"),
(@ENTRY,7,323.83,-1468.92,42.24,"Bath'rah the Windwatcher"),
(@ENTRY*10,1,332.73,-1455.6,42.24,"Bath'rah the Windwatcher"),
(@ENTRY*10,2,329.59,-1442.08,40.31,"Bath'rah the Windwatcher"),
(@ENTRY*10,3,297.77,-1436.7,46.96,"Bath'rah the Windwatcher"),
(@ENTRY*10,4,273.74,-1433.18,50.29,"Bath'rah the Windwatcher"),
(@ENTRY*10,5,256.87,-1440.35,50.09,"Bath'rah the Windwatcher"),
(@ENTRY*10,6,253.05,-1459.09,52.09,"Bath'rah the Windwatcher"),
(@ENTRY*10,7,250.84,-1470.58,55.4491,"Bath'rah the Windwatcher");
-- Waypoints
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,253.05,-1459.09,52.09,"Bath'rah the Windwatcher"),
(@ENTRY,2,256.87,-1440.35,50.09,"Bath'rah the Windwatcher"),
(@ENTRY,3,273.74,-1433.18,50.29,"Bath'rah the Windwatcher"),
(@ENTRY,4,297.77,-1436.7,46.96,"Bath'rah the Windwatcher"),
(@ENTRY,5,329.59,-1442.08,40.31,"Bath'rah the Windwatcher"),
(@ENTRY,6,332.73,-1455.6,42.24,"Bath'rah the Windwatcher"),
(@ENTRY,7,323.83,-1468.92,42.24,"Bath'rah the Windwatcher"),
(@ENTRY,8,332.73,-1455.6,42.24,"Bath'rah the Windwatcher"),
(@ENTRY,9,329.59,-1442.08,40.31,"Bath'rah the Windwatcher"),
(@ENTRY,10,297.77,-1436.7,46.96,"Bath'rah the Windwatcher"),
(@ENTRY,11,273.74,-1433.18,50.29,"Bath'rah the Windwatcher"),
(@ENTRY,12,256.87,-1440.35,50.09,"Bath'rah the Windwatcher"),
(@ENTRY,13,253.05,-1459.09,52.09,"Bath'rah the Windwatcher"),
(@ENTRY,14,250.84,-1470.58,55.4491,"Bath'rah the Windwatcher");

-- [Q] [A/H] Freed from the Hive
-- Zukk'ash Pod SAI
SET @ENTRY := 164954;
SET @QUEST := 4265;
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,19,0,100,0,@QUEST,0,0,0,12,9546,1,25000,0,0,0,8,0,0,0,-5314.81,430.89,11.79,3.46,"Zukk'ash Pod - On Quest Accept - Summon Raschal the Courier");
-- Raschal the Courier SAI
SET @ENTRY := 9546;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0,"Raschal the Courier - Just Summoned - Run Script"),
(@ENTRY*100,9,0,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Raschal the Courier - On Script - Say Line 0"),
(@ENTRY*100,9,1,0,0,0,100,0,6000,6000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Raschal the Courier - On Script - Say Line 1"),
(@ENTRY*100,9,2,0,0,0,100,0,8000,8000,0,0,15,@QUEST,0,0,0,0,7,0,0,0,0,0,0,0,0,"Raschal the Courier - On Script - Quest Credit"),
(@ENTRY*100,9,3,0,0,0,100,0,2000,2000,0,0,41,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Raschal the Courier - On Script - Forced Despawn");
-- Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"Oh man, I thought I was dead for sure. Ugh... still dizzy...",12,0,100,0,0,0,"Raschal the Courier"),
(@ENTRY,1,0,"I can get back to the Stronghold on my own, I think. Now that you bought me some time, I should be able to stealth out of here. Who ever you are... thank you. May Elune bless you always!",12,0,100,0,0,0,"Raschal the Courier");
-- [Q] [A] The Touch of Zanzil
-- Doc Mixilpixil SAI
SET @ENTRY := 7207;
SET @QUEST := 2608;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,@QUEST,0,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0,"Doc Mixilpixil - On Quest Accept - Run Script"),
(@ENTRY*100,9,0,0,0,0,100,0,1000,1000,0,0,5,353,0,0,0,0,0,1,0,0,0,0,0,0,0,"Doc Mixilpixil - On Script - Emote STATE_SPELLKNEELSTART"),
(@ENTRY*100,9,1,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Doc Mixilpixil - On Script - Say Line 0"),
(@ENTRY*100,9,2,0,0,0,100,0,3000,3000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Doc Mixilpixil - On Script - Say Line 1"),
(@ENTRY*100,9,3,0,0,0,100,0,3000,3000,0,0,53,0,@ENTRY,0,0,0,2,1,0,0,0,0,0,0,0,"Doc Mixilpixil - On Script - Start WP"),
(@ENTRY,0,1,2,40,0,100,0,3,@ENTRY,0,0,41,5000,0,0,0,0,1,0,0,0,0,0,0,0,0,"Doc Mixilpixil - On WP 3 - Make Ready To Despawn"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,15,@QUEST,0,0,0,0,7,0,0,0,0,0,0,0,0,"Doc Mixilpixil - On WP 3 - Quest Credit");
-- Waypoints
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,-8805.29,338.5,95.09,"Doc Mixilpixil"),
(@ENTRY,2,-8804.15,325.58,95.09,"Doc Mixilpixil"),
(@ENTRY,3,-8805.56,331.96,95.09,"Doc Mixilpixil");

-- [Q] [A/H] The Torch of Retribution
-- Kalaran Windblade SAI
SET @ENTRY := 8479;
SET @QUEST := 3453;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,@QUEST,0,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0,"Kalaran Windblade - On Quest Accept - Run Script"),
(@ENTRY*100,9,0,0,0,0,100,0,10000,10000,0,0,11,12511,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kalaran Windblade - On Script - Cast Torch Combine"),
(@ENTRY*100,9,1,0,0,0,100,0,8000,8000,0,0,11,12511,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kalaran Windblade - On Script - Cast Torch Combine"),
(@ENTRY*100,9,2,0,0,0,100,0,7000,7000,0,0,11,12511,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kalaran Windblade - On Script - Cast Torch Combine"),
(@ENTRY*100,9,3,0,0,0,100,0,10000,10000,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Kalaran Windblade - On Script - Say Line 0"),
(@ENTRY*100,9,4,0,0,0,100,0,5000,5000,0,0,11,12511,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kalaran Windblade - On Script - Cast Torch Combine"),
(@ENTRY*100,9,5,0,0,0,100,0,1000,1000,0,0,70,0,0,0,0,0,0,14,24166,149410,0,0,0,0,0,"Kalaran Windblade - On Script - Respawn Light of Retribution (GO)"),
(@ENTRY*100,9,6,0,0,0,100,0,2000,2000,0,0,70,0,0,0,0,0,0,14,16762,149047,0,0,0,0,0,"Kalaran Windblade - On Script - Respawn Torch of Retribution (GO)"),
(@ENTRY*100,9,7,0,0,0,100,0,7000,7000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kalaran Windblade - On Script - Say Line 1"),
(@ENTRY*100,9,8,0,0,0,100,0,1000,1000,0,0,15,@QUEST,0,0,0,0,0,7,0,0,0,0,0,0,0,"Kalaran Windblade - On Script - Quest Credit");

-- [Q] [A/H] Did You Lose This?
-- Trenton Lighthammer SAI
SET @ENTRY := 7804;
SET @QUEST := 3321;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,20,0,100,0,@QUEST,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Trenton Lighthammer - On Quest Complete - Say Line 0"),
(@ENTRY,0,1,0,19,0,100,0,@QUEST,0,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0,"Trenton Lighthammer - On Quest Accept - Run Script"),
(@ENTRY*100,9,0,0,0,0,100,0,1000,1000,0,0,5,28,0,0,0,0,0,1,0,0,0,0,0,0,0,"Trenton Lighthammer - On Script - Emote STATE_WORK_SHEATHED"),
(@ENTRY*100,9,1,0,0,0,100,0,1500,1500,0,0,5,28,0,0,0,0,0,1,0,0,0,0,0,0,0,"Trenton Lighthammer - On Script - Emote STATE_WORK_SHEATHED"),
(@ENTRY*100,9,2,0,0,0,100,0,1500,1500,0,0,5,28,0,0,0,0,0,1,0,0,0,0,0,0,0,"Trenton Lighthammer - On Script - Emote STATE_WORK_SHEATHED"),
(@ENTRY*100,9,3,0,0,0,100,0,1500,1500,0,0,5,28,0,0,0,0,0,1,0,0,0,0,0,0,0,"Trenton Lighthammer - On Script - Emote STATE_WORK_SHEATHED"),
(@ENTRY*100,9,4,0,0,0,100,0,1500,1500,0,0,5,28,0,0,0,0,0,1,0,0,0,0,0,0,0,"Trenton Lighthammer - On Script - Emote STATE_WORK_SHEATHED"),
(@ENTRY*100,9,5,0,0,0,100,0,2000,2000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.842743,"Trenton Lighthammer - On Script - Face Forge"),
(@ENTRY*100,9,6,0,0,0,100,0,1000,1000,0,0,5,28,0,0,0,0,0,1,0,0,0,0,0,0,0,"Trenton Lighthammer - On Script - Emote STATE_WORK_SHEATHED"),
(@ENTRY*100,9,7,0,0,0,100,0,1500,1500,0,0,5,28,0,0,0,0,0,1,0,0,0,0,0,0,0,"Trenton Lighthammer - On Script - Emote STATE_WORK_SHEATHED"),
(@ENTRY*100,9,8,0,0,0,100,0,1500,1500,0,0,5,28,0,0,0,0,0,1,0,0,0,0,0,0,0,"Trenton Lighthammer - On Script - Emote STATE_WORK_SHEATHED"),
(@ENTRY*100,9,9,0,0,0,100,0,2000,2000,0,0,15,@QUEST,0,0,0,0,0,7,0,0,0,0,0,0,0,"Trenton Lighthammer - On Script - Quest Credit");

-- [Q] [A/H] Scarlet Armies Approach...
-- Orbaz Bloodbane SAI
SET @ENTRY := 28914;
SET @QUEST := 12757;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,@QUEST,0,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0,"Orbaz Bloodbane - On Quest Accept - Run Script"),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Orbaz Bloodbane - On Script - Say Line 0"),
(@ENTRY*100,9,1,0,0,0,100,0,3000,3000,0,0,11,53097,0,0,0,0,0,1,0,0,0,0,0,0,0,"Orbaz Bloodbane - On Script - Cast Portal: Acherus");

-- [Q] [H] Hinott's Assistance
-- Serge Hinott SAI
SET @ENTRY := 2391;
SET @QUEST := 2480;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,@QUEST,0,0,0,80,@ENTRY*100,0,2,0,0,0,1,0,0,0,0,0,0,0,"Serge Hinott - On Quest Accept - Run Script"),
(@ENTRY*100,9,0,0,0,0,100,0,2000,2000,0,0,69,0,0,0,0,0,0,8,0,0,0,-4.33,-900.68,57.54,1.54,"Serge Hinott - On Script - Move To Pos"),
(@ENTRY*100,9,1,0,0,0,100,0,18000,18000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Serge Hinott - On Script - Say Line 0"),
(@ENTRY*100,9,2,0,0,0,100,0,10000,10000,0,0,15,@QUEST,0,0,0,0,0,7,0,0,0,0,0,0,0,"Serge Hinott - On Script - Quest Credit"),
(@ENTRY*100,9,3,0,0,0,100,0,1000,1000,0,0,69,0,0,0,0,0,0,8,0,0,0,-4.66,-903.92,57.54,3.48,"Serge Hinott - On Script - Move To Pos");

# NeatElves
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(49746, 180619, 509, 1, 1, -9407.718, 1960.211, 85.63906, 1.117009, 0, 0, 0.5299187, 0.8480484, 300, 100, 1);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(77233, 15590, 509, 1, 1, 0, 0, -9407.718, 19620.211, 85.63906, 1.117011, 300, 0, 0, 1, 0, 0);
REPLACE into spell_target_position values (46473, 580, 1667.640, 633.466, 28.050, 6.05);
UPDATE `creature_template` SET `InhabitType` = 5 WHERE `entry` IN (25319, 26262);
UPDATE `creature_template_addon` SET `auras` = '18950 66132' WHERE `entry` =34496;
UPDATE `creature_template_addon` SET `auras` = '18950 66132' WHERE `entry` =35347;
UPDATE `creature_template_addon` SET `auras` = '18950 66132' WHERE `entry` =35348;
UPDATE `creature_template_addon` SET `auras` = '18950 66132' WHERE `entry` =35349;
UPDATE `creature_template_addon` SET `auras` = '18950 66133' WHERE `entry` =34497;
UPDATE `creature_template_addon` SET `auras` = '18950 66133' WHERE `entry` =35350;
UPDATE `creature_template_addon` SET `auras` = '18950 66133' WHERE `entry` =35351;
UPDATE `creature_template_addon` SET `auras` = '18950 66133' WHERE `entry` =35352;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0.01' WHERE `item` =43876;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '0.1' WHERE `item` =43876;

# WDB
INSERT IGNORE INTO `npc_text` (`ID`,`prob0`,`text0_0`,`text0_1`,`lang0`,`em0_0`,`em0_1`,`em0_2`,`em0_3`,`em0_4`,`em0_5`,`prob1`,`text1_0`,`text1_1`,`lang1`,`em1_0`,`em1_1`,`em1_2`,`em1_3`,`em1_4`,`em1_5`,`prob2`,`text2_0`,`text2_1`,`lang2`,`em2_0`,`em2_1`,`em2_2`,`em2_3`,`em2_4`,`em2_5`,`prob3`,`text3_0`,`text3_1`,`lang3`,`em3_0`,`em3_1`,`em3_2`,`em3_3`,`em3_4`,`em3_5`,`prob4`,`text4_0`,`text4_1`,`lang4`,`em4_0`,`em4_1`,`em4_2`,`em4_3`,`em4_4`,`em4_5`,`prob5`,`text5_0`,`text5_1`,`lang5`,`em5_0`,`em5_1`,`em5_2`,`em5_3`,`em5_4`,`em5_5`,`prob6`,`text6_0`,`text6_1`,`lang6`,`em6_0`,`em6_1`,`em6_2`,`em6_3`,`em6_4`,`em6_5`,`prob7`,`text7_0`,`text7_1`,`lang7`,`em7_0`,`em7_1`,`em7_2`,`em7_3`,`em7_4`,`em7_5`) VALUES
(17072,1,'The hulking statue stands inert, untouched for centuries.','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0);

# NeatElves
UPDATE `creature_template_addon` SET `auras`='50325' WHERE `entry` IN (27755,27692,27756);
REPLACE INTO gameobject VALUES ( 60259,180654,30,1,1,713.369,-457.524,68.5122,0.173563,0,0,0.0866726,0.996237,600,100,1);
REPLACE INTO gameobject VALUES ( 60260,180654,30,1,1,663.165,-258.335,14.6348,4.77835,0,0,0.683404,-0.73004,600,100,1);
REPLACE INTO gameobject VALUES ( 7067,180654,30,1,1,383.217,-370.09,-18.2239,5.40746,0,0,0.424005,-0.90566,600,100,1);
REPLACE INTO gameobject VALUES ( 7071,180654,30,1,1,441.107,-243.111,-19.4384,1.38779,0,0,0.639537,0.76876,600,100,1);
REPLACE INTO gameobject VALUES ( 7074,180654,30,1,1,319.974,-177.098,-30.7619,2.12292,0,0,0.873069,0.487596,600,100,1);
REPLACE INTO gameobject VALUES ( 7080,180654,30,1,1,290.743,-90.8554,-39.989,1.69881,0,0,0.750887,0.66043,600,100,1);
REPLACE INTO gameobject VALUES ( 7081,180654,30,1,1,331.946,-4.27387,-2.21438,0.661298,0,0,0.324657,0.945832,600,100,1);
REPLACE INTO gameobject VALUES ( 7082,180654,30,1,1,269.75,40.629,20.6186,2.64521,0,0,0.969359,0.245649,600,100,1);
REPLACE INTO gameobject VALUES ( 7083,180654,30,1,1,393.96,-126.64,-8.37789,5.64857,0,0,0.312007,-0.95008,600,100,1);
REPLACE INTO gameobject VALUES ( 7087,180654,30,1,1,510.265,-79.9827,13.2593,0.951894,0,0,0.45818,0.888859,600,100,1);
REPLACE INTO gameobject VALUES ( 7088,180654,30,1,1,382.65,-257.878,-40.0292,3.81624,0,0,0.943644,-0.330962,600,100,1);
REPLACE INTO gameobject VALUES ( 7089,180654,30,1,1,292.685,-404.206,16.4788,0.0730329,0,0,0.0365083,0.999333,600,100,1);
REPLACE INTO gameobject VALUES ( 7090,180654,30,1,1,187.871,-347.493,49.9014,0.794812,0,0,0.387028,0.922068,600,100,1);
REPLACE INTO gameobject VALUES ( 7091,180654,30,1,1,107.732,-259.346,25.1696,0.524635,0,0,0.25932,0.965792,600,100,1);
REPLACE INTO gameobject VALUES ( 7092,180654,30,1,1,6.7223,-350.19,18.5508,4.91501,0,0,0.631965,-0.774997,600,100,1);
REPLACE INTO gameobject VALUES ( 7094,180654,30,1,1,-30.5515,-393.019,22.7206,4.90951,0,0,0.634093,-0.773257,600,100,1);
REPLACE INTO gameobject VALUES ( 7097,180654,30,1,1,-60.9539,-491.516,45.2524,3.47538,0,0,0.986106,-0.166118,600,100,1);
REPLACE INTO gameobject VALUES ( 7098,180654,30,1,1,-131.512,-559.269,47.5295,3.56884,0,0,0.977269,-0.212002,600,100,1);
REPLACE INTO gameobject VALUES ( 7101,180654,30,1,1,-171.517,-474.433,28.6923,2.25487,0,0,0.903314,0.42898,600,100,1);
REPLACE INTO gameobject VALUES ( 7102,180654,30,1,1,-275.328,-460.374,28.3529,2.90518,0,0,0.993022,0.117933,600,100,1);
REPLACE INTO gameobject VALUES ( 7106,180654,30,1,1,-341.738,-352.906,10.0064,1.94463,0,0,0.826193,0.563386,600,100,1);
REPLACE INTO gameobject VALUES ( 7110,180654,30,1,1,-374.579,-238.116,14.4059,2.3177,0,0,0.916343,0.400394,600,100,1);
REPLACE INTO gameobject VALUES ( 7118,180654,30,1,1,-377.27,-134.087,26.4231,0.201835,0,0,0.100746,0.994912,600,100,1);
REPLACE INTO gameobject VALUES ( 7119,180654,30,1,1,-416.699,-43.0144,35.6197,2.37582,0,0,0.92759,0.3736,600,100,1);
REPLACE INTO gameobject VALUES ( 7122,180654,30,1,1,-268.635,-28.047,41.0637,2.0915,0,0,0.865302,0.501251,600,100,1);
REPLACE INTO gameobject VALUES ( 7123,180654,30,1,1,-170.045,-95.8946,35.1276,4.58907,0,0,0.749335,-0.662191,600,100,1);
REPLACE INTO gameobject VALUES ( 7126,180654,30,1,1,-107.962,-147.486,20.0322,1.25898,0,0,0.588734,0.808327,600,100,1);
REPLACE INTO gameobject VALUES ( 7130,180654,30,1,1,-35.2907,-188.867,21.9315,6.22191,0,0,0.0306314,-0.999531,600,100,1);
REPLACE INTO gameobject VALUES ( 7131,180654,30,1,1,-332.611,-243.971,14.2602,0.685642,0,0,0.336145,0.94181,600,100,1);
REPLACE INTO gameobject VALUES ( 7133,180654,30,1,1,-391.983,-319.717,19.2212,2.61144,0,0,0.965072,0.261984,600,100,1);
REPLACE INTO gameobject VALUES ( 7135,180654,30,1,1,-453.542,-349.82,33.1161,4.78385,0,0,0.681395,-0.731916,600,100,1);
REPLACE INTO gameobject VALUES ( 7138,180654,30,1,1,-529.263,-363.65,34.1552,3.17928,0,0,0.999822,-0.0188435,600,100,1);
REPLACE INTO gameobject VALUES ( 7141,180654,30,1,1,-469.793,-441.135,37.7274,5.88655,0,0,0.19702,-0.980399,600,100,1);
REPLACE INTO gameobject VALUES ( 7142,180654,30,1,1,-588.135,-284.45,54.6961,2.1889,0,0,0.888676,0.458537,600,100,1);
REPLACE INTO gameobject VALUES ( 7145,180654,30,1,1,-598.035,-355.309,61.6211,4.64798,0,0,0.729509,-0.683971,600,100,1);
REPLACE INTO gameobject VALUES ( 7147,180654,30,1,1,-687.065,-354.415,60.9971,2.15277,0,0,0.880247,0.474515,600,100,1);
REPLACE INTO gameobject VALUES ( 7151,180654,30,1,1,-727.579,-313.932,64.9773,3.01513,0,0,0.998002,0.0631869,600,100,1);
REPLACE INTO gameobject VALUES ( 7155,180654,30,1,1,-761.414,-392.392,79.5707,4.00709,0,0,0.907816,-0.419369,600,100,1);
REPLACE INTO gameobject VALUES ( 7157,180654,30,1,1,-906.423,-336.417,55.4283,2.59023,0,0,0.962241,0.272201,600,100,1);
REPLACE INTO gameobject VALUES ( 7159,180654,30,1,1,-903.362,-493.481,46.2971,4.24585,0,0,0.851409,-0.524503,600,100,1);
REPLACE INTO gameobject VALUES ( 7165,180654,30,1,1,-917.213,-574.985,65.2434,4.13276,0,0,0.879692,-0.475544,600,100,1);
REPLACE INTO gameobject VALUES ( 7167,180654,30,1,1,-934.978,-526.52,54.9837,2.61223,0,0,0.965176,0.261602,600,100,1);
REPLACE INTO gameobject VALUES ( 7168,180654,30,1,1,-1024.04,-427.249,51.7721,2.35069,0,0,0.922823,0.385224,600,100,1);
REPLACE INTO gameobject VALUES ( 7169,180654,30,1,1,-1168.4,-441.957,58.9765,2.36404,0,0,0.925374,0.379055,600,100,1);
REPLACE INTO gameobject VALUES ( 7174,180654,30,1,1,-1148.24,-370.189,55.1857,1.47026,0,0,0.670683,0.741744,600,100,1);
REPLACE INTO gameobject VALUES ( 7181,180654,30,1,1,-1098.88,-287.895,58.3042,2.60987,0,0,0.964867,0.262739,600,100,1);
REPLACE INTO gameobject VALUES ( 7183,180654,30,1,1,-1023.15,-266.23,63.7499,1.09798,0,0,0.521826,0.853052,600,100,1);
REPLACE INTO gameobject VALUES ( 7186,180654,30,1,1,-952.973,-216.597,70.0072,5.94389,0,0,0.168836,-0.985644,600,100,1);
REPLACE INTO gameobject VALUES ( 7194,180654,30,1,1,-898.396,-279.974,64.4548,6.26433,0,0,0.00942756,-0.999956,600,100,1);
REPLACE INTO gameobject VALUES ( 7196,180654,30,1,1,-812.467,-263.533,61.2332,0.308656,0,0,0.153716,0.988115,600,100,1);
REPLACE INTO gameobject VALUES ( 7197,180654,30,1,1,-826.867,-206.29,81.1801,2.66564,0,0,0.971817,0.235738,600,100,1);
REPLACE INTO gameobject VALUES ( 7198,180654,30,1,1,-751.005,-304.337,67.9169,0.265461,0,0,0.132341,0.991204,600,100,1);
REPLACE INTO gameobject VALUES ( 7200,180654,30,1,1,-774.599,-276.901,79.6937,1.20087,0,0,0.565001,0.82509,600,100,1);
REPLACE INTO gameobject VALUES ( 7204,180654,30,1,1,-1027.96,-345.436,57.9763,3.28846,0,0,0.997305,-0.0733664,600,100,1);
REPLACE INTO gameobject VALUES ( 7205,180654,30,1,1,-1085.46,-416.242,53.1229,3.69529,0,0,0.961921,-0.273328,600,100,1);
REPLACE INTO gameobject VALUES ( 7206,180654,30,1,1,-1083.35,-524.103,49.6222,4.05972,0,0,0.896468,-0.443108,600,100,1);
REPLACE INTO gameobject VALUES ( 7210,180654,30,1,1,-1084.97,-637.372,57.0936,5.79388,0,0,0.24222,-0.970221,600,100,1);
REPLACE INTO gameobject VALUES ( 7218,180654,30,1,1,-1174.9,-651.996,64.9471,3.50366,0,0,0.983658,-0.180045,600,100,1);
REPLACE INTO gameobject VALUES ( 7220,180654,30,1,1,-1239.32,-587.034,52.7883,2.33813,0,0,0.920384,0.391015,600,100,1);
REPLACE INTO gameobject VALUES ( 7221,180654,30,1,1,-1300.5,-579.354,60.908,2.54861,0,0,0.956368,0.292165,600,100,1);
REPLACE INTO gameobject VALUES ( 7225,180654,30,1,1,-1356.81,-540.745,54.1318,4.59536,0,0,0.747249,-0.664544,600,100,1);
REPLACE INTO gameobject VALUES ( 7227,180654,30,1,1,-1385.98,-466.664,49.9666,4.12098,0,0,0.882477,-0.470355,600,100,1);
REPLACE INTO gameobject VALUES ( 7231,180654,30,1,1,-1331.21,-395.291,50.6683,2.29729,0,0,0.912209,0.409725,600,100,1);
REPLACE INTO gameobject VALUES ( 7233,180654,30,1,1,-1262.1,-436.518,57.4549,3.07954,0,0,0.999519,0.0310191,600,100,1);
REPLACE INTO gameobject VALUES ( 7234,180654,30,1,1,-1290.14,-423.533,65.2731,4.787,0,0,0.680243,-0.732987,600,100,1);
REPLACE INTO gameobject VALUES ( 7237,180654,30,1,1,-1194.3,-414.699,58.366,0.177496,0,0,0.0886317,0.996064,600,100,1);
REPLACE INTO gameobject VALUES ( 7238,180654,30,1,1,-1154.95,-293.355,39.1069,4.95272,0,0,0.617243,-0.786773,600,100,1);
REPLACE INTO gameobject VALUES ( 7241,180654,30,1,1,-970.251,-309.063,65.5942,5.90305,0,0,0.188925,-0.981992,600,100,1);
REPLACE INTO gameobject VALUES ( 7245,180654,30,1,1,-811.955,-345.576,53.6397,0.328295,0,0,0.163411,0.986558,600,100,1);
REPLACE INTO gameobject VALUES ( 7246,180654,30,1,1,-663.423,-398.289,60.754,0.713925,0,0,0.34943,0.936963,600,100,1);
REPLACE INTO gameobject VALUES ( 7248,180654,30,1,1,-551.439,-418.423,55.5601,4.96371,0,0,0.612908,-0.790154,600,100,1);
REPLACE INTO gameobject VALUES ( 7249,180654,30,1,1,-465.786,-398.398,28.1647,1.58415,0,0,0.711811,0.702371,600,100,1);
REPLACE INTO gameobject VALUES ( 7257,180654,30,1,1,-172.513,-399.726,15.8117,5.72634,0,0,0.274841,-0.96149,600,100,1);
REPLACE INTO gameobject VALUES ( 7258,180654,30,1,1,-99.5573,-376.942,15.8158,1.60378,0,0,0.718672,0.695349,600,100,1);
REPLACE INTO gameobject VALUES ( 7259,180654,30,1,1,-32.7714,-523.832,47.5873,6.02479,0,0,0.12884,-0.991665,600,100,1);
REPLACE INTO gameobject VALUES ( 7262,180654,30,1,1,7.6156,-433.974,45.3332,1.86375,0,0,0.802739,0.59633,600,100,1);
REPLACE INTO gameobject VALUES ( 7264,180654,30,1,1,84.1501,-465.508,49.1185,6.10647,0,0,0.0882434,-0.996099,600,100,1);
REPLACE INTO gameobject VALUES ( 7265,180654,30,1,1,64.5926,-440.894,49.684,3.01828,0,0,0.9981,0.0616151,600,100,1);
REPLACE INTO gameobject VALUES ( 7267,180654,30,1,1,136.004,-320.534,49.1353,5.28808,0,0,0.477275,-0.878754,600,100,1);
REPLACE INTO gameobject VALUES ( 7268,180654,30,1,1,256.619,-450.356,49.4244,0.402907,0,0,0.200094,0.979777,600,100,1);
REPLACE INTO gameobject VALUES ( 7280,180654,30,1,1,491.954,-316.141,-12.9273,0.0981722,0,0,0.0490664,0.998796,600,100,1);
REPLACE INTO gameobject VALUES ( 7283,180654,30,1,1,588.82,-348.094,32.6343,4.10684,0,0,0.885779,-0.464107,600,100,1);
REPLACE INTO gameobject VALUES ( 7287,180654,30,1,1,649.332,-273.921,31.1966,1.18831,0,0,0.559807,0.828623,600,100,1);
REPLACE INTO gameobject VALUES ( 7290,180654,30,1,1,596.836,-114.791,41.8419,2.13864,0,0,0.876873,0.480721,600,100,1);
REPLACE INTO gameobject VALUES ( 7291,180654,30,1,1,694.055,-108.678,51.906,6.12139,0,0,0.0808088,-0.99673,600,100,1);
REPLACE INTO gameobject VALUES ( 7294,180654,30,1,1,604.648,-43.066,40.3963,1.75144,0,0,0.768004,0.640445,600,100,1);
REPLACE INTO gameobject VALUES ( 7297,180654,30,1,1,659.018,-4.70805,55.5548,0.571768,0,0,0.282006,0.959413,600,100,1);
REPLACE INTO gameobject VALUES ( 7298,180654,30,1,1,652.94,33.3443,70.3421,1.17574,0,0,0.55459,0.832124,600,100,1);
REPLACE INTO gameobject VALUES ( 7299,180654,30,1,1,541.548,-62.9618,37.852,4.2168,0,0,0.858937,-0.512081,600,100,1);
REPLACE INTO gameobject VALUES ( 7300,180654,30,1,1,558.834,-6.05473,45.4063,2.06403,0,0,0.858335,0.51309,600,100,1);
REPLACE INTO gameobject VALUES ( 7301,180654,30,1,1,489.569,13.109,24.3065,2.8565,0,0,0.989857,0.142066,600,100,1);
REPLACE INTO gameobject VALUES ( 7303,180654,30,1,1,414.552,-36.1106,0.967913,4.02281,0,0,0.904492,-0.426492,600,100,1);
REPLACE INTO `game_event_gameobject` SELECT '2',`guid` FROM `gameobject` WHERE `id`=180654;

# telsamat
UPDATE `creature_template` SET `unit_flags` = '32772' WHERE `entry` in (34944,35429);

# NeatElves
DELETE FROM `creature` WHERE `guid` = 137178;
DELETE FROM `creature` WHERE `guid` = 125641;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id`=10899;
UPDATE gossip_menu SET text_id=9717 WHERE entry=50258 AND text_id=9626;
UPDATE gossip_menu SET text_id=9710 WHERE entry=7927 AND text_id=8139;
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = '450' WHERE `creature_id` =38258;
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = '450' WHERE `creature_id` =37126;

# telsamat
DELETE FROM `creature_onkill_reputation` WHERE `RewOnKillRepFaction1` = 1156;
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(36597, 1156, 0, 7, 0, 1500, 0, 0, 0, 0),
(36612, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(36619, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(36626, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(36627, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(36678, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(36724, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(36725, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(36789, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(36791, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(36805, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(36807, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(36808, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(36811, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(36829, 1156, 0, 7, 0, 45, 0, 0, 0, 0),
(36853, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(36855, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(36880, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(36957, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(36960, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(36968, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(36982, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37007, 1156, 0, 7, 0, 45, 0, 0, 0, 0),
(37011, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37012, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37022, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37029, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37030, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37031, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37032, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37033, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37034, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37035, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37117, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37125, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37126, 1156, 0, 7, 0, 450, 0, 0, 0, 0),
(37127, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37132, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37133, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37134, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37146, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37149, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37228, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37229, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37232, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37501, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37502, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37504, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(37505, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(37506, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(37531, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37532, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37546, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37571, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37595, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37662, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37663, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37664, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37665, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37666, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37695, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37782, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37813, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(37886, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37890, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37919, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37934, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37949, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(37955, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(37957, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(37958, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(37959, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(37970, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(37972, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(37973, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(38106, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(38125, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(38159, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(38174, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(38184, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(38258, 1156, 0, 7, 0, 450, 0, 0, 0, 0),
(38265, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(38266, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(38267, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(38296, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(38297, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(38369, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(38390, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(38401, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(38402, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(38431, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(38434, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(38435, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(38436, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(38472, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(38485, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(38508, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(38549, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(38550, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(38582, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(38583, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(38585, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(38586, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(38711, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(38712, 1156, 0, 7, 0, 15, 0, 0, 0, 0),
(38784, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(38785, 1156, 0, 7, 0, 250, 0, 0, 0, 0),
(39166, 1156, 0, 7, 0, 1500, 0, 0, 0, 0),
(39167, 1156, 0, 7, 0, 1500, 0, 0, 0, 0),
(39168, 1156, 0, 7, 0, 1500, 0, 0, 0, 0);
UPDATE `creature_ai_scripts` SET `id` = '3020351' WHERE `id` =30203051;
DELETE FROM creature_ai_texts WHERE entry = -335621;
DELETE FROM creature_ai_scripts WHERE creature_id IN (33285,33306,33382,33383,33384,33558,33559,33561,33562,33564);
UPDATE creature_template SET AIName = '' WHERE entry IN (33285,33306,33382,33383,33384,33558,33559,33561,33562,33564);
UPDATE creature_template SET ScriptName = '' WHERE entry IN (33738,33739,33740,33743,33744,33745,33746,33747,33748,33749);
DELETE FROM `spell_area` WHERE `spell`=67471 AND `area` IN (4658);
INSERT INTO `spell_area` (`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES(67471,4658,13663,1,13663,0,0,2,1);
UPDATE `creature_template` SET `faction_A`=2080,`faction_H`=2080,`equipment_id`=823 WHERE `entry`=33537;
DELETE FROM `creature_addon` WHERE `guid` = 138139;
DELETE FROM `creature_addon` WHERE `guid` = 138140;
DELETE FROM `creature_addon` WHERE `guid` = 138141;
DELETE FROM `creature_addon` WHERE `guid` = 138142;
DELETE FROM `creature_addon` WHERE `guid` = 138143;
DELETE FROM `creature_addon` WHERE `guid` = 138144;
REPLACE INTO game_event_model_equip (guid,modelid,evententry) VALUES
(47966, 15733, 2), # Cannon Master Willey (Stratholme)
(51507, 15734, 2), # Prince Tortheldrin (Dire Maul)
(49041, 15735, 2), # Emperor Dagran Thaurissan (Blackrock Depths)
(49159, 15737, 2), # War Master Voone (Lower Blackrock Spire)
(49075, 15760, 2), # Goraluk Anvilcrack (Upper Blackrock Spire)
(54700, 22800, 2), # Grand Warlock Nethekurse (The Shattered Halls)
(57895, 22801, 2), # Grandmaster Vorpil (Shadow Labyrinth)
(86210, 22802, 2), # Exarch Maladaar (Auchenai Crypts)
(92337, 22804, 2), # Nethermancer Sepethrea (The Mechanar)
(84992, 22805, 2), # High Botanist Freywinn (The Botanica)
(138139, 19342, 2),
(138140, 19342, 2),
(138141, 19342, 2),
(138142, 19342, 2),
(138143, 19342, 2),
(138144, 19342, 2);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES 
(2902, 3574),(2903, 3575),(2904, 3576),(2905, 3577),(2906, 3578),(2907, 3579),(2908, 3580);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES 
(2902, 3574),(2903, 3575),(2904, 3576),(2905, 3577),(2906, 3578),(2907, 3579),(2908, 3580);
update creature_template set InhabitType=InhabitType|4, RegenHealth=0 where entry=25160;
DELETE FROM `item_loot_template` WHERE `entry` = 17685 AND `item` = 21215;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '50',`maxcount` = '2' WHERE `item` =12202;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '50',`maxcount` = '2' WHERE `item` =12203;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '50',`maxcount` = '2' WHERE `item` =12204;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '50',`maxcount` = '2' WHERE `item` =12205;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '40',`maxcount` = '2' WHERE `item` =12206;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '40',`maxcount` = '2' WHERE `item` =12207;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '50',`maxcount` = '2' WHERE `item` =12208;
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES ('29478', '46725', '0', '0', '0');
DELETE FROM `creature` WHERE `guid` = 75661;
UPDATE `gossip_menu` SET `text_id` = '9690' WHERE `entry` =10250 AND `text_id` =8139;
UPDATE `gossip_menu` SET `text_id` = '9694' WHERE `entry` =7922 AND `text_id` =8149;
UPDATE `gossip_menu` SET `text_id` = '9686' WHERE `entry` =7923 AND `text_id` =6520;
UPDATE `gossip_menu` SET `text_id` = '9702' WHERE `entry` =7925 AND `text_id` =9706;
UPDATE `gossip_menu` SET `text_id` = '9706' WHERE `entry` =7926 AND `text_id` =9710;
UPDATE `gossip_menu` SET `text_id` = '9718' WHERE `entry` =7935 AND `text_id` =9706;
UPDATE `gossip_menu` SET `text_id` = '9698' WHERE `entry` =7921 AND `text_id` =8139;
DELETE FROM `npc_vendor` WHERE `entry` = 37935;
INSERT IGNORE INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES 
(37904, 2880, 0, 0, 0),
(37904, 2892, 0, 0, 0),
(37904, 2901, 0, 0, 0),
(37904, 3371, 0, 0, 0),
(37904, 3466, 0, 0, 0),
(37904, 4357, 4, 3600, 0),
(37904, 4364, 2, 3600, 0),
(37904, 4399, 0, 0, 0),
(37904, 4400, 0, 0, 0),
(37904, 5565, 0, 0, 0),
(37904, 5956, 0, 0, 0),
(37904, 6532, 0, 0, 0),
(37904, 6947, 0, 0, 0),
(37904, 10647, 0, 0, 0),
(37904, 10648, 0, 0, 0),
(37904, 10918, 0, 0, 0),
(37904, 14341, 0, 0, 0),
(37904, 16583, 0, 0, 0),
(37904, 17020, 0, 0, 0),
(37904, 17021, 0, 0, 0),
(37904, 17026, 0, 0, 0),
(37904, 17028, 0, 0, 0),
(37904, 17030, 0, 0, 0),
(37904, 17031, 0, 0, 0),
(37904, 17032, 0, 0, 0),
(37904, 17033, 0, 0, 0),
(37904, 17034, 0, 0, 0),
(37904, 17037, 0, 0, 0),
(37904, 18256, 0, 0, 0),
(37904, 21177, 0, 0, 0),
(37904, 22148, 0, 0, 0),
(37904, 37201, 0, 0, 0),
(37904, 38426, 0, 0, 0),
(37904, 39354, 0, 0, 0),
(37904, 39501, 0, 0, 0),
(37904, 39502, 0, 0, 0),
(37904, 39684, 0, 0, 0),
(37904, 40411, 0, 0, 0),
(37904, 40533, 0, 0, 0),
(37904, 44605, 0, 0, 0);
INSERT IGNORE INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES 
(37935, 2880, 0, 0, 0),
(37935, 2892, 0, 0, 0),
(37935, 2901, 0, 0, 0),
(37935, 3371, 0, 0, 0),
(37935, 3466, 0, 0, 0),
(37935, 4357, 4, 3600, 0),
(37935, 4364, 2, 3600, 0),
(37935, 4399, 0, 0, 0),
(37935, 4400, 0, 0, 0),
(37935, 5565, 0, 0, 0),
(37935, 5956, 0, 0, 0),
(37935, 6532, 0, 0, 0),
(37935, 6947, 0, 0, 0),
(37935, 10647, 0, 0, 0),
(37935, 10648, 0, 0, 0),
(37935, 10918, 0, 0, 0),
(37935, 14341, 0, 0, 0),
(37935, 16583, 0, 0, 0),
(37935, 17020, 0, 0, 0),
(37935, 17021, 0, 0, 0),
(37935, 17026, 0, 0, 0),
(37935, 17028, 0, 0, 0),
(37935, 17030, 0, 0, 0),
(37935, 17031, 0, 0, 0),
(37935, 17032, 0, 0, 0),
(37935, 17033, 0, 0, 0),
(37935, 17034, 0, 0, 0),
(37935, 17037, 0, 0, 0),
(37935, 18256, 0, 0, 0),
(37935, 21177, 0, 0, 0),
(37935, 22148, 0, 0, 0),
(37935, 37201, 0, 0, 0),
(37935, 38426, 0, 0, 0),
(37935, 39354, 0, 0, 0),
(37935, 39501, 0, 0, 0),
(37935, 39502, 0, 0, 0),
(37935, 39684, 0, 0, 0),
(37935, 40411, 0, 0, 0),
(37935, 40533, 0, 0, 0),
(37935, 44605, 0, 0, 0);
REPLACE INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES
('12658', '1', '4949', '0'),
('12659', '1', '10540', '0'),
('12661', '1', '10181', '0'),
('12660', '1', '16802', '0'),
('12662', '1', '3057', '0'),
('12663', '1', '29611', '0'),
('12664', '1', '2784', '0'),
('12665', '1', '7937', '0'),
('12666', '1', '7999', '0'),
('12667', '1', '17468', '0');
UPDATE `gameobject` SET `spawnMask` = '1', `spawntimesecs` = '300' WHERE `guid` = 40494;
UPDATE `gameobject` SET `spawnMask` = '1', `spawntimesecs` = '300' WHERE `guid` = 40493;
UPDATE `gameobject` SET `spawnMask` = '1', `spawntimesecs` = '300' WHERE `guid` = 40492;
UPDATE `gameobject` SET `spawnMask` = '1', `spawntimesecs` = '300' WHERE `guid` = 40490;
UPDATE `gameobject` SET `spawnMask` = '1', `spawntimesecs` = '300' WHERE `guid` = 40491;
UPDATE `gameobject` SET `spawnMask` = '1', `spawntimesecs` = '300' WHERE `guid` = 60227;
UPDATE `gameobject` SET `spawnMask` = '1', `spawntimesecs` = '300' WHERE `guid` = 59566;
UPDATE `gameobject` SET `spawnMask` = '1', `spawntimesecs` = '300' WHERE `guid` = 40499;
UPDATE `gameobject` SET `spawnMask` = '1', `spawntimesecs` = '300' WHERE `guid` = 40498;
UPDATE `gameobject` SET `spawnMask` = '1', `spawntimesecs` = '300' WHERE `guid` = 40495;
DELETE FROM `creature_loot_template` WHERE `entry` = 12377 AND `item` = 22926;
DELETE FROM `creature_loot_template` WHERE `entry` = 17952 AND `item` = 22926;
DELETE FROM `creature_loot_template` WHERE `entry` = 28602 AND `item` = 22926;
DELETE FROM `creature_loot_template` WHERE `entry` = 28601 AND `item` = 22926;

# NeatElves
DELETE FROM `creature_loot_template` WHERE `item` in (21524,21525);
UPDATE `reference_loot_template` SET `entry` = '43507' WHERE `entry` =22926 AND `item` =43507;
UPDATE `reference_loot_template` SET `entry` = '43507' WHERE `entry` =22926 AND `item` =43508;
UPDATE `reference_loot_template` SET `entry` = '43507' WHERE `entry` =22926 AND `item` =43509;
UPDATE `reference_loot_template` SET `entry` = '43507' WHERE `entry` =22926 AND `item` =43510;
#
UPDATE `reference_loot_template` SET `entry` = '42172' WHERE `entry` =22926 AND `item` =42172;
UPDATE `reference_loot_template` SET `entry` = '42172' WHERE `entry` =22926 AND `item` =42173;
UPDATE `reference_loot_template` SET `entry` = '42172' WHERE `entry` =22926 AND `item` =42175;
UPDATE `reference_loot_template` SET `entry` = '42172' WHERE `entry` =22926 AND `item` =42176;
UPDATE `reference_loot_template` SET `entry` = '42172' WHERE `entry` =22926 AND `item` =42177;
#
DELETE FROM `reference_loot_template` WHERE `item` = 39152;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` =22926;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` =41777;
#
UPDATE `creature_loot_template` SET `item` = '43507',`ChanceOrQuestChance` = 1,`mincountOrRef` = '-43507' WHERE `entry` in (23643,23644,23645,23651,23652,23653,23654,23655,23656,23657,23658,23660,23661,23662,23663,23664,23665,23666,23667,23668,23669,23670,23672,23673,23674,23675,23676,23678,23711,23760,23776,23793,23794,23796,23866,23871,23875,23932,23934,23940,23946,23956,23960,23961,23962,23963,23964,23967,23983,23989,23990,23991,23992,23993,24013,24014,24015,24016,24030,24069,24071,24073,24078,24079,24080,24082,24083,24084,24085,24116,24161,24162,24169,24212,24213,24214,24215,24216,24238,24249,24250,24334,24398,24400,24469,24485,24540,24546,24562,24567,24635,24638,24642,24644,24676,24685,24687,24689,24690,24697,24713,24777,24779,24789,24846,24849,24871,24872,24900,24914,24957,25026,25209,25227,25228,25294,25301,25316,25350,25351,25353,25371,25378,25383,25386,25392,25393,25396,25427,25428,25429,25430,25432,25433,25434,25448,25449,25467,25468,25470,25479,25496,25501,25520,25521,25522,25523,25601,25605,25609,25611,25613,25615,25619,25650,25651,25660,25668,25684,25713,25719,25726,25760,25789,25800,25801,25803,25804,25806,25819,25836,25839,25843,25880,25979,25981,26073,26076,26103,26115,26126,26196,26197,26198,26199,26201,26202,26252,26257,26266,26268,26270,26280,26319,26334,26336,26343,26344,26348,26356,26357,26389,26405,26408,26409,26410,26411,26413,26414,26416,26417,26425,26428,26434,26436,26447,26449,26451,26455,26456,26457,26472,26480,26481,26492,26493,26496,26544,26550,26553,26554,26555,26575,26577,26605,26606,26620,26621,26622,26623,26624,26625,26626,26628,26635,26636,26637,26638,26639,26641,26655,26658,26663,26669,26670,26672,26679,26694,26696,26704,26705,26716,26722,26727,26728,26729,26730,26734,26735,26737,26762,26769,26770,26771,26782,26786,26792,26795,26797,26798,26799,26800,26801,26802,26803,26805,26815,26816,26820,26823,26825,26827,26828,26830,26836,26858,26862,26863,26891,26919,26920,26921,26922,26923,26926,26942,26943,26948,26965,27004,27005,27006,27007,27008,27009,27018,27020,27024,27105,27117,27118,27122,27177,27202,27203,27207,27209,27210,27211,27220,27224,27225,27226,27229,27230,27232,27233,27234,27235,27236,27237,27238,27246,27247,27259,27260,27272,27278,27279,27283,27284,27286,27287,27288,27330,27332,27333,27340,27342,27343,27356,27358,27360,27362,27363,27367,27370,27383,27401,27405,27406,27410,27424,27431,27470,27493,27508,27533,27534,27539,27545,27546,27547,27554,27555,27570,27579,27580,27615,27633,27635,27636,27639,27640,27641,27676,27680,27699,27701,27729,27731,27734,27736,27797,27799,27800,27805,27823,27824,27826,27830,27835,27836,27859,27860,27871,27926,27927,27941,27947,27949,27960,27961,27962,27963,27964,27965,27966,27969,27970,27971,27972,28003,28004,28011,28022,28023,28026,28034,28035,28036,28068,28069,28077,28080,28081,28085,28086,28087,28101,28108,28109,28110,28123,28124,28129,28145,28158,28186,28188,28201,28231,28246,28249,28255,28257,28288,28303,28325,28345,28368,28373,28388,28402,28403,28410,28411,28412,28417,28418,28419,28442,28443,28465,28467,28494,28495,28496,28504,28519,28538,28547,28564,28565,28575,28578,28579,28580,28581,28582,28583,28584,28597,28600,28603,28641,28659,28732,28734,28747,28784,28793,28802,28803,28826,28835,28836,28837,28838,28843,28848,28851,28861,28916,28917,28918,28920,28961,28965,28988,29036,29123,29124,29128,29129,29133,29211,29235,29236,29237,29304,29319,29323,29329,29330,29331,29332,29333,29334,29335,29338,29369,29370,29375,29376,29377,29380,29389,29392,29402,29404,29407,29409,29411,29412,29413,29426,29449,29450,29451,29489,29503,29518,29553,29554,29569,29586,29590,29614,29622,29623,29626,29646,29652,29654,29656,29664,29697,29699,29717,29719,29720,29722,29724,29735,29738,29768,29774,29792,29793,29819,29820,29822,29826,29829,29830,29832,29834,29836,29838,29843,29844,29874,29875,29880,29885,29920,29974,30037,30111,30135,30144,30146,30147,30148,30167,30179,30202,30204,30205,30206,30222,30250,30258,30276,30277,30278,30279,30283,30284,30285,30286,30287,30319,30329,30333,30414,30430,30447,30448,30453,30541,30543,30597,30632,30673,30680,30681,30682,30687,30689,30696,30697,30698,30701,30725,30746,30751,30829,30830,30831,30842,30845,30849,30856,30860,30861,30862,30863,30864,30865,30873,30876,30877,30894,30920,30921,30922,30949,30951,30988,31015,31037,31043,31123,31139,31140,31145,31147,31150,31152,31155,31159,31160,31161,31198,31225,31231,31233,31258,31262,31267,31283,31320,31321,31325,31396,31399,31401,31402,31403,31404,31411,31691,31693,31718,31731,31738,31746,31754,31775,31779,31783,31843,31847,31853,31900,32149,32175,32181,32236,32255,32257,32259,32260,32262,32263,32276,32278,32280,32284,32285,32289,32290,32297,32300,32349,32353,32482,32502,32507,32572,32770,32772,33354,33355,33422,33430,33431,33525,33526,33527,33528,33699,33754,33755,33772,33818,33819,33820,33822,33823,33824,34015,34069,34085,34086,34133,34134,34135,34183,34190,34193,34196,34197,34198,34199,34267,34269,34271,34273,34300,34728,34734,34838,34839,35143,36724,36805,36807,36808,36811,36829,37004,37007,37011,37016,37017,37026,37030,37032,37098,37144,37148,37149,37544,37545,38494,40417) AND `item` =22926;
DELETE FROM `creature_loot_template` WHERE `entry` in (10211,15980,15981,23651,23652,23653,23654,23655,23656,23657,23658,23660,23661,23662,23663,23664,23665,23666,23667,23668,23669,23670,23672,23673,23674,23675,23676,23677,23678,23711,23760,23776,23793,23794,23796,23866,23871,23875,23883,23931,23932,23934,23940,23946,23956,23961,23962,23963,23964,23967,23982,23983,23989,23990,23991,24014,24015,24016,24030,24078,24085,24104,24116,24120,24161,24162,24169,24200,24212,24213,24214,24215,24216,24238,24249,24250,24286,24291,24334,24398,24400,24458,24469,24474,24533,24540,24542,24543,24567,24628,24635,24638,24642,24644,24676,24713,24714,24779,24788,24846,24900,24957,25026,25209,25301,25316,25353,25378,25392,25427,25428,25429,25430,25432,25433,25434,25449,25467,25468,25470,25479,25496,25497,25501,25520,25521,25522,25523,25601,25605,25609,25613,25615,25618,25651,25719,25725,25726,25760,25788,25789,25790,25800,25801,25803,25804,25806,25808,25809,25836,25839,25843,25880,25979,26186,26196,26197,26198,26199,26201,26257,26266,26268,26270,26280,26295,26319,26334,26348,26356,26357,26389,26405,26408,26409,26410,26411,26414,26416,26425,26428,26434,26436,26447,26449,26451,26456,26480,26481,26493,26496,26544,26550,26554,26575,26577,26578,26626,26655,26663,26679,26681,26704,26705,26708,26727,26728,26729,26762,26786,26795,26797,26799,26800,26801,26802,26803,26805,26815,26816,26820,26823,26825,26826,26827,26828,26836,26862,26863,26919,26920,26921,26922,26923,26926,26942,26943,26965,27002,27004,27005,27006,27007,27008,27009,27020,27024,27117,27118,27177,27202,27203,27206,27207,27209,27210,27211,27232,27233,27234,27235,27236,27237,27238,27246,27247,27259,27260,27278,27279,27289,27330,27332,27333,27334,27340,27342,27343,27355,27356,27357,27358,27367,27371,27405,27406,27416,27424,27470,27493,27508,27539,27545,27546,27547,27554,27555,27570,27579,27580,27615,27627,27640,27676,27699,27701,27731,27732,27805,27826,27830,27859,27860,27926,27927,27947,27949,27962,27963,27966,28034,28035,28036,28068,28076,28077,28080,28081,28082,28105,28123,28124,28151,28186,28188,28200,28303,28345,28368,28373,28388,28402,28403,28417,28418,28442,28465,28494,28495,28496,28504,28538,28575,28578,28579,28580,28581,28582,28600,28602,28836,28837,28838,28848,28861,28916,28917,28918,28961,28965,28988,29211,29235,29236,29237,29266,29315,29323,29329,29330,29331,29332,29333,29338,29369,29370,29374,29375,29376,29377,29404,29407,29409,29413,29426,29427,29489,29490,29498,29503,29518,29553,29554,29569,29586,29592,29614,29622,29623,29626,29652,29695,29696,29717,29792,29793,29794,29809,29819,29820,29822,29826,29843,29862,29874,29875,29880,29885,29915,30037,30046,30105,30111,30146,30147,30179,30208,30222,30243,30247,30319,30469,30632,30725,30751,30856,30860,30868,31145,31258,31262,31267,31399,31401,31507,31511,31693,31731,31738,31746,32162,32236,32238,32250,32259,32262,32263,32268,32276,32279,32285,32289,32290,32291,32297,32349,32576,33422,33537,33819,34728,34734,34838,34839,35305,35307,35309,36805,36808,36811,36998,37003,37004,37016,37017,37021,37026,37027,37029,37030,37031,37032,37033,37034,37035,37144,37146,37148,37149,37228,37229,37531,38072,38075,38076,38078,38079,38080,38081,38082,38083,38084,38085,38086,38087,38088,38089,38090,38091,38092,38093,38095,38096,38097,38134,38137) AND `item` =33470;
DELETE FROM `reference_loot_template` WHERE `entry` = 22926;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `item` =23802;
DELETE FROM `creature_loot_template` WHERE `item` = 22926;
DELETE FROM `creature_loot_template` WHERE `entry` = 4096 AND `item` = 24302;
DELETE FROM `creature_loot_template` WHERE `entry` = 7370 AND `item` = 24302;
DELETE FROM `creature_loot_template` WHERE `entry` = 7370 AND `item` = 29727;
DELETE FROM `creature_loot_template` WHERE `entry` = 7370 AND `item` = 29731;
DELETE FROM `creature_loot_template` WHERE `entry` = 7370 AND `item` = 23632;
DELETE FROM `creature_loot_template` WHERE `entry` = 12377 AND `item` = 23625;
DELETE FROM `creature_loot_template` WHERE `entry` = 26728 AND `item` = 24306;
DELETE FROM `creature_loot_template` WHERE `entry` = 26921 AND `item` = 24305;
DELETE FROM `creature_loot_template` WHERE `entry` = 28504 AND `item` = 24305;
DELETE FROM `creature_loot_template` WHERE `entry` = 28538 AND `item` = 23635;
DELETE FROM `creature_loot_template` WHERE `item` IN (22926,23620,23622,23623,23624,23625,23626,23627,23628,23629,23630,23631,23632,23633,23634,23635,23636,23637,24164,24165,24166,24167,24168,24169,24170,24171,24302,24303,24304,24305,24306,24307,25905,25906,25907,25909,28279,28280,29723,29724,29725,29726,29727,29728,29729,29731,29732,29733,29734,32411);
DELETE FROM `item_loot_template` WHERE `entry` = 43624 AND `item` = 22926;
DELETE FROM `item_loot_template` WHERE `entry` = 33926 AND `item` = 22926;
UPDATE `creature_template` SET `lootid` = '16215' WHERE `entry` =29899;
UPDATE `creature_template` SET `lootid` = '30083' WHERE `entry` =30424;
UPDATE `creature_template` SET `lootid` = '30681' WHERE `entry` =30998;
UPDATE `creature_template` SET `lootid` = '32353' WHERE `entry` =32368;
UPDATE `creature_template` SET `lootid` = '30680' WHERE `entry` =30999;
UPDATE `creature_template` SET `lootid` = '30682' WHERE `entry` =31000;
UPDATE `creature_template` SET `lootid` = '30453' WHERE `entry` =31001;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-30' WHERE `item` =21928;
UPDATE creature_template SET npcflag=npcflag&~8388608 WHERE entry in (33238,33239);
DELETE FROM `creature_ai_scripts` WHERE `id` = 2367851;
DELETE FROM `creature_ai_texts` WHERE `entry` = -236783;
DELETE FROM `creature_ai_texts` WHERE `entry` = -236782;
DELETE FROM `creature_ai_texts` WHERE `entry` = -236781;
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` =23678;
DELETE FROM `creature_loot_template` WHERE `item` = 21235;
DELETE FROM `creature_loot_template` WHERE `item` = 21241;
DELETE FROM `creature_loot_template` WHERE `item` = 21308;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '100',`groupid` = '0' WHERE `entry` =21327 AND `item` =21213;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '100',`groupid` = '0' WHERE `entry` =21327 AND `item` =21325;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =21327 AND `item` =17706;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =21327 AND `item` =17709;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =21327 AND `item` =17720;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =21327 AND `item` =17722;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =21327 AND `item` =17724;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =21327 AND `item` =17725;
DELETE FROM `creature_loot_template` WHERE `entry` IN (10429,21536,19221,21558,17975,20521,17862,9237,10899,20568,16807,18732,20306,18373,1853,10997,11486,9019) AND `item` = 21524;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1',`groupid` = '0' WHERE `entry` =10436 AND `item` =16704;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '50',`groupid` = '2' WHERE `entry` =10436 AND `item` =13535;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '50',`groupid` = '2' WHERE `entry` =10436 AND `item` =13537;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '50',`groupid` = '2' WHERE `entry` =10436 AND `item` =13538;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '50',`groupid` = '2' WHERE `entry` =10436 AND `item` =13539;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE`item` =16702;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` =  '0.01' WHERE `item` =20400;
UPDATE `creature_template` SET `gossip_menu_id` = '30481' WHERE `entry` =30481;
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES
(30481, 13788);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 9258 AND `item` = 16716;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 9692 AND `item` = 16716;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 9736 AND `item` = 16716;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 10426 AND `item` = 16714;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 10463 AND `item` = 16714;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 10464 AND `item` = 16714;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 10495 AND `item` = 16714;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 10499 AND `item` = 16716;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 10500 AND `item` = 16716;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 10507 AND `item` = 16716;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 11257 AND `item` = 16716;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` =9096 AND `item` =16681;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` =10406 AND `item` =16681;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` =10407 AND `item` =16681;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` =10421 AND `item` =16681;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 9239 AND `item` = 16685;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 10398 AND `item` = 16685;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 10400 AND `item` = 16685;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 10419 AND `item` = 16685;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 10422 AND `item` = 16685;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 10425 AND `item` = 16685;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 10469 AND `item` = 16685;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 11261 AND `item` = 16684;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 9097 AND `item` = 16713;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 9259 AND `item` = 16713;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 9260 AND `item` = 16713;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 9265 AND `item` = 16713;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 9716 AND `item` = 16713;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 9736 AND `item` = 16713;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 10318 AND `item` = 16713;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 10405 AND `item` = 16710;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 10472 AND `item` = 16710;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 10488 AND `item` = 16710;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 10505 AND `item` = 16710;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 11284 AND `item` = 16710;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 9236 AND `item` = 16712;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` =10412 AND `item` =16671;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` =10413 AND `item` =16671;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` =10478 AND `item` =16671;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` =11043 AND `item` =16671;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` =10901 AND `item` =16705;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 9097 AND `item` = 16735;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 9259 AND `item` = 16735;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 9260 AND `item` = 16735;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 9267 AND `item` = 16735;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 9268 AND `item` = 16736;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 9716 AND `item` = 16735;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 9736 AND `item` = 16735;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 10319 AND `item` = 16735;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 10414 AND `item` = 16736;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 10416 AND `item` = 16736;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '1' WHERE `entry` = 10417 AND `item` = 16736;
UPDATE `gossip_menu` SET `text_id` = '8109' WHERE `entry` =6798 AND `text_id` =68;
UPDATE `gossip_menu` SET `text_id` = '8109' WHERE `entry` =6797 AND `text_id` =68;
UPDATE `gossip_menu` SET `text_id` = '8109' WHERE `entry` =8769 AND `text_id` =68;
DELETE FROM `gameobject_questrelation` WHERE `id` = 187236 AND `quest` = 11528;
DELETE FROM `gameobject_questrelation` WHERE `id` = 187236 AND `quest` = 13203;

# Fix
UPDATE creature_loot_template SET ChanceOrQuestChance=ABS(ChanceOrQuestChance) WHERE item = 11754;
DELETE FROM `creature_questrelation` WHERE `quest` = 12616;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 12616;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12616;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 12616;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (16285, 12616);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=16285;

# NeatElves
DELETE FROM `creature_loot_template` WHERE `entry` = 10436 AND `item` = 13537;
DELETE FROM `creature_loot_template` WHERE `entry` = 10436 AND `item` = 13538;
DELETE FROM `creature_loot_template` WHERE `entry` = 10436 AND `item` = 13539;
UPDATE `creature_loot_template` SET `groupid` = '0',`mincountOrRef` = '-13535' WHERE `entry` =10436 AND `item` =13535;
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(13535, 13535, 0, 1, 1, 1),
(13535, 13537, 0, 1, 1, 1),
(13535, 13538, 0, 1, 1, 1),
(13535, 13539, 0, 1, 1, 1);
UPDATE `creature_template` SET `gossip_menu_id` = '5232' WHERE `entry` in (13445,13444);
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES ('5232', '6250');
UPDATE `creature_template` SET `gossip_menu_id` = '6813' WHERE `entry` =15760;
UPDATE `gossip_menu` SET `entry` = '6813' WHERE `entry` =50155 AND `text_id` =8139;
DELETE FROM `creature` WHERE `guid` = 123422;
DELETE FROM `creature` WHERE `guid` = 119659;
DELETE FROM `creature` WHERE `guid` = 119661;
INSERT IGNORE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(9690, 'Need TXT YTDB', '', 0, 100, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

# Conditions
REPLACE INTO `conditions` VALUES ('13', '0', '44844', '0', '18', '1', '25160', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '44883', '0', '18', '1', '24882', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '44884', '0', '18', '1', '25160', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '44885', '0', '18', '1', '25160', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '46350', '0', '18', '1', '25160', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('13', '0', '46818', '0', '18', '1', '26262', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '3062', '3795', '0', '8', '826', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('14', '2911', '3585', '0', '8', '4972', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3062', '0', '0', '8', '826', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3062', '1', '0', '8', '826', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3062', '2', '0', '8', '826', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3062', '3', '0', '8', '826', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3062', '4', '0', '8', '826', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3062', '5', '0', '8', '826', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3062', '6', '0', '8', '826', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '2901', '0', '0', '9', '4941', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3862', '0', '0', '9', '6001', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '3862', '1', '0', '9', '6002', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '1285', '0', '0', '9', '3377', '1', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10318', '2', '0', '11', '67334', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '33239', '2', '0', '11', '67401', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10318', '2', '0', '17', '2817', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '33239', '2', '0', '17', '2816', '0', '0', '0', '', null);
REPLACE INTO `creature_loot_template` VALUES ('29310', '21524', '100', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31465', '21524', '100', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28941', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('28940', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('28936', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('28611', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('28610', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('28609', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('27655', '21525', '100', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31560', '21525', '100', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26731', '21524', '100', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30510', '21524', '100', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25611', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('25467', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('25393', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('25227', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('24676', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('24084', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('24080', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('24078', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('23967', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('23956', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('23657', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('23653', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('23644', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('23643', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('23592', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('23589', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('22060', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('19701', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('19434', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('18732', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('18373', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('17975', '21524', '20', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('17862', '21524', '20', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('17337', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('17271', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('17270', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('17269', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('17259', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('17189', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('16907', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('16904', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('16847', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('16807', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('16346', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('16343', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('16340', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('16328', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('16305', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('16162', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('15958', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('15692', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('15685', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('15643', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('15641', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('14603', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('14431', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('13331', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('13326', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('13276', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('12897', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('12896', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('12856', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('12050', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('11913', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('11911', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('11910', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('11883', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('11881', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('11880', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('11561', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('11486', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('11477', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('11476', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('11291', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('10997', '21524', '20', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('10899', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('10816', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('10760', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('10759', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('10605', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('10485', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('10480', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('10391', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('10390', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('9545', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('9464', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('9462', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('9454', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('9237', '21524', '20', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('9019', '21524', '20', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('8915', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('8904', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('8900', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('8896', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('8551', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('8531', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('8529', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('8442', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('7883', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('7856', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('7855', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('7726', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('7603', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('7524', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('7440', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('7439', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('7438', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('7346', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('7309', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('7158', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('7157', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('7156', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('7153', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('7120', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('7118', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('7115', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('7112', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('7107', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('7105', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('7076', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('7033', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('6575', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('6426', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('6222', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('6207', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('6201', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('6198', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('6011', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('6006', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('5844', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('5843', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('5616', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('5615', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('5474', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('5472', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('5471', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('5362', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('5254', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('5234', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('5232', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('5184', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('4673', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('4666', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('4656', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('4655', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('4649', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('4641', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('4637', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('4506', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('4472', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('4467', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('4466', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('4463', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('4416', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('4308', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('4284', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('4280', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('4116', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('4101', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('4099', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('4097', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('4093', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('4065', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('4027', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('4023', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('4004', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('3989', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('3988', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('3840', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('3801', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('3762', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('3755', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('3459', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('3385', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('3384', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('3381', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('3286', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('3278', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('3277', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('3273', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('3272', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('3271', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('3269', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('3266', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('3263', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('3261', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('3258', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('3232', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('3197', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('3129', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('3128', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('3118', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('3117', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2978', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2976', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2964', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2963', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2950', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2743', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2721', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2720', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2718', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2717', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2693', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2654', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2649', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2647', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2589', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2586', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2562', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2556', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2555', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2453', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2373', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2372', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2319', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2272', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2266', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2261', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2260', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2253', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2252', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2247', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2241', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2189', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2149', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2011', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2009', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('2003', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1973', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1940', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1853', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1796', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1795', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1791', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1787', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1785', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1783', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1727', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1653', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1564', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1563', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1562', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1561', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1538', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1534', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1530', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1526', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1525', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1522', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1489', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1488', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1397', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1180', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1172', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1165', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1163', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1162', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1157', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1144', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1142', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1115', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1110', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1038', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('1007', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('948', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('941', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('940', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('937', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('824', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('787', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('783', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('710', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('696', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('680', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('678', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('674', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('671', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('670', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('623', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('604', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('598', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('597', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('590', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('589', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('587', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('568', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('531', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('511', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('504', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('500', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('485', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('475', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('474', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('440', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('436', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('434', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('433', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('432', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('430', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('426', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('203', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('202', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('122', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('121', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('117', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('95', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('94', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('40', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('3', '21524', '0.01', '1', '0', '-21524', '1');
REPLACE INTO `creature_loot_template` VALUES ('35143', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('34839', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('34838', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('34734', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('34728', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('34300', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('34273', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('34271', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('34269', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('34267', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('34199', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('34198', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('34197', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('34196', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('34193', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('34190', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('34183', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('34135', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('34134', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('34133', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('34086', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('34085', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('34069', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('34015', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('33824', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('33823', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('33822', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('33820', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('33819', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('33818', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('33772', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('33755', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('33754', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('33699', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('33528', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('33527', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('33526', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('33525', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('33431', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('33430', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('33422', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('33355', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('33354', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('32772', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('32770', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('32572', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('32507', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('32502', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('32482', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('32353', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('32349', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('32300', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('32297', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('32290', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('32289', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('32285', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('32284', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('32280', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('32278', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('32276', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('32263', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('32262', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('32260', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('32259', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('32257', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('32255', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('32236', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('32181', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('32175', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('32149', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31900', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31853', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31847', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31843', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31783', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31779', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31775', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31754', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31746', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31738', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31731', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31718', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31693', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31691', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31411', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31404', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31403', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31402', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31401', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31399', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31396', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31325', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31321', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31320', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31283', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31267', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31262', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31258', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31233', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31231', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31225', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31198', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31161', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31160', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31159', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31155', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31152', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31150', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31147', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31145', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31140', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31139', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31123', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31043', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31037', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('31015', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30988', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30951', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30949', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30922', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30921', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30920', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30894', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30877', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30876', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30873', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30865', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30864', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30863', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30862', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30861', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30860', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30856', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30849', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30845', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30842', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30831', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30830', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30829', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30751', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30746', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30725', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30701', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30698', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30697', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30696', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30689', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30687', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30682', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30681', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30680', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30632', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30597', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30543', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30541', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30453', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30448', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30447', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30430', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30414', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30333', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30329', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30319', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30287', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30286', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30285', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30284', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30283', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30279', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30278', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30277', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30276', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30258', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30250', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30222', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30206', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30205', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30204', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30202', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30179', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30167', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30148', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30147', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30146', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30144', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30135', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30111', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('30037', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29974', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29920', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29885', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29880', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29875', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29874', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29844', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29843', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29838', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29836', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29834', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29832', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29830', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29829', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29826', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29822', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29820', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29819', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29793', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29792', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29774', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29768', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29738', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29735', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29724', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29722', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29720', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29719', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29717', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29699', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29697', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29664', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29656', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29654', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29652', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29646', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29626', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29623', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29622', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29614', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29590', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29586', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29569', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29554', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29553', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29518', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29503', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29489', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29451', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29450', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29449', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29426', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29413', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29412', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29411', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29409', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29407', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29404', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29402', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29392', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29389', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29380', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29377', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29376', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29375', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29370', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29369', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29338', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29335', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29334', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29333', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29332', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29331', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29330', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29329', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29323', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29319', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29304', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29237', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29236', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29235', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29211', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29133', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29129', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29128', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29124', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29123', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('29036', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28988', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28965', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28961', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28920', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28918', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28917', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28916', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28861', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28851', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28848', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28843', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28838', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28837', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28836', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28835', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28826', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28803', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28802', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28793', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28784', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28747', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28734', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28732', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28659', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28641', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28603', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28600', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28597', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28584', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28583', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28582', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28581', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28580', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28579', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28578', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28575', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28565', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28564', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28547', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28538', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28519', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28504', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28496', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28495', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28494', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28467', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28465', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28443', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28442', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28419', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28418', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28417', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28412', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28411', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28410', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28403', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28402', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28388', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28373', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28368', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28345', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28325', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28303', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28288', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28257', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28255', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28249', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28246', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28231', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28201', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28188', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28186', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28158', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28145', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28129', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28124', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28123', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28110', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28109', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28108', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28101', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28087', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28086', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28085', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28081', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28080', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28077', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28069', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28068', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28036', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28035', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28034', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28026', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28023', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28022', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28011', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28004', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('28003', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27972', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27971', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27970', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27969', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27966', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27965', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27964', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27963', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27962', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27961', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27960', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27949', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27947', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27941', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27927', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27926', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27871', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27860', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27859', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27836', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27835', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27830', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27826', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27824', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27823', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27805', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27800', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27799', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27797', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27736', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27734', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27731', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27729', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27701', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27699', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27680', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27676', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27641', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27640', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27639', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27636', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27635', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27633', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27615', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27580', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27579', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27570', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27555', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27554', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27547', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27546', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27545', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27539', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27534', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27533', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27508', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27493', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27470', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27431', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27424', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27410', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27406', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27405', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27401', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27383', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27370', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27367', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27363', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27362', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27360', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27358', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27356', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27343', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27342', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27340', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27333', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27332', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27330', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27288', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27287', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27286', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27284', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27283', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27279', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27278', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27272', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27260', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27259', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27247', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27246', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27238', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27237', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27236', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27235', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27234', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27233', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27232', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27230', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27229', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27226', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27225', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27224', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27220', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27211', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27210', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27209', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27207', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27203', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27202', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27177', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27122', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27118', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27117', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27105', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27024', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27020', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27018', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27009', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27008', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27007', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27006', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27005', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('27004', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26965', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26948', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26943', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26942', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26926', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26923', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26922', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26921', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26920', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26919', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26891', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26863', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26862', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26858', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26836', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26830', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26828', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26827', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26825', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26823', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26820', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26816', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26815', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26805', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26803', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26802', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26801', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26800', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26799', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26798', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26797', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26795', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26792', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26786', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26782', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26771', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26770', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26769', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26762', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26737', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26735', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26734', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26730', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26729', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26728', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26727', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26722', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26716', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26705', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26704', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26696', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26694', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26679', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26672', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26670', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26669', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26663', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26658', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26655', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26641', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26639', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26638', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26637', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26636', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26635', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26628', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26626', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26625', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26624', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26623', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26622', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26621', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26620', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26606', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26605', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26577', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26575', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26555', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26554', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26553', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26550', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26544', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26496', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26493', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26492', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26481', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26480', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26472', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26457', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26456', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26455', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26451', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26449', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26447', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26436', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26434', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26428', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26425', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26417', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26416', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26414', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26413', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26411', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26410', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26409', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26408', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26405', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26389', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26357', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26356', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26348', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26344', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26343', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26336', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26334', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26319', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26280', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26270', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26268', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26266', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26257', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26252', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26202', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26201', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26199', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26198', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26197', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26196', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26126', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26115', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26103', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26076', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('26073', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25981', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25979', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25880', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25843', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25839', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25836', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25819', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25806', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25804', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25803', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25801', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25800', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25789', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25760', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25726', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25719', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25713', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25684', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25668', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25660', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25651', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25650', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25619', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25615', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25613', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25611', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25609', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25605', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25601', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25523', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25522', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25521', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25520', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25501', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25496', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25479', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25470', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25468', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25467', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25449', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25448', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25434', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25433', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25432', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25430', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25429', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25428', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25427', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25396', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25393', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25392', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25386', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25383', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25378', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25371', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25353', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25351', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25350', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25316', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25301', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25294', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25228', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25227', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25209', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('25026', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24957', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24914', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24900', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24872', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24871', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24849', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24846', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24789', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24779', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24777', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24713', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24697', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24690', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24689', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24687', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24685', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24676', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24644', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24642', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24638', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24635', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24567', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24562', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24546', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24540', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24485', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24469', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24400', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24398', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24334', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24250', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24249', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24238', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24216', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24215', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24214', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24213', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24212', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24169', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24162', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24161', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24116', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24085', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24084', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24083', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24082', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24080', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24079', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24078', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24073', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24071', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24069', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24030', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24016', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24015', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24014', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('24013', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23993', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23992', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23991', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23990', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23989', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23983', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23967', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23964', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23963', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23962', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23961', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23960', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23956', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23946', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23940', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23934', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23932', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23875', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23871', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23866', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23796', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23794', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23793', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23776', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23760', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23711', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23678', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23676', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23675', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23674', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23673', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23672', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23670', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23669', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23668', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23667', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23666', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23665', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23664', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23663', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23662', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23661', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23660', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23658', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23657', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23656', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23655', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23654', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23653', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23652', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23651', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23645', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23644', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('23643', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('36724', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('36805', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('36807', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('36808', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('36811', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('36829', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('37004', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('37007', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('37011', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('37016', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('37017', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('37026', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('37030', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('37032', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('37144', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('37148', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('37149', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('37544', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('37545', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('37098', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('38494', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('40417', '42172', '1', '1', '0', '-42172', '1');
REPLACE INTO `creature_loot_template` VALUES ('35143', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('34839', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('34838', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('34734', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('34728', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('34300', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('34273', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('34271', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('34269', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('34267', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('34199', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('34198', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('34197', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('34196', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('34193', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('34190', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('34183', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('34135', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('34134', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('34133', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('34086', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('34085', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('34069', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('34015', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('33824', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('33823', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('33822', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('33820', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('33819', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('33818', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('33772', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('33755', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('33754', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('33699', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('33528', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('33527', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('33526', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('33525', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('33431', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('33430', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('33422', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('33355', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('33354', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('32772', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('32770', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('32572', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('32507', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('32502', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('32482', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('32353', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('32349', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('32300', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('32297', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('32290', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('32289', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('32285', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('32284', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('32280', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('32278', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('32276', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('32263', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('32262', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('32260', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('32259', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('32257', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('32255', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('32236', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('32181', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('32175', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('32149', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31900', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31853', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31847', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31843', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31783', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31779', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31775', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31754', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31746', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31738', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31731', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31718', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31693', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31691', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31411', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31404', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31403', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31402', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31401', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31399', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31396', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31325', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31321', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31320', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31283', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31267', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31262', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31258', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31233', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31231', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31225', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31198', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31161', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31160', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31159', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31155', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31152', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31150', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31147', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31145', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31140', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31139', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31123', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31043', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31037', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('31015', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30988', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30951', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30949', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30922', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30921', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30920', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30894', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30877', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30876', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30873', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30865', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30864', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30863', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30862', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30861', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30860', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30856', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30849', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30845', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30842', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30831', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30830', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30829', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30751', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30746', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30725', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30701', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30698', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30697', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30696', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30689', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30687', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30682', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30681', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30680', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30632', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30597', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30543', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30541', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30453', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30448', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30447', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30430', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30414', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30333', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30329', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30319', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30287', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30286', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30285', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30284', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30283', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30279', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30278', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30277', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30276', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30258', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30250', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30222', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30206', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30205', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30204', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30202', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30179', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30167', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30148', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30147', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30146', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30144', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30135', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30111', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('30037', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29974', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29920', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29885', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29880', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29875', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29874', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29844', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29843', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29838', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29836', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29834', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29832', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29830', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29829', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29826', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29822', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29820', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29819', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29793', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29792', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29774', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29768', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29738', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29735', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29724', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29722', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29720', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29719', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29717', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29699', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29697', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29664', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29656', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29654', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29652', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29646', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29626', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29623', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29622', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29614', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29590', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29586', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29569', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29554', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29553', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29518', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29503', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29489', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29451', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29450', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29449', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29426', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29413', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29412', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29411', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29409', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29407', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29404', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29402', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29392', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29389', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29380', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29377', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29376', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29375', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29370', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29369', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29338', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29335', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29334', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29333', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29332', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29331', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29330', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29329', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29323', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29319', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29304', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29237', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29236', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29235', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29211', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29133', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29129', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29128', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29124', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29123', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('29036', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28988', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28965', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28961', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28920', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28918', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28917', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28916', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28861', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28851', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28848', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28843', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28838', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28837', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28836', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28835', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28826', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28803', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28802', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28793', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28784', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28747', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28734', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28732', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28659', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28641', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28603', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28600', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28597', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28584', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28583', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28582', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28581', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28580', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28579', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28578', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28575', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28565', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28564', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28547', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28538', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28519', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28504', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28496', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28495', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28494', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28467', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28465', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28443', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28442', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28419', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28418', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28417', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28412', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28411', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28410', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28403', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28402', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28388', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28373', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28368', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28345', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28325', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28303', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28288', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28257', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28255', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28249', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28246', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28231', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28201', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28188', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28186', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28158', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28145', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28129', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28124', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28123', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28110', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28109', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28108', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28101', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28087', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28086', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28085', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28081', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28080', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28077', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28069', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28068', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28036', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28035', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28034', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28026', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28023', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28022', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28011', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28004', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('28003', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27972', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27971', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27970', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27969', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27966', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27965', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27964', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27963', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27962', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27961', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27960', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27949', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27947', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27941', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27927', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27926', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27871', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27860', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27859', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27836', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27835', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27830', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27826', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27824', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27823', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27805', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27800', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27799', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27797', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27736', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27734', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27731', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27729', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27701', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27699', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27680', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27676', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27641', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27640', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27639', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27636', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27635', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27633', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27615', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27580', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27579', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27570', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27555', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27554', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27547', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27546', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27545', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27539', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27534', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27533', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27508', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27493', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27470', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27431', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27424', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27410', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27406', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27405', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27401', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27383', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27370', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27367', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27363', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27362', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27360', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27358', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27356', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27343', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27342', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27340', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27333', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27332', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27330', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27288', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27287', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27286', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27284', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27283', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27279', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27278', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27272', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27260', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27259', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27247', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27246', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27238', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27237', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27236', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27235', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27234', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27233', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27232', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27230', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27229', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27226', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27225', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27224', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27220', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27211', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27210', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27209', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27207', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27203', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27202', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27177', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27122', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27118', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27117', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27105', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27024', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27020', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27018', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27009', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27008', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27007', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27006', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27005', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('27004', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26965', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26948', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26943', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26942', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26926', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26923', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26922', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26921', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26920', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26919', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26891', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26863', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26862', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26858', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26836', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26830', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26828', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26827', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26825', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26823', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26820', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26816', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26815', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26805', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26803', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26802', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26801', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26800', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26799', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26798', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26797', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26795', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26792', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26786', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26782', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26771', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26770', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26769', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26762', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26737', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26735', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26734', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26730', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26729', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26728', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26727', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26722', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26716', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26705', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26704', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26696', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26694', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26679', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26672', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26670', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26669', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26663', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26658', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26655', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26641', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26639', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26638', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26637', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26636', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26635', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26628', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26626', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26625', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26624', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26623', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26622', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26621', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26620', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26606', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26605', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26577', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26575', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26555', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26554', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26553', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26550', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26544', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26496', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26493', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26492', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26481', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26480', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26472', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26457', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26456', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26455', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26451', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26449', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26447', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26436', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26434', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26428', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26425', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26417', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26416', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26414', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26413', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26411', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26410', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26409', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26408', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26405', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26389', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26357', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26356', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26348', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26344', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26343', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26336', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26334', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26319', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26280', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26270', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26268', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26266', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26257', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26252', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26202', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26201', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26199', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26198', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26197', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26196', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26126', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26115', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26103', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26076', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('26073', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25981', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25979', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25880', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25843', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25839', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25836', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25819', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25806', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25804', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25803', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25801', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25800', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25789', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25760', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25726', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25719', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25713', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25684', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25668', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25660', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25651', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25650', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25619', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25615', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25613', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25611', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25609', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25605', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25601', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25523', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25522', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25521', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25520', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25501', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25496', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25479', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25470', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25468', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25467', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25449', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25448', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25434', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25433', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25432', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25430', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25429', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25428', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25427', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25396', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25393', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25392', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25386', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25383', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25378', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25371', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25353', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25351', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25350', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25316', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25301', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25294', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25228', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25227', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25209', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('25026', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24957', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24914', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24900', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24872', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24871', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24849', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24846', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24789', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24779', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24777', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24713', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24697', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24690', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24689', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24687', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24685', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24676', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24644', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24642', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24638', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24635', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24567', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24562', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24546', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24540', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24485', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24469', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24400', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24398', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24334', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24250', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24249', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24238', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24216', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24215', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24214', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24213', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24212', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24169', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24162', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24161', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24116', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24085', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24084', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24083', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24082', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24080', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24079', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24078', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24073', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24071', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24069', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24030', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24016', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24015', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24014', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('24013', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23993', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23992', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23991', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23990', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23989', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23983', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23967', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23964', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23963', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23962', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23961', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23960', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23956', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23946', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23940', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23934', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23932', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23875', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23871', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23866', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23796', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23794', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23793', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23776', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23760', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23711', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23678', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23676', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23675', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23674', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23673', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23672', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23670', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23669', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23668', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23667', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23666', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23665', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23664', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23663', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23662', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23661', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23660', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23658', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23657', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23656', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23655', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23654', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23653', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23652', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23651', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23645', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23644', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('23643', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('36724', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('36805', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('36807', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('36808', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('36811', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('36829', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('37004', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('37007', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('37011', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('37016', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('37017', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('37026', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('37030', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('37032', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('37144', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('37148', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('37149', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('37544', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('37545', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('37098', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('38494', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('40417', '39152', '25', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('10211', '104', '31', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('15980', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('15981', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('23651', '103', '24', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23652', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23653', '102', '24', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('23654', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23655', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23656', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23657', '102', '22', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('23658', '103', '21', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23660', '103', '24', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23661', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23662', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23663', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23664', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23665', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23666', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23667', '103', '24', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23668', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23669', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23670', '103', '25', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23672', '103', '25', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23673', '103', '21', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23674', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23675', '103', '30', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23676', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23677', '102', '21', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('23678', '102', '26', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('23711', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23760', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23776', '102', '22', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('23793', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23794', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23796', '103', '20', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23866', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23871', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23875', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23883', '102', '36', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('23931', '103', '25', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23932', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23934', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23940', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23946', '103', '30', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23956', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('23961', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('23962', '102', '20', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('23963', '102', '21', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('23964', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23967', '102', '26', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('23982', '102', '11', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('23983', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23989', '103', '23', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23990', '103', '22', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('23991', '103', '23', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('24014', '103', '20', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('24015', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('24016', '102', '24', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('24030', '103', '20', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('24078', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('24085', '102', '34', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('24104', '102', '31', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('24116', '102', '21', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('24120', '102', '11', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('24161', '103', '30', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('24162', '103', '29', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('24169', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('24200', '104', '5', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('24212', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('24213', '103', '30', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('24214', '102', '18', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('24215', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('24216', '103', '31', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('24238', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('24249', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('24250', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('24286', '103', '14', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('24291', '103', '32', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('24334', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('24398', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('24400', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('24458', '103', '20', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('24469', '104', '29', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('24474', '102', '36', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('24533', '103', '23', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('24540', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('24542', '102', '30', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('24543', '102', '24', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('24567', '102', '23', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('24628', '102', '18', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('24635', '103', '19', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('24638', '103', '13', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('24642', '102', '27', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('24644', '103', '25', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('24676', '102', '24', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('24713', '102', '25', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('24714', '102', '18', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('24779', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('24788', '102', '29', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('24846', '102', '22', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('24900', '104', '36', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('24957', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25026', '103', '15', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25209', '102', '8', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('25301', '104', '35', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('25316', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25353', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25378', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25392', '103', '13', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25427', '103', '14', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25428', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25429', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25430', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25432', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25433', '103', '30', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25434', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25449', '103', '21', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25467', '102', '25', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('25468', '102', '24', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('25470', '102', '25', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('25479', '103', '19', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25496', '103', '21', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25497', '103', '42', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25501', '102', '24', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('25520', '102', '22', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('25521', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25522', '102', '24', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('25523', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25601', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25605', '102', '22', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('25609', '103', '19', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25613', '102', '24', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('25615', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25618', '103', '39', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25651', '102', '16', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('25719', '103', '19', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25725', '102', '1', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('25726', '102', '1', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('25760', '103', '29', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25788', '104', '42', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('25789', '103', '11', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25790', '102', '14', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('25800', '103', '17', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25801', '104', '42', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('25803', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25804', '104', '40', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('25806', '103', '18', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25808', '102', '20', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('25809', '102', '75', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('25836', '103', '18', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25839', '103', '17', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25843', '103', '15', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25880', '103', '18', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('25979', '103', '17', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26196', '103', '13', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26197', '103', '21', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26198', '103', '22', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26199', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26201', '103', '24', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26257', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26266', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26268', '103', '24', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26270', '103', '25', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26280', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26295', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26319', '103', '20', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26334', '103', '24', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26348', '103', '29', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26356', '103', '21', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26357', '103', '20', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26389', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26405', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26408', '103', '24', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26409', '103', '16', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26410', '103', '17', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26411', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26414', '103', '23', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26416', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26425', '103', '19', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26428', '103', '19', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26434', '103', '20', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26436', '103', '22', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26447', '103', '18', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26449', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26451', '103', '12', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26456', '103', '15', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26480', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26481', '103', '25', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26493', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26496', '103', '15', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26544', '103', '13', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26550', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('26554', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('26575', '103', '29', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26577', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26578', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26626', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('26655', '103', '19', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26663', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26679', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26681', '103', '17', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26704', '103', '20', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26705', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26708', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26727', '102', '36', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('26728', '102', '36', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('26729', '102', '36', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('26762', '103', '15', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26786', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26795', '103', '20', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26797', '103', '20', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26799', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('26800', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('26801', '102', '36', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('26802', '102', '36', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('26803', '102', '37', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('26805', '102', '36', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('26815', '103', '13', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26816', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26820', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26823', '103', '25', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26825', '103', '25', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26826', '103', '33', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26827', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26828', '104', '36', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('26836', '104', '35', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('26862', '104', '32', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('26863', '104', '34', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('26919', '103', '16', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26920', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26921', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26922', '103', '30', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26923', '103', '29', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26926', '104', '39', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('26942', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('26943', '104', '43', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('26965', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27002', '103', '9', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27004', '103', '15', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27005', '103', '17', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27006', '103', '12', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27007', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27008', '103', '25', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27009', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27020', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27024', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27117', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27118', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27177', '103', '19', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27202', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27203', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27206', '103', '21', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27207', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27209', '103', '14', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27210', '104', '9', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('27211', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27232', '103', '13', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27233', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27234', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27235', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27236', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27237', '103', '25', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27238', '103', '25', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27246', '103', '16', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27247', '104', '37', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('27259', '103', '20', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27260', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27278', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27279', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27289', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27330', '103', '29', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27332', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27333', '103', '29', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27334', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27340', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27342', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27343', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27355', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27356', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27357', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27358', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27367', '103', '29', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27371', '102', '19', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('27405', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27406', '103', '24', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27416', '103', '16', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27424', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27470', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27493', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27508', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27539', '103', '25', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27545', '103', '19', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27546', '103', '24', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27547', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27554', '103', '20', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27555', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27570', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27579', '104', '37', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('27580', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27615', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27627', '103', '24', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27640', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('27676', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27699', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27701', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27731', '102', '34', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('27732', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('27805', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27826', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27830', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27859', '104', '39', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('27860', '104', '37', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('27926', '103', '14', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27927', '103', '27', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('27947', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('27949', '102', '36', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('27962', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('27963', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('27966', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('28034', '103', '33', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28035', '103', '32', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28036', '103', '32', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28068', '103', '31', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28076', '104', '39', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('28077', '104', '38', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('28080', '103', '40', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28081', '103', '41', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28082', '103', '33', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28105', '103', '40', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28123', '103', '39', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28124', '103', '40', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28151', '103', '49', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28186', '103', '40', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28188', '103', '38', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28200', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('28303', '103', '33', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28345', '103', '34', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28368', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('28373', '103', '41', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28388', '103', '33', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28402', '103', '30', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28403', '103', '30', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28417', '103', '29', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28418', '103', '30', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28442', '103', '24', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28465', '103', '33', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28494', '103', '32', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28495', '103', '33', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28496', '103', '34', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28504', '103', '33', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28538', '103', '40', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28575', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28578', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('28579', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('28580', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('28581', '102', '36', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('28582', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('28600', '103', '33', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28602', '103', '48', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28836', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('28837', '102', '36', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('28838', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('28848', '103', '33', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28861', '103', '33', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28916', '103', '25', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28917', '103', '24', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28918', '103', '23', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('28961', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('28965', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('28988', '103', '33', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29211', '103', '34', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29235', '103', '33', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29236', '103', '35', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29237', '103', '33', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29266', '104', '5', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('29315', '104', '5', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('29323', '103', '30', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29329', '103', '33', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29330', '103', '33', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29331', '103', '30', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29332', '103', '34', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29333', '103', '34', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29338', '103', '32', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29369', '103', '33', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29370', '103', '34', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29374', '103', '34', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29375', '104', '25', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('29376', '103', '33', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29377', '103', '33', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29404', '103', '33', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29407', '103', '42', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29409', '103', '44', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29413', '103', '29', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29426', '103', '33', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29427', '103', '32', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29489', '103', '38', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29490', '103', '38', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29498', '102', '33', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('29503', '104', '51', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('29518', '103', '25', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29553', '103', '41', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29554', '103', '41', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29569', '103', '29', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29586', '103', '32', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29592', '103', '23', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29614', '104', '38', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('29622', '103', '36', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29623', '103', '34', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29626', '103', '41', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29652', '103', '31', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29695', '103', '26', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29696', '103', '30', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29717', '103', '34', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29792', '103', '32', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29793', '103', '32', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29794', '103', '35', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29809', '103', '50', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29819', '102', '36', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('29820', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('29822', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('29826', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('29843', '103', '31', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29862', '103', '25', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29874', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('29875', '103', '32', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29880', '103', '24', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('29885', '104', '30', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('29915', '103', '23', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('30037', '103', '24', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('30046', '103', '33', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('30111', '102', '36', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('30146', '103', '32', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('30147', '103', '33', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('30179', '102', '35', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('30208', '103', '29', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('30222', '103', '31', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('30243', '103', '24', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('30247', '102', '50', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('30319', '102', '34', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('30469', '103', '32', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('30632', '103', '24', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('30725', '103', '24', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('30751', '103', '24', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('30856', '103', '36', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('30860', '103', '24', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('30868', '103', '35', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('31145', '103', '39', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('31258', '103', '24', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('31262', '103', '24', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('31267', '103', '24', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('31399', '104', '14', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('31401', '103', '43', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('31507', '104', '5', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('31511', '104', '5', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('31693', '103', '34', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('31731', '103', '40', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('31738', '103', '41', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('31746', '103', '24', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('32162', '104', '37', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('32236', '103', '40', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('32238', '103', '33', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('32250', '103', '42', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('32259', '103', '36', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('32262', '103', '37', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('32263', '103', '40', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('32268', '103', '32', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('32276', '103', '34', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('32279', '103', '32', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('32285', '103', '39', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('32289', '103', '34', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('32290', '103', '33', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('32291', '103', '41', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('32297', '103', '34', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('32349', '103', '39', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('32576', '103', '24', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('33422', '103', '28', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('33537', '103', '41', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('33819', '102', '39', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('34728', '103', '32', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('34734', '103', '33', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('34838', '103', '32', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('34839', '102', '36', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('35305', '102', '41', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('35307', '102', '41', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('35309', '102', '42', '1', '0', '-102', '1');
REPLACE INTO `creature_loot_template` VALUES ('36805', '104', '35', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('36808', '104', '37', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('36811', '104', '35', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('36998', '104', '31', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('37003', '104', '36', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('37004', '104', '32', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('37016', '104', '33', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('37017', '104', '29', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('37021', '104', '34', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('37026', '104', '32', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('37027', '104', '31', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('37029', '104', '31', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('37030', '104', '36', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('37031', '104', '35', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('37032', '104', '35', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('37033', '104', '31', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('37034', '104', '30', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('37035', '104', '33', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('37144', '104', '33', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('37146', '104', '30', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('37148', '104', '31', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('37149', '104', '34', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('37228', '104', '34', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('37229', '104', '40', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('37531', '104', '35', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('38072', '104', '26', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('38075', '104', '26', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('38076', '104', '25', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('38078', '104', '39', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('38079', '104', '22', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('38080', '104', '21', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('38081', '104', '19', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('38082', '104', '23', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('38083', '104', '12', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('38084', '104', '20', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('38085', '104', '26', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('38086', '104', '22', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('38087', '104', '22', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('38088', '104', '24', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('38089', '104', '25', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('38090', '103', '15', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('38091', '104', '22', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('38092', '104', '25', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('38093', '104', '21', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('38095', '104', '19', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('38096', '104', '15', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('38097', '104', '28', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('38134', '104', '25', '1', '0', '-104', '1');
REPLACE INTO `creature_loot_template` VALUES ('38137', '103', '48', '1', '0', '-103', '1');
REPLACE INTO `creature_loot_template` VALUES ('16174', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('16175', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('16406', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('16805', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('16943', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('16944', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('16945', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('17730', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('17814', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('17815', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('17846', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('18257', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('18259', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('18411', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('18460', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('18536', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('18554', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('18556', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('18586', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('18642', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('18660', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('18796', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('18881', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('18886', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('18894', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('19494', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('19641', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('19765', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('19788', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('19973', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('19982', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('19996', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('20040', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('20043', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('20113', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('20326', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('20416', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('20516', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('20728', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('20748', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('20753', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('20766', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('20772', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('20777', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('20788', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('20801', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('20883', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('20887', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('20898', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('20910', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('20983', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('21057', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('21164', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('21287', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('21373', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('21380', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('21454', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('21492', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('21500', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('21505', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('21720', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('21788', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('21821', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('22052', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('22072', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('22144', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('22181', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('22304', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('22384', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('22387', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('22393', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('22877', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('22881', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('22884', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('22885', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('23161', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('23174', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('23394', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('23400', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('24047', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('24549', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('24762', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('25486', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('25507', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('25837', '23802', '1', '1', '0', '-23802', '1');
REPLACE INTO `creature_loot_template` VALUES ('10429', '21525', '20', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('21536', '21524', '20', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('19221', '21524', '20', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('21558', '21524', '20', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('20521', '21524', '20', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('10899', '21525', '20', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('20568', '21525', '20', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('16807', '21525', '20', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('18732', '21525', '20', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('20306', '21525', '20', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('18373', '21525', '20', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('1853', '21525', '20', '1', '0', '1', '1');
REPLACE INTO `creature_loot_template` VALUES ('11486', '21525', '20', '1', '0', '1', '1');
REPLACE INTO `gossip_menu` VALUES ('2911', '3585');
REPLACE INTO `gossip_menu` VALUES ('3062', '3795');
REPLACE INTO `gossip_menu_option` VALUES ('3062', '0', '0', 'Low spirits', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3062', '1', '0', 'Bad hang nail', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3062', '2', '0', 'Feeling underpowered', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3062', '3', '0', 'Jungle Fever', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3062', '4', '0', 'Uni-brow', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3062', '5', '0', 'Whiplash', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3062', '6', '0', 'I don\'t want to go back to work', '1', '1', '1', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('2901', '0', '0', 'Hello, Eitrigg. I bring news from Blackrock Spire.', '1', '1', '2902', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('2902', '0', '0', 'There is only one Warchief, Eitrigg!', '1', '1', '2903', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('2903', '0', '0', 'What do you mean?', '1', '1', '2904', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('2904', '0', '0', 'Hearthglen? But...', '1', '1', '2905', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('2905', '0', '0', 'I will take you up on that offer, Eitrigg.', '1', '1', '2906', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('2906', '0', '0', 'Ah, so that is how they pushed the Dark Iron to the lower parts of the Spire.', '1', '1', '2907', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('2907', '0', '0', 'Perhaps there exists a way?', '1', '1', '2908', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('2908', '0', '0', 'As you wish, Eitrigg.', '1', '1', '1', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('3862', '0', '0', 'You have fought well, spirit.  I ask you to grant me the strength of your body and the strength of your heart.', '1', '1', '3863', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('3862', '1', '0', 'You have fought well, spirit.  I ask you to grant me the strength of your body and the strength of your heart.', '1', '1', '3863', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('1285', '0', '0', 'I wish to hear your tale.', '1', '1', '1287', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10318', '2', '0', 'Visit a mailbox.', '18', '1', '1', '0', '0', '0', '');
REPLACE INTO `gossip_menu_option` VALUES ('33239', '2', '0', 'Visit a mailbox.', '18', '1', '1', '0', '0', '0', '');
REPLACE INTO `reference_loot_template` VALUES ('21524', '21524', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('21524', '21525', '20', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('102', '105', '100', '1', '0', '-105', '1');
REPLACE INTO `reference_loot_template` VALUES ('102', '106', '100', '1', '0', '-106', '1');
REPLACE INTO `reference_loot_template` VALUES ('103', '107', '100', '1', '0', '-107', '1');
REPLACE INTO `reference_loot_template` VALUES ('103', '108', '100', '1', '0', '-108', '1');
REPLACE INTO `reference_loot_template` VALUES ('104', '109', '100', '1', '0', '-109', '1');
REPLACE INTO `reference_loot_template` VALUES ('104', '110', '100', '1', '0', '-110', '1');
REPLACE INTO `reference_loot_template` VALUES ('105', '33470', '100', '1', '0', '1', '2');
REPLACE INTO `reference_loot_template` VALUES ('106', '33470', '100', '1', '0', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('107', '33470', '100', '1', '0', '1', '4');
REPLACE INTO `reference_loot_template` VALUES ('108', '33470', '100', '1', '0', '1', '3');
REPLACE INTO `reference_loot_template` VALUES ('109', '33470', '100', '1', '0', '1', '7');
REPLACE INTO `reference_loot_template` VALUES ('110', '33470', '100', '1', '0', '1', '5');
REPLACE INTO `reference_loot_template` VALUES ('23802', '22926', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '23620', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '23622', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '23623', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '23624', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '23625', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '23626', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '23627', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '23628', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '23629', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '23630', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '23631', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '23632', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '23633', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '23634', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '23635', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '23636', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '23637', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '24302', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '24303', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '24304', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '24305', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '24306', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '24307', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '29723', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '29724', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '29725', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '29726', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '29727', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '29728', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '29729', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '29731', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '29732', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '29733', '0', '1', '1', '1', '1');
REPLACE INTO `reference_loot_template` VALUES ('23802', '29734', '0', '1', '1', '1', '1');
DELETE FROM conditions WHERE SourceTypeOrReferenceId=1 AND SourceGroup=26921;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=1 AND SourceGroup=28538;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=1 AND SourceGroup=28504;
UPDATE conditions SET SourceEntry=9686 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=7923 AND SourceEntry=6520;
UPDATE conditions SET SourceEntry=9718 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=7935 AND SourceEntry=9706;
UPDATE conditions SET SourceEntry=9710 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=7927 AND SourceEntry=8139;
UPDATE conditions SET SourceEntry=9717 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=50258 AND SourceEntry=9626;
UPDATE conditions SET SourceEntry=9698 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=7921 AND SourceEntry=8139;
UPDATE conditions SET SourceEntry=9706 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=7926 AND SourceEntry=9710;
UPDATE conditions SET SourceEntry=9702 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=7925 AND SourceEntry=9706;
UPDATE conditions SET SourceEntry=9694 WHERE SourceTypeOrReferenceId=14 AND SourceGroup=7922 AND SourceEntry=8149;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (4393,4351,30243,4394,4352,30632);

UPDATE `quest_template` SET `RequiredRaces`=0 WHERE `id`=10605;
UPDATE `quest_template` SET `SpecialFlags` = '2' WHERE `id` =4941;
UPDATE `quest_template` SET `SpecialFlags` = '2' WHERE `id` =3377;
UPDATE `quest_template` SET `PrevQuestId` = '0' WHERE `id` =13203;
UPDATE `quest_template` SET `OfferRewardText` = 'What have you got there? A fake obviously!$B$BI''ve been face to face with Margol and I know for a fact that her horn is at least eight times larger than the one you''ve got in your hands, $N. You probably got that off of a stormsnout in the Barrens. No $Gsir:ma''am, you can''t fool Pebblebitty!' WHERE `id` =3181;
UPDATE `quest_template` SET `SpecialFlags` = 2 WHERE `Id` = 4265;

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

UPDATE version SET `cache_id`= '613';
UPDATE version SET `db_version`= 'YTDB_0.14.4_R613_TC_R14136_TDBAI_335.0.3_RuDB_R45';
