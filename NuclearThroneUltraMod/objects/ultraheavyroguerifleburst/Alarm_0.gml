ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING

snd_play_fire(sndUltraHeavyRogueRifle);
with instance_create(x,y,Shell)
motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180+random(50)-25,2+random(2))

with instance_create(x,y,Bullet4Heavy)
{
motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(12)-6*other.creator.accuracy,19)
image_angle = direction
team = other.team
scrCopyWeaponMod(other);
}

BackCont.viewx2 += lengthdir_x(10,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(10,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 5
creator.wkick = 4}


if ammo <= 0
instance_destroy()

