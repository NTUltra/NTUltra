if !instance_exists(WepPickup) || instance_number(WepPickup) < 2
{
	scrDrop(0,100,false,1)
}
else if instance_number(WepPickup) == 2
	scrDrop(0,45,false,1)
else if instance_number(WepPickup) == 3
	scrDrop(0,100,false,2)
else
	scrDrop(20,30,false,1)
morphMe = 6;
event_inherited()
with instance_create(x,y,GhostCorpse)
{
	snd_play(sndGhostFlyDie,0.1,false,true,3,false,false,0.65,false,id);
	explosionSize = 2;
	mySize = other.mySize;
	sprite_index = other.spr_hurt;
	my_health = other.my_health;
	spr_dead = other.spr_dead;
	corpseBoost = other.corpseBoost;
	right = other.right;
	holdSpeed = other.speed;
	holdDirection = other.direction;
	speed = other.speed;
	direction = other.direction;
	image_angle = direction;
}
repeat(3)
{
	with instance_create(x,y,GhostEffect)
	{
		motion_add(random(360),1 + random(2));
	}
}