event_inherited()

if walk > 0
{
	walk -= 1
	motion_add(direction,acc*0.5)
	motion_add(gunangle,acc*0.5);
}

scrRoguePopo();
if speed < minMovementSpeed
	speed = minMovementSpeed;
if alarm[2] > 0
{
	speed = shootingMovementSpeed;
}
else if speed > maxSpeed
	speed = maxSpeed;

var dt = 1;
if UberCont.normalGameSpeed == 60
	dt = 0.5;
vspeed -= (vspeed * 0.1) * dt;
if instance_exists(Player)
{
	
	if Player.speed > 0 or my_health < maxhealth
		freeze += 1 * dt
	if Player.can_shoot = 0
		freeze += 2 * dt;
}
if hspeed < 0
	right = -1
else if hspeed > 0
	right = 1