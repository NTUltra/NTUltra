maxhealth = 36//40
raddrop = 2
event_inherited();
meleedamage = 0
mySize = 2

event_inherited()

hidden = true;
spr_appear = sprTurretAppear;
spr_normal = sprTurretIdle;
spr_walk = sprTurretIdle;
spr_idle = spr_appear
spr_hurt = sprTurretHurt
spr_dead = sprTurretDead
sprite_index = spr_appear;
image_index = 0;
snd_hurt = sndTurretHurt
snd_dead = sndTurretDead
//behavior

gunangle = random(360)
alarm[1] = 90;
fireRate = 3;
maxAmmo = 8;
ammo = maxAmmo;
image_speed = 0;
trackingStrength = 0.4;
projectileSpeed = 7;
loops = GetPlayerLoops()
proj = EnemyBullet1
if loops > 0
{
	trackingStrength = 0.7;
	projectileSpeed = 9;
	if loops > 1
		trackingStrength = 0.75;
	if loops > 6
	{
		proj = EnemyBullet5;
	}
}

