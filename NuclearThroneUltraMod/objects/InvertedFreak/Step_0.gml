event_inherited()


if hspeed > 0
right = 1
else if hspeed < 0
right = -1

if walk > 0
{
if sprite_index != spr_hurt
motion_add(direction,0.55)

}


if target != noone
{
if instance_exists(target)
mp_potential_step(target.x,target.y,0.4,0)
}


if instance_exists(Player)
{
    if Player.loops>0
    {
    if speed > 4.8
    speed = 4.8
    }
    else
    {
    if speed > 4
    speed = 4
    }
}
else
{
if speed > 4
speed = 4
}

//I'm hurt I will bite now
if instance_exists(Player) && sprite_index = spr_hurt
motion_add(point_direction(x,y,Player.x,Player.y),1);

