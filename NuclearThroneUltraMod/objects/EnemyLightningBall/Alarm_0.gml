alarm[0]=3+irandom(4);
image_angle+=10;

BackCont.shake += 0.2
choose(snd_play(sndSpark1,0.1,true),snd_play(sndSpark2,0.1,true));


    with instance_create(x,y,Lightning)
{image_angle = other.image_angle+(random(30)-15)
team = other.team
ammo = 2+irandom(2);
event_perform(ev_alarm,0)
visible = 0
with instance_create(x,y,LightningSpawn)
image_angle = other.image_angle}


    with instance_create(x,y,Lightning)
{image_angle = other.image_angle+180+(random(30)-15)
team = other.team
ammo = 2+irandom(2);
event_perform(ev_alarm,0)
visible = 0
with instance_create(x,y,LightningSpawn)
image_angle = other.image_angle}

