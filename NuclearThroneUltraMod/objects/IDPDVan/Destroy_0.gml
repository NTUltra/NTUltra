scrDrop(80,2)
scrDrop(12,0)
scrDrop(8,0)
speed = 0;
my_health = 0;
event_inherited();
with myGateway
{
	instance_destroy();	
}
with BackCont
{
	if alarm[2] > 60
	alarm[2] -= 30;
}
if dropFreaks
{
	snd_play(sndFreakPopoEnter);
	repeat(3+irandom(min(4,UberCont.loops-3)))
    {
		with instance_create(x+random(4)-2,y+random(4)-2,IDPDFreak)
	    {
			scrSleepyPopo()
		    if instance_exists(Player)
				motion_add(point_direction(x,y,Player.x,Player.y)+random(90)-45,6)
		    else
				motion_add(random(360),4)
	    }
	}
}

//GAMEMODE UNLOCKABLE NO ELITE POPO
scrUnlockGameMode(18,"FOR DESTROYING A VAN");
if RogueIDPD
	team = 2;
snd_play(sndExplosionL)
var ang = random(360);
var angStep = 360/3;
var explo = PopoExplosion;
if team == 2
	explo = RogueExplosion;
repeat(3)
{
	with instance_create(x+lengthdir_x(10,ang),y+lengthdir_y(10,ang),explo)
	{
		team = other.team;
		if other.dropFreaks
			team = 4;
		if other.team == 2
		{
			sprite_index =sprPopoExploRogue;	
			team = 2;
		}
		else if team == 4
			sprite_index = sprPopoExploFreak;
		with myExplosionMask
		{
			team = other.team;	
		}
	}
	ang += angStep;
}
var didtheThing = false;
with Hand
{
	if !didtheThing && (target == other.id || place_meeting(x,y,other.id) || point_distance(x,y,other.x,other.y) < 128)
	{
		didtheThing = true;
		UberCont.vansSlapped ++;
		if UberCont.vansSlapped == 3
		{
			scrUnlockCSkin(27,"FOR WALLOPING#THREE VANS#IN A SINGLE RUN",0);
		}
	}
}
if loops > 3 {
	var ang = 0;
	var am = 8;
	if loops > 5
		am = 16;
	var angStep = 360/am;
	var ps = 3;
	if loops > 7
		ps = 3.5;
	if loops > 8
		ps = 4;
	if loops > 9
		ps = 4.5;
	repeat(am)
	{
		with instance_create(x,y,EnemyBullet1Square)
		{
			if other.dropFreaks
				isVenomized = true;
			sprite_index = sprIDPDSquareBullet;
			onlyHitPlayerTeam = true;
			motion_add(ang,ps);
			image_angle = direction
			team = other.team
		}
		ang += angStep;
	}
}
