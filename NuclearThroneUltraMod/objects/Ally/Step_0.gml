if my_health <= 0
instance_destroy()

//WKICK
//optimise if variable_local_exists("wkick") = 1
//{
if wkick > 0
wkick -= 1
if wkick < 0
wkick += 1
//}
scrWalkAwayFromNade();

//ANIMATE ME PLZ
//optimise if variable_local_exists("spr_chrg") = 1
/*{
if sprite_index != spr_hurt and sprite_index != spr_chrg
sprite_index = spr_idle
if sprite_index = spr_hurt or sprite_index = spr_chrg
{if image_index > 2
sprite_index = spr_idle}
}
else
{
if variable_local_exists("spr_fire") = 1
{
if speed = 0
{if sprite_index != spr_hurt and sprite_index != spr_fire
sprite_index = spr_idle}
else
{if sprite_index != spr_hurt and sprite_index != spr_fire
sprite_index = spr_walk}
if sprite_index = spr_hurt or sprite_index = spr_fire
{if image_index > 2
sprite_index = spr_idle}
}
else
{*/
if speed = 0
{if sprite_index != spr_hurt
sprite_index = spr_idle}
else
{if sprite_index != spr_hurt
sprite_index = spr_walk}
if sprite_index = spr_hurt
{if image_index > 2
sprite_index = spr_idle}
//}
//}

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
	sprite_index=spr_idle;
}


/* */
/*  */
