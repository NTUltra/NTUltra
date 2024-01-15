event_inherited()

if walk > 0
{
walk -= 1
motion_add(direction,acc)
}

if speed > maxSpeed
speed = maxSpeed

if myGuy != noone && instance_exists(myGuy) {
	gunangle = point_direction(x, y, myGuy.x, myGuy.y);
	var msk = myGuy.mask_index;
	if !sprite_exists(msk)
		msk = myGuy.sprite_index;
	var w = myGuy.bbox_right - myGuy.bbox_left;
	var h = myGuy.bbox_bottom - myGuy.bbox_top;
	shieldX = myGuy.x - sprite_get_xoffset(msk)
	+ sprite_get_width(msk) * 0.5;
	shieldY = myGuy.y - sprite_get_yoffset(msk)
	+ sprite_get_height(msk) * 0.5;
	shieldRadius = min(64,max(w*0.5,h*0.5) + 4);
	var projs = ds_list_create();
	var al = collision_circle_list(shieldX,shieldY,shieldRadius,projectile,false,false,projs,false)
	for (var i = 0; i < al; i++)
	{
		with projs[| i] {
			if team != other.team
			{
				if typ == 0 && !canBeMoved && isLaser
				{
					var dir = point_direction(x,y,other.shieldX,other.shieldY) + 180;
					var xx = other.shieldX + lengthdir_x(other.shieldRadius,dir);
					var yy = other.shieldY + lengthdir_y(other.shieldRadius,dir);
					var d = point_distance(xstart,ystart,xx,yy) - 1;
					x = xstart + lengthdir_x(d,image_angle);
					y = ystart + lengthdir_y(d,image_angle);
					image_xscale = point_distance(x,y,xstart,ystart)*0.5
					alarm[0] += 2;
					snd_play(sndProjectileDestroy,0.1,true);
				}
				else if typ == 1 || typ == 2
				{
					instance_destroy();
					snd_play(sndProjectileDestroy,0.1,true);
				}
			}
		}
	}
	ds_list_destroy(projs);
	
	if myConnectionBullet != noone && instance_exists(myConnectionBullet)
	{
		if alarm[2] > 0
		{
			if UberCont.normalGameSpeed == 60
				connectionTime += bulletMoveSpeed*0.5;
			else
				connectionTime += bulletMoveSpeed;
			if connectionTime >= 1
			{
				connectionTime = 1;
				alarm[3] = holdBulletTime;
			}
			else
			{
				alarm[2] = 2;	
			}
		}
		else if alarm[4] > 0
		{
			if UberCont.normalGameSpeed == 60
				connectionTime -= bulletMoveSpeed*0.5;
			else
				connectionTime -= bulletMoveSpeed;
			if connectionTime <= 0
			{
				connectionTime = 0;
				alarm[5] = holdBulletTime;
			}
			else
			{
				alarm[4] = 2;	
			}
		}
		myConnectionBullet.x = lerp(x,shieldX,connectionTime);
		myConnectionBullet.y = lerp(y,shieldY,connectionTime);
		with myConnectionBullet
		{
			scrForcePosition60fps();	
		}
	}
	else if alarm[6] < 1
	{
		alarm[6] = holdBulletTime;
	}
}
else if myConnectionBullet != noone && instance_exists(myConnectionBullet)
{
	with myConnectionBullet
	{
		instance_destroy();	
	}
}