instance_create(x,y,DiscTrail);
var fps60 = UberCont.normalGameSpeed == 60;
if followOwner 
{
	if owner != noone && owner > -1 && instance_exists(owner)
	{
		tx = owner.x;
		ty = owner.y;
	}
	else
	{
		//instance_destroy();
		//instance_create(x,y,DiscDisappear);
		followOwner = false;
	}
}
x = tx + lengthdir_x(length,oDir);
y = ty + lengthdir_y(length,oDir);
if instance_exists(Player) and instance_exists(enemy)
{
	var dir = instance_nearest(x,y,enemy)
	var home = 5;
	if Player.skill_got[21] == 1
		home += 18 + Player.betterboltmarrow;
	if Player.skill_got[19] == 1//Eagle eyes
	{
		home += 9;
		if Player.race == 25
			home += 4;
	}
	//home mod
	var modBoost = 7;
	if Player.skill_got[30]
	{
		modBoost += 5;
		if Player.race == 25
			modBoost += 2;
	}
	if Player.ultra_got[65]
		modBoost += 5;
	if Mod1 == 13
		home += modBoost;
	if Mod2 == 13
		home += modBoost;
	if Mod3 == 13
		home += modBoost;
	if Mod4 == 13
		home += modBoost;
	if home > 0 && instance_exists(dir) && dir.team != team
	{
		if point_distance(x,y,dir.x,dir.y) < home
		{/*
			if UberCont.normalGameSpeed == 60
			{
				x += lengthdir_x(1.5,point_direction(x,y,dir.x,dir.y))
				y += lengthdir_y(1.5,point_direction(x,y,dir.x,dir.y))
				oDir -= (angle_difference(oDir,point_direction(tx,ty,dir.x,dir.y))*0.3);
				length -= speed*0.3;
			}
			else
			{*/
				x += lengthdir_x(2.75,point_direction(x,y,dir.x,dir.y))
				y += lengthdir_y(2.75,point_direction(x,y,dir.x,dir.y))
				oDir -= (angle_difference(oDir,point_direction(tx,ty,dir.x,dir.y))*0.6);
				length -= speed*0.6;
			//}
		}
	}
}
if speed < 0
{
	if fps60
	{
		if rotation > 0
			oDir += max((rotation/length),2.5);
		else
			oDir += min((rotation/length),-2.5);
	}
	else
	{
		if rotation > 0
			oDir += max((rotation/length)*2,5);
		else
			oDir += min((rotation/length)*2,-5);
	}
}
else
{
	if fps60
	{
		if rotation > 0
			oDir += clamp(rotation/(maxlength-length),0.5,1);
		else
			oDir += clamp(rotation/(maxlength-length),-1,-0.5);
	}
	else
	{
		if rotation > 0
			oDir += clamp(rotation/(maxlength-length),1,2);
		else
			oDir += clamp(rotation/(maxlength-length),-2,-1);
	}
}
if fps60
	length += speed * 0.5;
else
	length += speed;
if (point_distance(tx,ty,x,y) > maxlength && speed > 0)
{
	speed = returnSpeed;
}
else if (length <= 2 && speed < 0)
{
	instance_destroy();
	instance_create(x,y,DiscDisappear);
}
image_angle+=20;
if instance_exists(Player) and instance_exists(enemy)
{dir = instance_nearest(x,y,enemy)
if instance_exists(dir) && dir.team != team && speed > 0 and Player.skill_got[21] = 1 and point_distance(x,y,dir.x,dir.y) < 48 +Player.betterboltmarrow
{x += lengthdir_x(3,point_direction(x,y,dir.x,dir.y))
y += lengthdir_y(3,point_direction(x,y,dir.x,dir.y))}}