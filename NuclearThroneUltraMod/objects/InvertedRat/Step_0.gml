event_inherited()

if walk > 0
{
walk -= 1
motion_add(direction,1.8)
}

if hspeed > 0
right = 1
else if hspeed < 0
right = -1

if instance_exists(Player)
{
    if Player.loops>0
    {
    if speed > 6.2
    speed = 6.2
    }
    else
    {
    if speed > 5
    speed = 5
    }
}
else
{
if speed > 5
speed = 5
}

