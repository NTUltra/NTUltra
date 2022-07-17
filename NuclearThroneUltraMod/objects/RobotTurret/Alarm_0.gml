if !instance_exists(Player)
{instance_destroy();
exit;}
alarm[0]=reload

scrFire();

wepammo-=wepcost;

if wepammo <= 0
	instance_destroy()
