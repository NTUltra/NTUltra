
meleedamage = 0
mySize = 1

event_inherited()
raddrop = 5
maxhealth = 4
//SNOWTHROWER YES!
spr_idle = sprInvertedScubaBanditIdle
spr_walk = sprInvertedScubaBanditWalk
spr_hurt = sprInvertedScubaBanditHurt
spr_dead = sprInvertedScubaBanditDead

//behavior
actTime = 7;
if GetPlayerLoops > 0
	actTime = 5;
maxSpeed = 4;
acc = 1.2;
maxAmmo = 8;
ammo = maxAmmo;
emitter = audio_emitter_create();
audio_emitter_gain(emitter, 0.8);
audio_emitter_falloff(emitter, 50, 400, 1);