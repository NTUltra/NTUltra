/// @description Explode into debris
instance_create(x,y,Dust)
if !hasSplit
{
	snd_play(sndDebrisHitUpg);
	var am = debrisAmount;
	repeat(am)
	{
		with instance_create(x,y,Dust)
		{
			motion_add(other.direction,other.speed * 0.5 + 1);
			motion_add(random(360),0.5 + random(2))
		}
		with instance_create(x,y,SlingShotRock)
		{
			hasSplit = true;
			direction = other.direction;
			speed = other.speed + random(2);
			motion_add(random(360),1 + random(3));
			image_angle = direction
			team = other.team
			scrCopyWeaponMod(other);
			sprite_index = sprSlingshotSmallRock;
			mask_index = sprSlingshotSmallRock;
			dmg = 5;
		}
	}
}