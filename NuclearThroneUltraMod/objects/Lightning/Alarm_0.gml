if UberCont.recursionCheck > 28
{
	alarm[0] = 1;
	exit;
}
image_speed = imageSpeed;
image_index = 0;
visible = true;
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
			{
				image_angle = other.image_angle;
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
		if Player.ultra_got[42]&&instance_exists(Marker)//hunter focused fire
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
}
else{
	instance_destroy();
	exit;
}
if team == 2 && isog
{
	var modBoost = 1;//0.055;
	with Player
	{
		if ultra_got[59] && !altUltra
		{
			//ammoDecrease -= 0.1;
			other.ammo *= 1.2;
			other.ammo += 2;
		}
		if skill_got[17]
		{
			//ammoDecrease -= 0.07;
			other.ammo *= 1.1;
			other.ammo += 2;
		}
		if skill_got[30] == 1//Power craving
			modBoost = 2;
	}
	//Projectile Speed
	if Mod1 == 11
		other.ammo += modBoost;
	if Mod2 == 11
		other.ammo += modBoost;
	if Mod3 == 11
		other.ammo += modBoost;
	if Mod4 == 11
		other.ammo += modBoost;
	//if !Player.ultra_got[93] && place_meeting(x,y,VikingWall)
	//	hitElementorWall = true;
}
var xxx = x;
var yyy = y;
var xscale = 1;
var angle = image_angle;
direction = angle;
var arI = 0;
for(var i = floor(ammo); i > 0; i -= 1)
{
	var oldx = xxx
	var oldy = yyy
	direction = direction+((random(branch)-branch*0.5)*simpleAccuracy)//simpleAccuracy 30-15   24-12
	speed = 4
	if team != 2
	{
		scrTarget();
		if Player.ultra_got[42] && !Player.altUltra//hunter focused fire
		{
			if instance_exists(Marker)
				target=Marker;
		}
		sprite_index=sprLightningEnemy;
		image_speed=0.4;
	}
	else if target == noone && instance_exists(enemy)
	{
		target = instance_nearest(xxx+lengthdir_x(12,angle),yyy+lengthdir_y(12,angle),enemy);
	}
	if instance_exists(target) && target != noone && target.team != team && target.my_health > 0
	{
		//var dir = instance_nearest(x+lengthdir_x(80,direction),y+lengthdir_y(80,direction),target)
		if !collision_line(xxx,yyy,target.x,target.y,Wall,false,false) && point_distance(x,y,target.x,target.y) < 150-accuracy*2
			motion_add(point_direction(xxx,yyy,target.x,target.y),1.5-(accuracy*0.04))
	}
	angle = direction
	speed = 0
	var j = 0;
	var dis = 8;
	while (j < dis)
	{
		xxx += lengthdir_x(1,direction);
		yyy += lengthdir_y(1,direction);
		var wall = instance_place(xxx,yyy,Wall);
		if ((wall != noone && wall.object_index != WallHitMe))
		{
			j = dis;
			direction += 180+random_range(-20,20);
		}
		j ++;
	}
	speed = 0
	xscale = -point_distance(xxx,yyy,oldx,oldy)*0.5;
	if ultraMod == ultramods.lightningPellet
	{
		if ammo % 2 == 0
		{
			snd_play(sndPopgun,0.1,true);
			var odd = false;
			if i > 0
			{
				odd = round(i) % 3 == 0
			}
			with instance_create(xxx,yyy,Bullet2)
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
			if i <= 0
			{
				with instance_create(xxx,yyy,Bullet2)
				{
					direction = other.direction;
					image_angle = direction;
					speed = 7;
					team = other.team;
					alarm[11] = 0;
				}
			}
		}
		instance_destroy(id,false);	
	}
	else
	{
		lightningList[arI] = {
			xx: xxx,
			yy: yyy,
			xs: xscale,
			ang: angle,
		};
		arI += 1;
	}
	if i > 2 && team == 2 && round(i) % fork == 0//Forking lightning
	{
		if instance_exists(Player) && Player.ultra_got[96] && choose(true,true,false)
		{
			with instance_create(xxx,yyy,Tentacle)
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
			with instance_create(xxx,yyy,object_index)
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
				ammo = clamp(i*0.34,2,16);
				team = other.team
				image_index = other.image_index
				event_perform(ev_alarm,0)
			}
		}
	}
}
if ultraMod != ultramods.lightningPellet
{
	instance_create(xxx,yyy,LightningHit);
	event_perform(ev_alarm,2);
}