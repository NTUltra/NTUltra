if other.team != team and other.my_health > 0
{
with other
{
	snd_play(snd_hurt, hurt_pitch_variation,true)
	if UberCont.normalGameSpeed == 60
		DealDamage(other.dmg * 0.5,true,true,true)
	else
		DealDamage(other.dmg,true,true,true)
	sprite_index = spr_hurt
	image_index = 0
	motion_add(other.image_angle,4)
}
/*
if flame && alarm[1] < 1
{
	alarm[1] = 6;
	instance_create(x,y,Flame);
}*/
instance_create(x,y,Smoke)}
