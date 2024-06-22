/// @description Deal damage
var theDamage = dmg;
with owner
{
	snd_play(sndVenom,0.1);
	BackCont.shake += 1;
	DealDamage(theDamage);
	with instance_create(x,y,AcidStreak)
	{
		motion_add(random(360),4 + (theDamage*2));
		image_angle = direction;
	}
	if sprite_index != spr_hurt
	{
		snd_play(snd_hurt, hurt_pitch_variation,true);
	}
	sprite_index = spr_hurt;
	image_index = 0;
	speed = 0;
	walk = 0;
}
amount -= 1;
if amount > 0 && instance_exists(owner)
{
	alarm[0] = rate;	
}
else
{
	instance_destroy();	
}