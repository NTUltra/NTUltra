event_inherited();
raddrop = 18
maxhealth = 14
EnemyHealthAdjustments();
spr_idle = sprite_index
spr_hurt = sprUltraMeleeHurt
spr_dead = sprUltraMeleeDead
spr_walk = sprite_index
wakeTime = 5;
wakeRange = 120;
wakeObject = UltraMeleeBandit;
if random(4) < 1
{
	alarm[3] = 1;
	//Surprise second one
	with instance_create(x,y,UltraMeleeFake)
	{
		image_xscale = other.image_xscale;
		alarm[3] = 0;
	}
}