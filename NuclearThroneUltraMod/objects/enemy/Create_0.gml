image_speed = 0.4
friction = 0.4
right = choose(1,-1)
my_health = maxhealth
prevhealth=my_health;
walk = 0;
MorphMe=false;
frozen=false;

team = 1
target = -1

//if object_index!=HotDrake
//alarm[10]=1000;

snd_hurt = sndHitFlesh
snd_dead = sndEnemyDie
snd_melee = sndMaggotBite
hurt_pitch_variation = 0.05;

EnemyHealthAdjustments();

if instance_exists(Player)
{
	//if Player.ultra_got[19]{//plant leacher
	//bloodempty=0}

	if Player.crown = 13
	raddrop=0;

	if Player.loops >1
	raddrop*=0.8;
}
if place_meeting(x,y,enemy)
{
	motion_add(random(360),2);	
}
wkick=false;
spr_chrg=false;
spr_fire=false;
existTime = 0;
depth -= 1;
myCorpse = -1;
totemBuffed = false;
myConfusion = noone;