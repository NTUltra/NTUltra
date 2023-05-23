if replace{exit;}

MorphMe=true;
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
	spr_dead = sprInvertedSnowTankDead;
	right=other.right;
	sprite_index=sprInvertedSnowTankHurt;//inverted
	my_health=other.my_health;
	alarm[0] = 8;
}