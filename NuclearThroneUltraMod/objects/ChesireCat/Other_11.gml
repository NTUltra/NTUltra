/// @description SpinAttack
ammo=4;
alarm[4] = 16
snd_play(sndBigBanditMeleeHit)
if target != noone && instance_exists(target)
	gunangle = point_direction(x,y,target.x,target.y)
sprite_index = spr_fire
alarm[1] = 55+random(15)
    
if random(5)<1
{
	scrAddDrops(1);
	scrDrop(90,0);
}