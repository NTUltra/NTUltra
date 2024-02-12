/// @description Teleport Far away
alarm[8] = 90;
alarm[0] += 5;
spamDeflect = 0;
walk = 0;
var assx = other.x;
var assy = other.y;
repeat(5){
	with instance_create(other.x,other.y,Smoke)
	motion_add(random(360),1+random(3))
}
var tx = x;
var ty = y;
var goodEnough = false;
with Floor
{
	var o = 16;
	if object_index == FloorExplo
		o = 8;
	if !goodEnough && point_distance(x + o, y + o,other.target.x,other.target.y) > 128 && point_distance(x + o, y + o,other.x,other.y) > 50
	{
		tx = x + o;
		ty = y + o;
		if random(3) < 1
			goodEnough = true;
	}
}
x = tx;
y = ty;
snd_play(sndAssassinPretend);
with instance_create(assx,assy,AssassinTeleport) {
	self.assx = other.x;
	self.assy = other.y;
}
repeat(5){
	with instance_create(x,y,Smoke)
	motion_add(random(360),1+random(3))
}
scrForcePosition60fps();
alarm[1] += actTime*4;
alarm[2] = 0;