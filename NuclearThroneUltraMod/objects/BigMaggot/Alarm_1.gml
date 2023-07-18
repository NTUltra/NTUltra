scrTarget()
alarm[1] = 20+random(20)

if instance_exists(Player)
{
if Player.loops>0
alarm[1] = 10+random(10);
}

if target > 0
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
if rage = 0
rage = 1
direction = point_direction(x,y,target.x,target.y)+random(60)-30
}
else
{
if my_health < maxhealth and random(2) < 1 && instance_number(BigMaggotBurrow) < 3
{
image_index = 0
snd_play(sndBigMaggotBurrow,0,true)
with instance_change(BigMaggotBurrow,false)
{
	my_health = other.my_health;	
}
}
rage = 0
motion_add(random(360),1)
}
}
else 
{
rage = 0
motion_add(random(360),1)
}

