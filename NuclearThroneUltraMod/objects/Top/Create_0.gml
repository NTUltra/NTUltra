var area;
right = 1;
z = 0;
depth = -9;
if instance_exists(Player) {
	area = Player.area
	if scrIsCrown(25)
	{	
		instance_destroy(id,false);
		exit;
	}
}
else area = BackCont.area
if area==104
area=103;
if instance_exists(SurvivalWave)//(scrIsGamemode(25) && !instance_exists(Vlambeer))
{
	sprite_index=sprWall116Trans;
}
else
{
	if instance_exists(PitNavigation) && area != 139 && area != 140
		area = PitNavigation.currentArea;
	scrTopArea(area);
}
image_index = irandom(image_number);
image_speed = 0

visible=false;
alarm[0]=5;
alarm[1] = 3;
