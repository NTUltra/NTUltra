ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
	x = creator.x
	y = creator.y
	//FIRING
	var n = instance_nearest(x,y,enemy);
	var aimDir = 0
	if n != noone && n.team != 2 && !collision_line(x,y,n.x,n.y,Wall,false,false)
	{
		aimDir = point_direction(x,y,n.x,n.y)
		with instance_create(x,y,MoneyBullet)
		{
			dmg += 2;
			motion_add(aimDir+random(4)-2,17 + random(4))
			image_angle = direction
			team = other.team
			scrCopyWeaponMod(other);
			canRecycle = choose(false,false,true);
		}
	}
	else
		aimDir = random(360);
	if ammo > 0 && ammo % 2 == 0
	{
		snd_play_fire(choose(sndHorrorCashFlow,sndHorrorCashFlow))
		var ran = random(360);
		var dirStep = 30;
		repeat(12)
		{
			with instance_create(x,y,MoneyBullet)
			{
				dmg += 2;
				motion_add(ran+random(4)-2,15 + random(2))
				image_angle = direction
				team = other.team
				canRecycle = choose(false,false,true);
				scrCopyWeaponMod(other);
			}
		}
	}
	if ammo < 7
		time = 3;
	else if ammo < 20
		time = 2;
	BackCont.viewx2 += lengthdir_x(6,aimDir+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDir+180)*UberCont.opt_shake
	BackCont.shake += 6
}


if ammo <= 0
instance_destroy()

