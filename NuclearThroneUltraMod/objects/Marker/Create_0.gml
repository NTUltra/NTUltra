image_speed=0;
my_health = 2;
team = -1;
if instance_exists(enemy)
target=instance_nearest(x,y,enemy);
else
target=noone;
//visible=false;
MarkerNr = 0;
if instance_exists(Player)
{
	if Player.skill_got[5]
		sprite_index= sprMarkerCrosshairTB;
	if Player.ultra_got[44]
		MarkerNr = instance_number(Marker);
}

