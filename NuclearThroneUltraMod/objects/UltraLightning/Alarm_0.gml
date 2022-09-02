if UberCont.recursionCheck > 28
{
	alarm[0] = 1;
	exit;
}
var ultraMod = -1
if canUltraMod
	ultraMod = GetPlayerUltramod();

if isog && ultraMod == ultramods.lightningKraken
{
	snd_play(choose(sndWater1,sndWater2),0.1,true);
	with instance_create(x,y,Tentacle)
	{
		image_angle = other.image_angle;
		ultra = true;
		sprite_index=sprUltraTentacle;
		scrCopyWeaponMod(other);
		dmg = 10;
		if Player.ultra_got[61] && Player.altUltra//Captain of the kraken
		{
			dmg += 1;
		}
		creator = Player.id;
		team = other.team
		ammo = other.ammo
		isog = false;
		alarm[0] = 1;
		visible = 0
		with instance_create(x,y,LightningSpawn)
		{
		sprite_index=sprTentacleSpawn
		image_angle = other.image_angle
		}
	repeat(3){
		with instance_create(x,y,FishBoost)
		{
		motion_add(image_angle+random(60)-30,2+random(4) );
		}}
	}
		
	instance_destroy(id,false);
	exit;
}
	isog = false;
//if !instance_exists(SmallWallBreak) || instance_number(SmallWallBreak) < 30
	instance_create(x,y,SmallWallBreak);
var simpleAccuracy = 1;
if instance_exists(Player)
{
	simpleAccuracy = Player.accuracy;
	accuracy += Player.accuracy*4;
	if Player.skill_got[19] == 1
	{accuracy-=3;}
	if Player.ultra_got[43]&&instance_exists(Marker)//hunter focused fire
	{accuracy-=5;}
	if Player.ultra_got[42]//hunter never miss
	{accuracy-=6;}
	var modBoost = 1;
	if Mod1=13
	accuracy-=modBoost;
	if Mod2=13
	accuracy-=modBoost;
	if Mod3=13
	accuracy-=modBoost;
	if Mod4=13
	accuracy-=modBoost;
	
}
if accuracy<0
accuracy=0;	

target=enemy;
if instance_exists(target)
dir = instance_nearest(x+lengthdir_x(80,direction),y+lengthdir_y(80,direction),target)
var oldx, oldy;
oldx = x
oldy = y
direction = image_angle+(random(branch)-branch*0.5)*simpleAccuracy//30 15
speed = 4
if instance_exists(target)
{
if point_distance(x,y,dir.x,dir.y) < 165-accuracy*2
	motion_add(point_direction(x,y,dir.x,dir.y),2.2-(accuracy*0.05))
}
image_angle = direction
speed = 0

//move_contact_solid(direction,8+random(4))//8 r 4
var l = 8 + random(4);
x += lengthdir_x(l,direction);
y += lengthdir_y(l,direction);

speed = 0
image_xscale = -point_distance(x,y,oldx,oldy)/2

var ammoDecrease = 1;
if team == 2
{
	var modBoost = 0.06;
	with Player
	{
		if ultra_got[59]
		{
			ammoDecrease -= 0.1;
		}
		if skill_got[17]
			ammoDecrease -= 0.08;
		if skill_got[30] == 1//Power craving
			modBoost = 0.09;
	}
	//Projectile Speed
	if Mod1 == 11
		ammoDecrease -= modBoost;
	if Mod2 == 11
		ammoDecrease -= modBoost;
	if Mod3 == 11
		ammoDecrease -= modBoost;
	if Mod4 == 11
		ammoDecrease -= modBoost;
}
ammo -= ammoDecrease;
if round(ammo) > 0
{
//if ammo>20
//{var indexammo = 20;}
//else
//{var indexammo = ammo;}
	image_index += 0.4/max(1,ceil(ammo))//indexammo
	with instance_create(x,y,UltraLightning)
	{
		isog = other.isog;
		branch = other.branch;
		fork = other.fork;
		canUltraMod = other.canUltraMod;
		dmg = other.dmg;
		scrCopyWeaponMod(other);
		direction = other.direction
		image_angle = direction
		ammo = other.ammo;
		team = other.team
		image_index = other.image_index*0.5
		if round(ammo) % 4 == 0//ultraMod == ultramods.lightningPellet && odd
			alarm[0]=1;
		else event_perform(ev_alarm,0);
	}
	if round(ammo) % fork == 0//Forking lightning
	{
		with instance_create(x,y,UltraLightning)
		{
			isog = other.isog;
			branch = clamp(other.branch*2.5,80,200);
			fork = other.fork;
			canUltraMod = other.canUltraMod;
			dmg = other.dmg;
			scrCopyWeaponMod(other);
			accuracy = 5+(other.accuracy*3);
			direction = other.direction+choose(80+random(30),-80+random(-30))
			image_angle = direction
			ammo = clamp(ceil(other.ammo*0.15),2,16);
			team = other.team
			image_index = other.image_index
			event_perform(ev_alarm,0)
		}
	}
}
else if ultraMod != ultramods.lightningPellet
{
	instance_create(x+lengthdir_x(image_xscale/2,image_angle),y+lengthdir_y(image_xscale/2,image_angle),LightningHit)
}

if ultraMod == ultramods.lightningPellet && alarm[0] < 1
{
	if isog
	{
		snd_play(sndPopgun,0.1,true);
	}
	var odd = false;
	if ammo > 0
		odd = round(ammo) % 2 == 0
	
	with instance_create(x,y,Bullet5)
	{
		dmg -= 1;
		direction = other.direction;
		if odd
			direction += 90;
		else
			direction -= 90;
		image_angle = direction;
		speed = 8;
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(x,y,Bullet5)
	{
		dmg -= 1;
		direction = other.direction;
		image_angle = direction;
		speed = 8;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);	
}