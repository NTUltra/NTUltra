var maxspd = 14;
var modBoost = 1.5;
if instance_exists(Player)
{
	if Player.skill_got[30] == 1
		modBoost = 3;
	if Player.wepmod1 == 11
		maxspd += modBoost;
	if Player.wepmod2 == 11
		maxspd += modBoost;
	if Player.wepmod3 == 11
		maxspd += modBoost;
	if Player.wepmod4 == 11
		maxspd += modBoost;
	if scrIsCrown(23)//Crown of speed
		maxspd += 5;
	if scrIsCrown(24)//Crown of sloth
		maxspd -= 4;
}
if UberCont.normalGameSpeed == 60
	totalSpeed += Speed*0.5;
else
	totalSpeed += Speed;
totalSpeed = min(totalSpeed,maxspd);
with creator
{
	var aimDir = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	motion_add(aimDir,1);
	speed = max(speed,4);
	var tspd = other.totalSpeed;
	if !place_meeting(x + lengthdir_x(tspd,aimDir),y,WallHitMe) && !collision_line(x,y,x + lengthdir_x(tspd,aimDir),y,WallHitMe,false,false)
		x += lengthdir_x(tspd,aimDir);
	if !place_meeting(x,y + lengthdir_y(tspd,aimDir),WallHitMe) && !collision_line(x,y,x,y + lengthdir_y(tspd,aimDir),WallHitMe,false,false)
		y += lengthdir_y(tspd,aimDir);
	with RocketSlash
	{
	x=other.x;
	y=other.y;
	image_angle=other.direction;
	dmg+=0.02;
	}
	instance_create(x,y,Smoke);
	if other.Speed>6
	instance_create(x,y,Smoke);
	if other.Speed>8
	instance_create(x,y,Smoke);

	if speed>maxspd//cap
		speed=maxspd;
}


BackCont.shake += 0.3

Speed+=0.4 + ((maxspd-14)*0.6);

