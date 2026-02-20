alarm[1] = actTime+random(5)
Shielding=false;

if team=2
	scrRogueTarget()
else
	scrTarget();

if target != noone && instance_exists(target)
{
	if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 && point_distance(x,y,target.x,target.y) < 500
	{
		if wasBehindWall
		{
			wasBehindWall = false;
			alarm[1] += 15;
			exit;
		}
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
	ammo = maxAmmo+irandom(2)

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
					var o = 16;
					if object_index == FloorExplo
						o = 8;
					dx = x + o;
					dy = y + o;
				}
			} until x != dx && y != dy && !place_meeting(dx, dy, WallHitMe) && point_distance(Player.x, Player.y, dx, dy) > 55 && point_distance(Player.x, Player.y, dx, dy) < 250 || i > 250

			if i < 250 {
				if !place_meeting(x,y,Tangle)
				{
					x = dx
					y = dy
					scrForcePosition60fps();
				}
				with instance_create(x,y,PopoShield)
				{
				team=other.team;
				sprite_index=sprEliteShielderShieldAppear;
				alarm[0]=50;//shorter shielding time 60 for the normal shielder
				if place_meeting(x,y,WallHitMe)
				{
					other.canshield=false;
					instance_destroy();
				}
				else
					other.canshield=true;
				}
			
				snd_play(sndEliteShielderShield);
				Shielding=true;
				if !place_meeting(x,y,Tangle)
				{
					xx=x;
					yy=y;
				}
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
		wasBehindWall = true;
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
		wasBehindWall = true;
	//SHIELD
	canshield=false;
	var dir = 0;
	xx = x;
	yy = y;
	do
	{
		var NewPos = instance_nearest(target.x+random(128)-64,target.y+random(128)-64,Floor)
		if NewPos != noone
		{
			var o = 16;
			if NewPos.object_index == FloorExplo
				o = 8;
			xx=NewPos.x+o;
			yy=NewPos.y+o;
		}

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
	if !place_meeting(x,y,Tangle)
	{
		x = xx;
		y = yy;
		scrForcePosition60fps();
	}

	snd_play(sndEliteShielderShield);

	alarm[1] = 55
	speed = 0
	walk = 0
	}
}
else if random(10) < 1 and roll = 0
{
	wasBehindWall = true;
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

