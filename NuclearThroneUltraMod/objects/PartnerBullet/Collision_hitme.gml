if other.team != team and other.my_health > 0
{instance_destroy()
with other
{
	if instance_exists(Player){
	if Player.ultra_got[28]//roids ultra d
	{other.dmg += 2}
	}
	DealDamage(other.dmg)
	sprite_index = spr_hurt
	image_index = 0
	motion_add(other.direction,6)
	snd_play(snd_hurt, hurt_pitch_variation,true)
}
scrRecycleGland(1);
instance_create(x,y,BulletHit)



}



