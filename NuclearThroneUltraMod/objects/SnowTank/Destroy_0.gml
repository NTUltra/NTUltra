if replace{exit;}

morphMe=true;
event_inherited()
if !place_meeting(x,y,Morph)
with instance_create(x,y,SnowTankExplo)
{
	itemDropChance = other.itemDropChance;
	itemDropChanceIndex = other.itemDropChanceIndex;
	weaponDropChance = other.weaponDropChance;
	weaponDropChanceIndex = other.weaponDropChanceIndex;
	confDropChance = other.confDropChance;
	confDropChanceIndex = other.confDropChanceIndex;
	spr_dead = sprSnowTankDead;
	right=other.right;
	sprite_index=sprSnowTankHurt;
	my_health=other.my_health;
}
/*
//scrDrop(50,0)
//scrDrop(50,0)


BackCont.shake += 5

snd_play(sndExplosionL)
repeat(3)
{
instance_create(x+random(8)-4,y+random(8)-4,Explosion)
}

/* */
/*  */
