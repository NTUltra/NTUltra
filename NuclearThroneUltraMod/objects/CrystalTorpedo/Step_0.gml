/// @description Go
if !instance_exists(Player)
	instance_destroy();
	/*
var p = Player.p;
if KeyCont.key_west[p] = 2 or KeyCont.key_west[p] = 1
	hspeed -= 1
if KeyCont.key_east[p] = 2 or KeyCont.key_east[p] = 1
	hspeed += 1
if KeyCont.key_nort[p] = 2 or KeyCont.key_nort[p] = 1
	vspeed -= 1
if KeyCont.key_sout[p] = 2 or KeyCont.key_sout[p] = 1
	vspeed += 1
*/
motion_add(direction,2);
motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),3);
image_angle = direction;
if sprite_index == spr_disappear && image_index > fadeNumber
{
	x = Player.x;
	y = Player.y;
	exit;
}
speed = maxSpeed;
	
if UberCont.normalGameSpeed == 60
{
	time += 0.5
	if Player.skill_got[5]//thronebuttttt
		time -= 0.25;
}
else
{
	time += 1
	if Player.skill_got[5]//thronebuttttt
		time -= 0.5;
}