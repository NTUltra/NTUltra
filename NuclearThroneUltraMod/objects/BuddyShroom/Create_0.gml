raddrop = 0
maxhealth = 15
mySize = 1
event_inherited()
meleedamage = 2;
countKill = false;
spr_idle = sprBigMushroomBuddyIdle
spr_walk = sprBigMushroomBuddyWalk
spr_hurt = sprBigMushroomBuddyHurt
spr_dead = sprBigMushroomBuddyDead
spr_fire = sprBigMushroomBuddyOmnom

snd_hurt = sndHitPlant
snd_dead = sndFrogExplode
snd_melee = sndMaggotBite;
//behavior
walk = 0
alarm[1] = 7;
alarm[3] = 10;
wkick = 0
actTime = 7;

healingAmount = 30;
acc = 1;
maxSpeed = 4;
justBehindWall = false;
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