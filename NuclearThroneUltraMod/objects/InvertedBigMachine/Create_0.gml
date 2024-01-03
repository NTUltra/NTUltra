raddrop = 50
maxhealth = 460
meleedamage = 0;
mySize = 5
scrBossHealthBuff();

event_inherited()

with myCore {
	spr_hurt = sprInvertedBigMachineCoreHurt;	
}
spr_idle = sprInvertedBigMachineIntro
spr_walk = sprInvertedBigMachineIdle
spr_hurt = sprInvertedBigMachineHurt
spr_dead = sprInvertedBigMachineDead

spr_intro = spr_idle;
spr_become_close = sprInvertedBigMachineClose;
spr_closed = sprInvertedBigMachineIdle;
spr_hurt_normal = spr_hurt;
spr_hurt_closed = sprInvertedBigMachineClosedHurt
spr_become_exposed = sprInvertedBigMachineBecomeExposed;
spr_expose = sprInvertedBigMachineExposed;

fireRate -= 1;
exposeTime -= 20;
maxAmmo += 2;