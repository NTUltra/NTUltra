ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
with creator
{
	if object_index != Player || !skill_got[2]
	{
		scrMoveContactSolid(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y) + 180,0.05);
		if sprite_index == spr_idle
		{
			sprite_index = spr_walk;	
		}
	}
}
//FIRING
snd_play_fire(choose(sndFrost1,sndFrost2))
with instance_create(x,y,FrostIcicle)
{
	dmg += 1;
	motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(other.aimOffset+(random(other.accuracyRange)-(other.accuracyRange*0.5)))*other.accuracy,20 + random(5))
	scrCopyWeaponMod(other);
	image_angle = direction
	team = other.team
}

BackCont.viewx2 += lengthdir_x(4,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(4,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += shake
creator.wkick = 4}


if ammo <= 0
instance_destroy()

