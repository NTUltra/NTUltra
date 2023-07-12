/// @description Cursed Spider
with instance_create_depth(x,y,depth,CursedSpider)
{
	team = other.team;
}
snd_play(sndCursedReminder);
repeat(5)
	instance_create(x+random(16)-8,y+random(16)-8,Curse)
alarm[2] = 30;