/// @description Before FIre
snd_play(sndHeavyCrossbow)
var dir = point_direction(x,y,fireTargetX,fireTargetY);
var xx = x;
var yy = y;
mask_index = mskChainFire;
var lx = lengthdir_x(1,dir);
var ly = lengthdir_y(1,dir);
while (place_meeting(xx,yy,Wall))
{
	xx += lx;
	yy += ly;
}
with instance_create(xx,yy,ChainFire)
{
	motion_add(dir,24)
	scrCopyWeaponMod(other);
	image_angle = direction
	team = other.team
}
BackCont.shake += 6
instance_destroy();
with fireTarget
{
	instance_destroy();	
}