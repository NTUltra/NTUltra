raddrop = 30
maxhealth = 250;
scrBossHealthBuff();
meleedamage = 0;
mySize = 5

event_inherited()

spr_idle = sprBigMachineIntro
spr_walk = sprBigMachineIdle
spr_hurt = sprBigMachineHurt
spr_dead = sprBigMachineDead

snd_hurt = sndNothingHurtHigh
snd_dead = sndNothingTaunt

//behavior
gunangle = random(360)

alarm[1] = 0;
if instance_exists(GenCont)
	alarm[7] = GenCont.alarm[0] + 60;
else
	alarm[7] = 60;
wkick = 0
image_speed=0;

instance_create(x+64,y+32,BigMachineTurret);

with instance_create(x-64,y+32,BigMachineTurret)
{
	alarm[1] += 5;	
}



if UberCont.opt_gamemode = 6 && instance_exists(Player)
{
Player.x=x;
Player.y=y+132;
}


if instance_exists(Player)
{
if Player.loops>0
{//LOOP
with instance_create(x-32,y+32,BigMachineTurret)
{
	alarm[1] += 10;	
}
with instance_create(x+32,y+32,BigMachineTurret)
{
	alarm[1] += 15;	
}

}
}

if instance_exists(Player)
{
if Player.loops>3
{//LOOP
	with instance_create(x-16,y-16,BigMachineTurret)
	{
		alarm[1] += 20;	
	}
	with instance_create(x+16,y-16,BigMachineTurret)
	{
		alarm[1] += 25;	
	}
}
}


//instance_create(x,y,BigMachineMask);

friction=4;

ammo=0;

scrAddDrops(2);