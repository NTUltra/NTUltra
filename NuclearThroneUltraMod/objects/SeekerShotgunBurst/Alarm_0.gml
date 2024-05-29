ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play_fire(sndSeekerShotgun)
var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);


with instance_create(x,y,SeekerBolt)
{motion_add(aimDirection+(random(12)-6)-15*other.creator.accuracy,2+random(3))
image_angle = direction
scrCopyWeaponMod(other);
team = other.team}
with instance_create(x,y,SeekerBolt)
{motion_add(aimDirection+(random(12)-6)+15*other.creator.accuracy,2+random(3))
image_angle = direction
scrCopyWeaponMod(other);
team = other.team
}

with instance_create(x,y,SeekerBolt)
{motion_add(aimDirection+(random(12)-6)-30*other.creator.accuracy,2+random(3))
image_angle = direction
scrCopyWeaponMod(other);
team = other.team
}

with instance_create(x,y,SeekerBolt)
{motion_add(aimDirection+(random(12)-6)+30*other.creator.accuracy,2+random(3))
image_angle = direction
scrCopyWeaponMod(other);
team = other.team
}

with instance_create(x,y,SeekerBolt)
{motion_add(aimDirection+(random(12)-6)-45*other.creator.accuracy,2+random(3))
image_angle = direction
scrCopyWeaponMod(other);
team = other.team
}

with instance_create(x,y,SeekerBolt)
{motion_add(aimDirection+(random(12)-6)+45*other.creator.accuracy,2+random(3))
image_angle = direction
scrCopyWeaponMod(other);
team = other.team
}
aimDirection += 180;
BackCont.viewx2 += lengthdir_x(28,aimDirection)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(28,aimDirection)*UberCont.opt_shake
BackCont.shake += 7
with creator
{
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection,1);
		motion_add(aimDirection,1)
	}
	wkick = 6
	}
}


if ammo <= 0
instance_destroy()

