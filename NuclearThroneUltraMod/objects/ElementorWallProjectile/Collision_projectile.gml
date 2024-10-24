if !instance_exists(Player)
	exit;
var deflected = false;
with other
{
	if isGrenade
	{
		BackCont.shake += 2;
		snd_play(sndRicochet,0.1,true);
		scrDeflectNade(other.image_angle);
		if instance_exists(Player)
		{
			motion_add(point_direction(Player.x,Player.y,x,y),3);	
		}
	}
	else if team != 2
	{
		if typ == 5
		{
			laserRange = max(1,min(laserRange,point_distance(x,y,other.x,other.y)));
			deflected = true;
		} else if typ == 0 && !canBeMoved && isLaser
		{
			var d = point_distance(xstart,ystart,other.x,other.y) - 1;
			x = xstart + lengthdir_x(d,image_angle);
			y = ystart + lengthdir_y(d,image_angle);
			image_xscale = point_distance(x,y,xstart,ystart)*0.5
			alarm[0] += 2;
			deflected = true;
		}
		else
		{
			if Player.skill_got[5] && typ == 1
			{
				team = 2
				with other
					var aimDirection = scrCresentMoonAimAssist(image_angle);
				BackCont.shake += 2;
				snd_play(sndRicochet,0.1,true);
				direction = aimDirection
				speed = max(other.deflectSpeed,speed + 2);
				image_angle = direction;
				with instance_create(other.x,other.y,Deflect)
					image_angle = other.image_angle;
				//Deflect sprite
				event_user(15);
				if object_index != Disc
					deflected = true;
			}
			else if typ != 4
			{
				snd_play(sndProjectileDestroy,0.1,true);
				BackCont.shake += 1;
				instance_destroy();
				deflected = true;
			}
		}
	}
}