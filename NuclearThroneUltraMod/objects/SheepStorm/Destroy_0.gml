/// @description some fx reset speed
repeat(12)
{
	with instance_create(x+random(16)-8,y+random(30)-15,Dust)
		motion_add(random(360),random(3));

}
if maxReach > 1
{
	var ii = imageIndex;
	with instance_create(x,y,SheepChargeProjectile)
	{
		bloomSprite = other.bloomSprite;
		image_xscale = other.maxScale + 0.4;
		image_yscale = image_xscale - 0.4;
		direction = other.image_angle;
		image_angle = direction;
		sheepPower = other.maxReach;
		dmg = clamp(round((sheepPower-1)*(other.dmg - 0.2)),1,3);
		speed = clamp(dmg*2.5,3,14);
		sprite_index = other.sprite_index;
		mask_index = other.mask_index;
		alarm[0] = max(10,6+ceil(dmg*2));
		maxAlarm = max(1,alarm[0]);
		imageIndex = ii;
	}
}