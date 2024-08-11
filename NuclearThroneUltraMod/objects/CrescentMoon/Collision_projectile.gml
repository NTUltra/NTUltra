if (deflectDurability < maxDeflect || alarm[1] > 0)
{
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
				if (angle_difference(other.image_angle,direction) < 90) || (angle_difference(other.image_angle,direction + 180) < 90)
				{
					var d = point_distance(xstart,ystart,other.x,other.y) - 1;
					x = xstart + lengthdir_x(d,image_angle);
					y = ystart + lengthdir_y(d,image_angle);
					image_xscale = point_distance(x,y,xstart,ystart)*0.5
					alarm[0] += 2;
					snd_play(sndProjectileDestroy,0.1,true);
					deflected = true;
				}
			}
			else if (angle_difference(other.image_angle,direction + 180) < 90)
			{
				if typ == 1
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
				else if typ == 2 || (typ == 0 && canBeMoved)
				{
					snd_play(sndProjectileDestroy,0.1,true);
					BackCont.shake += 1;
					instance_destroy();
					deflected = true;
				}
				else if typ == 3
				{
					
					if struct_exists(other.squares,id)
					{
						if UberCont.normalGameSpeed == 60
							other.squares[$ id] += 0.5;
						else
							other.squares[$ id] += 1;
						var n = other.squares[$ id];
						if n > 5
						{
							x = xprevious + irandom_range(-2,2);
							y = yprevious + irandom_range(-2,2);	
						}
						else
						{
							x = xprevious;
							y = yprevious;	
						}
						if other.squares[$ id] > 10
						{
							instance_destroy();
							struct_remove(other.squares,id);
							snd_play(sndProjectileDestroy,0.1,true);
							//deflected = true;
						}
					}
					else
					{
						other.squares[$ id] = 0;	
						x = xprevious;
						y = yprevious;
					}
				}
			}
		}
	}
	if alarm[3] < 1 && deflected && sprite_index != sprCrescentMoonDeflecting && alarm[0] < 1 && alarm[1] < 1
	{
		if deflectDurability >= maxDeflect - 1
		{
			snd_play(sndCrescentMoonBreak);
		}
		else
		{
			snd_play(sndCrescentMoonBlock);
		}
		alarm[0] = deflectDuration;
		alarm[2] = deflectDuration + alarmRate;
		sprite_index = sprCrescentMoonDeflecting;
		image_index = 0;
	}
}