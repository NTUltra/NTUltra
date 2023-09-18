if sprite_index == spr_disappear && image_index > fadeNumber
	exit;
if other.isGrenade
{
	with other
		scrDeflectNade(direction+180);
	snd_play(sndCrystalRicochet,0.1,true);
	Sleep(10);
	BackCont.shake += 5;
}
if team != other.team
{
	if other.typ == 1
	{
		snd_play(sndCrystalRicochet,0.1,true);
		other.team = team
		if instance_exists(Player)
		{
			if(Player.ultra_got[8]==1)//Vengefull
			{
				other.direction = point_direction(x,y,other.x,other.y);
				var target=-1;
				if instance_exists(enemy)
					target=instance_nearest(x+lengthdir_x(80,other.direction),y+lengthdir_y(80,other.direction),enemy);// nearest in direction of shot
				if instance_exists(enemy) && target>0 && instance_exists(target) && instance_exists(Wall)
				{
				    if!(collision_line(x,y,target.x,target.y,Wall,false,true) )//No walls between player and target?
				    {
				        if(other.direction<point_direction(x,y,target.x,target.y)+60)
				            {
						        other.image_angle=point_direction(x,y,target.x,target.y);
						        other.direction=point_direction(x,y,target.x,target.y);
						        other.speed+=2;
						        //image_angle = other.direction
            
				            with instance_create(other.x,other.y,Deflect)
				            {
				            image_xscale=2;
				            image_yscale=2;
				            image_angle = other.direction
				            }
				        }
				    }

				}
				else if instance_exists(enemy){
				other.direction=point_direction(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y);
				other.image_angle=direction;
					with instance_create(other.x,other.y,Deflect)
						image_angle = other.direction
				}
			}
			else{
				other.direction = point_direction(x,y,other.x,other.y)
				other.image_angle = other.direction
				with instance_create(other.x,other.y,Deflect)
					image_angle = other.direction
			}
		}
		else{
			other.direction = point_direction(x,y,other.x,other.y)
			other.image_angle = other.direction
			with instance_create(other.x,other.y,Deflect)
				image_angle = other.direction
		}
		//Deflect sprite
		with other
			event_user(15);
	}
	else if other.typ = 2 || Player.ultra_got[8]
	{
		snd_play(sndProjectileDestroy,0.1,true);
		with other
			instance_destroy()
	}
	else if other.typ == 3
	{
		with other
		{
			x = xprevious;
			y = yprevious;
		}
	}
}

