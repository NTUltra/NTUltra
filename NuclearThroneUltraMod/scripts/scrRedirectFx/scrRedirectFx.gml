///scrRedirectFx();
// /@description
///@param
function scrRedirectFx(){
	BackCont.shake += 1;
	instance_create(x,y,Smoke);
	snd_play(sndDirector,0.1,true);
	//audio_stop_sound(sndDirector)
	//audio_sound_pitch(sndDirector,random_range(0.9,1.1))
	//audio_play_sound(sndDirector,100,0)
	if !instance_exists(RedirectFX)
	{
		with instance_create(x,y,RedirectFX)
		{
			image_angle = other.direction;
		}
	}
}