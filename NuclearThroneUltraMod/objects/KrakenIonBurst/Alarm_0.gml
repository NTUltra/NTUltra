ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING

snd_play(choose(sndWater1,sndWater2,sndBloodLauncher) ,0.1,true);


with instance_create(UberCont.mouse__x,UberCont.mouse__y,Tentacle)
{image_angle = random(360);
ion=true;
creator=other.id;
team = other.team
ammo = 8
scrCopyWeaponMod(other);
event_perform(ev_alarm,0)
visible = 0
with instance_create(x,y,LightningSpawn)
{
sprite_index=sprTentacleSpawn
image_angle = other.image_angle
}
//repeat(6){
    with instance_create(x,y,FishBoost)
    {
    motion_add( random(360),2+random(4) );
    }//}

}



BackCont.shake += 4
creator.wkick = 6}


if ammo <= 0
{
	endx = UberCont.mouse__x;
	endy = UberCont.mouse__y;
	alarm[2] = 5;
	alarm[0] = 0;
}

