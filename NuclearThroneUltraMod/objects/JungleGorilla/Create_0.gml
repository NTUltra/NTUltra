raddrop = 12
maxhealth = 55
loops = GetPlayerLoops()
if loops > 0
	maxhealth += 5;
mySize = 2

event_inherited()
meleedamage = 4

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
actTime = 18;

acc = 1;
maxSpeed = 3.4;
gunX = -10;
projectileSpeed = 5.1;
projectileSpeedDif = 0.2;
deathProjectile = 4;
if loops > 0
{
	projectileSpeed += 0.5;
	actTime -= 5;
	deathProjectile = 8;
}
fireDelay = 3;
if (instance_exists(Player) && !Player.justAsheep) sleeping = false;;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;
wasBehindWall = false;