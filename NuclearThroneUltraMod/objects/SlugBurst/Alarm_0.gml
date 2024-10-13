ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
snd_play_fire(sndSlugger)
with instance_create(x,y,Shell)
motion_add(aimDirection+180+random(50)-25,2+random(2))

with instance_create(x,y,Slug)
{
motion_add(aimDirection+random(8)-4,18)
image_angle = direction
team = other.team

	scrCopyWeaponMod(other);


}

BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
BackCont.shake += 6
with creator
{
	if !skill_got[2]
	{
		motion_add(aimDirection+180,1)
	}
	wkick = 8
}

}


if ammo <= 0
instance_destroy()


