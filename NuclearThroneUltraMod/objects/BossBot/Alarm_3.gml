/// @description Fire
alarm[5] = 15;
if alarm[6] < 1
{
	snd_play(sndEraser);
	snd_play(sndQuadMachinegun);
		var msk = mask_index;
		mask_index = mskEnemyBullet1;
		var aimDir = wallDir;
		wallDir += 90;
		var len = wallLength;
		var bx = x;
		var by = y;
		var xstep = lengthdir_x(len,aimDir+90);
		var ystep = lengthdir_y(len,aimDir+90);
		var count = 0;
		while (!place_meeting(bx,by,Wall) && place_meeting(bx,by,Floor) && count < 500 || count < 1)
		{
			instance_create(bx,by,Dust);
			with instance_create(bx,by,BecomeEnemyBulletDrops)
			{
				aimDirection = aimDir;
				image_angle = direction
				team = other.team
			}
			with instance_create(bx,by,BecomeEnemyBulletDrops)
			{
				aimDirection = aimDir + 180;
				image_angle = direction
				team = other.team
			}
			bx += xstep;
			by += ystep;
			count ++;
		}
		var xstep = lengthdir_x(len,aimDir-90);
		var ystep = lengthdir_y(len,aimDir-90);
		bx = x + xstep;
		by = y + ystep;
		count = 0;
		while (!place_meeting(bx,by,Wall) && place_meeting(bx,by,Floor) && count < 500 || count < 1)
		{
			instance_create(bx,by,Dust);
			with instance_create(bx,by,BecomeEnemyBulletDrops)
			{
				aimDirection = aimDir;
				image_angle = direction
				team = other.team
			}
			with instance_create(bx,by,BecomeEnemyBulletDrops)
			{
				aimDirection = aimDir + 180;
				image_angle = direction
				team = other.team
			}
			bx += xstep;
			by += ystep;
			count ++;
		}
		mask_index = msk;

	alarm[4] = 5;
}
