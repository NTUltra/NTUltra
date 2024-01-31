event_inherited()


if sprite_index != spr_fire
motion_add(direction,0.5)

if speed > 1.5
speed = 1.5

if alarm[2]||alarm[3] > 8
{
with instance_create(x+random(96)-48,y+random(96)-48,LaserCharge)
{
team=other.team;
motion_add(point_direction(x,y,other.x,other.y),2+random(1))
alarm[0] = point_distance(x,y,other.x,other.y)/speed+1
}
repeat(5)   {
with instance_create(x+random(6)-3,y+random(6)-3,LaserCharge)
{
team=other.team;
move_contact_solid(other.gunangle,random(480))
motion_add(random(360),2+random(1))
alarm[0] = 2+random(4)
}
            }
}
else if firstTime && random(300)<5{//random lightning
alarm[3]=10;
ammo = 1
}
if firstTime
	speed = 0;
