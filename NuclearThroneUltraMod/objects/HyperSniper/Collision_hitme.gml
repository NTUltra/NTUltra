if other.team != team
{
instance_destroy()
with other
{
	snd_play(snd_hurt, hurt_pitch_variation,true)

my_health -= other.dmg
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,8)
if speed > maxSpeed + 2
	speed = maxSpeed+2;
}


scrRecycleGland(3);


}

