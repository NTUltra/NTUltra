if other.team != team and other.my_health > 0
{instance_destroy()
with other
{
	my_health -= other.dmg
	if instance_exists(Player){
	if Player.ultra_got[28]//roids ultra d
	{my_health -=2;}
	if Player.ultra_got[40]//Ally bullet damage rebel ultra
	{
	my_health -= 2;	
	}}
	sprite_index = spr_hurt
	image_index = 0
	motion_add(other.direction,6)
	snd_play(snd_hurt, hurt_pitch_variation,true)
}
scrRecycleGland(1);
instance_create(x,y,BulletHit)



}



