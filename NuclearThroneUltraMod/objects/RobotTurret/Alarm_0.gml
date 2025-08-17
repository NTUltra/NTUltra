if !instance_exists(Player)
{instance_destroy();
exit;}
alarm[0]=reload

scrFire();
alarm[2] = 5;
wepammo-=wepcost;

if wepammo <= 0
	instance_destroy()
