event_inherited()

if walk > 0
{
walk -= 1
motion_add(direction,0.9)
}

scrRoguePopo();
scrWalkAwayFromNade();
if speed > 4.3
speed = 4.3

if instance_exists(Player)
{
if Player.speed > 0 or my_health < maxhealth
freeze += 1
if Player.can_shoot = 0
freeze += 3
}