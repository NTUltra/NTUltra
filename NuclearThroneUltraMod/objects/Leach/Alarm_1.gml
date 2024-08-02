/// @description muchas suckas
alarm[1] = 5;

with owner
{
	snd_play(snd_hurt, hurt_pitch_variation,true)
	DealDamage(other.dmg);
	sprite_index = spr_hurt;
	image_index = 0
}
with instance_create(x,y,BloodStreak)
	image_angle = random(360);

snd_play(sndBloodlustProc,0.1);

if image_index >= image_number-1 && random(100) < 30
{
	if instance_exists(Player)
	{
		snd_play_2d(sndBloodlustProc);
		with instance_create(Player.x,Player.y-8,HealFX)
		{
			sprite_index=sprBloodlust;
		}
		snd_play(sndMeatExplo);
		scrHeal(1);
	}
	var ang = random(360)

	with instance_create(x,y,BloodStreak)
	image_angle = ang

	with instance_create(x,y,BloodStreak)
	image_angle = ang+120

	with instance_create(x,y,BloodStreak)
	image_angle = ang+240
	instance_destroy();
}
else
	image_index ++;