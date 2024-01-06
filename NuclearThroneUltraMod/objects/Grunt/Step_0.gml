event_inherited()

if roll = 0
{
if walk > 0
{
walk -= 1
motion_add(direction,0.8)
}

scrRoguePopo();

if speed > 3
speed = 3

if instance_exists(Player)
{
	var dt = 1;
	if UberCont.normalGameSpeed == 60
		dt = 0.5;
	if Player.speed > 0 or my_health < maxhealth
		freeze += 1 * dt
	if Player.can_shoot = 0
		freeze += 2 * dt;
}
}
else
{
//rolling
speed = 5
angle += 40*right
instance_create(x+random(6)-3,y+random(6),Dust)

if angle > 720 or -angle > 720
{
angle = 0
roll = 0
}
}

