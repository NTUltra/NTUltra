ammo -= 1
alarm[0] = time
snd_play(sndBouncerBurst);

//FIRING
var am = 11;
var angStep = 32.727272727272727272727272727273;
repeat(am)
{
	with instance_create(x,y,Bullet3)
	{
		team = other.team;
		if team != 2 {
			sprite_index = sprEBouncerBullet
		}
		norecycle = choose(false,false,false,true);
		motion_add(other.ang,max(5,13 - other.ammo));
		image_angle = direction
		scrCopyWeaponMod(other);
	}
	ang += angStep;
}
ang += angStep / totalAmmo;
if instance_exists(Player)
{
	BackCont.viewx2 += lengthdir_x(4,point_direction(Player.x,Player.y,x,y)+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,point_direction(Player.x,Player.y,x,y)+180)*UberCont.opt_shake
}
BackCont.shake += 4

if ammo <= 0
	instance_destroy()