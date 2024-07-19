/// @description WallHit
if speed > 6 {
	snd_play(sndShotgunHitWall,0.05,true,true,1,false,true,0.75);
}
var maxSpeed = speed;
speed *= 0.8
speed += wallbounce
wallbounce *= 0.9
instance_create(x,y,Dust);
if shotgunshouldered && speed > 2
{
	// scrShotgunShoulderBounce();
	dmg = 70;
	alarm[1] += 3;
	if sprite_index == sprHeavySlug
		sprite_index = sprHeavySlugHighDmg;
}

speed += 0.25;