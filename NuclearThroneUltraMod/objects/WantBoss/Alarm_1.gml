/// @description Enemy checker
alarm[1] = 10;
if (( (instance_number(enemy) > enemies*0.8) && (!(area == 1 && subarea < 3) || oasis==false) )
|| (area == 4 && subarea == 2 && instance_number(enemy) > enemies*0.2)
|| alarm[2] < 1)
	alarm[0] = 90+random(60)
