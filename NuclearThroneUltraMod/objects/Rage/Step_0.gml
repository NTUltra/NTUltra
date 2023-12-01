if instance_exists(Player)
{
x=Player.x;
y=Player.y-20;
	if Player.rage >= 500
	{
		image_speed = 0.5;
		sprite_index = sprRageMax;
		bloomSpr = sprRageMaxBloom;
	}
	else
	{
		image_speed = 0.4;
		sprite_index = sprRage;
		bloomSpr = sprRageBloom;
	}
}
else{instance_destroy();}

