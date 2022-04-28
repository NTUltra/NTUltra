/// @description Minor delay to fire bullets during fire animation
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
motion_add(direction,1);
alarm[1] += 4;
fire = false;