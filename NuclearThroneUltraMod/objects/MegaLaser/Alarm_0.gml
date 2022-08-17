if(instance_exists(Player)){
	if isog
	{
		var um = GetPlayerUltramod()
		if um == ultramods.laserBullet
		{
			with instance_create(x,y,Shell)
			motion_add(other.image_angle+Player.right*100+random(50)-25,2+random(2))
			if isUltra
			{
				snd_play_fire(sndUltraPistol);
				var acc = scrGetPlayerAccuracy();
				with instance_create(x,y,Bullet4)
				{motion_add(other.image_angle-(6*acc),14)//12 normally
					scrCopyWeaponMod(other);
				image_angle = direction
				team = other.team
				alarm[11] = 0;}
				with instance_create(x,y,Bullet4)
				{motion_add(other.image_angle+(3*acc),14)//12 normally
					scrCopyWeaponMod(other);
				image_angle = direction
				team = other.team
				alarm[11] = 0;}
				with instance_create(x,y,Bullet4)
				{motion_add(other.image_angle-(3*acc),14)//12 normally
					scrCopyWeaponMod(other);
				image_angle = direction
				team = other.team
				alarm[11] = 0;}
				with instance_create(x,y,Bullet4)
				{motion_add(other.image_angle+(6*acc),14)//12 normally
					scrCopyWeaponMod(other);
				image_angle = direction
				team = other.team
				alarm[11] = 0;}
			}
			else
			{
				snd_play_fire(sndHeavyMachinegun);
				var acc = scrGetPlayerAccuracy();
				with instance_create(x,y,FatBullet)
				{motion_add(other.image_angle-(5*acc),14)//12 normally
					scrCopyWeaponMod(other);
				image_angle = direction
				team = other.team
				alarm[11] = 0;}
				with instance_create(x,y,FatBullet)
				{motion_add(other.image_angle+(5*acc),14)//12 normally
					scrCopyWeaponMod(other);
				image_angle = direction
				team = other.team
				alarm[11] = 0;}
			}
		
			instance_destroy(id,false);
			exit;
		}
		else if um == ultramods.laserBolt
		{
			audio_stop_sound(sndMegaLaser);
			snd_play(sndHeavyCrossbow);
			instance_destroy(id,false);
			with instance_create(x,y,HeavyBolt)
			{motion_add(other.image_angle,24)
			image_angle = direction
			scrCopyWeaponMod(other);
			team = other.team
			alarm[11] = 0;}
		}
	}
	isog = false;
	if (aimed=false && team == 2)
	{
		aimed=true;
		image_angle = scrAimAssistLaser(image_angle);
	}
}

var dir;
dir = 0

while !((place_meeting(x,y,hitme) and dir > 64) or place_meeting(x,y,Wall) or dir > 320)
{
	x += lengthdir_x(1,image_angle);
	y += lengthdir_y(1,image_angle);
	dir += 1;
}
/*
do {x += lengthdir_x(2,image_angle) y += lengthdir_y(2,image_angle) dir += 1}
until (place_meeting(x,y,hitme) and dir > 16) or place_meeting(x,y,Wall) or dir > 160*/

alarm[0] = 2

image_xscale = point_distance(x,y,xstart,ystart)*0.5
instance_create(x,y,Smoke)

