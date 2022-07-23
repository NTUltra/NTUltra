/// @description muchas suckas
alarm[1] = 6;

with owner
{
	snd_play(snd_hurt, hurt_pitch_variation,true)
	my_health -= other.dmg;
	sprite_index = spr_hurt;
	image_index = 0
}
with instance_create(x,y,BloodStreak)
	image_angle = random(360);

snd_play(sndBloodlustProc,0.1);

if image_index >= image_number-1
{
	if instance_exists(Player)
	{
		if Player.canHeal
		{
			snd_play_2d(sndBloodlustProc);
			with instance_create(Player.x,Player.y-8,HealFX)
			{
				sprite_index=sprBloodlust;
			}
			snd_play(sndMeatExplo);
			var num = 1
			Player.my_health = max(Player.my_health,min(Player.my_health + num,Player.maxhealth));
			if UberCont.opt_ammoicon
			{
				dir = instance_create(x,y,PopupText)
				dir.mytext = "+"+string(num)
				if Player.my_health = Player.maxhealth
				dir.mytext = "MAX"
				else if Player.my_health > Player.maxhealth
				dir.mytext = "OVER MAX"
				sprt = sprHPIconPickup;
			}
			else
			{
				dir = instance_create(x,y,PopupText)
				dir.mytext = "+"+string(num)+" HP"
				if Player.my_health = Player.maxhealth
				dir.mytext = "MAX HP"
				else if Player.my_health > Player.maxhealth
				dir.mytext = "OVER MAX HP"
			}
		}
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