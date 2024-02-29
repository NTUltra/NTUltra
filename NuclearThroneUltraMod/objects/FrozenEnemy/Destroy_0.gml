//shatter anim?
if !audio_is_playing(sndBreakIce)
snd_play(sndBreakIce);
with owner
{
	DealDamage(max(other.debrisAmount + 1,3),false,true,false);
	sprite_index = spr_hurt;
	image_index = 0;
	snd_play(snd_hurt,hurt_pitch_variation);
}
repeat(debrisAmount){
	with instance_create(x,y,Debris)
	{
		area=5;
		sprite_index=sprDebris5;
	}
}

if (instance_exists(Player) && Player.skill_got[43])
{
	var am = debrisAmount * 3;
	var angStep = 360/am;
	var ang = random(360);
	repeat(am)
	{
		with instance_create(x,y,FrostIcicle)
		{
			ignoreMe = other.owner;
			motion_add(ang,24)
			image_angle = direction
			team = other.team
			debrisAmount = round(other.debrisAmount * 0.5);
		}
		ang += angStep;
	}
}