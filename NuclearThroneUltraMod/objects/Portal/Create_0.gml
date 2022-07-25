image_speed = 0;
visible  = false;
depth = 6;
type=1;
inverted=false;//is this an inverted portal?

closedTheVault = false;

endgame = 100

alarm[1] = 20;//Delay before opening
if UberCont.opt_gamemode == 34//HARD MODE
	alarm[1] = 1;
else if UberCont.opt_gamemode == 9//CASUAL MODE
	alarm[1] = 50;
var chance = 1;


if instance_exists(Player)
{
	if Player.race=22//Rogue
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
if (instance_exists(CrownPed) && !inverted)
{
	x = CrownPed.x;
	y = CrownPed.y;
}