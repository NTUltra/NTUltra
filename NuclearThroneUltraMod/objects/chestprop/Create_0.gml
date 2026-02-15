friction = 0.4
depth = 1;
image_speed = 0
motion_add(random(360),2);
mySize = 1;
spr_hurt = false;
meleedamage = 0;
team = 0;
shadowSprite = shd24;
my_health = 1;
maxhealth = 1;
alarm[0] = 10;
alarm[7] = irandom_range(40,160);
if scrIsGamemode(48)
{
	instance_destroy(id,false);	
}