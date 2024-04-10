alarm[1] = 2+random(6)//40+random(30)
sleeping = false;
rest = 0
scrTarget()
if target != noone
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
if ammo <= 0 and random(3) < 1 and point_distance(x,y,target.x,target.y) > 64 and point_distance(x,y,target.x,target.y) < 240
{
snd_play(sndGoldTankAim)
scrTarget()
if target != noone
gunangle = point_direction(x,y,target.x,target.y)
alarm[2] = 20;

ammo = 12
}
direction = point_direction(x,y,target.x,target.y)+(70+random(40))*choose(1,-1)
}
else 
motion_add(random(360),0.5)
}
else 
motion_add(random(360),0.5)

