if my_health <= 0
instance_destroy()


if wkick > 0
wkick -= 1
if wkick < 0
wkick += 1
scrWalkAwayFromNade();
if alarm[0] < 1
{
	if speed = 0
	{if sprite_index != spr_hurt
	sprite_index = spr_idle}
	else
	{if sprite_index != spr_hurt
	sprite_index = spr_walk}
	if sprite_index = spr_hurt
	{if image_index > 2
	sprite_index = spr_idle}
}


if !grabbed && walk > 0
{
	walk -= 1
	motion_add(direction,0.8)
}
if grabbed
{
	speed = 0;
	if instance_exists(Player)
	{
		var len = 12;
		var a = point_direction(Player.x,Player.y,UberCont.mouse__x,UberCont.mouse__y) + grabOffset;
		x = Player.x + lengthdir_x(len,a);
		y = Player.y + lengthdir_y(len,a);
		scrForcePosition60fps();
		right = Player.right;
	}
}
else
{
	if instance_exists(Player) && alarm[0] < 1
	{
		var dis = point_distance(x,y,Player.x,Player.y);
		//var losToTarget = false;
		//if target != noone && instance_exists(target) && !collision_line(x,y,target.x,target.y,Wall,false,false)
		//	losToTarget = true;
		if dis > 64 && isInFight < 1
		{
			if dis >= 270
			{
				scrForcePosition60fps();
				x = Player.x;
				y = Player.y;
				sprite_index = spr_appear;
				snd_play(sndAllyTeleport);
				image_index = 0;
				image_speed = 0.7;
				alarm[0] = (image_number-1)/image_speed//intro animation which is cool af
				alarm[1] += alarm[0];
			}
			else if !collision_line(x,y,Player.x,Player.y,Wall,false,false)
			{
				motion_add(point_direction(x,y,Player.x,Player.y), 0.6)
			}
		}
		else if dis > 28 && dis < 58 && !collision_line(x,y,Player.x,Player.y,Wall,false,false)
		{
			motion_add(point_direction(x,y,Player.x,Player.y), 0.5)
		}
		else if isInFight > 0
		{
			if target != noone && instance_exists(target)
			{
				if !collision_line(x,y,target.x,target.y,Wall,false,false) && point_distance(x,y,target.x,target.y) > 64 && !place_meeting(x,y,enemy)
				{
					motion_add(point_direction(x,y,target.x,target.y),1);	
				}
			}
		}
		var goDodge = true;
		if dis < 64 {
			var n = instance_nearest(x,y,projectile);
			if n != noone && n.team != team && 
			point_distance(x,y,n.x + hspeed,n.y + vspeed) < 64 &&
			point_distance(Player.x+Player.hspeed,Player.y+Player.vspeed,n.x + hspeed,n.y + vspeed) < 48
			{
				goDodge = false;
				motion_add(point_direction(x,y,n.x + n.hspeed,n.y + n.vspeed),2);	
			}
		}
		if goDodge
		{
			var n = instance_nearest(x,y,projectile);
			if n != noone && n.team != team && point_distance(x,y,n.x,n.y) < 48
			{
				motion_add(point_direction(n.x + n.hspeed,n.y + n.vspeed,x,y) + 1,2);	
			}
		}
	}

	if speed > maxSpeed
		speed = maxSpeed

	if(alarm[0]>0)
	{
		sprite_index=spr_appear;
		if throwDamage > 0
			my_health = maxhealth;
		if alarm[0] > throwStart && throwDamage > 0
		{
			speed = 0;
		}
		else if alarm[4] > 0 && throwDamage != 0
		{
			motion_add(throwDirection,throwSpeed * 0.75);
			speed = throwSpeed;
		}
		if hspeed > 0
			right = 1
		else if hspeed < 0
			right = -1
		if throwDamage == 0 && speed > maxSpeed - 1
			speed = maxSpeed - 1;
	}
	else if speed > maxSpeed
	speed = maxSpeed
}