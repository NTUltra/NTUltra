/// @description Become Charge
spr_chrg = sprBossBotCharge;
alarm[6] = bowlingDuration;
alarm[7] = fireDelay;
spr_hurt = spr_become_charge;
spr_idle = spr_become_charge;
spr_walk = spr_become_charge;
sprite_index = spr_become_charge;
image_index = 0;
rotation = choose(20, -20);
if target > -1 && instance_exists(target)
	direction = point_direction(x,y,target.x,target.y);
else
	direction = random(360);
with instance_create(x,y,Shell)
{
	image_angle = random_range(-90,180);
	sprite_index = sprBossBotHat;
	vspeed-=3;
}

with instance_create(x,y,Shell)
{
	sprite_index = other.wepspr;
	hspeed -=3;
}

with instance_create(x,y,Shell)
{
	sprite_index = other.wepspr;
	hspeed +=3;
}
justCharged = true;