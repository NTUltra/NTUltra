raddrop = 0
maxhealth = 20
mySize = 1
event_inherited()
image_speed = 0.3;
countKill = false;
meleedamage = 2;
gunangle = 0;
spawning = true;
spr_idle = sprInvertedBigMushroomVineSpawn;
spr_walk = sprInvertedBigMushroomVineSpawn;
spr_hurt = sprInvertedBigMushroomVineHurt;
spr_dead = sprInvertedBigMushroomVineDead;

snd_hurt = sndHitPlant
snd_dead = sndFrogExplode
snd_melee = sndMaggotBite;
//behavior
walk = 0
alarm[1] = 60;
alarm[2] = 60;
wkick = 0
actTime = 7;
right = choose(1,-1);
healingAmount = 40;
acc = 0;
maxSpeed = 0;
if instance_exists(Player) && Player.skill_got[29] {
	alarm[1] += 40;
	scrGiveSnooze();
}
var ran = random(360);
repeat(3)
{
	with instance_create(x,y,Dust)
	{
		motion_add(ran,1);
	}
	ran += 120;
}