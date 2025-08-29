scrTarget()
alarm[1] = 5+random(5)
if (instance_exists(Player) && !Player.justAsheep) sleeping = false;;
if loops > 0
	alarm[1] -= 2;
if target != noone
{
	if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 && point_distance(x,y,target.x,target.y) > 8
	{
		walk = 20
		motion_add(point_direction(x,y,target.x,target.y)+random(80)-40,2)
	}
	else
	{
		motion_add(random(360),acc);
		if (fuseAmount < 1)
		{
			var merged = 0;
			var msk = mask_index; 
			mask_index = mskReviveArea;
			var freaks = ds_list_create();
			var al = instance_place_list(x,y,InvertedFreak,freaks,false);
			if al > 2
			{
				for(var i = 0; i < al; i ++)
				{
					with freaks[| i] {
						if fuseAmount < 1
						{
							merged++;
							other.raddrop += raddrop;
							snd_play(sndFreakFuse,0.2);
							if (countKill)
							{
								if instance_exists(Player)
								{
									Player.kills ++;	
								} else {
									BackCont.kills ++;	
								}
							}
							with instance_create(other.x,other.y,ExploderPopoExplode)
							{
								maxTime = 10;
								alarm[0] = maxTime;
								targetX = other.x;
								targetY = other.y;
								distance = point_distance(x,y,targetX,targetY);
								dir = point_direction(x,y,targetX,targetY);
								ogCol = c_red;
								col = ogCol;
							}
							instance_destroy(id,false);
							with instance_create(x,y,RabbitPawFX)
							{
								image_xscale = other.right;
								sprite_index = sprFreak1Fuse;
							}
						}
					}
				}
				fuseAmount = merged;
				if merged > 0
				{
					my_health += 2;
					sprite_index = spr_hurt;
					image_index = 0;
					image_xscale = 1.2;
					image_yscale = 1.2;
					right = image_xscale * sign(right);
					shadowY = 2;
					speed = 0;
					walk = 0;
					alarm[1] += 15;
				}
			}
			mask_index = msk;
		}
	}
}
else 
	motion_add(random(360),acc)