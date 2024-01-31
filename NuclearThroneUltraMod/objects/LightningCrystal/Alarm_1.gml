///@description AI
alarm[1] = 8+random(10)//30+r10
firstTime = false;
scrTarget()
if target != noone
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 and point_distance(x,y,target.x,target.y) < 70
{
ammo = 4//duration of lightning
alarm[2] = 10//laser=30
snd_play(sndLaserCrystalCharge)
gunangle = point_direction(x,y,target.x,target.y)
sprite_index = spr_fire
alarm[1] = 90+random(10)

direction = choose(direction,point_direction(x,y,target.x,target.y)+90+random(180))

}
else if random(3) < 1
direction = random(360)

if target.x < x
right = -1
else if target.x > x
right = 1
}
else if random(10) < 1
{
motion_add(random(360),0.4)
alarm[1] = 10+random(30)
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}

