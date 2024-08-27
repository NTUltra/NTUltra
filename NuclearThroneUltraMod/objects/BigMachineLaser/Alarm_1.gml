/// @description fire laser
if ammo > 0
{
spr_index=spr_fire;
ammo -= 1
alarm[1] = fireRate
snd_play(sndLaser)
//sprite_index = spr_fire
with instance_create(x,y,EnemyLaser)
{image_angle = other.gunangle;//other.gunangle+random(6)-3
team = 1;
event_perform(ev_alarm,0)}
}
else
{
sprite_index=spr_idle;
alarm[1]=laserDelay;
maxAmmo=5;

if random(6)
{
	scrDrop(36,0);
	scrAddDrops(1);
}

//sprite_index = spr_idle
}

