raddrop = 12
maxhealth = 65
meleedamage = 4
mySize = 2

event_inherited()
hurt_pitch_variation = 0.03;
spr_idle = sprJungleGorilla
spr_walk = sprJungleGorillaWalk
spr_hurt = sprJungleGorillaHurt
spr_dead = sprJungleGorillaDead

snd_hurt = sndGorillaHurt
snd_dead = sndGorillaDead
snd_melee = sndGorillaMelee;

spr_gun = sprJungleGorillaGun;
//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
actTime = 15;

acc = 1;
maxSpeed = 3.4;
gunX = -10;
projectileSpeed = 6.8;
projectileSpeedDif = 0.2;
loops = GetPlayerLoops()
if loops > 0
{
	projectileSpeed += 0.15;
	actTime -= 2;
}
fireDelay = 3;
deathProjectile = 9;