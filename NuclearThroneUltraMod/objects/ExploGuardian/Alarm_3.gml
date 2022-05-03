/// @description Minor delay to fire bullets during fire animation
instance_create(x,y,WallBreak);
var amount = 26;
var angle = random(360);
var angleStep = 360/amount;
snd_play(sndExploGuardianFire);
repeat(amount)
{
	with instance_create(x,y,exploBullet)
	{
		motion_add(angle,other.projectileSpeed);
		image_angle = direction
		team = other.team
	}
	angle += angleStep;
}
alarm[1] += 7;
alarm[4] = 7;//Swap back sprite finished animation (total 20 frames)
fire = false;
charge = false;
spr_idle = spr_normal;
spr_hurt = spr_normal_hurt;
