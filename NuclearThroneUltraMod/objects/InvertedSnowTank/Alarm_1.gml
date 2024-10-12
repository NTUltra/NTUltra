alarm[1] = 7+random(9)
if (instance_exists(Player) && !Player.justAsheep) sleeping = false;;
rest = 0
scrTarget()
if target != noone
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
if ammo <= 0 and random(3) < 1 and point_distance(x,y,target.x,target.y) > 64 and point_distance(x,y,target.x,target.y) < 245
{
snd_play(sndSnowTankAim)
scrTarget()
if target != noone
gunangle = point_direction(x,y,target.x,target.y)
alarm[2] = 32;

ammo = 32
}
direction = point_direction(x,y,target.x,target.y)+(70+random(40))*choose(1,-1)
}
else 
motion_add(random(360),0.5)
}
else 
motion_add(random(360),0.5)

