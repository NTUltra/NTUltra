if team != other.team && instance_exists(Player)
{
	if Player.speed > 0 && random(5.7) < 1
	{
		if other.isGrenade
		{
			snd_play(sndRicochet,0.1,true);
			with other
				scrDeflectNade(point_direction(other.x,other.y,x,y));
			
		}
		else if other.typ == 1
		{
			BackCont.shake += 1;
			other.team = team
				with other
				{
					event_user(15);
					snd_play(sndRicochet,0.1,true);
					if instance_exists(enemy)
					{
						var n = instance_nearest(x,y,enemy)
						direction = point_direction(x,y,n.x,n.y);
					}
					else
						direction = point_direction(other.x,other.y,x,y)
					speed *= 1.5;
					image_angle = direction
					with instance_create(x,y,Deflect)
					{
						image_angle = other.direction
						sprite_index=sprGuardianDeflect;
					}
				}
			if instance_exists(CrownGuardian)
			{
				scrUnlockCSkin(18,"FOR DEFLECTING A PROJECTILE#THAT IS DEFLECTED BY A CROWN GUARDIAN#AS ANGEL",0);
			}

		}
		else
		{
			BackCont.shake += 1;
			with other
				instance_destroy()
		}
	}
}

