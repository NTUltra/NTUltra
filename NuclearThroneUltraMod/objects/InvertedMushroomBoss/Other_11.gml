/// @description Long range attack
alarm[1] += actTime * 3;
if target != noone && instance_exists(target)
{
	var t = team;
	var tx = target.x;
	var ty = target.y;
	if mode == 1
	{
		var tt = target;
		var walls = ds_list_create();
		var al = collision_circle_list(tx,ty,96,WallHitMe,false,false,walls,false);
		for (var i = 0; i < al; i++)
		{
			with walls[| i] {
				with instance_create(x,y,AboutToLightningWall)
				{
					team = t;
					myWall = other.id;
					target = tt
				}
			}
		}
		snd_play_2d(choose(sndSpark1,sndSpark2),0.1)
		BackCont.shake += 5;
		forceAnimation = spr_fire_toxic;
		sprite_index = spr_fire_toxic;
		image_index = 0;
		ds_list_destroy(walls);
	}
	else if mode == 0
	{
		var ang = target.direction
		var angStep = 360/buddyAmount;
		var vineDistance = 72;
		if instance_number(InvertedMushroomBossVine) < buddyAmount * 5
		{
				repeat(buddyAmount)
				{
					with instance_nearest(tx + lengthdir_x(vineDistance,ang),ty + lengthdir_y(vineDistance,ang),Floor)
					{
						if !place_meeting(x,y,WallHitMe)
						{
							var o = 16;
							if object_index == FloorExplo
								o = 8;
							if !collision_point(x+o,y+o,InvertedMushroomBossVine,false,false)
								with instance_create(x+o,y+o,InvertedMushroomBossVine)
								{
									team = t;
								}
						}
					}
					ang += angStep;
				}
			if instance_number(InvertedMushroomBossVine) < buddyAmount * 4
				with BecomeMushroomBoss
				{
					repeat(other.buddyAmount)
					{
						with instance_nearest(tx + lengthdir_x(vineDistance,ang),ty + lengthdir_y(vineDistance,ang),Floor)
						{
							if !place_meeting(x,y,WallHitMe)
							{
								var o = 16;
								if object_index == FloorExplo
									o = 8;
								if !collision_point(x+o,y+o,InvertedMushroomBossVine,false,false)
									with instance_create(x+o,y+o,InvertedMushroomBossVine)
									{
										team = t;
									}
							}
						}
						ang += angStep;
					}	
				}
			snd_play_2d(sndWallBreak);
			BackCont.shake += 10;
			forceAnimation = spr_fire;
			sprite_index = spr_fire;
			image_index = 0;
		}
		else
		{
			alarm[1] = max(alarm[1] - actTime,actTime);
			event_user(2);	
		}
	}
}