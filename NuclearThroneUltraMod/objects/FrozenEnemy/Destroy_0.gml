//shatter anim?
with owner
{
	if my_health > 0
	{
		DealDamage(max(other.debrisAmount,1,3),false,true,false);
		sprite_index = spr_hurt;
		image_index = 0;
		snd_play(snd_hurt,hurt_pitch_variation);
	}
}

if alarm[0] < 1
{
	if !audio_is_playing(sndBreakIce)
		snd_play(sndBreakIce,0.01);

	repeat(debrisAmount){
		with instance_create(x,y,Debris)
		{
			area=5;
			sprite_index=sprDebris5;
		}
	}
}
if (instance_exists(Player) && Player.skill_got[43])
{
	//var am = round(debrisAmount * 2);
	//if alarm[0] > 0 || (instance_exists(owner) && owner != noone && owner.team == 0)
	//	am = debrisAmount;
	scrMoodSwingIcicle(debrisAmount - 1, owner);
}