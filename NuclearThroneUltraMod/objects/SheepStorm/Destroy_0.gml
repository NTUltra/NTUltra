/// @description some fx reset speed
if instance_exists(Player){



with Player
{

if skill_got[2]==1//extra feet
{
maxSpeed=4.5;
}
else
{
maxSpeed=4;
}

}


}


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
		image_xscale = other.maxScale + 0.2;
		image_yscale = image_xscale - 0.4;
		direction = other.image_angle;
		image_angle = direction;
		sheepPower = other.maxReach;
		dmg = round((sheepPower-1)*other.dmg);
		speed = clamp(dmg,2,6);
		sprite_index = other.sprite_index;
		mask_index = other.mask_index;
		alarm[0] = max(1,ceil(dmg));
		maxAlarm = max(1,alarm[0]);
		imageIndex = ii;
	}
}