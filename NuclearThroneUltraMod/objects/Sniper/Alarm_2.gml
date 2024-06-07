snd_play(sndSniperFire)
with Sniper
{
	if alarm[1] < 30
		alarm[1] += 2;	
}
wkick = 7
var angStep = 4;
if loops < 1
angStep = 2;
with instance_create(x,y,proj)
{motion_add(other.gunangle+angStep,16)
team = other.team
image_angle = direction
firedbysniper=true;}
with instance_create(x,y,proj)
{motion_add(other.gunangle-angStep,16)
team = other.team
image_angle = direction
firedbysniper=true;}
with instance_create(x,y,proj)
{motion_add(other.gunangle,16)
team = other.team
image_angle = direction
firedbysniper=true;}
if target != noone && instance_exists(target)
	gunangle = point_direction(x,y,target.x,target.y)
if loops > 0
alarm[1] = 30+random(5)
else
alarm[1] = 40+random(5)
gonnafire = 0

