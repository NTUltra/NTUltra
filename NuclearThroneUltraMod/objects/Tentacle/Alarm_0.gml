if UberCont.recursionCheck > 28
{
	alarm[0] = 1;
	exit;
}
if isog && GetPlayerUltramod() == ultramods.lightningKraken
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
isog = false;
if target == noone && instance_exists(enemy)
{
	target = instance_nearest(x,y,enemy);
}
var oldx, oldy;
oldx = x
oldy = y
var hitElementorWall = false;
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
	if !Player.ultra_got[93] && place_meeting(x,y,VikingWall)
		hitElementorWall = true;
}
if accuracy<0
accuracy=0;

direction = image_angle+(random(accuracy)-(accuracy*0.5))//30 - 15
speed = 4
if target != noone && instance_exists(target) && target.team != team
{
	if !collision_line(x,y,target.x,target.y,Wall,false,false) && point_distance(x,y,target.x,target.y) < 170-accuracy//120
		motion_add(point_direction(x,y,target.x,target.y),1.6-(accuracy*0.05))//1
}
image_angle = direction
speed = 0

move_contact_solid(direction,8+random(4))
speed = 0
var ammoDecrease = 1;
	var modBoost = 0.06;
	with Player
	{
		if ultra_got[61] && altUltra
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
ammo -= ammoDecrease;

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
}
image_xscale = -point_distance(x,y,oldx,oldy)*0.25;
if round(ammo) > 0
{
	image_index += 0.4/max(1,ceil(ammo));
	with instance_create(x,y,Tentacle)
	{
		final = 1;
		image_yscale = min(other.image_yscale + 0.05,2);
		target = other.target;
		alarm[1] = other.alarm[1];
		scrCopyWeaponMod(other);
		isog = other.isog;
		sprite_index=other.sprite_index;
		ion=other.ion;
		accuracy=other.accuracy;
		creator=other.creator;
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
			snd_play(choose(sndRoll,sndWater1,sndWater2));
			alarm[0] = 1;
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

