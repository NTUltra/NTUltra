alarm[0]=time;

snd_play(sndMachinegun,0.1,true)

with instance_create(x,y,DisperseBullet)
{motion_add(other.image_angle+90+(random(6)-3),16)
image_angle = direction
team = other.team

}


with instance_create(x,y,DisperseBullet)
{motion_add(other.image_angle-90+(random(6)-3),16)
image_angle = direction
team = other.team

}
speed += 0.1;
if speed > 20
	speed = 20;
BackCont.shake += 1

