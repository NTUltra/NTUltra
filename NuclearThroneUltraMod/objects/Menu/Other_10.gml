/// @description Update race
portraitLerp = 0;
with LoadoutSelect
{
	if other.race == 0
		wepmenuopen = false;
	race = other.race;
	skin = UberCont.skin[race]
	wep = UberCont.selected_start_wep[race];
	UberCont.start_wep[0]=race_swep[race];//Starting weapon 0 is different for each character
	other.skin = skin;
}
with CampChar
{
	if num == other.race
	{
		with other
		{
			camTargetX = other.x + other.camX - (camera_get_view_width(view_camera[0])*0.5);
			camTargetY = other.y + other.camY + 8 - (camera_get_view_height(view_camera[0])*0.5);
			camX = camera_get_view_x(view_camera[0]);
			camY = camera_get_view_y(view_camera[0]);
			camLerp = 0;
			alarm[3] = 1;
		}
		if num == 14
		{
			alarm[1] = 15;	
		}
		else
		{
			alarm[1] = 0;	
		}
	}
}