image_speed=0;
if instance_exists(enemy)
target=instance_nearest(x,y,enemy);
else
target=-1;
//visible=false;
MarkerNr = 0;
if instance_exists(Player)
{
	if Player.ultra_got[44]=0{
		if Player.skill_got[5]=0//thronebutt
			Cursor.sprite_index = sprMarkerCrosshair;
		else
		{
			Cursor.sprite_index= sprMarkerCrosshairTB;
			sprite_index= sprMarkerCrosshairTB;
		}
	}
	else{
		if Player.skill_got[5] == 1
			sprite_index= sprMarkerCrosshairTB;
		MarkerNr = instance_number(Marker);
	}
}

