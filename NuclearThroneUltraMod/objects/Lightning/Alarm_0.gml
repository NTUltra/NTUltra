if UberCont.recursionCheck > 28
{
	alarm[0] = 1;
	image_index -= image_speed;
	exit;
}
var ultraMod = -1
var simpleAccuracy = 1.5;
if instance_exists(Player){
	if team == 2
	{
		if canUltraMod
			ultraMod = GetPlayerUltramod()
		if isog && ultraMod == ultramods.lightningKraken
		{
			snd_play(choose(sndWater1,sndWater2),0.1,true);
			with instance_create(x,y,Tentacle)
			{image_angle = other.image_angle;
				scrCopyWeaponMod(other);
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
		simpleAccuracy = Player.accuracy;
		accuracy += Player.accuracy*2;
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

	if team!=Player.team
	{
		scrTarget()
		if Player.ultra_got[43] && !Player.altUltra//hunter focused fire
		{
			if instance_exists(Marker)
				target=Marker;
		}
		sprite_index=sprLightningEnemy;
		image_speed=0.4;
	}
	else if target == noone && instance_exists(enemy)
	{
		target = instance_nearest(x+lengthdir_x(12,image_angle),y+lengthdir_y(12,image_angle),enemy);
	}
}
else{
	instance_destroy();
	exit;
}
	
var oldx, oldy;
oldx = x
oldy = y
direction = image_angle+((random(branch)-branch*0.5)*simpleAccuracy)//30-15   24-12
speed = 4
if instance_exists(target) && target != noone && target.team != team && target.my_health > 0
{
	//var dir = instance_nearest(x+lengthdir_x(80,direction),y+lengthdir_y(80,direction),target)
	if !collision_line(x,y,target.x,target.y,Wall,false,false) && point_distance(x,y,target.x,target.y) < 150-accuracy*2
		motion_add(point_direction(x,y,target.x,target.y),1.5-(accuracy*0.04))
}
image_angle = direction
speed = 0

//move_contact_solid(direction,7+random(4))
//move_contact_solid(direction,8);
var i = 0;
var dis = 8;
while (i < dis)
{
	x += lengthdir_x(1,direction);
	y += lengthdir_y(1,direction);
	var wall = instance_place(x,y,Wall);
	if ((wall != noone && wall.object_index != WallHitMe) || (team != 2 && place_meeting(x,y,ElementorWallPhase)))
	{
		i = dis;
		direction += 180+random_range(-20,20);
	}
	i ++;
}
speed = 0
image_xscale = -point_distance(x,y,oldx,oldy)*0.5;
var ammoDecrease = 1;
if team == 2
{
	var modBoost = 0.055;
	with Player
	{
		if ultra_got[59] && !altUltra
		{
			ammoDecrease -= 0.1;
		}
		if skill_got[17]
			ammoDecrease -= 0.07;
		if skill_got[30] == 1//Power craving
			modBoost = 0.08;
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
	//if !Player.ultra_got[93] && place_meeting(x,y,VikingWall)
	//	hitElementorWall = true;
}
ammo -= ammoDecrease;
/*
if hitElementorWall
{
	x = xprevious
	y = yprevious
	direction += 180+random_range(-20,20)
}
else
{
	var wall = instance_place(x,y,Wall)
	if hitElementorWall || wall != noone && wall.object_index != WallHitMe
	{
		x = xprevious
		y = yprevious
		direction += 180+random_range(-20,20)
	}
}*/

if round(ammo) > 0
{
	image_index += 0.4/max(1,ceil(ammo));
	with instance_create(x,y,object_index)
	{
		//target = other.target;
		isog = other.isog;
		branch = other.branch;
		fork = other.fork;
		canUltraMod = other.canUltraMod;
		dmg = other.dmg;
		scrCopyWeaponMod(other);
		accuracy=other.accuracy;
		direction = other.direction
		image_angle = direction
		ammo = other.ammo
		team = other.team
		image_index = other.image_index
		event_perform(ev_alarm,0)
	}
	if team == 2 && round(ammo) % fork == 0//Forking lightning
	{
		if instance_exists(Player) && Player.ultra_got[96] && !Player.altUltra && choose(true,true,false)
		{
			with instance_create(x,y,Tentacle)
			{
				direction = other.direction+choose(80+random(30),-80+random(-30))
				image_angle = direction
				scrCopyWeaponMod(other);
				team = other.team
				ammo = clamp(round(other.ammo*0.34),2,16)+1;
				isog = other.isog;
				fork = other.fork;
				//branch = clamp(other.branch*2.5,80,200);
				with instance_create(x,y,LightningSpawn)
				{
					sprite_index=sprTentacleSpawn
					image_angle = other.image_angle
				}
				with instance_create(x,y,FishBoost)
				{
					motion_add(image_angle+random(60)-30,2+random(4) );
				}
				event_perform(ev_alarm,0)
			}
		}
		else
		{
			with instance_create(x,y,object_index)
			{
				target = other.target;
				isog = other.isog;
				fork = other.fork;
				branch = clamp(other.branch*2.5,80,200);
				canUltraMod = other.canUltraMod;
				dmg = other.dmg;
				scrCopyWeaponMod(other);
				accuracy=other.accuracy*2;
				direction = other.direction+choose(80+random(30),-80+random(-30))
				image_angle = direction
				ammo = clamp(round(other.ammo*0.34),2,16);
				team = other.team
				image_index = other.image_index
				event_perform(ev_alarm,0)
			}
		}
	}
}
else if ultraMod != ultramods.lightningPellet
{
	alarm[0] = 0;
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
		odd = round(ammo) % 3 == 0
	with instance_create(x,y,Bullet2)
	{
		direction = other.direction;
		if odd
			direction += 90;
		else
			direction -= 90;
		image_angle = direction;
		speed = 7;
		team = other.team;
		alarm[11] = 0;
	}
	if ammo <= 0
	with instance_create(x,y,Bullet2)
	{
		direction = other.direction;
		image_angle = direction;
		speed = 7;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);	
}

