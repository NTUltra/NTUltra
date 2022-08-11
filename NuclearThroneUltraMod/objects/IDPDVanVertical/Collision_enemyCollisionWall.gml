/// @description overwrite enemy overlap code
if meleedamage > 0 && other.sprite_index!=other.spr_hurt
{

with other
{

my_health -= other.meleedamage;
sprite_index = spr_hurt
image_index = 0
snd_play(snd_hurt, hurt_pitch_variation,true)

}

}
else
{
	var ang = 180;
	if right
		ang = 0;
	with other
	{
		motion_add(0.8,other.image_angle+ang);
		if speed > maxSpeed
			speed = maxSpeed;
	}
}