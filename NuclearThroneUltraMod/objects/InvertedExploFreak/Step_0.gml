event_inherited()


if hspeed > 0
right = 1
else if hspeed < 0
right = -1

if walk > 0
{
if sprite_index != spr_hurt
motion_add(direction,0.6)
}


if instance_exists(Player)
{
    if Player.loops>0
    {
    if speed > 3.3
    speed = 3.3
    }
    else
    {
    if speed > 3.1
    speed = 3.1
    }
}
else
{
if speed > 3.1
speed = 3.1
}

if target > 0 && instance_exists(target) && target != noone && alarm[2] < 1
{
if instance_exists(target)
mp_potential_step(target.x,target.y,1.25,0)
}

