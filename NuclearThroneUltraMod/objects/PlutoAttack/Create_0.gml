/// @description
// Inherit the parent event
event_inherited();
dmg = 2// + GetPlayerLoops();
if Player.race == 25
	dmg += 1;
dmgBoost = 0;
lerpTime = 0;
lerpIncrease = 0.15;
lerpStart = 0;
lerpStarting = 0.7;
lerpStartingCircle = 0.8;
curveDetail = 0.1;//10 parts (10%)
widthScale = 4;
widthTimeScalar = 1.5;
widthReturnScalar = 0.75;
minWidth = 0.125;
myTarget = instance_nearest(x,y,enemy);
offsetX = x;
offsetY = y;
targetX = x;
targetY = y;
curveDirection = choose(90,-90);
curveAmount = random(1.5);
dealtDamage = false;
if  myTarget != noone
{
	if myTarget.team != 2 && myTarget.my_health > 0 && !collision_line(x,y,myTarget.x,myTarget.y,Wall,false,false)
	{
		snd_play(sndRadMod,0.1);
		targetX = myTarget.x;
		targetY = myTarget.y;
		direction = point_direction(x,y,targetX,targetY);
		var dis = point_distance(x,y,targetX,targetY);
		offsetX = x + lengthdir_x(dis*0.5,direction) + lengthdir_x(dis * curveAmount,direction + curveDirection);
		offsetY = y + lengthdir_y(dis*0.5,direction) + lengthdir_y(dis * curveAmount,direction + curveDirection);
		alarm[0] = 1;
	}
	else
	{
		instance_destroy();	
	}
}
else
{
	instance_destroy();	
}
