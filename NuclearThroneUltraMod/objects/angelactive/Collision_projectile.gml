if team != other.team && instance_exists(Player)
{
	if other.isGrenade
	{
		BackCont.shake += 1;
		Sleep(5);
		snd_play(sndRicochet,0.1,true);
		with other
			scrDeflectNade(point_direction(other.x,other.y,x,y));
	}
	else if other.typ == 1
	{
		BackCont.shake += 1;
		Sleep(5);
		other.team = team
		with other
		{
			if instance_exists(enemy)
			{
				var n = instance_nearest(x,y,enemy)
				direction = point_direction(x,y,n.x,n.y);
			}
			else
				direction = point_direction(x,y,other.x,other.y);
			speed += 1;
			speed *= 2;
			image_angle = direction;
			with instance_create(x,y,Deflect)
			{
				image_angle = other.direction
				sprite_index=sprGuardianDeflect;
			}
			snd_play(sndRicochet,0.1,true);
			event_user(15);
		}
		
		if Player.area=100 && instance_exists(CrownGuardian)
		{
			scrUnlockCSkin(18,"FOR DEFLECTING A PROJECTILE#THAT IS DEFLECTED BY A CROWN GUARDIAN#AS ANGEL",0);
		}
	}
	else
	{
		BackCont.shake += 1;
		Sleep(5);
		with other
			instance_destroy()
	}
}

