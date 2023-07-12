/// @description Cursed Crystal
with instance_create_depth(x,y,depth,CursedCrystal)
{
	team = other.team;
}
snd_play(sndCursedChest);
repeat(10)
	instance_create(x+random(16)-8,y+random(16)-8,Curse)
alarm[3] = 55;