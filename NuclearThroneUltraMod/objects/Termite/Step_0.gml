if walk > 0
{
walk -= 1
motion_add(direction,2)
}

if hspeed>0
right=1
else
right=-1;

if target>0 && instance_exists(target)
{
motion_add(point_direction(target.x,target.y,x,y),0.2)
}

if bites<1
instance_destroy();

if speed = 0
{sprite_index = spr_idle}
else
{sprite_index = spr_walk}

if right
image_xscale=1;
else
image_xscale=-1;

if speed>maxSpeed
speed=maxSpeed;

