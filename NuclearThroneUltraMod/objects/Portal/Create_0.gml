image_speed = 0;
visible  = false;
depth = 1;
type=1;
inverted=false;//is this an inverted portal?

closedTheVault = false;

endgame = 100

alarm[1] = 18;//Delay before opening
if scrIsHardMode()//HARD MODE
	alarm[1] = 1;
else if scrIsGamemode(9)//CASUAL MODE
	alarm[1] = 45;
var chance = 1;


if instance_exists(Player)
{
	if Player.race=22 && Player.area != 100 && !((Player.area == 9 || Player.area == 118) && Player.subarea == 3)//Rogue
	{
		repeat(1+irandom(3))
			instance_create(x,y,IDPDSpawn);
	}

//if Player.race=15//atom extra chance for invertedness and bosses ofcourse aswell
//chance=2;


	currentarea=Player.area;
	currentsubarea=Player.subarea;

}
else
{
	currentarea=BackCont.area;
	currentsubarea=BackCont.subarea;
}




if ( (currentarea=105 || currentarea=106|| currentarea=107 || currentarea = 108 || currentarea = 109 || currentarea = 112) && currentsubarea < 2 && random(5) < chance )//inverted bosses
{
	inverted=true;
	if instance_exists(Player)
	{
		Player.inverted=true;
	}
	else if instance_exists(PlayerSpawn)
	{
		PlayerSpawn.inverted = true;	
	}
	with Corpse
		canspawnportal=false;
}
pullstrength=1;
pullRange = 96
isPink = false;
if !inverted && (currentarea  == 8 || (currentarea == 7 && currentsubarea == 3)) || (currentarea == 112 && currentsubarea == 2)
{
	isPink = true;
	sprite_index = sprPinkPortalSpawn;	
}
else if currentarea == 100 || currentarea == 128 || currentarea == 129
{
	type = 3;
}
if (instance_exists(CrownPed) && !inverted)
{
	x = CrownPed.x;
	y = CrownPed.y;
}
else if instance_exists(RerollStation)
{
	var n = instance_nearest(x,y,RerollStation)
	if distance_to_object(n) < 128 {
		if instance_exists(Floor)
		{
			var f = instance_furthest(n.x,n.y,Floor);
			var d = point_direction(n.x,n.y,f.x,f.y);
			var m = instance_nearest(x + lengthdir_x(256,d),
			y + lengthdir_y(256,d), Floor);
			var o = 16;
			if m.object_index == FloorExplo
				o = 8;
			x = m.x+o;
			y = m.y+o;
		}
	}
}
else if instance_exists(WeaponMod)
{
	var n = instance_nearest(x,y,WeaponMod)
	if distance_to_object(n) < 128 {
		if instance_exists(Floor)
		{
			var f = instance_furthest(n.x,n.y,Floor);
			var d = point_direction(n.x,n.y,f.x,f.y);
			var m = instance_nearest(x + lengthdir_x(256,d),
			y + lengthdir_y(256,d), Floor);
			var o = 16;
			if m.object_index == FloorExplo
				o = 8;
			x = m.x+o;
			y = m.y+o;
		}
	}
}
