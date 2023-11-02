/// @description Draw Slap
if time < 3
{
	//Carefull must reach nice 1 to deal the damage
	if UberCont.normalGameSpeed == 60
		time += 0.1;
	else
		time += 0.2;
}
else
{
		instance_destroy();
}
if instance_exists(owner) && followOwner
{
	x = owner.x;
	y = owner.y;
}
draw_set_colour(c_lime);
if instance_exists(target) {
	tx = target.x;
	ty = target.y;
}
var dir = point_direction(x,y,tx,ty);
var dis = point_distance(x,y,tx,ty);
if time > 1.4
	dis = lerp(dis,0,clamp(time-1.4,0,1));
else
	dis = lerp(0,dis,clamp(time,0,1));
hook = dir + offset;
var hx = x + lengthdir_x(dis*0.75,hook);
var hy = y + lengthdir_y(dis*0.75,hook);
if time > 1.4
	var w = lerp(4,0,clamp(time-1.4,0,1));
else
	var w = lerp(2,4,clamp(time,0,1));
draw_triangle(x,y,
hx + lengthdir_x(w,hook+90),
hy + lengthdir_y(w,hook+90),
hx + lengthdir_x(w,hook-90),
hy + lengthdir_y(w,hook-90),
false);
draw_circle(hx,hy,w,false);
var slapAng = lerp(offset,offset*-3,clamp(time - 0.5,0,1));
var dis = point_distance(hx,hy,tx,ty) + 16;
if time > 1.6
	dis = lerp(dis,0,clamp(time-1.6,0,1));
else
	dis = lerp(0,dis,clamp(time,0,1));
		
if time > 1.7
	var we = w + lerp(3,0,clamp(time-1.7,0,1));
else
	var we = w + lerp(0.5,3,clamp(time-0.3,0,1));
var sx = hx + lengthdir_x(dis,hook+slapAng)
var sy = hy + lengthdir_y(dis,hook+slapAng);
draw_triangle(
hx + lengthdir_x(w,hook),
hy + lengthdir_y(w,hook),
sx + lengthdir_x(we,hook+slapAng+90),
sy + lengthdir_y(we,hook+slapAng+90),
sx + lengthdir_x(we,hook+slapAng-90),
sy + lengthdir_y(we,hook+slapAng-90),
false);
		
draw_triangle(
hx - lengthdir_x(w,hook),
hy - lengthdir_y(w,hook),
hx + lengthdir_x(w,hook),
hy + lengthdir_y(w,hook),
sx + lengthdir_x(we,hook+slapAng-90),
sy + lengthdir_y(we,hook+slapAng-90),
false);
if !followOwner
	draw_circle(sx,sy,we,false);
instance_create(sx,sy,Dust)
var ii = lerp(0,sprite_get_number(sprFlexibleElbowSlap)-1,clamp(time-0.5,0,1));

draw_sprite_ext(sprFlexibleElbowSlap,
ii,
sx,sy,we*0.25,sign(offset)*we*0.25,hook+slapAng,c_lime,1);
draw_set_colour(c_white);