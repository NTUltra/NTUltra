/// @description Sparks
if alarm[0]>20
{

with instance_create(x+random(8)-4,y+random(8)-4,Smoke)
motion_add(random(360),random(3));


    if random(8)<1
    {
    choose(snd_play(sndSpark1),snd_play(sndSpark2));
    BackCont.shake += 4
    with instance_create(x,y,Lightning)
    {image_angle = random(360);
    team = 2;
    ammo = 8+random(8);
    event_perform(ev_alarm,0)
    with instance_create(x,y,LightningSpawn)
    image_angle = other.image_angle}
    
    }

}
alarm[7] = 1;