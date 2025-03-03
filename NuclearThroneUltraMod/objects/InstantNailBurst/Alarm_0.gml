ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
if effects
{
	snd_play_fire(snd)
	BackCont.viewx2 += lengthdir_x(4,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.shake += 2
	creator.wkick = 4
}
else
{
	creator.wkick = 6;	
}
with instance_create(x,y,InstantNail)
{
	direction = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+ ((random(20) - 10) * accuracy);
	image_angle = direction;
	team = other.team
	scrCopyWeaponMod(other);
	event_perform(ev_alarm,0);
}


}


if ammo <= 0
instance_destroy()

