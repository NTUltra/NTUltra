/// @description PIERCE
if instance_exists(Player)
{
	if (aimed=false && team == 2)
	{
		aimed=true;
		direction = scrAimAssistLaser(direction,0.75);
	}
	image_angle = direction;
	event_user(0);
	if !canDamage
		exit;
	var originalDirection = direction;
	move_contact_solid(direction,16)
	x += lengthdir_x(8,direction);
	y += lengthdir_y(8,direction);
	var dir = 0
	var maxDis = 150;
	var j = jumps;
	do {
		var n = instance_place(x,y,hitme)
		dir += 1;
		x += lengthdir_x(4,direction);
		y += lengthdir_y(4,direction);
		targetX = x;
		targetY = y;
		splitX = x;
		splitY = y;
		if boltMarrow && jumps < 100
		{
			var enem = instance_nearest(x,y,enemy)
		    if enem != myPierce && enem.team != team && point_distance(x,y,enem.x,enem.y) < 26 + Player.betterboltmarrow && enem.mask_index != mskPickupThroughWall //&& !collision_line(x,y,enem.x,enem.y,Wall,false,false)
		    {
				j += 1;
				jumps = j;
				splitX = x;
				splitY = y;
				targetX = enem.x;
				targetY = enem.y;
				dir = 200;
				myPierce = enem;
				with original {
					jumps = j;
					myLine[array_length(myLine)] = instance_create(enem.x,enem.y,InstantNail)
					with myLine[array_length(myLine) - 1]
					{
						jumps = j;
						original = other.id;
						alarm[2] = 0;
						myPierce = enem
						direction = originalDirection
						image_angle = direction;
						team = other.team
						scrCopyWeaponMod(other);
						event_perform(ev_alarm,0);
					}
				}
		    }
		}
		else if place_meeting(x,y,hitme)
			maxDis =- 10;
		
	}
	until dir > 150 or collision_point(x,y,Wall,false,false)
	scrForcePosition60fps();
	speed = 0;
}
image_xscale = point_distance(xstart,ystart,x,y);