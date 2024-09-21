if other.team != team
{
instance_destroy();
with other
{
if sprite_index != spr_hurt
{
	snd_play(snd_hurt, hurt_pitch_variation)
	DealDamage(other.dmg)//6
	sprite_index = spr_hurt
	image_index = 0
	motion_add(other.direction,4)
	BackCont.shake += 3
	if object_index == Player
		hitBy = other.sprite_index;
}
}
Sleep(10)}

