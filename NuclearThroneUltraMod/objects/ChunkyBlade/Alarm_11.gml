/// @description xxx
var um = GetPlayerUltramod();
if um == ultramods.shotgunBolt
{
	instance_destroy(id,false);
	
	snd_play_fire(sndWaveGun)
	var accuracy = scrGetPlayerAccuracy()
	var aimDir = direction+(random(12)-6)*accuracy
	var s = speed + 12;
	var am = 2;//am*am = 9
	var offsetStep = 12*accuracy;
	var offset = offsetStep*am*0.5;
	var xx = x+lengthdir_x(offset,aimDir-90)+lengthdir_x(offset*0.5,aimDir+180);
	var yy = y+lengthdir_y(offset,aimDir-90)+lengthdir_y(offset*0.5,aimDir+180);
	var msk = mask_index;
	mask_index = mskBullet2;
		repeat(am)
		{
			var xxx = xx;
			var yyy = yy;
			repeat(am)
			{
				if !place_meeting(xx,yy,Wall)
					with instance_create(xx,yy,Flug)
					{
						alarm[11] = 0;
						dmg = 4;
						motion_add(aimDir,s)
						image_angle = direction
						team = other.team
					}
				yy += lengthdir_y(offsetStep,aimDir);
				xx += lengthdir_x(offsetStep,aimDir);
			}
			xx = xxx;
			yy = yyy;
			yy += lengthdir_y(offsetStep,aimDir+90);
			xx += lengthdir_x(offsetStep,aimDir+90);
		}
	mask_index = msk;
	BackCont.viewx2 += lengthdir_x(1,aimDir+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(1,aimDir+180)*UberCont.opt_shake
	BackCont.shake += 1
	
	
	snd_play_fire(sndSlugger);
	with instance_create(x,y,Flug)
	{
		dmg = other.dmg+1;
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed + 12;
		team = other.team;
		alarm[11] = 0;
	}
} 