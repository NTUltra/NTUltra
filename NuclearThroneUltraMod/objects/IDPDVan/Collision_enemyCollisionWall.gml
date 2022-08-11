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
var ang = 0;
if right
	ang = 180;
with other
{
	motion_add(other.image_angle+ang,0.8);
}