///scrMoodSwingStun();
// /@description
///@param
function scrMoodSwingStun(duration){
	speed = 0;
	if Player.race == 25
		duration += 1;
	if alarm[1] > 0 && alarm[1] < 30
	{
		alarm[11] += duration
		alarm[1] += duration;
		if mySize < 8
			walk = 0;
	}
	if instance_exists(myConfusion)
	{
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
}