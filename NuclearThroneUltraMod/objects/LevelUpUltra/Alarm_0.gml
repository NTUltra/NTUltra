/// @description Ultra sound
with Player
{
	snd_play(sndLevelUltra,0,false,false,100,false,false,1)
	snd_play_2d(sndLevelUltra,0,false,false,100)
	
	with instance_create(x,y,PopupText)
	{
		mytext = "LEVEL ULTRA";
	}
	with instance_create(x,y,LevelUp)
		sprite_index = sprLevelUpUltra;
}
BackCont.shake += 10;
with instance_create(x,y,Flash)
{
	alarm[1] = 4;
	alarm[0] = 2;
}
with enemy
{
	DealDamage(5,false,true,false);
	if !audio_is_playing(snd_hurt)
		snd_play(snd_hurt,hurt_pitch_variation,true,true,1,false,false,0.7);
}