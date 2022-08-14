alarm[0]=time;
var t = 0;
if add
	t = 1;
add = !add;
snd_play(sndMachinegun,0.1,true)

with instance_create(x,y,DisperseBullet)
{motion_add(other.image_angle+90+(random(6)-3),16)
image_angle = direction
team = other.team
time += t;
if random(6.2)<1 
	norecycle=true;
}


with instance_create(x,y,DisperseBullet)
{motion_add(other.image_angle-90+(random(6)-3),16)
image_angle = direction
team = other.team
if random(6.2)<1 
	norecycle=true;
time += t;
}
speed += 0.1;
if speed > 20
	speed = 20;
BackCont.shake += 1

