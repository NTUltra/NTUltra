maxhealth = 60
meleedamage = 0
mySize = 2
if GetPlayerLoops() < 1
	maxhealth = 40
my_health = maxhealth;
EnemyHealthAdjustments()
prevhealth = my_health;
event_inherited()
team = 2;
spr_idle = sprGoldTotem
spr_walk = sprGoldTotem
spr_hurt = sprGoldTotemHurt
spr_dead = sprGoldTotemDead

snd_hurt = sndHitMetal
snd_dead = sndBreakIce

friction = 3;

//behavior
walk = 0
alarm[1] = 30+random(90)
if instance_exists(Player)
{
	var t = 0;
	if Player.skill_got[29]//insomnia
    {
		var t = 160;
		if Player.race = 25
	    {
			t = 190;
	    }
	}
	alarm[1] += t;
}
actTime = 90;
if scrIsHardMode()//HARD MODE
	alarm[2] = alarm[1];
alarm[0] = 2;


scrInitDrops(3);