alarm[1] = 17+random(5)
if loops > 0
	alarm[1] -= 2;
Shielding=false;

if team=2
scrRogueTarget()
else
scrTarget();

if target != noone
{

if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
//SEE TARGET
gunangle = point_direction(x,y,target.x,target.y)
if target.x < x
right = -1
else if target.x > x
right = 1
//SEE PLAYER AND FAR ENOUGH AND NOT SHOUTING "FREEZE MOTHERFUCKER"
if random(2) < 1 and freeze > 40
{
//FIRE
alarm[2] = 4
ammo = 8

alarm[1] = 32
}
else if random(3) < 1
{
//SHIELD
myShield = instance_create(x,y,PopoShield)
myShield.team=team;
Shielding=true;

if male
snd_play(sndShielderShieldM)
else
snd_play(sndShielderShieldF)

xx=x;
yy=y;
alarm[1] = 85
speed = 0
walk = 0
}
else
{//JUST WALK YOU KNOW
if point_distance(x,y,target.x,target.y) > 64
direction = point_direction(x,y,target.x,target.y)+random(50)-25
else
direction = point_direction(x,y,target.x,target.y)+180+random(90)-45
speed = 0.4
walk = 10+random(10)
if freeze < 40
alarm[1] += random(30)
}


}
else if random(3) < 1
{
//WALK
motion_add(random(360),0.4)
walk = 20+random(10)
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}
else if freeze > 40 and random(4) < 1 and point_distance(x,y,target.x,target.y) < 96
{
//SHIELD
myShield = instance_create(x,y,PopoShield)
myShield.team=team;
Shielding=true;

if male
snd_play(sndShielderShieldM)
else
snd_play(sndShielderShieldF)

xx=x;
yy=y;

if male
snd_play(sndShielderShieldM)
else
snd_play(sndShielderShieldF)

alarm[1] = 75
speed = 0
walk = 0
}
}
else if random(10) < 1 and roll = 0
{
//NO TARGET
motion_add(random(360),0.4)
walk = 20+random(10)
alarm[1] = walk+10+random(30)
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}

