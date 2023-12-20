alarm[1] = 14+random(5)
Shielding=false;

if team=2
scrRogueTarget()
else
scrTarget();

if target != noone
{

if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 && point_distance(x,y,target.x,target.y) > 300
{
//SEE TARGET
gunangle = point_direction(x,y,target.x,target.y)
if target.x < x
right = -1
else if target.x > x
right = 1
//SEE PLAYER AND FAR ENOUGH AND NOT SHOUTING "FREEZE MOTHERFUCKER"
if random(2) < 1 and freeze > 40
{
//FIRE
alarm[2] = 4
ammo = 6+irandom(2)

alarm[1] = 32
}
else if random(4) < 1
{
//SHIELD
canshield=false;
		var i = 0;
		do {
			i++
			var angle = random(360)
			var length = 5 + random(60) + i
			var dx = lengthdir_x(length, angle)
			var dy = lengthdir_y(length, angle)
			
			with instance_nearest(x + dx, y + dy, Floor) {
				dx = x + 16
				dy = y + 16
			}
		} until x != dx && y != dy && !place_meeting(dx, dy, Wall) && point_distance(Player.x, Player.y, dx, dy) > 55 && point_distance(Player.x, Player.y, dx, dy) < 250 || i > 250

		if i <= 250 {
			x = dx
			y = dy
		
			with instance_create(x,y,PopoShield)
			{
			team=other.team;
			sprite_index=sprEliteShielderShieldAppear;
			alarm[0]=50;//shorter shielding time 60 for the normal shielder
			if place_meeting(x,y,Wall)
			{
			other.canshield=false;
			instance_destroy();
			}
			else
			other.canshield=true;
			}
			
			snd_play(sndEliteShielderShield);
			Shielding=true;
			xx=x;
			yy=y;
			alarm[1] = 55
			speed = 0
			walk = 0
		}
}
else
{//JUST WALK YOU KNOW
if point_distance(x,y,target.x,target.y) > 64
direction = point_direction(x,y,target.x,target.y)+random(50)-25
else
direction = point_direction(x,y,target.x,target.y)+180+random(90)-45
speed = 0.4
walk = 10+random(10)
if freeze < 40
alarm[1] += random(30)
}


}
else if random(3) < 1
{
//WALK
motion_add(random(360),0.4)
walk = 20+random(10)
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}
else if freeze > 40 and random(5) < 1
{
//SHIELD
canshield=false;
var dir = 0;
var xx = x;
var yy = y;
do
{
	var NewPos = instance_nearest(target.x+random(128)-64,target.y+random(128)-64,Floor)
	xx=NewPos.x+16;
	yy=NewPos.y+16;

	dir++;
	with instance_create(x,y,PopoShield)
	{
		team=other.team;
		sprite_index=sprEliteShielderShieldAppear;
		alarm[0]=50;//shorter shielding time 60 for the normal shielder
		if place_meeting(x,y,Wall)
		{
			other.canshield=false;
			instance_destroy();
		}
		else
			other.canshield=true;
	}

}
until(canshield==true||dir>200)

if dir>100||canshield=false
	exit;
	
x = xx;
y = yy;


snd_play(sndEliteShielderShield);

alarm[1] = 55
speed = 0
walk = 0
}
}
else if random(10) < 1 and roll = 0
{
//NO TARGET
motion_add(random(360),0.4)
walk = 20+random(10)
alarm[1] = walk+10+random(30)
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}

