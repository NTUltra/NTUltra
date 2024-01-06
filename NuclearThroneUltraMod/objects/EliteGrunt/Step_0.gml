event_inherited()

if roll = 0
{
if walk > 0
{
walk -= 1
motion_add(direction,0.8)
}

scrRoguePopo();

if speed > 3 && my_health > 0
speed = 3

if instance_exists(Player)
{
	var dt = 1;
	if UberCont.normalGameSpeed == 60
		dt = 0.5;
	if Player.speed > 0 or my_health < maxhealth
		freeze += 4 * dt
	if Player.can_shoot = 0
		freeze += 8 * dt;
}
image_angle=0;


}
else if target != noone && instance_exists(target)
{
//rolling
motion_add(point_direction(x,y,target.x,target.y)+random(30)-15,0.4);
speed = 5
instance_create(x+random(6)-3,y+random(6),Dust)

if random(80)<1
direction = point_direction(x,y,target.x,target.y)+random(80)-40

if rolltime<0 && random(20)<1
{
roll = 0
image_angle=0;
}
else
{
rolltime--;
}
image_angle=direction;
}

