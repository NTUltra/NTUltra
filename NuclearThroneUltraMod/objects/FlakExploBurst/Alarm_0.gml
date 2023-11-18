ammo -= 1
alarm[0] = time
//FIRING
var am = 6;
var angStep = 60;
repeat(am)
{
	with instance_create(x,y,Bullet2)
	{
		motion_add(other.ang,max(6,18 - other.ammo));
		image_angle = direction
		team = other.team
		if team != 2 {
			sprite_index = sprEBullet3;	
		}
		scrCopyWeaponMod(other);
	}
	ang += angStep;
}
ang += angStep / totalAmmo;
if instance_exists(Player)
{
	BackCont.viewx2 += lengthdir_x(5,point_direction(Player.x,Player.y,x,y)+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(5,point_direction(Player.x,Player.y,x,y)+180)*UberCont.opt_shake
}
BackCont.shake += 5

if totalAmmo > 2 && ammo == 0
	snd_play(sndFlakExplode);

if ammo <= 0
	instance_destroy()