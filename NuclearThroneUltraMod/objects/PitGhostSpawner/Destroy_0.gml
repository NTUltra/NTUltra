scrDrop(20,20)
morphMe = 6;
event_inherited()
with instance_create(x,y,GhostCorpse)
{
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