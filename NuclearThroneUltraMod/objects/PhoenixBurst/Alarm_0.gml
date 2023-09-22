ammo -= 1

alarm[0] = time

//snd_play(sndJackHammer)
//FIRING
with instance_create(x,y,Flame)
{
	direction = other.direction;
	speed = other.speed;
	motion_add(other.fireAngle+random_range(5,-5),other.fireSpeed)
	team = other.team
	scrCopyWeaponMod(other);
}

BackCont.viewx2 += lengthdir_x(0.5,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(0.5,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 0.5;
wkick = 5

if ammo < 5
{
	speed -=2;
	time ++;
}
else
{
	speed ++;	
}
if ammo <= 1
	instance_destroy()