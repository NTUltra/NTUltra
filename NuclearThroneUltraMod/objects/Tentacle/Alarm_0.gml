if UberCont.recursionCheck > 28
{
	alarm[0] = 1;
	exit;
}
if isog && team == 2
{
	var um = GetPlayerUltramod()
	if um == ultramods.lightningKraken
	{
		snd_play(choose(sndSpark1,sndSpark2),0.1,true)
		if ultra
		{
			with instance_create(x,y,UltraLightning)
			{image_angle =other.image_angle
				scrCopyWeaponMod(other);
			team = other.team
			ammo = other.ammo
			isog = false;
			alarm[0] = 1;
			visible = 0
			with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle}
		}
		else
		{
			with instance_create(x,y,Lightning)
			{image_angle =other.image_angle
				scrCopyWeaponMod(other);
			team = other.team
			ammo = other.ammo
			isog = false;
			alarm[0] = 1;
			visible = 0
			with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle}
		}
		instance_destroy(id,false);
		exit;
	}
	else if um == ultramods.krakenMelee && instance_exists(Player)
	{
		UberCont.ultramodSwap = false;
		var ddd = 4;
		var obj = LanceShank;
		if ultra {
			snd_play_fire(sndUltraShovel);
			obj = UltraLanceShank;
			ddd = 12;
		}
		
		snd_play_fire(choose(sndSword1,sndSword2));
		var am = ceil(ammo / 10);
		var xx = x;
		var yy = y;
		repeat(am)
		{
			with instance_create(xx,yy,obj)
			{
				dmg = ddd;
				longarms = 0
				if instance_exists(Player)
					longarms = (Player.skill_got[13]+Player.bettermelee)*3
				motion_add(other.image_angle,4+longarms)
				image_angle = direction
				team = other.team
			}
			xx += lengthdir_x(56+((Player.skill_got[13]+Player.bettermelee)*14),image_angle);
			yy += lengthdir_y(56+((Player.skill_got[13]+Player.bettermelee)*14),image_angle);
		}
		instance_destroy(id,false);
		UberCont.ultramodSwap = true;
		exit;
	}
}
isog = false;
if target == noone && instance_exists(enemy)
{
	target = instance_nearest(x+lengthdir_x(12,image_angle),y+lengthdir_y(12,image_angle),enemy);
}
var oldx, oldy;
oldx = x
oldy = y
if instance_exists(Player){
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

direction = image_angle+(random(accuracy)-(accuracy*0.5))//30 - 15
speed = 4
if instance_exists(target) && target != noone && instance_exists(target) && target.team != team && target.my_health > 0
{
	var dif = angle_difference(point_direction(x,y,target.x,target.y), image_angle);
	if abs(dif) < 40 && !collision_line(x,y,target.x,target.y,Wall,false,false) && point_distance(x,y,target.x,target.y) < 170-accuracy//120
		motion_add(point_direction(x,y,target.x,target.y),1.6-(accuracy*0.05))//1
}
var i = 0;
var dis = 9 + random(3);
var sh = sign(hspeed);
var sv = sign(vspeed);
while (i < dis)
{
	x += lengthdir_x(1,direction);
	y += lengthdir_y(1,direction);
	
	var wall = instance_position(x + sh,y,Wall);
	if ((wall != noone && wall.object_index != WallHitMe) )
	{
		x -= sh;
		dis += 0.25;
	}
	wall = instance_position(x,y + sv,Wall);
	if ((wall != noone && wall.object_index != WallHitMe) )
	{
		y -= sv;
		dis += 0.25;
	}
	i ++;
}
image_angle = point_direction(oldx,oldy,x,y);
var ammoDecrease = 1;
	var modBoost = 0.055;
	with Player
	{
		if ultra_got[61] && altUltra
		{
			ammoDecrease -= 0.1;
		}
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
ammo -= ammoDecrease;
image_xscale = -point_distance(x,y,oldx,oldy)*0.25;
if round(ammo) > 0
{
	with instance_create(x,y,Tentacle)
	{
		final = 1;
		image_yscale = other.image_yscale + 0.04;
		alarm[2] = other.alarm[2];
		if image_yscale > 2.4
		{
			alarm[2] += (image_yscale - 2)*0.1;
			image_yscale = 2.4;
		}
		target = other.target;
		alarm[1] = other.alarm[1];
		scrCopyWeaponMod(other);
		isog = other.isog;
		sprite_index=other.sprite_index;
		ion=other.ion;
		accuracy=other.accuracy;
		dmg=other.dmg;
		direction = other.direction
		image_angle = direction
		ammo = other.ammo
		team = other.team
		image_index = other.image_index
		if ammo % 8 != 0
		{
			event_perform(ev_alarm,0);
		}
		else
		{
			BackCont.shake ++;
			with instance_create(x,y,FishBoost)
			{
				motion_add(other.direction+random(60)-30,other.speed );
			}
			var chosenAudio = choose(sndRoll,sndWater1,sndWater2,sndTentacle,sndTentacle2);
			if !audio_is_playing(chosenAudio)
				snd_play(chosenAudio,0.02);
			alarm[2] += 1;
			alarm[0] = 1;
		}
	}
	if fork > 0 && round(ammo) % fork == 0//Forking lightning
	{
		if canSwap && choose(true,true,false)
		{
			snd_play(choose(sndSpark1,sndSpark2),0.01);
			//If ultra kraken
			if sprite_index == sprUltraTentacle
			{
				with instance_create(x,y,UltraLightning)
				{
					isog = other.isog;
					branch = clamp(branch*2.5,80,200);
					fork = other.fork;
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
			else
			{
				with instance_create(x,y,Lightning)
				{
					target = other.target;
					isog = other.isog;
					fork = other.fork;
					branch = clamp(branch*2.5,80,200);
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
		else
		{
			if sprite_index == sprUltraTentacle
			{
				with instance_create(x,y,Tentacle)
				{
					sprite_index=sprUltraTentacle;
					ultra=true;
					dmg = 6;
					image_yscale += 0.3;
					direction = other.direction+choose(80+random(30),-80+random(-30))
					image_angle = direction
					scrCopyWeaponMod(other);
					team = other.team
					ammo = clamp(round(other.ammo*0.34),2,16)+1;
					isog = false;
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
				with instance_create(xprevious,yprevious,Tentacle)
				{
					direction = other.direction+choose(80+random(30),-80+random(-30))
					image_angle = direction
					scrCopyWeaponMod(other);
					team = other.team
					ammo = clamp(round(other.ammo*0.34),2,16);
					isog = false;
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
		}
		
	}
	final = 0;
}
else
{
alarm[0] = 0;
	with instance_create(x+lengthdir_x(image_xscale/2,image_angle),y+lengthdir_y(image_xscale/2,image_angle),LightningHit)
		sprite_index=sprTentacleHit;

	with instance_create(x,y,FishBoost)
	motion_add(other.direction+random(6)-3,1+random(2) );
}
speed = 0