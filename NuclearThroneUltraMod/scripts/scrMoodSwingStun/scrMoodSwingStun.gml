///scrMoodSwingStun();
// /@description
///@param
function scrMoodSwingStun(duration, damage = 1){
	if team == 2
		exit;
	if alarm[1] > 0 && alarm[1] < duration + 10 && alarm[11] < 20
	{
		speed = 0;
		if Player.race == 25
			duration += 1;
		if instance_exists(myConfusion)
		{
			duration = round(duration*0.5);
			with myConfusion
			{
				alarm[0] += duration;
				image_speed = 0.4;
				image_index = 0;
			}
		}
		else
		{
			myConfusion = instance_create(x,y-max(sprite_height*0.75,8),HumphryConfuse)
			with myConfusion {
				myEnemy = other.id;
				image_xscale = choose(1,-1);
				image_speed = 0.4;
				sprite_index = sprEnemyConfusion;
				alarm[0] = duration;
			}
		}
		if !audio_is_playing(sndTentacleStun)
			snd_play(sndTentacleStun);
		if damage > 0
			DealDamage(damage);
		alarm[11] += duration
		alarm[1] += duration;
		if mySize < 8
			walk = 0;
	}
}