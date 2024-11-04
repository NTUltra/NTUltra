/// @description fire laser
if ammo > 0
{
spr_index=spr_fire;
ammo -= 1
alarm[1] = fireRate
snd_play(sndLaser)
//sprite_index = spr_fire
var hit = collision_line_point(x,y,x + lengthdir_x(64,gunangle + 180),y + lengthdir_y(64,gunangle + 180),WallHitMe,false,false)
with instance_create(hit[1],hit[2],EnemyLaser)
{image_angle = other.gunangle;//other.gunangle+random(6)-3
team = 1;
event_perform(ev_alarm,0)}
}
else
{
sprite_index=spr_idle;
alarm[1]=laserDelay;
ammo=maxAmmo;

	if random(7) < 1
		scrDrop(20,0, true);

//sprite_index = spr_idle
}

