/// @description SMACK THAT!
alarm[0]+= 8;
alarm[5] = 1;
snd_play(sndAssassinAttack)
wepangle = -wepangle
motion_add(gunangle,6)
	with instance_create(x+lengthdir_x(smackRange,gunangle),y+lengthdir_y(smackRange,gunangle),AssassinSlash)
	{
		dmg=5;
		image_angle = other.gunangle
		motion_add(other.gunangle+random(10)-5,other.smackSpeed)
		team = other.team
	}
	/*
	with instance_create(x,y,EnemyBullet1Square)
	{
		motion_add(other.gunangle,4)
		image_angle = direction
		team = other.team
	}*/
	alarm[1] = 15+random(10)
	dodge=1;