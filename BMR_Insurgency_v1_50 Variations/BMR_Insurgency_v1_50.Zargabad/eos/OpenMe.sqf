/* EOS 1.98 by BangaBob 
GROUP SIZES
 0 = 1
 1 = 2,4
 2 = 4,8
 3 = 8,12
 4 = 12,16
 5 = 16,20

EXAMPLE CALL - EOS
 null = [["MARKERNAME","MARKERNAME2"],[2,1,70],[0,1],[1,2,30],[2,60],[2],[1,0,10],[1,0,250,WEST]] call EOS_Spawn;
 null=[["M1","M2","M3"],[HOUSE GROUPS,SIZE OF GROUPS,PROBABILITY],[PATROL GROUPS,SIZE OF GROUPS,PROBABILITY],[LIGHT VEHICLES,SIZE OF CARGO,PROBABILITY],[ARMOURED VEHICLES,PROBABILITY], [STATIC VEHICLES,PROBABILITY],[HELICOPTERS,SIZE OF HELICOPTER CARGO,PROBABILITY],[FACTION,MARKERTYPE,DISTANCE,SIDE,HEIGHTLIMIT,DEBUG]] call EOS_Spawn;

EXAMPLE CALL - BASTION
 null = [["BAS_zone_1"],[3,1],[2,1],[2],[0,0],[0,0,EAST,false,false],[10,2,120,TRUE,TRUE]] call Bastion_Spawn;
 null=[["M1","M2","M3"],[PATROL GROUPS,SIZE OF GROUPS],[LIGHT VEHICLES,SIZE OF CARGO],[ARMOURED VEHICLES],[HELICOPTERS,SIZE OF HELICOPTER CARGO],[FACTION,MARKERTYPE,SIDE,HEIGHTLIMIT,DEBUG],[INITIAL PAUSE, NUMBER OF WAVES, DELAY BETWEEN WAVES, INTEGRATE EOS, SHOW HINTS]] call Bastion_Spawn;
*/

params ["_side"];
private _fac1 = 1;//major
private _fac2 = 2;//minor
private _infPb = InfPb;
private _dis = AI_SpawnDis;
private _mecArmPb = MecArmPb;

EOS_Spawn = compile preprocessfilelinenumbers "eos\core\eos_launch.sqf";
Bastion_Spawn=compile preprocessfilelinenumbers "eos\core\b_launch.sqf";
null=[] execVM "eos\core\spawn_fnc.sqf";
if (isServer) then {["updateEOSmkrs","onplayerConnected", {[] execVM "eos\functions\EOS_Markers.sqf";}] call BIS_fnc_addStackedEventHandler;};

VictoryColor="ColorGreen";	// Colour of marker after completion
hostileColor="ColorRed";	// Default colour when enemies active
bastionColor="ColorOrange";	// Colour for bastion marker
EOS_KILLCOUNTER=false;		// Counts killed units

null = [["mrkr1"],[1,2,_infPb],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr2"],[1,2,_infPb],[0,0],[1,1],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr3"],[0,0],[2,1,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr4"],[1,1,_infPb],[1,1,_infPb],[1,3],[1,_mecArmPb],[0],[1,3],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr5"],[0,0],[0,0],[1,3],[2,_mecArmPb],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr6"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr7"],[1,2,_infPb],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr8"],[1,2,_infPb],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr9"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr10"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr11"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr12"],[0,0],[2,1,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr13"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr14"],[2,2,_infPb],[0,0],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr15"],[2,1,_infPb],[2,1,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr16"],[2,2,_infPb],[0,0],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr17"],[2,2,_infPb],[0,0],[1,3],[2,_mecArmPb],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr18"],[2,2,_infPb],[0,0],[1,3],[1,_mecArmPb],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr19"],[2,2,_infPb],[0,0],[1,3],[2,_mecArmPb],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr20"],[2,2,_infPb],[0,0],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr21"],[2,2,_infPb],[0,0],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr22"],[2,2,_infPb],[0,0],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr23"],[1,2,_infPb],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr24"],[1,2,_infPb],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr25"],[0,0],[1,2,_infPb],[0,0],[1],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr26"],[1,2,_infPb],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr27"],[2,2,_infPb],[2,1,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr28"],[1,1,_infPb],[1,1,_infPb],[1,1],[0],[0],[1,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr29"],[1,1,_infPb],[1,1,_infPb],[0,0],[0],[2],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr30"],[2,2,_infPb],[2,1,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr31"],[1,2,_infPb],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr32"],[2,2,_infPb],[1,1,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr33"],[2,2,_infPb],[1,1,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr34"],[2,2,_infPb],[1,1,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr35"],[2,2,_infPb],[1,1,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr36"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr37"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr38"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr39"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr40"],[0,0],[2,1,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr41"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr42"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr43"],[0,0],[0,0],[1,3],[1,_mecArmPb],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr44"],[0,0],[2,1,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr45"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr46"],[0,0],[2,1,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr47"],[1,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[1,1],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr48"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr49"],[0,0],[2,2,_infPb],[0,0],[0],[0],[1,3],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr50"],[0,0],[0,0],[2,2],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr51"],[0,0],[1,2,_infPb],[0,0],[2,_mecArmPb],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr52"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr53"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr54"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr55"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr56"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr57"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr58"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr59"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr60"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr61"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr62"],[1,1,_infPb],[1,2,_infPb],[0,0],[1],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr63"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr64"],[1,1,_infPb],[0,0],[1,3],[1,_mecArmPb],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr65"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr66"],[1,1,_infPb],[0,0],[1,3],[2,_mecArmPb],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr67"],[0,0],[0,0],[1,1],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr68"],[2,2,_infPb],[0,0],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr69"],[2,2,_infPb],[0,0],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr70"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr71"],[2,2,_infPb],[0,0],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr72"],[2,2,_infPb],[0,0],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr73"],[1,2,_infPb],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr74"],[1,2,_infPb],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr75"],[0,0],[2,1,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr76"],[1,2,_infPb],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr77"],[1,2,_infPb],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr78"],[1,2,_infPb],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr79"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr80"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr81"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr82"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr83"],[0,0],[2,1,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr84"],[2,1,_infPb],[0,0],[1,3],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr85"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr86"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr87"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr88"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr89"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr90"],[0,0],[2,1,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr91"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr92"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr93"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr94"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr95"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr96"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr97"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr98"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr99"],[0,0],[2,1,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr100"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr101"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr102"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr103"],[0,0],[2,1,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr104"],[2,2,_infPb],[0,0],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr105"],[2,2,_infPb],[0,0],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr106"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr107"],[0,0],[2,1,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr108"],[1,2,_infPb],[0,0],[0,0],[2,_mecArmPb],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr109"],[1,2,_infPb],[0,0],[1,3],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr110"],[2,2,_infPb],[0,0],[1,3],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr112"],[0,0],[2,1,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr119"],[0,0],[2,1,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr113"],[1,2,_infPb],[0,0],[1,3],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr114"],[0,0],[2,1,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr115"],[0,0],[2,1,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr116"],[0,0],[2,1,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr117"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr118"],[0,0],[1,1,_infPb],[0,0],[2,_mecArmPb],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr120"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr121"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr122"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr123"],[1,2,_infPb],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr124"],[1,2,_infPb],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr125"],[0,0],[0,0],[1,3],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr126"],[0,0],[0,0],[1,3],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr127"],[1,2,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr128"],[2,2,_infPb],[0,0],[0,0],[0],[2],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr129"],[2,2,_infPb],[0,0],[1,3],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr130"],[3,1,_infPb],[0,0],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr131"],[3,1,_infPb],[0,0],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr132"],[0,0],[1,2,_infPb],[0,0],[2,_mecArmPb],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr133"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr134"],[1,2,_infPb],[0,0],[1,3],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr135"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr136"],[1,2,_infPb],[0,0],[1,3],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr137"],[0,0],[2,1,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr138"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr139"],[1,1,_infPb],[1,1,_infPb],[0,0],[1,_mecArmPb],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr140"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr141"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr142"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr143"],[0,0],[2,1,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr144"],[0,0],[2,1,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr145"],[2,2,_infPb],[1,1,_infPb],[0,0],[0],[0],[1,1],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr146"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr147"],[2,1,_infPb],[0,0],[0,0],[2,_mecArmPb],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr148"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr149"],[0,0],[2,1,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr150"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr151"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr152"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr153"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr155"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr154"],[2,1,_infPb],[0,0],[1,3],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr156"],[2,1,_infPb],[0,0],[1,3],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr157"],[2,2,_infPb],[0,0],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr158"],[2,1,_infPb],[2,1,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr159"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr160"],[0,0],[2,1,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr161"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr162"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr163"],[0,0],[1,2,_infPb],[0,0],[2,_mecArmPb],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr164"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr165"],[0,0],[1,2,_infPb],[0,0],[1,_mecArmPb],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr166"],[1,1,_infPb],[1,1,_infPb],[0,0],[2,_mecArmPb],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr167"],[0,0],[2,1,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr168"],[1,2,_infPb],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr169"],[1,2,_infPb],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr170"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr171"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr172"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr173"],[0,0],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr174"],[0,0],[1,2,_infPb],[0,0],[2,_mecArmPb],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr175"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr176"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr177"],[1,1,_infPb],[1,1,_infPb],[0,0],[1,_mecArmPb],[0],[1,1],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr178"],[1,2,_infPb],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr179"],[0,0],[2,1,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr180"],[0,0],[0,0],[1,3],[1],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr181"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr182"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr183"],[1,2,_infPb],[0,0],[0,0],[0],[0],[1,3],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr184"],[1,2,_infPb],[0,0],[1,3],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr185"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr186"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr187"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr188"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr189"],[0,0],[1,2,_infPb],[0,0],[0],[0],[1,4],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr190"],[0,0],[1,2,_infPb],[0,0],[2,_mecArmPb],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr193"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr194"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr195"],[1,2,_infPb],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr196"],[2,1,_infPb],[1,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr197"],[1,2,_infPb],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr198"],[1,2,_infPb],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac1,0,_dis,_side]] call EOS_Spawn;
null = [["mrkr199"],[1,2,_infPb],[2,2,_infPb],[0,0],[0],[0],[0,0],[_fac2,0,_dis,_side]] call EOS_Spawn;
// Marine Craft hidden markers
null=[["m191"],[0,0],[0,0],[1,3],[0],[0],[0,0],[_fac1,1,_dis,_side]] call EOS_Spawn;
null=[["m192"],[0,0],[0,0],[1,3],[0],[0],[0,0],[_fac1,1,_dis,_side]] call EOS_Spawn;

//Persistence and headless client JIP setup
null=[] call BMRINS_fnc_persistence;