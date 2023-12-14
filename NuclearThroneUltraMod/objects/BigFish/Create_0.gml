raddrop = 60
maxhealth = 230;//175

meleedamage = 3
mySize = 3
if GetPlayerLoops() > 0{
	maxhealth = 300;
}
sucking = false;
scrBossHealthBuff();

event_inherited();

healAmount = 10;

spr_idle = sprOasisBossIdle
spr_walk = sprOasisBossWalk
spr_hurt = sprOasisBossHurt
spr_dead = sprOasisBossDead
spr_fire = sprOasisBossFire
spr_startfire = sprOasisBossFireStart
spr_endfire = sprOasisBossFireEnd

snd_dead = sndOasisBossDead;
snd_hurt = sndOasisBossHurt;
snd_fire = sndOasisBossFire;
snd_melee = sndOasisBossMelee;
snd_tackle = sndOasisBossTackle;

walk=0;
//behavior
alarm[1] = 30+random(50)

if instance_exists(Player)
motion_add(point_direction(Player.x,Player.y,x,y),3)

intro=1;
suckstrength=0;
suckAcc = 0.091;
maxSpeed=2
originalMaxspeed = maxSpeed;
persistent_direction = 0;
actTime = 9;
fishFireRate = 4;
suckTime = 75;
chargeSpeed = 7;
chargeDis = 75;
chargeTell = 20;
snd_play(sndOasisBossIntro);    
inverted = false;
suckRange = 100;
cam=true

if GetPlayerLoops() > 1
	fishFireRate = 3;
with BigFish
{
	if id!=other.id
		other.cam=false;
}

if !(instance_exists(Player) && (Player.area == 2 || Player.area == 110))
	with instance_create(x,y,DramaCamera)
	{
		name = "BIG FISH";
		if random(80) < 1
			name = choose("O'L BITEY","TRASH DWELLER","FISH'S UNCLE?","SEWER FISH");
	}

friction = 0.8;
scrAddDrops(1);

if instance_exists(Player) && Player.skill_got[29] {
	alarm[1] += 60;
	with instance_create(x,y,Snooze)
	{
		owner = other.id;
		yoffset = other.sprite_height*0.5 - 4;
	}
}