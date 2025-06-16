side = choose(0,1)
team = 7;
depth = -8;
alarm[0] = 100+random(40);
fire = 0
myscorch = instance_create(x,y,TrapScorchMark);
myTop = instance_create(x,y,VenomTrapTop);
timer = 90;
with myscorch
{
	sprite_index = sprVenomTrapMark;	
}
loop=false;
canDoSides = 0;
if instance_exists(Player)
{
	if Player.loops>1//loop 2 yo
	{
		loop=true;
		canDoSides = 3;
	}
	if Player.skill_got[29]	//Hypersomnia
	{
		alarm[0] += 90;
		scrGiveSnooze(0,0);
	}
	if Player.area == 143
		timer -= 30;
}
if canDoSides < 3
{
	if (!position_meeting(x-4,y+8,Wall) && collision_point(x - 4,y+8,Floor,false,false)) || (!position_meeting(x+20,y+8,Wall) && collision_point(x+20,y+8,Floor,false,false))
	{
		canDoSides = 1;
	}
	if (!position_meeting(x+8,y-4,Wall) && collision_point(x +8,y - 4,Floor,false,false) || (!position_meeting(x+8,y+20,Wall)&& collision_point(x - 4,y+20,Floor,false,false)))
	{
		if canDoSides == 1
			canDoSides = 3;
		else canDoSides = 2;
	}	
}
alarm[1] = 1;
alarm[2] = 3;