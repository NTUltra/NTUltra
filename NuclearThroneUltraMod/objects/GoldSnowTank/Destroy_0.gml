MorphMe=true;
event_inherited()
scrDrop(20,10)

/*
BackCont.shake += 5

snd_play(sndExplosionL)
repeat(3)
{
instance_create(x+random(8)-4,y+random(8)-4,Explosion)
}*/


if !place_meeting(x,y,Morph)
{
	with instance_create(x,y,SnowTankExplo)
	{
	spr_dead = other.spr_dead;
	right=other.right;
	sprite_index= other.spr_hurt;
	my_health=other.my_health;
	}
}
