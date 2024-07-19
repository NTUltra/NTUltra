/// @description WallHit
if speed > 6 {
	snd_play(sndShotgunHitWall,0.05,true,true,1,false,true,0.75);
}
var maxSpeed = speed;
speed *= 0.8
speed += wallbounce
wallbounce *= 0.9
instance_create(x,y,Dust);
var len = 2;
if shotgunshouldered && speed > 2
{
	len += 2;
	// scrShotgunShoulderBounce();
	dmg = 15;
	alarm[1] += 3;
	if sprite_index == sprLightningFlugBullet
		sprite_index = sprLightningFlugBulletHighDamage;
}
if speed > 3
{
	snd_play(choose(sndSpark1,sndSpark2),0.1,true)
	with instance_create(x,y,Lightning)
	{
		image_angle = other.direction;
		accuracy=0;
		team = other.team
		ammo = len;
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle
	}
}