raddrop = 2
maxhealth = 4
meleedamage = 0
size = 1

event_inherited()
if UberCont.opt_gamemode == 34//HARD MODE
{
	if (!(instance_exists(Player) && Player.area == 1 && Player.loops < 1) || random(3) < 1)
	{
		instance_destroy(id,false);
		instance_create(x,y,UltraBandit);
	}
}
if UberCont.encrypted_data.secrets[1] == true
{
	spr_idle = sprPinkBanditIdle
	spr_walk = sprPinkBanditWalk
	spr_hurt = sprPinkBanditHurt
	spr_dead = sprPinkBanditDead
}
else
{
	spr_idle = sprBanditIdle
	spr_walk = sprBanditWalk
	spr_hurt = sprBanditHurt
	spr_dead = sprBanditDead
}

snd_hurt = sndBanditHit
snd_dead = sndBanditDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0

