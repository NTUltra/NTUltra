event_inherited()

//if sprite_index != spr_hurt
//motion_add(direction,0.8)
if walk > 0
{
walk -= 1
motion_add(direction,0.8)
}

if hspeed > 0
right = 1
else if hspeed < 0
right = -1


if speed > maxSpeed
speed = maxSpeed


