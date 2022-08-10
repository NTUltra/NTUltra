if instance_exists(Player)
{
x=Player.x;
y=Player.y-20;
	if Player.rage >= 500
	{
		image_speed = 0.5;
		sprite_index = sprMaxRage;
	}
	else
	{
		image_speed = 0.4;
		sprite_index = sprRage;
	}
}
else{instance_destroy();}

