alarm[0]=time;

snd_play(sndMachinegun,0.1,true)

with instance_create(x,y,DisperseBullet)
{motion_add(other.image_angle+90+(random(6)-3),12)
image_angle = direction
team = other.team

}


with instance_create(x,y,DisperseBullet)
{motion_add(other.image_angle-90+(random(6)-3),12)
image_angle = direction
team = other.team

}

BackCont.shake += 1

