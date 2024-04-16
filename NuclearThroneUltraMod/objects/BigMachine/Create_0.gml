raddrop = 28
maxhealth = 500;
scrBossHealthBuff();
meleedamage = 20;
mySize = 5

event_inherited()

spr_idle = sprBigMachineIntro
spr_walk = sprBigMachineIdle
spr_hurt = sprBigMachineHurt
spr_dead = sprBigMachineDead

spr_intro = spr_idle;
spr_become_close = sprBigMachineClose;
spr_closed = sprBigMachineIdle;
spr_hurt_normal = spr_hurt;
spr_hurt_closed = sprBigMachineClosedHurt
spr_become_exposed = sprBigMachineBecomeExposed;
spr_expose = sprBigMachineExposed;

snd_hurt = sndNothingHurtHigh
snd_dead = sndBigMachineDead

//behavior
gunangle = 0;

alarm[1] = 900;
if instance_exists(GenCont)
	alarm[7] = GenCont.alarm[0] + 30;
else
	alarm[7] = 30;
wkick = 0
image_speed=0;




loops = GetPlayerLoops();

event_user(1);
friction=4;

ammo=0;

scrAddDrops(2);
sndtaunt = 0;
tauntdelay = 0;
fireRate = 5;
myCore = instance_create(x,y,BigMachineCore);
with myCore {
	myBody = other.id;	
}

exposeTime = 100;
maxAmmo = 4 + clamp(loops,0,4);
fireRate -= clamp(loops,0,3);
if loops > 0
	exposeTime = 70;