event_inherited()

if walk > 0
{
walk -= 1
motion_add(direction,0.8)
}

if Shielding=false
scrRoguePopo();

if speed > 3.5 && my_health > 0
speed = 3.5

if instance_exists(Player)
{
if Player.speed > 0 or my_health < maxhealth
freeze += 1
if Player.can_shoot = 0
freeze += 3
}


