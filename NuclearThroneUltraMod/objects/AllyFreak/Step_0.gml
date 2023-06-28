

if hspeed > 0
right = 1
else if hspeed < 0
right = -1

if speed = 0
{if sprite_index != spr_hurt
sprite_index = spr_idle}
else
{if sprite_index != spr_hurt
sprite_index = spr_walk}
if sprite_index = spr_hurt
{if image_index > 2
sprite_index = spr_idle}

if walk > 0
{
walk -= 1
motion_add(direction,0.8)
}
if instance_exists(Player)
{
	if point_distance(x,y,Player.x,Player.y) > 52
		mp_potential_step(Player.x,Player.y,1,false)
}

if(instance_exists(enemy)){
    if goForIt
    {
        if instance_exists(target) && !collision_line(x,y,target.x,target.y,Wall,false,false)
        {
			motion_add(point_direction(x,y,target.x,target.y),4);
        }
    }
}

if speed > 4
speed = 4

/*
if(alarm[0]>0)
{
sprite_index=sprAllyAppear;
}

/* */
/*  */
