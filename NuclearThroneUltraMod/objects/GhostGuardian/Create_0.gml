raddrop = 11
maxhealth = 54
meleedamage = 5
size = 3

event_inherited()
actTime = 7;
maxRange = 200;
spr_idle = sprGhostGuardianWalk;
spr_walk = sprGhostGuardianWalk;
spr_hurt = sprGhostGuardianHurt;
spr_dead = sprGhostGuardianDead;


//behavior
alarm[10] = 0;
alarm[1] = 30+random(90)
direction = random(360);
friction = 1.5;
goForIt = false;
instance_create(x,y,WallBreak);
var loops = GetPlayerLoops();
myCompanions = [];
var amountOfProjectiles = 3;
amountOfProjectiles += min(loops,4);
for (var i = 0; i < amountOfProjectiles; i++) {
	myCompanions[i] = instance_create(x,y,GhostGuardianBullet);
}

var angle = random(360);
var angleStep = 360/amountOfProjectiles;

var rotSpeed = 5;
rotSpeed += min(4,loops);
i = 0;
var dis = 32;
dis += min(16,loops*4);
var rotationdir = choose(1,-1);
var idd = id;
var ox = x;
var oy = y;
//Euphoria
if instance_exists(Player)
{
if Player.skill_got[12] = 1
{
	rotSpeed = rotSpeed*0.7
	dis -= 4;
}
}
for (var i = 0; i < amountOfProjectiles; i++) {
	with myCompanions[i]
	{
		owner = idd;
		ownerAngle = angle;
		rotationDirection = rotationdir;
		ownerAngleRotationSpeed = rotSpeed;
		distance = dis;
		x = ox + lengthdir_x(distance,ownerAngle);
		y = oy + lengthdir_y(distance,ownerAngle);
	}
	angle += angleStep;
}
maxSpeed = 4.2 + min(2,loops);
acc = 2 + min(0.4,loops*0.18);//This acceleration is the scary variable

alarm[2] = 4;
