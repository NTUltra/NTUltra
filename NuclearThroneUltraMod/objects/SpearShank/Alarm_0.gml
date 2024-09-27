/// @description Histscan like
if instance_exists(Player)
{
	if (team == Player.team)
	{
		direction = scrAimAssistLaser(direction);
		image_angle = direction;
		alarm[10] = 0;
	}
	move_outside_solid(direction,16);
	var dir = 0
	do {
		//var n = instance_place(x,y,hitme)
		dir += 1;
		x += lengthdir_x(4,direction);
		y += lengthdir_y(4,direction);
	}
	until (dir > minRange && (dir > maxRange || collision_point(x,y,Wall,false,false)))// or (n != noone && n.team != team)
	scrForcePosition60fps();
}
image_xscale = point_distance(xstart,ystart,x,y)* 0.25;
myStart = instance_create(xstart,ystart,SpearShank)
with myStart
{
	dmg = other.dmg;
	myOwner = other.id;
	sprite_index = other.startSpr
	mask_index = other.startMsk;
	image_angle = other.image_angle;
	direction = other.direction;
	image_yscale = other.image_yscale;
}
myEnd = instance_create(x,y,SpearShank)
with myEnd
{
	dmg = other.dmg;
	myOwner = other.id;
	sprite_index = other.endSpr
	mask_index = other.endMsk;
	image_angle = other.image_angle;
	direction = other.direction;
	image_yscale = other.image_yscale;
}