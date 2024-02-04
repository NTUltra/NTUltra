if instance_exists(Player)
{
	if (aimed=false && team == 2)
	{
		aimed=true;
		direction = scrAimAssistLaser(direction);
	}

	move_contact_solid(direction,16)
	x += lengthdir_x(8,direction);
	y += lengthdir_y(8,direction);
	var dir = 0
	do {
		dir += 1;
		x += lengthdir_x(4,direction);
		y += lengthdir_y(4,direction);
	}
	until dir > 150 or collision_point(x,y,Wall,false,false) or place_meeting(x,y,hitme)
	
	alarm[1] = 6
	scrForcePosition60fps();
	with instance_place(x,y,hitme)
	{
		if other.team != team
		{
			if sprite_index != spr_hurt
				snd_play(snd_hurt, hurt_pitch_variation,true)
			my_health -= other.dmg
			if instance_exists(Player){
			if Player.ultra_got[28]//roids ultra d
			{my_health -= 1;}}
			sprite_index = spr_hurt
			image_index = 0
			if team != 0
			{
				scrForcePosition60fps();
				motion_add(other.direction,3)
				if speed > maxSpeed 
					speed = maxSpeed;
			}
			
			with other
			{
				mask_index = mskPickupThroughWall;
				t += 0.3;
				scrRecycleGland(cost,radCost);
			}
			if team != 0
				scrModHit(other);
		}
	}
	speed = 0;
}