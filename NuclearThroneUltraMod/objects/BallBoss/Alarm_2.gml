/// @description Circle of bullets
speed = 0;
var i = 0;
for (var i = 0; i < amountOfProjectiles; i++) {
	myCompanions[i] = instance_create(x,y,BallBossBullet);
}

var angle = random(360);
var angleStep = (360/amountOfProjectiles)*0.8;//will leave a gap to enter and exit

var rotSpeed = 1.5;
i = 0;
var dis = 250;
var rotationdir = 1
var idd = id;
var ox = x;
var oy = y;
//Euphoria
if instance_exists(Player)
{
	if Player.skill_got[12] = 1
	{
		rotSpeed = rotSpeed*0.7
		dis += 32;
	}
}
//amountOfProjectiles = 64;
amountOfProjectiles = array_length(myCompanions);
for (var i = 0; i < amountOfProjectiles; i++) {
	with myCompanions[i]
	{
		owner = idd;
		alarm[0] = i*2;
		ownerAngle = angle;
		rotationDirection = rotationdir;
		ownerAngleRotationSpeed = rotSpeed;
		targetDistance = dis;
		x = ox + lengthdir_x(distance,ownerAngle);
		y = oy + lengthdir_y(distance,ownerAngle);
	}
	angle += angleStep;
}
