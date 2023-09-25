/// @description AI
if instance_exists(Player)
{
if Player.loops>0
{

//POST LOOP
alarm[1] = 10+random(30)//30+random(60)

meleedamage = 0

scrTarget()
if target != noone
{
if point_distance(x,y,target.x,target.y) < 240 or intro = 0
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 and point_distance(x,y,target.x,target.y) > 48 and intro = 1
{
if random(3) < 2
{
snd_play(sndBigBanditStartShoot)
ammo = 10
alarm[6] = 5//alarm[2]
alarm[2] = 1
gunangle = point_direction(x,y,target.x,target.y)
alarm[1] = 60+random(10)//70+random(5)
}
}
else if shot = 1 or my_health < maxhealth or intro = 0
{
//CHARGE HERE
chargewait += 1
if point_distance(x,y,target.x,target.y) < 96
chargewait += 1
if chargewait >= 2 or intro = 0
{
alarm[3] = 1
alarm[1] = -1
chargewait = 0
}
}
}
direction = point_direction(target.x,target.y,x,y)+random(180)-90
speed = 0.4
walk = 10+random(10)
if point_distance(x,y,target.x,target.y) > 64
{
walk = 40
direction = point_direction(target.x,target.y,x,y)+random(90)-45
}

if target.x < x
right = -1
else if target.x > x
right = 1
}
else if random(5) < 1
{
motion_add(random(360),0.4)
walk = 10+random(10)
alarm[1] = walk+10+random(30)
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}


}
else{

//PRE LOOP
alarm[1] = 30+random(60)

meleedamage = 0

scrTarget()
if target != noone
{
if point_distance(x,y,target.x,target.y) < 240 or intro = 0
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 and point_distance(x,y,target.x,target.y) > 48 and intro = 1
{
if random(3) < 2
{
snd_play(sndBigBanditStartShoot)
ammo = 10
alarm[2] = 1
gunangle = point_direction(x,y,target.x,target.y)
alarm[1] = 70+random(5)
}
}
else if shot = 1 or my_health < maxhealth or intro = 0
{
//CHARGE HERE
chargewait += 1
if point_distance(x,y,target.x,target.y) < 96
chargewait += 1
if chargewait >= 2 or intro = 0
{
alarm[3] = 1
alarm[1] = -1
chargewait = 0
}
}
}
direction = point_direction(target.x,target.y,x,y)+random(180)-90
speed = 0.4
walk = 10+random(10)
if point_distance(x,y,target.x,target.y) > 64
{
walk = 40
direction = point_direction(target.x,target.y,x,y)+random(90)-45
}

if target.x < x
right = -1
else if target.x > x
right = 1
}
else if random(5) < 1
{
motion_add(random(360),0.4)
walk = 10+random(10)
alarm[1] = walk+10+random(30)
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}

}


}
else{

//PRE LOOP
alarm[1] = 30+random(60)

meleedamage = 0

scrTarget()
if target != noone
{
if point_distance(x,y,target.x,target.y) < 240 or intro = 0
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 and point_distance(x,y,target.x,target.y) > 48 and intro = 1
{
if random(3) < 2
{
snd_play(sndBigBanditStartShoot)
ammo = 10
alarm[2] = 1
gunangle = point_direction(x,y,target.x,target.y)
alarm[1] = 70+random(5)
}
}
else if shot = 1 or my_health < maxhealth or intro = 0
{
//CHARGE HERE
chargewait += 1
if point_distance(x,y,target.x,target.y) < 96
chargewait += 1
if chargewait >= 2 or intro = 0
{
alarm[3] = 1
alarm[1] = -1
chargewait = 0
}
}
}
direction = point_direction(target.x,target.y,x,y)+random(180)-90
speed = 0.4
walk = 10+random(10)
if point_distance(x,y,target.x,target.y) > 64
{
walk = 40
direction = point_direction(target.x,target.y,x,y)+random(90)-45
}

if target.x < x
right = -1
else if target.x > x
right = 1
}
else if random(5) < 1
{
motion_add(random(360),0.4)
walk = 10+random(10)
alarm[1] = walk+10+random(30)
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}

}

