alarm[1] = 40+random(30)
if (instance_exists(Player) && !Player.justAsheep) sleeping = false;;
if instance_exists(Player)
{
if Player.loops>0
alarm[1] = 20+random(40);
}

rest = 0
scrTarget()
if target != noone
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
if ammo <= 0 and random(3) < 1 and point_distance(x,y,target.x,target.y) > 64 and point_distance(x,y,target.x,target.y) < 300
{
	with SnowTank
		alarm[1] += 10;
snd_play(sndSnowTankAim)
scrTarget()
if target != noone
gunangle = point_direction(x,y,target.x,target.y)
alarm[2] = 40

ammo = 16
}
direction = point_direction(x,y,target.x,target.y)+(70+random(40))*choose(1,-1)
}
else 
motion_add(random(360),0.5)
}
else 
motion_add(random(360),0.5)

