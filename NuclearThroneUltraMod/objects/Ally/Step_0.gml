if my_health <= 0
instance_destroy()


if wkick > 0
wkick -= 1
if wkick < 0
wkick += 1
scrWalkAwayFromNade();
if alarm[0] < 1
{
	if speed = 0
	{if sprite_index != spr_hurt
	sprite_index = spr_idle}
	else
	{if sprite_index != spr_hurt
	sprite_index = spr_walk}
	if sprite_index = spr_hurt
	{if image_index > 2
	sprite_index = spr_idle}
}


if walk > 0
{
	walk -= 1
	motion_add(direction,0.8)
}
if instance_exists(Player)
{
	var dis = point_distance(x,y,Player.x,Player.y)
	if dis > 52
	{
		if dis >= 280
		{
			scrForcePosition60fps();
			x = Player.x;
			y = Player.y;
		}
		else
		{
			motion_add(point_direction(x,y,Player.x,Player.y), 0.2)
		}
	}
	

}

if speed > maxSpeed
speed = maxSpeed

if(alarm[0]>0)
{
	sprite_index=spr_appear;
	my_health = maxhealth;
	if alarm[0] > throwStart
		speed = 0;
	else if alarm[4] > 0
		speed = throwSpeed;
	if hspeed > 0
		right = 1
	else if hspeed < 0
		right = -1
}
else if speed > maxSpeed
speed = maxSpeed


/* */
/*  */
