raddrop = 50
maxhealth = 200
meleedamage = 0;
mySize = 5
scrBossHealthBuff();

event_inherited()

spr_idle = sprInvertedBigMachineIntro
spr_walk = sprInvertedBigMachineIdle
spr_hurt = sprInvertedBigMachineHurt
spr_dead = sprInvertedBigMachineDead

snd_hurt = sndNothingHurtHigh
snd_dead = sndNothingTaunt

//behavior
gunangle = random(360)

wkick = 0
image_speed=0.4;

instance_create(x+64,y+32,InvertedBigMachineTurret);

with instance_create(x-64,y+32,InvertedBigMachineTurret)
{
	alarm[1] += 5;	
}
alarm[1] = 0;
if instance_exists(GenCont)
	alarm[7] = GenCont.alarm[0] + 60;
else
	alarm[7] = 60;

if scrIsGamemode(6) && instance_exists(Player)
{
Player.x=x;
Player.y=y+124;
}


if instance_exists(Player)
{
if Player.loops>0
{//LOOP
with instance_create(x-32,y+32,InvertedBigMachineTurret)
{
	alarm[1] += 10;
}

with instance_create(x+32,y+32,InvertedBigMachineTurret)
{
	alarm[1] += 15;
}


}
}

if instance_exists(Player)
{
if Player.loops>3
{//LOOP
with instance_create(x-16,y-16,InvertedBigMachineTurret)
{
	alarm[1] += 20;
}

with instance_create(x+16,y-16,InvertedBigMachineTurret)
{
	alarm[1] += 25;	
}

}
}


//instance_create(x,y,BigMachineMask);

friction=4;

ammo=0;

scrAddDrops(2);