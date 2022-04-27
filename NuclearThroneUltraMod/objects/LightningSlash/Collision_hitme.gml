if other.team != team
{
//if hit=false{
if other.sprite_index!=other.spr_hurt
{

if instance_exists(Player){
if Player.skill_got[17] = 1
snd_play(sndLightning3)
else
snd_play(sndLightning1)
}
else
snd_play(sndLightning1)

with instance_create(other.x,other.y,Lightning)
{image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(30)-15)
team = other.team
ammo = 10
event_perform(ev_alarm,0)
visible = 0
with instance_create(x,y,LightningSpawn)
image_angle = other.image_angle}

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

