target = -1
team = 1;
enemies = max(instance_number(enemy),5);

if instance_exists(Player)
{
area=Player.area;
loops = Player.loops
subarea=Player.subarea;
}
else
{
area=BackCont.area;
subarea=BackCont.subarea;
loops = BackCont.loops
}
wantPart = 0.69;
if (area == 4 || area == 111 || area == 103) && (subarea == 2 || area == 103)
	wantPart = 0.4;
if area == 129
	wantPart = 0.2;
oasis=false;
tries = 0;
alarm[0] = 120;
alarm[1] = 60;
alarm[2] = 1800;//50 seconds
