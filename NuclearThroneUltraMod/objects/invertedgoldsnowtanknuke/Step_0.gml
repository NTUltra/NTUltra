/// @description FrostFlame
if active = 1
{
//instance_create(x,y,Smoke)
with instance_create(x,y,EnemyIceFlame)
{
	team = other.team
	motion_add(other.direction+180+random_range(60,-60),0.5);
}
if speed < 5
speed += 0.3
}
