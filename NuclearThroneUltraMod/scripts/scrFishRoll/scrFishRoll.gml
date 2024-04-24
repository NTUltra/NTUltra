///scrFishRoll();
// /@description
///@param
function scrFishRoll(){
	if speed < 0.4
		direction = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)
	speed = 4;
	if skill_got[2] == 1
	{
		speed = 8;
	}
	roll = 1
	rollIframe = 5;
	alarm[3] += rollIframe;
	mask_index = mskPickupThroughWall;
	if skill_got[5]
	{
		snd_play_2d(sndFishRollUpg);
		if !audio_is_playing(sndFishRollUpgLoop)
			snd_loop(sndFishRollUpgLoop);
	}
	else
	{
		snd_play_2d(sndRoll)
	}
	instance_create(x,y,Dust)
}