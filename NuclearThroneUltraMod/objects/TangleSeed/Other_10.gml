/// @description Explode it
instance_destroy()
if !instance_exists(SnareTimer)
{
	instance_create(x,y,SnareTimer);
}
else
{
	with SnareTimer
		event_user(0);
}
if instance_exists(Player){
	if Player.skill_got[5]
	{
		if Player.ultra_got[17]
		{
			snd_play(sndPlantSnareTrapperTB);
		}
		else if Player.ultra_got[20]
		{
			snd_play(sndPlantSnareTB);
		}
		else
		{
			snd_play(sndPlantSnare);
		}
	}
	else
	{
		if Player.ultra_got[17]//Big
		{
			snd_play(sndPlantSnareTrapper);
		}
		else if Player.ultra_got[20]//Stereo
		{
			snd_play(sndPlantSnare);
		}
		else
		{
			snd_play(sndPlantPower);
		}
	}
	
	if (Player.ultra_got[17])
	{

		with instance_create(x,y,CameraTangle) {
			tangleNumber = other.tangleNumber;	
		}
		var am = 4;
		var dis = 32;
		var ang = direction;
		var anim = 0.02;
		var i = 0.02;
		repeat(am)
		{
			var xx = x + lengthdir_x(dis,ang);
			var yy = y + lengthdir_y(dis,ang);
			if collision_point(xx,yy,Floor,false,false)
			{
				with instance_create(xx,yy,Tangle)
				{
					tangleNumber = other.tangleNumber;
					image_speed = 0.4 - i;
				}
			}
			i += anim;
			ang += 90;
		}
		ang += 45;
		dis += 32;
		repeat(am)
		{
			var xx = x + lengthdir_x(dis,ang);
			var yy = y + lengthdir_y(dis,ang);
			if collision_point(xx,yy,Floor,false,false)
			{
				with instance_create(xx,yy,Tangle)
				{
					tangleNumber = other.tangleNumber;
					image_speed = 0.4 - i;	
				}
			}
			i += anim;
			ang += 90;
		}
	}
	else {
		with instance_create(x,y,CameraTangle) {
			tangleNumber = other.tangleNumber;	
		}
	}
}
instance_create(x,y,Dust)