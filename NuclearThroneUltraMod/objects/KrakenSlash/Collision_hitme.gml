if other.team != team
{
//if hit=false{
if other.sprite_index!=other.spr_hurt
{

snd_play(sndRoll);
snd_play(sndBloodLauncher);

snd_play(choose(sndWater1,sndWater2) );


with instance_create(x,y,Tentacle)
{image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(30)-15)
creator=other.id;
team = other.team
ammo = 11
event_perform(ev_alarm,0)
visible = 0
with instance_create(x,y,LightningSpawn)
{
sprite_index=sprTentacleSpawn
image_angle = other.image_angle
}

repeat(4){
    with instance_create(x,y,FishBoost)
    {
    motion_add( point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(60)-30,2+random(4) );
    }}

}

}


with other
{
//repeat(other.dmg){

my_health-=other.dmg;


if sprite_index != spr_hurt
{

snd_play(snd_hurt, hurt_pitch_variation)
//sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,8)
Sleep(other.sleepRate+size*10)
BackCont.shake += 5
}
}//}
//hit=true;
}

