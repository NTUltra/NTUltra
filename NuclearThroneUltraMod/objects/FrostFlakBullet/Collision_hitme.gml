if other.team != team
{
instance_destroy()
snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
Sleep(50)
with other
{
	if instance_exists(Player){
if Player.ultra_got[28]//roids ultra d
{other.dmg += 2;}}
DealDamage(other.dmg);
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,6)
}
with instance_create(x,y,BulletHit)
	sprite_index = sprFreezeFlakHit;
scrRecycleGland(10);

}

