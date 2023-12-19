/// @description laserattack
mask_index=mskChesireCat;
if ammo > 0
{
ammo -= 1
alarm[3] = 10
snd_play(sndLaserUpg,0.01,true)
//sprite_index = spr_fire
//repeat(4){
with instance_create(x,y,EnemyLaser)
{image_angle = other.gunangle+random(4)-2;
image_yscale = 1.7;//1.25
team = other.team
event_perform(ev_alarm,0)}//}
}
else
{
drama=true;
sprite_index = spr_idle
}
scrTarget()
if target>0
{
gunangle = point_direction(x,y,target.x,target.y);
}
alarm[1] += 5;