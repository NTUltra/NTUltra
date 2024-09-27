/// @description Slower on wall hit
//if speed > 6 and !sound_isplaying(sndShotgunHitWall)
//snd_play(sndShotgunHitWall)

if speed > 6 {
	snd_play(sndEnergyPelletBounce,0.1,true,true,1,false,true,0.75);
}
if shotgunshouldered && speed > 2
{
	direction = scrAimAssistLaser(direction,0.75,16, true);
	if sprite_index == sprBullet2Energy
	{
		sprite_index = sprBullet2EnergyHighDmg;
		dmg = originalDmg;
		//alarm[1] = max(alarm[1],3);
		alarm[1] += 3;
	}
	else if sprite_index == sprBullet2EnergyDisappear
	{
		sprite_index = sprBullet2Energy;
	}
	// scrShotgunShoulderBounce();
}
move_bounce_solid(false)
	if speed + wallbounce > 16
		speed = 16
	else
		speed += wallbounce*0.75
wallbounce *= 0.9
if speed > 24
	speed = 24;
instance_create(x,y,Smoke)