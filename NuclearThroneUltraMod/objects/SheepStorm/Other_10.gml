/// @description BREAK
if (Player.sheepPower < Player.sheepPowerToHaveEffect)
{
	BackCont.shake += 10;
	BackCont.viewx2 += lengthdir_x(20,direction + 180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,direction + 180)*UberCont.opt_shake
	with instance_create_depth(x,y,depth,SheepBreakFX)
	{
		image_angle = other.image_angle;
		speed = 3
		direction = image_angle;
		image_xscale = other.image_xscale + 0.2;
		image_yscale = other.image_yscale + 0.2;
	}
	Sleep(20);
	var ang = random(360);
	repeat(8)
	{
		with instance_create(Player.x,Player.y,Smoke)
		{
			motion_add(ang,2);
			motion_add(other.direction,1);
		}
		ang += 45;
	}
	with Player
	{
		sheepPower -= 7;
		instance_create(x,y,SheepBreak);
		speed = 0;
		snd_play(sndChargeBreak,0.1);
		with EuphoriaShield
			instance_destroy();
		alarm[3] = max(alarm[3],7);//imunity
		snd_hurt = sndDamageNegate;
		meleeimmunity = max(meleeimmunity,1);
	}
}