if other.team != team and other.my_health > 0
{if other.object_index = Player
{
if other.sprite_index != other.spr_hurt
{
with other
{
sprite_index = spr_hurt
image_index = 0
my_health -= other.dmg
snd_play(snd_hurt, hurt_pitch_variation)
motion_add(point_direction(other.x,other.y,x,y),4)
Sleep(40)
}
}
}
else
{

	with other
	{
	snd_play(snd_hurt, hurt_pitch_variation)
	my_health -= other.dmg
	sprite_index = spr_hurt
	image_index = 0
	motion_add(other.direction,4)
	}
	if team == 2
		scrRecycleGland(1);
}

instance_destroy()
with instance_create(x,y,EBulletHit)
{
	if other.team == 2
		sprite_index = sprIDPDBulletHitRogue;
	else
		sprite_index = sprIDPDBulletHit;
}


}

