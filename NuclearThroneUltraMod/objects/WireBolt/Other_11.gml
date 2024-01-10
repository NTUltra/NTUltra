/// @description Wall Collision
var theWall = other.id;
x -= lengthdir_x(16,image_angle);
y -= lengthdir_y(16,image_angle);
var xx = x + lengthdir_x(64,image_angle);
var yy = y + lengthdir_y(64,image_angle);
var rayHit = collision_line_point(x,y,xx,yy,Wall,false,false);
with instance_create(rayHit[1],rayHit[2],boltStick)
{
	image_angle = other.image_angle;
	fallAngle = image_angle;
	target = theWall;
	doesNotMove = true;
	team = other.team;
}
instance_destroy();