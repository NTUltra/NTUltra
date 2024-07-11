if !canDamage
	exit;
if instance_exists(Player)
{
	if (aimed=false && team == 2)
	{
		aimed=true;
		direction = scrAimAssistLaser(direction,0.75);
	}

	move_contact_solid(direction,16)
	x += lengthdir_x(8,direction);
	y += lengthdir_y(8,direction);
	var dir = 0
	do {
		var n = instance_place(x,y,hitme)
		dir += 1;
		x += lengthdir_x(4,direction);
		y += lengthdir_y(4,direction);
	}
	until dir > 150 or collision_point(x,y,Wall,false,false) or (n != noone && n.team != team)
	
	alarm[1] = 6
	scrForcePosition60fps();
	with instance_place(x,y,hitme)
	{
		if other.team != team && my_health > 0
		{
			if sprite_index != spr_hurt
				snd_play(snd_hurt, hurt_pitch_variation,true)
			DealDamage(other.dmg)
			sprite_index = spr_hurt
			image_index = 0
			if team != 0
			{
				scrForcePosition60fps();
				motion_add(other.direction,other.knockback)
				if speed > maxSpeed 
					speed = maxSpeed;
			}
			
			with other
			{
				mask_index = mskPickupThroughWall;
				t += timeIncrease;
				if cost != 0
					scrRecycleGland(cost,radCost);
				event_user(1);
			}
		}
	}
	speed = 0;
}