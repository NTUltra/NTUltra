event_inherited()

if walk > 0
{
	walk -= 1
	motion_add(direction,acc)
}

if sprite_index == spr_hurt && speed > maxSpeed * 0.5
		speed = maxSpeed * 0.5;
else if speed > maxSpeed
	speed = maxSpeed

var msk = mask_index;
mask_index = mskBandit;
if place_meeting(x + hspeed,y,WallHitMe)
{
	hspeed *= -1;	
}
if place_meeting(x,y + vspeed,WallHitMe)
{
	vspeed *= -1;	
}
mask_index = msk;