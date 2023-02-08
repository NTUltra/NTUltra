/// @description Explode it
instance_destroy()
snd_play(sndPlantPower);
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
	if (Player.ultra_got[17])
	{

		instance_create(x,y,Tangle)
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
					image_speed = 0.4 - i;	
				}
			}
			i += anim;
			ang += 90;
		}
	}
	else {
		instance_create(x,y,Tangle)
		}
}
instance_create(x,y,Dust)