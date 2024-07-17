raddrop = 10
maxhealth = 350
meleedamage = 0
mySize = 2

event_inherited()
team = 6;
spr_idle = sprMutant1Idle
spr_walk = sprMutant1Walk
spr_hurt = sprMutant1Hurt
spr_dead = sprMutant1Dead

snd_hurt = sndHitPlant
snd_dead = sndFrogExplode

//behavior
walk = 0
gunangle = random(360)
wkick = 0
actTime = 7;

acc = 0.8;
maxSpeed = 4;
wep = 0;
bwep = 0;
cwep = 0;
weaponType = 0;
maxAmmo = 6;
ammo = 6;
fireRate = 2;
wakeupTime = 15;
race = 1;
tellTime = 14;
wepangle = choose(-140,140)
wepflip = 1
smackRange = 8;
smackSpeed = 3
firstTime = true;
gunSprite = sprRevolver;
if instance_exists(Player)
{
	spr_idle = Player.spr_idle;
	spr_walk = Player.spr_walk;
	spr_hurt = Player.spr_hurt;
	spr_dead = Player.spr_dead;
	race = Player.race;
	if Player.skill_got[29] {
		wakeupTime += 60;
		scrGiveSnooze();
	}
}
else
{
	alarm[8] = 2;
}
alarm[1] = wakeupTime;
alarm[10] = 90;