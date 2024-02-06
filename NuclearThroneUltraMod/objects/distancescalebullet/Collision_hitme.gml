/// @description 2 ammo recycle gland
if other.team != team and other.my_health > 0
{instance_destroy()
with other
{
if instance_exists(Player){
		if Player.ultra_got[28]//roids ultra d
		{other.dmg += 2;}}
		DealDamage(other.dmg);

sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,7)
}
snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
instance_create(x,y,BulletHit)

scrRecycleGland(2);

}