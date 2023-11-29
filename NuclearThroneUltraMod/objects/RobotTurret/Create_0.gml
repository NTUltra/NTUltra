maxhealth = 400
my_health = maxhealth;
meleedamage = 0
mySize = 1
event_inherited();
maxSpeed = 3;
scrWeapons();
roll = 0;
hurt_pitch_variation = 0.1;

raddrop=28;
alarm[1] = 5;
snd_hurt = sndHitMetal

//behavior
walk = 0
gunangle = random(360)
//alarm[0] = 20
wkick = 0

friction = 0.4;

right = choose(1,-1)

team = 2

//scrWeapons();

spr_idle = sprRobotTurret
spr_hurt = sprRobotTurret
spr_dead = sprScorchmark

wep=0;
reload=0;
wepammo = 0;
wepcost=0;

ammo[1] = typ_ammo[1]*2
ammo[2] = typ_ammo[2]*2
ammo[3] = typ_ammo[3]*2
ammo[4] = typ_ammo[4]*2
ammo[5] = typ_ammo[5]*2

rad=0;
altFire = true;

raddrop=4;
rad = 0
can_shoot = 1
bcan_shoot = 1//Player.bcan_shoot
right = 1
wepright = 1

queueshot = 0;
bqueueshot = 0;
cqueueshot = 0;

bettermelee = 0;
betterlaserbrain = 0;
betterpluto = 39;
betterrabbitpaw = 0.0;
betterrecyclegland = 0;
betterboltmarrow = 0;
betterTail = 1.5;

clicked = 0


reload = 0//Player.reload
breload = 0//Player.breload

if instance_exists(Player)
{
	accuracy = Player.accuracy


	friction = 0.45
	image_speed = 0.4

	//scrRaces()
	//scrSkills()
	//scrUltras()
	//scrCrowns()

	race=Player.race;



	wep = Player.wep
	bwep = Player.bwep
	//curse = 0
	//bcurse = 0
	team = Player.team
	mySize = Player.mySize


	accuracy = Player.accuracy

	//default shit
	//if wep_type[wep] = 0 or wep = 24 or wep = 36
	//wepangle = choose(120,-120)
	//else 
	wepangle = Player.wepangle
	wepflip = Player.wepflip
	angle = Player.angle
	wkick = 0
	bwkick = 0
	bwepangle = Player.bwepangle
	bwepflip = Player.bwepflip

}
else
instance_destroy();

scrInitDrops(1);