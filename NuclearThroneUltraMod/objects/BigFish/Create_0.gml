raddrop = 60
maxhealth = 210;//175
meleedamage = 3
size = 3
if GetPlayerLoops() > 0{
	maxhealth = 370;
	my_health = maxhealth;
}
sucking = false;

event_inherited();



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
maxspeed=2
persistent_direction = 0;

snd_play(sndOasisBossIntro);    


cam=true

with BigFish
{
	if id!=other.id
		other.cam=false;
}

if !(instance_exists(Player) && Player.area == 2 || Player.area == 110)
	with instance_create(x,y,DramaCamera)
	{
		name = "BIG FISH";
		if random(80) < 1
			name = choose("O'L BITEY","TRASH DWELLER","FISH'S UNCLE?","SEWER FISH");
	}

friction = 0.8;
