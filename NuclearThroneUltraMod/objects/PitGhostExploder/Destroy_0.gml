scrDrop(15,10)
morphMe = 6;
event_inherited()
snd_play(sndGhostFlyDieQuick,0.1);
with instance_create(x,y,GhostCorpse)
{
	mySize = other.mySize;
	sprite_index = sprPitGhostExploderDeadLoop1;
	my_health = other.my_health;
	spr_dead = sprPitGhostExploderDead1;
	corpseBoost = other.corpseBoost;
	right = 1;
	holdSpeed = other.speed * 0.5;
	explosionSize = 2;
	direction = 45;
	holdDirection = direction;
	speed = 4;
	maxSpeed = 4;
	image_angle = direction;
	rotation = 0;
	turnDir = 0;
	alarm[0] -= 15;
	alarm[1] -= 15;
}
with instance_create(x,y,GhostCorpse)
{
	mySize = other.mySize;
	sprite_index = sprPitGhostExploderDeadLoop2;
	my_health = other.my_health;
	spr_dead = sprPitGhostExploderDead2;
	corpseBoost = other.corpseBoost;
	right = 1
	holdSpeed = other.speed * 0.5;
	explosionSize = 2;
	direction = 225;
	holdDirection = direction;
	speed = 4;
	maxSpeed = 4;
	image_angle = direction;
	rotation = 0;
	turnDir = 0;
	alarm[0] -= 15;
	alarm[1] -= 15;
}
with instance_create(x,y,GhostCorpse)
{
	mySize = other.mySize;
	sprite_index = sprPitGhostExploderDeadLoop3;
	my_health = other.my_health;
	spr_dead = sprPitGhostExploderDead3;
	corpseBoost = other.corpseBoost;
	right = 1
	holdSpeed = other.speed * 0.5;
	explosionSize = 1;
	direction = 135;
	holdDirection = direction;
	speed = 4
	maxSpeed = 4;
	image_angle = direction;
	rotation = 0;
	turnDir = 0;
	alarm[0] -= 15;
	alarm[1] -= 15;
}
with instance_create(x,y,GhostCorpse)
{
	mySize = other.mySize;
	sprite_index = sprPitGhostExploderDeadLoop4;
	my_health = other.my_health;
	spr_dead = sprPitGhostExploderDead4;
	corpseBoost = other.corpseBoost;
	right = 1
	holdSpeed = other.speed * 0.5;
	explosionSize = 1;
	direction = 315;
	holdDirection = direction;
	speed = 4;
	maxSpeed = 4;
	image_angle = direction;
	rotation = 0;
	turnDir = 0;
	alarm[0] -= 15;
	alarm[1] -= 15;
}
repeat(3)
{
	with instance_create(x,y,GhostEffect)
	{
		motion_add(random(360),1 + random(2));
	}
}