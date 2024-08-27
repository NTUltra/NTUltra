/// @description Shock delay
if instance_exists(Ally) && instance_number(Ally) > 1
{
	var xx = x //+ lengthdir_x(18,image_angle+180);
	var yy = y //+ lengthdir_y(18,image_angle+180);
	with Ally
	{
		if id != other.id
		{
			var xxx = x //+ lengthdir_x(18,image_angle+180);
			var yyy = y //+ lengthdir_y(18,image_angle+180);
			if collision_line(xx,yy,xxx,yyy,Wall,false,false) == noone
			{
				var dir = point_direction(xx,yy,xxx,yyy);
				if instance_exists(Player) && Player.skill_got[17] == 1
					snd_play(sndLaserUpg,0.1,true)
				else
					snd_play(sndLaser,0.1,true)

				if instance_exists(Player)
					dir = dir + (random(4)-2)*Player.accuracy
				else
					dir = dir + (random(4)-2)
				with instance_create(xx,yy,Laser)
				{
					canSmoke = false;
					image_angle = dir
					team = other.team
					event_perform(ev_alarm,0)
				}
			}
		}
		alarm[3] = min(alarm[3] + 1, 90);
	}
}
alarm[3] = 35;