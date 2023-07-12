/// @description Enemy checker
alarm[1] = 10;
if ((( (instance_number(enemy) > ceil(enemies*wantPart)) && (!(area == 1 && subarea < 3) || oasis==false) )
|| ((area == 4 || area == 111 || area == 103) && (subarea == 2 || area == 103) && instance_number(enemy) > ceil(enemies*wantPart)))
&& alarm[2] > 1)
	alarm[0] = 90+random(60)
