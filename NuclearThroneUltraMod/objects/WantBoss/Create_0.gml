target = -1
team = 1;
wepFire = -1;
isVenomized = 0;
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
if instance_exists(PitNavigation) && area != 140 && area != 139
{
	area = PitNavigation.currentArea;
}
wantPart = 0.7;
if (area == 4 || area == 111 || area == 103) && (subarea == 2 || area == 103)
	wantPart = 0.5;
if area == 129
	wantPart = 0.25;
oasis=false;
tries = 0;
alarm[0] = 120;
alarm[1] = 60;
alarm[2] = 1800;//50 seconds
