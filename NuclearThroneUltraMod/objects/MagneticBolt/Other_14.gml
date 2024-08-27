/// @description Target the next enemy!
var dis = 450;
var nearestTarget = noone;
var actualDmg =	scrCallculateFinalDamage(dmg);
if team == 2 && instance_exists(Player) && Player.skill_got[21]
	var pierceDmg = actualDmg*0.75
else
	var pierceDmg = actualDmg*0.5
		
BackCont.shake += 1;
with hitme
{
	if team != other.team && team != 0 &&
		my_health > 0 && other.my_health < pierceDmg &&
		!array_contains(other.hitEntities,id) &&
		!collision_line(x,y,other.x,other.y,Wall,false,false)
	{
		var newDis = point_distance(x,y,other.x,other.y);
		if (newDis < dis)
		{
			nearestTarget = id;
			dis = newDis;
		}
	}
}
speed = max(speed,30);
if (nearestTarget != noone)
{
	direction = point_direction(x,y,nearestTarget.x + hspeed,nearestTarget.y + vspeed);
	image_angle = direction;
}