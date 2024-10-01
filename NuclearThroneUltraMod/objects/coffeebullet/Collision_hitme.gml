/// @description recycle 3 make enemy faster acting
if other.team != team and other.my_health > 0
{instance_destroy()
with other
{
if alarm[1] > 10
	alarm[1] -= 10;
if alarm[1] > 5
	alarm[1] -= 5;
if alarm[1] > 2
	alarm[1] -= 2;
if alarm[1] > 1
{
	alarm[1] *= 0.5;	
}

	if instance_exists(Player){
	if Player.ultra_got[28]//roids ultra d
	{other.dmg += 2}}
	DealDamage(other.dmg);

sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,8)
snd_play(snd_hurt, hurt_pitch_variation,true)

}
with instance_create(x,y,BulletHit)
	sprite_index=sprHeavyBulletHit;

scrRecycleGland(2);

}



